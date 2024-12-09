-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 09, 2024 at 05:16 PM
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
-- Database: `task`
--

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2024_12_09_110647_create_products_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 2, 'API Token', '0a48a4230da7ec7b97fcf4986a08dffeca48406baf20f4a9254885dfa4092ffa', '[\"*\"]', NULL, NULL, '2024-12-09 11:14:54', '2024-12-09 11:14:54'),
(2, 'App\\Models\\User', 3, 'API Token', 'cfb04edcba9b4899f7d21bca4edd7b5d0664055c64b4c72171c732c9585aaf51', '[\"*\"]', '2024-12-09 12:46:07', NULL, '2024-12-09 11:15:24', '2024-12-09 12:46:07'),
(3, 'App\\Models\\User', 1, 'API Token', '180f92c7a0d7384ce49893d8cfd44a05d8c515a1fa6dc8774df5a6af74ce7336', '[\"*\"]', NULL, '2025-06-09 12:13:02', '2024-12-09 13:13:02', '2024-12-09 13:13:02'),
(4, 'App\\Models\\User', 1, 'API Token', '07ea746c9d378dcd5cbd6466959b4c1c4c1e21b5f46acc6409fff1f74d592a9d', '[\"*\"]', NULL, NULL, '2024-12-09 13:13:29', '2024-12-09 13:13:29'),
(5, 'App\\Models\\User', 1, 'API Token', 'f82c5b647d46ef1f5d3f9553449dd3d4245e5f4f37ea622723e9d746c33518b2', '[\"*\"]', NULL, NULL, '2024-12-09 13:13:33', '2024-12-09 13:13:33'),
(6, 'App\\Models\\User', 1, 'API Token', '70a4ac0f6f1f287cd4590f8c110927e6c112edfc6e97a970659bbb136f93c3e0', '[\"*\"]', NULL, NULL, '2024-12-09 13:13:36', '2024-12-09 13:13:36'),
(7, 'App\\Models\\User', 1, 'API Token', 'ff6b2d58a43c22872ad6d1a1002db2abc77c393ba7ad599b4977a44c0409f1eb', '[\"*\"]', NULL, NULL, '2024-12-09 13:14:29', '2024-12-09 13:14:29'),
(8, 'App\\Models\\User', 1, 'API Token', 'c1b2349e59b1e3189755110e20a5e8b6842ad8aec095fb98280c427fc33b4e10', '[\"*\"]', '2024-12-09 13:14:57', NULL, '2024-12-09 13:14:57', '2024-12-09 13:14:57'),
(9, 'App\\Models\\User', 1, 'API Token', '0ccec1484cbda99149cfe2a52da0920fd42a66c322ff46b02452814b63c6e4af', '[\"*\"]', '2024-12-09 13:15:00', NULL, '2024-12-09 13:14:59', '2024-12-09 13:15:00'),
(10, 'App\\Models\\User', 1, 'API Token', '58b5433a71c29a911457d9cc635bd555564a4352919c10d9062f934cc06a4ecc', '[\"*\"]', NULL, NULL, '2024-12-09 13:17:36', '2024-12-09 13:17:36'),
(11, 'App\\Models\\User', 1, 'API Token', '119c2255780c0cda9cf2bcbce89c4d5d634c4e6cf983942c1b7266724cec65bd', '[\"*\"]', '2024-12-09 13:17:47', NULL, '2024-12-09 13:17:47', '2024-12-09 13:17:47'),
(12, 'App\\Models\\User', 1, 'API Token', 'df2a012bbb2fa95262a8bfee1fc8deede3f532fef3f11f681add32795de8cfcd', '[\"*\"]', '2024-12-09 13:18:19', NULL, '2024-12-09 13:18:18', '2024-12-09 13:18:19'),
(13, 'App\\Models\\User', 1, 'API Token', '4532382eafbbaec9dfa303d80e9f0c16b7624f8dcf8407d473dda95c6fefa287', '[\"*\"]', '2024-12-09 13:18:28', NULL, '2024-12-09 13:18:28', '2024-12-09 13:18:28'),
(14, 'App\\Models\\User', 1, 'API Token', 'eee764379f4a93f8a379bb8d9a01d2159d5e1a08c262380f4b36b3e6c566610d', '[\"*\"]', '2024-12-09 13:18:53', NULL, '2024-12-09 13:18:52', '2024-12-09 13:18:53'),
(15, 'App\\Models\\User', 1, 'API Token', '4c1a07740254be6d4a2c1b6c6189623cdf67f4c43537efee006888f1c78da523', '[\"*\"]', '2024-12-09 13:18:59', NULL, '2024-12-09 13:18:58', '2024-12-09 13:18:59'),
(16, 'App\\Models\\User', 1, 'API Token', '4bdd8bb9d7d53f94296d34c9b6a52da6b027f0a8dcf0edb36fdf66f70b9a6488', '[\"*\"]', '2024-12-09 13:19:02', NULL, '2024-12-09 13:19:01', '2024-12-09 13:19:02'),
(17, 'App\\Models\\User', 1, 'API Token', 'a480c11721a144dd5213d2b476d10c554fa4e93a8193525c355401cb9056b0f3', '[\"*\"]', '2024-12-09 13:19:07', NULL, '2024-12-09 13:19:06', '2024-12-09 13:19:07'),
(18, 'App\\Models\\User', 1, 'API Token', 'ef97e5c96745fa1033c16ef7bc97ffa9bd2ae9375cd9d5648d53152ba6127421', '[\"*\"]', '2024-12-09 13:19:12', NULL, '2024-12-09 13:19:11', '2024-12-09 13:19:12'),
(19, 'App\\Models\\User', 1, 'API Token', 'ec2bd6e04b64a02f42b411e6f51e95249d69fd48d5982e827f83dec9ff20de27', '[\"*\"]', '2024-12-09 13:19:21', NULL, '2024-12-09 13:19:20', '2024-12-09 13:19:21'),
(20, 'App\\Models\\User', 1, 'API Token', 'cd61678f8d99351a3b60de30323b8f791d4d143e765ea67f22341d5c8ffcf832', '[\"*\"]', '2024-12-09 13:19:32', NULL, '2024-12-09 13:19:31', '2024-12-09 13:19:32'),
(21, 'App\\Models\\User', 1, 'API Token', 'fb468086a130615268e3913052e9374ce77f6de5b9d77f77e6d58c773546ed22', '[\"*\"]', '2024-12-09 13:19:35', NULL, '2024-12-09 13:19:35', '2024-12-09 13:19:35'),
(22, 'App\\Models\\User', 1, 'API Token', 'aa9ed285c00a3e055d6ecd19f375c5ec8121ee779a51ee22fd5fba3b8701a810', '[\"*\"]', '2024-12-09 13:19:41', NULL, '2024-12-09 13:19:40', '2024-12-09 13:19:41'),
(23, 'App\\Models\\User', 1, 'API Token', '4353bc3b931666b6eaead825a42c783fa9ad2ea7fe6b9a7b77302574dd8c099a', '[\"*\"]', '2024-12-09 13:19:59', NULL, '2024-12-09 13:19:59', '2024-12-09 13:19:59'),
(24, 'App\\Models\\User', 1, 'API Token', '306f7624860272897f67ece823e7e9fec0ad7521a3b76944e6f5158c15a868e0', '[\"*\"]', '2024-12-09 13:20:42', NULL, '2024-12-09 13:20:42', '2024-12-09 13:20:42'),
(25, 'App\\Models\\User', 1, 'API Token', 'd750c67ebbe57141bdd3ae8a3b5a34a4c70cf23392da9b3b139acacaede9ee63', '[\"*\"]', '2024-12-09 13:21:24', NULL, '2024-12-09 13:21:23', '2024-12-09 13:21:24'),
(26, 'App\\Models\\User', 1, 'API Token', '9bc2269a49c513596714fe2132b1bb186f123a6bc432905b5ada15ec110401f3', '[\"*\"]', '2024-12-09 13:22:53', NULL, '2024-12-09 13:22:53', '2024-12-09 13:22:53'),
(27, 'App\\Models\\User', 1, 'API Token', '914917f1a7f467d7d165981dc6ddc54f401fb169c31af5db10dbd3b4a350d2cf', '[\"*\"]', '2024-12-09 13:22:55', NULL, '2024-12-09 13:22:54', '2024-12-09 13:22:55'),
(28, 'App\\Models\\User', 1, 'API Token', '8f0c3d3e91692324428a91990caf5e52f6706238526797eb344cb2e4ce3cd0d9', '[\"*\"]', '2024-12-09 13:23:06', NULL, '2024-12-09 13:23:05', '2024-12-09 13:23:06'),
(29, 'App\\Models\\User', 1, 'API Token', '79a6c297f93486a2bf6dd250e91a2225d3c69e346eafcdf28337973ba8afaea0', '[\"*\"]', '2024-12-09 13:23:08', NULL, '2024-12-09 13:23:07', '2024-12-09 13:23:08'),
(30, 'App\\Models\\User', 1, 'API Token', '605d277f69e31198cf463bea63dd2e664550d02a742119c0983931a1b643809e', '[\"*\"]', '2024-12-09 13:23:23', NULL, '2024-12-09 13:23:22', '2024-12-09 13:23:23'),
(31, 'App\\Models\\User', 1, 'API Token', 'cfb57f23336cd7d4272209fbd1426408bd3c5e49b0a30c5490f1bdc95992d3a7', '[\"*\"]', '2024-12-09 13:23:35', NULL, '2024-12-09 13:23:35', '2024-12-09 13:23:35'),
(32, 'App\\Models\\User', 1, 'API Token', 'bbb3a3c329d7671514bc74264c2fe93e93be56045ee3a54bb947d8c6bfc0872b', '[\"*\"]', '2024-12-09 13:23:47', NULL, '2024-12-09 13:23:47', '2024-12-09 13:23:47'),
(33, 'App\\Models\\User', 1, 'API Token', '45bae174f7a3de1c612797a42fe2b83d7b7b1e8fa63d1abf9b361f5e637cadc6', '[\"*\"]', '2024-12-09 13:24:33', NULL, '2024-12-09 13:24:33', '2024-12-09 13:24:33'),
(34, 'App\\Models\\User', 1, 'API Token', '7ea4d9372e3f7d62c265801e4a2f5f4b979f3bfab7aa19a7f6cc78d7e3fa2e54', '[\"*\"]', '2024-12-09 13:25:01', NULL, '2024-12-09 13:25:01', '2024-12-09 13:25:01'),
(35, 'App\\Models\\User', 1, 'API Token', 'cd6e511107a23e39d8906f6328df367d5ceb6f64233c4acb625cfe3cf7892d59', '[\"*\"]', '2024-12-09 13:25:39', NULL, '2024-12-09 13:25:39', '2024-12-09 13:25:39'),
(36, 'App\\Models\\User', 1, 'API Token', 'f995f82dc9b90a08de2e5dfacd20697372612ff98ec4d29966738a8ca96fd7ca', '[\"*\"]', '2024-12-09 13:25:54', NULL, '2024-12-09 13:25:54', '2024-12-09 13:25:54'),
(37, 'App\\Models\\User', 1, 'API Token', 'a2b5c97069ef5c565b1e84dcb96b9b50e3aaecf8da07c7264890e42ce26ed6e8', '[\"*\"]', '2024-12-09 13:26:01', NULL, '2024-12-09 13:26:01', '2024-12-09 13:26:01'),
(38, 'App\\Models\\User', 1, 'API Token', '31f29bfc01886523b652b22b83877825b01d2245dac7ff970e854d3c53498c91', '[\"*\"]', '2024-12-09 13:26:07', NULL, '2024-12-09 13:26:07', '2024-12-09 13:26:07'),
(39, 'App\\Models\\User', 1, 'API Token', '537bd4fd5b2937ab6ee0726ca5f46ba3b0799ba0c6386bf7d63f8050964dbbb6', '[\"*\"]', '2024-12-09 13:29:47', NULL, '2024-12-09 13:29:46', '2024-12-09 13:29:47'),
(40, 'App\\Models\\User', 1, 'API Token', '351f603e4425ee315499911115483871f8d9959636ca5a14592f18b202a1df57', '[\"*\"]', '2024-12-09 13:29:53', NULL, '2024-12-09 13:29:53', '2024-12-09 13:29:53'),
(41, 'App\\Models\\User', 1, 'API Token', '4e2ebd527e42f5943af7ea0a29e73cb521710d6e7d58fde9c430176935d1668f', '[\"*\"]', '2024-12-09 13:30:03', NULL, '2024-12-09 13:30:03', '2024-12-09 13:30:03'),
(42, 'App\\Models\\User', 1, 'API Token', '5fa42029f820bd5763914e7cd4bd28b39101c896e9fc7092c5cc87734d02169c', '[\"*\"]', '2024-12-09 13:35:10', NULL, '2024-12-09 13:35:10', '2024-12-09 13:35:10'),
(43, 'App\\Models\\User', 1, 'API Token', '7059833705870e49980adc8d9e0bb521aea793d778dd262450522077e6ce17b0', '[\"*\"]', '2024-12-09 13:35:13', NULL, '2024-12-09 13:35:12', '2024-12-09 13:35:13'),
(44, 'App\\Models\\User', 1, 'API Token', 'ebaa29ac924bae6bec8f15c578f1976cddaf050ab8fd749f847cc26c0bee730a', '[\"*\"]', '2024-12-09 13:37:09', NULL, '2024-12-09 13:37:09', '2024-12-09 13:37:09'),
(45, 'App\\Models\\User', 1, 'API Token', 'acde513af6a30290adb967115652982d0c1c01e098d840450f32c7dbeb80ce4a', '[\"*\"]', '2024-12-09 13:37:38', NULL, '2024-12-09 13:37:38', '2024-12-09 13:37:38'),
(46, 'App\\Models\\User', 1, 'API Token', '0c244d89edfc23b2aff3544ddebd91ac37c60d6b8bf2ec408b820d497bc73631', '[\"*\"]', '2024-12-09 13:37:56', NULL, '2024-12-09 13:37:55', '2024-12-09 13:37:56'),
(47, 'App\\Models\\User', 1, 'API Token', '23b6b680cc0a77a2a3e75415a9e0a5738d4b42ddec4b806f5e35d4f8efeb6b08', '[\"*\"]', '2024-12-09 13:38:16', NULL, '2024-12-09 13:38:11', '2024-12-09 13:38:16'),
(48, 'App\\Models\\User', 1, 'API Token', '618561b3268432fa33bf3af83effe9007433aabd0a48fa603dbc50c56845c7ce', '[\"*\"]', '2024-12-09 13:38:34', NULL, '2024-12-09 13:38:28', '2024-12-09 13:38:34'),
(49, 'App\\Models\\User', 1, 'API Token', 'f85e3f919a10a20bffb4b126707fedf79fa0b172c3f923e5a5359eeae4051436', '[\"*\"]', '2024-12-09 13:39:20', NULL, '2024-12-09 13:39:16', '2024-12-09 13:39:20'),
(50, 'App\\Models\\User', 1, 'API Token', '3cd30b5d231856ee1f72633004b2f3d483df2080dda4084e47f93103c5bee089', '[\"*\"]', '2024-12-09 13:39:24', NULL, '2024-12-09 13:39:20', '2024-12-09 13:39:24'),
(51, 'App\\Models\\User', 1, 'API Token', '66a6aa23bc6668f99682a132c3b9a714d2818bc45b0f43cb01b210f9be67ce01', '[\"*\"]', '2024-12-09 13:40:45', NULL, '2024-12-09 13:40:41', '2024-12-09 13:40:45'),
(52, 'App\\Models\\User', 1, 'API Token', 'e1c964175a96547765a29d27c17896e3dfb37334253d2e4488ac0862c40b8fdd', '[\"*\"]', '2024-12-09 13:40:50', NULL, '2024-12-09 13:40:50', '2024-12-09 13:40:50'),
(53, 'App\\Models\\User', 1, 'API Token', 'adeceb3f41d541741fa2047934ce018513eb7501c505d2ac9b1cdb31b27eedcf', '[\"*\"]', '2024-12-09 13:40:58', NULL, '2024-12-09 13:40:58', '2024-12-09 13:40:58'),
(54, 'App\\Models\\User', 1, 'API Token', '5430f88daa8b10b07e35157471b039f89ab96e3634e149a9627c26bcd35b2d22', '[\"*\"]', '2024-12-09 13:41:32', NULL, '2024-12-09 13:41:29', '2024-12-09 13:41:32'),
(55, 'App\\Models\\User', 1, 'API Token', 'a55551c7784ddf325ade911b14aa6238d7e0e827cb4f429a9c3f7683c579ccee', '[\"*\"]', '2024-12-09 13:41:34', NULL, '2024-12-09 13:41:33', '2024-12-09 13:41:34'),
(56, 'App\\Models\\User', 1, 'API Token', 'e3b5dfe39338252cb54bb4ab73e549d17b2147040c2f08ba7cd607c40d5e8af0', '[\"*\"]', '2024-12-09 13:42:50', NULL, '2024-12-09 13:42:50', '2024-12-09 13:42:50'),
(57, 'App\\Models\\User', 1, 'API Token', '0ff0c493a25a243c867ebcd1bfdff3596c9e9e63eca38367765af4966a6c565f', '[\"*\"]', '2024-12-09 13:42:56', NULL, '2024-12-09 13:42:56', '2024-12-09 13:42:56'),
(58, 'App\\Models\\User', 1, 'API Token', '1e5017133cebe77c31bfe222edb95c2a5060f1b0f1f7c9cd53fa14149840efd6', '[\"*\"]', '2024-12-09 13:43:13', NULL, '2024-12-09 13:43:13', '2024-12-09 13:43:13'),
(59, 'App\\Models\\User', 1, 'API Token', 'dd8c4ac3da3961e342164e1d52a2727f9580ac411d666ac6eb9f5dec852350d1', '[\"*\"]', '2024-12-09 13:43:18', NULL, '2024-12-09 13:43:18', '2024-12-09 13:43:18'),
(60, 'App\\Models\\User', 1, 'API Token', '3cbd57fd1c28934f0bd32a4eac298c2fc5442a4bdfc7513d18fe8cfe85b537ee', '[\"*\"]', '2024-12-09 13:44:46', NULL, '2024-12-09 13:44:45', '2024-12-09 13:44:46'),
(61, 'App\\Models\\User', 1, 'API Token', '1a4b176d04ea3550a97a9f2320bb0e9f8753e320d6ebc80e4d71530fd7232f0d', '[\"*\"]', '2024-12-09 13:45:10', NULL, '2024-12-09 13:45:10', '2024-12-09 13:45:10'),
(62, 'App\\Models\\User', 1, 'API Token', '75aeed053d945b304d7f18b3be03ff48c3e6dbdbe3688b5929200bbb0937e793', '[\"*\"]', '2024-12-09 13:45:19', NULL, '2024-12-09 13:45:18', '2024-12-09 13:45:19'),
(63, 'App\\Models\\User', 1, 'API Token', '10084974d4221ed2441de9d9e34566f5acd15672210c697b8d4e38315adb9c87', '[\"*\"]', '2024-12-09 13:45:25', NULL, '2024-12-09 13:45:24', '2024-12-09 13:45:25'),
(64, 'App\\Models\\User', 1, 'API Token', '697093be1bf4f27d3b019fc6ce76a51dbf817d8cdcdddc1877c58085914e5b07', '[\"*\"]', '2024-12-09 13:45:33', NULL, '2024-12-09 13:45:32', '2024-12-09 13:45:33'),
(65, 'App\\Models\\User', 1, 'API Token', 'd94041c712d71f6709529c7d71cece2db7ee2bfed4ecd143ad0f8844f422a29d', '[\"*\"]', '2024-12-09 13:46:44', NULL, '2024-12-09 13:46:44', '2024-12-09 13:46:44'),
(66, 'App\\Models\\User', 1, 'API Token', '5e5110a3c22f4d5c5a03237d44cc8b9e146d29b650d8226a13d2f67e6ef22fea', '[\"*\"]', '2024-12-09 13:46:53', NULL, '2024-12-09 13:46:53', '2024-12-09 13:46:53'),
(67, 'App\\Models\\User', 1, 'API Token', 'c0d140771b84ad0200369e9c42722ed1c602d4fb0e18a59b931de7a59ab722d7', '[\"*\"]', '2024-12-09 13:46:58', NULL, '2024-12-09 13:46:57', '2024-12-09 13:46:58'),
(68, 'App\\Models\\User', 1, 'API Token', '7781e767a5036aefb4a2af078f135ebb22577f9c86a514fb4bcea11f3ce31265', '[\"*\"]', '2024-12-09 13:47:13', NULL, '2024-12-09 13:47:13', '2024-12-09 13:47:13'),
(69, 'App\\Models\\User', 1, 'API Token', '6fd2ef0cd4ab362202badb7d8410edc3e8fca746e497ef8572f4e2203c2594fb', '[\"*\"]', '2024-12-09 13:49:25', NULL, '2024-12-09 13:49:24', '2024-12-09 13:49:25'),
(70, 'App\\Models\\User', 1, 'API Token', 'a26535d1b1ab817612781c224b2d3c9305431a5be936a16ccbe8a5031c551bd9', '[\"*\"]', '2024-12-09 13:52:07', NULL, '2024-12-09 13:52:07', '2024-12-09 13:52:07'),
(71, 'App\\Models\\User', 1, 'API Token', 'f04c93890e239b0fa2ae6f3f1851e32efa1f33354dd13c0a12b0f250afa4bb98', '[\"*\"]', '2024-12-09 13:52:09', NULL, '2024-12-09 13:52:08', '2024-12-09 13:52:09'),
(72, 'App\\Models\\User', 1, 'API Token', '19bf312ae9d95c2e511621e0cf984e20db6d7cfd324eebba2c9a0307465e45e7', '[\"*\"]', '2024-12-09 13:52:10', NULL, '2024-12-09 13:52:09', '2024-12-09 13:52:10'),
(73, 'App\\Models\\User', 1, 'API Token', 'c0bb098e5768e0c79005fa6743e30c528662a600abc09c3625eb5b244bf1ac79', '[\"*\"]', '2024-12-09 13:52:11', NULL, '2024-12-09 13:52:11', '2024-12-09 13:52:11'),
(74, 'App\\Models\\User', 1, 'API Token', 'b776c3a13646b086f92861fadba6e8957573a1d77656c32664a101fcffdce39f', '[\"*\"]', '2024-12-09 13:52:12', NULL, '2024-12-09 13:52:11', '2024-12-09 13:52:12'),
(75, 'App\\Models\\User', 1, 'API Token', 'c2d24ca69bdc860382ceb1f82938330f97a4b68f8d66816601c36f50c468b0f6', '[\"*\"]', '2024-12-09 13:52:13', NULL, '2024-12-09 13:52:12', '2024-12-09 13:52:13'),
(76, 'App\\Models\\User', 1, 'API Token', '4f45e8f69e0d9ff09a8ed210cd63a5ef261c28b721c057540034463fa703ac4a', '[\"*\"]', '2024-12-09 13:52:15', NULL, '2024-12-09 13:52:15', '2024-12-09 13:52:15'),
(77, 'App\\Models\\User', 1, 'API Token', 'c788d9e6aa23ed3feeadc3d4939187c72f3990bf3df418c4cff482192a75fa92', '[\"*\"]', '2024-12-09 13:52:24', NULL, '2024-12-09 13:52:24', '2024-12-09 13:52:24'),
(78, 'App\\Models\\User', 1, 'API Token', '6863faa024b9c396c06f97869b44cc635c424b844abd4dc2b15ddff6d97c7b05', '[\"*\"]', '2024-12-09 13:52:28', NULL, '2024-12-09 13:52:27', '2024-12-09 13:52:28'),
(79, 'App\\Models\\User', 1, 'API Token', '930d1293c291ca4829fa9aeb9a3b54d99dbbf7edd034aea0242e15baca2b073b', '[\"*\"]', '2024-12-09 13:53:08', NULL, '2024-12-09 13:53:08', '2024-12-09 13:53:08'),
(80, 'App\\Models\\User', 1, 'API Token', '1b6b7ee8d7cdf287e8b4f29deef52174db23c3bcfcf9bfbf8639187ef908ab90', '[\"*\"]', '2024-12-09 13:54:17', NULL, '2024-12-09 13:54:16', '2024-12-09 13:54:17'),
(81, 'App\\Models\\User', 1, 'API Token', '086c73da57fc377ba7f5c1e9d0e75251786602e68620680367f986e3ea2530e4', '[\"*\"]', '2024-12-09 13:54:19', NULL, '2024-12-09 13:54:18', '2024-12-09 13:54:19'),
(82, 'App\\Models\\User', 1, 'API Token', '4ea1755c924b9ebaae7382069b679d63a0782b1d1f66afab50771aafededabf3', '[\"*\"]', '2024-12-09 13:54:21', NULL, '2024-12-09 13:54:21', '2024-12-09 13:54:21'),
(83, 'App\\Models\\User', 1, 'API Token', '83fd0c2a72484faa5a7bf4f2cf75df8e2c490b05e6ee1a2d6ae3423e705c6793', '[\"*\"]', '2024-12-09 13:54:24', NULL, '2024-12-09 13:54:23', '2024-12-09 13:54:24'),
(84, 'App\\Models\\User', 1, 'API Token', 'c9670be87041301dbec44d1c6357defd321049fe150436f1bd59e32249078969', '[\"*\"]', '2024-12-09 13:54:28', NULL, '2024-12-09 13:54:28', '2024-12-09 13:54:28'),
(85, 'App\\Models\\User', 1, 'API Token', 'e34e76d1c236a1ad19d947acffb1772369ac319f7d3ab73eefc1ff0971b74c10', '[\"*\"]', '2024-12-09 13:54:34', NULL, '2024-12-09 13:54:34', '2024-12-09 13:54:34'),
(86, 'App\\Models\\User', 1, 'API Token', 'aa655e096b2b82478d7f2311a3e4ebafce80c5a17fe99734ff380a562ab5c6f4', '[\"*\"]', '2024-12-09 13:54:37', NULL, '2024-12-09 13:54:36', '2024-12-09 13:54:37'),
(87, 'App\\Models\\User', 1, 'API Token', '3f9bfc5722edefbe4340cab39f47582989059fa170a6b80b02bde95b2bf63dd2', '[\"*\"]', '2024-12-09 13:54:39', NULL, '2024-12-09 13:54:38', '2024-12-09 13:54:39'),
(88, 'App\\Models\\User', 1, 'API Token', '5bb0a0d55b100b059fc62545a3c41ba9a52a0ea3ed0a80cbf4d4a20305f34aba', '[\"*\"]', '2024-12-09 13:54:42', NULL, '2024-12-09 13:54:41', '2024-12-09 13:54:42'),
(89, 'App\\Models\\User', 1, 'API Token', '3a164712254e945eae9806ecc864e583aeced8fc92d37c08002a82e25b0bfebe', '[\"*\"]', '2024-12-09 13:54:45', NULL, '2024-12-09 13:54:44', '2024-12-09 13:54:45'),
(90, 'App\\Models\\User', 1, 'API Token', 'a1ba3e26526561cf0b355fbaf8a5f96fe3dca9c076c76024dc417338d6b0e4d0', '[\"*\"]', '2024-12-09 13:54:48', NULL, '2024-12-09 13:54:48', '2024-12-09 13:54:48'),
(91, 'App\\Models\\User', 1, 'API Token', '99ee4a897faf30eb313faf08f6bc2a5b70e0c7447ec2184006bfbc3ac9860399', '[\"*\"]', '2024-12-09 13:54:51', NULL, '2024-12-09 13:54:50', '2024-12-09 13:54:51'),
(92, 'App\\Models\\User', 1, 'API Token', 'f40fa1d5c0ccf9b355bbde4180a92ee1ac56fcdbd173b422cf0995679e7b789d', '[\"*\"]', '2024-12-09 13:55:16', NULL, '2024-12-09 13:55:16', '2024-12-09 13:55:16'),
(93, 'App\\Models\\User', 1, 'API Token', '99bfe22c88e224cb1a05fd176bded7478bfc6ac387b5739ec440744a56f7fffc', '[\"*\"]', '2024-12-09 13:55:19', NULL, '2024-12-09 13:55:19', '2024-12-09 13:55:19'),
(94, 'App\\Models\\User', 1, 'API Token', '03537a1e3e705facab08bfd4170fe50bf9e3fc9094cb7c008824831761b5d012', '[\"*\"]', '2024-12-09 13:55:25', NULL, '2024-12-09 13:55:25', '2024-12-09 13:55:25'),
(95, 'App\\Models\\User', 1, 'API Token', 'db12b177f65543475d89e8600b2ad0218f43e231fe51253b8b2abfe534118009', '[\"*\"]', '2024-12-09 13:55:39', NULL, '2024-12-09 13:55:38', '2024-12-09 13:55:39'),
(96, 'App\\Models\\User', 1, 'API Token', '1d4a10054339172c0c2eb60c63f094037ba2dee8f7abb324993437169c19fc48', '[\"*\"]', '2024-12-09 13:56:01', NULL, '2024-12-09 13:56:00', '2024-12-09 13:56:01'),
(97, 'App\\Models\\User', 1, 'API Token', '662ca3ac5ddc95d0b0327fb71c4aa415625e7adcb19bf7f201cef432ca13424e', '[\"*\"]', '2024-12-09 13:56:24', NULL, '2024-12-09 13:56:24', '2024-12-09 13:56:24'),
(98, 'App\\Models\\User', 1, 'API Token', '8387df1d77d95520ea8ceb29416d4ae1053085c33e8f61626aa3382cb5d3f99a', '[\"*\"]', '2024-12-09 13:58:13', NULL, '2024-12-09 13:58:13', '2024-12-09 13:58:13'),
(99, 'App\\Models\\User', 1, 'API Token', 'f3fb614d7f17e8bb518b9a07f74e7d5f155df7c0de7e3618e233a1e4cfacc0b5', '[\"*\"]', '2024-12-09 14:00:07', NULL, '2024-12-09 14:00:02', '2024-12-09 14:00:07'),
(100, 'App\\Models\\User', 1, 'API Token', '60c2b1fd634f8c12e79de57db6d7cbd956c0a6438785a4f8b9f5048118fc4d51', '[\"*\"]', '2024-12-09 14:00:09', NULL, '2024-12-09 14:00:09', '2024-12-09 14:00:09'),
(101, 'App\\Models\\User', 1, 'API Token', '97209720f45896f6c460548161ff39e2a3541c555bc2f0a62cdea213c1a3459e', '[\"*\"]', '2024-12-09 14:00:32', NULL, '2024-12-09 14:00:26', '2024-12-09 14:00:32'),
(102, 'App\\Models\\User', 1, 'API Token', 'e8aa1461418e60d2241bbca331860920cf4fda754bce4cc3b57b97f1a75d8dde', '[\"*\"]', '2024-12-09 14:00:47', NULL, '2024-12-09 14:00:40', '2024-12-09 14:00:47'),
(103, 'App\\Models\\User', 1, 'API Token', '4e0bd5364ce3d6b6a1737c418949622f6fc9b07b00317aedd0517dd69fcb2cd8', '[\"*\"]', '2024-12-09 14:01:23', NULL, '2024-12-09 14:01:19', '2024-12-09 14:01:23'),
(104, 'App\\Models\\User', 1, 'API Token', '1dee3186dad124d13e61bbe505c551b4ae71a79e637b16e9c319236be4f696a6', '[\"*\"]', '2024-12-09 14:01:32', NULL, '2024-12-09 14:01:28', '2024-12-09 14:01:32'),
(105, 'App\\Models\\User', 1, 'API Token', '696b843fe6450e40ead653775166362c1a325129c816cb02e16f26c532546a49', '[\"*\"]', '2024-12-09 14:02:24', NULL, '2024-12-09 14:02:16', '2024-12-09 14:02:24'),
(106, 'App\\Models\\User', 1, 'API Token', '159be87e63000d5e45c9a308af476801791679db5526e57c0754cb23f90cbd7d', '[\"*\"]', '2024-12-09 14:03:46', NULL, '2024-12-09 14:03:37', '2024-12-09 14:03:46'),
(107, 'App\\Models\\User', 1, 'API Token', 'c2cd72586a8389b4c7646afe4b451cd05c9a874ef5f73ecbc3cf077218dd0f85', '[\"*\"]', NULL, NULL, '2024-12-09 14:04:52', '2024-12-09 14:04:52'),
(108, 'App\\Models\\User', 1, 'API Token', '445e6a88f16d253f3027038ec2bdb48884e7cc9e1a7a92f94d107ff2974cb2ff', '[\"*\"]', NULL, NULL, '2024-12-09 14:04:54', '2024-12-09 14:04:54'),
(109, 'App\\Models\\User', 1, 'API Token', 'ac4dbae58e7e4187374c5184befb7a568c6bdd133c28615fcc7cac41a1011bb3', '[\"*\"]', NULL, NULL, '2024-12-09 14:05:06', '2024-12-09 14:05:06'),
(110, 'App\\Models\\User', 1, 'API Token', '67329deaa7c509d52d114f7064e11d18cd4f2daca15d5b4139bad3e3490de451', '[\"*\"]', '2024-12-09 14:05:47', NULL, '2024-12-09 14:05:11', '2024-12-09 14:05:47'),
(111, 'App\\Models\\User', 1, 'API Token', '7b0b92fcc09d3d6be81534b5b4c80d6655137ba894d1199fa7ef0ca19fac4a78', '[\"*\"]', '2024-12-09 14:05:49', NULL, '2024-12-09 14:05:48', '2024-12-09 14:05:49'),
(112, 'App\\Models\\User', 1, 'API Token', 'c88c497fc07295fd1c4b42667079d7a2dbb86395e4de83189ed923520b35efa3', '[\"*\"]', '2024-12-09 14:06:00', NULL, '2024-12-09 14:05:59', '2024-12-09 14:06:00'),
(113, 'App\\Models\\User', 1, 'API Token', 'c00cda8605d3c3f4f9c370f6e905a75a368ddbe948375b2f111fe2a5b53f57f4', '[\"*\"]', '2024-12-09 14:06:22', NULL, '2024-12-09 14:06:22', '2024-12-09 14:06:22'),
(114, 'App\\Models\\User', 1, 'API Token', '115af953d69e595a0c221a733e5a8649c4196d768595a04c5de508de02b2f1b4', '[\"*\"]', '2024-12-09 14:06:26', NULL, '2024-12-09 14:06:26', '2024-12-09 14:06:26'),
(115, 'App\\Models\\User', 1, 'API Token', '585f047c3dd577bb51d5154e6fa1811f1889e137677628e9ca9d356557407b23', '[\"*\"]', '2024-12-09 14:06:30', NULL, '2024-12-09 14:06:30', '2024-12-09 14:06:30'),
(116, 'App\\Models\\User', 1, 'API Token', '272b7ab35629fee8586fdaa1bde8983e24730f45b379e0be61cff55551c799e9', '[\"*\"]', '2024-12-09 14:06:41', NULL, '2024-12-09 14:06:41', '2024-12-09 14:06:41'),
(117, 'App\\Models\\User', 1, 'API Token', '72673bfd010687427788e0d86cdd925de607fa9d8b9d818f2ccf320af4f75349', '[\"*\"]', '2024-12-09 14:06:54', NULL, '2024-12-09 14:06:53', '2024-12-09 14:06:54'),
(118, 'App\\Models\\User', 1, 'API Token', 'c35f1b1f2b08bca10339c901616e29e254fd9677889b8c7e0c16ef41ac1cc61b', '[\"*\"]', '2024-12-09 14:06:56', NULL, '2024-12-09 14:06:56', '2024-12-09 14:06:56'),
(119, 'App\\Models\\User', 1, 'API Token', 'fbc720a99a0fa93aad500f135a0a0bf6d01b16c49878bda1ae40b43ec6f4d69d', '[\"*\"]', '2024-12-09 14:07:03', NULL, '2024-12-09 14:06:58', '2024-12-09 14:07:03'),
(120, 'App\\Models\\User', 1, 'API Token', '54adcad018dc1451dab9a820efbfe77855c2be064f6fed693f377aef60f2af49', '[\"*\"]', '2024-12-09 14:14:26', NULL, '2024-12-09 14:14:26', '2024-12-09 14:14:26');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `price` double(8,2) NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `user_id`, `name`, `description`, `price`, `quantity`, `created_at`, `updated_at`) VALUES
(1, 1, 'Wireless Headphones', 'Noise-canceling over-ear headphones with Bluetooth connectivity and 20 hours of battery life.', 120.00, 50, '2024-12-09 09:55:11', '2024-12-09 09:55:11'),
(2, 1, 'Smartphone Tripod', 'Lightweight and portable tripod with a universal mount for smartphones, perfect for stable photography and videography.', 30.00, 150, '2024-12-09 09:55:40', '2024-12-09 09:55:40'),
(3, 1, 'Gaming Chair', 'Ergonomic gaming chair with lumbar support, adjustable height, and breathable mesh fabric for long gaming sessions.', 250.00, 25, '2024-12-09 09:55:55', '2024-12-09 09:55:55'),
(4, 1, 'Reusable Water Bottle', 'Stainless steel water bottle with a 750ml capacity and double-wall insulation.', 18.00, 100, '2024-12-09 09:56:09', '2024-12-09 09:56:09'),
(5, 1, 'LED Desk Lamp', 'Adjustable LED desk lamp with three brightness settings and a USB charging port.', 45.00, 70, '2024-12-09 09:56:21', '2024-12-09 10:37:20'),
(6, 1, 'Yoga Mat', 'Non-slip yoga mat with a 6mm thickness for added comfort during workouts.', 25.00, 120, '2024-12-09 09:56:32', '2024-12-09 09:56:32'),
(7, 1, 'Wireless Keyboard and Mouse Combo', 'Sleek wireless keyboard and mouse set with a silent keystroke design.', 60.00, 40, '2024-12-09 09:56:44', '2024-12-09 09:56:44'),
(8, 1, 'Portable Power Bank', '20,000mAh portable power bank with fast charging support for multiple devices.', 35.00, 200, '2024-12-09 09:56:58', '2024-12-09 09:56:58'),
(9, 1, 'Bluetooth Speaker', 'Compact Bluetooth speaker with deep bass and a 10-hour battery life.', 50.00, 90, '2024-12-09 09:57:10', '2024-12-09 09:57:10'),
(10, 3, 'Running Shoes', 'Lightweight running shoes with a cushioned sole and breathable material.', 70.00, 50, '2024-12-09 09:57:26', '2024-12-09 09:57:26'),
(11, 1, 'Electric Kettle', '1.7-liter electric kettle with rapid boiling technology and auto shut-off.', 40.00, 85, '2024-12-09 09:57:38', '2024-12-09 09:57:38'),
(12, 1, 'Digital Alarm Clock', 'Multi-functional digital alarm clock with a large LED display and dual USB ports.', 25.00, 110, '2024-12-09 09:57:51', '2024-12-09 09:57:51'),
(14, 1, 'Fitness Tracker', 'Slim fitness tracker with heart rate monitoring, step counting, and sleep tracking.', 95.00, 65, '2024-12-09 09:58:17', '2024-12-09 09:58:17'),
(15, 1, 'Non-Stick Frying Pan', '12-inch non-stick frying pan with a heat-resistant handle and durable coating.', 35.00, 100, '2024-12-09 09:58:28', '2024-12-09 09:58:28');

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
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'SamyJoe', 'manager@email.com', NULL, '$2y$12$Qrah4XOMQIz6jkUaLnpaMO2qo/4ydOg972lSXEBGR22abOB7eV6lq', NULL, '2024-12-09 09:19:53', '2024-12-09 09:19:53'),
(3, 'JoeDoe', 'email3213221@email.com', NULL, '$2y$12$/jRp8tzbbE2.TShq.6blW.oPY/WPkdnNDgHbyQpneOGqaXmYhisvO', NULL, '2024-12-09 11:15:24', '2024-12-09 11:15:24');

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
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_user_id_foreign` (`user_id`);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
