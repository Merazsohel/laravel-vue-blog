-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 25, 2019 at 12:50 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.1.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel-vue-blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cat_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `cat_name`, `created_at`, `updated_at`) VALUES
(1, 'Colin Gutmann Sr.', '2019-07-25 04:48:36', '2019-07-25 04:48:36'),
(2, 'Mrs. Tania Stracke', '2019-07-25 04:48:36', '2019-07-25 04:48:36'),
(3, 'Stuart Stehr', '2019-07-25 04:48:36', '2019-07-25 04:48:36'),
(4, 'Jamel Gusikowski', '2019-07-25 04:48:36', '2019-07-25 04:48:36'),
(5, 'Octavia Russel', '2019-07-25 04:48:36', '2019-07-25 04:48:36'),
(6, 'Prof. Antonina Sporer I', '2019-07-25 04:48:36', '2019-07-25 04:48:36'),
(7, 'Carole Mueller', '2019-07-25 04:48:36', '2019-07-25 04:48:36'),
(8, 'Prof. Lauryn O\'Reilly', '2019-07-25 04:48:36', '2019-07-25 04:48:36'),
(9, 'Manuel Tromp IV', '2019-07-25 04:48:36', '2019-07-25 04:48:36'),
(10, 'Gwen Dibbert', '2019-07-25 04:48:36', '2019-07-25 04:48:36');

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_07_25_094712_create_categories_table', 2),
(4, '2019_07_25_101327_create_posts_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cat_id` int(10) UNSIGNED DEFAULT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `comment_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `desccription` text COLLATE utf8mb4_unicode_ci,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `cat_id`, `user_id`, `comment_id`, `title`, `desccription`, `photo`, `created_at`, `updated_at`) VALUES
(1, 2, 6, 1, 'Reiciendis aperiam rerum repellendus velit.', 'Eum iusto eum eaque veniam est modi. Pariatur ducimus quia eos delectus assumenda.', 'https://lorempixel.com/640/480/?54471', '2019-07-25 04:48:36', '2019-07-25 04:48:36'),
(2, 2, 1, 8, 'Dicta aut et sunt aut amet voluptatem et.', 'Voluptates dolorem ducimus et in itaque dolores. Et aut voluptatem qui vel natus dolores. Harum harum et ratione id quis. Ab repellat provident exercitationem quam laboriosam.', 'https://lorempixel.com/640/480/?24290', '2019-07-25 04:48:36', '2019-07-25 04:48:36'),
(3, 1, 4, 5, 'Ut nulla dolores porro architecto.', 'Iste aliquam veritatis asperiores perspiciatis. Aspernatur qui non et ullam ipsam. Itaque minima voluptatibus non totam. Porro laboriosam et nobis aut.', 'https://lorempixel.com/640/480/?76814', '2019-07-25 04:48:36', '2019-07-25 04:48:36'),
(4, 5, 10, 6, 'Praesentium est aut architecto assumenda.', 'Iste voluptas et qui ea corrupti temporibus. Enim et consequuntur veritatis fugiat qui est earum. At officia officia eaque est aut nihil.', 'https://lorempixel.com/640/480/?63265', '2019-07-25 04:48:36', '2019-07-25 04:48:36'),
(5, 5, 1, 1, 'Eveniet corrupti ut fugiat provident et inventore vero.', 'Et aut iusto occaecati voluptatem numquam necessitatibus architecto. Nobis error sit molestias accusamus reprehenderit nisi quisquam. Quod libero cumque placeat. Vero velit qui ipsa.', 'https://lorempixel.com/640/480/?18296', '2019-07-25 04:48:36', '2019-07-25 04:48:36'),
(6, 8, 4, 10, 'Fugiat repellat sequi sunt quia.', 'Atque aut distinctio omnis voluptatibus. Vero placeat earum amet ratione perferendis saepe quibusdam repellat. Distinctio nihil cum error molestiae. Neque modi qui aut quaerat nam eum distinctio.', 'https://lorempixel.com/640/480/?77927', '2019-07-25 04:48:36', '2019-07-25 04:48:36'),
(7, 8, 10, 4, 'Ab et exercitationem sed pariatur aspernatur esse voluptatem.', 'Tempore deserunt dolorem non qui sunt quod quia. Harum ut commodi at at ut delectus veritatis. Vitae ab voluptatem nostrum quos fugit officiis. Cum cumque illo possimus quia eos. Qui eum laborum et quis.', 'https://lorempixel.com/640/480/?61396', '2019-07-25 04:48:36', '2019-07-25 04:48:36'),
(8, 4, 9, 10, 'Voluptatibus veniam unde ratione sit repellat laudantium.', 'Officia animi quae alias praesentium pariatur qui incidunt. Excepturi dolorum voluptatibus minus excepturi. Ut quod est voluptas dolore praesentium. Nulla enim nihil cum qui voluptas voluptas atque et.', 'https://lorempixel.com/640/480/?95553', '2019-07-25 04:48:36', '2019-07-25 04:48:36'),
(9, 3, 4, 4, 'Minima qui accusamus dolorem ducimus voluptates.', 'Officiis necessitatibus quia odio reiciendis. Ut soluta sed asperiores ipsum culpa labore. Officia tenetur asperiores voluptatibus sit.', 'https://lorempixel.com/640/480/?65274', '2019-07-25 04:48:36', '2019-07-25 04:48:36'),
(10, 10, 10, 3, 'Et possimus consequatur molestiae dolorem in perspiciatis tempora.', 'Amet similique soluta aperiam sed qui porro sed. Sed pariatur enim enim quos quia dolor voluptatem placeat. Cupiditate tempore non dolor quis. Dicta qui aut aut molestiae dolores error. Illum in est id eum tempora reiciendis necessitatibus.', 'https://lorempixel.com/640/480/?28562', '2019-07-25 04:48:36', '2019-07-25 04:48:36');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Meraz', 'merazhossain64@gmail.com', NULL, '$2y$10$XE/6oA/3mnF6Ne5lYghm1OIM8PEN7WaY7lMu7fdj0sIw3m3wVT9UC', NULL, '2019-07-25 01:10:56', '2019-07-25 01:10:56'),
(2, 'Prof. Lemuel Stanton DVM', 'libbie93@example.org', '2019-07-25 04:35:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ox9LXFgCsk', '2019-07-25 04:35:25', '2019-07-25 04:35:25'),
(3, 'Chelsey Walker', 'wiza.francesca@example.org', '2019-07-25 04:35:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'bkzqQmkD3g', '2019-07-25 04:35:25', '2019-07-25 04:35:25'),
(4, 'Aletha Lebsack III', 'kendra39@example.net', '2019-07-25 04:35:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'PkYqlKMggI', '2019-07-25 04:35:25', '2019-07-25 04:35:25'),
(5, 'Meagan Littel', 'ehaley@example.com', '2019-07-25 04:35:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'TO22LX0flR', '2019-07-25 04:35:25', '2019-07-25 04:35:25'),
(6, 'Arden Monahan PhD', 'julian.graham@example.org', '2019-07-25 04:35:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'CAOTbxLkUt', '2019-07-25 04:35:25', '2019-07-25 04:35:25'),
(7, 'Angelina Deckow', 'matt20@example.com', '2019-07-25 04:35:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '3jVUn1hLTo', '2019-07-25 04:35:25', '2019-07-25 04:35:25'),
(8, 'Emily Stokes', 'tlangworth@example.org', '2019-07-25 04:35:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'aBIEJyzN9i', '2019-07-25 04:35:25', '2019-07-25 04:35:25'),
(9, 'Berenice Herzog', 'pouros.cicero@example.com', '2019-07-25 04:35:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'xiuorz9tA2', '2019-07-25 04:35:25', '2019-07-25 04:35:25'),
(10, 'Wallace Funk', 'schmeler.dangelo@example.com', '2019-07-25 04:35:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'eGm211pW5V', '2019-07-25 04:35:25', '2019-07-25 04:35:25'),
(11, 'Arlo Jacobson', 'oscar.bode@example.com', '2019-07-25 04:35:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ZhOsF8kp6L', '2019-07-25 04:35:25', '2019-07-25 04:35:25');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
