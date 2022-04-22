-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 05, 2022 at 10:35 AM
-- Server version: 10.3.25-MariaDB
-- PHP Version: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cretechbd_accdhaka`
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
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `assignments`
--

INSERT INTO `assignments` (`id`, `title`, `available_from`, `deadline`, `quiz_time_limit`, `question_time_limit`, `multiple_attampt`, `school_id`, `status`, `created_at`, `updated_at`, `created_by`) VALUES
(1, 'First Assignment mdpurgs', '2019-07-18 00:00:00', '2022-04-27 00:00:00', '00:00:55', '00:00:10', 'Yes', '1', 'Active', '2022-01-10 22:56:38', '2022-01-10 22:56:38', 635),
(2, 'Assignment - 02 Mdpurgs', '2020-12-15 00:00:00', '2022-03-23 00:00:00', '00:00:10', '00:00:22', 'Yes', '1', 'Active', '2022-01-10 23:01:24', '2022-01-10 23:01:24', 635),
(3, 'Assignment - 01 Mdpurprs', '2021-03-08 00:00:00', '2022-04-20 00:00:00', '00:00:10', '00:00:30', 'Yes', '2', 'Active', '2022-01-11 02:25:43', '2022-01-11 02:25:43', 0),
(4, 'Assignment - 02 mdpurprs', '2021-04-06 00:00:00', '2022-03-16 00:00:00', '00:00:10', '00:00:30', 'Yes', '2', 'Active', '2022-01-11 02:30:50', '2022-01-11 02:30:50', 0),
(5, 'Assignment - 03 mdpurprs', '2021-06-07 00:00:00', '2022-03-16 00:00:00', '00:00:10', '00:00:22', 'Yes', '2', 'Active', '2022-01-11 05:46:24', '2022-01-11 05:46:24', 0),
(6, 'Assignment - 04', '2021-06-28 00:00:00', '2022-03-02 00:00:00', '00:00:01', '00:00:33', 'Yes', '2', 'Active', '2022-01-11 05:49:54', '2022-01-11 05:49:54', 641);

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
(1, 2, 1, '2022-01-10 22:56:38', '2022-01-10 22:56:38'),
(2, 1, 2, '2022-01-10 23:01:24', '2022-01-10 23:01:24'),
(3, 3, 3, '2022-01-11 02:25:43', '2022-01-11 02:25:43'),
(4, 4, 4, '2022-01-11 02:30:50', '2022-01-11 02:30:50'),
(5, 4, 5, '2022-01-11 05:46:24', '2022-01-11 05:46:24'),
(6, 3, 6, '2022-01-11 05:49:54', '2022-01-11 05:49:54');

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
(1, 2, 1, '2022-01-10 22:56:38', '2022-01-10 22:56:38'),
(2, 1, 2, '2022-01-10 23:01:24', '2022-01-10 23:01:24'),
(3, 3, 3, '2022-01-11 02:25:44', '2022-01-11 02:25:44'),
(4, 4, 4, '2022-01-11 02:30:50', '2022-01-11 02:30:50'),
(5, 4, 5, '2022-01-11 05:46:24', '2022-01-11 05:46:24'),
(6, 3, 6, '2022-01-11 05:49:54', '2022-01-11 05:49:54');

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
(84, 5, 26, 'Active', '2021-08-25 22:36:54', '2021-08-25 22:36:54'),
(85, 2, 16, 'Active', '2022-01-10 22:15:28', '2022-01-10 22:15:28'),
(86, 2, 18, 'Active', '2022-01-10 22:15:28', '2022-01-10 22:15:28'),
(87, 3, 16, 'Active', '2022-01-10 22:16:11', '2022-01-10 22:16:11'),
(88, 3, 17, 'Active', '2022-01-10 22:16:11', '2022-01-10 22:16:11'),
(89, 3, 18, 'Active', '2022-01-10 22:16:11', '2022-01-10 22:16:11');

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
(5, 'Literature', '#8000ff', 'Active', '2021-12-25 23:29:14', '2021-12-25 23:29:59', 0),
(6, 'History', '#1dd72a', 'Active', '2022-01-30 08:45:31', '2022-01-30 08:45:31', 0);

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
(440, 'default', '{\"uuid\":\"2e63bcac-2bca-413d-85bf-e8c642e7bc8d\",\"displayName\":\"App\\\\Jobs\\\\questionAudioUploaderJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\questionAudioUploaderJob\",\"command\":\"O:33:\\\"App\\\\Jobs\\\\questionAudioUploaderJob\\\":10:{s:4:\\\"data\\\";s:15:\\\"16422692684.jpg\\\";s:2:\\\"id\\\";i:5;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1642269269, 1642269269),
(442, 'default', '{\"uuid\":\"8c80b838-a77b-4e61-8081-47896f57f848\",\"displayName\":\"App\\\\Jobs\\\\questionAudioUploaderJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\questionAudioUploaderJob\",\"command\":\"O:33:\\\"App\\\\Jobs\\\\questionAudioUploaderJob\\\":10:{s:4:\\\"data\\\";s:16:\\\"164230509410.jpg\\\";s:2:\\\"id\\\";i:7;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1642305094, 1642305094),
(443, 'default', '{\"uuid\":\"20e75365-71d5-4288-aadf-5613fbc1324f\",\"displayName\":\"App\\\\Jobs\\\\questionAudioUploaderJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\questionAudioUploaderJob\",\"command\":\"O:33:\\\"App\\\\Jobs\\\\questionAudioUploaderJob\\\":10:{s:4:\\\"data\\\";s:15:\\\"16423141487.jpg\\\";s:2:\\\"id\\\";i:8;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1642314149, 1642314149),
(444, 'default', '{\"uuid\":\"114af7c0-f454-40c4-8a25-1aa4a3d8f028\",\"displayName\":\"App\\\\Jobs\\\\questionAudioUploaderJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\questionAudioUploaderJob\",\"command\":\"O:33:\\\"App\\\\Jobs\\\\questionAudioUploaderJob\\\":10:{s:4:\\\"data\\\";s:15:\\\"16424038645.jpg\\\";s:2:\\\"id\\\";i:9;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1642403865, 1642403865),
(445, 'default', '{\"uuid\":\"f57b58fc-a95d-40e9-a295-02f3cd09177a\",\"displayName\":\"App\\\\Jobs\\\\questionAudioUploaderJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\questionAudioUploaderJob\",\"command\":\"O:33:\\\"App\\\\Jobs\\\\questionAudioUploaderJob\\\":10:{s:4:\\\"data\\\";s:16:\\\"164247974010.jpg\\\";s:2:\\\"id\\\";i:10;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1642479741, 1642479741),
(446, 'default', '{\"uuid\":\"fcab9e83-67dd-41a4-aee6-f7a2b192743a\",\"displayName\":\"App\\\\Jobs\\\\questionAudioUploaderJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\questionAudioUploaderJob\",\"command\":\"O:33:\\\"App\\\\Jobs\\\\questionAudioUploaderJob\\\":10:{s:4:\\\"data\\\";s:15:\\\"16428290454.jpg\\\";s:2:\\\"id\\\";i:12;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1642829046, 1642829046),
(450, 'default', '{\"uuid\":\"ffcfc2cb-082f-4282-88af-229dcfd6e6af\",\"displayName\":\"App\\\\Jobs\\\\questionImageUploaderJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\questionImageUploaderJob\",\"command\":\"O:33:\\\"App\\\\Jobs\\\\questionImageUploaderJob\\\":10:{s:4:\\\"data\\\";s:23:\\\"1642833598bg-slide1.jpg\\\";s:2:\\\"id\\\";i:17;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1642833598, 1642833598),
(451, 'default', '{\"uuid\":\"e3b1bee2-d16d-41c6-bc4c-ed273a72a38e\",\"displayName\":\"App\\\\Jobs\\\\questionAudioUploaderJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\questionAudioUploaderJob\",\"command\":\"O:33:\\\"App\\\\Jobs\\\\questionAudioUploaderJob\\\":10:{s:4:\\\"data\\\";s:23:\\\"1642833598bg-slide1.jpg\\\";s:2:\\\"id\\\";i:17;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1642833598, 1642833598),
(452, 'default', '{\"uuid\":\"d55fd062-e0ba-46b4-a4db-850569e092a3\",\"displayName\":\"App\\\\Jobs\\\\questionAudioUploaderJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\questionAudioUploaderJob\",\"command\":\"O:33:\\\"App\\\\Jobs\\\\questionAudioUploaderJob\\\":10:{s:4:\\\"data\\\";s:17:\\\"16428336674-1.jpg\\\";s:2:\\\"id\\\";i:18;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1642833667, 1642833667),
(454, 'default', '{\"uuid\":\"79307e39-0564-4acd-b45b-c1149f25c52e\",\"displayName\":\"App\\\\Jobs\\\\questionAudioUploaderJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\questionAudioUploaderJob\",\"command\":\"O:33:\\\"App\\\\Jobs\\\\questionAudioUploaderJob\\\":10:{s:4:\\\"data\\\";s:32:\\\"16428346542020-annual-report.jpg\\\";s:2:\\\"id\\\";i:20;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1642834654, 1642834654),
(455, 'default', '{\"uuid\":\"ee4a6435-9997-4606-88fa-7cc46df5276e\",\"displayName\":\"App\\\\Jobs\\\\questionAudioUploaderJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\questionAudioUploaderJob\",\"command\":\"O:33:\\\"App\\\\Jobs\\\\questionAudioUploaderJob\\\":10:{s:4:\\\"data\\\";s:31:\\\"1643000117contact-us-banner.jpg\\\";s:2:\\\"id\\\";i:21;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1643000118, 1643000118),
(456, 'default', '{\"uuid\":\"fe4599d1-b281-4ede-9aa6-c9fd7eb9ffbd\",\"displayName\":\"App\\\\Jobs\\\\questionImageUploaderJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\questionImageUploaderJob\",\"command\":\"O:33:\\\"App\\\\Jobs\\\\questionImageUploaderJob\\\":10:{s:4:\\\"data\\\";s:62:\\\"1643019338272259705_1709301246074803_3116148264829444844_n.jpg\\\";s:2:\\\"id\\\";i:22;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1643019338, 1643019338),
(457, 'default', '{\"uuid\":\"075c7c11-92b1-4b8f-bd03-dcdd745f0a26\",\"displayName\":\"App\\\\Jobs\\\\questionAudioUploaderJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\questionAudioUploaderJob\",\"command\":\"O:33:\\\"App\\\\Jobs\\\\questionAudioUploaderJob\\\":10:{s:4:\\\"data\\\";s:32:\\\"16430193382020-annual-report.jpg\\\";s:2:\\\"id\\\";i:22;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1643019338, 1643019338),
(460, 'default', '{\"uuid\":\"96ab6985-a0f6-45a3-9dae-c4075ec3694f\",\"displayName\":\"App\\\\Jobs\\\\questionAudioUploaderJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\questionAudioUploaderJob\",\"command\":\"O:33:\\\"App\\\\Jobs\\\\questionAudioUploaderJob\\\":10:{s:4:\\\"data\\\";s:17:\\\"16430196224-1.jpg\\\";s:2:\\\"id\\\";i:25;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1643019622, 1643019622),
(461, 'default', '{\"uuid\":\"7f09946b-8668-4b3d-9b44-0ffa32228d98\",\"displayName\":\"App\\\\Jobs\\\\questionImageUploaderJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\questionImageUploaderJob\",\"command\":\"O:33:\\\"App\\\\Jobs\\\\questionImageUploaderJob\\\":10:{s:4:\\\"data\\\";s:22:\\\"1643104437image-4.webp\\\";s:2:\\\"id\\\";i:26;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1643104438, 1643104438),
(462, 'default', '{\"uuid\":\"80c3262f-066e-4735-9674-c15a0f0165e7\",\"displayName\":\"App\\\\Jobs\\\\questionAudioUploaderJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\questionAudioUploaderJob\",\"command\":\"O:33:\\\"App\\\\Jobs\\\\questionAudioUploaderJob\\\":10:{s:4:\\\"data\\\";s:19:\\\"1643104438index.png\\\";s:2:\\\"id\\\";i:26;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1643104438, 1643104438),
(469, 'default', '{\"uuid\":\"6d7f3659-bbd4-4cac-84bb-f10d3d2b05cb\",\"displayName\":\"App\\\\Jobs\\\\UsersRegistrationConfirmationMailJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\UsersRegistrationConfirmationMailJob\",\"command\":\"O:45:\\\"App\\\\Jobs\\\\UsersRegistrationConfirmationMailJob\\\":10:{s:6:\\\"userID\\\";i:653;s:8:\\\"schoolID\\\";i:3;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1643210514, 1643210514),
(470, 'default', '{\"uuid\":\"bfaf8868-02c1-420c-a985-47b1f26790bd\",\"displayName\":\"App\\\\Jobs\\\\UsersRegistrationConfirmationMailJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\UsersRegistrationConfirmationMailJob\",\"command\":\"O:45:\\\"App\\\\Jobs\\\\UsersRegistrationConfirmationMailJob\\\":10:{s:6:\\\"userID\\\";i:654;s:8:\\\"schoolID\\\";s:1:\\\"3\\\";s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1643210955, 1643210955),
(471, 'default', '{\"uuid\":\"b0586ac3-4e22-481d-94fa-8ad145d09f3d\",\"displayName\":\"App\\\\Jobs\\\\UsersRegistrationConfirmationMailJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\UsersRegistrationConfirmationMailJob\",\"command\":\"O:45:\\\"App\\\\Jobs\\\\UsersRegistrationConfirmationMailJob\\\":10:{s:6:\\\"userID\\\";i:655;s:8:\\\"schoolID\\\";s:1:\\\"3\\\";s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1643211745, 1643211745);

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
(1, NULL, 'hi', 635, 637, NULL, 1, 1, '2022-01-10 22:25:39', '2022-01-10 22:27:12'),
(2, NULL, 'hi', 637, 635, NULL, 1, 1, '2022-01-10 22:26:06', '2022-01-10 22:26:29'),
(3, NULL, 'hello', 635, 638, NULL, 1, 1, '2022-01-10 22:26:46', '2022-01-10 22:27:35'),
(4, NULL, 'hi', 638, 635, NULL, 1, 1, '2022-01-10 22:27:42', '2022-02-04 08:32:06'),
(5, NULL, 'hi', 638, 637, NULL, 1, 1, '2022-01-10 22:28:16', '2022-01-10 22:28:44'),
(6, NULL, 'you', 637, 638, NULL, 0, 1, '2022-01-10 22:28:49', '2022-01-10 22:28:49'),
(7, NULL, 'hi', 635, 636, NULL, 0, 1, '2022-01-11 06:13:59', '2022-01-11 06:13:59'),
(8, NULL, 'hello', 653, 655, NULL, 0, 1, '2022-01-30 08:50:03', '2022-01-30 08:50:03');

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
(106, '2021_12_27_080742_add_school_id_to_notices_table', 53),
(107, '2022_01_10_081225_add_created_by_to_quizzes_table', 54),
(108, '2022_01_10_081516_add_created_by_to_assignments_table', 54);

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
(37, 'School Admin', 1, 'Details Information', '2022-01-10', 'home-map.png1641806674.png', '2022-01-25', 'Active', 29, NULL, '2022-01-10 03:24:34', '2022-01-10 03:24:34', 0),
(38, 'Admin Notice', 1, 'Details', '2022-01-11', 'home-03.png1641806945.png', '2022-01-26', 'Active', 29, NULL, '2022-01-10 03:29:05', '2022-02-04 10:24:10', 0),
(55, 'BD', 2, 'Now Today off School', '2022-01-11', '5.jpg1641817066.jpg', '2022-01-12', 'Active', 635, NULL, '2022-01-10 06:17:46', '2022-01-10 06:17:46', 1),
(60, 'Final', 2, 'Todya working notice', '2022-01-11', '10.jpg1641817346.jpg', '2022-01-19', 'Active', 635, NULL, '2022-01-10 06:22:26', '2022-01-10 06:22:26', 1),
(61, 'Friday holliday', 2, 'dfasdf', '2022-01-11', '4.jpg1641875390.jpg', '2022-01-26', 'Active', 635, NULL, '2022-01-10 22:29:50', '2022-01-10 22:29:50', 1);

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
(1, 'School Admin Notice', 'Active', 'Now', '2022-01-10 03:02:57', '2022-01-10 03:02:57'),
(2, 'Bd', 'Inactive', 'Details', '2022-01-10 05:58:13', '2022-02-04 10:33:16');

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
('0c179eac-3715-4736-8581-f64cf6c67878', 'App\\Notifications\\MessageNotification', 'App\\Models\\User', 638, '{\"Type\":\"Message Chatbox\",\"Id\":\"638\",\"Message\":\"Send a Message in your Message box. Abdul\"}', '2022-01-10 22:30:51', '2022-01-10 22:28:49', '2022-01-10 22:30:51'),
('120f7339-15b7-464b-81e1-7f1c5216949a', 'App\\Notifications\\AssignmentsNotification', 'App\\Models\\User', 644, '{\"Type\":\"Quizzes\",\"Id\":\"4\",\"Message\":\"Student Assign Assignment done. Assignment - 02 mdpurprs\"}', '2022-01-11 03:09:47', '2022-01-11 02:30:50', '2022-01-11 03:09:47'),
('15d12336-a0d1-4b33-b77e-c0fcba53d19b', 'App\\Notifications\\QuizzesNotification', 'App\\Models\\User', 637, '{\"Type\":\"Quizzes\",\"Id\":\"2\",\"Message\":\"Student Assign Quizzes done. Quiz 005\"}', NULL, '2022-01-22 00:59:31', '2022-01-22 00:59:31'),
('234a5ee5-fc33-49f1-b304-bee2cc08a01c', 'App\\Notifications\\AssignmentsNotification', 'App\\Models\\User', 643, '{\"Type\":\"Quizzes\",\"Id\":\"3\",\"Message\":\"Student Assign Assignment done. Assignment - 04\"}', NULL, '2022-01-11 05:49:54', '2022-01-11 05:49:54'),
('2d359221-a3c3-459e-9399-b13fc3140a93', 'App\\Notifications\\studentClassImprovedNotification', 'App\\Models\\User', 637, '{\"Type\":\"Quizzes\",\"Id\":2,\"Message\":\"Student Class Update\\/Passed Year done. Year 1\"}', '2022-01-10 22:23:00', '2022-01-10 22:21:13', '2022-01-10 22:23:00'),
('3ce03b42-d754-4181-be66-ac6f751cda42', 'App\\Notifications\\MessageNotification', 'App\\Models\\User', 637, '{\"Type\":\"Message Chatbox\",\"Id\":\"637\",\"Message\":\"Send a Message in your Message box. Nur\"}', '2022-01-10 22:30:37', '2022-01-10 22:28:16', '2022-01-10 22:30:37'),
('51e38f89-a0df-402d-885b-8ac947074d9b', 'App\\Notifications\\MessageNotification', 'App\\Models\\User', 638, '{\"Type\":\"Message Chatbox\",\"Id\":\"638\",\"Message\":\"Send a Message in your Message box. Mohammad Naim\"}', '2022-01-10 22:30:51', '2022-01-10 22:26:46', '2022-01-10 22:30:51'),
('5e939ec4-2f7f-49b9-9b94-25bffdc814b9', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 637, '{\"Type\":\"School Notice\",\"Id\":61,\"Message\":\"Send a Notice in your School. Friday holliday\"}', '2022-01-10 22:30:37', '2022-01-10 22:29:50', '2022-01-10 22:30:37'),
('66aa72a5-d87b-48c1-8783-08fc612a4ac9', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 636, '{\"Type\":\"School Notice\",\"Id\":60,\"Message\":\"Send a Notice in your School. Final\"}', '2022-01-10 22:53:00', '2022-01-10 06:22:26', '2022-01-10 22:53:00'),
('68a9b506-2fbc-4b8a-ab6d-8b755d5e8e96', 'App\\Notifications\\MessageNotification', 'App\\Models\\User', 655, '{\"Type\":\"Message Chatbox\",\"Id\":\"655\",\"Message\":\"Send a Message in your Message box. Admin\"}', NULL, '2022-01-30 08:50:04', '2022-01-30 08:50:04'),
('7f36f645-6a34-481c-83d2-5784d2f0376a', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 635, '{\"Type\":\"School Notice\",\"Id\":1,\"Message\":\"Send a Notice in your School. notice Admin\"}', '2022-01-10 03:29:33', '2022-01-10 03:29:05', '2022-01-10 03:29:33'),
('9fe938bf-6197-4db4-8922-59f93f6b8668', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 637, '{\"Type\":\"School Notice\",\"Id\":60,\"Message\":\"Send a Notice in your School. Final\"}', '2022-01-10 22:23:00', '2022-01-10 06:22:26', '2022-01-10 22:23:00'),
('a014658d-ec86-4f9b-9344-fdfd4b2f407e', 'App\\Notifications\\QuizzesNotification', 'App\\Models\\User', 636, '{\"Type\":\"Quizzes\",\"Id\":\"1\",\"Message\":\"Student Assign Quizzes done. First Quiz MdpurGS\"}', '2022-01-10 22:53:00', '2022-01-10 22:46:24', '2022-01-10 22:53:00'),
('a4996d07-3b3d-4a86-9d4d-80d0a604b3db', 'App\\Notifications\\MessageNotification', 'App\\Models\\User', 637, '{\"Type\":\"Message Chatbox\",\"Id\":\"637\",\"Message\":\"Send a Message in your Message box. Mohammad Naim\"}', '2022-01-10 22:30:37', '2022-01-10 22:25:39', '2022-01-10 22:30:37'),
('a5e7c60f-a62f-42bc-9e79-2bd18ae85674', 'App\\Notifications\\MessageNotification', 'App\\Models\\User', 635, '{\"Type\":\"Message Chatbox\",\"Id\":\"635\",\"Message\":\"Send a Message in your Message box. Abdul\"}', NULL, '2022-01-10 22:26:06', '2022-01-10 22:26:06'),
('aadc3c7c-1167-49f3-a007-75838996e1cd', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 1, '{\"Type\":\"School Notice\",\"Id\":1,\"Message\":\"Send a Notice in your School. School Admin\"}', NULL, '2022-01-10 03:24:34', '2022-01-10 03:24:34'),
('b571be28-58a7-4997-9b14-5848315ed552', 'App\\Notifications\\QuizzesNotification', 'App\\Models\\User', 637, '{\"Type\":\"Quizzes\",\"Id\":\"2\",\"Message\":\"Student Assign Quizzes done. Quiz -02 MdpurGs\"}', '2022-01-17 05:41:28', '2022-01-10 22:46:14', '2022-01-17 05:41:28'),
('b76810f1-987d-4f91-a5da-77c6d2820e55', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 635, '{\"Type\":\"School Notice\",\"Id\":54,\"Message\":\"Send a Notice in your School. BD\"}', '2022-01-10 22:17:02', '2022-01-10 06:17:46', '2022-01-10 22:17:02'),
('b8c1917a-3b62-4514-8b7a-d502e809be93', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 638, '{\"Type\":\"School Notice\",\"Id\":61,\"Message\":\"Send a Notice in your School. Friday holliday\"}', '2022-01-10 22:30:51', '2022-01-10 22:29:50', '2022-01-10 22:30:51'),
('bb03d6bc-067a-494d-9f0e-2d38e620075d', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 637, '{\"Type\":\"School Notice\",\"Id\":54,\"Message\":\"Send a Notice in your School. BD\"}', '2022-01-10 22:23:00', '2022-01-10 06:17:46', '2022-01-10 22:23:00'),
('c3ba40e3-2c60-47c7-a990-a9564446d0a2', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 636, '{\"Type\":\"School Notice\",\"Id\":54,\"Message\":\"Send a Notice in your School. BD\"}', '2022-01-10 22:53:00', '2022-01-10 06:17:46', '2022-01-10 22:53:00'),
('c5f9ded0-adcc-4865-8c53-b4c3533e2c6f', 'App\\Notifications\\MessageNotification', 'App\\Models\\User', 636, '{\"Type\":\"Message Chatbox\",\"Id\":\"636\",\"Message\":\"Send a Message in your Message box. Mohammad Naim\"}', NULL, '2022-01-11 06:13:59', '2022-01-11 06:13:59'),
('d72c8e53-2735-40f2-8e18-7a838dfd684d', 'App\\Notifications\\AssignmentsNotification', 'App\\Models\\User', 636, '{\"Type\":\"Quizzes\",\"Id\":\"1\",\"Message\":\"Student Assign Assignment done. Assignment - 02 Mdpurgs\"}', '2022-01-11 06:12:35', '2022-01-10 23:01:24', '2022-01-11 06:12:35'),
('dc345fd1-0aa2-4134-8baa-08dd69a7d298', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 639, '{\"Type\":\"School Notice\",\"Id\":61,\"Message\":\"Send a Notice in your School. Friday holliday\"}', NULL, '2022-01-10 22:29:50', '2022-01-10 22:29:50'),
('dff08b82-88a5-44b6-b289-0e13a9e2f20c', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 29, '{\"Type\":\"School Notice\",\"Id\":1,\"Message\":\"Send a Notice in your School. School Admin\"}', '2022-01-10 03:29:13', '2022-01-10 03:24:34', '2022-01-10 03:29:13'),
('e09cd8bd-6855-4b91-9906-76877e8d995d', 'App\\Notifications\\QuizzesNotification', 'App\\Models\\User', 644, '{\"Type\":\"Quizzes\",\"Id\":\"4\",\"Message\":\"Student Assign Quizzes done. Quiz - 02 MdpurPrs\"}', '2022-01-11 03:09:47', '2022-01-11 03:09:02', '2022-01-11 03:09:47'),
('e75cd2dd-fa1c-4617-a033-25e8c38340c4', 'App\\Notifications\\AssignmentsNotification', 'App\\Models\\User', 643, '{\"Type\":\"Quizzes\",\"Id\":\"3\",\"Message\":\"Student Assign Assignment done. Assignment - 01 Mdpurprs\"}', NULL, '2022-01-11 02:25:45', '2022-01-11 02:25:45'),
('e7cbb7ec-237b-48f0-9392-ea91c5bc5b64', 'App\\Notifications\\studentClassImprovedNotification', 'App\\Models\\User', 637, '{\"Type\":\"Quizzes\",\"Id\":2,\"Message\":\"Student Class Update\\/Passed Year done. Year 1\"}', '2022-01-10 22:23:00', '2022-01-10 04:59:25', '2022-01-10 22:23:00'),
('f4c39321-cf68-40fc-abd5-dc1ecb02ef08', 'App\\Notifications\\AssignmentsNotification', 'App\\Models\\User', 637, '{\"Type\":\"Quizzes\",\"Id\":\"2\",\"Message\":\"Student Assign Assignment done. First Assignment mdpurgs\"}', '2022-01-17 05:41:28', '2022-01-10 22:56:38', '2022-01-17 05:41:28'),
('f541dfd3-a27c-4332-89cc-76ffc05cc7cd', 'App\\Notifications\\NotifiyNotification', 'App\\Models\\User', 636, '{\"Type\":\"School Notice\",\"Id\":61,\"Message\":\"Send a Notice in your School. Friday holliday\"}', '2022-01-10 22:53:00', '2022-01-10 22:29:50', '2022-01-10 22:53:00'),
('f814ce1a-401f-484c-a2ee-8b8c9e56de37', 'App\\Notifications\\MessageNotification', 'App\\Models\\User', 635, '{\"Type\":\"Message Chatbox\",\"Id\":\"635\",\"Message\":\"Send a Message in your Message box. Nur\"}', NULL, '2022-01-10 22:27:42', '2022-01-10 22:27:42'),
('f85a9dba-7a26-44d2-9900-2fb2e0217140', 'App\\Notifications\\AssignmentsNotification', 'App\\Models\\User', 644, '{\"Type\":\"Quizzes\",\"Id\":\"4\",\"Message\":\"Student Assign Assignment done. Assignment - 03 mdpurprs\"}', NULL, '2022-01-11 05:46:25', '2022-01-11 05:46:25');

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
(1, 1, '1', '0', '2022-01-10 22:45:35', '2022-01-10 22:45:35'),
(2, 1, '2', '1', '2022-01-10 22:45:35', '2022-01-10 22:45:35'),
(3, 1, '3', '0', '2022-01-10 22:45:35', '2022-01-10 22:45:35'),
(4, 1, '4', '1', '2022-01-10 22:45:35', '2022-01-10 22:45:35'),
(5, 2, 't', '1', '2022-01-10 22:45:58', '2022-01-10 22:45:58'),
(6, 2, 'd', '0', '2022-01-10 22:45:58', '2022-01-10 22:45:58'),
(7, 2, 'o', '0', '2022-01-10 22:45:58', '2022-01-10 22:45:58'),
(8, 2, 'p', '0', '2022-01-10 22:45:58', '2022-01-10 22:45:58'),
(9, 3, '1', '1', '2022-01-11 02:52:27', '2022-01-11 02:52:27'),
(10, 3, '2', '1', '2022-01-11 02:52:27', '2022-01-11 02:52:27'),
(11, 3, '4', '0', '2022-01-11 02:52:27', '2022-01-11 02:52:27'),
(12, 3, '5', '0', '2022-01-11 02:52:27', '2022-01-11 02:52:27'),
(13, 4, 'Friday', '0', '2022-01-11 02:53:19', '2022-01-11 02:53:19'),
(14, 4, 'Tuesday', '1', '2022-01-11 02:53:19', '2022-01-11 02:53:19'),
(15, 4, 'Monday', '0', '2022-01-11 02:53:19', '2022-01-11 02:53:19'),
(16, 4, 'Saturday', '0', '2022-01-11 02:53:19', '2022-01-11 02:53:19'),
(22, 7, '16423050944.jpg', '1', '2022-01-15 21:51:34', '2022-01-15 21:51:34'),
(23, 7, '16423050947.jpg', '0', '2022-01-15 21:51:34', '2022-01-15 21:51:34'),
(24, 7, '16423050949.jpg', '0', '2022-01-15 21:51:34', '2022-01-15 21:51:34'),
(25, 7, '164230509410.jpg', '0', '2022-01-15 21:51:34', '2022-01-15 21:51:34'),
(26, 8, 'First', '0', '2022-01-16 00:22:29', '2022-01-16 00:22:29'),
(27, 8, 'Second', '0', '2022-01-16 00:22:29', '2022-01-16 00:22:29'),
(28, 8, 'Third', '0', '2022-01-16 00:22:29', '2022-01-16 00:22:29'),
(29, 8, 'Fourth', '0', '2022-01-16 00:22:29', '2022-01-16 00:22:29'),
(30, 8, 'fiveth', '0', '2022-01-16 00:22:29', '2022-01-16 00:22:29'),
(31, 8, 'sixth', '0', '2022-01-16 00:22:29', '2022-01-16 00:22:29'),
(32, 9, 'Apple', 'red', '2022-01-17 01:17:45', '2022-01-17 01:17:45'),
(33, 9, 'Banna', 'yellow', '2022-01-17 01:17:45', '2022-01-17 01:17:45'),
(34, 9, 'Guava', 'green', '2022-01-17 01:17:45', '2022-01-17 01:17:45'),
(35, 10, '16424797412.jpg', '16424797412.jpg', '2022-01-17 22:22:21', '2022-01-17 22:22:21'),
(36, 10, '16424797417.jpg', '16424797417.jpg', '2022-01-17 22:22:21', '2022-01-17 22:22:21'),
(37, 10, '16424797414.jpg', '16424797414.jpg', '2022-01-17 22:22:21', '2022-01-17 22:22:21'),
(38, 11, 'A', '0', '2022-01-21 23:10:42', '2022-01-21 23:10:42'),
(39, 11, 'B', '1', '2022-01-21 23:10:42', '2022-01-21 23:10:42'),
(40, 11, 'C', '1', '2022-01-21 23:10:42', '2022-01-21 23:10:42'),
(41, 11, 'D', '0', '2022-01-21 23:10:42', '2022-01-21 23:10:42'),
(42, 12, 'Should be called when an object is destroyed', '0', '2022-01-21 23:24:06', '2022-01-21 23:24:06'),
(43, 12, 'Can be called using the class name and function', '1', '2022-01-21 23:24:06', '2022-01-21 23:24:06'),
(44, 12, 'Is closely connected with an individual object of a class', '0', '2022-01-21 23:24:06', '2022-01-21 23:24:06'),
(45, 12, 'Is used when a dummy object must be created', '0', '2022-01-21 23:24:06', '2022-01-21 23:24:06'),
(46, 13, '1642833436delo-11.jpg', '0', '2022-01-22 00:37:16', '2022-01-22 00:37:16'),
(47, 13, '1642833436havco-11.jpg', '0', '2022-01-22 00:37:16', '2022-01-22 00:37:16'),
(48, 13, '1642833436Screenshot_8.png', '1', '2022-01-22 00:37:16', '2022-01-22 00:37:16'),
(49, 13, '1642833436thumbnail.jpg', '0', '2022-01-22 00:37:16', '2022-01-22 00:37:16'),
(50, 17, 'banana', 'yellow', '2022-01-22 00:39:58', '2022-01-22 00:39:58'),
(51, 17, 'X', '8', '2022-01-22 00:39:58', '2022-01-22 00:39:58'),
(52, 17, 'Guava', 'green', '2022-01-22 00:39:58', '2022-01-22 00:39:58'),
(53, 18, '1642833667bg-slide4.jpg', '1642833667bg-slide4.jpg', '2022-01-22 00:41:07', '2022-01-22 00:41:07'),
(54, 18, '1642833667chevron-home-banner.jpg', '1642833667chevron-home-banner.jpg', '2022-01-22 00:41:07', '2022-01-22 00:41:07'),
(55, 18, '1642833667cow-eating-1-scaled.jpeg', '1642833667cow-eating-1-scaled.jpeg', '2022-01-22 00:41:07', '2022-01-22 00:41:07'),
(56, 18, '1642833667Chevron-house.jpg', '1642833667Chevron-house.jpg', '2022-01-22 00:41:07', '2022-01-22 00:41:07'),
(57, 20, '01', '0', '2022-01-22 00:57:34', '2022-01-22 00:57:34'),
(58, 20, '02', '0', '2022-01-22 00:57:34', '2022-01-22 00:57:34'),
(59, 20, '03', '0', '2022-01-22 00:57:34', '2022-01-22 00:57:34'),
(60, 20, '04', '0', '2022-01-22 00:57:34', '2022-01-22 00:57:34'),
(61, 20, '05', '0', '2022-01-22 00:57:34', '2022-01-22 00:57:34'),
(62, 20, '06', '0', '2022-01-22 00:57:34', '2022-01-22 00:57:34'),
(63, 21, '001', '0', '2022-01-23 22:55:18', '2022-01-23 22:55:18'),
(64, 21, '002', '0', '2022-01-23 22:55:18', '2022-01-23 22:55:18'),
(65, 21, '003', '0', '2022-01-23 22:55:18', '2022-01-23 22:55:18'),
(66, 21, '004', '0', '2022-01-23 22:55:18', '2022-01-23 22:55:18'),
(67, 21, '005', '0', '2022-01-23 22:55:18', '2022-01-23 22:55:18'),
(68, 21, '006', '0', '2022-01-23 22:55:18', '2022-01-23 22:55:18'),
(69, 22, 'X', '4', '2022-01-24 04:15:38', '2022-01-24 04:15:38'),
(70, 22, 'Y', '8', '2022-01-24 04:15:38', '2022-01-24 04:15:38'),
(71, 25, '-', '8', '2022-01-24 04:20:23', '2022-01-24 04:20:23'),
(72, 26, 'X', '5', '2022-01-25 03:53:58', '2022-01-25 03:53:58'),
(73, 26, 'y', '2', '2022-01-25 03:53:58', '2022-01-25 03:53:58'),
(74, 30, 'x', '1', '2022-01-25 03:58:51', '2022-01-25 03:58:51'),
(75, 30, 'y', '2', '2022-01-25 03:58:51', '2022-01-25 03:58:51'),
(76, 36, 'x', '2', '2022-01-25 04:10:54', '2022-01-25 04:10:54'),
(77, 36, 'y', '1', '2022-01-25 04:10:54', '2022-01-25 04:10:54'),
(78, 37, 'x', '1', '2022-01-25 04:11:53', '2022-01-25 04:11:53'),
(79, 37, 'y', '2', '2022-01-25 04:11:53', '2022-01-25 04:11:53');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` int(10) UNSIGNED NOT NULL,
  `quiz_id` int(11) NOT NULL,
  `question_detail` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `mark` double(8,2) DEFAULT NULL,
  `type` enum('Multiple choice','Single Choice','Picture choice','True/false','Free text','Fill in the blanks','Match pair','Ordering','Graph','Match pair image') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Multiple choice',
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
(1, 2, 'First Question', 1.00, 'Multiple choice', NULL, '16418763354.jpg', 1, NULL, 'Active', '2022-01-10 22:45:35', '2022-01-11 00:08:13'),
(2, 1, 'todo list', 1.00, 'Single Choice', NULL, NULL, 1, NULL, 'Active', '2022-01-10 22:45:58', '2022-01-10 22:45:58'),
(3, 4, 'First chat', 1.00, 'Multiple choice', NULL, '164189114710.jpg', 1, NULL, 'Active', '2022-01-11 02:52:27', '2022-01-11 02:52:27'),
(4, 3, 'Today is -', 1.00, 'Single Choice', NULL, NULL, 1, NULL, 'Active', '2022-01-11 02:53:19', '2022-01-11 02:53:19'),
(7, 2, 'Picture Maching', 1.00, 'Picture choice', NULL, NULL, 3, NULL, 'Active', '2022-01-15 21:51:34', '2022-01-15 21:51:34'),
(8, 2, 'New Ordering', 1.00, 'Ordering', NULL, NULL, 4, NULL, 'Active', '2022-01-16 00:22:28', '2022-01-16 00:22:28'),
(9, 2, 'First Question', 1.00, 'Match pair', NULL, NULL, 5, NULL, 'Active', '2022-01-17 01:17:44', '2022-01-17 01:17:44'),
(10, 2, 'Now', 1.00, 'Match pair image', NULL, NULL, 6, NULL, 'Active', '2022-01-17 22:22:20', '2022-01-17 22:22:20'),
(11, 6, 'The function bad( ) is declared in the header file', 1.00, 'Multiple choice', NULL, NULL, 1, NULL, 'Active', '2022-01-21 23:10:42', '2022-01-21 23:10:42'),
(12, 6, 'A static function', 1.00, 'Single Choice', NULL, NULL, 2, NULL, 'Active', '2022-01-21 23:24:05', '2022-01-21 23:24:05'),
(13, 6, 'pictue 01', 1.00, 'Picture choice', NULL, NULL, 3, NULL, 'Active', '2022-01-22 00:37:16', '2022-01-22 00:37:16'),
(17, 6, 'Mathching text', 1.00, 'Match pair', NULL, NULL, 4, NULL, 'Active', '2022-01-22 00:39:58', '2022-01-22 00:39:58'),
(18, 6, 'Two Match pair image', 1.00, 'Match pair image', NULL, NULL, 5, NULL, 'Active', '2022-01-22 00:41:07', '2022-01-22 00:41:07'),
(20, 6, 'ordering to quiz', 1.00, 'Ordering', NULL, NULL, 6, NULL, 'Active', '2022-01-22 00:57:34', '2022-01-22 00:57:34'),
(21, 6, 'Ordering', 1.00, 'Ordering', NULL, NULL, 7, NULL, 'Active', '2022-01-23 22:55:17', '2022-01-23 22:55:17'),
(22, 6, 'Now First', 1.00, 'Graph', NULL, NULL, 8, NULL, 'Active', '2022-01-24 04:15:38', '2022-01-24 04:15:38'),
(25, 6, 'Todo', 1.00, 'Graph', NULL, NULL, 9, NULL, 'Active', '2022-01-24 04:20:22', '2022-01-24 04:20:22'),
(26, 6, 'Graphical', 1.00, 'Graph', NULL, NULL, 10, NULL, 'Active', '2022-01-25 03:53:57', '2022-01-25 03:53:57'),
(30, 6, 'asdf', 1.00, 'Graph', NULL, NULL, 11, NULL, 'Active', '2022-01-25 03:58:51', '2022-01-25 03:58:51'),
(36, 6, 'Test Graphical', 1.00, 'Graph', NULL, '1643105454image-4.webp', 12, NULL, 'Active', '2022-01-25 04:10:54', '2022-01-25 04:10:54'),
(37, 6, 'Final Test Graph', 1.00, 'Graph', '1643105513index.png', '1643105513image-4.jpg', 13, NULL, 'Active', '2022-01-25 04:11:53', '2022-01-25 04:11:53');

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
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `quizzes`
--

INSERT INTO `quizzes` (`id`, `school_id`, `year_id`, `class_id`, `subject_id`, `topic_id`, `title`, `instruction`, `attachment`, `remote_media_file_link`, `total_question`, `total_marks`, `publisher`, `status`, `created_at`, `updated_at`, `created_by`) VALUES
(1, 1, 1, 1, 16, 4, 'First Quiz MdpurGS', 'Now', '164187604610.jpg', NULL, 1, 1, 'Published', 'Active', '2022-01-10 22:40:46', '2022-01-11 00:08:12', 635),
(2, 1, 2, 3, 18, 1, 'Quiz -02 MdpurGs', 'todo', NULL, NULL, 6, 6, 'Published', 'Active', '2022-01-10 22:41:20', '2022-01-17 22:22:21', 635),
(3, 2, 1, 1, 16, 4, 'Quiz - 01 Mdpurprs', 'Now', '164188945510.jpg', NULL, 1, 1, 'Published', 'Active', '2022-01-11 02:24:15', '2022-01-11 02:53:19', 0),
(4, 2, 2, 3, 18, 1, 'Quiz - 02 MdpurPrs', 'Details', NULL, NULL, 1, 1, 'Published', 'Active', '2022-01-11 02:24:47', '2022-01-11 02:52:27', 0),
(5, 2, 1, 1, 16, 4, 'Quiz - 03 mdpurprs', 'now', NULL, NULL, 0, 0, 'Published', 'Active', '2022-01-11 05:37:50', '2022-01-11 05:37:50', 641),
(6, 1, 2, 3, 16, 4, 'Quiz 005', 'This is ok', NULL, NULL, 13, 13, 'Published', 'Active', '2022-01-21 23:07:44', '2022-01-25 04:11:53', 635),
(7, 3, 2, 3, 16, 4, 'Math', NULL, NULL, NULL, 0, 0, 'Published', 'Active', '2022-01-29 10:25:57', '2022-01-29 10:25:57', 653),
(8, 3, 2, 3, 16, 4, 'Math', 'dfgh', NULL, NULL, 0, 0, 'Published', 'Active', '2022-01-30 07:41:25', '2022-01-30 07:41:25', 653),
(9, 3, 1, 1, 16, 4, 'Video', 'qwerty', NULL, 'https://www.youtube.com/watch?v=N0_TWQTrJ-k', 0, 0, 'Published', 'Active', '2022-01-30 07:42:23', '2022-01-30 07:42:23', 653),
(10, 3, 2, 3, 16, 4, 'History', NULL, NULL, NULL, 0, 0, 'Published', 'Active', '2022-01-30 08:57:24', '2022-01-30 08:57:24', 653),
(11, 3, 5, 12, 16, 4, 'History', 'avsvhcvshv', NULL, NULL, 0, 0, 'Published', 'Active', '2022-01-30 09:42:51', '2022-01-30 09:42:51', 653);

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
(1, 1, 1, '2022-01-11 06:27:48', 'Yes', 'Wrong', 0, 'No', '00:00:03', '2022-01-11 00:27:44', '2022-01-11 00:27:48'),
(2, 1, 1, '2022-01-11 06:29:03', 'Yes', 'Right', 1, 'Yes', '00:01:07', '2022-01-11 00:27:54', '2022-01-11 00:29:03'),
(3, 10, 1, '2022-01-16 03:43:08', 'Yes', 'Wrong', 0, 'No', '00:00:07', '2022-01-15 21:42:57', '2022-01-15 21:43:08'),
(4, 10, 5, '2022-01-16 03:43:12', 'Yes', 'Skipped', 0, 'No', '00:02:00', '2022-01-15 21:42:57', '2022-01-15 21:43:30'),
(5, 10, 1, '2022-01-16 03:43:11', 'Yes', 'No Answer', 0, 'Yes', '00:02:00', '2022-01-15 21:43:10', '2022-01-15 21:43:11'),
(6, 11, 1, '2022-01-16 03:54:06', 'Yes', 'Wrong', 0, 'No', '00:00:14', '2022-01-15 21:53:47', '2022-01-15 21:54:06'),
(7, 11, 5, '2022-01-16 03:54:33', 'Yes', 'Skipped', 0, 'No', '00:02:00', '2022-01-15 21:53:47', '2022-01-15 21:54:36'),
(8, 11, 7, '2022-01-16 03:54:36', 'Yes', 'No Answer', 0, 'No', '00:02:00', '2022-01-15 21:53:47', '2022-01-15 21:54:36'),
(9, 11, 1, '2022-01-16 03:54:33', 'Yes', 'Right', 1, 'Yes', '00:00:21', '2022-01-15 21:54:09', '2022-01-15 21:54:33'),
(10, 12, 1, '2022-01-16 04:00:56', 'Yes', 'Right', 1, 'No', '00:00:03', '2022-01-15 22:00:49', '2022-01-15 22:00:56'),
(11, 12, 5, '2022-01-16 04:00:56', 'Yes', 'Skipped', 0, 'No', '00:02:00', '2022-01-15 22:00:49', '2022-01-15 22:00:58'),
(12, 12, 7, '2022-01-16 04:00:58', 'Yes', 'No Answer', 0, 'No', '00:02:00', '2022-01-15 22:00:49', '2022-01-15 22:00:58'),
(13, 13, 1, '2022-01-16 04:02:48', 'Yes', 'Right', 1, 'No', '00:00:03', '2022-01-15 22:02:40', '2022-01-15 22:02:48'),
(14, 13, 5, '2022-01-16 04:02:48', 'Yes', 'Skipped', 0, 'No', '00:02:00', '2022-01-15 22:02:40', '2022-01-15 22:02:54'),
(15, 13, 7, '2022-01-16 04:02:54', 'Yes', 'No Answer', 0, 'No', '00:02:00', '2022-01-15 22:02:40', '2022-01-15 22:02:54'),
(16, 14, 1, '2022-01-16 04:04:06', 'Yes', 'Right', 1, 'No', '00:00:03', '2022-01-15 22:03:59', '2022-01-15 22:04:06'),
(17, 14, 5, '2022-01-16 04:04:07', 'Yes', 'Skipped', 0, 'No', '00:02:00', '2022-01-15 22:03:59', '2022-01-15 22:04:11'),
(18, 14, 7, '2022-01-16 04:11:30', 'Yes', 'Right', 1, 'No', '00:13:27', '2022-01-15 22:03:59', '2022-01-15 22:11:30'),
(19, 15, 1, '2022-01-16 04:11:53', 'Yes', 'Right', 1, 'No', '00:00:03', '2022-01-15 22:11:46', '2022-01-15 22:11:53'),
(20, 15, 5, '2022-01-16 04:11:53', 'Yes', 'Skipped', 0, 'No', '00:02:00', '2022-01-15 22:11:46', '2022-01-15 22:11:57'),
(21, 15, 7, '2022-01-16 04:12:00', 'Yes', 'Right', 1, 'No', '00:00:05', '2022-01-15 22:11:46', '2022-01-15 22:12:00'),
(22, 16, 1, '2022-01-16 05:04:09', 'Yes', 'Right', 1, 'No', '00:00:05', '2022-01-15 23:04:00', '2022-01-15 23:04:09'),
(23, 16, 5, '2022-01-16 05:04:09', 'Yes', 'Skipped', 0, 'No', '00:02:00', '2022-01-15 23:04:00', '2022-01-15 23:04:15'),
(24, 16, 7, '2022-01-16 05:04:52', 'Yes', 'Right', 1, 'No', '00:01:11', '2022-01-15 23:04:00', '2022-01-15 23:04:52'),
(25, 17, 1, '2022-01-16 07:12:05', 'Yes', 'Right', 1, 'No', '00:00:03', '2022-01-16 01:11:58', '2022-01-16 01:12:05'),
(26, 17, 5, '2022-01-16 07:12:06', 'Yes', 'Skipped', 0, 'No', '00:02:00', '2022-01-16 01:11:58', '2022-01-16 01:12:08'),
(27, 17, 7, '2022-01-16 07:12:11', 'Yes', 'Right', 1, 'No', '00:00:05', '2022-01-16 01:11:58', '2022-01-16 01:12:11'),
(28, 17, 8, '2022-01-16 07:12:12', 'Yes', 'No Answer', 0, 'No', '00:02:00', '2022-01-16 01:11:58', '2022-01-16 01:12:12'),
(29, 18, 1, '2022-01-16 07:28:19', 'Yes', 'Right', 1, 'No', '00:00:02', '2022-01-16 01:28:12', '2022-01-16 01:28:19'),
(30, 18, 5, '2022-01-16 07:28:19', 'Yes', 'Skipped', 0, 'No', '00:02:00', '2022-01-16 01:28:12', '2022-01-16 01:28:21'),
(31, 18, 7, '2022-01-16 07:28:24', 'Yes', 'Right', 1, 'No', '00:00:04', '2022-01-16 01:28:12', '2022-01-16 01:28:24'),
(32, 18, 8, '2022-01-16 07:28:24', 'Yes', 'No Answer', 0, 'No', '00:02:00', '2022-01-16 01:28:12', '2022-01-16 01:28:24'),
(33, 19, 1, '2022-01-16 07:32:09', 'Yes', 'Right', 1, 'No', '00:00:02', '2022-01-16 01:32:02', '2022-01-16 01:32:09'),
(34, 19, 5, '2022-01-16 07:32:09', 'Yes', 'Skipped', 0, 'No', '00:02:00', '2022-01-16 01:32:02', '2022-01-16 01:32:11'),
(35, 19, 7, '2022-01-16 07:32:14', 'Yes', 'Right', 1, 'No', '00:00:03', '2022-01-16 01:32:02', '2022-01-16 01:32:14'),
(36, 19, 8, '2022-01-16 07:32:14', 'Yes', 'No Answer', 0, 'No', '00:02:00', '2022-01-16 01:32:02', '2022-01-16 01:32:14'),
(37, 20, 1, '2022-01-16 07:43:43', 'Yes', 'Right', 1, 'No', '00:00:02', '2022-01-16 01:43:37', '2022-01-16 01:43:43'),
(38, 20, 5, '2022-01-16 07:43:44', 'Yes', 'Skipped', 0, 'No', '00:02:00', '2022-01-16 01:43:37', '2022-01-16 01:43:46'),
(39, 20, 7, '2022-01-16 07:43:48', 'Yes', 'Right', 1, 'No', '00:00:03', '2022-01-16 01:43:37', '2022-01-16 01:43:48'),
(40, 20, 8, '2022-01-16 07:43:49', 'Yes', 'Skipped', 0, 'No', '00:02:00', '2022-01-16 01:43:37', '2022-01-16 01:45:40'),
(41, 21, 1, '2022-01-16 07:45:53', 'Yes', 'Right', 1, 'No', '00:00:02', '2022-01-16 01:45:46', '2022-01-16 01:45:53'),
(42, 21, 5, '2022-01-16 07:45:53', 'Yes', 'Skipped', 0, 'No', '00:02:00', '2022-01-16 01:45:46', '2022-01-16 01:45:57'),
(43, 21, 7, '2022-01-16 07:46:00', 'Yes', 'Right', 1, 'No', '00:00:06', '2022-01-16 01:45:46', '2022-01-16 01:46:00'),
(44, 21, 8, '2022-01-16 07:46:01', 'Yes', 'No Answer', 0, 'No', '00:02:00', '2022-01-16 01:45:46', '2022-01-16 01:46:01'),
(45, 22, 1, '2022-01-16 07:46:37', 'Yes', 'Right', 1, 'No', '00:00:02', '2022-01-16 01:46:30', '2022-01-16 01:46:37'),
(46, 22, 5, '2022-01-16 07:46:38', 'Yes', 'Skipped', 0, 'No', '00:02:00', '2022-01-16 01:46:30', '2022-01-16 01:46:40'),
(47, 22, 7, '2022-01-16 07:46:43', 'Yes', 'Right', 1, 'No', '00:00:05', '2022-01-16 01:46:30', '2022-01-16 01:46:43'),
(48, 22, 8, '2022-01-16 07:46:44', 'Yes', 'No Answer', 0, 'No', '00:02:00', '2022-01-16 01:46:30', '2022-01-16 01:46:44'),
(49, 23, 1, '2022-01-16 07:51:24', 'Yes', 'Right', 1, 'No', '00:00:02', '2022-01-16 01:51:17', '2022-01-16 01:51:24'),
(50, 23, 5, '2022-01-16 07:51:24', 'Yes', 'Skipped', 0, 'No', '00:02:00', '2022-01-16 01:51:17', '2022-01-16 01:51:26'),
(51, 23, 7, '2022-01-16 07:51:29', 'Yes', 'Right', 1, 'No', '00:00:04', '2022-01-16 01:51:17', '2022-01-16 01:51:29'),
(52, 23, 8, '2022-01-16 07:51:29', 'Yes', 'No Answer', 0, 'No', '00:02:00', '2022-01-16 01:51:17', '2022-01-16 01:51:29'),
(53, 24, 1, '2022-01-16 07:55:11', 'Yes', 'Right', 1, 'No', '00:00:02', '2022-01-16 01:55:04', '2022-01-16 01:55:11'),
(54, 24, 5, '2022-01-16 07:55:12', 'Yes', 'Skipped', 0, 'No', '00:02:00', '2022-01-16 01:55:05', '2022-01-16 01:55:14'),
(55, 24, 7, '2022-01-16 07:55:17', 'Yes', 'Right', 1, 'No', '00:00:04', '2022-01-16 01:55:05', '2022-01-16 01:55:17'),
(56, 24, 8, '2022-01-16 07:55:17', 'Yes', 'No Answer', 0, 'No', '00:02:00', '2022-01-16 01:55:05', '2022-01-16 01:55:17'),
(57, 25, 1, '2022-01-16 08:00:09', 'Yes', 'Right', 1, 'No', '00:00:02', '2022-01-16 02:00:03', '2022-01-16 02:00:09'),
(58, 25, 5, '2022-01-16 08:00:10', 'Yes', 'Skipped', 0, 'No', '00:02:00', '2022-01-16 02:00:03', '2022-01-16 02:00:12'),
(59, 25, 7, '2022-01-16 08:00:14', 'Yes', 'Right', 1, 'No', '00:00:04', '2022-01-16 02:00:03', '2022-01-16 02:00:14'),
(60, 25, 8, '2022-01-16 08:00:15', 'Yes', 'No Answer', 0, 'No', '00:02:00', '2022-01-16 02:00:03', '2022-01-16 02:00:15'),
(61, 26, 1, '2022-01-16 08:10:34', 'Yes', 'Right', 1, 'No', '00:00:03', '2022-01-16 02:10:27', '2022-01-16 02:10:34'),
(62, 26, 5, '2022-01-16 08:10:34', 'Yes', 'Skipped', 0, 'No', '00:02:00', '2022-01-16 02:10:27', '2022-01-16 02:10:36'),
(63, 26, 7, '2022-01-16 08:10:39', 'Yes', 'Right', 1, 'No', '00:00:03', '2022-01-16 02:10:27', '2022-01-16 02:10:39'),
(64, 26, 8, '2022-01-16 08:10:39', 'Yes', 'No Answer', 0, 'No', '00:02:00', '2022-01-16 02:10:27', '2022-01-16 02:10:39'),
(65, 27, 1, '2022-01-16 08:12:57', 'Yes', 'Right', 1, 'No', '00:00:14', '2022-01-16 02:12:37', '2022-01-16 02:12:57'),
(66, 27, 5, '2022-01-16 08:12:57', 'Yes', 'Skipped', 0, 'No', '00:02:00', '2022-01-16 02:12:37', '2022-01-16 02:13:00'),
(67, 27, 7, '2022-01-16 08:13:03', 'Yes', 'Right', 1, 'No', '00:00:05', '2022-01-16 02:12:37', '2022-01-16 02:13:03'),
(68, 27, 8, '2022-01-16 08:13:04', 'Yes', 'No Answer', 0, 'No', '00:02:00', '2022-01-16 02:12:37', '2022-01-16 02:13:04'),
(69, 28, 1, '2022-01-16 09:25:58', 'Yes', 'Right', 1, 'No', '00:00:04', '2022-01-16 03:25:46', '2022-01-16 03:25:58'),
(70, 28, 5, '2022-01-16 09:25:59', 'Yes', 'Skipped', 0, 'No', '00:02:00', '2022-01-16 03:25:46', '2022-01-16 03:26:01'),
(71, 28, 7, '2022-01-16 09:26:06', 'Yes', 'Right', 1, 'No', '00:00:06', '2022-01-16 03:25:46', '2022-01-16 03:26:06'),
(72, 28, 8, '2022-01-16 09:26:06', 'Yes', 'No Answer', 0, 'No', '00:02:00', '2022-01-16 03:25:46', '2022-01-16 03:26:06'),
(73, 29, 1, '2022-01-16 09:32:05', 'Yes', 'Right', 1, 'No', '00:00:02', '2022-01-16 03:31:57', '2022-01-16 03:32:05'),
(74, 29, 5, '2022-01-16 09:32:06', 'Yes', 'Skipped', 0, 'No', '00:02:00', '2022-01-16 03:31:57', '2022-01-16 03:32:08'),
(75, 29, 7, '2022-01-16 09:32:10', 'Yes', 'Right', 1, 'No', '00:00:03', '2022-01-16 03:31:57', '2022-01-16 03:32:10'),
(76, 29, 8, '2022-01-16 09:32:11', 'Yes', 'No Answer', 0, 'No', '00:02:00', '2022-01-16 03:31:57', '2022-01-16 03:32:11'),
(77, 30, 1, '2022-01-16 09:40:02', 'Yes', 'Right', 1, 'No', '00:00:02', '2022-01-16 03:39:55', '2022-01-16 03:40:02'),
(78, 30, 5, '2022-01-16 09:40:02', 'Yes', 'Skipped', 0, 'No', '00:02:00', '2022-01-16 03:39:55', '2022-01-16 03:40:04'),
(79, 30, 7, '2022-01-16 09:40:07', 'Yes', 'Right', 1, 'No', '00:00:02', '2022-01-16 03:39:55', '2022-01-16 03:40:07'),
(80, 30, 8, '2022-01-16 09:40:07', 'Yes', 'No Answer', 0, 'No', '00:02:00', '2022-01-16 03:39:55', '2022-01-16 03:40:07'),
(81, 31, 1, '2022-01-16 09:42:12', 'Yes', 'Right', 1, 'No', '00:00:02', '2022-01-16 03:42:06', '2022-01-16 03:42:12'),
(82, 31, 5, '2022-01-16 09:42:13', 'Yes', 'Skipped', 0, 'No', '00:02:00', '2022-01-16 03:42:06', '2022-01-16 03:42:15'),
(83, 31, 7, '2022-01-16 09:42:18', 'Yes', 'Right', 1, 'No', '00:00:03', '2022-01-16 03:42:06', '2022-01-16 03:42:18'),
(84, 31, 8, '2022-01-16 09:42:18', 'Yes', 'No Answer', 0, 'No', '00:02:00', '2022-01-16 03:42:06', '2022-01-16 03:42:18'),
(85, 32, 1, '2022-01-16 09:46:16', 'Yes', 'Right', 1, 'No', '00:00:02', '2022-01-16 03:46:07', '2022-01-16 03:46:16'),
(86, 32, 5, '2022-01-16 09:46:17', 'Yes', 'Skipped', 0, 'No', '00:02:00', '2022-01-16 03:46:07', '2022-01-16 03:46:19'),
(87, 32, 7, '2022-01-16 09:46:23', 'Yes', 'Right', 1, 'No', '00:00:06', '2022-01-16 03:46:07', '2022-01-16 03:46:23'),
(88, 32, 8, '2022-01-16 09:46:23', 'Yes', 'No Answer', 0, 'No', '00:02:00', '2022-01-16 03:46:07', '2022-01-16 03:46:23'),
(89, 33, 1, '2022-01-16 10:50:25', 'Yes', 'Right', 1, 'No', '00:00:03', '2022-01-16 04:50:15', '2022-01-16 04:50:25'),
(90, 33, 5, '2022-01-16 10:50:25', 'Yes', 'Skipped', 0, 'No', '00:02:00', '2022-01-16 04:50:15', '2022-01-16 04:50:28'),
(91, 33, 7, '2022-01-16 10:50:32', 'Yes', 'Right', 1, 'No', '00:00:06', '2022-01-16 04:50:15', '2022-01-16 04:50:32'),
(92, 33, 8, '2022-01-16 10:52:40', 'Yes', 'Right', 1, 'No', '00:04:00', '2022-01-16 04:50:15', '2022-01-16 04:52:40'),
(93, 34, 1, '2022-01-16 11:02:29', 'Yes', 'Right', 1, 'No', '00:00:02', '2022-01-16 05:02:23', '2022-01-16 05:02:29'),
(94, 34, 5, '2022-01-16 11:02:29', 'Yes', 'Skipped', 0, 'No', '00:02:00', '2022-01-16 05:02:23', '2022-01-16 05:02:32'),
(95, 34, 7, '2022-01-16 11:02:34', 'Yes', 'Right', 1, 'No', '00:00:04', '2022-01-16 05:02:23', '2022-01-16 05:02:34'),
(96, 34, 8, '2022-01-16 11:02:35', 'Yes', 'No Answer', 0, 'No', '00:02:00', '2022-01-16 05:02:23', '2022-01-16 05:02:35'),
(97, 35, 1, '2022-01-16 11:04:39', 'Yes', 'No Answer', 0, 'No', '00:02:00', '2022-01-16 05:04:36', '2022-01-16 05:04:39'),
(98, 35, 5, '2022-01-16 11:06:02', 'Yes', 'No Answer', 0, 'No', '00:02:00', '2022-01-16 05:04:36', '2022-01-16 05:06:02'),
(99, 35, 7, '2022-01-16 11:06:25', 'Yes', 'Right', 1, 'No', '00:00:18', '2022-01-16 05:04:36', '2022-01-16 05:06:25'),
(100, 35, 8, '2022-01-16 11:06:27', 'Yes', 'Right', 1, 'No', '00:00:03', '2022-01-16 05:04:36', '2022-01-16 05:06:27'),
(101, 36, 1, '2022-01-17 04:53:15', 'Yes', 'Right', 1, 'No', '00:00:05', '2022-01-16 22:53:06', '2022-01-16 22:53:15'),
(102, 36, 5, '2022-01-17 04:53:16', 'Yes', 'Skipped', 0, 'No', '00:02:00', '2022-01-16 22:53:06', '2022-01-16 22:53:18'),
(103, 36, 7, '2022-01-17 04:53:20', 'Yes', 'Right', 1, 'No', '00:00:03', '2022-01-16 22:53:06', '2022-01-16 22:53:20'),
(104, 36, 8, '2022-01-17 04:53:20', 'Yes', 'No Answer', 0, 'No', '00:02:00', '2022-01-16 22:53:06', '2022-01-16 22:53:20'),
(105, 37, 1, '2022-01-17 05:13:36', 'Yes', 'Right', 1, 'No', '00:00:02', '2022-01-16 23:13:30', '2022-01-16 23:13:36'),
(106, 37, 5, '2022-01-17 05:13:36', 'Yes', 'Skipped', 0, 'No', '00:02:00', '2022-01-16 23:13:30', '2022-01-16 23:13:38'),
(107, 37, 7, '2022-01-17 05:13:42', 'Yes', 'Right', 1, 'No', '00:00:06', '2022-01-16 23:13:30', '2022-01-16 23:13:42'),
(108, 37, 8, '2022-01-17 05:13:43', 'Yes', 'No Answer', 0, 'No', '00:02:00', '2022-01-16 23:13:30', '2022-01-16 23:13:43'),
(109, 38, 1, '2022-01-17 05:29:16', 'Yes', 'Right', 1, 'No', '00:00:05', '2022-01-16 23:29:01', '2022-01-16 23:29:16'),
(110, 38, 5, '2022-01-17 05:29:17', 'Yes', 'Skipped', 0, 'No', '00:02:00', '2022-01-16 23:29:01', '2022-01-16 23:29:19'),
(111, 38, 7, '2022-01-17 05:29:22', 'Yes', 'Right', 1, 'No', '00:00:04', '2022-01-16 23:29:01', '2022-01-16 23:29:22'),
(112, 38, 8, '2022-01-17 05:29:22', 'Yes', 'No Answer', 0, 'No', '00:02:00', '2022-01-16 23:29:01', '2022-01-16 23:29:22'),
(113, 39, 1, '2022-01-17 06:11:35', 'Yes', 'Right', 1, 'No', '00:00:02', '2022-01-17 00:11:27', '2022-01-17 00:11:35'),
(114, 39, 5, '2022-01-17 06:11:35', 'Yes', 'Skipped', 0, 'No', '00:02:00', '2022-01-17 00:11:27', '2022-01-17 00:11:37'),
(115, 39, 7, '2022-01-17 06:11:40', 'Yes', 'Right', 1, 'No', '00:00:04', '2022-01-17 00:11:27', '2022-01-17 00:11:40'),
(116, 39, 8, '2022-01-17 06:12:58', 'Yes', 'Wrong', 0, 'No', '00:02:13', '2022-01-17 00:11:27', '2022-01-17 00:12:58'),
(117, 39, 8, '2022-01-17 06:13:14', 'Yes', 'Right', 1, 'Yes', '00:00:19', '2022-01-17 00:13:03', '2022-01-17 00:13:14'),
(118, 40, 1, '2022-01-17 07:56:23', 'Yes', 'Right', 1, 'No', '00:00:03', '2022-01-17 01:56:15', '2022-01-17 01:56:23'),
(119, 40, 5, '2022-01-17 07:56:23', 'Yes', 'Skipped', 0, 'No', '00:02:00', '2022-01-17 01:56:15', '2022-01-17 01:56:25'),
(120, 40, 7, '2022-01-17 07:56:29', 'Yes', 'Right', 1, 'No', '00:00:05', '2022-01-17 01:56:15', '2022-01-17 01:56:29'),
(121, 40, 8, '2022-01-17 07:56:33', 'Yes', 'Right', 1, 'No', '00:00:05', '2022-01-17 01:56:15', '2022-01-17 01:56:33'),
(122, 40, 9, '2022-01-17 07:56:34', 'Yes', 'No Answer', 0, 'No', '00:02:00', '2022-01-17 01:56:15', '2022-01-17 01:56:34'),
(123, 41, 1, '2022-01-17 08:04:29', 'Yes', 'Right', 1, 'No', '00:00:03', '2022-01-17 02:04:23', '2022-01-17 02:04:29'),
(124, 41, 5, '2022-01-17 08:04:30', 'Yes', 'Skipped', 0, 'No', '00:02:00', '2022-01-17 02:04:23', '2022-01-17 02:04:32'),
(125, 41, 7, '2022-01-17 08:04:34', 'Yes', 'Right', 1, 'No', '00:00:02', '2022-01-17 02:04:23', '2022-01-17 02:04:34'),
(126, 41, 8, '2022-01-17 08:04:37', 'Yes', 'Right', 1, 'No', '00:00:04', '2022-01-17 02:04:23', '2022-01-17 02:04:37'),
(127, 41, 9, '2022-01-17 08:04:38', 'Yes', 'No Answer', 0, 'No', '00:02:00', '2022-01-17 02:04:23', '2022-01-17 02:04:38'),
(128, 42, 1, '2022-01-17 08:11:13', 'Yes', 'Right', 1, 'No', '00:00:02', '2022-01-17 02:11:06', '2022-01-17 02:11:13'),
(129, 42, 5, '2022-01-17 08:11:13', 'Yes', 'Skipped', 0, 'No', '00:02:00', '2022-01-17 02:11:06', '2022-01-17 02:11:15'),
(130, 42, 7, '2022-01-17 08:11:18', 'Yes', 'Right', 1, 'No', '00:00:03', '2022-01-17 02:11:06', '2022-01-17 02:11:18'),
(131, 42, 8, '2022-01-17 08:11:21', 'Yes', 'Right', 1, 'No', '00:00:05', '2022-01-17 02:11:06', '2022-01-17 02:11:21'),
(132, 42, 9, '2022-01-17 08:11:21', 'Yes', 'No Answer', 0, 'No', '00:02:00', '2022-01-17 02:11:06', '2022-01-17 02:11:21'),
(133, 43, 1, '2022-01-17 08:14:15', 'Yes', 'Right', 1, 'No', '00:00:05', '2022-01-17 02:14:03', '2022-01-17 02:14:15'),
(134, 43, 5, '2022-01-17 08:14:15', 'Yes', 'Skipped', 0, 'No', '00:02:00', '2022-01-17 02:14:03', '2022-01-17 02:14:18'),
(135, 43, 7, '2022-01-17 08:14:23', 'Yes', 'Right', 1, 'No', '00:00:07', '2022-01-17 02:14:03', '2022-01-17 02:14:23'),
(136, 43, 8, '2022-01-17 08:14:25', 'Yes', 'Right', 1, 'No', '00:00:03', '2022-01-17 02:14:03', '2022-01-17 02:14:25'),
(137, 43, 9, '2022-01-17 08:16:22', 'Yes', 'Right', 1, 'No', '00:03:46', '2022-01-17 02:14:03', '2022-01-17 02:16:22'),
(138, 44, 1, '2022-01-17 10:15:55', 'Yes', 'Right', 1, 'No', '00:00:02', '2022-01-17 04:15:48', '2022-01-17 04:15:55'),
(139, 44, 7, '2022-01-17 10:15:59', 'Yes', 'Right', 1, 'No', '00:00:03', '2022-01-17 04:15:48', '2022-01-17 04:15:59'),
(140, 44, 8, '2022-01-17 10:16:06', 'Yes', 'Right', 1, 'No', '00:00:06', '2022-01-17 04:15:48', '2022-01-17 04:16:06'),
(141, 44, 9, '2022-01-17 10:16:09', 'Yes', 'Right', 1, 'No', '00:00:01', '2022-01-17 04:15:48', '2022-01-17 04:16:09'),
(142, 45, 1, '2022-01-17 11:15:08', 'Yes', 'No Answer', 0, 'No', '00:02:00', '2022-01-17 05:15:02', '2022-01-17 05:15:08'),
(143, 45, 7, '2022-01-17 11:16:01', 'Yes', 'No Answer', 0, 'No', '00:02:00', '2022-01-17 05:15:02', '2022-01-17 05:16:01'),
(144, 45, 8, '2022-01-17 11:16:58', 'Yes', 'No Answer', 0, 'No', '00:02:00', '2022-01-17 05:15:02', '2022-01-17 05:16:58'),
(145, 45, 9, '2022-01-17 11:26:39', 'Yes', 'Right', 1, 'No', '00:00:25', '2022-01-17 05:15:02', '2022-01-17 05:26:39'),
(146, 46, 1, '2022-01-17 11:26:48', 'Yes', 'Right', 1, 'No', '00:00:02', '2022-01-17 05:26:42', '2022-01-17 05:26:48'),
(147, 46, 7, '2022-01-17 11:26:52', 'Yes', 'Right', 1, 'No', '00:00:02', '2022-01-17 05:26:42', '2022-01-17 05:26:52'),
(148, 46, 8, '2022-01-17 11:27:19', 'Yes', 'Right', 1, 'No', '00:00:25', '2022-01-17 05:26:42', '2022-01-17 05:27:19'),
(149, 46, 9, '2022-01-17 11:27:39', 'Yes', 'Right', 1, 'No', '00:00:19', '2022-01-17 05:26:42', '2022-01-17 05:27:39'),
(150, 47, 1, '2022-01-18 06:27:26', 'Yes', 'Right', 1, 'No', '00:00:02', '2022-01-18 00:27:19', '2022-01-18 00:27:26'),
(151, 47, 7, '2022-01-18 06:27:29', 'Yes', 'Right', 1, 'No', '00:00:02', '2022-01-18 00:27:19', '2022-01-18 00:27:29'),
(152, 47, 8, '2022-01-18 06:27:48', 'Yes', 'Right', 1, 'No', '00:00:18', '2022-01-18 00:27:19', '2022-01-18 00:27:48'),
(153, 47, 9, '2022-01-18 06:28:02', 'Yes', 'Right', 1, 'No', '00:00:13', '2022-01-18 00:27:19', '2022-01-18 00:28:02'),
(154, 47, 10, '2022-01-18 06:28:02', 'Yes', 'No Answer', 0, 'No', '00:02:00', '2022-01-18 00:27:19', '2022-01-18 00:28:02'),
(155, 48, 1, '2022-01-18 06:28:40', 'Yes', 'Right', 1, 'No', '00:00:03', '2022-01-18 00:28:34', '2022-01-18 00:28:40'),
(156, 48, 7, '2022-01-18 06:28:43', 'Yes', 'Right', 1, 'No', '00:00:02', '2022-01-18 00:28:34', '2022-01-18 00:28:43'),
(157, 48, 8, '2022-01-18 06:28:58', 'Yes', 'Right', 1, 'No', '00:00:14', '2022-01-18 00:28:34', '2022-01-18 00:28:58'),
(158, 48, 9, '2022-01-18 06:29:11', 'Yes', 'Wrong', 0, 'No', '00:00:12', '2022-01-18 00:28:34', '2022-01-18 00:29:11'),
(159, 48, 10, '2022-01-18 06:29:11', 'Yes', 'No Answer', 0, 'No', '00:02:00', '2022-01-18 00:28:34', '2022-01-18 00:29:11'),
(160, 48, 9, '2022-01-18 06:29:35', 'Yes', 'Right', 1, 'Yes', '00:00:19', '2022-01-18 00:29:15', '2022-01-18 00:29:35'),
(161, 49, 1, '2022-01-18 06:29:48', 'Yes', 'Right', 1, 'No', '00:00:02', '2022-01-18 00:29:42', '2022-01-18 00:29:48'),
(162, 49, 7, '2022-01-18 06:29:51', 'Yes', 'Right', 1, 'No', '00:00:01', '2022-01-18 00:29:42', '2022-01-18 00:29:51'),
(163, 49, 8, '2022-01-18 06:29:54', 'Yes', 'Wrong', 0, 'No', '00:00:02', '2022-01-18 00:29:42', '2022-01-18 00:29:54'),
(164, 49, 9, '2022-01-18 06:30:17', 'Yes', 'Right', 1, 'No', '00:00:08', '2022-01-18 00:29:42', '2022-01-18 00:30:17'),
(165, 49, 10, '2022-01-18 06:30:53', 'Yes', 'Wrong', 0, 'No', '00:00:34', '2022-01-18 00:29:42', '2022-01-18 00:30:53'),
(166, 49, 8, '2022-01-18 06:30:08', 'Yes', 'Right', 1, 'Yes', '00:00:11', '2022-01-18 00:29:55', '2022-01-18 00:30:08'),
(167, 49, 10, '2022-01-18 06:31:16', 'Yes', 'No Answer', 0, 'Yes', '00:02:00', '2022-01-18 00:31:15', '2022-01-18 00:31:16'),
(168, 50, 1, '2022-01-18 07:57:23', 'Yes', 'Right', 1, 'No', '00:00:02', '2022-01-18 01:57:17', '2022-01-18 01:57:23'),
(169, 50, 7, '2022-01-18 07:57:26', 'Yes', 'Right', 1, 'No', '00:00:01', '2022-01-18 01:57:17', '2022-01-18 01:57:26'),
(170, 50, 8, '2022-01-18 07:57:43', 'Yes', 'Right', 1, 'No', '00:00:16', '2022-01-18 01:57:17', '2022-01-18 01:57:43'),
(171, 50, 9, '2022-01-18 07:57:52', 'Yes', 'Right', 1, 'No', '00:00:08', '2022-01-18 01:57:17', '2022-01-18 01:57:52'),
(172, 50, 10, '2022-01-18 07:57:53', 'Yes', 'No Answer', 0, 'No', '00:02:00', '2022-01-18 01:57:17', '2022-01-18 01:57:53'),
(173, 51, 1, '2022-01-18 07:58:26', 'Yes', 'Right', 1, 'No', '00:00:02', '2022-01-18 01:58:20', '2022-01-18 01:58:26'),
(174, 51, 7, '2022-01-18 07:58:29', 'Yes', 'Right', 1, 'No', '00:00:02', '2022-01-18 01:58:20', '2022-01-18 01:58:29'),
(175, 51, 8, '2022-01-18 07:58:35', 'Yes', 'Right', 1, 'No', '00:00:05', '2022-01-18 01:58:20', '2022-01-18 01:58:35'),
(176, 51, 9, '2022-01-18 07:58:48', 'Yes', 'Right', 1, 'No', '00:00:12', '2022-01-18 01:58:20', '2022-01-18 01:58:48'),
(177, 51, 10, '2022-01-18 07:58:49', 'Yes', 'No Answer', 0, 'No', '00:02:00', '2022-01-18 01:58:20', '2022-01-18 01:58:49'),
(178, 52, 1, '2022-01-18 08:31:04', 'Yes', 'Right', 1, 'No', '00:00:02', '2022-01-18 02:30:58', '2022-01-18 02:31:04'),
(179, 52, 7, '2022-01-18 08:31:08', 'Yes', 'Right', 1, 'No', '00:00:02', '2022-01-18 02:30:58', '2022-01-18 02:31:08'),
(180, 52, 8, '2022-01-18 08:31:22', 'Yes', 'Right', 1, 'No', '00:00:13', '2022-01-18 02:30:58', '2022-01-18 02:31:22'),
(181, 52, 9, '2022-01-18 08:31:27', 'Yes', 'Right', 1, 'No', '00:00:04', '2022-01-18 02:30:58', '2022-01-18 02:31:27'),
(182, 52, 10, '2022-01-18 08:31:56', 'Yes', 'Right', 1, 'No', '00:00:28', '2022-01-18 02:30:58', '2022-01-18 02:31:56'),
(183, 53, 1, '2022-01-18 10:31:41', 'Yes', 'Right', 1, 'No', '00:00:02', '2022-01-18 04:31:36', '2022-01-18 04:31:41'),
(184, 53, 7, '2022-01-18 10:31:44', 'Yes', 'Right', 1, 'No', '00:00:01', '2022-01-18 04:31:36', '2022-01-18 04:31:44'),
(185, 53, 8, '2022-01-18 10:31:56', 'Yes', 'Right', 1, 'No', '00:00:11', '2022-01-18 04:31:36', '2022-01-18 04:31:56'),
(186, 53, 9, '2022-01-18 10:32:04', 'Yes', 'Right', 1, 'No', '00:00:07', '2022-01-18 04:31:36', '2022-01-18 04:32:04'),
(187, 53, 10, '2022-01-18 10:32:04', 'Yes', 'No Answer', 0, 'No', '00:02:00', '2022-01-18 04:31:36', '2022-01-18 04:32:04'),
(188, 54, 1, '2022-01-18 10:34:12', 'Yes', 'Right', 1, 'No', '00:00:02', '2022-01-18 04:34:07', '2022-01-18 04:34:12'),
(189, 54, 7, '2022-01-18 10:34:15', 'Yes', 'Right', 1, 'No', '00:00:01', '2022-01-18 04:34:07', '2022-01-18 04:34:15'),
(190, 54, 8, '2022-01-18 10:34:35', 'Yes', 'Right', 1, 'No', '00:00:19', '2022-01-18 04:34:07', '2022-01-18 04:34:35'),
(191, 54, 9, '2022-01-18 10:34:42', 'Yes', 'Right', 1, 'No', '00:00:05', '2022-01-18 04:34:07', '2022-01-18 04:34:42'),
(192, 54, 10, '2022-01-18 10:34:59', 'Yes', 'Right', 1, 'No', '00:00:16', '2022-01-18 04:34:07', '2022-01-18 04:34:59'),
(193, 55, 1, '2022-01-18 10:35:15', 'Yes', 'Right', 1, 'No', '00:00:02', '2022-01-18 04:35:09', '2022-01-18 04:35:15'),
(194, 55, 7, '2022-01-18 10:35:17', 'Yes', 'Right', 1, 'No', '00:00:01', '2022-01-18 04:35:09', '2022-01-18 04:35:17'),
(195, 55, 8, '2022-01-18 10:35:29', 'Yes', 'Right', 1, 'No', '00:00:11', '2022-01-18 04:35:09', '2022-01-18 04:35:29'),
(196, 55, 9, '2022-01-18 10:35:40', 'Yes', 'Right', 1, 'No', '00:00:10', '2022-01-18 04:35:09', '2022-01-18 04:35:40'),
(197, 55, 10, '2022-01-18 10:36:40', 'Yes', 'Wrong', 0, 'No', '00:00:58', '2022-01-18 04:35:09', '2022-01-18 04:36:40'),
(198, 55, 10, '2022-01-18 10:36:42', 'Yes', 'No Answer', 0, 'Yes', '00:02:00', '2022-01-18 04:36:41', '2022-01-18 04:36:42'),
(199, 56, 1, '2022-01-18 10:50:48', 'Yes', 'Right', 1, 'No', '00:00:02', '2022-01-18 04:50:41', '2022-01-18 04:50:48'),
(200, 56, 7, '2022-01-18 10:50:51', 'Yes', 'Right', 1, 'No', '00:00:02', '2022-01-18 04:50:41', '2022-01-18 04:50:51'),
(201, 56, 8, '2022-01-18 10:51:04', 'Yes', 'Right', 1, 'No', '00:00:11', '2022-01-18 04:50:41', '2022-01-18 04:51:04'),
(202, 56, 9, '2022-01-18 10:51:28', 'Yes', 'Right', 1, 'No', '00:00:23', '2022-01-18 04:50:41', '2022-01-18 04:51:28'),
(203, 56, 10, '2022-01-18 10:51:54', 'Yes', 'Wrong', 0, 'No', '00:00:25', '2022-01-18 04:50:41', '2022-01-18 04:51:54'),
(204, 56, 10, '2022-01-18 10:51:56', 'Yes', 'No Answer', 0, 'Yes', '00:02:00', '2022-01-18 04:51:56', '2022-01-18 04:51:56'),
(205, 57, 1, '2022-01-18 10:55:07', 'Yes', 'Right', 1, 'No', '00:00:03', '2022-01-18 04:55:00', '2022-01-18 04:55:07'),
(206, 57, 7, '2022-01-18 10:55:09', 'Yes', 'Right', 1, 'No', '00:00:01', '2022-01-18 04:55:00', '2022-01-18 04:55:09'),
(207, 57, 8, '2022-01-18 10:55:20', 'Yes', 'Right', 1, 'No', '00:00:10', '2022-01-18 04:55:00', '2022-01-18 04:55:20'),
(208, 57, 9, '2022-01-18 10:55:31', 'Yes', 'Right', 1, 'No', '00:00:09', '2022-01-18 04:55:00', '2022-01-18 04:55:31'),
(209, 57, 10, '2022-01-18 10:55:36', 'Yes', 'Wrong', 0, 'No', '00:00:09', '2022-01-18 04:55:00', '2022-01-18 04:55:36'),
(210, 57, 10, '2022-01-18 10:57:15', 'Yes', 'Right', 1, 'Yes', '00:00:07', '2022-01-18 04:55:41', '2022-01-18 04:57:15'),
(211, 57, 10, '2022-01-18 10:55:58', 'Yes', 'No Answer', 0, 'Yes', NULL, '2022-01-18 04:55:58', '2022-01-18 04:55:58'),
(212, 57, 10, '2022-01-18 10:56:01', 'Yes', 'No Answer', 0, 'Yes', NULL, '2022-01-18 04:56:01', '2022-01-18 04:56:01'),
(213, 57, 10, '2022-01-18 10:57:07', 'Yes', 'No Answer', 0, 'Yes', NULL, '2022-01-18 04:57:07', '2022-01-18 04:57:07'),
(214, 58, 1, '2022-01-18 11:24:06', 'Yes', 'No Answer', 0, 'No', '00:02:00', '2022-01-18 05:24:03', '2022-01-18 05:24:06'),
(215, 58, 7, '2022-01-18 11:24:09', 'Yes', 'No Answer', 0, 'No', '00:02:00', '2022-01-18 05:24:03', '2022-01-18 05:24:09'),
(216, 58, 8, NULL, 'No', 'No Answer', 0, 'No', NULL, '2022-01-18 05:24:03', '2022-01-18 05:24:03'),
(217, 58, 9, NULL, 'No', 'No Answer', 0, 'No', NULL, '2022-01-18 05:24:03', '2022-01-18 05:24:03'),
(218, 58, 10, NULL, 'No', 'No Answer', 0, 'No', NULL, '2022-01-18 05:24:03', '2022-01-18 05:24:03'),
(219, 59, 1, '2022-01-18 11:24:35', 'Yes', 'No Answer', 0, 'No', '00:02:00', '2022-01-18 05:24:32', '2022-01-18 05:24:35'),
(220, 59, 7, '2022-01-18 11:25:08', 'Yes', 'No Answer', 0, 'No', '00:02:00', '2022-01-18 05:24:32', '2022-01-18 05:25:08'),
(221, 59, 8, '2022-01-18 11:28:05', 'Yes', 'No Answer', 0, 'No', '00:02:00', '2022-01-18 05:24:32', '2022-01-18 05:28:05'),
(222, 59, 9, '2022-01-18 11:30:02', 'Yes', 'Right', 1, 'No', '00:00:33', '2022-01-18 05:24:32', '2022-01-18 05:30:02'),
(223, 59, 10, '2022-01-18 11:30:05', 'Yes', 'Wrong', 0, 'No', '00:00:02', '2022-01-18 05:24:32', '2022-01-18 05:30:05'),
(224, 59, 10, '2022-01-18 11:30:10', 'Yes', 'Right', 1, 'Yes', '00:00:02', '2022-01-18 05:30:06', '2022-01-18 05:30:10'),
(225, 60, 1, '2022-01-18 11:30:19', 'Yes', 'Right', 1, 'No', '00:00:02', '2022-01-18 05:30:13', '2022-01-18 05:30:19'),
(226, 60, 7, '2022-01-18 11:30:21', 'Yes', 'Right', 1, 'No', '00:00:01', '2022-01-18 05:30:13', '2022-01-18 05:30:21'),
(227, 60, 8, '2022-01-18 11:30:32', 'Yes', 'Right', 1, 'No', '00:00:09', '2022-01-18 05:30:13', '2022-01-18 05:30:32'),
(228, 60, 9, '2022-01-18 11:31:20', 'Yes', 'Right', 1, 'No', '00:00:42', '2022-01-18 05:30:13', '2022-01-18 05:31:20'),
(229, 60, 10, '2022-01-18 11:31:46', 'Yes', 'Right', 1, 'No', '00:00:25', '2022-01-18 05:30:13', '2022-01-18 05:31:46'),
(230, 61, 1, '2022-01-18 11:32:56', 'Yes', 'Right', 1, 'No', '00:00:02', '2022-01-18 05:32:51', '2022-01-18 05:32:56'),
(231, 61, 7, '2022-01-18 11:32:59', 'Yes', 'Right', 1, 'No', '00:00:01', '2022-01-18 05:32:51', '2022-01-18 05:32:59'),
(232, 61, 8, '2022-01-18 11:33:04', 'Yes', 'Right', 1, 'No', '00:00:04', '2022-01-18 05:32:51', '2022-01-18 05:33:04'),
(233, 61, 9, '2022-01-18 11:33:25', 'Yes', 'Right', 1, 'No', '00:00:19', '2022-01-18 05:32:51', '2022-01-18 05:33:25'),
(234, 61, 10, '2022-01-18 11:35:30', 'Yes', 'Right', 1, 'No', '00:02:00', '2022-01-18 05:32:51', '2022-01-18 05:35:30'),
(235, 62, 1, '2022-01-18 11:35:39', 'Yes', 'Right', 1, 'No', '00:00:02', '2022-01-18 05:35:33', '2022-01-18 05:35:39'),
(236, 62, 7, '2022-01-18 11:35:41', 'Yes', 'Right', 1, 'No', '00:00:01', '2022-01-18 05:35:33', '2022-01-18 05:35:41'),
(237, 62, 8, '2022-01-18 11:35:51', 'Yes', 'Right', 1, 'No', '00:00:08', '2022-01-18 05:35:33', '2022-01-18 05:35:51'),
(238, 62, 9, '2022-01-18 11:36:04', 'Yes', 'Right', 1, 'No', '00:00:12', '2022-01-18 05:35:33', '2022-01-18 05:36:04'),
(239, 62, 10, '2022-01-18 11:38:58', 'Yes', 'Right', 1, 'No', '00:02:29', '2022-01-18 05:35:33', '2022-01-18 05:38:58'),
(240, 63, 1, '2022-01-18 11:39:23', 'Yes', 'Right', 1, 'No', '00:00:02', '2022-01-18 05:39:17', '2022-01-18 05:39:23'),
(241, 63, 7, '2022-01-18 11:39:25', 'Yes', 'Right', 1, 'No', '00:00:01', '2022-01-18 05:39:17', '2022-01-18 05:39:25'),
(242, 63, 8, '2022-01-18 11:39:36', 'Yes', 'Right', 1, 'No', '00:00:10', '2022-01-18 05:39:17', '2022-01-18 05:39:36'),
(243, 63, 9, '2022-01-18 11:39:42', 'Yes', 'Right', 1, 'No', '00:00:04', '2022-01-18 05:39:17', '2022-01-18 05:39:42'),
(244, 63, 10, '2022-01-18 11:41:40', 'Yes', 'Right', 1, 'No', '00:01:10', '2022-01-18 05:39:17', '2022-01-18 05:41:40'),
(245, 64, 1, '2022-01-18 11:41:50', 'Yes', 'Right', 1, 'No', '00:00:02', '2022-01-18 05:41:43', '2022-01-18 05:41:50'),
(246, 64, 7, '2022-01-18 11:41:52', 'Yes', 'Right', 1, 'No', '00:00:02', '2022-01-18 05:41:43', '2022-01-18 05:41:52'),
(247, 64, 8, '2022-01-18 11:42:04', 'Yes', 'Right', 1, 'No', '00:00:10', '2022-01-18 05:41:43', '2022-01-18 05:42:04'),
(248, 64, 9, '2022-01-18 11:42:13', 'Yes', 'Right', 1, 'No', '00:00:08', '2022-01-18 05:41:43', '2022-01-18 05:42:13'),
(249, 64, 10, '2022-01-18 11:42:33', 'Yes', 'Right', 1, 'No', '00:00:19', '2022-01-18 05:41:43', '2022-01-18 05:42:33'),
(250, 65, 11, '2022-01-24 04:56:10', 'Yes', 'Right', 1, 'No', '00:00:09', '2022-01-23 22:56:00', '2022-01-23 22:56:10'),
(251, 65, 12, '2022-01-24 04:56:17', 'Yes', 'Right', 1, 'No', '00:00:05', '2022-01-23 22:56:00', '2022-01-23 22:56:17'),
(252, 65, 13, '2022-01-24 04:57:14', 'Yes', 'Right', 1, 'No', '00:00:54', '2022-01-23 22:56:00', '2022-01-23 22:57:14'),
(253, 65, 17, '2022-01-24 05:01:21', 'Yes', 'Right', 1, 'No', '00:04:04', '2022-01-23 22:56:00', '2022-01-23 23:01:21'),
(254, 65, 18, '2022-01-24 05:01:36', 'Yes', 'Right', 1, 'No', '00:00:14', '2022-01-23 22:56:00', '2022-01-23 23:01:36'),
(255, 65, 20, '2022-01-24 05:01:54', 'Yes', 'Right', 1, 'No', '00:00:17', '2022-01-23 22:56:00', '2022-01-23 23:01:54'),
(256, 65, 21, '2022-01-24 05:02:06', 'Yes', 'Right', 1, 'No', '00:00:10', '2022-01-23 22:56:00', '2022-01-23 23:02:06'),
(257, 66, 11, '2022-01-24 10:26:26', 'Yes', 'Right', 1, 'No', '00:00:09', '2022-01-24 04:26:13', '2022-01-24 04:26:26'),
(258, 66, 12, '2022-01-24 10:26:52', 'Yes', 'Right', 1, 'No', '00:00:23', '2022-01-24 04:26:13', '2022-01-24 04:26:52'),
(259, 66, 13, '2022-01-24 10:26:57', 'Yes', 'Right', 1, 'No', '00:00:04', '2022-01-24 04:26:13', '2022-01-24 04:26:57'),
(260, 66, 17, '2022-01-24 10:26:57', 'Yes', 'Skipped', 0, 'No', '00:02:00', '2022-01-24 04:26:13', '2022-01-24 04:27:17'),
(261, 66, 18, '2022-01-24 10:27:40', 'Yes', 'Right', 1, 'No', '00:00:43', '2022-01-24 04:26:13', '2022-01-24 04:27:40'),
(262, 66, 20, '2022-01-24 10:27:53', 'Yes', 'Right', 1, 'No', '00:00:24', '2022-01-24 04:26:13', '2022-01-24 04:27:53'),
(263, 66, 21, '2022-01-24 10:28:04', 'Yes', 'Right', 1, 'No', '00:00:21', '2022-01-24 04:26:13', '2022-01-24 04:28:04'),
(264, 66, 22, '2022-01-24 10:28:04', 'Yes', 'Skipped', 0, 'No', '00:02:00', '2022-01-24 04:26:13', '2022-01-24 04:28:07'),
(265, 66, 25, '2022-01-24 10:28:07', 'Yes', 'No Answer', 0, 'No', '00:02:00', '2022-01-24 04:26:13', '2022-01-24 04:28:07'),
(266, 67, 11, '2022-01-24 10:38:30', 'Yes', 'Right', 1, 'No', '00:00:02', '2022-01-24 04:38:24', '2022-01-24 04:38:30'),
(267, 67, 12, '2022-01-24 10:38:32', 'Yes', 'Right', 1, 'No', '00:00:01', '2022-01-24 04:38:24', '2022-01-24 04:38:32'),
(268, 67, 13, '2022-01-24 10:38:36', 'Yes', 'Right', 1, 'No', '00:00:02', '2022-01-24 04:38:24', '2022-01-24 04:38:36'),
(269, 67, 17, '2022-01-24 10:38:36', 'Yes', 'Skipped', 0, 'No', '00:02:00', '2022-01-24 04:38:24', '2022-01-24 04:38:40'),
(270, 67, 18, '2022-01-24 10:38:49', 'Yes', 'Right', 1, 'No', '00:00:17', '2022-01-24 04:38:24', '2022-01-24 04:38:49'),
(271, 67, 20, '2022-01-24 10:39:00', 'Yes', 'Right', 1, 'No', '00:00:18', '2022-01-24 04:38:24', '2022-01-24 04:39:00'),
(272, 67, 21, '2022-01-24 10:39:02', 'Yes', 'Wrong', 0, 'No', '00:00:04', '2022-01-24 04:38:24', '2022-01-24 04:39:02'),
(273, 67, 22, '2022-01-24 10:39:16', 'Yes', 'Skipped', 0, 'No', '00:02:00', '2022-01-24 04:38:24', '2022-01-24 04:39:18'),
(274, 67, 25, '2022-01-24 10:39:19', 'Yes', 'Skipped', 0, 'No', '00:02:00', '2022-01-24 04:38:24', '2022-01-24 04:43:15'),
(275, 67, 21, '2022-01-24 10:39:16', 'Yes', 'Right', 1, 'Yes', '00:00:22', '2022-01-24 04:39:03', '2022-01-24 04:39:16'),
(276, 68, 11, '2022-01-24 10:43:31', 'Yes', 'Right', 1, 'No', '00:00:02', '2022-01-24 04:43:25', '2022-01-24 04:43:31'),
(277, 68, 12, '2022-01-24 10:43:34', 'Yes', 'Right', 1, 'No', '00:00:01', '2022-01-24 04:43:25', '2022-01-24 04:43:34'),
(278, 68, 13, '2022-01-24 10:43:37', 'Yes', 'Right', 1, 'No', '00:00:02', '2022-01-24 04:43:25', '2022-01-24 04:43:37'),
(279, 68, 17, '2022-01-24 10:43:38', 'Yes', 'Skipped', 0, 'No', '00:02:00', '2022-01-24 04:43:25', '2022-01-24 04:43:41'),
(280, 68, 18, '2022-01-24 10:43:48', 'Yes', 'Right', 1, 'No', '00:00:12', '2022-01-24 04:43:25', '2022-01-24 04:43:48'),
(281, 68, 20, '2022-01-24 10:43:49', 'Yes', 'Skipped', 0, 'No', '00:02:00', '2022-01-24 04:43:25', '2022-01-24 04:43:52'),
(282, 68, 21, '2022-01-24 10:43:52', 'Yes', 'Skipped', 0, 'No', '00:02:00', '2022-01-24 04:43:25', '2022-01-24 04:43:54'),
(283, 68, 22, '2022-01-24 10:43:54', 'Yes', 'Skipped', 0, 'No', '00:02:00', '2022-01-24 04:43:25', '2022-01-24 04:43:59'),
(284, 68, 25, '2022-01-24 10:43:59', 'Yes', 'No Answer', 0, 'No', '00:02:00', '2022-01-24 04:43:25', '2022-01-24 04:43:59'),
(285, 69, 11, '2022-01-24 10:50:14', 'Yes', 'Right', 1, 'No', '00:00:02', '2022-01-24 04:50:08', '2022-01-24 04:50:14'),
(286, 69, 12, '2022-01-24 10:50:16', 'Yes', 'Right', 1, 'No', '00:00:01', '2022-01-24 04:50:08', '2022-01-24 04:50:16'),
(287, 69, 13, '2022-01-24 10:50:20', 'Yes', 'Right', 1, 'No', '00:00:02', '2022-01-24 04:50:08', '2022-01-24 04:50:20'),
(288, 69, 17, '2022-01-24 10:50:20', 'Yes', 'Skipped', 0, 'No', '00:02:00', '2022-01-24 04:50:08', '2022-01-24 04:50:22'),
(289, 69, 18, '2022-01-24 10:50:31', 'Yes', 'Right', 1, 'No', '00:00:17', '2022-01-24 04:50:08', '2022-01-24 04:50:31'),
(290, 69, 20, '2022-01-24 10:50:41', 'Yes', 'Right', 1, 'No', '00:00:17', '2022-01-24 04:50:08', '2022-01-24 04:50:41'),
(291, 69, 21, '2022-01-24 10:50:52', 'Yes', 'Right', 1, 'No', '00:00:20', '2022-01-24 04:50:08', '2022-01-24 04:50:52'),
(292, 69, 22, '2022-01-24 10:50:52', 'Yes', 'Skipped', 0, 'No', '00:02:00', '2022-01-24 04:50:08', '2022-01-24 04:51:57'),
(293, 69, 25, '2022-01-24 10:51:58', 'Yes', 'No Answer', 0, 'No', '00:02:00', '2022-01-24 04:50:08', '2022-01-24 04:51:58'),
(294, 70, 11, '2022-01-24 10:52:47', 'Yes', 'Right', 1, 'No', '00:00:02', '2022-01-24 04:52:41', '2022-01-24 04:52:47'),
(295, 70, 12, '2022-01-24 10:52:50', 'Yes', 'Right', 1, 'No', '00:00:01', '2022-01-24 04:52:41', '2022-01-24 04:52:50'),
(296, 70, 13, '2022-01-24 10:52:53', 'Yes', 'Right', 1, 'No', '00:00:02', '2022-01-24 04:52:41', '2022-01-24 04:52:53'),
(297, 70, 17, '2022-01-24 10:52:53', 'Yes', 'Skipped', 0, 'No', '00:02:00', '2022-01-24 04:52:41', '2022-01-24 04:52:55'),
(298, 70, 18, '2022-01-24 10:53:04', 'Yes', 'Right', 1, 'No', '00:00:16', '2022-01-24 04:52:41', '2022-01-24 04:53:04'),
(299, 70, 20, '2022-01-24 10:53:05', 'Yes', 'Skipped', 0, 'No', '00:02:00', '2022-01-24 04:52:41', '2022-01-24 04:53:08'),
(300, 70, 21, '2022-01-24 10:53:08', 'Yes', 'Skipped', 0, 'No', '00:02:00', '2022-01-24 04:52:41', '2022-01-24 04:53:09'),
(301, 70, 22, '2022-01-24 10:53:09', 'Yes', 'Skipped', 0, 'No', '00:02:00', '2022-01-24 04:52:41', '2022-01-24 04:54:22'),
(302, 70, 25, '2022-01-24 10:54:22', 'Yes', 'No Answer', 0, 'No', '00:02:00', '2022-01-24 04:52:41', '2022-01-24 04:54:22'),
(303, 71, 11, '2022-01-25 04:17:34', 'Yes', 'Right', 1, 'No', '00:00:03', '2022-01-24 22:17:27', '2022-01-24 22:17:34'),
(304, 71, 12, '2022-01-25 04:17:38', 'Yes', 'Right', 1, 'No', '00:00:03', '2022-01-24 22:17:27', '2022-01-24 22:17:38'),
(305, 71, 13, '2022-01-25 04:17:42', 'Yes', 'Right', 1, 'No', '00:00:03', '2022-01-24 22:17:27', '2022-01-24 22:17:42'),
(306, 71, 17, '2022-01-25 04:17:42', 'Yes', 'Skipped', 0, 'No', '00:02:00', '2022-01-24 22:17:27', '2022-01-24 22:17:50'),
(307, 71, 18, '2022-01-25 04:19:18', 'Yes', 'Right', 1, 'No', '00:02:52', '2022-01-24 22:17:27', '2022-01-24 22:19:18'),
(308, 71, 20, '2022-01-25 04:19:29', 'Yes', 'Right', 1, 'No', '00:00:20', '2022-01-24 22:17:27', '2022-01-24 22:19:29'),
(309, 71, 21, '2022-01-25 04:19:38', 'Yes', 'Right', 1, 'No', '00:00:16', '2022-01-24 22:17:27', '2022-01-24 22:19:38'),
(310, 71, 22, '2022-01-25 04:19:39', 'Yes', 'No Answer', 0, 'No', '00:02:00', '2022-01-24 22:17:27', '2022-01-24 22:19:39'),
(311, 71, 25, NULL, 'No', 'No Answer', 0, 'No', NULL, '2022-01-24 22:17:27', '2022-01-24 22:17:27'),
(312, 72, 11, '2022-01-25 05:21:23', 'Yes', 'Right', 1, 'No', '00:00:03', '2022-01-24 23:21:17', '2022-01-24 23:21:23'),
(313, 72, 12, '2022-01-25 05:21:26', 'Yes', 'Right', 1, 'No', '00:00:02', '2022-01-24 23:21:17', '2022-01-24 23:21:26'),
(314, 72, 13, '2022-01-25 05:21:30', 'Yes', 'Right', 1, 'No', '00:00:02', '2022-01-24 23:21:17', '2022-01-24 23:21:30'),
(315, 72, 17, '2022-01-25 05:21:30', 'Yes', 'Skipped', 0, 'No', '00:02:00', '2022-01-24 23:21:17', '2022-01-24 23:21:32'),
(316, 72, 18, '2022-01-25 05:21:41', 'Yes', 'Right', 1, 'No', '00:00:15', '2022-01-24 23:21:17', '2022-01-24 23:21:41'),
(317, 72, 20, '2022-01-25 05:21:46', 'Yes', 'Right', 1, 'No', '00:00:07', '2022-01-24 23:21:17', '2022-01-24 23:21:46'),
(318, 72, 21, '2022-01-25 05:21:54', 'Yes', 'Right', 1, 'No', '00:00:14', '2022-01-24 23:21:17', '2022-01-24 23:21:54'),
(319, 72, 22, '2022-01-25 05:21:54', 'Yes', 'No Answer', 0, 'No', '00:02:00', '2022-01-24 23:21:17', '2022-01-24 23:21:54'),
(320, 72, 25, NULL, 'No', 'No Answer', 0, 'No', NULL, '2022-01-24 23:21:17', '2022-01-24 23:21:17'),
(321, 73, 11, '2022-01-25 05:55:32', 'Yes', 'Right', 1, 'No', '00:00:02', '2022-01-24 23:54:49', '2022-01-24 23:55:32'),
(322, 73, 12, '2022-01-25 05:55:34', 'Yes', 'Right', 1, 'No', '00:00:01', '2022-01-24 23:54:49', '2022-01-24 23:55:34'),
(323, 73, 13, '2022-01-25 05:55:38', 'Yes', 'Right', 1, 'No', '00:00:02', '2022-01-24 23:54:49', '2022-01-24 23:55:38'),
(324, 73, 17, '2022-01-25 05:55:38', 'Yes', 'Skipped', 0, 'No', '00:02:00', '2022-01-24 23:54:49', '2022-01-24 23:55:40'),
(325, 73, 18, '2022-01-25 05:55:54', 'Yes', 'Right', 1, 'No', '00:00:22', '2022-01-24 23:54:49', '2022-01-24 23:55:54'),
(326, 73, 20, '2022-01-25 05:56:07', 'Yes', 'Right', 1, 'No', '00:00:15', '2022-01-24 23:54:49', '2022-01-24 23:56:07'),
(327, 73, 21, '2022-01-25 05:56:16', 'Yes', 'Right', 1, 'No', '00:00:14', '2022-01-24 23:54:49', '2022-01-24 23:56:16'),
(328, 73, 22, '2022-01-25 05:56:21', 'Yes', 'Right', 1, 'No', '00:00:07', '2022-01-24 23:54:49', '2022-01-24 23:56:21'),
(329, 73, 25, '2022-01-25 05:56:25', 'Yes', 'Wrong', 0, 'No', '00:00:08', '2022-01-24 23:54:49', '2022-01-24 23:56:25'),
(330, 73, 25, '2022-01-25 05:57:35', 'Yes', 'Right', 1, 'Yes', '00:00:04', '2022-01-24 23:57:32', '2022-01-24 23:57:35'),
(331, 74, 11, '2022-01-25 10:12:49', 'Yes', 'Right', 1, 'No', '00:00:02', '2022-01-25 04:12:42', '2022-01-25 04:12:49'),
(332, 74, 12, '2022-01-25 10:12:51', 'Yes', 'Right', 1, 'No', '00:00:01', '2022-01-25 04:12:42', '2022-01-25 04:12:51'),
(333, 74, 13, '2022-01-25 10:12:54', 'Yes', 'Right', 1, 'No', '00:00:02', '2022-01-25 04:12:42', '2022-01-25 04:12:54'),
(334, 74, 17, '2022-01-25 10:12:55', 'Yes', 'Skipped', 0, 'No', '00:02:00', '2022-01-25 04:12:42', '2022-01-25 04:12:57'),
(335, 74, 18, '2022-01-25 10:13:05', 'Yes', 'Right', 1, 'No', '00:00:15', '2022-01-25 04:12:42', '2022-01-25 04:13:05'),
(336, 74, 20, '2022-01-25 10:13:14', 'Yes', 'Right', 1, 'No', '00:00:15', '2022-01-25 04:12:42', '2022-01-25 04:13:14'),
(337, 74, 21, '2022-01-25 10:13:21', 'Yes', 'Right', 1, 'No', '00:00:12', '2022-01-25 04:12:42', '2022-01-25 04:13:21'),
(338, 74, 22, '2022-01-25 10:13:28', 'Yes', 'Right', 1, 'No', '00:00:12', '2022-01-25 04:12:42', '2022-01-25 04:13:28'),
(339, 74, 25, '2022-01-25 10:13:32', 'Yes', 'Right', 1, 'No', '00:00:07', '2022-01-25 04:12:42', '2022-01-25 04:13:32'),
(340, 74, 26, '2022-01-25 10:13:33', 'Yes', 'Skipped', 0, 'No', '00:02:00', '2022-01-25 04:12:42', '2022-01-25 04:13:37'),
(341, 74, 30, '2022-01-25 10:13:37', 'Yes', 'Skipped', 0, 'No', '00:02:00', '2022-01-25 04:12:42', '2022-01-25 04:13:40'),
(342, 74, 36, '2022-01-25 10:14:01', 'Yes', 'Wrong', 0, 'No', '00:01:18', '2022-01-25 04:12:42', '2022-01-25 04:14:01'),
(343, 74, 37, '2022-01-25 10:14:05', 'Yes', 'No Answer', 0, 'No', '00:02:00', '2022-01-25 04:12:42', '2022-01-25 04:14:05'),
(344, 75, 11, '2022-01-25 11:30:47', 'Yes', 'Right', 1, 'No', '00:00:03', '2022-01-25 05:30:40', '2022-01-25 05:30:47'),
(345, 75, 12, '2022-01-25 11:30:50', 'Yes', 'Right', 1, 'No', '00:00:02', '2022-01-25 05:30:40', '2022-01-25 05:30:50'),
(346, 75, 13, '2022-01-25 11:30:53', 'Yes', 'Right', 1, 'No', '00:00:02', '2022-01-25 05:30:40', '2022-01-25 05:30:53'),
(347, 75, 17, '2022-01-25 11:30:53', 'Yes', 'Skipped', 0, 'No', '00:02:00', '2022-01-25 05:30:40', '2022-01-25 05:31:24'),
(348, 75, 18, '2022-01-25 11:31:32', 'Yes', 'Right', 1, 'No', '00:00:13', '2022-01-25 05:30:40', '2022-01-25 05:31:32'),
(349, 75, 20, '2022-01-25 11:31:39', 'Yes', 'Right', 1, 'No', '00:00:12', '2022-01-25 05:30:40', '2022-01-25 05:31:39'),
(350, 75, 21, '2022-01-25 11:32:01', 'Yes', 'Right', 1, 'No', '00:00:41', '2022-01-25 05:30:40', '2022-01-25 05:32:01'),
(351, 75, 22, '2022-01-25 11:32:01', 'Yes', 'Skipped', 0, 'No', '00:02:00', '2022-01-25 05:30:40', '2022-01-25 05:32:12'),
(352, 75, 25, '2022-01-25 11:32:13', 'Yes', 'Skipped', 0, 'No', '00:02:00', '2022-01-25 05:30:40', '2022-01-25 05:32:14'),
(353, 75, 26, '2022-01-25 11:32:15', 'Yes', 'Skipped', 0, 'No', '00:02:00', '2022-01-25 05:30:40', '2022-01-25 05:32:17'),
(354, 75, 30, '2022-01-25 11:32:17', 'Yes', 'Skipped', 0, 'No', '00:02:00', '2022-01-25 05:30:40', '2022-01-25 05:32:18'),
(355, 75, 36, '2022-01-25 11:32:18', 'Yes', 'Skipped', 0, 'No', '00:02:00', '2022-01-25 05:30:40', '2022-01-25 05:32:20'),
(356, 75, 37, '2022-01-25 11:32:29', 'Yes', 'Wrong', 0, 'No', '00:01:00', '2022-01-25 05:30:40', '2022-01-25 05:32:29'),
(357, 75, 37, '2022-01-25 11:32:34', 'Yes', 'Right', 1, 'Yes', '00:00:17', '2022-01-25 05:32:31', '2022-01-25 05:32:34'),
(358, 76, 11, '2022-01-26 04:28:51', 'Yes', 'Right', 1, 'No', '00:00:02', '2022-01-25 22:28:45', '2022-01-25 22:28:51'),
(359, 76, 12, '2022-01-26 04:28:53', 'Yes', 'Right', 1, 'No', '00:00:02', '2022-01-25 22:28:45', '2022-01-25 22:28:53'),
(360, 76, 13, '2022-01-26 04:28:57', 'Yes', 'Right', 1, 'No', '00:00:03', '2022-01-25 22:28:45', '2022-01-25 22:28:57'),
(361, 76, 17, '2022-01-26 04:29:44', 'Yes', 'Right', 1, 'No', '00:00:45', '2022-01-25 22:28:45', '2022-01-25 22:29:44'),
(362, 76, 18, '2022-01-26 04:29:52', 'Yes', 'Right', 1, 'No', '00:00:07', '2022-01-25 22:28:45', '2022-01-25 22:29:52'),
(363, 76, 20, '2022-01-26 04:30:02', 'Yes', 'Right', 1, 'No', '00:00:09', '2022-01-25 22:28:45', '2022-01-25 22:30:02'),
(364, 76, 21, '2022-01-26 04:30:09', 'Yes', 'Right', 1, 'No', '00:00:06', '2022-01-25 22:28:45', '2022-01-25 22:30:09'),
(365, 76, 22, '2022-01-26 04:30:10', 'Yes', 'Skipped', 0, 'No', '00:02:00', '2022-01-25 22:28:45', '2022-01-25 22:30:14'),
(366, 76, 25, '2022-01-26 04:30:14', 'Yes', 'Skipped', 0, 'No', '00:02:00', '2022-01-25 22:28:45', '2022-01-25 22:30:17'),
(367, 76, 26, '2022-01-26 04:30:17', 'Yes', 'Skipped', 0, 'No', '00:02:00', '2022-01-25 22:28:45', '2022-01-25 22:30:20'),
(368, 76, 30, '2022-01-26 04:30:20', 'Yes', 'Skipped', 0, 'No', '00:02:00', '2022-01-25 22:28:45', '2022-01-25 22:30:22'),
(369, 76, 36, '2022-01-26 04:30:22', 'Yes', 'Skipped', 0, 'No', '00:02:00', '2022-01-25 22:28:45', '2022-01-25 22:30:25'),
(370, 76, 37, '2022-01-26 04:30:25', 'Yes', 'No Answer', 0, 'No', '00:02:00', '2022-01-25 22:28:45', '2022-01-25 22:30:25'),
(371, 77, 11, '2022-01-26 05:19:00', 'Yes', 'Right', 1, 'No', '00:00:03', '2022-01-25 23:18:54', '2022-01-25 23:19:00'),
(372, 77, 12, '2022-01-26 05:19:03', 'Yes', 'Right', 1, 'No', '00:00:01', '2022-01-25 23:18:54', '2022-01-25 23:19:03'),
(373, 77, 13, '2022-01-26 05:19:06', 'Yes', 'Right', 1, 'No', '00:00:02', '2022-01-25 23:18:54', '2022-01-25 23:19:06'),
(374, 77, 17, '2022-01-26 05:19:13', 'Yes', 'Right', 1, 'No', '00:00:05', '2022-01-25 23:18:54', '2022-01-25 23:19:13'),
(375, 77, 18, '2022-01-26 05:19:20', 'Yes', 'Right', 1, 'No', '00:00:05', '2022-01-25 23:18:54', '2022-01-25 23:19:20'),
(376, 77, 20, '2022-01-26 05:19:29', 'Yes', 'Right', 1, 'No', '00:00:08', '2022-01-25 23:18:54', '2022-01-25 23:19:29'),
(377, 77, 21, '2022-01-26 05:19:37', 'Yes', 'Right', 1, 'No', '00:00:06', '2022-01-25 23:18:54', '2022-01-25 23:19:37'),
(378, 77, 22, '2022-01-26 05:19:37', 'Yes', 'Skipped', 0, 'No', '00:02:00', '2022-01-25 23:18:54', '2022-01-25 23:19:39'),
(379, 77, 25, '2022-01-26 05:19:40', 'Yes', 'Skipped', 0, 'No', '00:02:00', '2022-01-25 23:18:54', '2022-01-25 23:19:41'),
(380, 77, 26, '2022-01-26 05:19:41', 'Yes', 'Skipped', 0, 'No', '00:02:00', '2022-01-25 23:18:54', '2022-01-25 23:19:43'),
(381, 77, 30, '2022-01-26 05:19:43', 'Yes', 'Skipped', 0, 'No', '00:02:00', '2022-01-25 23:18:54', '2022-01-25 23:19:46'),
(382, 77, 36, '2022-01-26 05:19:46', 'Yes', 'Skipped', 0, 'No', '00:02:00', '2022-01-25 23:18:54', '2022-01-25 23:19:49'),
(383, 77, 37, '2022-01-26 05:20:11', 'Yes', 'Right', 1, 'No', '00:02:07', '2022-01-25 23:18:54', '2022-01-25 23:20:11'),
(384, 78, 11, '2022-01-26 05:25:19', 'Yes', 'Right', 1, 'No', '00:00:02', '2022-01-25 23:25:13', '2022-01-25 23:25:19'),
(385, 78, 12, '2022-01-26 05:25:22', 'Yes', 'Right', 1, 'No', '00:00:02', '2022-01-25 23:25:13', '2022-01-25 23:25:22'),
(386, 78, 13, '2022-01-26 05:25:25', 'Yes', 'Right', 1, 'No', '00:00:02', '2022-01-25 23:25:13', '2022-01-25 23:25:25'),
(387, 78, 17, '2022-01-26 05:25:31', 'Yes', 'Right', 1, 'No', '00:00:05', '2022-01-25 23:25:13', '2022-01-25 23:25:31'),
(388, 78, 18, '2022-01-26 05:25:37', 'Yes', 'Right', 1, 'No', '00:00:04', '2022-01-25 23:25:13', '2022-01-25 23:25:37'),
(389, 78, 20, '2022-01-26 05:25:46', 'Yes', 'Right', 1, 'No', '00:00:08', '2022-01-25 23:25:13', '2022-01-25 23:25:46'),
(390, 78, 21, '2022-01-26 05:25:57', 'Yes', 'Right', 1, 'No', '00:00:09', '2022-01-25 23:25:13', '2022-01-25 23:25:57'),
(391, 78, 22, '2022-01-26 05:25:58', 'Yes', 'Skipped', 0, 'No', '00:02:00', '2022-01-25 23:25:13', '2022-01-25 23:26:10'),
(392, 78, 25, '2022-01-26 05:26:11', 'Yes', 'Skipped', 0, 'No', '00:02:00', '2022-01-25 23:25:13', '2022-01-25 23:26:13'),
(393, 78, 26, '2022-01-26 05:26:13', 'Yes', 'Skipped', 0, 'No', '00:02:00', '2022-01-25 23:25:13', '2022-01-25 23:26:15'),
(394, 78, 30, '2022-01-26 05:26:15', 'Yes', 'Skipped', 0, 'No', '00:02:00', '2022-01-25 23:25:13', '2022-01-25 23:26:17'),
(395, 78, 36, '2022-01-26 05:26:18', 'Yes', 'Skipped', 0, 'No', '00:02:00', '2022-01-25 23:25:13', '2022-01-25 23:26:20'),
(396, 78, 37, '2022-01-26 05:27:42', 'Yes', 'Right', 1, 'No', '00:07:55', '2022-01-25 23:25:13', '2022-01-25 23:27:42'),
(397, 79, 11, '2022-01-26 05:27:56', 'Yes', 'Right', 1, 'No', '00:00:02', '2022-01-25 23:27:50', '2022-01-25 23:27:56'),
(398, 79, 12, '2022-01-26 05:27:58', 'Yes', 'Right', 1, 'No', '00:00:01', '2022-01-25 23:27:50', '2022-01-25 23:27:58'),
(399, 79, 13, '2022-01-26 05:28:01', 'Yes', 'Right', 1, 'No', '00:00:02', '2022-01-25 23:27:50', '2022-01-25 23:28:01'),
(400, 79, 17, '2022-01-26 05:28:06', 'Yes', 'Right', 1, 'No', '00:00:04', '2022-01-25 23:27:50', '2022-01-25 23:28:06'),
(401, 79, 18, '2022-01-26 05:28:12', 'Yes', 'Right', 1, 'No', '00:00:05', '2022-01-25 23:27:50', '2022-01-25 23:28:12'),
(402, 79, 20, '2022-01-26 05:28:21', 'Yes', 'Right', 1, 'No', '00:00:08', '2022-01-25 23:27:50', '2022-01-25 23:28:21'),
(403, 79, 21, '2022-01-26 05:28:29', 'Yes', 'Right', 1, 'No', '00:00:07', '2022-01-25 23:27:50', '2022-01-25 23:28:29'),
(404, 79, 22, '2022-01-26 05:28:30', 'Yes', 'Skipped', 0, 'No', '00:02:00', '2022-01-25 23:27:50', '2022-01-25 23:28:31'),
(405, 79, 25, '2022-01-26 05:28:32', 'Yes', 'Skipped', 0, 'No', '00:02:00', '2022-01-25 23:27:50', '2022-01-25 23:28:33'),
(406, 79, 26, '2022-01-26 05:28:34', 'Yes', 'Skipped', 0, 'No', '00:02:00', '2022-01-25 23:27:50', '2022-01-25 23:28:35'),
(407, 79, 30, '2022-01-26 05:28:35', 'Yes', 'Skipped', 0, 'No', '00:02:00', '2022-01-25 23:27:50', '2022-01-25 23:28:37'),
(408, 79, 36, '2022-01-26 05:28:37', 'Yes', 'Skipped', 0, 'No', '00:02:00', '2022-01-25 23:27:50', '2022-01-25 23:28:40'),
(409, 79, 37, '2022-01-26 05:29:30', 'Yes', 'Right', 1, 'No', '00:04:57', '2022-01-25 23:27:50', '2022-01-25 23:29:30'),
(410, 80, 11, '2022-01-26 05:39:04', 'Yes', 'Right', 1, 'No', '00:00:02', '2022-01-25 23:38:58', '2022-01-25 23:39:04'),
(411, 80, 12, '2022-01-26 05:39:07', 'Yes', 'Right', 1, 'No', '00:00:01', '2022-01-25 23:38:58', '2022-01-25 23:39:07'),
(412, 80, 13, '2022-01-26 05:39:11', 'Yes', 'Right', 1, 'No', '00:00:02', '2022-01-25 23:38:58', '2022-01-25 23:39:11'),
(413, 80, 17, '2022-01-26 05:39:15', 'Yes', 'Right', 1, 'No', '00:00:04', '2022-01-25 23:38:58', '2022-01-25 23:39:15'),
(414, 80, 18, '2022-01-26 05:39:24', 'Yes', 'Right', 1, 'No', '00:00:07', '2022-01-25 23:38:58', '2022-01-25 23:39:24'),
(415, 80, 20, '2022-01-26 05:39:35', 'Yes', 'Right', 1, 'No', '00:00:10', '2022-01-25 23:38:58', '2022-01-25 23:39:35'),
(416, 80, 21, '2022-01-26 05:39:46', 'Yes', 'Right', 1, 'No', '00:00:09', '2022-01-25 23:38:58', '2022-01-25 23:39:46'),
(417, 80, 22, '2022-01-26 05:39:46', 'Yes', 'Skipped', 0, 'No', '00:02:00', '2022-01-25 23:38:58', '2022-01-25 23:39:48'),
(418, 80, 25, '2022-01-26 05:39:48', 'Yes', 'Skipped', 0, 'No', '00:02:00', '2022-01-25 23:38:58', '2022-01-25 23:39:50'),
(419, 80, 26, '2022-01-26 05:39:50', 'Yes', 'Skipped', 0, 'No', '00:02:00', '2022-01-25 23:38:58', '2022-01-25 23:39:52');
INSERT INTO `quiz_answers` (`id`, `quiz_student_id`, `question_id`, `answer_date`, `answered`, `answer`, `mark`, `retake`, `time_duration`, `created_at`, `updated_at`) VALUES
(420, 80, 30, '2022-01-26 05:39:52', 'Yes', 'Skipped', 0, 'No', '00:02:00', '2022-01-25 23:38:58', '2022-01-25 23:39:53'),
(421, 80, 36, '2022-01-26 05:39:53', 'Yes', 'Skipped', 0, 'No', '00:02:00', '2022-01-25 23:38:58', '2022-01-25 23:39:56'),
(422, 80, 37, '2022-01-26 05:40:03', 'Yes', 'Right', 1, 'No', '00:00:39', '2022-01-25 23:38:58', '2022-01-25 23:40:03'),
(423, 81, 11, '2022-01-26 05:46:59', 'Yes', 'Right', 1, 'No', '00:00:02', '2022-01-25 23:46:52', '2022-01-25 23:46:59'),
(424, 81, 12, '2022-01-26 05:47:01', 'Yes', 'Right', 1, 'No', '00:00:01', '2022-01-25 23:46:52', '2022-01-25 23:47:01'),
(425, 81, 13, '2022-01-26 05:47:04', 'Yes', 'Right', 1, 'No', '00:00:02', '2022-01-25 23:46:52', '2022-01-25 23:47:04'),
(426, 81, 17, '2022-01-26 05:47:11', 'Yes', 'Right', 1, 'No', '00:00:05', '2022-01-25 23:46:52', '2022-01-25 23:47:11'),
(427, 81, 18, '2022-01-26 05:47:19', 'Yes', 'Right', 1, 'No', '00:00:07', '2022-01-25 23:46:52', '2022-01-25 23:47:19'),
(428, 81, 20, '2022-01-26 05:47:29', 'Yes', 'Right', 1, 'No', '00:00:09', '2022-01-25 23:46:52', '2022-01-25 23:47:29'),
(429, 81, 21, '2022-01-26 05:47:39', 'Yes', 'Right', 1, 'No', '00:00:09', '2022-01-25 23:46:52', '2022-01-25 23:47:39'),
(430, 81, 22, '2022-01-26 05:47:40', 'Yes', 'Skipped', 0, 'No', '00:02:00', '2022-01-25 23:46:52', '2022-01-25 23:47:42'),
(431, 81, 25, '2022-01-26 05:47:42', 'Yes', 'Skipped', 0, 'No', '00:02:00', '2022-01-25 23:46:52', '2022-01-25 23:47:43'),
(432, 81, 26, '2022-01-26 05:47:44', 'Yes', 'Skipped', 0, 'No', '00:02:00', '2022-01-25 23:46:52', '2022-01-25 23:47:45'),
(433, 81, 30, '2022-01-26 05:47:45', 'Yes', 'Skipped', 0, 'No', '00:02:00', '2022-01-25 23:46:52', '2022-01-25 23:47:47'),
(434, 81, 36, '2022-01-26 05:47:47', 'Yes', 'Skipped', 0, 'No', '00:02:00', '2022-01-25 23:46:52', '2022-01-25 23:47:48'),
(435, 81, 37, '2022-01-26 05:47:53', 'Yes', 'Right', 1, 'No', '00:00:27', '2022-01-25 23:46:52', '2022-01-25 23:47:53'),
(436, 82, 11, '2022-01-26 06:39:41', 'Yes', 'Right', 1, 'No', '00:00:02', '2022-01-26 00:39:34', '2022-01-26 00:39:41'),
(437, 82, 12, '2022-01-26 06:39:41', 'Yes', 'Skipped', 0, 'No', '00:02:00', '2022-01-26 00:39:34', '2022-01-26 00:39:43'),
(438, 82, 13, '2022-01-26 06:39:43', 'Yes', 'Skipped', 0, 'No', '00:02:00', '2022-01-26 00:39:34', '2022-01-26 00:39:46'),
(439, 82, 17, '2022-01-26 06:39:46', 'Yes', 'Skipped', 0, 'No', '00:02:00', '2022-01-26 00:39:34', '2022-01-26 00:39:48'),
(440, 82, 18, '2022-01-26 06:39:48', 'Yes', 'Skipped', 0, 'No', '00:02:00', '2022-01-26 00:39:34', '2022-01-26 00:39:50'),
(441, 82, 20, '2022-01-26 06:39:51', 'Yes', 'Skipped', 0, 'No', '00:02:00', '2022-01-26 00:39:34', '2022-01-26 00:39:52'),
(442, 82, 21, '2022-01-26 06:39:52', 'Yes', 'Skipped', 0, 'No', '00:02:00', '2022-01-26 00:39:34', '2022-01-26 00:39:54'),
(443, 82, 22, '2022-01-26 06:39:54', 'Yes', 'Skipped', 0, 'No', '00:02:00', '2022-01-26 00:39:34', '2022-01-26 00:39:56'),
(444, 82, 25, '2022-01-26 06:39:56', 'Yes', 'Skipped', 0, 'No', '00:02:00', '2022-01-26 00:39:34', '2022-01-26 00:39:58'),
(445, 82, 26, '2022-01-26 06:39:59', 'Yes', 'Skipped', 0, 'No', '00:02:00', '2022-01-26 00:39:34', '2022-01-26 00:40:00'),
(446, 82, 30, '2022-01-26 06:40:01', 'Yes', 'Skipped', 0, 'No', '00:02:00', '2022-01-26 00:39:34', '2022-01-26 00:40:02'),
(447, 82, 36, '2022-01-26 06:40:03', 'Yes', 'Skipped', 0, 'No', '00:02:00', '2022-01-26 00:39:34', '2022-01-26 00:40:10'),
(448, 82, 37, '2022-01-26 06:40:11', 'Yes', 'No Answer', 0, 'No', '00:02:00', '2022-01-26 00:39:34', '2022-01-26 00:40:11'),
(449, 83, 11, '2022-01-26 07:14:21', 'Yes', 'Right', 1, 'No', '00:00:02', '2022-01-26 01:14:16', '2022-01-26 01:14:21'),
(450, 83, 12, '2022-01-26 07:14:23', 'Yes', 'Right', 1, 'No', '00:00:01', '2022-01-26 01:14:16', '2022-01-26 01:14:23'),
(451, 83, 13, '2022-01-26 07:14:26', 'Yes', 'Right', 1, 'No', '00:00:02', '2022-01-26 01:14:16', '2022-01-26 01:14:26'),
(452, 83, 17, '2022-01-26 07:14:31', 'Yes', 'Right', 1, 'No', '00:00:04', '2022-01-26 01:14:16', '2022-01-26 01:14:31'),
(453, 83, 18, '2022-01-26 07:14:36', 'Yes', 'Right', 1, 'No', '00:00:04', '2022-01-26 01:14:16', '2022-01-26 01:14:36'),
(454, 83, 20, '2022-01-26 07:14:45', 'Yes', 'Right', 1, 'No', '00:00:07', '2022-01-26 01:14:16', '2022-01-26 01:14:45'),
(455, 83, 21, '2022-01-26 07:14:56', 'Yes', 'Right', 1, 'No', '00:00:10', '2022-01-26 01:14:16', '2022-01-26 01:14:56'),
(456, 83, 22, '2022-01-26 07:14:56', 'Yes', 'Skipped', 0, 'No', '00:02:00', '2022-01-26 01:14:16', '2022-01-26 01:14:58'),
(457, 83, 25, '2022-01-26 07:14:58', 'Yes', 'Skipped', 0, 'No', '00:02:00', '2022-01-26 01:14:16', '2022-01-26 01:15:00'),
(458, 83, 26, '2022-01-26 07:15:00', 'Yes', 'Skipped', 0, 'No', '00:02:00', '2022-01-26 01:14:16', '2022-01-26 01:15:02'),
(459, 83, 30, '2022-01-26 07:15:02', 'Yes', 'Skipped', 0, 'No', '00:02:00', '2022-01-26 01:14:16', '2022-01-26 01:15:03'),
(460, 83, 36, '2022-01-26 07:15:04', 'Yes', 'Skipped', 0, 'No', '00:02:00', '2022-01-26 01:14:16', '2022-01-26 01:15:06'),
(461, 83, 37, '2022-01-26 07:15:06', 'Yes', 'No Answer', 0, 'No', '00:02:00', '2022-01-26 01:14:16', '2022-01-26 01:15:06');

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
(1, 1, '1', 'Wrong', '2022-01-11 00:27:48', '2022-01-11 00:27:48'),
(2, 1, '3', 'Wrong', '2022-01-11 00:27:48', '2022-01-11 00:27:48'),
(3, 2, '2', 'Right', '2022-01-11 00:29:03', '2022-01-11 00:29:03'),
(4, 2, '4', 'Right', '2022-01-11 00:29:03', '2022-01-11 00:29:03'),
(5, 3, '1', 'Wrong', '2022-01-15 21:43:08', '2022-01-15 21:43:08'),
(6, 3, '3', 'Wrong', '2022-01-15 21:43:08', '2022-01-15 21:43:08'),
(7, 6, '1', 'Wrong', '2022-01-15 21:54:06', '2022-01-15 21:54:06'),
(8, 6, '2', 'Wrong', '2022-01-15 21:54:06', '2022-01-15 21:54:06'),
(9, 9, '2', 'Right', '2022-01-15 21:54:32', '2022-01-15 21:54:32'),
(10, 9, '4', 'Right', '2022-01-15 21:54:33', '2022-01-15 21:54:33'),
(11, 10, '2', 'Right', '2022-01-15 22:00:56', '2022-01-15 22:00:56'),
(12, 10, '4', 'Right', '2022-01-15 22:00:56', '2022-01-15 22:00:56'),
(13, 13, '2', 'Right', '2022-01-15 22:02:48', '2022-01-15 22:02:48'),
(14, 13, '4', 'Right', '2022-01-15 22:02:48', '2022-01-15 22:02:48'),
(15, 16, '2', 'Right', '2022-01-15 22:04:06', '2022-01-15 22:04:06'),
(16, 16, '4', 'Right', '2022-01-15 22:04:06', '2022-01-15 22:04:06'),
(17, 18, '16423050944.jpg', 'Right', '2022-01-15 22:11:29', '2022-01-15 22:11:29'),
(18, 19, '2', 'Right', '2022-01-15 22:11:53', '2022-01-15 22:11:53'),
(19, 19, '4', 'Right', '2022-01-15 22:11:53', '2022-01-15 22:11:53'),
(20, 21, '16423050944.jpg', 'Right', '2022-01-15 22:12:00', '2022-01-15 22:12:00'),
(21, 22, '2', 'Right', '2022-01-15 23:04:09', '2022-01-15 23:04:09'),
(22, 22, '4', 'Right', '2022-01-15 23:04:09', '2022-01-15 23:04:09'),
(23, 24, '16423050944.jpg', 'Right', '2022-01-15 23:04:52', '2022-01-15 23:04:52'),
(24, 25, '2', 'Right', '2022-01-16 01:12:05', '2022-01-16 01:12:05'),
(25, 25, '4', 'Right', '2022-01-16 01:12:05', '2022-01-16 01:12:05'),
(26, 27, '16423050944.jpg', 'Right', '2022-01-16 01:12:11', '2022-01-16 01:12:11'),
(27, 29, '2', 'Right', '2022-01-16 01:28:19', '2022-01-16 01:28:19'),
(28, 29, '4', 'Right', '2022-01-16 01:28:19', '2022-01-16 01:28:19'),
(29, 31, '16423050944.jpg', 'Right', '2022-01-16 01:28:24', '2022-01-16 01:28:24'),
(30, 33, '2', 'Right', '2022-01-16 01:32:09', '2022-01-16 01:32:09'),
(31, 33, '4', 'Right', '2022-01-16 01:32:09', '2022-01-16 01:32:09'),
(32, 35, '16423050944.jpg', 'Right', '2022-01-16 01:32:14', '2022-01-16 01:32:14'),
(33, 37, '2', 'Right', '2022-01-16 01:43:43', '2022-01-16 01:43:43'),
(34, 37, '4', 'Right', '2022-01-16 01:43:43', '2022-01-16 01:43:43'),
(35, 39, '16423050944.jpg', 'Right', '2022-01-16 01:43:48', '2022-01-16 01:43:48'),
(36, 41, '2', 'Right', '2022-01-16 01:45:53', '2022-01-16 01:45:53'),
(37, 41, '4', 'Right', '2022-01-16 01:45:53', '2022-01-16 01:45:53'),
(38, 43, '16423050944.jpg', 'Right', '2022-01-16 01:46:00', '2022-01-16 01:46:00'),
(39, 45, '2', 'Right', '2022-01-16 01:46:37', '2022-01-16 01:46:37'),
(40, 45, '4', 'Right', '2022-01-16 01:46:37', '2022-01-16 01:46:37'),
(41, 47, '16423050944.jpg', 'Right', '2022-01-16 01:46:43', '2022-01-16 01:46:43'),
(42, 49, '2', 'Right', '2022-01-16 01:51:24', '2022-01-16 01:51:24'),
(43, 49, '4', 'Right', '2022-01-16 01:51:24', '2022-01-16 01:51:24'),
(44, 51, '16423050944.jpg', 'Right', '2022-01-16 01:51:29', '2022-01-16 01:51:29'),
(45, 53, '2', 'Right', '2022-01-16 01:55:11', '2022-01-16 01:55:11'),
(46, 53, '4', 'Right', '2022-01-16 01:55:11', '2022-01-16 01:55:11'),
(47, 55, '16423050944.jpg', 'Right', '2022-01-16 01:55:17', '2022-01-16 01:55:17'),
(48, 57, '2', 'Right', '2022-01-16 02:00:09', '2022-01-16 02:00:09'),
(49, 57, '4', 'Right', '2022-01-16 02:00:09', '2022-01-16 02:00:09'),
(50, 59, '16423050944.jpg', 'Right', '2022-01-16 02:00:14', '2022-01-16 02:00:14'),
(51, 61, '2', 'Right', '2022-01-16 02:10:34', '2022-01-16 02:10:34'),
(52, 61, '4', 'Right', '2022-01-16 02:10:34', '2022-01-16 02:10:34'),
(53, 63, '16423050944.jpg', 'Right', '2022-01-16 02:10:39', '2022-01-16 02:10:39'),
(54, 65, '2', 'Right', '2022-01-16 02:12:57', '2022-01-16 02:12:57'),
(55, 65, '4', 'Right', '2022-01-16 02:12:57', '2022-01-16 02:12:57'),
(56, 67, '16423050944.jpg', 'Right', '2022-01-16 02:13:03', '2022-01-16 02:13:03'),
(57, 69, '2', 'Right', '2022-01-16 03:25:58', '2022-01-16 03:25:58'),
(58, 69, '4', 'Right', '2022-01-16 03:25:58', '2022-01-16 03:25:58'),
(59, 71, '16423050944.jpg', 'Right', '2022-01-16 03:26:06', '2022-01-16 03:26:06'),
(60, 73, '2', 'Right', '2022-01-16 03:32:05', '2022-01-16 03:32:05'),
(61, 73, '4', 'Right', '2022-01-16 03:32:05', '2022-01-16 03:32:05'),
(62, 75, '16423050944.jpg', 'Right', '2022-01-16 03:32:10', '2022-01-16 03:32:10'),
(63, 77, '2', 'Right', '2022-01-16 03:40:02', '2022-01-16 03:40:02'),
(64, 77, '4', 'Right', '2022-01-16 03:40:02', '2022-01-16 03:40:02'),
(65, 79, '16423050944.jpg', 'Right', '2022-01-16 03:40:07', '2022-01-16 03:40:07'),
(66, 81, '2', 'Right', '2022-01-16 03:42:12', '2022-01-16 03:42:12'),
(67, 81, '4', 'Right', '2022-01-16 03:42:12', '2022-01-16 03:42:12'),
(68, 83, '16423050944.jpg', 'Right', '2022-01-16 03:42:18', '2022-01-16 03:42:18'),
(69, 85, '2', 'Right', '2022-01-16 03:46:16', '2022-01-16 03:46:16'),
(70, 85, '4', 'Right', '2022-01-16 03:46:16', '2022-01-16 03:46:16'),
(71, 87, '16423050944.jpg', 'Right', '2022-01-16 03:46:23', '2022-01-16 03:46:23'),
(72, 89, '2', 'Right', '2022-01-16 04:50:25', '2022-01-16 04:50:25'),
(73, 89, '4', 'Right', '2022-01-16 04:50:25', '2022-01-16 04:50:25'),
(74, 91, '16423050944.jpg', 'Right', '2022-01-16 04:50:32', '2022-01-16 04:50:32'),
(75, 92, 'First', 'Right', '2022-01-16 04:52:40', '2022-01-16 04:52:40'),
(76, 92, 'Second', 'Right', '2022-01-16 04:52:40', '2022-01-16 04:52:40'),
(77, 92, 'Third', 'Right', '2022-01-16 04:52:40', '2022-01-16 04:52:40'),
(78, 92, 'Fourth', 'Right', '2022-01-16 04:52:40', '2022-01-16 04:52:40'),
(79, 92, 'fiveth', 'Right', '2022-01-16 04:52:40', '2022-01-16 04:52:40'),
(80, 92, 'sixth', 'Right', '2022-01-16 04:52:40', '2022-01-16 04:52:40'),
(81, 93, '2', 'Right', '2022-01-16 05:02:29', '2022-01-16 05:02:29'),
(82, 93, '4', 'Right', '2022-01-16 05:02:29', '2022-01-16 05:02:29'),
(83, 95, '16423050944.jpg', 'Right', '2022-01-16 05:02:34', '2022-01-16 05:02:34'),
(84, 99, '16423050944.jpg', 'Right', '2022-01-16 05:06:25', '2022-01-16 05:06:25'),
(85, 100, 'First', 'Right', '2022-01-16 05:06:27', '2022-01-16 05:06:27'),
(86, 100, 'Second', 'Right', '2022-01-16 05:06:27', '2022-01-16 05:06:27'),
(87, 100, 'Third', 'Right', '2022-01-16 05:06:27', '2022-01-16 05:06:27'),
(88, 100, 'Fourth', 'Right', '2022-01-16 05:06:27', '2022-01-16 05:06:27'),
(89, 100, 'fiveth', 'Right', '2022-01-16 05:06:27', '2022-01-16 05:06:27'),
(90, 100, 'sixth', 'Right', '2022-01-16 05:06:27', '2022-01-16 05:06:27'),
(91, 101, '2', 'Right', '2022-01-16 22:53:15', '2022-01-16 22:53:15'),
(92, 101, '4', 'Right', '2022-01-16 22:53:15', '2022-01-16 22:53:15'),
(93, 103, '16423050944.jpg', 'Right', '2022-01-16 22:53:20', '2022-01-16 22:53:20'),
(94, 105, '2', 'Right', '2022-01-16 23:13:36', '2022-01-16 23:13:36'),
(95, 105, '4', 'Right', '2022-01-16 23:13:36', '2022-01-16 23:13:36'),
(96, 107, '16423050944.jpg', 'Right', '2022-01-16 23:13:42', '2022-01-16 23:13:42'),
(97, 109, '2', 'Right', '2022-01-16 23:29:16', '2022-01-16 23:29:16'),
(98, 109, '4', 'Right', '2022-01-16 23:29:16', '2022-01-16 23:29:16'),
(99, 111, '16423050944.jpg', 'Right', '2022-01-16 23:29:22', '2022-01-16 23:29:22'),
(100, 113, '2', 'Right', '2022-01-17 00:11:34', '2022-01-17 00:11:34'),
(101, 113, '4', 'Right', '2022-01-17 00:11:35', '2022-01-17 00:11:35'),
(102, 115, '16423050944.jpg', 'Right', '2022-01-17 00:11:40', '2022-01-17 00:11:40'),
(103, 116, 'First', 'Wrong', '2022-01-17 00:12:58', '2022-01-17 00:12:58'),
(104, 116, 'sixth', 'Wrong', '2022-01-17 00:12:58', '2022-01-17 00:12:58'),
(105, 116, 'Second', 'Wrong', '2022-01-17 00:12:58', '2022-01-17 00:12:58'),
(106, 116, 'Third', 'Wrong', '2022-01-17 00:12:58', '2022-01-17 00:12:58'),
(107, 116, 'Fourth', 'Wrong', '2022-01-17 00:12:58', '2022-01-17 00:12:58'),
(108, 116, 'fiveth', 'Wrong', '2022-01-17 00:12:58', '2022-01-17 00:12:58'),
(109, 117, 'First', 'Right', '2022-01-17 00:13:14', '2022-01-17 00:13:14'),
(110, 117, 'Second', 'Right', '2022-01-17 00:13:14', '2022-01-17 00:13:14'),
(111, 117, 'Third', 'Right', '2022-01-17 00:13:14', '2022-01-17 00:13:14'),
(112, 117, 'Fourth', 'Right', '2022-01-17 00:13:14', '2022-01-17 00:13:14'),
(113, 117, 'fiveth', 'Right', '2022-01-17 00:13:14', '2022-01-17 00:13:14'),
(114, 117, 'sixth', 'Right', '2022-01-17 00:13:14', '2022-01-17 00:13:14'),
(115, 118, '2', 'Right', '2022-01-17 01:56:23', '2022-01-17 01:56:23'),
(116, 118, '4', 'Right', '2022-01-17 01:56:23', '2022-01-17 01:56:23'),
(117, 120, '16423050944.jpg', 'Right', '2022-01-17 01:56:29', '2022-01-17 01:56:29'),
(118, 121, 'First', 'Right', '2022-01-17 01:56:33', '2022-01-17 01:56:33'),
(119, 121, 'Second', 'Right', '2022-01-17 01:56:33', '2022-01-17 01:56:33'),
(120, 121, 'Third', 'Right', '2022-01-17 01:56:33', '2022-01-17 01:56:33'),
(121, 121, 'Fourth', 'Right', '2022-01-17 01:56:33', '2022-01-17 01:56:33'),
(122, 121, 'fiveth', 'Right', '2022-01-17 01:56:33', '2022-01-17 01:56:33'),
(123, 121, 'sixth', 'Right', '2022-01-17 01:56:33', '2022-01-17 01:56:33'),
(124, 123, '2', 'Right', '2022-01-17 02:04:29', '2022-01-17 02:04:29'),
(125, 123, '4', 'Right', '2022-01-17 02:04:29', '2022-01-17 02:04:29'),
(126, 125, '16423050944.jpg', 'Right', '2022-01-17 02:04:34', '2022-01-17 02:04:34'),
(127, 126, 'First', 'Right', '2022-01-17 02:04:37', '2022-01-17 02:04:37'),
(128, 126, 'Second', 'Right', '2022-01-17 02:04:37', '2022-01-17 02:04:37'),
(129, 126, 'Third', 'Right', '2022-01-17 02:04:37', '2022-01-17 02:04:37'),
(130, 126, 'Fourth', 'Right', '2022-01-17 02:04:37', '2022-01-17 02:04:37'),
(131, 126, 'fiveth', 'Right', '2022-01-17 02:04:37', '2022-01-17 02:04:37'),
(132, 126, 'sixth', 'Right', '2022-01-17 02:04:37', '2022-01-17 02:04:37'),
(133, 128, '2', 'Right', '2022-01-17 02:11:13', '2022-01-17 02:11:13'),
(134, 128, '4', 'Right', '2022-01-17 02:11:13', '2022-01-17 02:11:13'),
(135, 130, '16423050944.jpg', 'Right', '2022-01-17 02:11:18', '2022-01-17 02:11:18'),
(136, 131, 'First', 'Right', '2022-01-17 02:11:21', '2022-01-17 02:11:21'),
(137, 131, 'Second', 'Right', '2022-01-17 02:11:21', '2022-01-17 02:11:21'),
(138, 131, 'Third', 'Right', '2022-01-17 02:11:21', '2022-01-17 02:11:21'),
(139, 131, 'Fourth', 'Right', '2022-01-17 02:11:21', '2022-01-17 02:11:21'),
(140, 131, 'fiveth', 'Right', '2022-01-17 02:11:21', '2022-01-17 02:11:21'),
(141, 131, 'sixth', 'Right', '2022-01-17 02:11:21', '2022-01-17 02:11:21'),
(142, 133, '2', 'Right', '2022-01-17 02:14:15', '2022-01-17 02:14:15'),
(143, 133, '4', 'Right', '2022-01-17 02:14:15', '2022-01-17 02:14:15'),
(144, 135, '16423050944.jpg', 'Right', '2022-01-17 02:14:23', '2022-01-17 02:14:23'),
(145, 136, 'First', 'Right', '2022-01-17 02:14:25', '2022-01-17 02:14:25'),
(146, 136, 'Second', 'Right', '2022-01-17 02:14:25', '2022-01-17 02:14:25'),
(147, 136, 'Third', 'Right', '2022-01-17 02:14:25', '2022-01-17 02:14:25'),
(148, 136, 'Fourth', 'Right', '2022-01-17 02:14:25', '2022-01-17 02:14:25'),
(149, 136, 'fiveth', 'Right', '2022-01-17 02:14:25', '2022-01-17 02:14:25'),
(150, 136, 'sixth', 'Right', '2022-01-17 02:14:25', '2022-01-17 02:14:25'),
(151, 137, 'red', 'Right', '2022-01-17 02:16:22', '2022-01-17 02:16:22'),
(152, 137, 'yellow', 'Right', '2022-01-17 02:16:22', '2022-01-17 02:16:22'),
(153, 137, 'green', 'Right', '2022-01-17 02:16:22', '2022-01-17 02:16:22'),
(154, 138, '2', 'Right', '2022-01-17 04:15:55', '2022-01-17 04:15:55'),
(155, 138, '4', 'Right', '2022-01-17 04:15:55', '2022-01-17 04:15:55'),
(156, 139, '16423050944.jpg', 'Right', '2022-01-17 04:15:59', '2022-01-17 04:15:59'),
(157, 140, 'First', 'Right', '2022-01-17 04:16:06', '2022-01-17 04:16:06'),
(158, 140, 'Second', 'Right', '2022-01-17 04:16:06', '2022-01-17 04:16:06'),
(159, 140, 'Third', 'Right', '2022-01-17 04:16:06', '2022-01-17 04:16:06'),
(160, 140, 'Fourth', 'Right', '2022-01-17 04:16:06', '2022-01-17 04:16:06'),
(161, 140, 'fiveth', 'Right', '2022-01-17 04:16:06', '2022-01-17 04:16:06'),
(162, 140, 'sixth', 'Right', '2022-01-17 04:16:06', '2022-01-17 04:16:06'),
(163, 141, 'red', 'Right', '2022-01-17 04:16:09', '2022-01-17 04:16:09'),
(164, 141, 'yellow', 'Right', '2022-01-17 04:16:09', '2022-01-17 04:16:09'),
(165, 141, 'green', 'Right', '2022-01-17 04:16:09', '2022-01-17 04:16:09'),
(166, 145, 'red', 'Right', '2022-01-17 05:26:39', '2022-01-17 05:26:39'),
(167, 145, 'yellow', 'Right', '2022-01-17 05:26:39', '2022-01-17 05:26:39'),
(168, 145, 'green', 'Right', '2022-01-17 05:26:39', '2022-01-17 05:26:39'),
(169, 146, '2', 'Right', '2022-01-17 05:26:48', '2022-01-17 05:26:48'),
(170, 146, '4', 'Right', '2022-01-17 05:26:48', '2022-01-17 05:26:48'),
(171, 147, '16423050944.jpg', 'Right', '2022-01-17 05:26:52', '2022-01-17 05:26:52'),
(172, 148, 'First', 'Right', '2022-01-17 05:27:19', '2022-01-17 05:27:19'),
(173, 148, 'Second', 'Right', '2022-01-17 05:27:19', '2022-01-17 05:27:19'),
(174, 148, 'Third', 'Right', '2022-01-17 05:27:19', '2022-01-17 05:27:19'),
(175, 148, 'Fourth', 'Right', '2022-01-17 05:27:19', '2022-01-17 05:27:19'),
(176, 148, 'fiveth', 'Right', '2022-01-17 05:27:19', '2022-01-17 05:27:19'),
(177, 148, 'sixth', 'Right', '2022-01-17 05:27:19', '2022-01-17 05:27:19'),
(178, 149, 'red', 'Right', '2022-01-17 05:27:39', '2022-01-17 05:27:39'),
(179, 149, 'yellow', 'Right', '2022-01-17 05:27:39', '2022-01-17 05:27:39'),
(180, 149, 'green', 'Right', '2022-01-17 05:27:39', '2022-01-17 05:27:39'),
(181, 150, '2', 'Right', '2022-01-18 00:27:26', '2022-01-18 00:27:26'),
(182, 150, '4', 'Right', '2022-01-18 00:27:26', '2022-01-18 00:27:26'),
(183, 151, '16423050944.jpg', 'Right', '2022-01-18 00:27:29', '2022-01-18 00:27:29'),
(184, 152, 'First', 'Right', '2022-01-18 00:27:48', '2022-01-18 00:27:48'),
(185, 152, 'Second', 'Right', '2022-01-18 00:27:48', '2022-01-18 00:27:48'),
(186, 152, 'Third', 'Right', '2022-01-18 00:27:48', '2022-01-18 00:27:48'),
(187, 152, 'Fourth', 'Right', '2022-01-18 00:27:48', '2022-01-18 00:27:48'),
(188, 152, 'fiveth', 'Right', '2022-01-18 00:27:48', '2022-01-18 00:27:48'),
(189, 152, 'sixth', 'Right', '2022-01-18 00:27:48', '2022-01-18 00:27:48'),
(190, 153, 'red', 'Right', '2022-01-18 00:28:02', '2022-01-18 00:28:02'),
(191, 153, 'yellow', 'Right', '2022-01-18 00:28:02', '2022-01-18 00:28:02'),
(192, 153, 'green', 'Right', '2022-01-18 00:28:02', '2022-01-18 00:28:02'),
(193, 155, '2', 'Right', '2022-01-18 00:28:40', '2022-01-18 00:28:40'),
(194, 155, '4', 'Right', '2022-01-18 00:28:40', '2022-01-18 00:28:40'),
(195, 156, '16423050944.jpg', 'Right', '2022-01-18 00:28:43', '2022-01-18 00:28:43'),
(196, 157, 'First', 'Right', '2022-01-18 00:28:58', '2022-01-18 00:28:58'),
(197, 157, 'Second', 'Right', '2022-01-18 00:28:58', '2022-01-18 00:28:58'),
(198, 157, 'Third', 'Right', '2022-01-18 00:28:58', '2022-01-18 00:28:58'),
(199, 157, 'Fourth', 'Right', '2022-01-18 00:28:58', '2022-01-18 00:28:58'),
(200, 157, 'fiveth', 'Right', '2022-01-18 00:28:58', '2022-01-18 00:28:58'),
(201, 157, 'sixth', 'Right', '2022-01-18 00:28:58', '2022-01-18 00:28:58'),
(202, 158, 'red', 'Wrong', '2022-01-18 00:29:11', '2022-01-18 00:29:11'),
(203, 158, 'green', 'Wrong', '2022-01-18 00:29:11', '2022-01-18 00:29:11'),
(204, 158, 'yellow', 'Wrong', '2022-01-18 00:29:11', '2022-01-18 00:29:11'),
(205, 160, 'red', 'Right', '2022-01-18 00:29:35', '2022-01-18 00:29:35'),
(206, 160, 'yellow', 'Right', '2022-01-18 00:29:35', '2022-01-18 00:29:35'),
(207, 160, 'green', 'Right', '2022-01-18 00:29:35', '2022-01-18 00:29:35'),
(208, 161, '2', 'Right', '2022-01-18 00:29:48', '2022-01-18 00:29:48'),
(209, 161, '4', 'Right', '2022-01-18 00:29:48', '2022-01-18 00:29:48'),
(210, 162, '16423050944.jpg', 'Right', '2022-01-18 00:29:51', '2022-01-18 00:29:51'),
(211, 163, 'sixth', 'Wrong', '2022-01-18 00:29:54', '2022-01-18 00:29:54'),
(212, 163, 'fiveth', 'Wrong', '2022-01-18 00:29:54', '2022-01-18 00:29:54'),
(213, 163, 'Second', 'Wrong', '2022-01-18 00:29:54', '2022-01-18 00:29:54'),
(214, 163, 'Third', 'Wrong', '2022-01-18 00:29:54', '2022-01-18 00:29:54'),
(215, 163, 'Fourth', 'Wrong', '2022-01-18 00:29:54', '2022-01-18 00:29:54'),
(216, 163, 'First', 'Wrong', '2022-01-18 00:29:54', '2022-01-18 00:29:54'),
(217, 166, 'First', 'Right', '2022-01-18 00:30:08', '2022-01-18 00:30:08'),
(218, 166, 'Second', 'Right', '2022-01-18 00:30:08', '2022-01-18 00:30:08'),
(219, 166, 'Third', 'Right', '2022-01-18 00:30:08', '2022-01-18 00:30:08'),
(220, 166, 'Fourth', 'Right', '2022-01-18 00:30:08', '2022-01-18 00:30:08'),
(221, 166, 'fiveth', 'Right', '2022-01-18 00:30:08', '2022-01-18 00:30:08'),
(222, 166, 'sixth', 'Right', '2022-01-18 00:30:08', '2022-01-18 00:30:08'),
(223, 164, 'red', 'Right', '2022-01-18 00:30:17', '2022-01-18 00:30:17'),
(224, 164, 'yellow', 'Right', '2022-01-18 00:30:17', '2022-01-18 00:30:17'),
(225, 164, 'green', 'Right', '2022-01-18 00:30:17', '2022-01-18 00:30:17'),
(226, 165, '16424797417.jpg', 'Wrong', '2022-01-18 00:30:53', '2022-01-18 00:30:53'),
(227, 165, '16424797414.jpg', 'Wrong', '2022-01-18 00:30:53', '2022-01-18 00:30:53'),
(228, 165, '16424797412.jpg', 'Wrong', '2022-01-18 00:30:53', '2022-01-18 00:30:53'),
(229, 168, '2', 'Right', '2022-01-18 01:57:23', '2022-01-18 01:57:23'),
(230, 168, '4', 'Right', '2022-01-18 01:57:23', '2022-01-18 01:57:23'),
(231, 169, '16423050944.jpg', 'Right', '2022-01-18 01:57:26', '2022-01-18 01:57:26'),
(232, 170, 'First', 'Right', '2022-01-18 01:57:43', '2022-01-18 01:57:43'),
(233, 170, 'Second', 'Right', '2022-01-18 01:57:43', '2022-01-18 01:57:43'),
(234, 170, 'Third', 'Right', '2022-01-18 01:57:43', '2022-01-18 01:57:43'),
(235, 170, 'Fourth', 'Right', '2022-01-18 01:57:43', '2022-01-18 01:57:43'),
(236, 170, 'fiveth', 'Right', '2022-01-18 01:57:43', '2022-01-18 01:57:43'),
(237, 170, 'sixth', 'Right', '2022-01-18 01:57:43', '2022-01-18 01:57:43'),
(238, 171, 'red', 'Right', '2022-01-18 01:57:52', '2022-01-18 01:57:52'),
(239, 171, 'yellow', 'Right', '2022-01-18 01:57:52', '2022-01-18 01:57:52'),
(240, 171, 'green', 'Right', '2022-01-18 01:57:52', '2022-01-18 01:57:52'),
(241, 173, '2', 'Right', '2022-01-18 01:58:26', '2022-01-18 01:58:26'),
(242, 173, '4', 'Right', '2022-01-18 01:58:26', '2022-01-18 01:58:26'),
(243, 174, '16423050944.jpg', 'Right', '2022-01-18 01:58:29', '2022-01-18 01:58:29'),
(244, 175, 'First', 'Right', '2022-01-18 01:58:35', '2022-01-18 01:58:35'),
(245, 175, 'Second', 'Right', '2022-01-18 01:58:35', '2022-01-18 01:58:35'),
(246, 175, 'Third', 'Right', '2022-01-18 01:58:35', '2022-01-18 01:58:35'),
(247, 175, 'Fourth', 'Right', '2022-01-18 01:58:35', '2022-01-18 01:58:35'),
(248, 175, 'fiveth', 'Right', '2022-01-18 01:58:35', '2022-01-18 01:58:35'),
(249, 175, 'sixth', 'Right', '2022-01-18 01:58:35', '2022-01-18 01:58:35'),
(250, 176, 'red', 'Right', '2022-01-18 01:58:48', '2022-01-18 01:58:48'),
(251, 176, 'yellow', 'Right', '2022-01-18 01:58:48', '2022-01-18 01:58:48'),
(252, 176, 'green', 'Right', '2022-01-18 01:58:48', '2022-01-18 01:58:48'),
(253, 178, '2', 'Right', '2022-01-18 02:31:04', '2022-01-18 02:31:04'),
(254, 178, '4', 'Right', '2022-01-18 02:31:04', '2022-01-18 02:31:04'),
(255, 179, '16423050944.jpg', 'Right', '2022-01-18 02:31:08', '2022-01-18 02:31:08'),
(256, 180, 'First', 'Right', '2022-01-18 02:31:22', '2022-01-18 02:31:22'),
(257, 180, 'Second', 'Right', '2022-01-18 02:31:22', '2022-01-18 02:31:22'),
(258, 180, 'Third', 'Right', '2022-01-18 02:31:22', '2022-01-18 02:31:22'),
(259, 180, 'Fourth', 'Right', '2022-01-18 02:31:22', '2022-01-18 02:31:22'),
(260, 180, 'fiveth', 'Right', '2022-01-18 02:31:22', '2022-01-18 02:31:22'),
(261, 180, 'sixth', 'Right', '2022-01-18 02:31:22', '2022-01-18 02:31:22'),
(262, 181, 'red', 'Right', '2022-01-18 02:31:27', '2022-01-18 02:31:27'),
(263, 181, 'yellow', 'Right', '2022-01-18 02:31:27', '2022-01-18 02:31:27'),
(264, 181, 'green', 'Right', '2022-01-18 02:31:27', '2022-01-18 02:31:27'),
(265, 182, '16424797412.jpg', 'Right', '2022-01-18 02:31:56', '2022-01-18 02:31:56'),
(266, 182, '16424797417.jpg', 'Right', '2022-01-18 02:31:56', '2022-01-18 02:31:56'),
(267, 182, '16424797414.jpg', 'Right', '2022-01-18 02:31:56', '2022-01-18 02:31:56'),
(268, 183, '2', 'Right', '2022-01-18 04:31:41', '2022-01-18 04:31:41'),
(269, 183, '4', 'Right', '2022-01-18 04:31:41', '2022-01-18 04:31:41'),
(270, 184, '16423050944.jpg', 'Right', '2022-01-18 04:31:44', '2022-01-18 04:31:44'),
(271, 185, 'First', 'Right', '2022-01-18 04:31:56', '2022-01-18 04:31:56'),
(272, 185, 'Second', 'Right', '2022-01-18 04:31:56', '2022-01-18 04:31:56'),
(273, 185, 'Third', 'Right', '2022-01-18 04:31:56', '2022-01-18 04:31:56'),
(274, 185, 'Fourth', 'Right', '2022-01-18 04:31:56', '2022-01-18 04:31:56'),
(275, 185, 'fiveth', 'Right', '2022-01-18 04:31:56', '2022-01-18 04:31:56'),
(276, 185, 'sixth', 'Right', '2022-01-18 04:31:56', '2022-01-18 04:31:56'),
(277, 186, 'red', 'Right', '2022-01-18 04:32:04', '2022-01-18 04:32:04'),
(278, 186, 'yellow', 'Right', '2022-01-18 04:32:04', '2022-01-18 04:32:04'),
(279, 186, 'green', 'Right', '2022-01-18 04:32:04', '2022-01-18 04:32:04'),
(280, 188, '2', 'Right', '2022-01-18 04:34:12', '2022-01-18 04:34:12'),
(281, 188, '4', 'Right', '2022-01-18 04:34:12', '2022-01-18 04:34:12'),
(282, 189, '16423050944.jpg', 'Right', '2022-01-18 04:34:15', '2022-01-18 04:34:15'),
(283, 190, 'First', 'Right', '2022-01-18 04:34:35', '2022-01-18 04:34:35'),
(284, 190, 'Second', 'Right', '2022-01-18 04:34:35', '2022-01-18 04:34:35'),
(285, 190, 'Third', 'Right', '2022-01-18 04:34:35', '2022-01-18 04:34:35'),
(286, 190, 'Fourth', 'Right', '2022-01-18 04:34:35', '2022-01-18 04:34:35'),
(287, 190, 'fiveth', 'Right', '2022-01-18 04:34:35', '2022-01-18 04:34:35'),
(288, 190, 'sixth', 'Right', '2022-01-18 04:34:35', '2022-01-18 04:34:35'),
(289, 191, 'red', 'Right', '2022-01-18 04:34:42', '2022-01-18 04:34:42'),
(290, 191, 'yellow', 'Right', '2022-01-18 04:34:42', '2022-01-18 04:34:42'),
(291, 191, 'green', 'Right', '2022-01-18 04:34:42', '2022-01-18 04:34:42'),
(292, 192, '16424797412.jpg', 'Right', '2022-01-18 04:34:59', '2022-01-18 04:34:59'),
(293, 192, '16424797417.jpg', 'Right', '2022-01-18 04:34:59', '2022-01-18 04:34:59'),
(294, 192, '16424797414.jpg', 'Right', '2022-01-18 04:34:59', '2022-01-18 04:34:59'),
(295, 193, '2', 'Right', '2022-01-18 04:35:15', '2022-01-18 04:35:15'),
(296, 193, '4', 'Right', '2022-01-18 04:35:15', '2022-01-18 04:35:15'),
(297, 194, '16423050944.jpg', 'Right', '2022-01-18 04:35:17', '2022-01-18 04:35:17'),
(298, 195, 'First', 'Right', '2022-01-18 04:35:29', '2022-01-18 04:35:29'),
(299, 195, 'Second', 'Right', '2022-01-18 04:35:29', '2022-01-18 04:35:29'),
(300, 195, 'Third', 'Right', '2022-01-18 04:35:29', '2022-01-18 04:35:29'),
(301, 195, 'Fourth', 'Right', '2022-01-18 04:35:29', '2022-01-18 04:35:29'),
(302, 195, 'fiveth', 'Right', '2022-01-18 04:35:29', '2022-01-18 04:35:29'),
(303, 195, 'sixth', 'Right', '2022-01-18 04:35:29', '2022-01-18 04:35:29'),
(304, 196, 'red', 'Right', '2022-01-18 04:35:40', '2022-01-18 04:35:40'),
(305, 196, 'yellow', 'Right', '2022-01-18 04:35:40', '2022-01-18 04:35:40'),
(306, 196, 'green', 'Right', '2022-01-18 04:35:40', '2022-01-18 04:35:40'),
(307, 197, '16424797414.jpg', 'Wrong', '2022-01-18 04:36:40', '2022-01-18 04:36:40'),
(308, 197, '16424797417.jpg', 'Wrong', '2022-01-18 04:36:40', '2022-01-18 04:36:40'),
(309, 197, '16424797412.jpg', 'Wrong', '2022-01-18 04:36:40', '2022-01-18 04:36:40'),
(310, 199, '2', 'Right', '2022-01-18 04:50:48', '2022-01-18 04:50:48'),
(311, 199, '4', 'Right', '2022-01-18 04:50:48', '2022-01-18 04:50:48'),
(312, 200, '16423050944.jpg', 'Right', '2022-01-18 04:50:51', '2022-01-18 04:50:51'),
(313, 201, 'First', 'Right', '2022-01-18 04:51:04', '2022-01-18 04:51:04'),
(314, 201, 'Second', 'Right', '2022-01-18 04:51:04', '2022-01-18 04:51:04'),
(315, 201, 'Third', 'Right', '2022-01-18 04:51:04', '2022-01-18 04:51:04'),
(316, 201, 'Fourth', 'Right', '2022-01-18 04:51:04', '2022-01-18 04:51:04'),
(317, 201, 'fiveth', 'Right', '2022-01-18 04:51:04', '2022-01-18 04:51:04'),
(318, 201, 'sixth', 'Right', '2022-01-18 04:51:04', '2022-01-18 04:51:04'),
(319, 202, 'red', 'Right', '2022-01-18 04:51:28', '2022-01-18 04:51:28'),
(320, 202, 'yellow', 'Right', '2022-01-18 04:51:28', '2022-01-18 04:51:28'),
(321, 202, 'green', 'Right', '2022-01-18 04:51:28', '2022-01-18 04:51:28'),
(322, 203, '16424797414.jpg', 'Wrong', '2022-01-18 04:51:54', '2022-01-18 04:51:54'),
(323, 203, '16424797417.jpg', 'Wrong', '2022-01-18 04:51:54', '2022-01-18 04:51:54'),
(324, 203, '16424797412.jpg', 'Wrong', '2022-01-18 04:51:54', '2022-01-18 04:51:54'),
(325, 205, '2', 'Right', '2022-01-18 04:55:07', '2022-01-18 04:55:07'),
(326, 205, '4', 'Right', '2022-01-18 04:55:07', '2022-01-18 04:55:07'),
(327, 206, '16423050944.jpg', 'Right', '2022-01-18 04:55:09', '2022-01-18 04:55:09'),
(328, 207, 'First', 'Right', '2022-01-18 04:55:20', '2022-01-18 04:55:20'),
(329, 207, 'Second', 'Right', '2022-01-18 04:55:20', '2022-01-18 04:55:20'),
(330, 207, 'Third', 'Right', '2022-01-18 04:55:20', '2022-01-18 04:55:20'),
(331, 207, 'Fourth', 'Right', '2022-01-18 04:55:20', '2022-01-18 04:55:20'),
(332, 207, 'fiveth', 'Right', '2022-01-18 04:55:20', '2022-01-18 04:55:20'),
(333, 207, 'sixth', 'Right', '2022-01-18 04:55:20', '2022-01-18 04:55:20'),
(334, 208, 'red', 'Right', '2022-01-18 04:55:31', '2022-01-18 04:55:31'),
(335, 208, 'yellow', 'Right', '2022-01-18 04:55:31', '2022-01-18 04:55:31'),
(336, 208, 'green', 'Right', '2022-01-18 04:55:31', '2022-01-18 04:55:31'),
(337, 209, 'red', 'Wrong', '2022-01-18 04:55:36', '2022-01-18 04:55:36'),
(338, 209, 'yellow', 'Wrong', '2022-01-18 04:55:36', '2022-01-18 04:55:36'),
(339, 209, 'green', 'Wrong', '2022-01-18 04:55:36', '2022-01-18 04:55:36'),
(340, 210, '16424797412.jpg', 'Right', '2022-01-18 04:57:15', '2022-01-18 04:57:15'),
(341, 210, '16424797417.jpg', 'Right', '2022-01-18 04:57:15', '2022-01-18 04:57:15'),
(342, 210, '16424797414.jpg', 'Right', '2022-01-18 04:57:15', '2022-01-18 04:57:15'),
(343, 222, 'red', 'Right', '2022-01-18 05:30:02', '2022-01-18 05:30:02'),
(344, 222, 'yellow', 'Right', '2022-01-18 05:30:02', '2022-01-18 05:30:02'),
(345, 222, 'green', 'Right', '2022-01-18 05:30:02', '2022-01-18 05:30:02'),
(346, 223, '16424797417.jpg', 'Wrong', '2022-01-18 05:30:05', '2022-01-18 05:30:05'),
(347, 223, '16424797412.jpg', 'Wrong', '2022-01-18 05:30:05', '2022-01-18 05:30:05'),
(348, 223, '16424797414.jpg', 'Wrong', '2022-01-18 05:30:05', '2022-01-18 05:30:05'),
(349, 224, '16424797412.jpg', 'Right', '2022-01-18 05:30:10', '2022-01-18 05:30:10'),
(350, 224, '16424797417.jpg', 'Right', '2022-01-18 05:30:10', '2022-01-18 05:30:10'),
(351, 224, '16424797414.jpg', 'Right', '2022-01-18 05:30:10', '2022-01-18 05:30:10'),
(352, 225, '2', 'Right', '2022-01-18 05:30:19', '2022-01-18 05:30:19'),
(353, 225, '4', 'Right', '2022-01-18 05:30:19', '2022-01-18 05:30:19'),
(354, 226, '16423050944.jpg', 'Right', '2022-01-18 05:30:21', '2022-01-18 05:30:21'),
(355, 227, 'First', 'Right', '2022-01-18 05:30:32', '2022-01-18 05:30:32'),
(356, 227, 'Second', 'Right', '2022-01-18 05:30:32', '2022-01-18 05:30:32'),
(357, 227, 'Third', 'Right', '2022-01-18 05:30:32', '2022-01-18 05:30:32'),
(358, 227, 'Fourth', 'Right', '2022-01-18 05:30:32', '2022-01-18 05:30:32'),
(359, 227, 'fiveth', 'Right', '2022-01-18 05:30:32', '2022-01-18 05:30:32'),
(360, 227, 'sixth', 'Right', '2022-01-18 05:30:32', '2022-01-18 05:30:32'),
(361, 228, 'red', 'Right', '2022-01-18 05:31:20', '2022-01-18 05:31:20'),
(362, 228, 'yellow', 'Right', '2022-01-18 05:31:20', '2022-01-18 05:31:20'),
(363, 228, 'green', 'Right', '2022-01-18 05:31:20', '2022-01-18 05:31:20'),
(364, 229, '16424797412.jpg', 'Right', '2022-01-18 05:31:46', '2022-01-18 05:31:46'),
(365, 229, '16424797417.jpg', 'Right', '2022-01-18 05:31:46', '2022-01-18 05:31:46'),
(366, 229, '16424797414.jpg', 'Right', '2022-01-18 05:31:46', '2022-01-18 05:31:46'),
(367, 230, '2', 'Right', '2022-01-18 05:32:56', '2022-01-18 05:32:56'),
(368, 230, '4', 'Right', '2022-01-18 05:32:56', '2022-01-18 05:32:56'),
(369, 231, '16423050944.jpg', 'Right', '2022-01-18 05:32:59', '2022-01-18 05:32:59'),
(370, 232, 'First', 'Right', '2022-01-18 05:33:04', '2022-01-18 05:33:04'),
(371, 232, 'Second', 'Right', '2022-01-18 05:33:04', '2022-01-18 05:33:04'),
(372, 232, 'Third', 'Right', '2022-01-18 05:33:04', '2022-01-18 05:33:04'),
(373, 232, 'Fourth', 'Right', '2022-01-18 05:33:04', '2022-01-18 05:33:04'),
(374, 232, 'fiveth', 'Right', '2022-01-18 05:33:04', '2022-01-18 05:33:04'),
(375, 232, 'sixth', 'Right', '2022-01-18 05:33:04', '2022-01-18 05:33:04'),
(376, 233, 'red', 'Right', '2022-01-18 05:33:25', '2022-01-18 05:33:25'),
(377, 233, 'yellow', 'Right', '2022-01-18 05:33:25', '2022-01-18 05:33:25'),
(378, 233, 'green', 'Right', '2022-01-18 05:33:25', '2022-01-18 05:33:25'),
(379, 234, '16424797412.jpg', 'Right', '2022-01-18 05:35:30', '2022-01-18 05:35:30'),
(380, 234, '16424797417.jpg', 'Right', '2022-01-18 05:35:30', '2022-01-18 05:35:30'),
(381, 234, '16424797414.jpg', 'Right', '2022-01-18 05:35:30', '2022-01-18 05:35:30'),
(382, 235, '2', 'Right', '2022-01-18 05:35:39', '2022-01-18 05:35:39'),
(383, 235, '4', 'Right', '2022-01-18 05:35:39', '2022-01-18 05:35:39'),
(384, 236, '16423050944.jpg', 'Right', '2022-01-18 05:35:41', '2022-01-18 05:35:41'),
(385, 237, 'First', 'Right', '2022-01-18 05:35:51', '2022-01-18 05:35:51'),
(386, 237, 'Second', 'Right', '2022-01-18 05:35:51', '2022-01-18 05:35:51'),
(387, 237, 'Third', 'Right', '2022-01-18 05:35:51', '2022-01-18 05:35:51'),
(388, 237, 'Fourth', 'Right', '2022-01-18 05:35:51', '2022-01-18 05:35:51'),
(389, 237, 'fiveth', 'Right', '2022-01-18 05:35:51', '2022-01-18 05:35:51'),
(390, 237, 'sixth', 'Right', '2022-01-18 05:35:51', '2022-01-18 05:35:51'),
(391, 238, 'red', 'Right', '2022-01-18 05:36:04', '2022-01-18 05:36:04'),
(392, 238, 'yellow', 'Right', '2022-01-18 05:36:04', '2022-01-18 05:36:04'),
(393, 238, 'green', 'Right', '2022-01-18 05:36:04', '2022-01-18 05:36:04'),
(394, 239, '16424797412.jpg', 'Right', '2022-01-18 05:38:58', '2022-01-18 05:38:58'),
(395, 239, '16424797417.jpg', 'Right', '2022-01-18 05:38:58', '2022-01-18 05:38:58'),
(396, 239, '16424797414.jpg', 'Right', '2022-01-18 05:38:58', '2022-01-18 05:38:58'),
(397, 240, '2', 'Right', '2022-01-18 05:39:23', '2022-01-18 05:39:23'),
(398, 240, '4', 'Right', '2022-01-18 05:39:23', '2022-01-18 05:39:23'),
(399, 241, '16423050944.jpg', 'Right', '2022-01-18 05:39:25', '2022-01-18 05:39:25'),
(400, 242, 'First', 'Right', '2022-01-18 05:39:36', '2022-01-18 05:39:36'),
(401, 242, 'Second', 'Right', '2022-01-18 05:39:36', '2022-01-18 05:39:36'),
(402, 242, 'Third', 'Right', '2022-01-18 05:39:36', '2022-01-18 05:39:36'),
(403, 242, 'Fourth', 'Right', '2022-01-18 05:39:36', '2022-01-18 05:39:36'),
(404, 242, 'fiveth', 'Right', '2022-01-18 05:39:36', '2022-01-18 05:39:36'),
(405, 242, 'sixth', 'Right', '2022-01-18 05:39:36', '2022-01-18 05:39:36'),
(406, 243, 'red', 'Right', '2022-01-18 05:39:42', '2022-01-18 05:39:42'),
(407, 243, 'yellow', 'Right', '2022-01-18 05:39:42', '2022-01-18 05:39:42'),
(408, 243, 'green', 'Right', '2022-01-18 05:39:42', '2022-01-18 05:39:42'),
(409, 244, '16424797412.jpg', 'Right', '2022-01-18 05:41:40', '2022-01-18 05:41:40'),
(410, 244, '16424797417.jpg', 'Right', '2022-01-18 05:41:40', '2022-01-18 05:41:40'),
(411, 244, '16424797414.jpg', 'Right', '2022-01-18 05:41:40', '2022-01-18 05:41:40'),
(412, 245, '2', 'Right', '2022-01-18 05:41:50', '2022-01-18 05:41:50'),
(413, 245, '4', 'Right', '2022-01-18 05:41:50', '2022-01-18 05:41:50'),
(414, 246, '16423050944.jpg', 'Right', '2022-01-18 05:41:52', '2022-01-18 05:41:52'),
(415, 247, 'First', 'Right', '2022-01-18 05:42:04', '2022-01-18 05:42:04'),
(416, 247, 'Second', 'Right', '2022-01-18 05:42:04', '2022-01-18 05:42:04'),
(417, 247, 'Third', 'Right', '2022-01-18 05:42:04', '2022-01-18 05:42:04'),
(418, 247, 'Fourth', 'Right', '2022-01-18 05:42:04', '2022-01-18 05:42:04'),
(419, 247, 'fiveth', 'Right', '2022-01-18 05:42:04', '2022-01-18 05:42:04'),
(420, 247, 'sixth', 'Right', '2022-01-18 05:42:04', '2022-01-18 05:42:04'),
(421, 248, 'red', 'Right', '2022-01-18 05:42:13', '2022-01-18 05:42:13'),
(422, 248, 'yellow', 'Right', '2022-01-18 05:42:13', '2022-01-18 05:42:13'),
(423, 248, 'green', 'Right', '2022-01-18 05:42:13', '2022-01-18 05:42:13'),
(424, 249, '16424797412.jpg', 'Right', '2022-01-18 05:42:33', '2022-01-18 05:42:33'),
(425, 249, '16424797417.jpg', 'Right', '2022-01-18 05:42:33', '2022-01-18 05:42:33'),
(426, 249, '16424797414.jpg', 'Right', '2022-01-18 05:42:33', '2022-01-18 05:42:33'),
(427, 250, '<stdio.h>', 'Right', '2022-01-23 22:56:10', '2022-01-23 22:56:10'),
(428, 250, '<math.h>', 'Right', '2022-01-23 22:56:10', '2022-01-23 22:56:10'),
(429, 251, 'Can be called using the class name and function', 'Right', '2022-01-23 22:56:17', '2022-01-23 22:56:17'),
(430, 252, '1642833436Screenshot_8.png', 'Right', '2022-01-23 22:57:14', '2022-01-23 22:57:14'),
(431, 253, 'yellow', 'Right', '2022-01-23 23:01:21', '2022-01-23 23:01:21'),
(432, 253, 'red', 'Right', '2022-01-23 23:01:21', '2022-01-23 23:01:21'),
(433, 253, 'green', 'Right', '2022-01-23 23:01:21', '2022-01-23 23:01:21'),
(434, 254, '1642833667bg-slide4.jpg', 'Right', '2022-01-23 23:01:36', '2022-01-23 23:01:36'),
(435, 254, '1642833667chevron-home-banner.jpg', 'Right', '2022-01-23 23:01:36', '2022-01-23 23:01:36'),
(436, 254, '1642833667cow-eating-1-scaled.jpeg', 'Right', '2022-01-23 23:01:36', '2022-01-23 23:01:36'),
(437, 254, '1642833667Chevron-house.jpg', 'Right', '2022-01-23 23:01:36', '2022-01-23 23:01:36'),
(438, 255, '01', 'Right', '2022-01-23 23:01:54', '2022-01-23 23:01:54'),
(439, 255, '02', 'Right', '2022-01-23 23:01:54', '2022-01-23 23:01:54'),
(440, 255, '03', 'Right', '2022-01-23 23:01:54', '2022-01-23 23:01:54'),
(441, 255, '04', 'Right', '2022-01-23 23:01:54', '2022-01-23 23:01:54'),
(442, 255, '05', 'Right', '2022-01-23 23:01:54', '2022-01-23 23:01:54'),
(443, 255, '06', 'Right', '2022-01-23 23:01:54', '2022-01-23 23:01:54'),
(444, 256, '001', 'Right', '2022-01-23 23:02:06', '2022-01-23 23:02:06'),
(445, 256, '002', 'Right', '2022-01-23 23:02:06', '2022-01-23 23:02:06'),
(446, 256, '003', 'Right', '2022-01-23 23:02:06', '2022-01-23 23:02:06'),
(447, 256, '004', 'Right', '2022-01-23 23:02:06', '2022-01-23 23:02:06'),
(448, 256, '005', 'Right', '2022-01-23 23:02:06', '2022-01-23 23:02:06'),
(449, 256, '006', 'Right', '2022-01-23 23:02:06', '2022-01-23 23:02:06'),
(450, 257, '<stdio.h>', 'Right', '2022-01-24 04:26:26', '2022-01-24 04:26:26'),
(451, 257, '<math.h>', 'Right', '2022-01-24 04:26:26', '2022-01-24 04:26:26'),
(452, 258, 'Can be called using the class name and function', 'Right', '2022-01-24 04:26:52', '2022-01-24 04:26:52'),
(453, 259, '1642833436Screenshot_8.png', 'Right', '2022-01-24 04:26:57', '2022-01-24 04:26:57'),
(454, 261, '1642833667bg-slide4.jpg', 'Right', '2022-01-24 04:27:40', '2022-01-24 04:27:40'),
(455, 261, '1642833667chevron-home-banner.jpg', 'Right', '2022-01-24 04:27:40', '2022-01-24 04:27:40'),
(456, 261, '1642833667cow-eating-1-scaled.jpeg', 'Right', '2022-01-24 04:27:40', '2022-01-24 04:27:40'),
(457, 261, '1642833667Chevron-house.jpg', 'Right', '2022-01-24 04:27:40', '2022-01-24 04:27:40'),
(458, 262, '01', 'Right', '2022-01-24 04:27:53', '2022-01-24 04:27:53'),
(459, 262, '02', 'Right', '2022-01-24 04:27:53', '2022-01-24 04:27:53'),
(460, 262, '03', 'Right', '2022-01-24 04:27:53', '2022-01-24 04:27:53'),
(461, 262, '04', 'Right', '2022-01-24 04:27:53', '2022-01-24 04:27:53'),
(462, 262, '05', 'Right', '2022-01-24 04:27:53', '2022-01-24 04:27:53'),
(463, 262, '06', 'Right', '2022-01-24 04:27:53', '2022-01-24 04:27:53'),
(464, 263, '001', 'Right', '2022-01-24 04:28:04', '2022-01-24 04:28:04'),
(465, 263, '002', 'Right', '2022-01-24 04:28:04', '2022-01-24 04:28:04'),
(466, 263, '003', 'Right', '2022-01-24 04:28:04', '2022-01-24 04:28:04'),
(467, 263, '004', 'Right', '2022-01-24 04:28:04', '2022-01-24 04:28:04'),
(468, 263, '005', 'Right', '2022-01-24 04:28:04', '2022-01-24 04:28:04'),
(469, 263, '006', 'Right', '2022-01-24 04:28:04', '2022-01-24 04:28:04'),
(470, 266, '<stdio.h>', 'Right', '2022-01-24 04:38:30', '2022-01-24 04:38:30'),
(471, 266, '<math.h>', 'Right', '2022-01-24 04:38:30', '2022-01-24 04:38:30'),
(472, 267, 'Can be called using the class name and function', 'Right', '2022-01-24 04:38:32', '2022-01-24 04:38:32'),
(473, 268, '1642833436Screenshot_8.png', 'Right', '2022-01-24 04:38:36', '2022-01-24 04:38:36'),
(474, 270, '1642833667bg-slide4.jpg', 'Right', '2022-01-24 04:38:49', '2022-01-24 04:38:49'),
(475, 270, '1642833667chevron-home-banner.jpg', 'Right', '2022-01-24 04:38:49', '2022-01-24 04:38:49'),
(476, 270, '1642833667cow-eating-1-scaled.jpeg', 'Right', '2022-01-24 04:38:49', '2022-01-24 04:38:49'),
(477, 270, '1642833667Chevron-house.jpg', 'Right', '2022-01-24 04:38:49', '2022-01-24 04:38:49'),
(478, 271, '01', 'Right', '2022-01-24 04:38:59', '2022-01-24 04:38:59'),
(479, 271, '02', 'Right', '2022-01-24 04:38:59', '2022-01-24 04:38:59'),
(480, 271, '03', 'Right', '2022-01-24 04:38:59', '2022-01-24 04:38:59'),
(481, 271, '04', 'Right', '2022-01-24 04:38:59', '2022-01-24 04:38:59'),
(482, 271, '05', 'Right', '2022-01-24 04:38:59', '2022-01-24 04:38:59'),
(483, 271, '06', 'Right', '2022-01-24 04:38:59', '2022-01-24 04:38:59'),
(484, 272, '005', 'Wrong', '2022-01-24 04:39:02', '2022-01-24 04:39:02'),
(485, 272, '001', 'Wrong', '2022-01-24 04:39:02', '2022-01-24 04:39:02'),
(486, 272, '004', 'Wrong', '2022-01-24 04:39:02', '2022-01-24 04:39:02'),
(487, 272, '003', 'Wrong', '2022-01-24 04:39:02', '2022-01-24 04:39:02'),
(488, 272, '006', 'Wrong', '2022-01-24 04:39:02', '2022-01-24 04:39:02'),
(489, 272, '002', 'Wrong', '2022-01-24 04:39:02', '2022-01-24 04:39:02'),
(490, 275, '001', 'Right', '2022-01-24 04:39:16', '2022-01-24 04:39:16'),
(491, 275, '002', 'Right', '2022-01-24 04:39:16', '2022-01-24 04:39:16'),
(492, 275, '003', 'Right', '2022-01-24 04:39:16', '2022-01-24 04:39:16'),
(493, 275, '004', 'Right', '2022-01-24 04:39:16', '2022-01-24 04:39:16'),
(494, 275, '005', 'Right', '2022-01-24 04:39:16', '2022-01-24 04:39:16'),
(495, 275, '006', 'Right', '2022-01-24 04:39:16', '2022-01-24 04:39:16'),
(496, 276, '<stdio.h>', 'Right', '2022-01-24 04:43:31', '2022-01-24 04:43:31'),
(497, 276, '<math.h>', 'Right', '2022-01-24 04:43:31', '2022-01-24 04:43:31'),
(498, 277, 'Can be called using the class name and function', 'Right', '2022-01-24 04:43:34', '2022-01-24 04:43:34'),
(499, 278, '1642833436Screenshot_8.png', 'Right', '2022-01-24 04:43:37', '2022-01-24 04:43:37'),
(500, 280, '1642833667bg-slide4.jpg', 'Right', '2022-01-24 04:43:48', '2022-01-24 04:43:48'),
(501, 280, '1642833667chevron-home-banner.jpg', 'Right', '2022-01-24 04:43:48', '2022-01-24 04:43:48'),
(502, 280, '1642833667cow-eating-1-scaled.jpeg', 'Right', '2022-01-24 04:43:48', '2022-01-24 04:43:48'),
(503, 280, '1642833667Chevron-house.jpg', 'Right', '2022-01-24 04:43:48', '2022-01-24 04:43:48'),
(504, 285, '<stdio.h>', 'Right', '2022-01-24 04:50:14', '2022-01-24 04:50:14'),
(505, 285, '<math.h>', 'Right', '2022-01-24 04:50:14', '2022-01-24 04:50:14'),
(506, 286, 'Can be called using the class name and function', 'Right', '2022-01-24 04:50:16', '2022-01-24 04:50:16'),
(507, 287, '1642833436Screenshot_8.png', 'Right', '2022-01-24 04:50:20', '2022-01-24 04:50:20'),
(508, 289, '1642833667bg-slide4.jpg', 'Right', '2022-01-24 04:50:31', '2022-01-24 04:50:31'),
(509, 289, '1642833667chevron-home-banner.jpg', 'Right', '2022-01-24 04:50:31', '2022-01-24 04:50:31'),
(510, 289, '1642833667cow-eating-1-scaled.jpeg', 'Right', '2022-01-24 04:50:31', '2022-01-24 04:50:31'),
(511, 289, '1642833667Chevron-house.jpg', 'Right', '2022-01-24 04:50:31', '2022-01-24 04:50:31'),
(512, 290, '01', 'Right', '2022-01-24 04:50:41', '2022-01-24 04:50:41'),
(513, 290, '02', 'Right', '2022-01-24 04:50:41', '2022-01-24 04:50:41'),
(514, 290, '03', 'Right', '2022-01-24 04:50:41', '2022-01-24 04:50:41'),
(515, 290, '04', 'Right', '2022-01-24 04:50:41', '2022-01-24 04:50:41'),
(516, 290, '05', 'Right', '2022-01-24 04:50:41', '2022-01-24 04:50:41'),
(517, 290, '06', 'Right', '2022-01-24 04:50:41', '2022-01-24 04:50:41'),
(518, 291, '001', 'Right', '2022-01-24 04:50:52', '2022-01-24 04:50:52'),
(519, 291, '002', 'Right', '2022-01-24 04:50:52', '2022-01-24 04:50:52'),
(520, 291, '003', 'Right', '2022-01-24 04:50:52', '2022-01-24 04:50:52'),
(521, 291, '004', 'Right', '2022-01-24 04:50:52', '2022-01-24 04:50:52'),
(522, 291, '005', 'Right', '2022-01-24 04:50:52', '2022-01-24 04:50:52'),
(523, 291, '006', 'Right', '2022-01-24 04:50:52', '2022-01-24 04:50:52'),
(524, 294, '<stdio.h>', 'Right', '2022-01-24 04:52:47', '2022-01-24 04:52:47'),
(525, 294, '<math.h>', 'Right', '2022-01-24 04:52:47', '2022-01-24 04:52:47'),
(526, 295, 'Can be called using the class name and function', 'Right', '2022-01-24 04:52:50', '2022-01-24 04:52:50'),
(527, 296, '1642833436Screenshot_8.png', 'Right', '2022-01-24 04:52:53', '2022-01-24 04:52:53'),
(528, 298, '1642833667bg-slide4.jpg', 'Right', '2022-01-24 04:53:04', '2022-01-24 04:53:04'),
(529, 298, '1642833667chevron-home-banner.jpg', 'Right', '2022-01-24 04:53:04', '2022-01-24 04:53:04'),
(530, 298, '1642833667cow-eating-1-scaled.jpeg', 'Right', '2022-01-24 04:53:04', '2022-01-24 04:53:04'),
(531, 298, '1642833667Chevron-house.jpg', 'Right', '2022-01-24 04:53:04', '2022-01-24 04:53:04'),
(532, 303, '<stdio.h>', 'Right', '2022-01-24 22:17:34', '2022-01-24 22:17:34'),
(533, 303, '<math.h>', 'Right', '2022-01-24 22:17:34', '2022-01-24 22:17:34'),
(534, 304, 'Can be called using the class name and function', 'Right', '2022-01-24 22:17:38', '2022-01-24 22:17:38'),
(535, 305, '1642833436Screenshot_8.png', 'Right', '2022-01-24 22:17:42', '2022-01-24 22:17:42'),
(536, 307, '1642833667bg-slide4.jpg', 'Right', '2022-01-24 22:19:18', '2022-01-24 22:19:18'),
(537, 307, '1642833667chevron-home-banner.jpg', 'Right', '2022-01-24 22:19:18', '2022-01-24 22:19:18'),
(538, 307, '1642833667cow-eating-1-scaled.jpeg', 'Right', '2022-01-24 22:19:18', '2022-01-24 22:19:18'),
(539, 307, '1642833667Chevron-house.jpg', 'Right', '2022-01-24 22:19:18', '2022-01-24 22:19:18'),
(540, 308, '01', 'Right', '2022-01-24 22:19:29', '2022-01-24 22:19:29'),
(541, 308, '02', 'Right', '2022-01-24 22:19:29', '2022-01-24 22:19:29'),
(542, 308, '03', 'Right', '2022-01-24 22:19:29', '2022-01-24 22:19:29'),
(543, 308, '04', 'Right', '2022-01-24 22:19:29', '2022-01-24 22:19:29'),
(544, 308, '05', 'Right', '2022-01-24 22:19:29', '2022-01-24 22:19:29'),
(545, 308, '06', 'Right', '2022-01-24 22:19:29', '2022-01-24 22:19:29'),
(546, 309, '001', 'Right', '2022-01-24 22:19:38', '2022-01-24 22:19:38'),
(547, 309, '002', 'Right', '2022-01-24 22:19:38', '2022-01-24 22:19:38'),
(548, 309, '003', 'Right', '2022-01-24 22:19:38', '2022-01-24 22:19:38'),
(549, 309, '004', 'Right', '2022-01-24 22:19:38', '2022-01-24 22:19:38'),
(550, 309, '005', 'Right', '2022-01-24 22:19:38', '2022-01-24 22:19:38'),
(551, 309, '006', 'Right', '2022-01-24 22:19:38', '2022-01-24 22:19:38'),
(552, 312, '<stdio.h>', 'Right', '2022-01-24 23:21:23', '2022-01-24 23:21:23'),
(553, 312, '<math.h>', 'Right', '2022-01-24 23:21:23', '2022-01-24 23:21:23'),
(554, 313, 'Can be called using the class name and function', 'Right', '2022-01-24 23:21:26', '2022-01-24 23:21:26'),
(555, 314, '1642833436Screenshot_8.png', 'Right', '2022-01-24 23:21:30', '2022-01-24 23:21:30'),
(556, 316, '1642833667bg-slide4.jpg', 'Right', '2022-01-24 23:21:41', '2022-01-24 23:21:41'),
(557, 316, '1642833667chevron-home-banner.jpg', 'Right', '2022-01-24 23:21:41', '2022-01-24 23:21:41'),
(558, 316, '1642833667cow-eating-1-scaled.jpeg', 'Right', '2022-01-24 23:21:41', '2022-01-24 23:21:41'),
(559, 316, '1642833667Chevron-house.jpg', 'Right', '2022-01-24 23:21:41', '2022-01-24 23:21:41'),
(560, 317, '01', 'Right', '2022-01-24 23:21:46', '2022-01-24 23:21:46'),
(561, 317, '02', 'Right', '2022-01-24 23:21:46', '2022-01-24 23:21:46'),
(562, 317, '03', 'Right', '2022-01-24 23:21:46', '2022-01-24 23:21:46'),
(563, 317, '04', 'Right', '2022-01-24 23:21:46', '2022-01-24 23:21:46'),
(564, 317, '05', 'Right', '2022-01-24 23:21:46', '2022-01-24 23:21:46'),
(565, 317, '06', 'Right', '2022-01-24 23:21:46', '2022-01-24 23:21:46'),
(566, 318, '001', 'Right', '2022-01-24 23:21:54', '2022-01-24 23:21:54'),
(567, 318, '002', 'Right', '2022-01-24 23:21:54', '2022-01-24 23:21:54'),
(568, 318, '003', 'Right', '2022-01-24 23:21:54', '2022-01-24 23:21:54'),
(569, 318, '004', 'Right', '2022-01-24 23:21:54', '2022-01-24 23:21:54'),
(570, 318, '005', 'Right', '2022-01-24 23:21:54', '2022-01-24 23:21:54'),
(571, 318, '006', 'Right', '2022-01-24 23:21:54', '2022-01-24 23:21:54'),
(572, 321, '<stdio.h>', 'Right', '2022-01-24 23:55:32', '2022-01-24 23:55:32'),
(573, 321, '<math.h>', 'Right', '2022-01-24 23:55:32', '2022-01-24 23:55:32'),
(574, 322, 'Can be called using the class name and function', 'Right', '2022-01-24 23:55:34', '2022-01-24 23:55:34'),
(575, 323, '1642833436Screenshot_8.png', 'Right', '2022-01-24 23:55:38', '2022-01-24 23:55:38'),
(576, 325, '1642833667bg-slide4.jpg', 'Right', '2022-01-24 23:55:52', '2022-01-24 23:55:52'),
(577, 325, '1642833667chevron-home-banner.jpg', 'Right', '2022-01-24 23:55:53', '2022-01-24 23:55:53'),
(578, 325, '1642833667cow-eating-1-scaled.jpeg', 'Right', '2022-01-24 23:55:53', '2022-01-24 23:55:53'),
(579, 325, '1642833667Chevron-house.jpg', 'Right', '2022-01-24 23:55:54', '2022-01-24 23:55:54'),
(580, 326, '01', 'Right', '2022-01-24 23:56:06', '2022-01-24 23:56:06'),
(581, 326, '02', 'Right', '2022-01-24 23:56:06', '2022-01-24 23:56:06'),
(582, 326, '03', 'Right', '2022-01-24 23:56:06', '2022-01-24 23:56:06'),
(583, 326, '04', 'Right', '2022-01-24 23:56:06', '2022-01-24 23:56:06'),
(584, 326, '05', 'Right', '2022-01-24 23:56:06', '2022-01-24 23:56:06'),
(585, 326, '06', 'Right', '2022-01-24 23:56:06', '2022-01-24 23:56:06'),
(586, 327, '001', 'Right', '2022-01-24 23:56:16', '2022-01-24 23:56:16'),
(587, 327, '002', 'Right', '2022-01-24 23:56:16', '2022-01-24 23:56:16'),
(588, 327, '003', 'Right', '2022-01-24 23:56:16', '2022-01-24 23:56:16'),
(589, 327, '004', 'Right', '2022-01-24 23:56:16', '2022-01-24 23:56:16'),
(590, 327, '005', 'Right', '2022-01-24 23:56:16', '2022-01-24 23:56:16'),
(591, 327, '006', 'Right', '2022-01-24 23:56:16', '2022-01-24 23:56:16'),
(592, 328, '4', 'Right', '2022-01-24 23:56:21', '2022-01-24 23:56:21'),
(593, 328, '8', 'Right', '2022-01-24 23:56:21', '2022-01-24 23:56:21'),
(594, 329, '4', 'Wrong', '2022-01-24 23:56:25', '2022-01-24 23:56:25'),
(595, 330, '8', 'Right', '2022-01-24 23:57:35', '2022-01-24 23:57:35'),
(596, 331, '<stdio.h>', 'Right', '2022-01-25 04:12:49', '2022-01-25 04:12:49'),
(597, 331, '<math.h>', 'Right', '2022-01-25 04:12:49', '2022-01-25 04:12:49'),
(598, 332, 'Can be called using the class name and function', 'Right', '2022-01-25 04:12:51', '2022-01-25 04:12:51'),
(599, 333, '1642833436Screenshot_8.png', 'Right', '2022-01-25 04:12:54', '2022-01-25 04:12:54'),
(600, 335, '1642833667bg-slide4.jpg', 'Right', '2022-01-25 04:13:05', '2022-01-25 04:13:05'),
(601, 335, '1642833667chevron-home-banner.jpg', 'Right', '2022-01-25 04:13:05', '2022-01-25 04:13:05'),
(602, 335, '1642833667cow-eating-1-scaled.jpeg', 'Right', '2022-01-25 04:13:05', '2022-01-25 04:13:05'),
(603, 335, '1642833667Chevron-house.jpg', 'Right', '2022-01-25 04:13:05', '2022-01-25 04:13:05'),
(604, 336, '01', 'Right', '2022-01-25 04:13:13', '2022-01-25 04:13:13'),
(605, 336, '02', 'Right', '2022-01-25 04:13:14', '2022-01-25 04:13:14'),
(606, 336, '03', 'Right', '2022-01-25 04:13:14', '2022-01-25 04:13:14'),
(607, 336, '04', 'Right', '2022-01-25 04:13:14', '2022-01-25 04:13:14'),
(608, 336, '05', 'Right', '2022-01-25 04:13:14', '2022-01-25 04:13:14'),
(609, 336, '06', 'Right', '2022-01-25 04:13:14', '2022-01-25 04:13:14'),
(610, 337, '001', 'Right', '2022-01-25 04:13:21', '2022-01-25 04:13:21'),
(611, 337, '002', 'Right', '2022-01-25 04:13:21', '2022-01-25 04:13:21'),
(612, 337, '003', 'Right', '2022-01-25 04:13:21', '2022-01-25 04:13:21'),
(613, 337, '004', 'Right', '2022-01-25 04:13:21', '2022-01-25 04:13:21'),
(614, 337, '005', 'Right', '2022-01-25 04:13:21', '2022-01-25 04:13:21'),
(615, 337, '006', 'Right', '2022-01-25 04:13:21', '2022-01-25 04:13:21'),
(616, 338, '4', 'Right', '2022-01-25 04:13:28', '2022-01-25 04:13:28'),
(617, 338, '8', 'Right', '2022-01-25 04:13:28', '2022-01-25 04:13:28'),
(618, 339, '8', 'Right', '2022-01-25 04:13:32', '2022-01-25 04:13:32'),
(619, 342, '1', 'Wrong', '2022-01-25 04:14:01', '2022-01-25 04:14:01'),
(620, 342, '2', 'Wrong', '2022-01-25 04:14:01', '2022-01-25 04:14:01'),
(621, 344, '<stdio.h>', 'Right', '2022-01-25 05:30:47', '2022-01-25 05:30:47'),
(622, 344, '<math.h>', 'Right', '2022-01-25 05:30:47', '2022-01-25 05:30:47'),
(623, 345, 'Can be called using the class name and function', 'Right', '2022-01-25 05:30:50', '2022-01-25 05:30:50'),
(624, 346, '1642833436Screenshot_8.png', 'Right', '2022-01-25 05:30:53', '2022-01-25 05:30:53'),
(625, 348, '1642833667bg-slide4.jpg', 'Right', '2022-01-25 05:31:32', '2022-01-25 05:31:32'),
(626, 348, '1642833667chevron-home-banner.jpg', 'Right', '2022-01-25 05:31:32', '2022-01-25 05:31:32'),
(627, 348, '1642833667cow-eating-1-scaled.jpeg', 'Right', '2022-01-25 05:31:32', '2022-01-25 05:31:32'),
(628, 348, '1642833667Chevron-house.jpg', 'Right', '2022-01-25 05:31:32', '2022-01-25 05:31:32'),
(629, 349, '01', 'Right', '2022-01-25 05:31:39', '2022-01-25 05:31:39'),
(630, 349, '02', 'Right', '2022-01-25 05:31:39', '2022-01-25 05:31:39'),
(631, 349, '03', 'Right', '2022-01-25 05:31:39', '2022-01-25 05:31:39'),
(632, 349, '04', 'Right', '2022-01-25 05:31:39', '2022-01-25 05:31:39'),
(633, 349, '05', 'Right', '2022-01-25 05:31:39', '2022-01-25 05:31:39'),
(634, 349, '06', 'Right', '2022-01-25 05:31:39', '2022-01-25 05:31:39'),
(635, 350, '001', 'Right', '2022-01-25 05:32:01', '2022-01-25 05:32:01'),
(636, 350, '002', 'Right', '2022-01-25 05:32:01', '2022-01-25 05:32:01'),
(637, 350, '003', 'Right', '2022-01-25 05:32:01', '2022-01-25 05:32:01'),
(638, 350, '004', 'Right', '2022-01-25 05:32:01', '2022-01-25 05:32:01'),
(639, 350, '005', 'Right', '2022-01-25 05:32:01', '2022-01-25 05:32:01'),
(640, 350, '006', 'Right', '2022-01-25 05:32:01', '2022-01-25 05:32:01'),
(641, 356, '2', 'Wrong', '2022-01-25 05:32:29', '2022-01-25 05:32:29'),
(642, 356, '1', 'Wrong', '2022-01-25 05:32:29', '2022-01-25 05:32:29'),
(643, 357, '1', 'Right', '2022-01-25 05:32:34', '2022-01-25 05:32:34'),
(644, 357, '2', 'Right', '2022-01-25 05:32:34', '2022-01-25 05:32:34'),
(645, 358, 'B', 'Right', '2022-01-25 22:28:51', '2022-01-25 22:28:51'),
(646, 358, 'C', 'Right', '2022-01-25 22:28:51', '2022-01-25 22:28:51'),
(647, 359, 'Can be called using the class name and function', 'Right', '2022-01-25 22:28:53', '2022-01-25 22:28:53'),
(648, 360, '1642833436Screenshot_8.png', 'Right', '2022-01-25 22:28:57', '2022-01-25 22:28:57');
INSERT INTO `quiz_answer_options` (`id`, `quiz_answer_id`, `question_answer`, `answer`, `created_at`, `updated_at`) VALUES
(649, 361, 'yellow', 'Right', '2022-01-25 22:29:44', '2022-01-25 22:29:44'),
(650, 361, '8', 'Right', '2022-01-25 22:29:44', '2022-01-25 22:29:44'),
(651, 361, 'green', 'Right', '2022-01-25 22:29:44', '2022-01-25 22:29:44'),
(652, 362, '1642833667bg-slide4.jpg', 'Right', '2022-01-25 22:29:52', '2022-01-25 22:29:52'),
(653, 362, '1642833667chevron-home-banner.jpg', 'Right', '2022-01-25 22:29:52', '2022-01-25 22:29:52'),
(654, 362, '1642833667cow-eating-1-scaled.jpeg', 'Right', '2022-01-25 22:29:52', '2022-01-25 22:29:52'),
(655, 362, '1642833667Chevron-house.jpg', 'Right', '2022-01-25 22:29:52', '2022-01-25 22:29:52'),
(656, 363, '01', 'Right', '2022-01-25 22:30:02', '2022-01-25 22:30:02'),
(657, 363, '02', 'Right', '2022-01-25 22:30:02', '2022-01-25 22:30:02'),
(658, 363, '03', 'Right', '2022-01-25 22:30:02', '2022-01-25 22:30:02'),
(659, 363, '04', 'Right', '2022-01-25 22:30:02', '2022-01-25 22:30:02'),
(660, 363, '05', 'Right', '2022-01-25 22:30:02', '2022-01-25 22:30:02'),
(661, 363, '06', 'Right', '2022-01-25 22:30:02', '2022-01-25 22:30:02'),
(662, 364, '001', 'Right', '2022-01-25 22:30:09', '2022-01-25 22:30:09'),
(663, 364, '002', 'Right', '2022-01-25 22:30:09', '2022-01-25 22:30:09'),
(664, 364, '003', 'Right', '2022-01-25 22:30:09', '2022-01-25 22:30:09'),
(665, 364, '004', 'Right', '2022-01-25 22:30:09', '2022-01-25 22:30:09'),
(666, 364, '005', 'Right', '2022-01-25 22:30:09', '2022-01-25 22:30:09'),
(667, 364, '006', 'Right', '2022-01-25 22:30:09', '2022-01-25 22:30:09'),
(668, 371, 'B', 'Right', '2022-01-25 23:19:00', '2022-01-25 23:19:00'),
(669, 371, 'C', 'Right', '2022-01-25 23:19:00', '2022-01-25 23:19:00'),
(670, 372, 'Can be called using the class name and function', 'Right', '2022-01-25 23:19:03', '2022-01-25 23:19:03'),
(671, 373, '1642833436Screenshot_8.png', 'Right', '2022-01-25 23:19:06', '2022-01-25 23:19:06'),
(672, 374, 'yellow', 'Right', '2022-01-25 23:19:13', '2022-01-25 23:19:13'),
(673, 374, '8', 'Right', '2022-01-25 23:19:13', '2022-01-25 23:19:13'),
(674, 374, 'green', 'Right', '2022-01-25 23:19:13', '2022-01-25 23:19:13'),
(675, 375, '1642833667bg-slide4.jpg', 'Right', '2022-01-25 23:19:20', '2022-01-25 23:19:20'),
(676, 375, '1642833667chevron-home-banner.jpg', 'Right', '2022-01-25 23:19:20', '2022-01-25 23:19:20'),
(677, 375, '1642833667cow-eating-1-scaled.jpeg', 'Right', '2022-01-25 23:19:20', '2022-01-25 23:19:20'),
(678, 375, '1642833667Chevron-house.jpg', 'Right', '2022-01-25 23:19:20', '2022-01-25 23:19:20'),
(679, 376, '01', 'Right', '2022-01-25 23:19:29', '2022-01-25 23:19:29'),
(680, 376, '02', 'Right', '2022-01-25 23:19:29', '2022-01-25 23:19:29'),
(681, 376, '03', 'Right', '2022-01-25 23:19:29', '2022-01-25 23:19:29'),
(682, 376, '04', 'Right', '2022-01-25 23:19:29', '2022-01-25 23:19:29'),
(683, 376, '05', 'Right', '2022-01-25 23:19:29', '2022-01-25 23:19:29'),
(684, 376, '06', 'Right', '2022-01-25 23:19:29', '2022-01-25 23:19:29'),
(685, 377, '001', 'Right', '2022-01-25 23:19:37', '2022-01-25 23:19:37'),
(686, 377, '002', 'Right', '2022-01-25 23:19:37', '2022-01-25 23:19:37'),
(687, 377, '003', 'Right', '2022-01-25 23:19:37', '2022-01-25 23:19:37'),
(688, 377, '004', 'Right', '2022-01-25 23:19:37', '2022-01-25 23:19:37'),
(689, 377, '005', 'Right', '2022-01-25 23:19:37', '2022-01-25 23:19:37'),
(690, 377, '006', 'Right', '2022-01-25 23:19:37', '2022-01-25 23:19:37'),
(691, 383, '1', 'Right', '2022-01-25 23:20:11', '2022-01-25 23:20:11'),
(692, 383, '2', 'Right', '2022-01-25 23:20:11', '2022-01-25 23:20:11'),
(693, 384, 'B', 'Right', '2022-01-25 23:25:19', '2022-01-25 23:25:19'),
(694, 384, 'C', 'Right', '2022-01-25 23:25:19', '2022-01-25 23:25:19'),
(695, 385, 'Can be called using the class name and function', 'Right', '2022-01-25 23:25:22', '2022-01-25 23:25:22'),
(696, 386, '1642833436Screenshot_8.png', 'Right', '2022-01-25 23:25:25', '2022-01-25 23:25:25'),
(697, 387, 'yellow', 'Right', '2022-01-25 23:25:31', '2022-01-25 23:25:31'),
(698, 387, '8', 'Right', '2022-01-25 23:25:31', '2022-01-25 23:25:31'),
(699, 387, 'green', 'Right', '2022-01-25 23:25:31', '2022-01-25 23:25:31'),
(700, 388, '1642833667bg-slide4.jpg', 'Right', '2022-01-25 23:25:37', '2022-01-25 23:25:37'),
(701, 388, '1642833667chevron-home-banner.jpg', 'Right', '2022-01-25 23:25:37', '2022-01-25 23:25:37'),
(702, 388, '1642833667cow-eating-1-scaled.jpeg', 'Right', '2022-01-25 23:25:37', '2022-01-25 23:25:37'),
(703, 388, '1642833667Chevron-house.jpg', 'Right', '2022-01-25 23:25:37', '2022-01-25 23:25:37'),
(704, 389, '01', 'Right', '2022-01-25 23:25:46', '2022-01-25 23:25:46'),
(705, 389, '02', 'Right', '2022-01-25 23:25:46', '2022-01-25 23:25:46'),
(706, 389, '03', 'Right', '2022-01-25 23:25:46', '2022-01-25 23:25:46'),
(707, 389, '04', 'Right', '2022-01-25 23:25:46', '2022-01-25 23:25:46'),
(708, 389, '05', 'Right', '2022-01-25 23:25:46', '2022-01-25 23:25:46'),
(709, 389, '06', 'Right', '2022-01-25 23:25:46', '2022-01-25 23:25:46'),
(710, 390, '001', 'Right', '2022-01-25 23:25:57', '2022-01-25 23:25:57'),
(711, 390, '002', 'Right', '2022-01-25 23:25:57', '2022-01-25 23:25:57'),
(712, 390, '003', 'Right', '2022-01-25 23:25:57', '2022-01-25 23:25:57'),
(713, 390, '004', 'Right', '2022-01-25 23:25:57', '2022-01-25 23:25:57'),
(714, 390, '005', 'Right', '2022-01-25 23:25:57', '2022-01-25 23:25:57'),
(715, 390, '006', 'Right', '2022-01-25 23:25:57', '2022-01-25 23:25:57'),
(716, 396, '1', 'Right', '2022-01-25 23:27:42', '2022-01-25 23:27:42'),
(717, 396, '2', 'Right', '2022-01-25 23:27:42', '2022-01-25 23:27:42'),
(718, 397, 'B', 'Right', '2022-01-25 23:27:56', '2022-01-25 23:27:56'),
(719, 397, 'C', 'Right', '2022-01-25 23:27:56', '2022-01-25 23:27:56'),
(720, 398, 'Can be called using the class name and function', 'Right', '2022-01-25 23:27:58', '2022-01-25 23:27:58'),
(721, 399, '1642833436Screenshot_8.png', 'Right', '2022-01-25 23:28:01', '2022-01-25 23:28:01'),
(722, 400, 'yellow', 'Right', '2022-01-25 23:28:06', '2022-01-25 23:28:06'),
(723, 400, '8', 'Right', '2022-01-25 23:28:06', '2022-01-25 23:28:06'),
(724, 400, 'green', 'Right', '2022-01-25 23:28:06', '2022-01-25 23:28:06'),
(725, 401, '1642833667bg-slide4.jpg', 'Right', '2022-01-25 23:28:12', '2022-01-25 23:28:12'),
(726, 401, '1642833667chevron-home-banner.jpg', 'Right', '2022-01-25 23:28:12', '2022-01-25 23:28:12'),
(727, 401, '1642833667cow-eating-1-scaled.jpeg', 'Right', '2022-01-25 23:28:12', '2022-01-25 23:28:12'),
(728, 401, '1642833667Chevron-house.jpg', 'Right', '2022-01-25 23:28:12', '2022-01-25 23:28:12'),
(729, 402, '01', 'Right', '2022-01-25 23:28:21', '2022-01-25 23:28:21'),
(730, 402, '02', 'Right', '2022-01-25 23:28:21', '2022-01-25 23:28:21'),
(731, 402, '03', 'Right', '2022-01-25 23:28:21', '2022-01-25 23:28:21'),
(732, 402, '04', 'Right', '2022-01-25 23:28:21', '2022-01-25 23:28:21'),
(733, 402, '05', 'Right', '2022-01-25 23:28:21', '2022-01-25 23:28:21'),
(734, 402, '06', 'Right', '2022-01-25 23:28:21', '2022-01-25 23:28:21'),
(735, 403, '001', 'Right', '2022-01-25 23:28:29', '2022-01-25 23:28:29'),
(736, 403, '002', 'Right', '2022-01-25 23:28:29', '2022-01-25 23:28:29'),
(737, 403, '003', 'Right', '2022-01-25 23:28:29', '2022-01-25 23:28:29'),
(738, 403, '004', 'Right', '2022-01-25 23:28:29', '2022-01-25 23:28:29'),
(739, 403, '005', 'Right', '2022-01-25 23:28:29', '2022-01-25 23:28:29'),
(740, 403, '006', 'Right', '2022-01-25 23:28:29', '2022-01-25 23:28:29'),
(741, 409, '1', 'Right', '2022-01-25 23:29:30', '2022-01-25 23:29:30'),
(742, 409, '2', 'Right', '2022-01-25 23:29:30', '2022-01-25 23:29:30'),
(743, 410, 'B', 'Right', '2022-01-25 23:39:04', '2022-01-25 23:39:04'),
(744, 410, 'C', 'Right', '2022-01-25 23:39:04', '2022-01-25 23:39:04'),
(745, 411, 'Can be called using the class name and function', 'Right', '2022-01-25 23:39:07', '2022-01-25 23:39:07'),
(746, 412, '1642833436Screenshot_8.png', 'Right', '2022-01-25 23:39:11', '2022-01-25 23:39:11'),
(747, 413, 'yellow', 'Right', '2022-01-25 23:39:15', '2022-01-25 23:39:15'),
(748, 413, '8', 'Right', '2022-01-25 23:39:15', '2022-01-25 23:39:15'),
(749, 413, 'green', 'Right', '2022-01-25 23:39:15', '2022-01-25 23:39:15'),
(750, 414, '1642833667bg-slide4.jpg', 'Right', '2022-01-25 23:39:24', '2022-01-25 23:39:24'),
(751, 414, '1642833667chevron-home-banner.jpg', 'Right', '2022-01-25 23:39:24', '2022-01-25 23:39:24'),
(752, 414, '1642833667cow-eating-1-scaled.jpeg', 'Right', '2022-01-25 23:39:24', '2022-01-25 23:39:24'),
(753, 414, '1642833667Chevron-house.jpg', 'Right', '2022-01-25 23:39:24', '2022-01-25 23:39:24'),
(754, 415, '01', 'Right', '2022-01-25 23:39:35', '2022-01-25 23:39:35'),
(755, 415, '02', 'Right', '2022-01-25 23:39:35', '2022-01-25 23:39:35'),
(756, 415, '03', 'Right', '2022-01-25 23:39:35', '2022-01-25 23:39:35'),
(757, 415, '04', 'Right', '2022-01-25 23:39:35', '2022-01-25 23:39:35'),
(758, 415, '05', 'Right', '2022-01-25 23:39:35', '2022-01-25 23:39:35'),
(759, 415, '06', 'Right', '2022-01-25 23:39:35', '2022-01-25 23:39:35'),
(760, 416, '001', 'Right', '2022-01-25 23:39:45', '2022-01-25 23:39:45'),
(761, 416, '002', 'Right', '2022-01-25 23:39:45', '2022-01-25 23:39:45'),
(762, 416, '003', 'Right', '2022-01-25 23:39:46', '2022-01-25 23:39:46'),
(763, 416, '004', 'Right', '2022-01-25 23:39:46', '2022-01-25 23:39:46'),
(764, 416, '005', 'Right', '2022-01-25 23:39:46', '2022-01-25 23:39:46'),
(765, 416, '006', 'Right', '2022-01-25 23:39:46', '2022-01-25 23:39:46'),
(766, 422, '1', 'Right', '2022-01-25 23:40:03', '2022-01-25 23:40:03'),
(767, 422, '2', 'Right', '2022-01-25 23:40:03', '2022-01-25 23:40:03'),
(768, 423, 'B', 'Right', '2022-01-25 23:46:59', '2022-01-25 23:46:59'),
(769, 423, 'C', 'Right', '2022-01-25 23:46:59', '2022-01-25 23:46:59'),
(770, 424, 'Can be called using the class name and function', 'Right', '2022-01-25 23:47:01', '2022-01-25 23:47:01'),
(771, 425, '1642833436Screenshot_8.png', 'Right', '2022-01-25 23:47:04', '2022-01-25 23:47:04'),
(772, 426, 'yellow', 'Right', '2022-01-25 23:47:11', '2022-01-25 23:47:11'),
(773, 426, '8', 'Right', '2022-01-25 23:47:11', '2022-01-25 23:47:11'),
(774, 426, 'green', 'Right', '2022-01-25 23:47:11', '2022-01-25 23:47:11'),
(775, 427, '1642833667bg-slide4.jpg', 'Right', '2022-01-25 23:47:19', '2022-01-25 23:47:19'),
(776, 427, '1642833667chevron-home-banner.jpg', 'Right', '2022-01-25 23:47:19', '2022-01-25 23:47:19'),
(777, 427, '1642833667cow-eating-1-scaled.jpeg', 'Right', '2022-01-25 23:47:19', '2022-01-25 23:47:19'),
(778, 427, '1642833667Chevron-house.jpg', 'Right', '2022-01-25 23:47:19', '2022-01-25 23:47:19'),
(779, 428, '01', 'Right', '2022-01-25 23:47:29', '2022-01-25 23:47:29'),
(780, 428, '02', 'Right', '2022-01-25 23:47:29', '2022-01-25 23:47:29'),
(781, 428, '03', 'Right', '2022-01-25 23:47:29', '2022-01-25 23:47:29'),
(782, 428, '04', 'Right', '2022-01-25 23:47:29', '2022-01-25 23:47:29'),
(783, 428, '05', 'Right', '2022-01-25 23:47:29', '2022-01-25 23:47:29'),
(784, 428, '06', 'Right', '2022-01-25 23:47:29', '2022-01-25 23:47:29'),
(785, 429, '001', 'Right', '2022-01-25 23:47:39', '2022-01-25 23:47:39'),
(786, 429, '002', 'Right', '2022-01-25 23:47:39', '2022-01-25 23:47:39'),
(787, 429, '003', 'Right', '2022-01-25 23:47:39', '2022-01-25 23:47:39'),
(788, 429, '004', 'Right', '2022-01-25 23:47:39', '2022-01-25 23:47:39'),
(789, 429, '005', 'Right', '2022-01-25 23:47:39', '2022-01-25 23:47:39'),
(790, 429, '006', 'Right', '2022-01-25 23:47:39', '2022-01-25 23:47:39'),
(791, 435, '1', 'Right', '2022-01-25 23:47:53', '2022-01-25 23:47:53'),
(792, 435, '2', 'Right', '2022-01-25 23:47:53', '2022-01-25 23:47:53'),
(793, 436, 'B', 'Right', '2022-01-26 00:39:41', '2022-01-26 00:39:41'),
(794, 436, 'C', 'Right', '2022-01-26 00:39:41', '2022-01-26 00:39:41'),
(795, 449, 'B', 'Right', '2022-01-26 01:14:21', '2022-01-26 01:14:21'),
(796, 449, 'C', 'Right', '2022-01-26 01:14:21', '2022-01-26 01:14:21'),
(797, 450, 'Can be called using the class name and function', 'Right', '2022-01-26 01:14:23', '2022-01-26 01:14:23'),
(798, 451, '1642833436Screenshot_8.png', 'Right', '2022-01-26 01:14:26', '2022-01-26 01:14:26'),
(799, 452, 'yellow', 'Right', '2022-01-26 01:14:31', '2022-01-26 01:14:31'),
(800, 452, '8', 'Right', '2022-01-26 01:14:31', '2022-01-26 01:14:31'),
(801, 452, 'green', 'Right', '2022-01-26 01:14:31', '2022-01-26 01:14:31'),
(802, 453, '1642833667bg-slide4.jpg', 'Right', '2022-01-26 01:14:36', '2022-01-26 01:14:36'),
(803, 453, '1642833667chevron-home-banner.jpg', 'Right', '2022-01-26 01:14:36', '2022-01-26 01:14:36'),
(804, 453, '1642833667cow-eating-1-scaled.jpeg', 'Right', '2022-01-26 01:14:36', '2022-01-26 01:14:36'),
(805, 453, '1642833667Chevron-house.jpg', 'Right', '2022-01-26 01:14:36', '2022-01-26 01:14:36'),
(806, 454, '01', 'Right', '2022-01-26 01:14:45', '2022-01-26 01:14:45'),
(807, 454, '02', 'Right', '2022-01-26 01:14:45', '2022-01-26 01:14:45'),
(808, 454, '03', 'Right', '2022-01-26 01:14:45', '2022-01-26 01:14:45'),
(809, 454, '04', 'Right', '2022-01-26 01:14:45', '2022-01-26 01:14:45'),
(810, 454, '05', 'Right', '2022-01-26 01:14:45', '2022-01-26 01:14:45'),
(811, 454, '06', 'Right', '2022-01-26 01:14:45', '2022-01-26 01:14:45'),
(812, 455, '001', 'Right', '2022-01-26 01:14:56', '2022-01-26 01:14:56'),
(813, 455, '002', 'Right', '2022-01-26 01:14:56', '2022-01-26 01:14:56'),
(814, 455, '003', 'Right', '2022-01-26 01:14:56', '2022-01-26 01:14:56'),
(815, 455, '004', 'Right', '2022-01-26 01:14:56', '2022-01-26 01:14:56'),
(816, 455, '005', 'Right', '2022-01-26 01:14:56', '2022-01-26 01:14:56'),
(817, 455, '006', 'Right', '2022-01-26 01:14:56', '2022-01-26 01:14:56');

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
(1, 2, 2, NULL, '2022-01-11 04:46:14', 'Yes', 1, 50.00, '2022-01-11 06:27:44', 'No', 'No', '00:01:10', 'Finished', '2022-01-10 22:46:14', '2022-01-15 21:42:57'),
(2, 1, 1, NULL, '2022-01-11 04:46:24', 'No', 0, 0.00, NULL, 'No', 'Yes', NULL, 'Start', '2022-01-10 22:46:24', '2022-01-10 22:46:24'),
(3, 2, 2, 1, '2022-01-11 04:56:38', 'No', 0, 0.00, NULL, 'No', 'Yes', NULL, 'Start', '2022-01-10 22:56:38', '2022-01-10 22:56:38'),
(4, 1, 1, 2, '2022-01-11 05:01:24', 'No', 0, 0.00, NULL, 'No', 'Yes', NULL, 'Start', '2022-01-10 23:01:24', '2022-01-10 23:01:24'),
(5, 3, 3, 3, '2022-01-11 08:25:43', 'No', 0, 0.00, NULL, 'No', 'Yes', NULL, 'Start', '2022-01-11 02:25:43', '2022-01-11 02:25:43'),
(6, 4, 4, 4, '2022-01-11 08:30:50', 'No', 0, 0.00, NULL, 'No', 'Yes', NULL, 'Start', '2022-01-11 02:30:50', '2022-01-11 02:30:50'),
(7, 4, 4, NULL, '2022-01-11 09:09:02', 'No', 0, 0.00, NULL, 'No', 'Yes', NULL, 'Start', '2022-01-11 03:09:02', '2022-01-11 03:09:02'),
(8, 4, 4, 5, '2022-01-11 11:46:24', 'No', 0, 0.00, NULL, 'No', 'Yes', NULL, 'Start', '2022-01-11 05:46:24', '2022-01-11 05:46:24'),
(9, 3, 3, 6, '2022-01-11 11:49:54', 'No', 0, 0.00, NULL, 'No', 'Yes', NULL, 'Start', '2022-01-11 05:49:54', '2022-01-11 05:49:54'),
(10, 2, 2, NULL, '0000-00-00 00:00:00', 'Yes', 1, 0.00, '2022-01-16 03:42:57', 'Yes', 'No', '00:04:07', 'Finished', '2022-01-15 21:42:57', '2022-01-18 04:31:36'),
(11, 2, 2, NULL, '0000-00-00 00:00:00', 'Yes', 1, 25.00, '2022-01-16 03:53:47', 'Yes', 'No', '00:04:35', 'Finished', '2022-01-15 21:53:47', '2022-01-15 22:00:49'),
(12, 2, 2, NULL, '0000-00-00 00:00:00', 'Yes', 1, 33.33, '2022-01-16 04:00:49', 'Yes', 'No', '00:04:03', 'Finished', '2022-01-15 22:00:49', '2022-01-15 22:02:40'),
(13, 2, 2, NULL, '0000-00-00 00:00:00', 'Yes', 1, 33.33, '2022-01-16 04:02:40', 'Yes', 'No', '00:04:03', 'Finished', '2022-01-15 22:02:40', '2022-01-15 22:03:59'),
(14, 2, 2, NULL, '0000-00-00 00:00:00', 'Yes', 1, 66.67, '2022-01-16 04:03:59', 'Yes', 'No', '00:15:30', 'Finished', '2022-01-15 22:03:59', '2022-01-15 22:11:46'),
(15, 2, 2, NULL, '0000-00-00 00:00:00', 'Yes', 1, 66.67, '2022-01-16 04:11:46', 'Yes', 'Yes', '00:02:08', 'Finished', '2022-01-15 22:11:46', '2022-01-15 22:12:00'),
(16, 2, 2, NULL, '0000-00-00 00:00:00', 'Yes', 1, 66.67, '2022-01-16 05:04:00', 'Yes', 'Yes', '00:03:16', 'Finished', '2022-01-15 23:04:00', '2022-01-15 23:04:52'),
(17, 2, 2, NULL, '0000-00-00 00:00:00', 'Yes', 1, 50.00, '2022-01-16 07:11:58', 'Yes', 'No', '00:04:08', 'Finished', '2022-01-16 01:11:58', '2022-01-18 05:24:03'),
(18, 2, 2, NULL, '0000-00-00 00:00:00', 'Yes', 1, 50.00, '2022-01-16 07:28:12', 'Yes', 'No', '00:04:06', 'Finished', '2022-01-16 01:28:12', '2022-01-16 01:32:02'),
(19, 2, 2, NULL, '0000-00-00 00:00:00', 'Yes', 1, 50.00, '2022-01-16 07:32:02', 'Yes', 'No', '00:04:05', 'Finished', '2022-01-16 01:32:02', '2022-01-16 01:43:37'),
(20, 2, 2, NULL, '0000-00-00 00:00:00', 'Yes', 1, 50.00, '2022-01-16 07:43:37', 'Yes', 'No', '00:04:05', 'Finished', '2022-01-16 01:43:37', '2022-01-16 01:45:46'),
(21, 2, 2, NULL, '0000-00-00 00:00:00', 'Yes', 1, 50.00, '2022-01-16 07:45:46', 'Yes', 'No', '00:04:08', 'Finished', '2022-01-16 01:45:46', '2022-01-16 01:46:30'),
(22, 2, 2, NULL, '0000-00-00 00:00:00', 'Yes', 1, 50.00, '2022-01-16 07:46:30', 'Yes', 'No', '00:04:07', 'Finished', '2022-01-16 01:46:30', '2022-01-16 01:51:16'),
(23, 2, 2, NULL, '0000-00-00 00:00:00', 'Yes', 1, 50.00, '2022-01-16 07:51:16', 'Yes', 'No', '00:04:06', 'Finished', '2022-01-16 01:51:16', '2022-01-16 01:55:04'),
(24, 2, 2, NULL, '0000-00-00 00:00:00', 'Yes', 1, 50.00, '2022-01-16 07:55:04', 'Yes', 'No', '00:04:06', 'Finished', '2022-01-16 01:55:04', '2022-01-16 02:00:03'),
(25, 2, 2, NULL, '0000-00-00 00:00:00', 'Yes', 1, 50.00, '2022-01-16 08:00:03', 'Yes', 'No', '00:04:06', 'Finished', '2022-01-16 02:00:03', '2022-01-16 02:10:27'),
(26, 2, 2, NULL, '0000-00-00 00:00:00', 'Yes', 1, 50.00, '2022-01-16 08:10:27', 'Yes', 'No', '00:04:06', 'Finished', '2022-01-16 02:10:27', '2022-01-16 02:12:37'),
(27, 2, 2, NULL, '0000-00-00 00:00:00', 'Yes', 1, 50.00, '2022-01-16 08:12:37', 'Yes', 'Yes', '00:04:19', 'Finished', '2022-01-16 02:12:37', '2022-01-16 02:14:07'),
(28, 2, 2, NULL, '0000-00-00 00:00:00', 'Yes', 1, 50.00, '2022-01-16 09:25:46', 'Yes', 'No', '00:04:10', 'Finished', '2022-01-16 03:25:46', '2022-01-16 03:31:57'),
(29, 2, 2, NULL, '0000-00-00 00:00:00', 'Yes', 1, 50.00, '2022-01-16 09:31:57', 'Yes', 'No', '00:04:05', 'Finished', '2022-01-16 03:31:57', '2022-01-16 03:39:55'),
(30, 2, 2, NULL, '0000-00-00 00:00:00', 'Yes', 1, 50.00, '2022-01-16 09:39:55', 'Yes', 'No', '00:04:04', 'Finished', '2022-01-16 03:39:55', '2022-01-16 03:42:05'),
(31, 2, 2, NULL, '0000-00-00 00:00:00', 'Yes', 1, 50.00, '2022-01-16 09:42:06', 'Yes', 'No', '00:04:05', 'Finished', '2022-01-16 03:42:06', '2022-01-16 03:46:07'),
(32, 2, 2, NULL, '0000-00-00 00:00:00', 'Yes', 1, 50.00, '2022-01-16 09:46:07', 'Yes', 'Yes', '00:04:08', 'Running', '2022-01-16 03:46:07', '2022-01-16 03:46:23'),
(33, 2, 2, NULL, '0000-00-00 00:00:00', 'Yes', 1, 75.00, '2022-01-16 10:50:15', 'Yes', 'No', '00:06:09', 'Finished', '2022-01-16 04:50:15', '2022-01-16 05:02:23'),
(34, 2, 2, NULL, '0000-00-00 00:00:00', 'Yes', 1, 50.00, '2022-01-16 11:02:23', 'Yes', 'No', '00:04:06', 'Finished', '2022-01-16 05:02:23', '2022-01-16 05:04:36'),
(35, 2, 2, NULL, '0000-00-00 00:00:00', 'Yes', 1, 50.00, '2022-01-16 11:04:36', 'Yes', 'Yes', '00:04:21', 'Finished', '2022-01-16 05:04:36', '2022-01-16 05:06:27'),
(36, 2, 2, NULL, '0000-00-00 00:00:00', 'Yes', 1, 50.00, '2022-01-17 04:53:06', 'Yes', 'Yes', '00:04:08', 'Finished', '2022-01-16 22:53:06', '2022-01-16 22:53:44'),
(37, 2, 2, NULL, '0000-00-00 00:00:00', 'Yes', 1, 50.00, '2022-01-17 05:13:29', 'Yes', 'No', '00:04:08', 'Finished', '2022-01-16 23:13:29', '2022-01-16 23:29:01'),
(38, 2, 2, NULL, '0000-00-00 00:00:00', 'Yes', 1, 50.00, '2022-01-17 05:29:01', 'Yes', 'Yes', '00:04:09', 'Finished', '2022-01-16 23:29:01', '2022-01-16 23:30:08'),
(39, 2, 2, NULL, '0000-00-00 00:00:00', 'Yes', 1, 60.00, '2022-01-17 06:11:27', 'Yes', 'Yes', '00:04:38', 'Finished', '2022-01-17 00:11:27', '2022-01-17 00:13:14'),
(40, 2, 2, NULL, '0000-00-00 00:00:00', 'Yes', 1, 60.00, '2022-01-17 07:56:15', 'Yes', 'No', '00:04:13', 'Finished', '2022-01-17 01:56:15', '2022-01-17 02:04:23'),
(41, 2, 2, NULL, '0000-00-00 00:00:00', 'Yes', 1, 60.00, '2022-01-17 08:04:23', 'Yes', 'No', '00:04:09', 'Finished', '2022-01-17 02:04:23', '2022-01-17 02:11:06'),
(42, 2, 2, NULL, '0000-00-00 00:00:00', 'Yes', 1, 60.00, '2022-01-17 08:11:06', 'Yes', 'No', '00:04:10', 'Finished', '2022-01-17 02:11:06', '2022-01-17 02:14:03'),
(43, 2, 2, NULL, '0000-00-00 00:00:00', 'Yes', 1, 80.00, '2022-01-17 08:14:03', 'Yes', 'Yes', '00:00:00', 'Finished', '2022-01-17 02:14:03', '2022-01-17 02:16:22'),
(44, 2, 2, NULL, '0000-00-00 00:00:00', 'Yes', 1, 100.00, '2022-01-17 10:15:48', 'Yes', 'Yes', '00:00:12', 'Finished', '2022-01-17 04:15:48', '2022-01-17 04:16:09'),
(45, 2, 2, NULL, '0000-00-00 00:00:00', 'Yes', 1, 25.00, '2022-01-17 11:15:02', 'Yes', 'No', '00:06:25', 'Finished', '2022-01-17 05:15:02', '2022-01-17 05:26:42'),
(46, 2, 2, NULL, '0000-00-00 00:00:00', 'Yes', 1, 100.00, '2022-01-17 11:26:42', 'Yes', 'Yes', '00:00:48', 'Finished', '2022-01-17 05:26:42', '2022-01-17 05:27:40'),
(47, 2, 2, NULL, '0000-00-00 00:00:00', 'Yes', 1, 80.00, '2022-01-18 06:27:19', 'Yes', 'No', '00:02:35', 'Finished', '2022-01-18 00:27:19', '2022-01-18 00:28:34'),
(48, 2, 2, NULL, '0000-00-00 00:00:00', 'Yes', 1, 66.67, '2022-01-18 06:28:34', 'Yes', 'No', '00:02:50', 'Finished', '2022-01-18 00:28:34', '2022-01-18 00:29:42'),
(49, 2, 2, NULL, '0000-00-00 00:00:00', 'Yes', 1, 57.14, '2022-01-18 06:29:42', 'Yes', 'Yes', '00:02:58', 'Finished', '2022-01-18 00:29:42', '2022-01-18 00:31:16'),
(50, 2, 2, NULL, '0000-00-00 00:00:00', 'Yes', 1, 80.00, '2022-01-18 07:57:17', 'Yes', 'No', '00:02:27', 'Finished', '2022-01-18 01:57:17', '2022-01-18 01:58:20'),
(51, 2, 2, NULL, '0000-00-00 00:00:00', 'Yes', 1, 80.00, '2022-01-18 07:58:20', 'Yes', 'Yes', '00:02:21', 'Finished', '2022-01-18 01:58:20', '2022-01-18 02:00:12'),
(52, 2, 2, NULL, '0000-00-00 00:00:00', 'Yes', 1, 100.00, '2022-01-18 08:30:58', 'Yes', 'Yes', '00:00:49', 'Finished', '2022-01-18 02:30:58', '2022-01-18 02:31:56'),
(53, 2, 2, NULL, '0000-00-00 00:00:00', 'Yes', 1, 80.00, '2022-01-18 10:31:36', 'Yes', 'No', '00:02:21', 'Finished', '2022-01-18 04:31:36', '2022-01-18 04:34:07'),
(54, 2, 2, NULL, '0000-00-00 00:00:00', 'Yes', 1, 100.00, '2022-01-18 10:34:07', 'Yes', 'No', '00:00:43', 'Finished', '2022-01-18 04:34:07', '2022-01-18 04:35:09'),
(55, 2, 2, NULL, '0000-00-00 00:00:00', 'Yes', 1, 66.67, '2022-01-18 10:35:09', 'Yes', 'No', '00:00:00', 'Finished', '2022-01-18 04:35:09', '2022-01-18 04:50:41'),
(56, 2, 2, NULL, '0000-00-00 00:00:00', 'Yes', 1, 66.67, '2022-01-18 10:50:41', 'Yes', 'No', '00:00:00', 'Finished', '2022-01-18 04:50:41', '2022-01-18 04:55:00'),
(57, 2, 2, NULL, '0000-00-00 00:00:00', 'Yes', 1, 55.56, '2022-01-18 10:55:00', 'Yes', 'Yes', '00:00:39', 'Finished', '2022-01-18 04:55:00', '2022-01-18 04:57:15'),
(58, 2, 2, NULL, '0000-00-00 00:00:00', 'Yes', 1, 0.00, '2022-01-18 11:24:03', 'Yes', 'Yes', '00:04:00', 'Running', '2022-01-18 05:24:03', '2022-01-18 05:24:09'),
(59, 2, 2, NULL, '0000-00-00 00:00:00', 'Yes', 1, 33.33, '2022-01-18 11:24:32', 'Yes', 'No', '00:06:37', 'Finished', '2022-01-18 05:24:32', '2022-01-18 05:30:13'),
(60, 2, 2, NULL, '0000-00-00 00:00:00', 'Yes', 1, 100.00, '2022-01-18 11:30:13', 'Yes', 'No', '00:00:00', 'Finished', '2022-01-18 05:30:13', '2022-01-18 05:32:51'),
(61, 2, 2, NULL, '0000-00-00 00:00:00', 'Yes', 1, 100.00, '2022-01-18 11:32:51', 'Yes', 'No', '00:02:26', 'Finished', '2022-01-18 05:32:51', '2022-01-18 05:35:33'),
(62, 2, 2, NULL, '0000-00-00 00:00:00', 'Yes', 1, 100.00, '2022-01-18 11:35:33', 'Yes', 'No', '00:02:52', 'Finished', '2022-01-18 05:35:33', '2022-01-18 05:39:17'),
(63, 2, 2, NULL, '0000-00-00 00:00:00', 'Yes', 1, 100.00, '2022-01-18 11:39:17', 'Yes', 'No', '00:01:27', 'Finished', '2022-01-18 05:39:17', '2022-01-18 05:41:43'),
(64, 2, 2, NULL, '0000-00-00 00:00:00', 'Yes', 1, 100.00, '2022-01-18 11:41:43', 'Yes', 'Yes', '00:00:41', 'Finished', '2022-01-18 05:41:43', '2022-01-18 05:42:33'),
(65, 2, 6, NULL, '2022-01-22 06:59:31', 'Yes', 1, 100.00, '2022-01-24 04:56:00', 'No', 'No', '00:05:13', 'Finished', '2022-01-22 00:59:31', '2022-01-24 04:26:13'),
(66, 2, 6, NULL, '0000-00-00 00:00:00', 'Yes', 1, 66.67, '2022-01-24 10:26:13', 'Yes', 'No', '00:07:24', 'Finished', '2022-01-24 04:26:13', '2022-01-24 04:38:24'),
(67, 2, 6, NULL, '0000-00-00 00:00:00', 'Yes', 1, 60.00, '2022-01-24 10:38:24', 'Yes', 'No', '00:00:00', 'Finished', '2022-01-24 04:38:24', '2022-01-24 04:43:25'),
(68, 2, 6, NULL, '0000-00-00 00:00:00', 'Yes', 1, 44.44, '2022-01-24 10:43:25', 'Yes', 'No', '00:10:17', 'Finished', '2022-01-24 04:43:25', '2022-01-24 04:50:08'),
(69, 2, 6, NULL, '0000-00-00 00:00:00', 'Yes', 1, 66.67, '2022-01-24 10:50:08', 'Yes', 'No', '00:06:59', 'Finished', '2022-01-24 04:50:08', '2022-01-24 04:52:41'),
(70, 2, 6, NULL, '0000-00-00 00:00:00', 'Yes', 1, 44.44, '2022-01-24 10:52:41', 'Yes', 'Yes', '00:10:21', 'Finished', '2022-01-24 04:52:41', '2022-01-24 04:54:45'),
(71, 2, 6, NULL, '0000-00-00 00:00:00', 'Yes', 1, 66.67, '2022-01-25 04:17:27', 'Yes', 'Yes', '00:00:00', 'Running', '2022-01-24 22:17:27', '2022-01-24 22:19:39'),
(72, 2, 6, NULL, '0000-00-00 00:00:00', 'Yes', 1, 66.67, '2022-01-25 05:21:17', 'Yes', 'Yes', '00:04:43', 'Running', '2022-01-24 23:21:17', '2022-01-24 23:21:54'),
(73, 2, 6, NULL, '0000-00-00 00:00:00', 'Yes', 1, 80.00, '2022-01-25 05:54:49', 'Yes', 'No', '00:00:00', 'Finished', '2022-01-24 23:54:49', '2022-01-25 22:28:45'),
(74, 2, 6, NULL, '0000-00-00 00:00:00', 'Yes', 1, 61.54, '2022-01-25 10:12:42', 'Yes', 'No', '00:00:00', 'Finished', '2022-01-25 04:12:42', '2022-01-25 05:30:40'),
(75, 2, 6, NULL, '0000-00-00 00:00:00', 'Yes', 1, 50.00, '2022-01-25 11:30:40', 'Yes', 'Yes', '00:00:00', 'Finished', '2022-01-25 05:30:40', '2022-01-25 05:32:34'),
(76, 2, 6, NULL, '0000-00-00 00:00:00', 'Yes', 1, 53.85, '2022-01-26 04:28:45', 'Yes', 'Yes', '00:00:00', 'Finished', '2022-01-25 22:28:45', '2022-01-25 22:30:34'),
(77, 2, 6, NULL, '0000-00-00 00:00:00', 'Yes', 1, 61.54, '2022-01-26 05:18:54', 'Yes', 'No', '00:12:37', 'Finished', '2022-01-25 23:18:54', '2022-01-25 23:25:13'),
(78, 2, 6, NULL, '0000-00-00 00:00:00', 'Yes', 1, 61.54, '2022-01-26 05:25:13', 'Yes', 'No', '00:00:00', 'Finished', '2022-01-25 23:25:13', '2022-01-25 23:27:50'),
(79, 2, 6, NULL, '0000-00-00 00:00:00', 'Yes', 1, 61.54, '2022-01-26 05:27:50', 'Yes', 'No', '00:00:00', 'Finished', '2022-01-25 23:27:50', '2022-01-25 23:38:58'),
(80, 2, 6, NULL, '0000-00-00 00:00:00', 'Yes', 1, 61.54, '2022-01-26 05:38:58', 'Yes', 'No', '00:00:00', 'Finished', '2022-01-25 23:38:58', '2022-01-25 23:46:52'),
(81, 2, 6, NULL, '0000-00-00 00:00:00', 'Yes', 1, 61.54, '2022-01-26 05:46:52', 'Yes', 'Yes', '00:00:00', 'Finished', '2022-01-25 23:46:52', '2022-01-25 23:47:53'),
(82, 2, 6, NULL, '0000-00-00 00:00:00', 'Yes', 1, 7.69, '2022-01-26 06:39:34', 'Yes', 'Yes', '00:24:02', 'Running', '2022-01-26 00:39:34', '2022-01-26 00:40:11'),
(83, 2, 6, NULL, '0000-00-00 00:00:00', 'Yes', 1, 53.85, '2022-01-26 07:14:16', 'Yes', 'Yes', '00:12:30', 'Finished', '2022-01-26 01:14:16', '2022-01-26 01:17:38');

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
(1, 'MDPURGS', 'Dhaka-1207', 'mdpurgs@gmail.com', '01737988947', 'Mohammad Naim', '010736905530', 'Imrul kayas', '017300000', '2022-01-11', '2023-05-24', NULL, '1641798973Screenshot_2.png', 'Active', '2022-01-10 01:16:13', '2022-01-10 02:09:10'),
(2, 'MDPURPRS', 'Dhaka', 'mdpurprs@gmail.com', '012345678', 'Mohammad Hanif', '032659', 'Jwel Hasan', '65987412', '2021-07-05', '2022-01-20', 'Dhaka', '16418852721.jpg', 'Active', '2022-01-11 01:14:32', '2022-01-11 01:14:32'),
(3, 'Demo School', '11/7, Solimullah Road Mohammadpur,Dhaka-1207', 'admin@gmail.com', '123456789', 'Admin', '789456', 'Demo', '852369', '2022-01-27', NULL, NULL, NULL, 'Active', '2022-01-26 09:21:53', '2022-01-26 09:21:53');

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
('3yEjAqh0C5Ej0CtSRji1njcuFRLkav2f8sfYXY1M', NULL, '103.217.111.217', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiWEFSTGlDTGIzbnpwTGNiOU9wb05uVG9DWDFob3p5bFk1WndSTzFrdyI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czo3NzoiaHR0cDovL2FjYy1sZWFybmluZy5jcmV0ZWNoYmQuY29tL3B1YmxpYy9hdXRoL2xvZ291dC9yYXppYmVlZTIwMTQlNDBnbWFpbC5jb20iO31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czo0NjoiaHR0cDovL2FjYy1sZWFybmluZy5jcmV0ZWNoYmQuY29tL3B1YmxpYy9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1643993283, '2022-02-04 16:48:02', NULL),
('7qIEDmVSkfK2iqtvj6tuR7TgIOi0XO2VdsZVg7Sd', 29, '103.217.111.217', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 'YTo3OntzOjY6Il90b2tlbiI7czo0MDoiRWRua0FJbWt4MWIzQ1ZJRWo1ODJjbE53bHhWUmZNSmZMNjNLYjBtUiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NjI6Imh0dHA6Ly9hY2MtbGVhcm5pbmcuY3JldGVjaGJkLmNvbS9wdWJsaWMvYWRtaW4tc2Nob29sLW92ZXJ2aWV3Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6Mjk7czo1OiJlbWFpbCI7czoxOToiY3JldGVjaGJkQGdtYWlsLmNvbSI7czoxMDoibGFzdF9sb2dpbiI7TjtzOjE2OiJyZXBvcnRfc2Nob29sX2lkIjtOO30=', 1643992537, '2022-02-04 16:11:29', NULL),
('dwZmRAGR1dTyyjpXeBWVkfhp5bihGuSHE7IISYWt', NULL, '44.201.96.139', 'Slackbot-LinkExpanding 1.0 (+https://api.slack.com/robots)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoidHV6TjZROEJFaUpyOXZJak5Telhsb1JLdzdpSEZKSTNQUEVCRjZCOSI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czo1MDoiaHR0cDovL2FjYy1sZWFybmluZy5jcmV0ZWNoYmQuY29tL3B1YmxpYy9kYXNoYm9hcmQiO31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czo1MDoiaHR0cDovL2FjYy1sZWFybmluZy5jcmV0ZWNoYmQuY29tL3B1YmxpYy9kYXNoYm9hcmQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1643992037, '2022-02-04 16:27:17', NULL),
('PxvumwKhKWUy9DJKJFb9AGLYQgAz7SylmiT6Mw8p', NULL, '44.201.96.139', 'Slackbot-LinkExpanding 1.0 (+https://api.slack.com/robots)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUVJUa28wWXQ3N3FjVWZxVmNhaE5Db2RIRmNjaEFVNGwwbDBmQ3YzeCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDY6Imh0dHA6Ly9hY2MtbGVhcm5pbmcuY3JldGVjaGJkLmNvbS9wdWJsaWMvbG9naW4iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1643992037, '2022-02-04 16:27:17', NULL);

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
(1, '122001', 'Dhaka', 'billal@gmail.com', '024555', 'Billal', 'Hossain', NULL, '2022-01-04', 'Male', 'H.M', '0258', 'hm@gmail.com', NULL, 'Active', '1', 1, '2022-01-10 04:57:55', '2022-01-10 04:57:55'),
(2, '122002', 'Dhaka', 'abdula@gmail.com', '02155', 'Abdul', 'Hossain', NULL, '2022-01-11', 'Male', 'Rony', '03658', 'rony@gmail.com', NULL, 'Active', '1', 3, '2022-01-10 04:59:12', '2022-01-10 04:59:12'),
(3, '222003', 'Dhaka', 'fahim@gmail.com', '0325698', 'Fahim', 'Asraf', NULL, '2021-09-06', 'Male', 'Nahid', '326598', 'nahid@gmail.com', NULL, 'Active', '2', 1, '2022-01-11 01:47:04', '2022-01-11 01:47:04'),
(4, '222004', 'Dhaka', 'sohidul@gmail.com', '985641', 'Sohidul', 'Islam', NULL, '2021-06-01', 'Male', 'Rony Hamid', '989865', 'rony@gmail.com', NULL, 'Active', '2', 3, '2022-01-11 01:49:25', '2022-01-11 01:49:25'),
(5, '122005', 'Dhaka', 'muktar@gmail.com', '0325', 'Mukter', 'Hossain', NULL, '2022-01-05', 'Male', 'Ali Hossain', '475869', 'alihossain@gmail.com', NULL, 'Active', '1', 1, '2022-01-11 23:50:57', '2022-01-11 23:50:57'),
(6, '122006', 'Dhaka', 'labu@gmail.com', '025588', 'Labu', 'Khan', NULL, '2022-01-04', 'Male', 'Ronay', '58558588', 'ronay@gmail.com', NULL, 'Active', '1', 1, '2022-01-12 00:02:48', '2022-01-12 00:02:48'),
(7, '322007', '11/7, Solimullah Road Mohammadpur,Dhaka-1207', 'najmus_sakib@hotmail.com', '456789', 'Mohammad', 'Najmus', 'Sakib', '1991-12-31', 'Male', 'Demo', '789456321', 'demo@gmail.com', NULL, 'Active', '3', 3, '2022-01-26 09:29:15', '2022-01-26 09:29:15');

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
(1, 1, 1, 'Active', '2022-01-10 04:57:55', '2022-01-10 04:57:55'),
(2, 3, 2, 'Active', '2022-01-10 04:59:12', '2022-01-10 04:59:12'),
(3, 1, 3, 'Active', '2022-01-11 01:47:04', '2022-01-11 01:47:04'),
(4, 3, 4, 'Active', '2022-01-11 01:49:25', '2022-01-11 01:49:25'),
(5, 1, 5, 'Active', '2022-01-11 23:50:57', '2022-01-11 23:50:57'),
(6, 1, 6, 'Active', '2022-01-12 00:02:48', '2022-01-12 00:02:48'),
(7, 3, 7, 'Active', '2022-01-26 09:29:15', '2022-01-26 09:29:15');

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
(1, 60, 1, 'Active', '2022-01-10 04:57:55', '2022-01-10 04:57:55'),
(2, 61, 1, 'Active', '2022-01-10 04:57:55', '2022-01-10 04:57:55'),
(3, 62, 1, 'Active', '2022-01-10 04:57:55', '2022-01-10 04:57:55'),
(4, 63, 2, 'Active', '2022-01-10 04:59:12', '2022-01-10 04:59:12'),
(5, 64, 2, 'Active', '2022-01-10 04:59:12', '2022-01-10 04:59:12'),
(6, 65, 2, 'Active', '2022-01-10 04:59:12', '2022-01-10 04:59:12'),
(7, 60, 3, 'Active', '2022-01-11 01:47:04', '2022-01-11 01:47:04'),
(8, 61, 3, 'Active', '2022-01-11 01:47:04', '2022-01-11 01:47:04'),
(9, 62, 3, 'Active', '2022-01-11 01:47:04', '2022-01-11 01:47:04'),
(10, 63, 4, 'Active', '2022-01-11 01:49:25', '2022-01-11 01:49:25'),
(11, 64, 4, 'Active', '2022-01-11 01:49:25', '2022-01-11 01:49:25'),
(12, 60, 5, 'Active', '2022-01-11 23:50:57', '2022-01-11 23:50:57'),
(13, 61, 5, 'Active', '2022-01-11 23:50:57', '2022-01-11 23:50:57'),
(14, 62, 5, 'Active', '2022-01-11 23:50:57', '2022-01-11 23:50:57'),
(15, 60, 6, 'Active', '2022-01-12 00:02:48', '2022-01-12 00:02:48'),
(16, 61, 6, 'Active', '2022-01-12 00:02:48', '2022-01-12 00:02:48'),
(17, 62, 6, 'Active', '2022-01-12 00:02:48', '2022-01-12 00:02:48'),
(18, 63, 7, 'Active', '2022-01-26 09:29:15', '2022-01-26 09:29:15'),
(19, 64, 7, 'Active', '2022-01-26 09:29:15', '2022-01-26 09:29:15'),
(20, 65, 7, 'Active', '2022-01-26 09:29:15', '2022-01-26 09:29:15'),
(21, 66, 7, 'Active', '2022-01-26 09:29:15', '2022-01-26 09:29:15'),
(22, 67, 7, 'Active', '2022-01-26 09:29:15', '2022-01-26 09:29:15'),
(23, 87, 7, 'Active', '2022-01-26 09:29:15', '2022-01-26 09:29:15'),
(24, 88, 7, 'Active', '2022-01-26 09:29:15', '2022-01-26 09:29:15'),
(25, 89, 7, 'Active', '2022-01-26 09:29:15', '2022-01-26 09:29:15');

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
(1, '122001', 'Dhaka', 'nur@gmail.com', '0124577', 'Nur', 'Hossain', NULL, '2021-09-07', 'Bangladeshi', 'Male', 'M.sc', 'Math', 'Permanent', 30000.00, NULL, 'Active', '1', '2022-01-10 22:14:48', '2022-01-10 22:14:48'),
(2, '122002', 'Dhaka', 'hasem@gmail.com', '0321654', 'Hasem', 'Ali', NULL, '2018-11-05', 'Bangladeshi', 'Male', 'B. SC', 'English', 'Permanent', 25000.00, NULL, 'Active', '1', '2022-01-10 22:18:54', '2022-01-10 22:18:54'),
(3, '222003', 'Dhaka', 'kamrul@gmail.com', '69852314', 'Kamrul', 'Hasan', NULL, '2022-01-10', 'Bangladeshi', 'Male', 'MBA', 'English', 'Permanent', 32000.00, NULL, 'Active', '2', '2022-01-11 01:52:50', '2022-01-11 01:52:50'),
(4, '222004', 'Dhaka', 'nabil@gmail.com', '985475', 'Nabil', 'Samad', NULL, '2021-07-27', 'Bangladeshi', 'Male', 'M.sc', 'Math', 'Permanent', 63200.00, NULL, 'Active', '2', '2022-01-11 02:01:18', '2022-01-11 02:01:18'),
(5, '122005', 'Dhaka', 'somrat@gmail.com', '253698', 'Mir', 'Somrat', NULL, '2022-01-04', 'Bangladesh', 'Male', 'M.sc', 'Math', 'Permanent', 12000.00, NULL, 'Active', '1', '2022-01-12 00:00:03', '2022-01-12 00:00:03'),
(6, '122006', 'Dhaka', 'mamun@gmail.com', '9658474', 'Mamun', 'Hosain', NULL, '2021-09-01', 'Bangladeshi', 'Male', 'M.sc', 'English', 'Permanent', 30000.00, NULL, 'Active', '1', '2022-01-12 00:27:23', '2022-01-12 00:27:23'),
(7, '122007', 'Dhaka', 'nasif@gmail.com', '5855', 'Nasif', 'Hossain', NULL, '2021-12-27', 'Bangladeshi', 'Male', 'BBA', 'English', 'Part-time', 15000.00, 'Not Allow', 'Active', '1', '2022-01-12 00:37:22', '2022-01-12 00:37:22'),
(8, '322008', '18/15,Azom Road , Mohammadpur ,Dhaka-1207', 'demo@gmail.com', '7412563', 'Rashed', 'Murtaza', 'Razib', '1991-12-31', 'American', 'Male', 'BBA', 'Math', 'Permanent', 0.00, NULL, 'Active', '3', '2022-01-26 09:42:25', '2022-01-26 09:42:25');

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
(1, 'Topic -01', 'Details', 18, 'Active', '2022-01-10 05:18:30', '2022-01-10 05:18:30'),
(2, 'Topics - 01', 'Details', 14, 'Active', '2022-01-10 05:18:52', '2022-01-10 05:18:52'),
(3, 'Topices 01', 'Details', 21, 'Active', '2022-01-10 05:19:18', '2022-01-10 05:19:18'),
(4, 'Topics - 01', 'Details', 16, 'Active', '2022-01-10 05:19:45', '2022-01-10 05:19:45'),
(5, 'Topics -01', 'Details', 22, 'Active', '2022-01-10 05:20:19', '2022-01-10 05:20:19');

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
(29, 'Rajib', 'Hasan', 'cretechbd@gmail.com', NULL, '456456456', NULL, NULL, 1, 'Admin', NULL, 0, '$2y$10$xiIT/Up4SJplowJwho3IS.wlgqELz2pw9FcxQyzMox9SrZC.cCFqa', NULL, NULL, '2021-07-14 06:43:53', '2022-02-04 10:11:29', '00:00:00', 'razib_01'),
(635, 'Mohammad Naim', NULL, 'mdpurgs@gmail.com', '164188114410.jpg', '01737988947', NULL, 1, 1, 'School', 1, 0, '$2y$10$eyZCwbXpkFjMd0deqxS2cuuAooTRVpqihRPlj87JoJYjVC7NraJym', NULL, NULL, '2022-01-10 01:16:13', '2022-02-04 08:31:13', NULL, 'mdpurgs'),
(636, 'Billal', '', 'billal@gmail.com', '16418122754.jpg', '024555', NULL, 1, 1, 'Student', 1, 1, '$2y$10$QUgn88.uUB/C64JJWJzuDOA/ksAWkM1/T.JVPUYnAuKneMSWd1In.', NULL, NULL, '2022-01-10 04:57:55', '2022-01-11 06:23:02', NULL, 'billal'),
(637, 'Abdul', NULL, 'abdula@gmail.com', '16418123523.jpg', '02155', NULL, 1, 1, 'Student', 2, 1, '$2y$10$kmbB8fL20DLY7k8kbpppFeHT3QBO3kaRsD.hqXfh2UsKYZJBW5OGq', NULL, NULL, '2022-01-10 04:59:12', '2022-01-26 01:18:29', NULL, 'abdul'),
(638, 'Nur', '', 'nur@gmail.com', '16418744896.jpg', '0124577', NULL, 1, 1, 'Teacher', 1, 0, '$2y$10$UITCojarJqPVhI8nOar4D.LMKPfMx/7jgeu0euOQZX0WkhapRqJZm', NULL, NULL, '2022-01-10 22:14:49', '2022-01-14 23:15:32', NULL, 'nur01'),
(639, 'Hasem', '', 'hasem@gmail.com', '16418747348.jpg', '0321654', NULL, 1, 1, 'Teacher', 2, 0, '$2y$10$Erilp60NAijt80SePXdreexk2sXKk4Yb994pIK899mtjCWlxnGH/W', NULL, NULL, '2022-01-10 22:18:54', '2022-01-10 22:18:54', NULL, 'hasem'),
(640, 'Rabbi', 'Hasan', 'rabbi@gmail.com', NULL, '0326598', NULL, 1, 1, 'School', 2, 0, '$2y$10$kX9Jj4XYWuqttlYbUuw08e2IBxciZxavFTCfRioQSx15gg8VQ3.7a', NULL, NULL, '2022-01-11 00:06:27', '2022-01-11 00:06:50', NULL, 'rabbi'),
(641, 'Mohammad Hanif', '', 'mdpurprs@gmail.com', NULL, '012345678', 'Dhaka', 2, 1, 'School', 2, 1, '$2y$10$loUx1/6rXnxQjJ9YfqYQHuK0sQPOCkMSx8QucqwwTyudZJ.d2m7ra', NULL, NULL, '2022-01-11 01:14:32', '2022-01-11 06:11:30', NULL, 'mdpurprs'),
(642, 'Roton', 'Hasan', 'roton@gmail.com', '16418858477.jpg', '362514', NULL, 2, 1, 'School', NULL, 0, '$2y$10$5hiWUZK0Sqf9nFkB1yyZOOpnYR78kuzGpFDNpgC6t4CJFwT5s6M2a', NULL, NULL, '2022-01-11 01:24:07', '2022-01-11 01:26:21', NULL, 'roton'),
(643, 'Fahim', '', 'fahim@gmail.com', '16418872246.jpg', '0325698', NULL, 2, 1, 'Student', 3, 0, '$2y$10$Shw0Y7xKyWrWxz.ZFMB5o.TIF6Ozwt5ZMQw6Hym3XT.Dm4vMl2jhW', NULL, NULL, '2022-01-11 01:47:04', '2022-01-11 01:47:04', NULL, 'fahim'),
(644, 'Sohidul', '', 'sohidul@gmail.com', '16418873652.jpg', '985641', NULL, 2, 1, 'Student', 4, 0, '$2y$10$hBgg8wepzEnLn50HmCNp9Okid6KcGivSOq1IwuJMJV.y7k1qIja4a', NULL, NULL, '2022-01-11 01:49:25', '2022-01-11 03:08:33', NULL, 'sohidul'),
(645, 'Kamrul', '', 'kamrul@gmail.com', '16418875703.jpg', '69852314', NULL, 2, 1, 'Teacher', 3, 0, '$2y$10$zcEHxEaKCmn7Ww4B73XaX.fls01ZIihPEccxAl6XsBowIQv51nvLe', NULL, NULL, '2022-01-11 01:52:50', '2022-01-11 01:52:50', NULL, 'kamrul'),
(646, 'Nabil', '', 'nabil@gmail.com', '16418880784.jpg', '985475', NULL, 2, 1, 'Teacher', 4, 0, '$2y$10$PD5Op4vILu2YXgc9UpYfFue56gvOvexwpt6nvjexhUyuKdwdLfIHe', NULL, NULL, '2022-01-11 02:01:18', '2022-01-11 02:01:18', NULL, 'nabil'),
(647, 'Mukter', '', 'muktar@gmail.com', '16419666575.jpg', '0325', NULL, 1, 1, 'Student', 5, 0, '$2y$10$S2h0HAYpV8rW2CoDLtBWm./IHQB94x97i6y1pKSk8NRfl4PheKmre', NULL, NULL, '2022-01-11 23:50:57', '2022-01-11 23:50:57', NULL, 'muktar'),
(648, 'Mir', '', 'somrat@gmail.com', '16419672032.jpg', '253698', NULL, 1, 1, 'Teacher', 5, 0, '$2y$10$5zD5vkgGisHo52x26UGUzOO8VSTEm/wTSyQz4sB/hYZlzrRPkY1fa', NULL, NULL, '2022-01-12 00:00:03', '2022-01-12 00:00:03', NULL, 'somrat'),
(649, 'Labu', '', 'labu@gmail.com', '16419673681.jpg', '025588', NULL, 1, 1, 'Student', 6, 0, '$2y$10$Ky7s/t.tUk73H3a14G/lF.3p1WCGVNf1/X9KQKG0E4U7MRtBMT6Vy', NULL, NULL, '2022-01-12 00:02:48', '2022-01-12 00:02:48', NULL, 'labu'),
(650, 'Mamun', '', 'mamun@gmail.com', '16419688434.jpg', '9658474', NULL, 1, 1, 'Teacher', 6, 0, '$2y$10$XHojv2VtiwYLqRwsL7wRZ.FnWui0v92ZElR0IscmfWiZEbkgndGzm', NULL, NULL, '2022-01-12 00:27:23', '2022-01-12 00:27:23', NULL, 'mamun'),
(651, 'Nasif', '', 'nasif@gmail.com', '16419694423.jpg', '5855', 'Not Allow', 1, 1, 'Teacher', 7, 0, '$2y$10$cUc2XBvTibUqAe.tEDx.8eTUpU9IPhiCMR8bC.UeZLs6.6vmKO8FS', NULL, NULL, '2022-01-12 00:37:22', '2022-01-12 00:37:22', NULL, 'nasif'),
(652, 'Hossain', 'Art', 'hossainbd@gmail.com', NULL, '2536', NULL, 1, 1, 'School', NULL, 0, '$2y$10$Vo84QdEoQn5Wzr9lEG/WMeiCju2I77H1miGseCUQI3iWyGY7hfcJq', NULL, NULL, '2022-01-12 00:39:09', '2022-01-12 00:39:09', NULL, 'hossain'),
(653, 'Admin', '', 'admin@gmail.com', NULL, '123456789', NULL, 3, 1, 'School', 3, 1, '$2y$10$2DSNYmXWvDryLPQePhwpkuyFkwzqukiEKq/xfT0a0vpgZcTptWhAe', NULL, NULL, '2022-01-26 09:21:54', '2022-02-04 08:49:33', NULL, 'demo'),
(654, 'Mohammad', 'Sakib', 'najmus_sakib@hotmail.com', NULL, '456789', NULL, 3, 1, 'Student', 7, 0, '$2y$10$t1zTxxa1BSYLNs4redUvG.UDx/vMZ.BFd9GJbKgbQwGZOJ1OEBWo2', NULL, NULL, '2022-01-26 09:29:15', '2022-01-26 09:29:15', NULL, 'demo'),
(655, 'Rashed', 'Razib', 'demo@gmail.com', NULL, '7412563', NULL, 3, 1, 'Teacher', 8, 0, '$2y$10$dy9jDGYD6VbfTS7U9Czh9enreCZ14qoTIu9SrhpcCcoIZXJBVsY9m', NULL, NULL, '2022-01-26 09:42:25', '2022-01-26 09:42:25', NULL, 'demo');

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
(628, 635, 2, 1, '2022-01-10 01:16:13', '2022-01-10 01:16:13'),
(629, 636, 29, 1, '2022-01-10 04:57:55', '2022-01-10 04:57:55'),
(630, 637, 29, 1, '2022-01-10 04:59:12', '2022-01-10 04:59:12'),
(631, 638, 27, 1, '2022-01-10 22:14:49', '2022-01-10 22:14:49'),
(632, 639, 27, 1, '2022-01-10 22:18:54', '2022-01-10 22:18:54'),
(633, 640, 2, 1, '2022-01-11 00:06:27', '2022-01-11 00:06:27'),
(634, 641, 2, 1, '2022-01-11 01:14:32', '2022-01-11 01:14:32'),
(635, 642, 2, 1, '2022-01-11 01:24:07', '2022-01-11 01:24:07'),
(636, 643, 29, 1, '2022-01-11 01:47:04', '2022-01-11 01:47:04'),
(637, 644, 29, 1, '2022-01-11 01:49:25', '2022-01-11 01:49:25'),
(638, 645, 27, 1, '2022-01-11 01:52:50', '2022-01-11 01:52:50'),
(639, 646, 27, 1, '2022-01-11 02:01:18', '2022-01-11 02:01:18'),
(640, 647, 29, 1, '2022-01-11 23:50:57', '2022-01-11 23:50:57'),
(641, 648, 27, 1, '2022-01-12 00:00:03', '2022-01-12 00:00:03'),
(642, 649, 29, 1, '2022-01-12 00:02:48', '2022-01-12 00:02:48'),
(643, 650, 27, 1, '2022-01-12 00:27:23', '2022-01-12 00:27:23'),
(644, 651, 27, 1, '2022-01-12 00:37:22', '2022-01-12 00:37:22'),
(645, 652, 2, 1, '2022-01-12 00:39:09', '2022-01-12 00:39:09'),
(646, 653, 2, 1, '2022-01-26 09:21:54', '2022-01-26 09:21:54'),
(647, 654, 29, 1, '2022-01-26 09:29:15', '2022-01-26 09:29:15'),
(648, 655, 27, 1, '2022-01-26 09:42:25', '2022-01-26 09:42:25');

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
(467, 1, 127, 1, '2021-08-25 04:06:51', '2021-08-25 04:06:51'),
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
(1, 'iezDJwfV5BB5cRdHQSfyQLGELyfUuUGWUmCgYTU7', 29, '2022-01-09 23:26:34', NULL, NULL, '2022-01-09 23:26:34', '2022-01-09 23:26:34'),
(2, 'zXLwDfC9JjdrqA4LwMl94A7r22UA3NCMpuDqE7EV', 29, '2022-01-10 00:22:30', NULL, NULL, '2022-01-10 00:22:30', '2022-01-10 00:22:30'),
(3, '6Yj7rMROZFRKAYIsTZyLHGylEFVcmMtqyHzOZArT', 29, '2022-01-10 00:40:44', NULL, NULL, '2022-01-10 00:40:44', '2022-01-10 00:40:44'),
(4, 'DWnfPMwfe3uD8Rmk9dH7titculM9Fpyq6V9qw36e', 29, '2022-01-10 01:10:18', '2022-01-10 02:04:35', '2022-01-09 18:54:17', '2022-01-10 01:10:18', '2022-01-10 02:04:35'),
(5, '0gThMmpVgihdiGCDAlSrnXuWLhMHy4q6xFvKt3jp', 635, '2022-01-10 02:04:42', '2022-01-10 02:05:29', '2022-01-09 18:00:47', '2022-01-10 02:04:42', '2022-01-10 02:05:29'),
(6, 'RS8NbxSODuqtO5OCLPvAOtc4lz2ot8BqRVNc9cU3', 29, '2022-01-10 02:05:35', NULL, NULL, '2022-01-10 02:05:35', '2022-01-10 02:05:35'),
(7, 'a1EgIHL2nta2V6BIwlA29pjkC1zjxfBz5S5DGnzG', 29, '2022-01-10 02:47:16', '2022-01-10 03:00:42', '2022-01-09 18:13:26', '2022-01-10 02:47:16', '2022-01-10 03:00:42'),
(8, 'ausLcwLXJuRj3FUvqvIOwNDjHX61GMx1SNVZQ4Bo', 635, '2022-01-10 03:01:05', '2022-01-10 03:01:33', '2022-01-09 18:00:28', '2022-01-10 03:01:05', '2022-01-10 03:01:33'),
(9, 'HejgVxpV3h3Tsx2uLSPrLfOAkitFcmb1BRBUlor5', 29, '2022-01-10 03:01:42', '2022-01-10 03:25:01', '2022-01-09 18:23:19', '2022-01-10 03:01:42', '2022-01-10 03:25:01'),
(10, 'hPWdrPAM3CPC9W3IdAvf2ZEe7OQTsOAKdU2p5uuL', 635, '2022-01-10 03:27:44', '2022-01-10 03:28:06', '2022-01-09 18:00:22', '2022-01-10 03:27:44', '2022-01-10 03:28:06'),
(11, '3MRx6CQdaa7aIep0yEyctfcvt8VmtTPWXTABwd4f', 29, '2022-01-10 03:28:14', '2022-01-10 03:29:21', '2022-01-09 18:01:07', '2022-01-10 03:28:14', '2022-01-10 03:29:21'),
(12, 'pqQrCAoEvGHFAJvdAbIkCBiRsWtybrMCu9qbWhdX', 635, '2022-01-10 03:29:26', '2022-01-10 03:42:10', '2022-01-09 18:12:44', '2022-01-10 03:29:26', '2022-01-10 03:42:10'),
(13, 'BGCYXsmgsWpdXXlINuTMH9QMU0YjfCh473jiSPYF', 635, '2022-01-10 03:42:41', NULL, NULL, '2022-01-10 03:42:41', '2022-01-10 03:42:41'),
(14, 'nMyQSeuSu9KCLTG3aIwdTJU9nolbQH3B9waTwHbz', 635, '2022-01-10 04:56:03', '2022-01-10 05:00:12', '2022-01-09 18:04:09', '2022-01-10 04:56:03', '2022-01-10 05:00:12'),
(15, 'HAEnygzFydU8tXNtJplhvClrcBFQlJ9sGOb3RBOF', 29, '2022-01-10 05:00:22', '2022-01-10 05:09:52', '2022-01-09 18:09:30', '2022-01-10 05:00:22', '2022-01-10 05:09:52'),
(16, '1bwk1bWtB8zJQXRM75x8eH3ezm28cupRkenGaMpq', 635, '2022-01-10 05:10:05', '2022-01-10 06:22:48', '2022-01-09 19:12:43', '2022-01-10 05:10:05', '2022-01-10 06:22:48'),
(17, 'Tfueu9ikHtoE9kMC2iPSjwFh8AMd8lEae7O19ngf', 637, '2022-01-10 06:22:58', '2022-01-10 06:23:16', '2022-01-09 18:00:18', '2022-01-10 06:22:58', '2022-01-10 06:23:16'),
(18, 'mAlii4S6p6TYaLaT0v2k2tjbQ0wGTAoQJMK0qqJf', 635, '2022-01-10 22:11:13', '2022-01-10 22:30:06', '2022-01-10 18:18:53', '2022-01-10 22:11:13', '2022-01-10 22:30:06'),
(19, 'GpuDmJAFUf3RqmWBrYvubk5Jqfx33fXH3G9NktrH', 637, '2022-01-10 22:22:51', '2022-01-10 22:35:55', '2022-01-10 18:13:04', '2022-01-10 22:22:51', '2022-01-10 22:35:55'),
(20, 'wMRz0rNM5RQWqbhitrgUXFCF3bwgoX6dyvM376Xp', 638, '2022-01-10 22:27:24', '2022-01-10 22:42:01', '2022-01-10 18:14:37', '2022-01-10 22:27:24', '2022-01-10 22:42:01'),
(21, '8W5hbqR7TMCA3WlTURGGpEQoNSWbtjQrtmO2x5WU', 29, '2022-01-10 22:30:13', '2022-01-10 22:30:19', '2022-01-10 18:00:06', '2022-01-10 22:30:13', '2022-01-10 22:30:19'),
(22, '4oUUPBZasJv2ceVt5HCg0RAD6MPbVDira1pJBXA2', 635, '2022-01-10 22:30:28', NULL, NULL, '2022-01-10 22:30:28', '2022-01-10 22:30:28'),
(23, 'Uhk9ReZ5IB0Q3ahzjZHRxkmulQN0IiyBLpwPUm0O', 636, '2022-01-10 22:52:50', '2022-01-10 22:54:24', '2022-01-10 18:01:34', '2022-01-10 22:52:50', '2022-01-10 22:54:24'),
(24, 'MNU788JnuBETP2KxlzomMPySIYFywizwoAs4w1Qv', 637, '2022-01-10 22:54:28', '2022-01-10 22:55:31', '2022-01-10 18:01:03', '2022-01-10 22:54:28', '2022-01-10 22:55:31'),
(25, 'JmiaZWan2HoRPgtOfAxeSTBJUb9OfBUsUtzuHg3F', 637, '2022-01-10 22:56:52', NULL, NULL, '2022-01-10 22:56:52', '2022-01-10 22:56:52'),
(26, 'EH6gaKj0PwrsOJudv4wC6CkoFi9epcDoHRwkxkjZ', 635, '2022-01-10 23:39:43', NULL, NULL, '2022-01-10 23:39:43', '2022-01-10 23:39:43'),
(27, 'dzJzMPATNiaTMvUF4uqFwwo2rqm3VmZzadqlCvBw', 635, '2022-01-11 00:03:21', '2022-01-11 00:06:44', '2022-01-10 18:03:23', '2022-01-11 00:03:21', '2022-01-11 00:06:44'),
(28, 'b06OfdIlPFx0tjx6RQSkJBzDiyYk3ikeZD7ZMqtO', 640, '2022-01-11 00:06:50', NULL, NULL, '2022-01-11 00:06:50', '2022-01-11 00:06:50'),
(29, 'U9vWxAPwpOwneNLjgIXubATFPFlw1AFs208uvdpx', 637, '2022-01-11 00:20:03', '2022-01-11 00:30:24', '2022-01-10 18:10:21', '2022-01-11 00:20:03', '2022-01-11 00:30:24'),
(30, 'Qrb2vlxWy7NYt8inShu8yPnzAwWcyHl0HzKtU31L', 637, '2022-01-11 00:32:01', NULL, NULL, '2022-01-11 00:32:01', '2022-01-11 00:32:01'),
(31, 'Mm2WXLkj6xD22YqP761kkC9eVFEPTqWoZNcxe2ko', 635, '2022-01-11 01:00:11', '2022-01-11 01:12:17', '2022-01-10 18:12:06', '2022-01-11 01:00:11', '2022-01-11 01:12:17'),
(32, 'uSmT67dyTWSajiRVgvLE3KSmrjFlN3N4XGml13xQ', 29, '2022-01-11 01:12:23', '2022-01-11 01:38:17', '2022-01-10 18:25:54', '2022-01-11 01:12:23', '2022-01-11 01:38:17'),
(33, 'wHmDercPd6EMJhKufizhBkG9DrgVVBOan6KOyRgO', 642, '2022-01-11 01:26:21', NULL, NULL, '2022-01-11 01:26:21', '2022-01-11 01:26:21'),
(34, 'FGBhlWH1N0VfmW0qqjnuY7hLhEJlYlKUfOxIWKNq', 635, '2022-01-11 01:38:24', NULL, NULL, '2022-01-11 01:38:24', '2022-01-11 01:38:24'),
(35, 'PMcvGrnG3OyWzxxVqgfPsQDeba0jYopQuIeJU4UG', 644, '2022-01-11 02:03:17', '2022-01-11 02:13:54', '2022-01-10 18:10:37', '2022-01-11 02:03:17', '2022-01-11 02:13:54'),
(36, 'Rn811ky0AjaSGb9xVqpq0KOdCvgTmo1IU6kdKNKJ', 641, '2022-01-11 02:16:48', '2022-01-11 03:08:02', '2022-01-10 18:51:14', '2022-01-11 02:16:48', '2022-01-11 03:08:02'),
(37, '44UxbZ9bTMRUurGyLCUjvxtGS0b9wLuwjNZx2lyT', 641, '2022-01-11 03:01:38', NULL, NULL, '2022-01-11 03:01:38', '2022-01-11 03:01:38'),
(38, 'jomKUtQGbKWdoXqMHNwuWfUhhJgaF9ANhakVdh5f', 644, '2022-01-11 03:08:33', NULL, NULL, '2022-01-11 03:08:33', '2022-01-11 03:08:33'),
(39, 'cqAivGLCHvc3EvQFNc7gZuHaSTQCcFggJK4LXECQ', 635, '2022-01-11 03:53:16', '2022-01-11 04:04:47', '2022-01-10 18:11:31', '2022-01-11 03:53:16', '2022-01-11 04:04:47'),
(40, 'JTQLXUI685yWeOl3hcezCJSrqGElAOaTLSqwSXhA', 29, '2022-01-11 04:04:52', '2022-01-11 04:09:18', '2022-01-10 18:04:26', '2022-01-11 04:04:52', '2022-01-11 04:09:18'),
(41, 'B1Gn16Qz43X5SPOCgPMQ8bkfeMc1otKHg37LtUGX', 641, '2022-01-11 04:09:45', NULL, NULL, '2022-01-11 04:09:45', '2022-01-11 04:09:45'),
(42, 'L9WZRDqS1jcfF1PeaW6iyBmZffKPydur6aEDINkD', 641, '2022-01-11 04:52:22', '2022-01-11 05:14:42', '2022-01-10 18:22:20', '2022-01-11 04:52:22', '2022-01-11 05:14:42'),
(43, 'sXQX8eLBVqvxenTpRqRQL1PXapZOsc1gHzSMF1bL', 29, '2022-01-11 05:14:47', '2022-01-11 05:29:33', '2022-01-10 18:14:46', '2022-01-11 05:14:47', '2022-01-11 05:29:33'),
(44, 'zssKnZBuFvtC5AqW17rI870hv14por44MlkpCXMx', 641, '2022-01-11 05:29:44', '2022-01-11 06:11:30', '2022-01-10 18:41:46', '2022-01-11 05:29:44', '2022-01-11 06:11:30'),
(45, 'L3tJmPkbXBSlmTVw0ZdtP1vJX0EmdLelQbJg1Zvc', 635, '2022-01-11 06:11:36', '2022-01-11 06:12:00', '2022-01-10 18:00:24', '2022-01-11 06:11:36', '2022-01-11 06:12:00'),
(46, 'PYvZGzNaqJ8HtLFY9xiDn6kF54K3KB6qYcYZ9hHk', 636, '2022-01-11 06:12:28', '2022-01-11 06:12:47', '2022-01-10 18:00:19', '2022-01-11 06:12:28', '2022-01-11 06:12:47'),
(47, 'SqrI1o40FHSakzfaUxY0RlYEo8ZNuy6XjH7HfTJB', 638, '2022-01-11 06:12:52', '2022-01-11 06:13:11', '2022-01-10 18:00:19', '2022-01-11 06:12:52', '2022-01-11 06:13:11'),
(48, '0NRDTSnSwluShhQTVi33TIOgmClkGGMJzsNCYv40', 636, '2022-01-11 06:13:25', '2022-01-11 06:23:02', '2022-01-10 18:09:37', '2022-01-11 06:13:25', '2022-01-11 06:23:02'),
(49, 'Kqlx2qBeL0EeAGbK96EHSMzSbxjO6L4p875sH9LV', 635, '2022-01-11 06:13:44', NULL, NULL, '2022-01-11 06:13:44', '2022-01-11 06:13:44'),
(50, 'iDfAId8sicnSh6Fxqk2dMeMAH9xr3qy4rMFT1sRH', 635, '2022-01-11 06:33:06', NULL, NULL, '2022-01-11 06:33:06', '2022-01-11 06:33:06'),
(51, 'ldwFzdb8gp5Jdp2O0PDx5kaiup8zprxU5dMQGS6y', 635, '2022-01-11 22:51:49', NULL, NULL, '2022-01-11 22:51:49', '2022-01-11 22:51:49'),
(52, 'VFkBuIHtfsPiY4JxyG54aWadafpysijhknQrNPJg', 635, '2022-01-11 23:41:56', NULL, NULL, '2022-01-11 23:41:56', '2022-01-11 23:41:56'),
(53, 'JSbSE2wD2fkYYt7q0Thsu1blGfLD91OTOEPDAnME', 635, '2022-01-12 00:22:56', '2022-01-12 00:38:04', '2022-01-11 18:15:08', '2022-01-12 00:22:56', '2022-01-12 00:38:04'),
(54, 'dXtTBcxi2H8YwWuq4NCV1MHR8Fq014aluZNLhh5R', 29, '2022-01-12 00:38:21', '2022-01-12 00:43:22', '2022-01-11 18:05:01', '2022-01-12 00:38:21', '2022-01-12 00:43:22'),
(55, 'rxYPxo5aEW6NuxUIoEvNFFnyar3KcSi1z4Y2c8w9', 635, '2022-01-12 00:53:29', NULL, NULL, '2022-01-12 00:53:29', '2022-01-12 00:53:29'),
(56, 'Ed4mFyZQhdeZKWVWrAaPkLsbXXSY36l9LIeLU3qH', 635, '2022-01-12 02:08:35', NULL, NULL, '2022-01-12 02:08:35', '2022-01-12 02:08:35'),
(57, 'ZysgGipNLmZY9LO0REv5gcNBk6brffXT9v8sfnOV', 635, '2022-01-12 05:10:00', NULL, NULL, '2022-01-12 05:10:00', '2022-01-12 05:10:00'),
(58, 'At24EgTKyRvjLtLtdiKMqZqEZOz2EN0p0Wq8bgSb', 635, '2022-01-14 22:27:58', NULL, NULL, '2022-01-14 22:27:58', '2022-01-14 22:27:58'),
(59, 'pcZmn8gxE9q0cm8stLaSsYAhscGxeByMT7gLv6bk', 635, '2022-01-14 22:49:41', '2022-01-14 23:14:58', '2022-01-14 18:25:17', '2022-01-14 22:49:41', '2022-01-14 23:14:58'),
(60, 'hf7769IeycpbOZNbXlYrOssZrvayDTI3PTNak93w', 635, '2022-01-14 23:15:10', '2022-01-14 23:15:27', '2022-01-14 18:00:17', '2022-01-14 23:15:10', '2022-01-14 23:15:27'),
(61, '90EAnLg5TAJLcHXJcrfJ8BUSeueCdDyu1R9HoTRW', 638, '2022-01-14 23:15:32', NULL, NULL, '2022-01-14 23:15:32', '2022-01-14 23:15:32'),
(62, 'rNIpcBiIzfiRxmnQPuLHefeO3BUXASkUDqyCLsjW', 29, '2022-01-15 00:28:19', '2022-01-15 00:29:44', '2022-01-14 18:01:25', '2022-01-15 00:28:19', '2022-01-15 00:29:44'),
(63, 'D0RyNhW3lo4pg1szhQKT1wywlN0hZaoTDkQAuHyh', 635, '2022-01-15 00:29:50', NULL, NULL, '2022-01-15 00:29:50', '2022-01-15 00:29:50'),
(64, 'oDIl3ycUGmrdnJ49PQlzfsroFYIRF0tOjdRA16m3', 635, '2022-01-15 05:20:48', NULL, NULL, '2022-01-15 05:20:48', '2022-01-15 05:20:48'),
(65, 'dTqv43pzF1Zq4yxnNUWi2u2Q4S8FANEKN4hSYh5V', 635, '2022-01-15 11:39:19', NULL, NULL, '2022-01-15 11:39:19', '2022-01-15 11:39:19'),
(66, 'aoNPaEDDOS5pusj3I0uJyo1OHLltTAFT0spBarTi', 635, '2022-01-15 12:10:59', NULL, NULL, '2022-01-15 12:10:59', '2022-01-15 12:10:59'),
(67, 'vu601emoyF7FqWPelY5BdWBz9os31hPCXNHSWqhE', 635, '2022-01-15 21:42:12', '2022-01-15 21:42:26', '2022-01-15 18:00:14', '2022-01-15 21:42:12', '2022-01-15 21:42:26'),
(68, 'd1rGkx9fuhXyMXtkidA0H3tSVgUsHMOPQ9T4kq39', 637, '2022-01-15 21:42:32', '2022-01-15 21:46:03', '2022-01-15 18:03:31', '2022-01-15 21:42:32', '2022-01-15 21:46:03'),
(69, '8OuYu0WnZ9UTCTnIR1hNcv7sbiGSEZmdju7ZVVKm', 635, '2022-01-15 21:46:07', NULL, NULL, '2022-01-15 21:46:07', '2022-01-15 21:46:07'),
(70, 'Ci1zbbqbTY28VE2Hr95geO8ZlInZXWd2F3HUZvmw', 637, '2022-01-15 21:53:21', '2022-01-15 22:12:15', '2022-01-15 18:18:54', '2022-01-15 21:53:21', '2022-01-15 22:12:15'),
(71, 'NRjVFC2tzB39qZhE7wIxUsNuC8hguXVJIq7Fd2Yg', 637, '2022-01-15 23:03:14', NULL, NULL, '2022-01-15 23:03:14', '2022-01-15 23:03:14'),
(72, '6SZBQmh1GGPoemIyemBwQEEJTgWyR8crmSEMXfsA', 635, '2022-01-15 23:05:18', NULL, NULL, '2022-01-15 23:05:18', '2022-01-15 23:05:18'),
(73, 'CC0b7KtPNlxzIVgsHFovrLR9Vu8kl8yQJiwlaWSl', 635, '2022-01-16 00:04:51', NULL, NULL, '2022-01-16 00:04:51', '2022-01-16 00:04:51'),
(74, 'M0ZQLAQSx0N5hnzp0XTwcX5eP7daajh8hDyuMhCE', 637, '2022-01-16 01:11:47', NULL, NULL, '2022-01-16 01:11:47', '2022-01-16 01:11:47'),
(75, 'a52BmcRQZjBJzGh6ywBHNdejm8cU7ZbZkgeAK5CL', 635, '2022-01-16 01:27:43', NULL, NULL, '2022-01-16 01:27:43', '2022-01-16 01:27:43'),
(76, 'NnDjN6XOaLDb8HP7aFSDk22EZ4ra8HOQx6lKZfUo', 637, '2022-01-16 01:28:01', NULL, NULL, '2022-01-16 01:28:01', '2022-01-16 01:28:01'),
(77, 'pCYLU3dIPoSo0BJ5pwTEcRxlFa8uzwghoEzZa9nf', 637, '2022-01-16 03:23:47', NULL, NULL, '2022-01-16 03:23:47', '2022-01-16 03:23:47'),
(78, 'WnzXlopAF8yCNz3apzvQO5CUN4fjNQtZb9RsaUG6', 637, '2022-01-16 04:50:03', '2022-01-16 05:25:00', '2022-01-15 18:34:57', '2022-01-16 04:50:03', '2022-01-16 05:25:00'),
(79, 'FryTIlOv1rkGnCmN82i3mJ14ZsE8oTXPbnEzM2Cw', 635, '2022-01-16 05:25:17', '2022-01-16 06:14:59', '2022-01-15 18:49:42', '2022-01-16 05:25:17', '2022-01-16 06:14:59'),
(80, 'yA7uldYi8PjY35bcoMEcMZWOZ591S7WActsq62Xl', 637, '2022-01-16 22:44:56', NULL, NULL, '2022-01-16 22:44:56', '2022-01-16 22:44:56'),
(81, 'u7LPeP0zd6KdehloQjJD0cFJwLoND4XSSMLD91ic', 637, '2022-01-16 23:12:13', NULL, NULL, '2022-01-16 23:12:13', '2022-01-16 23:12:13'),
(82, 'tbSqvBOfUuz5xBc1mCw8yISjKh3cuc9Npy3sF5mR', 637, '2022-01-17 00:09:56', '2022-01-17 00:20:20', '2022-01-16 18:10:24', '2022-01-17 00:09:56', '2022-01-17 00:20:20'),
(83, 'Vcj71MDxo4KUn3JoMKUnrIMdEHFdtXlhBdrYX0G5', 635, '2022-01-17 00:20:26', NULL, NULL, '2022-01-17 00:20:26', '2022-01-17 00:20:26'),
(84, 'YP5cYHjmGiHuYIt86IfIRkRfju3jIYPK5mOUhhHy', 635, '2022-01-17 00:37:59', NULL, NULL, '2022-01-17 00:37:59', '2022-01-17 00:37:59'),
(85, 'bKbigRkZKtrk3DNgCz19CgDHjYEhMhibK01vpTxW', 635, '2022-01-17 01:16:52', NULL, NULL, '2022-01-17 01:16:52', '2022-01-17 01:16:52'),
(86, 'd8nWrxW9ok9eRuqV4cwCghiOhNndMTd0FKW6rdxm', 635, '2022-01-17 01:47:12', '2022-01-17 01:47:31', '2022-01-16 18:00:19', '2022-01-17 01:47:12', '2022-01-17 01:47:31'),
(87, 'lKmFfjDoNGyO6XHh5s6bKagiGPo6hqB346fPx4Kk', 637, '2022-01-17 01:49:10', '2022-01-17 02:33:57', '2022-01-16 18:44:47', '2022-01-17 01:49:10', '2022-01-17 02:33:57'),
(88, 'W7Kwx2fbu88Ti3WP7x25BnNS43yAhnny7Memmglo', 635, '2022-01-17 02:34:03', NULL, NULL, '2022-01-17 02:34:03', '2022-01-17 02:34:03'),
(89, 'F5ZSqJsDDPmvGyIKSrWYJa3K8O15YTzZaSryBweM', 635, '2022-01-17 03:39:01', '2022-01-17 04:14:15', '2022-01-16 18:35:14', '2022-01-17 03:39:01', '2022-01-17 04:14:15'),
(90, 'dMO1utMrJkSmXvB2kHJEjb17sBlM9SEumcW5vueO', 637, '2022-01-17 04:14:23', '2022-01-17 04:42:15', '2022-01-16 18:27:52', '2022-01-17 04:14:23', '2022-01-17 04:42:15'),
(91, '7YJF0rdQP8XUVstEu8QoZ8ShymQcm7uZaOtGN07k', 635, '2022-01-17 04:42:25', '2022-01-17 04:50:52', '2022-01-16 18:08:27', '2022-01-17 04:42:25', '2022-01-17 04:50:52'),
(92, 'aWwoj8YIggsZoSEIwgbhfIGINmteqomKYg2NXpyF', 637, '2022-01-17 04:51:00', NULL, NULL, '2022-01-17 04:51:00', '2022-01-17 04:51:00'),
(93, 'RYzCGtCTCbYqv6lJmTBpSAZMjuPIeLeelfbbvgRE', 635, '2022-01-17 05:14:26', '2022-01-17 05:14:39', '2022-01-16 18:00:13', '2022-01-17 05:14:26', '2022-01-17 05:14:39'),
(94, 'f8a98zxAG0IaqVESBy9sxSOvFXix2a5oQGz5oi02', 637, '2022-01-17 05:14:44', NULL, NULL, '2022-01-17 05:14:44', '2022-01-17 05:14:44'),
(95, 'kMRna9IKqnMzzoBtVz7frM9Y2lEfWhpFFYjeiOVr', 635, '2022-01-17 05:57:32', NULL, NULL, '2022-01-17 05:57:32', '2022-01-17 05:57:32'),
(96, 'yjeNwSROxih8KZmJ6Ck9yGRqLnqJmkLtrk2lBqzq', 635, '2022-01-17 21:59:05', NULL, NULL, '2022-01-17 21:59:05', '2022-01-17 21:59:05'),
(97, 'yxz5MAo2WBLkJMbcnt4rRr3lEHp8OerAVQBoKmw8', 635, '2022-01-17 23:08:32', NULL, NULL, '2022-01-17 23:08:32', '2022-01-17 23:08:32'),
(98, '0c4BM9hNpEWM4WzYmDL3jh1RQM8Hd2Y9BhSf82J4', 635, '2022-01-18 00:08:05', '2022-01-18 00:15:12', '2022-01-17 18:07:07', '2022-01-18 00:08:05', '2022-01-18 00:15:12'),
(99, 'KBhD7WkbSDnCPpyVewE0aJMs04j0ducRkZb6mDoL', 637, '2022-01-18 00:27:04', NULL, NULL, '2022-01-18 00:27:04', '2022-01-18 00:27:04'),
(100, 'vDhBK7gZjTLMZnH56WNh336krAC7uwROVsaMD6Fj', 637, '2022-01-18 01:57:06', NULL, NULL, '2022-01-18 01:57:06', '2022-01-18 01:57:06'),
(101, 'wsiZbeDpTXfx1qJaUGzRSNcQAQzKHjwmXKse7yOy', 635, '2022-01-18 02:19:32', '2022-01-18 02:21:13', '2022-01-17 18:01:41', '2022-01-18 02:19:32', '2022-01-18 02:21:13'),
(102, 'oLkgzSZveQsTdSg0vQVNUtEY2avqF8UuzmJe6o0G', 635, '2022-01-18 02:21:21', '2022-01-18 02:21:31', '2022-01-17 18:00:10', '2022-01-18 02:21:21', '2022-01-18 02:21:31'),
(103, '72cnUsleav07aFrqJJoUUHe7A4TPr8d43Un8PLl1', 637, '2022-01-18 02:30:48', NULL, NULL, '2022-01-18 02:30:48', '2022-01-18 02:30:48'),
(104, 'SOeRrXkbvXs39UeK6F8If12WHCLVGrB4iQ7tzrO0', 637, '2022-01-18 02:48:31', NULL, NULL, '2022-01-18 02:48:31', '2022-01-18 02:48:31'),
(105, 'Iq7NDaKsq1MhXqeJdiHBY0K53c7Jgpzl9rcSwgqS', 637, '2022-01-18 03:51:25', '2022-01-18 04:02:19', '2022-01-17 18:10:54', '2022-01-18 03:51:25', '2022-01-18 04:02:19'),
(106, 'QvNrnIKAUwjqBtz0KHmd10g1nsQgZGNcQ0e9QjHw', 635, '2022-01-18 04:02:24', '2022-01-18 04:08:45', '2022-01-17 18:06:21', '2022-01-18 04:02:24', '2022-01-18 04:08:45'),
(107, 'ehTlzW0MkfU38BWvzbU2LRXCZtsSJ9f1aQglj2mn', 637, '2022-01-18 04:08:51', NULL, NULL, '2022-01-18 04:08:51', '2022-01-18 04:08:51'),
(108, 'pmoack4HAMqPNIDVJW5g42DCQU1GBTrVBPICgKWd', 637, '2022-01-18 05:23:48', NULL, NULL, '2022-01-18 05:23:48', '2022-01-18 05:23:48'),
(109, 'BaewDGOUoz8YVmXxEL8fFZay69JSgPdkNmhUxpTl', 635, '2022-01-21 23:02:26', '2022-01-21 23:05:19', '2022-01-21 18:02:53', '2022-01-21 23:02:26', '2022-01-21 23:05:19'),
(110, 'rUM5iq8uaCu4RPmYYexUl0TPOa5QKbn7SQKtPkz2', 635, '2022-01-21 23:05:42', NULL, NULL, '2022-01-21 23:05:42', '2022-01-21 23:05:42'),
(111, 'puzzwL2BCnRi5oaKTKug2ktCLx7tZ4NJLakh2fmY', 635, '2022-01-22 00:29:41', '2022-01-22 00:58:12', '2022-01-21 18:28:31', '2022-01-22 00:29:41', '2022-01-22 00:58:12'),
(112, 'CzntbO6CltnKOtuO7dJnn6yPpKn6ZrlwPu4cFefM', 635, '2022-01-22 00:58:24', NULL, NULL, '2022-01-22 00:58:24', '2022-01-22 00:58:24'),
(113, 'I05wbZcNdKIfCmSWHyrMSv2gC1NNi5Lktnxak1XY', 635, '2022-01-23 22:50:19', '2022-01-23 22:55:41', '2022-01-23 18:05:22', '2022-01-23 22:50:19', '2022-01-23 22:55:41'),
(114, 'LCP5Tc3TNGcgjaiOQHl0OJr813NCdimk8BpwMbRS', 637, '2022-01-23 22:55:48', '2022-01-23 23:14:04', '2022-01-23 18:18:16', '2022-01-23 22:55:48', '2022-01-23 23:14:04'),
(115, 'Z8a4M3xZw4rlKMzFHvRQnYQ3K8vAU8FLwbdzoZSH', 635, '2022-01-23 23:14:10', NULL, NULL, '2022-01-23 23:14:10', '2022-01-23 23:14:10'),
(116, 'j67caXNVHznWyOjUnsSznJ623Rnj9qkXbQYovCa9', 635, '2022-01-24 03:51:40', '2022-01-24 04:21:04', '2022-01-23 18:29:24', '2022-01-24 03:51:40', '2022-01-24 04:21:04'),
(117, 'b2HGJIZSh9R3IJUKmj9qnWEQY4fcSTNswCpZt5WO', 637, '2022-01-24 04:26:02', NULL, NULL, '2022-01-24 04:26:02', '2022-01-24 04:26:02'),
(118, 'LzwcaRFeMktvQA7eblLxAjQLJvU35LtVyyoWdgDK', 635, '2022-01-24 22:16:47', '2022-01-24 22:17:11', '2022-01-24 18:00:24', '2022-01-24 22:16:47', '2022-01-24 22:17:11'),
(119, '4T93HTWNuDIczFgAwDC2ss6jW0HMwbrKjamMwt6t', 637, '2022-01-24 22:17:17', NULL, NULL, '2022-01-24 22:17:17', '2022-01-24 22:17:17'),
(120, 'Tj4fRzYkcTA7WsL2LvOpZKQAQ8menpWmCmuumYqP', 637, '2022-01-24 23:21:07', NULL, NULL, '2022-01-24 23:21:07', '2022-01-24 23:21:07'),
(121, '6oNmQzQPZcupDXh2boNrhaDRBX3zOnGWJlJlpFrf', 637, '2022-01-24 23:54:37', '2022-01-25 00:11:51', '2022-01-24 18:17:14', '2022-01-24 23:54:37', '2022-01-25 00:11:51'),
(122, 'WNjKUdNSPaY72lHrR0KHk6Sk6C7fkgvzmbyGSaF5', 635, '2022-01-25 00:11:59', NULL, NULL, '2022-01-25 00:11:59', '2022-01-25 00:11:59'),
(123, 'oggkR5AxDXwhJPvcNNxIDOYRCWI3tUuP8Pr1rtJW', 635, '2022-01-25 01:18:00', NULL, NULL, '2022-01-25 01:18:00', '2022-01-25 01:18:00'),
(124, 'uEeftrNICLXqiC7ne13NZmRb5nVUPqHUMu3LGV3t', 635, '2022-01-25 02:52:50', NULL, NULL, '2022-01-25 02:52:50', '2022-01-25 02:52:50'),
(125, 'e9JuzReLwltwc7xlyt3RNLgj5TKpZhgPMvo5amWE', 635, '2022-01-25 03:17:43', '2022-01-25 04:12:18', '2022-01-24 18:54:35', '2022-01-25 03:17:43', '2022-01-25 04:12:18'),
(126, 'Csa5ch29oOek5nPjmW7eG3Ffy7hAQr1DSZWerKjU', 637, '2022-01-25 04:12:32', NULL, NULL, '2022-01-25 04:12:32', '2022-01-25 04:12:32'),
(127, 'hdAGwYeYRpLyumiRqSNtDy4cjurJshxT7UAuuMuh', 635, '2022-01-25 05:18:23', '2022-01-25 05:29:55', '2022-01-24 18:11:32', '2022-01-25 05:18:23', '2022-01-25 05:29:55'),
(128, 'mi1Vf7cHGI27SWwQcLdi89XTuEy5ssaWFoO34bM0', 637, '2022-01-25 05:30:06', NULL, NULL, '2022-01-25 05:30:06', '2022-01-25 05:30:06'),
(129, 'tleegVeJMigy6lwEzhB0knhfT7vKVVgfelLJRqZE', 637, '2022-01-25 22:28:31', NULL, NULL, '2022-01-25 22:28:31', '2022-01-25 22:28:31'),
(130, 'Hi4nsMjzRSNOFJHusYzcq8KY59jmvnWnrKBngU32', 637, '2022-01-25 23:18:37', NULL, NULL, '2022-01-25 23:18:37', '2022-01-25 23:18:37'),
(131, '9XRS0Pf0D9thhUXiQby8ag1ZvsTRKHhJWW6Guzt7', 637, '2022-01-26 00:11:15', '2022-01-26 00:13:25', '2022-01-25 18:02:10', '2022-01-26 00:11:15', '2022-01-26 00:13:25'),
(132, 'Z8k8ZNsW0C6SUwmafmmGUj8zS2u3Hxmc3x3FhRHU', 635, '2022-01-26 00:21:39', '2022-01-26 00:39:19', '2022-01-25 18:17:40', '2022-01-26 00:21:39', '2022-01-26 00:39:19'),
(133, 'gLqmNqSfmE5BjylXdWqGImzSksevVf0tVuoZ3fgA', 637, '2022-01-26 00:39:24', NULL, NULL, '2022-01-26 00:39:24', '2022-01-26 00:39:24'),
(134, '8eiCdUe6gkMRYb6PA2PgM42aU7j0vxBzIR7B9XYP', 637, '2022-01-26 01:14:08', '2022-01-26 01:18:29', '2022-01-25 18:04:21', '2022-01-26 01:14:08', '2022-01-26 01:18:29'),
(135, 'ZElVzO8pRgLJjBwtKCT1ogXJ65FGNPi3XHopvzI9', 635, '2022-01-26 01:18:37', NULL, NULL, '2022-01-26 01:18:37', '2022-01-26 01:18:37'),
(136, 'gJcALu2zux1nRNkNlOzFq7asNLBtO8Xmjm1G49lb', 29, '2022-01-26 09:17:57', '2022-01-26 09:18:44', '2022-01-25 18:00:47', '2022-01-26 09:17:57', '2022-01-26 09:18:44'),
(137, 'sNc9sVgDJ4fNDHEgnau6YNqBfTNGlswhCkZi2OB7', 29, '2022-01-26 09:20:11', '2022-01-26 09:22:35', '2022-01-25 18:02:24', '2022-01-26 09:20:11', '2022-01-26 09:22:35'),
(138, 'foZEsA5kcrRVkRB8X878YOiCFj1AAOHWuesBNqFi', 653, '2022-01-26 09:22:51', NULL, NULL, '2022-01-26 09:22:51', '2022-01-26 09:22:51'),
(139, 'SfnNjyELdXoit4FipWuU7qYKLmO8IJGQhIljrY9z', 653, '2022-01-26 23:07:08', NULL, NULL, '2022-01-26 23:07:08', '2022-01-26 23:07:08'),
(140, 'Oi7cdvCtcpvyaydScqN6SnsSCIIu0sHYaGi6FiqK', 653, '2022-01-29 10:24:37', '2022-01-29 10:28:58', '2022-01-28 18:04:21', '2022-01-29 10:24:37', '2022-01-29 10:28:58'),
(141, 'LV7VAvE9bEqWiEKCJcPnoX6gvJ4DCivaRRjjNkOq', 29, '2022-01-30 06:25:25', NULL, NULL, '2022-01-30 06:25:25', '2022-01-30 06:25:25'),
(142, 'TTtAFF8hZdklKF0sBLWILuHIXlo2o8n9TTfswAfy', 29, '2022-01-30 07:15:50', NULL, NULL, '2022-01-30 07:15:50', '2022-01-30 07:15:50'),
(143, 'ZwdISmx3ZP735WWH20IaP6vOelM7ETgTmlx8oSCo', 653, '2022-01-30 07:16:57', NULL, NULL, '2022-01-30 07:16:57', '2022-01-30 07:16:57'),
(144, 'bTWvPcPKP5bz9Io4sduknvOgnWLSQJGzCRAb5RVE', 653, '2022-01-30 07:19:54', NULL, NULL, '2022-01-30 07:19:54', '2022-01-30 07:19:54'),
(145, 'gJGy1vLLzS9SOQeQ9FteFmYMuVlfjufv9o1Kr6FU', 653, '2022-01-30 07:36:58', NULL, NULL, '2022-01-30 07:36:58', '2022-01-30 07:36:58'),
(146, 'HPnyrmBiIqHDALMmZ0WrzZuESlnfflVrtAEF2AkH', 29, '2022-01-30 08:13:41', '2022-01-30 08:36:37', '2022-01-29 18:22:56', '2022-01-30 08:13:41', '2022-01-30 08:36:37'),
(147, 's0CCkeKVCC85Q9jUSnYc09PmgXz2LU8voODkND4o', 653, '2022-01-30 08:36:56', NULL, NULL, '2022-01-30 08:36:56', '2022-01-30 08:36:56'),
(148, 'VEEa2b9e52ISTwYHrRhVXZeQ3mwgB8VUKIisdxlv', 29, '2022-01-30 09:39:06', NULL, NULL, '2022-01-30 09:39:06', '2022-01-30 09:39:06'),
(149, 'qLPke6qrL5x5sbMRGrtGO9Xi3O9ddG4uMraNcb0Y', 653, '2022-01-30 09:39:50', NULL, NULL, '2022-01-30 09:39:50', '2022-01-30 09:39:50'),
(150, 'aekTkU7sDQuwZax7upHf5NLa0ptAX1KlYvSdB1Rn', 653, '2022-01-30 09:41:35', NULL, NULL, '2022-01-30 09:41:35', '2022-01-30 09:41:35'),
(151, 'XevrB7aJ4MKkZWvu0ZaEKkoaRlkmkAkknTc6TKRm', 29, '2022-01-31 08:47:35', '2022-01-31 08:48:14', '2022-01-30 18:00:39', '2022-01-31 08:47:35', '2022-01-31 08:48:14'),
(152, 'Njkm5NVh3uCvvDmUdhBJsIojfnNJS1dXiNonJYpU', 653, '2022-01-31 08:48:34', '2022-01-31 09:01:26', '2022-01-30 18:12:52', '2022-01-31 08:48:34', '2022-01-31 09:01:26'),
(153, 'd2WoTSXXjvB7RUrFUsM2yYD8mpGKzT1VBvfRifUz', 29, '2022-01-31 09:03:51', NULL, NULL, '2022-01-31 09:03:51', '2022-01-31 09:03:51'),
(154, 'iWaedbwU52FekzxrHN6GYW6OMxycc7RLNkAw7QkW', 29, '2022-02-04 07:52:03', '2022-02-04 08:06:04', '2022-02-03 18:14:01', '2022-02-04 07:52:03', '2022-02-04 08:06:04'),
(155, 'Jl5iIwSBf1JZdNYOxEkE0PKcH039MFR3fejGwEYT', 635, '2022-02-04 08:31:13', NULL, NULL, '2022-02-04 08:31:13', '2022-02-04 08:31:13'),
(156, 'jt9Xr2idDtG4w193bUvfrJfdT0mYFmRSd7dVWgWI', 653, '2022-02-04 08:47:34', '2022-02-04 08:49:04', '2022-02-03 18:01:30', '2022-02-04 08:47:34', '2022-02-04 08:49:04'),
(157, '3yEjAqh0C5Ej0CtSRji1njcuFRLkav2f8sfYXY1M', 29, '2022-02-04 08:48:08', NULL, NULL, '2022-02-04 08:48:08', '2022-02-04 08:48:08'),
(158, 'r4Xt7MpstDvtA3RCtcUBc5z0Vij7LRued2BLgXR4', 653, '2022-02-04 08:49:12', '2022-02-04 08:49:33', '2022-02-03 18:00:21', '2022-02-04 08:49:12', '2022-02-04 08:49:33'),
(159, 'UI72AGaFFeIOnzbe6jpdIufWcFOPcuPYJOs0T2ZH', 29, '2022-02-04 09:13:01', NULL, NULL, '2022-02-04 09:13:01', '2022-02-04 09:13:01'),
(160, 'aKOxssLzlmpQNBfx44WPUKo2GYoP2d8JjwZ6r01P', 29, '2022-02-04 09:13:13', '2022-02-04 09:13:54', '2022-02-03 18:00:41', '2022-02-04 09:13:13', '2022-02-04 09:13:54'),
(161, 'R0HnkLjl7TNSPNeyg75h9G01Yywmbsi1TX2PRBdd', 29, '2022-02-04 09:17:27', '2022-02-04 09:41:52', '2022-02-03 18:24:25', '2022-02-04 09:17:27', '2022-02-04 09:41:52'),
(162, 'jsTFrt8XVewRC43eYeVXnipOC1fgCbpv37F0sNkx', 29, '2022-02-04 09:42:00', NULL, NULL, '2022-02-04 09:42:00', '2022-02-04 09:42:00'),
(163, '7qIEDmVSkfK2iqtvj6tuR7TgIOi0XO2VdsZVg7Sd', 29, '2022-02-04 10:11:29', NULL, NULL, '2022-02-04 10:11:29', '2022-02-04 10:11:29');

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `assignment_quizzes`
--
ALTER TABLE `assignment_quizzes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `assignment_students`
--
ALTER TABLE `assignment_students`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `classes`
--
ALTER TABLE `classes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `class_subjects`
--
ALTER TABLE `class_subjects`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=472;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT for table `notices`
--
ALTER TABLE `notices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `quizzes`
--
ALTER TABLE `quizzes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `quiz_answers`
--
ALTER TABLE `quiz_answers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=462;

--
-- AUTO_INCREMENT for table `quiz_answer_options`
--
ALTER TABLE `quiz_answer_options`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=818;

--
-- AUTO_INCREMENT for table `quiz_students`
--
ALTER TABLE `quiz_students`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT for table `schools`
--
ALTER TABLE `schools`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `student_classes`
--
ALTER TABLE `student_classes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `student_subjects`
--
ALTER TABLE `student_subjects`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `teachers`
--
ALTER TABLE `teachers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `teacher_subjects`
--
ALTER TABLE `teacher_subjects`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `topics`
--
ALTER TABLE `topics`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=656;

--
-- AUTO_INCREMENT for table `user_groups`
--
ALTER TABLE `user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `user_group_members`
--
ALTER TABLE `user_group_members`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=649;

--
-- AUTO_INCREMENT for table `user_group_permissions`
--
ALTER TABLE `user_group_permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=627;

--
-- AUTO_INCREMENT for table `user_logs`
--
ALTER TABLE `user_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=164;

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
