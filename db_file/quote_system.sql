-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 19, 2018 at 05:15 PM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.0.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quote_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `authors`
--

CREATE TABLE `authors` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `authors`
--

INSERT INTO `authors` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'nuwan', '2018-09-22 07:16:00', '2018-09-22 07:16:00'),
(7, 'anna', '2018-09-24 05:32:05', '2018-09-24 05:32:05'),
(8, 'josh', '2018-09-24 05:33:17', '2018-09-24 05:33:17'),
(9, 'kalpa', '2018-09-24 05:34:26', '2018-09-24 05:34:26'),
(10, 'nadun', '2018-09-24 06:01:09', '2018-09-24 06:01:09'),
(11, 'madushan', '2018-09-24 06:01:47', '2018-09-24 06:01:47'),
(13, 'shen', '2018-09-24 06:03:50', '2018-09-24 06:03:50'),
(14, 'malisha', '2018-09-24 06:18:29', '2018-09-24 06:18:29');

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
(1, '2018_09_15_112133_create_authors_table', 1),
(2, '2018_09_15_112740_create_quotes_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `quotes`
--

CREATE TABLE `quotes` (
  `id` int(10) UNSIGNED NOT NULL,
  `quote` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `quotes`
--

INSERT INTO `quotes` (`id`, `quote`, `author_id`, `created_at`, `updated_at`) VALUES
(12, 'i am here', 7, '2018-09-24 05:33:05', '2018-09-24 05:33:05'),
(13, 'this is a quote', 8, '2018-09-24 05:33:17', '2018-09-24 05:33:17'),
(14, 'the sky', 1, '2018-09-24 05:33:35', '2018-09-24 05:33:35'),
(15, 'the ocen', 8, '2018-09-24 05:34:15', '2018-09-24 05:34:15'),
(16, 'the sand', 9, '2018-09-24 05:34:26', '2018-09-24 05:34:26'),
(17, 'life is easy', 10, '2018-09-24 06:01:09', '2018-09-24 06:01:09'),
(18, 'the world is like ball', 10, '2018-09-24 06:01:25', '2018-09-24 06:01:25'),
(19, 'we all are in same world', 11, '2018-09-24 06:01:47', '2018-09-24 06:01:47'),
(20, 'old is gold', 11, '2018-09-24 06:02:01', '2018-09-24 06:02:01'),
(22, 'tant ta tan', 8, '2018-09-24 06:03:24', '2018-09-24 06:03:24'),
(23, 'life is music', 13, '2018-09-24 06:03:50', '2018-09-24 06:03:50'),
(24, 'Music makes me happy', 14, '2018-09-24 06:18:29', '2018-09-24 06:18:29'),
(25, 'numerics', 8, '2018-09-24 06:27:13', '2018-09-24 06:27:13'),
(27, 'songs', 8, '2018-09-24 06:33:41', '2018-09-24 06:33:41'),
(28, 'success rate', 8, '2018-09-24 06:33:53', '2018-09-24 06:33:53'),
(29, 'earth', 8, '2018-09-24 06:34:03', '2018-09-24 06:34:03');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quotes`
--
ALTER TABLE `quotes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `authors`
--
ALTER TABLE `authors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `quotes`
--
ALTER TABLE `quotes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
