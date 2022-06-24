-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 24, 2022 at 10:59 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `news_in_laravel9`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_06_24_081412_create_posts_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `title`, `body`, `created_at`, `updated_at`) VALUES
(1, 1, 'Vero omnis consequatur est.', 'Quisquam tempore vel quod magnam non ut. Reprehenderit magni harum pariatur voluptates aspernatur aut aut. Sed nobis voluptatem illo saepe. Cumque dolores modi rerum optio qui ut. Eaque quia quia dolore et temporibus sed quae.', '2022-06-24 01:43:25', '2022-06-24 01:43:25'),
(2, 2, 'Quis sit rem dicta enim perspiciatis eius ratione.', 'Voluptate nobis natus vel id. Maxime qui et explicabo aut. Libero nulla quis qui voluptates perferendis iure voluptatum. Perferendis tenetur incidunt excepturi et.', '2022-06-24 01:43:25', '2022-06-24 01:43:25'),
(3, 3, 'Et perferendis aut nemo commodi repellat eum.', 'Perspiciatis non aspernatur ut hic qui neque. Dolores est in pariatur. Non et quod molestiae perferendis qui. Similique sed velit et officiis placeat placeat mollitia.', '2022-06-24 01:43:25', '2022-06-24 01:43:25'),
(4, 4, 'Molestiae magni blanditiis voluptatem odit voluptatem.', 'Quam soluta et non dicta sequi ut qui. Magni magnam ut aperiam voluptatem beatae aut enim. Sint qui sed omnis corporis explicabo modi sequi. Modi ex nostrum molestiae ea quidem provident voluptatibus.', '2022-06-24 01:43:25', '2022-06-24 01:43:25'),
(5, 5, 'Quae corrupti pariatur libero.', 'Eveniet neque veritatis quod. Tempore accusamus accusantium praesentium iusto similique. Est cum necessitatibus velit molestiae.', '2022-06-24 01:43:25', '2022-06-24 01:43:25'),
(6, 6, 'Doloribus consectetur dolorum eaque delectus iusto.', 'Est cumque minus sit ut voluptate aliquam. Quidem suscipit exercitationem voluptas saepe eaque laudantium consequuntur aliquid. Ipsa autem distinctio est.', '2022-06-24 01:43:25', '2022-06-24 01:43:25'),
(7, 7, 'Maxime impedit similique soluta dolores laborum.', 'Illum vitae ab tempora dolores delectus fugit ad. Voluptatem voluptatum aut eos. Consequatur est officiis voluptatem voluptatem corrupti rerum dolore.', '2022-06-24 01:43:25', '2022-06-24 01:43:25'),
(8, 8, 'Autem dolorem cumque incidunt.', 'Natus occaecati vitae officiis voluptatem debitis. Consequatur ducimus nam dolorum ducimus quisquam corporis. Voluptatibus voluptas voluptatem ut nihil expedita quisquam ea.', '2022-06-24 01:43:25', '2022-06-24 01:43:25'),
(9, 9, 'Deleniti recusandae esse iste.', 'Dolorem asperiores dignissimos et et architecto ad. Maxime ut doloribus est aliquid tempora numquam maiores dicta. Animi natus saepe et ut quasi nesciunt fugiat laudantium.', '2022-06-24 01:43:25', '2022-06-24 01:43:25'),
(10, 10, 'Suscipit non commodi ipsum aut inventore.', 'Rerum non minus ut reprehenderit hic molestias. Et voluptates corrupti laborum veritatis aliquid. Dolores modi quisquam repellendus esse.', '2022-06-24 01:43:25', '2022-06-24 01:43:25');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
(1, 'Prof. Noelia Lesch', 'kirlin.kari@example.com', '2022-06-24 01:43:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'PrQ9XbalB9', '2022-06-24 01:43:25', '2022-06-24 01:43:25'),
(2, 'Noel Muller', 'haag.nyah@example.net', '2022-06-24 01:43:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'z1mwWgXh5x', '2022-06-24 01:43:25', '2022-06-24 01:43:25'),
(3, 'Darius Ernser', 'chandler34@example.org', '2022-06-24 01:43:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'wxCul2m0I0', '2022-06-24 01:43:25', '2022-06-24 01:43:25'),
(4, 'Miss Lisette Grimes', 'drew.lang@example.net', '2022-06-24 01:43:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '86xemG1KCD', '2022-06-24 01:43:25', '2022-06-24 01:43:25'),
(5, 'Angeline Schinner DVM', 'vernie28@example.org', '2022-06-24 01:43:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ufrAWJDcVk', '2022-06-24 01:43:25', '2022-06-24 01:43:25'),
(6, 'Nikita Shields DDS', 'cathrine90@example.org', '2022-06-24 01:43:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '6BkBPRSIx3', '2022-06-24 01:43:25', '2022-06-24 01:43:25'),
(7, 'Josue Tillman', 'augustine07@example.net', '2022-06-24 01:43:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'NEH4BV1aB1', '2022-06-24 01:43:25', '2022-06-24 01:43:25'),
(8, 'Winston Friesen', 'maximillia15@example.net', '2022-06-24 01:43:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'AHrwcYTue9', '2022-06-24 01:43:25', '2022-06-24 01:43:25'),
(9, 'David Pollich Jr.', 'jean.homenick@example.net', '2022-06-24 01:43:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'R2Ks6CkNdZ', '2022-06-24 01:43:25', '2022-06-24 01:43:25'),
(10, 'Alejandra Bradtke', 'runolfsdottir.houston@example.com', '2022-06-24 01:43:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'iVaQQLfETH', '2022-06-24 01:43:25', '2022-06-24 01:43:25');

--
-- Indexes for dumped tables
--

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
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_user_id_foreign` (`user_id`);

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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
