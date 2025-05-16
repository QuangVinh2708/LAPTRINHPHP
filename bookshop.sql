-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 16, 2025 at 09:28 AM
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
-- Database: `bookshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cabin_id` bigint(20) UNSIGNED NOT NULL,
  `guest_name` varchar(255) NOT NULL,
  `guest_email` varchar(255) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `nights` int(11) NOT NULL,
  `status` enum('unconfirmed','checked_in','checked_out') NOT NULL DEFAULT 'unconfirmed',
  `amount` decimal(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`id`, `cabin_id`, `guest_name`, `guest_email`, `start_date`, `end_date`, `nights`, `status`, `amount`, `created_at`, `updated_at`) VALUES
(5, 9, 'Binh test', 'dffdfd@dfsfdsf.com', '2025-05-15', '2025-05-16', 1, 'checked_in', 8.19, '2025-05-15 02:27:33', '2025-05-15 02:27:53'),
(6, 19, 'dsfdfd', 'dfdfd@gmail.com', '2025-05-15', '2025-05-18', 3, 'checked_in', 1425.00, '2025-05-15 02:33:10', '2025-05-15 02:34:24'),
(7, 11, 'Binh test', 'ddd@dfdf.com', '2025-05-15', '2025-05-25', 10, 'checked_out', 29.11, '2025-05-15 03:06:00', '2025-05-15 03:06:31'),
(9, 11, 'dfdf', 'ainh@ainh.dev', '2025-05-15', '2025-05-16', 1, 'checked_out', 2.92, '2025-05-15 03:08:40', '2025-05-15 22:00:34'),
(10, 18, 'dfdf', 'ainh@ainh.dev', '2025-05-15', '2025-05-16', 1, 'checked_out', 4.01, '2025-05-15 03:12:12', '2025-05-15 22:00:29'),
(11, 23, 'Binh test', 'ainh@ainh.dev', '2025-05-15', '2025-05-16', 1, 'checked_out', 1060.00, '2025-05-15 03:14:34', '2025-05-15 03:17:02'),
(13, 18, 'dfdf', 'dfdfd@gmail.com', '2025-05-15', '2025-05-19', 4, 'unconfirmed', 16.00, '2025-05-15 06:36:02', '2025-05-15 06:36:02'),
(14, 20, 'dfdf', 'dfdfd@gmail.com', '2025-05-15', '2025-05-16', 1, 'unconfirmed', 475.00, '2025-05-15 06:44:31', '2025-05-15 06:44:31'),
(15, 18, 'ssds', 'sdfjk@dsfjl.com', '2025-05-15', '2025-10-02', 140, 'checked_out', 8960.00, '2025-05-15 06:45:19', '2025-05-15 21:58:05'),
(16, 18, '2222111', 'ainh@ainh.dev', '2025-05-15', '2025-05-19', 4, 'unconfirmed', 16.00, '2025-05-15 08:18:28', '2025-05-15 08:18:28'),
(17, 18, '2222111', 'ainh@ainh.dev', '2025-05-15', '2025-05-16', 1, 'unconfirmed', 4.00, '2025-05-15 08:29:00', '2025-05-15 08:29:00'),
(18, 24, 'Binh test', 'ainh@ainh.dev', '2025-05-16', '2025-05-17', 1, 'checked_out', 1015.00, '2025-05-15 19:58:55', '2025-05-15 21:32:13'),
(20, 18, 'Binh test', 'ainh@ainh.dev', '2025-05-16', '2025-05-17', 1, 'checked_in', 49.00, '2025-05-15 22:12:37', '2025-05-15 22:20:43'),
(21, 24, 'Binh test', 'ainh@ainh.dev', '2025-05-16', '2025-05-18', 2, 'unconfirmed', 2000.00, '2025-05-15 22:12:54', '2025-05-15 22:12:54');

-- --------------------------------------------------------

--
-- Table structure for table `cabins`
--

CREATE TABLE `cabins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `capacity` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `discount` decimal(10,2) DEFAULT NULL,
  `pic_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cabins`
--

INSERT INTO `cabins` (`id`, `name`, `capacity`, `price`, `discount`, `pic_id`, `created_at`, `updated_at`) VALUES
(9, '9', 9, 9.00, 9.00, 4, '2025-05-14 05:42:19', '2025-05-14 05:42:19'),
(10, 'test', 3, 3.00, 3.00, 5, '2025-05-15 01:13:49', '2025-05-15 01:13:49'),
(11, 'Copy of test ffffff', 3, 3.00, 3.00, 5, '2025-05-15 01:14:01', '2025-05-15 01:14:20'),
(12, 'Copy of Copy of test', 3, 3.00, 3.00, 5, '2025-05-15 01:14:08', '2025-05-15 01:14:08'),
(14, 'fd', 4, 4.00, 0.00, 1, '2025-05-15 01:25:17', '2025-05-15 01:25:17'),
(15, 'Phòng 4 tầng 2', 2, 200.00, 5.00, 6, '2025-05-15 01:28:16', '2025-05-15 01:28:27'),
(18, '4', 4, 4.00, 0.00, 7, '2025-05-15 01:41:04', '2025-05-15 01:41:35'),
(19, 'ca bin mới', 5, 500.00, 5.00, 8, '2025-05-15 02:32:05', '2025-05-15 02:32:05'),
(20, 'Copy of ca bin mới', 5, 500.00, 5.00, 8, '2025-05-15 02:32:39', '2025-05-15 02:32:39'),
(21, 'Copy of Copy of ca bin mới', 5, 500.00, 5.00, 8, '2025-05-15 02:32:41', '2025-05-15 02:32:41'),
(22, 'Copy of Copy of Copy of ca bin mới', 5, 500.00, 5.00, 8, '2025-05-15 02:32:43', '2025-05-15 02:32:43'),
(23, '99999999', 9, 1000.00, 0.00, 1, '2025-05-15 03:14:21', '2025-05-15 03:14:21'),
(24, 'big20', 20, 2000.00, 50.00, 10, '2025-05-15 18:54:50', '2025-05-15 18:55:27');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `booking_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `national_id` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `booking_id`, `name`, `email`, `phone_number`, `address`, `national_id`, `country`, `created_at`, `updated_at`) VALUES
(5, 5, 'Binh test', 'dffdfd@dfsfdsf.com', '3424343', 'd', 'd', 'd', '2025-05-15 02:27:33', '2025-05-15 02:27:33'),
(6, 6, 'dsfdfd', 'dfdfd@gmail.com', 'dfsf', 'dfdf', 'dfd', 'fd', '2025-05-15 02:33:10', '2025-05-15 02:33:10'),
(7, 7, 'Binh test', 'ddd@dfdf.com', '3245345454', 'sdfdsf', 'ddfdf', 'Vietnam', '2025-05-15 03:06:00', '2025-05-15 03:06:00'),
(9, 9, 'dfdf', 'ainh@ainh.dev', '3245345454', 'dsfdfd', 'fdfd', 'fdfd', '2025-05-15 03:08:40', '2025-05-15 03:08:40'),
(10, 10, 'dfdf', 'ainh@ainh.dev', '3245345454', 'dfdf', 'df', 'dfd', '2025-05-15 03:12:12', '2025-05-15 03:12:12'),
(11, 11, 'Binh test', 'ainh@ainh.dev', '3245345454', 'sdfdsf', 'erergeg', 'Vietnam', '2025-05-15 03:14:34', '2025-05-15 03:14:34'),
(13, 13, 'dfdf', 'dfdfd@gmail.com', '5344', 'dfdsf', 'dfdf', 'dfdf', '2025-05-15 06:36:02', '2025-05-15 06:36:02'),
(14, 14, 'dfdf', 'dfdfd@gmail.com', '5344', 'sss', 'sss', 'sss', '2025-05-15 06:44:31', '2025-05-15 06:44:31'),
(15, 15, 'ssds', 'sdfjk@dsfjl.com', 'sdws', 'dsfd', 'dsd', 'Vietnam', '2025-05-15 06:45:19', '2025-05-15 06:45:19'),
(16, 16, '2222111', 'ainh@ainh.dev', '3245345454', 'sdfdsf', 'dsfdf', 'UZ', '2025-05-15 08:18:28', '2025-05-15 08:18:28'),
(17, 17, '2222111', 'ainh@ainh.dev', '3245345454', 'ss', 'sss', 'BH', '2025-05-15 08:29:01', '2025-05-15 08:29:01'),
(18, 18, 'Binh test', 'ainh@ainh.dev', '3245345454', 'fgfg', 'fgfg', 'VN', '2025-05-15 19:58:55', '2025-05-15 19:58:55'),
(20, 20, 'Binh test', 'ainh@ainh.dev', '3245345454', 'ee', 'fgfg', 'VN', '2025-05-15 22:12:37', '2025-05-15 22:12:37'),
(21, 21, 'Binh test', 'ainh@ainh.dev', '3245345454', 'fddf', 'fgfg', 'UG', '2025-05-15 22:12:54', '2025-05-15 22:12:54');

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
(1, '1998_01_01_000000_create_pics_table', 1),
(2, '1999_01_01_000000_create_users_table', 1),
(3, '1999_01_01_000001_create_cabins_table', 1),
(4, '1999_01_01_000002_create_bookings_table', 1),
(5, '1999_01_01_000003_create_customers_table', 1),
(6, '1999_01_01_000004_create_settings_table', 1),
(7, '1999_01_01_000005_create_failed_jobs_table', 1),
(8, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
(6, 'App\\Models\\User', 11, 'Personal Access Token', '6444fa880caed03c1fba6cc8a4c315d9b37767d629bef601f80cbd997f195a3f', '[\"*\"]', '2025-05-15 23:59:14', '2025-05-15 22:11:33', '2025-05-15 23:59:14');

-- --------------------------------------------------------

--
-- Table structure for table `pics`
--

CREATE TABLE `pics` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `filename` varchar(255) NOT NULL,
  `path` varchar(255) NOT NULL,
  `type_image` enum('uploaded','ai_generated') NOT NULL DEFAULT 'uploaded',
  `mime_type` varchar(255) DEFAULT NULL,
  `original_filename` varchar(255) DEFAULT NULL,
  `size` int(11) DEFAULT NULL COMMENT 'File size in bytes',
  `width` int(11) DEFAULT NULL COMMENT 'Image width in pixels',
  `height` int(11) DEFAULT NULL COMMENT 'Image height in pixels',
  `alt_text` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pics`
--

INSERT INTO `pics` (`id`, `filename`, `path`, `type_image`, `mime_type`, `original_filename`, `size`, `width`, `height`, `alt_text`, `description`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'unknowncabin.jpeg', 'uploads/images/unknowncabin.jpeg', 'uploaded', 'image/jpeg', 'unknowncabin.jpeg', 34844, 1024, 1024, NULL, '3', 1, '2025-05-14 05:28:20', '2025-05-14 05:28:20'),
(2, '1747225996_TrjdrjCg2M.jpg', 'uploads/images/1747225996_TrjdrjCg2M.jpg', 'uploaded', 'image/jpeg', 'loadingBkg_base.jpg', 10353, 500, 500, NULL, '4', 1, '2025-05-14 05:33:16', '2025-05-14 05:33:16'),
(4, '1747226539_lePNzH9TyA.jpg', 'uploads/images/1747226539_lePNzH9TyA.jpg', 'uploaded', 'image/jpeg', 'loadingBkg_base.jpg', 10353, 500, 500, NULL, NULL, 1, '2025-05-14 05:42:19', '2025-05-14 05:42:19'),
(5, '1747296829_A6YfAGUrDg.png', 'uploads/images/1747296829_A6YfAGUrDg.png', 'uploaded', 'image/png', 'Screenshot 2025-05-12 024338.png', 198434, 443, 343, NULL, NULL, 1, '2025-05-15 01:13:49', '2025-05-15 01:13:49'),
(6, '1747297696_XGJKewEWe8.png', 'uploads/images/1747297696_XGJKewEWe8.png', 'uploaded', 'image/png', 'Screenshot 2025-04-20 083507.png', 53859, 693, 316, NULL, NULL, 1, '2025-05-15 01:28:16', '2025-05-15 01:28:16'),
(7, '1747298495_w3WpZV8y2g.png', 'uploads/images/1747298495_w3WpZV8y2g.png', 'uploaded', 'image/png', 'Screenshot 2025-05-12 100520.png', 21526, 313, 292, NULL, NULL, 1, '2025-05-15 01:41:35', '2025-05-15 01:41:35'),
(8, '1747301525_333OXfk4Mf.png', 'uploads/images/1747301525_333OXfk4Mf.png', 'uploaded', 'image/png', 'Screenshot 2025-05-12 024209.png', 234331, 427, 368, NULL, NULL, 1, '2025-05-15 02:32:05', '2025-05-15 02:32:05'),
(9, '1747360517_jIN9xSC9hd.png', 'uploads/images/1747360517_jIN9xSC9hd.png', 'uploaded', 'image/png', 'Screenshot 2025-05-15 163419.png', 28256, 1197, 500, NULL, NULL, 1, '2025-05-15 18:55:17', '2025-05-15 18:55:17'),
(10, '1747360527_3mnqJTay2U.png', 'uploads/images/1747360527_3mnqJTay2U.png', 'uploaded', 'image/png', 'Screenshot 2025-05-11 141133.png', 429448, 954, 556, NULL, NULL, 1, '2025-05-15 18:55:27', '2025-05-15 18:55:27'),
(11, '1747378295_TbNfTSFRQX.jpg', 'uploads/avatars/1747378295_TbNfTSFRQX.jpg', 'uploaded', 'image/jpeg', 'avatar_upload.jpg', 110593, 1582, 871, 'User avatar for Henry Metz', NULL, 1, '2025-05-15 23:51:35', '2025-05-15 23:51:35'),
(12, '1747378745_sLFlYF87Bb.jpg', 'uploads/avatars/1747378745_sLFlYF87Bb.jpg', 'uploaded', 'image/jpeg', 'avatar_upload.jpg', 3163231, 1024, 1024, 'User avatar for Tung Tung Tung Ainhua', NULL, 1, '2025-05-15 23:59:05', '2025-05-15 23:59:05');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `min_nights_booking` int(11) NOT NULL DEFAULT 3,
  `max_nights_booking` int(11) NOT NULL DEFAULT 90,
  `max_guests_booking` int(11) NOT NULL DEFAULT 8,
  `breakfast_price` decimal(8,2) NOT NULL DEFAULT 15.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `min_nights_booking`, `max_nights_booking`, `max_guests_booking`, `breakfast_price`, `created_at`, `updated_at`) VALUES
(1, 1, 21, 4, 15.00, '2025-05-14 00:01:47', '2025-05-15 18:54:09');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `avatar_id` bigint(20) UNSIGNED DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `is_active`, `avatar_id`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin User', 'admin@example.com', '2025-05-14 00:01:47', '$2y$10$B8pYTxUH.EWaTWq1B6mTH.cekKEHqjRyKOJviekbnCexFdCPKUUca', 1, NULL, 'v8vyxBi0K8', '2025-05-14 00:01:47', '2025-05-14 00:01:47'),
(2, 'Test User', 'test@example.com', '2025-05-14 00:01:47', '$2y$10$CH/x9FnLHBEQzQjuSbu5LOkAzVrJ1XpVNp5nw2jczv2BI2Pz4fBwq', 1, NULL, 'rUlvJ5KoHQ', '2025-05-14 00:01:47', '2025-05-14 00:01:47'),
(3, 'Jena Donnelly', 'mertz.bulah@example.org', '2025-05-14 00:01:47', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, NULL, 'rf3bmZEsXQ', '2025-05-14 00:01:47', '2025-05-14 00:01:47'),
(4, 'Sydney Weimann', 'ignatius43@example.com', '2025-05-14 00:01:47', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, NULL, 'GBmXbPXTco', '2025-05-14 00:01:47', '2025-05-14 00:01:47'),
(5, 'Noelia Hill', 'bkirlin@example.net', '2025-05-14 00:01:47', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, NULL, 'hPUc9cAkrk', '2025-05-14 00:01:47', '2025-05-14 00:01:47'),
(6, 'Prof. Jolie Murray MD', 'runte.bessie@example.org', '2025-05-14 00:01:47', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, NULL, '057EMmrioW', '2025-05-14 00:01:47', '2025-05-14 00:01:47'),
(7, 'Prof. Alan Runolfsdottir', 'amya36@example.com', '2025-05-14 00:01:47', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, NULL, 'F3crEWEjJE', '2025-05-14 00:01:47', '2025-05-14 00:01:47'),
(8, 'Braden Heathcote', 'hailee12@example.net', '2025-05-14 00:01:47', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, NULL, 'n7yv3aX5fE', '2025-05-14 00:01:47', '2025-05-14 00:01:47'),
(9, 'Dawn Klein', 'larue.mckenzie@example.net', '2025-05-14 00:01:47', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, NULL, 'kxkIM05FN1', '2025-05-14 00:01:47', '2025-05-14 00:01:47'),
(10, 'Dejuan Conroy', 'xavier.white@example.net', '2025-05-14 00:01:47', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, NULL, 'GUw4526Gj0', '2025-05-14 00:01:47', '2025-05-14 00:01:47'),
(11, 'Tung Tung Tung Ainhua', 'ainh@ainh.dev', NULL, '$2y$10$H9nUTtnZBsY4huahzOrBG.G9IKOQ5EY1Lx/nuECtOv982fM5Gdm02', 1, 12, NULL, '2025-05-15 22:11:04', '2025-05-15 23:59:05');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bookings_cabin_id_foreign` (`cabin_id`);

--
-- Indexes for table `cabins`
--
ALTER TABLE `cabins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cabins_pic_id_foreign` (`pic_id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customers_booking_id_foreign` (`booking_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `pics`
--
ALTER TABLE `pics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_avatar_id_foreign` (`avatar_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `cabins`
--
ALTER TABLE `cabins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `pics`
--
ALTER TABLE `pics`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bookings`
--
ALTER TABLE `bookings`
  ADD CONSTRAINT `bookings_cabin_id_foreign` FOREIGN KEY (`cabin_id`) REFERENCES `cabins` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `cabins`
--
ALTER TABLE `cabins`
  ADD CONSTRAINT `cabins_pic_id_foreign` FOREIGN KEY (`pic_id`) REFERENCES `pics` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `customers`
--
ALTER TABLE `customers`
  ADD CONSTRAINT `customers_booking_id_foreign` FOREIGN KEY (`booking_id`) REFERENCES `bookings` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_avatar_id_foreign` FOREIGN KEY (`avatar_id`) REFERENCES `pics` (`id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
