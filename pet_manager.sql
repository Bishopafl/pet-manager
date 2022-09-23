-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/

-- use this dump to populate your database if the seeder is not working correctly
--
-- Host: localhost
-- Generation Time: Sep 23, 2022 at 01:50 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pet_manager`
--

-- --------------------------------------------------------

--
-- Table structure for table `breeds`
--

CREATE TABLE IF NOT EXISTS `breeds` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `breed_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `breed_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `breeds_breed_id_foreign` (`breed_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `breeds`
--

INSERT INTO `breeds` (`id`, `breed_name`, `breed_id`, `created_at`, `updated_at`) VALUES
(1, 'Rottweiler', 3, '2022-09-22 08:41:22', '2022-09-22 08:41:22'),
(2, 'Terrier', 6, '2022-09-22 08:41:22', '2022-09-22 08:41:22'),
(3, 'Old English Sheepdog', 5, '2022-09-22 08:41:22', '2022-09-22 08:41:22'),
(4, 'Old English Sheepdog', 5, '2022-09-22 08:44:49', '2022-09-22 08:44:49'),
(5, 'Terrier', 1, '2022-09-22 08:44:49', '2022-09-22 08:44:49'),
(6, 'Rottweiler', 8, '2022-09-22 08:44:49', '2022-09-22 08:44:49'),
(7, 'Rottweiler', 10, '2022-09-22 08:44:49', '2022-09-22 08:44:49'),
(8, 'Old English Sheepdog', 1, '2022-09-22 08:44:49', '2022-09-22 08:44:49'),
(9, 'Rottweiler', 10, '2022-09-22 08:44:49', '2022-09-22 08:44:49'),
(10, 'Rottweiler', 1, '2022-09-22 08:44:49', '2022-09-22 08:44:49'),
(11, 'Old English Sheepdog', 1, '2022-09-22 08:44:49', '2022-09-22 08:44:49'),
(12, 'Terrier', 1, '2022-09-22 08:44:49', '2022-09-22 08:44:49'),
(13, 'Old English Sheepdog', 3, '2022-09-22 08:44:49', '2022-09-22 08:44:49');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_09_21_175211_create_owners_table', 1),
(6, '2022_09_21_180309_create_pets_table', 2),
(8, '2022_09_22_032126_create_breeds_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `owners`
--

CREATE TABLE IF NOT EXISTS `owners` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `owners`
--

INSERT INTO `owners` (`id`, `name`, `phone`, `created_at`, `updated_at`) VALUES
(1, 'Gabrielle Mante', '267.498.4256', '2022-09-21 22:01:37', '2022-09-21 22:01:37'),
(2, 'Dr. Malcolm Emard', '+1-281-583-9823', '2022-09-21 22:01:37', '2022-09-21 22:01:37'),
(3, 'Peyton Goyette', '+1-484-405-0656', '2022-09-21 22:01:37', '2022-09-21 22:01:37'),
(4, 'Carolyn Herzog', '1-339-684-3091', '2022-09-21 22:01:37', '2022-09-21 22:01:37'),
(5, 'Dewitt Sanford', '+1 (934) 578-9772', '2022-09-21 22:01:37', '2022-09-21 22:01:37'),
(6, 'Rupert Jenkins Jr.', '205-720-8916', '2022-09-21 22:01:37', '2022-09-21 22:01:37'),
(7, 'Jordyn Batz', '+1 (612) 445-1754', '2022-09-21 22:01:37', '2022-09-21 22:01:37'),
(8, 'Owen Parker', '(341) 575-9835', '2022-09-21 22:01:37', '2022-09-21 22:01:37'),
(9, 'Dr. Keeley Smith DVM', '480.610.8301', '2022-09-21 22:01:37', '2022-09-21 22:01:37'),
(10, 'Skylar Reichel', '+1.848.820.4363', '2022-09-21 22:01:37', '2022-09-21 22:01:37');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pets`
--

CREATE TABLE IF NOT EXISTS `pets` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `owner_id` bigint(20) UNSIGNED NOT NULL,
  `pet_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pet_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pet_dob` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pets_owner_id_foreign` (`owner_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pets`
--

INSERT INTO `pets` (`id`, `owner_id`, `pet_name`, `pet_description`, `pet_dob`, `created_at`, `updated_at`) VALUES
(1, 7, 'Susie Turner', 'Dolorem ipsam consequatur nesciunt officiis. Officiis quod alias quidem. Est et animi facere ratione. Non ducimus harum voluptates quia ducimus distinctio.', '1989-07-31', '2022-09-22 05:15:03', '2022-09-22 05:15:03'),
(2, 1, 'Khalil Barrows', 'Magnam et eveniet ex quia possimus. Sed dolor quis qui alias est molestiae et. Optio cum molestiae ut repellendus est minus.', '1998-03-30', '2022-09-22 05:15:03', '2022-09-22 05:15:03'),
(3, 5, 'Dr. Rosa Jenkins Jr.', 'Recusandae esse id rerum illum. Ut dolorem praesentium unde repellat iure. Atque ut deleniti sint quisquam. Occaecati recusandae cupiditate ipsum molestias mollitia. Eos modi quae pariatur.', '2003-08-01', '2022-09-22 05:15:03', '2022-09-22 05:15:03'),
(4, 1, 'Mrs. Earnestine Mayer', 'Sit laudantium natus quas animi excepturi aliquam blanditiis excepturi. Dolorum quos amet hic laboriosam quam. Ut provident quia et necessitatibus sed.', '2012-03-26', '2022-09-22 05:15:03', '2022-09-22 05:15:03'),
(5, 8, 'Domenico Emard', 'Sit qui voluptatem qui beatae sint. Aut voluptates sit et nobis at error. Modi eos non et temporibus. Maiores eligendi quisquam reprehenderit. Et fuga aperiam quam molestias qui.', '1978-09-27', '2022-09-22 05:15:03', '2022-09-22 05:15:03'),
(6, 3, 'Marlen Leffler', 'Non fugiat quia dolores numquam et consequatur. Est itaque magnam est quasi itaque eaque. Minus saepe quidem aspernatur.', '1981-01-29', '2022-09-22 05:15:03', '2022-09-22 05:15:03'),
(7, 8, 'Kyleigh Bogan', 'Recusandae odit iusto non aut ut illo. Aut reiciendis est quidem facilis quas et. Omnis unde tempora exercitationem id recusandae.', '1979-10-30', '2022-09-22 05:15:03', '2022-09-22 05:15:03'),
(8, 2, 'Kathleen Kerluke', 'Consequatur et et consequuntur quisquam. Unde eos quibusdam repellendus blanditiis enim. Nobis officiis exercitationem iusto ipsam velit.', '1974-11-30', '2022-09-22 05:15:03', '2022-09-22 05:15:03'),
(9, 8, 'Dr. Stephany Armstrong', 'Aperiam sapiente suscipit consectetur ut itaque quia quia. Quo eligendi non dolores nam consectetur adipisci. Sapiente dolorum occaecati sapiente doloribus dolores.', '2015-10-30', '2022-09-22 05:15:03', '2022-09-22 05:15:03'),
(10, 5, 'Quincy Prohaska I', 'Quidem dolorem voluptas non dolorem vitae non. Maxime porro ut nesciunt voluptas ea ut. Laudantium earum odio accusamus quia necessitatibus. Accusamus quasi animi reprehenderit.', '2017-04-18', '2022-09-22 05:15:03', '2022-09-22 05:15:03');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `breeds`
--
ALTER TABLE `breeds`
  ADD CONSTRAINT `breeds_breed_id_foreign` FOREIGN KEY (`breed_id`) REFERENCES `pets` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `pets`
--
ALTER TABLE `pets`
  ADD CONSTRAINT `pets_owner_id_foreign` FOREIGN KEY (`owner_id`) REFERENCES `owners` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
