-- phpMyAdmin SQL Dump
-- version 5.2.1deb3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 20, 2025 at 11:09 AM
-- Server version: 8.0.41-0ubuntu0.24.04.1
-- PHP Version: 8.3.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hotel`
--

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `id` bigint UNSIGNED NOT NULL,
  `room_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'waiting',
  `start_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `end_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`id`, `room_id`, `name`, `email`, `phone`, `status`, `start_date`, `end_date`, `created_at`, `updated_at`) VALUES
(50, '37', 'admin', 'admin@gmail.com', '71411156413', 'waiting', '2025-02-20', '2025-02-22', '2025-02-20 08:58:09', '2025-02-20 08:58:09'),
(51, '38', 'user2', 'user@gmail.com', '71699', 'waiting', '2025-02-20', '2025-02-22', '2025-02-20 08:58:58', '2025-02-20 08:58:58'),
(52, '42', 'user2', 'user@gmail.com', '71699', 'waiting', '2025-02-25', '2025-02-28', '2025-02-20 08:59:30', '2025-02-20 08:59:30'),
(53, '37', 'user2', 'user@gmail.com', '71699', 'waiting', '2025-02-24', '2025-02-25', '2025-02-20 08:59:53', '2025-02-20 08:59:53'),
(54, '41', 'test', 'tes@gmail.com', '65653411', 'waiting', '2025-02-26', '2025-02-28', '2025-02-20 09:02:12', '2025-02-20 09:02:12'),
(55, '40', 'test', 'tes@gmail.com', '65653411', 'waiting', '2025-03-01', '2025-03-02', '2025-02-20 09:02:40', '2025-02-20 09:02:40'),
(56, '39', 'user2', 'user2@gmail.com', '15625448', 'waiting', '2025-03-03', '2025-03-05', '2025-02-20 09:03:52', '2025-02-20 09:03:52'),
(57, '39', 'user2', 'user2@gmail.com', '15625448', 'waiting', '2025-02-26', '2025-02-28', '2025-02-20 09:04:05', '2025-02-20 09:04:05'),
(58, '41', 'najwa', 'test@gmail.com', '47636', 'waiting', '2025-02-22', '2025-02-23', '2025-02-20 09:04:47', '2025-02-20 09:04:47');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `phone`, `message`, `created_at`, `updated_at`) VALUES
(16, 'Najwa Joudieh', 'najwajoudieh.5@gmail.com', '71746745', 'i have problem', '2025-02-06 16:58:51', '2025-02-06 16:58:51'),
(17, 'Samer', 'samerbakkar105@gmail.com', '71746745', 'Hello i am samer', '2025-02-06 17:16:17', '2025-02-06 17:16:17'),
(25, 'Najwa', 'najwajoudieh.5@gmail.com', '175652', 'Hello from our website', '2025-02-18 17:53:04', '2025-02-18 17:53:04'),
(28, 'majed', 'majedshmaitlu@gmail.com', '25487', 'hello i am majed', '2025-02-18 21:35:23', '2025-02-18 21:35:23');

-- --------------------------------------------------------

--
-- Table structure for table `galleries`
--

CREATE TABLE `galleries` (
  `id` bigint UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `galleries`
--

INSERT INTO `galleries` (`id`, `image`, `created_at`, `updated_at`) VALUES
(6, '1738336638.avif', '2025-01-31 13:17:18', '2025-01-31 13:17:18'),
(8, '1738336655.jpg', '2025-01-31 13:17:35', '2025-01-31 13:17:35'),
(10, '1738672116.jpg', '2025-02-04 10:28:36', '2025-02-04 10:28:36'),
(18, '1739916850.jpg', '2025-02-18 20:14:10', '2025-02-18 20:14:10');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(7, '0001_01_01_000000_create_users_table', 1),
(8, '0001_01_01_000001_create_cache_table', 1),
(9, '0001_01_01_000002_create_jobs_table', 1),
(10, '2025_01_23_142602_add_two_factor_columns_to_users_table', 2),
(11, '2025_01_23_143051_create_personal_access_tokens_table', 2),
(12, '2025_01_27_110306_create_rooms_table', 3),
(13, '2025_01_30_125735_create_bookings_table', 4),
(14, '2025_01_30_154509_add_status_field_to_bookings', 5),
(15, '2025_01_31_123955_create_galleries_table', 6),
(16, '2025_02_01_134641_create_contacts_table', 7),
(17, '2025_02_01_153652_create_notifications_table', 8);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint UNSIGNED NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `id` bigint UNSIGNED NOT NULL,
  `room_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wifi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes',
  `room_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`id`, `room_title`, `image`, `description`, `price`, `wifi`, `room_type`, `created_at`, `updated_at`) VALUES
(37, 'Standard Room', '1739917045.jpg', 'A basic room with essential amenities like a bed, TV, and bathroom. Suitable for solo travelers or couples.', '300', 'yes', 'premuim', '2025-02-18 20:17:25', '2025-02-18 20:17:25'),
(38, 'Deluxe Room', '1739917075.jpg', 'A more spacious and comfortable room with upgraded furnishings, better views, and additional amenities like a minibar or seating area.', '450', 'yes', 'regular', '2025-02-18 20:17:55', '2025-02-18 20:17:55'),
(39, 'Suite', '1739917103.jpg', 'A luxurious room with a separate living area, high-end furnishings, and extra services. Ideal for long stays or premium experiences.', '350', 'yes', 'premuim', '2025-02-18 20:18:23', '2025-02-18 20:18:23'),
(40, 'Family Room', '1739917131.jpg', 'A larger room designed for families, often with multiple beds or a sofa bed, ensuring comfort for parents and children.', '250', 'yes', 'deluxe', '2025-02-18 20:18:51', '2025-02-18 20:18:51'),
(41, 'Penthouse Suite', '1739917161.jpg', 'The most exclusive and luxurious room, usually located on the top floor with premium amenities, private terraces, and breathtaking views.', '700', 'yes', 'deluxe', '2025-02-18 20:19:21', '2025-02-18 20:19:21'),
(42, 'Presidential Suite', '1739921841.jpg', 'Step into the epitome of elegance with our Presidential Suite, designed for those who seek the utmost in luxury and comfort. This expansive suite spans over 1,200 square feet, featuring a spacious living room adorned with plush velvet furniture, a state-of-the-art entertainment system, and a grand piano in the corner for your leisure. The suite boasts floor-to-ceiling windows offering breathtaking panoramic views of the city skyline or serene waterfront, depending on your preference.\r\n\r\nThe separate bedroom is a sanctuary of relaxation, featuring a king-size bed with high-thread-count linens, a memory foam mattress, and an array of pillows for your ultimate comfort. Soft, ambient lighting and elegant, custom-designed furnishings create a serene atmosphere perfect for unwinding after a long day.\r\n\r\nThe en-suite bathroom is a masterpiece in itself, with a freestanding soaking tub positioned next to a large window for a tranquil view, a rain shower with multiple water jets, and dual vanity sinks with marble countertops. Premium bath products, a plush robe, and a selection of towels made from the finest cotton further enhance your experience.\r\n\r\nA private office nook is equipped with high-speed internet, a work desk, and ergonomic seating, providing a productive yet comfortable space for those needing to attend to business matters. Guests will also enjoy access to an exclusive minibar stocked with gourmet snacks and fine wines, as well as 24-hour room service catering to your every need.\r\n\r\nWhether you’re hosting an intimate gathering in the living area or simply seeking a quiet retreat, the Presidential Suite promises an unforgettable stay marked by refined luxury and impeccable service.', '500', 'yes', 'regular', '2025-02-18 21:37:21', '2025-02-18 21:37:21');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('vlCBYoR8gQqBESINnxWEi4FBrsEXKkbsnlYV7wf4', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaGZHTDBGSWw3ZFJpaEFzSFVwa1BmdVV5V09HcVdrUll5M1ZNalVmNiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9yb29tX2RldGFpbHMvNDEiO319', 1740049491);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `usertype` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `usertype`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'admin', 'admin@gmail.com', '71411156413', 'admin', NULL, '$2y$12$/mOf/pKHHB9siJDNLdsTnuBktD8FLMoWqOKJMId6vu2wVy1quukwe', NULL, NULL, NULL, NULL, '2025-01-23 14:48:22', '2025-02-11 08:32:06'),
(16, 'user2', 'user@gmail.com', '71699', 'user', NULL, '$2y$12$.6fQ0EFHGWRLu9cTKA2bVOSoy4FJd3sNVlXV/ZYN0NtZFKulrJm56', NULL, NULL, NULL, NULL, '2025-02-18 18:22:23', '2025-02-18 18:24:11'),
(18, 'test', 'tes@gmail.com', '65653411', 'user', NULL, '$2y$12$G4dtgAL.qfG1NJihdUVwl.fHCz/0Q/DoBFjczxdq4H/UhpRPOOl4W', NULL, NULL, NULL, NULL, '2025-02-20 09:01:42', '2025-02-20 09:01:42'),
(19, 'user2', 'user2@gmail.com', '15625448', 'user', NULL, '$2y$12$L9gTvgo15syKQ1YZjmFa3.wUH2vwLu3vr.cXZPv1ExCEZTNaykYIS', NULL, NULL, NULL, NULL, '2025-02-20 09:03:20', '2025-02-20 09:03:20');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
