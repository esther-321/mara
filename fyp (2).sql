-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 07, 2025 at 05:38 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fyp`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `campuses`
--

CREATE TABLE `campuses` (
  `CampusId` bigint(20) UNSIGNED NOT NULL,
  `CampusName` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `campuses`
--

INSERT INTO `campuses` (`CampusId`, `CampusName`, `created_at`, `updated_at`) VALUES
(1, 'Ngoma', '2025-05-01 14:57:27', NULL),
(2, 'Kigali', '2025-05-04 14:57:33', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `DepartmentId` bigint(20) UNSIGNED NOT NULL,
  `DepartmentCode` varchar(255) NOT NULL,
  `DepartmentName` varchar(255) NOT NULL,
  `FacultyId` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`DepartmentId`, `DepartmentCode`, `DepartmentName`, `FacultyId`, `created_at`, `updated_at`) VALUES
(1, 'DPHY', 'Department of Physics', 1, '2025-05-07 14:59:37', NULL),
(2, 'DCIV', 'Department of Civil Engineering', 2, '2025-05-04 14:59:43', NULL),
(3, 'CS', 'Computer Science', 1, '2025-05-02 13:09:48', '2025-05-02 13:09:48');

-- --------------------------------------------------------

--
-- Table structure for table `faculties`
--

CREATE TABLE `faculties` (
  `FacultyId` bigint(20) UNSIGNED NOT NULL,
  `FacultyCode` varchar(255) NOT NULL,
  `FacultyName` varchar(255) NOT NULL,
  `CampusId` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faculties`
--

INSERT INTO `faculties` (`FacultyId`, `FacultyCode`, `FacultyName`, `CampusId`, `created_at`, `updated_at`) VALUES
(1, 'FSCI', 'Faculty of Science', 1, '2025-05-07 14:58:25', NULL),
(2, 'FENG', 'Faculty of Engineering', 2, '2025-05-11 14:58:37', NULL),
(3, 'FBUS', 'Faculty of Business', 1, '2025-05-02 13:10:53', '2025-05-02 13:10:53');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sender_id` bigint(20) UNSIGNED NOT NULL,
  `receiver_id` bigint(20) UNSIGNED NOT NULL,
  `content` text NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(12, '0001_01_01_000001_create_cache_table', 1),
(13, '0001_01_01_000002_create_jobs_table', 1),
(14, '2025_04_13_094806_create_users_table', 1),
(15, '2025_04_13_095903_create_campuses_table', 1),
(16, '2025_04_13_100225_create_faculties_table', 1),
(17, '2025_04_13_100740_create_departments_table', 1),
(18, '2025_04_13_100841_create_students_table', 1),
(19, '2025_04_13_100999_create_supervisors_table', 1),
(20, '2025_04_13_101000_create_projects_table', 1),
(21, '2025_04_17_082534_add_downloads_and_views_to_projects_table', 1),
(22, '2025_04_17_082536_modify_approve_column_in_projects_table', 1),
(23, '2025_05_06_082229_create_messages_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `ProjectCode` bigint(20) UNSIGNED NOT NULL,
  `ProjectName` varchar(255) NOT NULL,
  `ProjectProblems` text NOT NULL,
  `ProjectSolutions` text NOT NULL,
  `ProjectAbstract` text NOT NULL,
  `ProjectDissertation` varchar(255) DEFAULT NULL,
  `ProjectSourceCodes` varchar(255) DEFAULT NULL,
  `DepartmentId` bigint(20) UNSIGNED NOT NULL,
  `StudentRegNumber` varchar(255) NOT NULL,
  `SupervisorEmail` varchar(255) DEFAULT NULL,
  `views` int(11) NOT NULL DEFAULT 0,
  `downloads` int(11) NOT NULL DEFAULT 0,
  `Approve` enum('no','yes','wait') DEFAULT 'wait',
  `ProjectStatus` enum('completed','pending') NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`ProjectCode`, `ProjectName`, `ProjectProblems`, `ProjectSolutions`, `ProjectAbstract`, `ProjectDissertation`, `ProjectSourceCodes`, `DepartmentId`, `StudentRegNumber`, `SupervisorEmail`, `views`, `downloads`, `Approve`, `ProjectStatus`, `created_at`, `updated_at`) VALUES
(1, 'E-Learning Mobile App for Rural Students', 'Inability to attend physical schools regularly.', 'Develop an offline-first mobile app with preloaded content.', 'This mobile application provides access to primary and secondary education materials for rural students, even in low-connectivity environments. The app supports video, text, and interactive quizzes while working offline, thus improving educational outcomes for underserved communities.', NULL, NULL, 3, '22RP00135', 'supervisor@gmail.com', 0, 0, 'yes', 'completed', '2025-05-03 15:55:41', '2025-05-05 13:51:34'),
(3, 'AI-Powered Resume Scanner', 'Recruiters waste time scanning large volumes of CVs manually.', 'Match resumes against job descriptions for relevance scoring.', 'This project introduces an AI Resume Scanner that simplifies the recruitment process by using Natural Language Processing to analyze and rank job applications. It saves time for recruiters, reduces bias, and ensures that the most qualified candidates are highlighted based on predefined job criteria.', 'project_files/dissertations/OjoXWemTq4rgWoMLTSPYRZlFQyypICFifU7iBeyy.docx', 'project_files/source_codes/q60BXjlX1G7Azl4ucCkcMYkOI8Geac2p8Dk9hjAX.zip', 2, '22RP00131', NULL, 0, 0, 'wait', 'pending', '2025-05-04 07:18:51', '2025-05-04 07:18:51');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('2jXJNjTue0NSUw7ur0MNGNbtbeg6aeyz8JKMX62r', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', 'YTo5OntzOjY6Il9mbGFzaCI7YToyOntzOjM6Im5ldyI7YTowOnt9czozOiJvbGQiO2E6MDp7fX1zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czozNDoiaHR0cDovLzEyNy4wLjAuMTo4MDAwL21lc3NhZ2VzL05hTiI7fXM6NjoiX3Rva2VuIjtzOjQwOiI5dUJHZDYwUTV3UVdMVW95bVU3SHY2NG9kOHY4MXY0UXM1UEV5MG5TIjtzOjc6InVzZXJfaWQiO2k6NDtzOjE2OiJTdHVkZW50UmVnTnVtYmVyIjtzOjk6IjIyUlAwMDEzNSI7czo0OiJuYW1lIjtzOjg6ImpvaG4gZG9lIjtzOjU6ImVtYWlsIjtzOjE3OiJzdHVkZW50QGdtYWlsLmNvbSI7czo0OiJyb2xlIjtzOjc6InN0dWRlbnQiO3M6MTI6IkRlcGFydG1lbnRJZCI7Tjt9', 1746632330);

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `StudentRegNumber` varchar(255) NOT NULL,
  `StudentFirstName` varchar(255) NOT NULL,
  `StudentLastName` varchar(255) NOT NULL,
  `StudentGender` varchar(255) NOT NULL,
  `StudentEmail` varchar(255) NOT NULL,
  `StudentPhoneNumber` varchar(255) NOT NULL,
  `DepartmentId` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`StudentRegNumber`, `StudentFirstName`, `StudentLastName`, `StudentGender`, `StudentEmail`, `StudentPhoneNumber`, `DepartmentId`, `created_at`, `updated_at`) VALUES
('21RP00383', 'joyce', 'jojo', 'Female', 'jojo@gmail.com', '+250788811942', 2, '2025-05-05 08:51:27', '2025-05-05 08:51:27'),
('22RP00131', 'danny', 'nano', 'Male', 'nano@gmail.com', '+250783818522', 2, '2025-05-04 07:14:53', '2025-05-04 07:14:53'),
('22RP00135', 'john', 'doe', 'Male', 'student@gmail.com', '+250783818521', 3, '2025-05-02 13:32:21', '2025-05-02 13:32:21');

-- --------------------------------------------------------

--
-- Table structure for table `supervisors`
--

CREATE TABLE `supervisors` (
  `SupervisorEmail` varchar(255) NOT NULL,
  `SupervisorFirstName` varchar(255) NOT NULL,
  `SupervisorLastName` varchar(255) NOT NULL,
  `SupervisorPhoneNumber` varchar(255) NOT NULL,
  `DepartmentId` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `supervisors`
--

INSERT INTO `supervisors` (`SupervisorEmail`, `SupervisorFirstName`, `SupervisorLastName`, `SupervisorPhoneNumber`, `DepartmentId`, `created_at`, `updated_at`) VALUES
('supervisor@gmail.com', 'supervisor', '', '+2507889332245', 3, NULL, NULL),
('toto@gmail.com', 'jonh', 'toto', '0783818531', 3, '2025-05-07 10:57:22', '2025-05-07 10:57:22');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `reg_number` varchar(255) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('student','supervisor','department','admin') NOT NULL DEFAULT 'student',
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `reg_number`, `email_verified_at`, `password`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', NULL, NULL, '$2y$12$HpQd.guYWM6O8sT58vl4B.6AZjqP9g04hBN4Qm9kapVQ4zLNaSZ.m', 'admin', NULL, NULL, NULL),
(2, 'gilly', 'gilly@gmail.com', NULL, NULL, '$2y$12$39g4EuPULzvMfYEfum.XqOz8BxdvMw23rw4FTb2gAePg3yY0P/XRe', 'department', NULL, '2025-05-02 13:13:21', '2025-05-02 13:13:21'),
(3, 'supervisor', 'supervisor@gmail.com', NULL, NULL, '$2y$12$jNkCFyaUr4bwMXenjvtQ0.LxTCeK8DWD2mh7SENAIyDP.whzmOnh2', 'supervisor', NULL, '2025-05-02 13:14:26', '2025-05-02 13:14:26'),
(4, 'john doe', 'student@gmail.com', '22RP00135', NULL, '$2y$12$HpQd.guYWM6O8sT58vl4B.6AZjqP9g04hBN4Qm9kapVQ4zLNaSZ.m', 'student', NULL, '2025-05-02 13:32:21', '2025-05-07 12:11:47'),
(5, 'danny nano', 'nano@gmail.com', '22RP00131', NULL, '$2y$12$FFHA6wRU7bxDgExBThqDOenrkP/3ln4X6fSdpD5uA5pTD6iuGXrta', 'student', NULL, '2025-05-04 07:14:54', '2025-05-04 07:14:54'),
(6, 'joyce jojo', 'jojo@gmail.com', '21RP00383', NULL, '$2y$12$qR9EiYULNyhGukgeaOnnXOBkQWkEMmtYx1ghmAgo5.y7eRq.Dg58C', 'student', NULL, '2025-05-05 08:51:28', '2025-05-05 08:51:28'),
(7, 'jonh ', 'toto@gmail.com', NULL, NULL, '$2y$12$ULigFbD/7T6QwFlVJWljn.7h43ChWm512Y4PozIZ2d83.aQlN9kF2', 'supervisor', NULL, '2025-05-07 10:57:22', '2025-05-07 10:57:22');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `campuses`
--
ALTER TABLE `campuses`
  ADD PRIMARY KEY (`CampusId`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`DepartmentId`),
  ADD KEY `departments_facultyid_foreign` (`FacultyId`);

--
-- Indexes for table `faculties`
--
ALTER TABLE `faculties`
  ADD PRIMARY KEY (`FacultyId`),
  ADD UNIQUE KEY `faculties_facultycode_unique` (`FacultyCode`),
  ADD KEY `faculties_campusid_foreign` (`CampusId`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `messages_sender_id_foreign` (`sender_id`),
  ADD KEY `messages_receiver_id_foreign` (`receiver_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`ProjectCode`),
  ADD UNIQUE KEY `projects_studentregnumber_unique` (`StudentRegNumber`),
  ADD KEY `projects_departmentid_foreign` (`DepartmentId`),
  ADD KEY `projects_supervisoremail_foreign` (`SupervisorEmail`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`StudentRegNumber`),
  ADD UNIQUE KEY `students_studentemail_unique` (`StudentEmail`),
  ADD UNIQUE KEY `students_studentphonenumber_unique` (`StudentPhoneNumber`),
  ADD KEY `students_departmentid_foreign` (`DepartmentId`);

--
-- Indexes for table `supervisors`
--
ALTER TABLE `supervisors`
  ADD PRIMARY KEY (`SupervisorEmail`),
  ADD UNIQUE KEY `supervisors_supervisorphonenumber_unique` (`SupervisorPhoneNumber`),
  ADD KEY `supervisors_departmentid_foreign` (`DepartmentId`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_reg_number_unique` (`reg_number`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `campuses`
--
ALTER TABLE `campuses`
  MODIFY `CampusId` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `DepartmentId` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `faculties`
--
ALTER TABLE `faculties`
  MODIFY `FacultyId` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `ProjectCode` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `departments`
--
ALTER TABLE `departments`
  ADD CONSTRAINT `departments_facultyid_foreign` FOREIGN KEY (`FacultyId`) REFERENCES `faculties` (`FacultyId`) ON DELETE CASCADE;

--
-- Constraints for table `faculties`
--
ALTER TABLE `faculties`
  ADD CONSTRAINT `faculties_campusid_foreign` FOREIGN KEY (`CampusId`) REFERENCES `campuses` (`CampusId`) ON DELETE CASCADE;

--
-- Constraints for table `messages`
--
ALTER TABLE `messages`
  ADD CONSTRAINT `messages_receiver_id_foreign` FOREIGN KEY (`receiver_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `messages_sender_id_foreign` FOREIGN KEY (`sender_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `projects`
--
ALTER TABLE `projects`
  ADD CONSTRAINT `projects_departmentid_foreign` FOREIGN KEY (`DepartmentId`) REFERENCES `departments` (`DepartmentId`) ON DELETE CASCADE,
  ADD CONSTRAINT `projects_studentregnumber_foreign` FOREIGN KEY (`StudentRegNumber`) REFERENCES `students` (`StudentRegNumber`) ON DELETE CASCADE,
  ADD CONSTRAINT `projects_supervisoremail_foreign` FOREIGN KEY (`SupervisorEmail`) REFERENCES `supervisors` (`SupervisorEmail`) ON DELETE CASCADE;

--
-- Constraints for table `students`
--
ALTER TABLE `students`
  ADD CONSTRAINT `students_departmentid_foreign` FOREIGN KEY (`DepartmentId`) REFERENCES `departments` (`DepartmentId`) ON DELETE CASCADE;

--
-- Constraints for table `supervisors`
--
ALTER TABLE `supervisors`
  ADD CONSTRAINT `supervisors_departmentid_foreign` FOREIGN KEY (`DepartmentId`) REFERENCES `departments` (`DepartmentId`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
