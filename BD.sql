-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Tempo de geração: 28-Maio-2021 às 19:03
-- Versão do servidor: 5.7.24
-- versão do PHP: 7.2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `laravel`
--
CREATE DATABASE IF NOT EXISTS `laravel` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_bin */;
USE `laravel`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `book`
--

CREATE TABLE IF NOT EXISTS `book` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_user` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pages` int(11) NOT NULL,
  `price` double(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `book_id_user_foreign` (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `book`
--

INSERT INTO `book` (`id`, `id_user`, `title`, `pages`, `price`, `created_at`, `updated_at`) VALUES
(10, 3, 'A cabra da minha mãe', 100, 200.00, '2021-05-28 17:11:47', '2021-05-28 17:11:47'),
(11, 2, 'A cabra da meu pai', 100, 200.00, '2021-05-28 17:11:48', '2021-05-28 17:11:48'),
(13, 3, 'A cabra da minha mãe', 100, 200.00, '2021-05-28 17:13:40', '2021-05-28 17:13:40'),
(14, 2, 'A cabra da meu pai', 100, 200.00, '2021-05-28 17:13:40', '2021-05-28 17:13:40'),
(15, 2, 'A vizinha bruxa', 150, 500.00, '2021-05-28 17:13:40', '2021-05-28 17:13:40'),
(16, 3, 'A cabra da minha mãe', 100, 200.00, '2021-05-28 17:13:44', '2021-05-28 17:13:44'),
(17, 2, 'A cabra da meu pai', 100, 200.00, '2021-05-28 17:13:44', '2021-05-28 17:13:44'),
(18, 2, 'A vizinha bruxa', 150, 500.00, '2021-05-28 17:13:44', '2021-05-28 17:13:44'),
(19, 3, 'A cabra da minha mãe', 100, 200.00, '2021-05-28 17:13:46', '2021-05-28 17:13:46'),
(20, 2, 'A cabra da meu pai', 100, 200.00, '2021-05-28 17:13:46', '2021-05-28 17:13:46'),
(21, 2, 'A vizinha bruxa', 150, 500.00, '2021-05-28 17:13:46', '2021-05-28 17:13:46'),
(22, 3, 'A cabra da minha mãe', 100, 200.00, '2021-05-28 17:13:47', '2021-05-28 17:13:47'),
(23, 2, 'A cabra da meu pai', 100, 200.00, '2021-05-28 17:13:47', '2021-05-28 17:13:47'),
(24, 2, 'A vizinha bruxa', 150, 500.00, '2021-05-28 17:13:47', '2021-05-28 17:13:47'),
(25, 3, 'A cabra da minha mãe', 100, 200.00, '2021-05-28 17:13:49', '2021-05-28 17:13:49'),
(26, 2, 'A cabra da meu pai', 100, 200.00, '2021-05-28 17:13:49', '2021-05-28 17:13:49'),
(27, 2, 'A vizinha bruxa', 150, 500.00, '2021-05-28 17:13:49', '2021-05-28 17:13:49'),
(28, 3, 'A cabra da minha mãe', 100, 200.00, '2021-05-28 17:13:51', '2021-05-28 17:13:51'),
(29, 2, 'A cabra da meu pai', 100, 200.00, '2021-05-28 17:13:51', '2021-05-28 17:13:51'),
(30, 2, 'A vizinha bruxa', 150, 500.00, '2021-05-28 17:13:51', '2021-05-28 17:13:51'),
(31, 3, 'A cabra da minha mãe', 100, 200.00, '2021-05-28 17:13:53', '2021-05-28 17:13:53'),
(32, 2, 'A cabra da meu pai', 100, 200.00, '2021-05-28 17:13:53', '2021-05-28 17:13:53'),
(33, 2, 'A vizinha bruxa', 150, 500.00, '2021-05-28 17:13:53', '2021-05-28 17:13:53');

-- --------------------------------------------------------

--
-- Estrutura da tabela `failed_jobs`
--

CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_05_25_163228_create_model_books_table', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `password_resets`
--

CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'Pinto Filipe', 'pinto@gmail.com', '2021-05-25 17:37:53', 'asadas', 'asd', '2021-05-25 17:37:53', '2021-05-25 17:37:53'),
(3, 'Narciso Chicomo', 'narci@gmail.com', '2021-05-25 17:37:53', 'adal', 'asda', '2021-05-25 17:37:53', '2021-05-25 17:37:53');

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `book`
--
ALTER TABLE `book`
  ADD CONSTRAINT `book_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
