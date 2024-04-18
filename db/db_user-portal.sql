-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 19, 2024 at 01:14 AM
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
-- Database: `db_user-portal`
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

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('0286dd552c9bea9a69ecb3759e7b94777635514b', 'i:1;', 1713385753),
('0286dd552c9bea9a69ecb3759e7b94777635514b:timer', 'i:1713385753;', 1713385753),
('98fbc42faedc02492397cb5962ea3a3ffc0a9243', 'i:1;', 1713389248),
('98fbc42faedc02492397cb5962ea3a3ffc0a9243:timer', 'i:1713389248;', 1713389248),
('fb644351560d8296fe6da332236b1f8d61b2828a', 'i:1;', 1713437062),
('fb644351560d8296fe6da332236b1f8d61b2828a:timer', 'i:1713437062;', 1713437062),
('fe2ef495a1152561572949784c16bf23abb28057', 'i:2;', 1713455514),
('fe2ef495a1152561572949784c16bf23abb28057:timer', 'i:1713455514;', 1713455514);

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
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_04_14_180247_create_user_twofactorcodes', 2),
(5, '2024_04_14_190026_add_two_factor_columns_to_users_table', 3),
(6, '2024_04_17_201242_add_fileup_to_users_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_reset_tokens`
--

INSERT INTO `password_reset_tokens` (`email`, `token`, `created_at`) VALUES
('murad.cs.2017@gmail.com', '$2y$12$MDC6z78.BeAzgBA1fLIty.8/HiMidnmbIYeM/PDhCMuA6C0s4MZia', '2024-04-18 10:03:13'),
('murad0cs@outlook.com', '$2y$12$qmM7NfbB1t/QsK1GkqQrwObPYDKYtaDKo9LIe0Au/fkrEKL3mCWU6', '2024-04-15 07:32:50');

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
('5Ckj22ZUYlLoPmXgWksSluFGwxVxgo8NyTJdmZTG', 45, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiSHk5aU1PMm90ZVVTb2RnQXFOQXRPREF6NTZ1WWo0bTA5cWFkS1dmWCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9zZWFyY2hfZGF0YT9zZWFyY2g9QWRtaW4iO31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aTo0NTtzOjg6InVzZXJfMmZhIjtpOjQ1O30=', 1713456390),
('XxG3Np9mli5BkcNcpTpMsTMKDzZsVpQjSgxzZC2x', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiTk1NNEE1bW1jMk5xdVdEWm56cHlCa3FybHJDdTQ2TFdiTTVxN2lydSI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czoxNzI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9lbWFpbC92ZXJpZnkvNDYvOWNhN2ZhNDMzMmJiZTFiMzBiNTUzZjA2MjEzMzI5MmIxZDY2MWFlNT9leHBpcmVzPTE3MTM0NTg3OTUmc2lnbmF0dXJlPWU4ZmNmMWYwYTAwODkyYmJmMTFhNWJlNDQyYTViMjYwZmJiZDQ4MzYxMjI2MThjMDg5MTViM2Q1NTVkNjQ0NjQiO31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoyNzoiaHR0cDovLzEyNy4wLjAuMTo4MDAwL2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1713455426);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(255) NOT NULL,
  `dob` date DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_admin` tinyint(1) DEFAULT 0,
  `file_up` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `last_name`, `address`, `phone`, `email`, `dob`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `is_admin`, `file_up`) VALUES
(1, 'User', 'One', 'User One Address', '01701007610', 'vayof80388@etopys.com', '2024-04-02', NULL, '$2y$12$RylAUmIN7lMzbXAD7i0r4eC2rKq6wpUswsJB9/DYNK5r0K9TY/NAG', NULL, '2024-04-13 05:02:35', '2024-04-13 05:02:35', 0, NULL),
(5, 'User', 'Two', 'User Two Address', '01701007610', 'murad0cs@outlook.com', '2024-04-02', '2024-04-13 07:53:40', '$2y$12$KOVsOLaxj3CHBHWlXRTxWOXUMiAwto23P7ABO0Kqtz4oP92z8QGeK', 'QjjDiPK395MHdL9xj9dxY87yb507BaatLEKoRAPn5oTdCenWzQWQv8MqLlbx', '2024-04-13 07:51:26', '2024-04-14 23:11:05', 1, NULL),
(6, 'User', 'Three', 'User Three Address', '01701007610', 'nokave1844@kravify.com', '2024-04-02', '2024-04-13 08:09:38', '$2y$12$VIwD5mEyY1uoXZTT1smtWOShg1/PB1TwEcbE6PMgxSRhIc3aQ6E06', NULL, '2024-04-13 08:08:47', '2024-04-13 08:09:38', 0, NULL),
(7, 'User', 'Four', 'User Four Address', '01701007610', 'xagid35159@rartg.com', '2024-04-02', NULL, '$2y$12$DyXbuXSkpLJFNnM9H.rNi.kLGDbq4qdjHGZToS2fnpClA3zJgW2zm', NULL, '2024-04-13 11:49:59', '2024-04-13 11:49:59', 0, NULL),
(8, 'User', 'Five', 'User Five Address', '01701007610', 'pefam23429@rartg.com', '2024-04-02', '2024-04-13 12:48:12', '$2y$12$VYAS8lAPopi/noAB75gQCetQnEJcwsyAkyq0MEOk9NgEjYSg9tJw2', NULL, '2024-04-13 12:47:48', '2024-04-13 12:48:12', 0, NULL),
(11, 'User', 'Six', 'User Six Address', '01701007610', 'vawos29911@rartg.com', '2024-04-02', NULL, '$2y$12$4IDgRr/XPvI0tcYBiU4EEex424irGMqQDeuKMrsBfvAa9KwQqc/wu', NULL, '2024-04-14 12:41:51', '2024-04-14 12:41:51', 0, NULL),
(12, 'User', 'Seven', 'User Seven Address', '01701007610', 'megomah145@iliken.com', '2024-04-02', '2024-04-14 13:28:58', '$2y$12$.zlEzpLmyYKJgz9ZpF9ZaOII6Z5SdQJ5YK2X1G83/y3lWKlY.KHsm', NULL, '2024-04-14 13:28:21', '2024-04-14 13:28:58', 0, NULL),
(13, 'User', 'Eight', 'User Eight Address', '01701007610', 'bepanes698@etopys.com', '2024-04-02', '2024-04-14 13:41:00', '$2y$12$nYAFuO5K0htPQDyUSWhJme6jRAcA/mL6pSs6atb4WrHnw9eYzSx5C', NULL, '2024-04-14 13:39:41', '2024-04-14 13:41:00', 0, NULL),
(14, 'User', 'Nine', 'User Nine Address', '01701007610', 'vijowop962@iliken.com', '2024-04-02', '2024-04-14 23:38:26', '$2y$12$1PeeN9uUTpX9pFSQ6/eDp..xWL8uQQEGKiE6vBgLVMboQBdAmnIK6', NULL, '2024-04-14 23:37:46', '2024-04-16 11:04:06', 0, NULL),
(44, 'Admin', 'One', 'Admin One Address', '01521216707', 'safan23887@etopys.com', '2024-04-02', '2024-04-17 15:26:28', '$2y$12$zqrDx4YIb04KLr07k2b99epMw2j0dTr0khVY4VXktWdUzam1qgaMa', NULL, '2024-04-17 15:26:09', '2024-04-17 15:26:28', 1, 'Resume_of_Md.-Abdullah-Al-Murad.pdf'),
(45, 'Admin', 'Two', 'User Address', '01521216707', 'murad.cs.2017@gmail.com', '2018-06-12', '2024-04-18 04:43:22', '$2y$12$O6GZWmrq7AFF8XnlQvoRT.2O5kisWnPxWYGoCDUZ./xvdFwNdFbCW', NULL, '2024-04-18 04:42:59', '2024-04-18 04:43:22', 1, 'CV_of_Md.-Abdullah-Al-Murad.pdf'),
(46, 'User', 'New', 'New User Address', '01701007610', 'mofavad402@iliken.com', '2012-01-01', '2024-04-18 09:51:22', '$2y$12$s9oDEG07HCyWMGj/vDEVG.i2i/VSBN6RLzaChZ7EaZEHVxc68eefS', NULL, '2024-04-18 09:46:35', '2024-04-18 09:51:22', 0, 'Practical Exam Question-Software Engineer Position (Bit Mascot).pdf');

-- --------------------------------------------------------

--
-- Table structure for table `user_twofactorcodes`
--

CREATE TABLE `user_twofactorcodes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `code` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_twofactorcodes`
--

INSERT INTO `user_twofactorcodes` (`id`, `user_id`, `code`, `created_at`, `updated_at`) VALUES
(1, 11, '8634', '2024-04-14 12:45:35', '2024-04-14 13:25:13'),
(2, 5, '679436', '2024-04-14 12:53:20', '2024-04-17 23:17:55'),
(3, 12, '2018', '2024-04-14 13:29:26', '2024-04-14 13:29:26'),
(4, 13, '7370', '2024-04-14 13:40:06', '2024-04-14 13:40:06'),
(5, 14, '897152', '2024-04-14 23:44:16', '2024-04-16 14:10:19'),
(6, 17, '116054', '2024-04-17 04:14:01', '2024-04-17 04:14:22'),
(7, 44, '927573', '2024-04-17 23:16:57', '2024-04-18 07:30:46'),
(8, 45, '700056', '2024-04-18 09:54:48', '2024-04-18 10:06:08');

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
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_twofactorcodes`
--
ALTER TABLE `user_twofactorcodes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

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
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `user_twofactorcodes`
--
ALTER TABLE `user_twofactorcodes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
