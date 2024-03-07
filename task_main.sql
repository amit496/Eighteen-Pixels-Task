-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 07, 2024 at 09:25 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `task_main`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `age` int(11) NOT NULL,
  `contact` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `age`, `contact`, `created_at`, `updated_at`) VALUES
(1, 'Lempi Stanton IV', 77, '1429933515', '2024-03-07 01:38:49', '2024-03-07 01:38:49'),
(2, 'Prof. Santos Russel', 35, '4366776773', '2024-03-07 01:38:49', '2024-03-07 01:38:49'),
(3, 'Rose Romaguera', 43, '8840973168', '2024-03-07 01:38:49', '2024-03-07 01:38:49'),
(4, 'Mr. Luciano Cremin', 58, '1063155360', '2024-03-07 01:38:49', '2024-03-07 01:38:49'),
(5, 'Price Carroll', 80, '9886976384', '2024-03-07 01:38:49', '2024-03-07 01:38:49'),
(6, 'Oren Langworth', 69, '3943820290', '2024-03-07 01:38:49', '2024-03-07 01:38:49'),
(7, 'Bette Adams', 91, '1693167051', '2024-03-07 01:38:49', '2024-03-07 01:38:49'),
(8, 'Katharina Roberts', 7, '4400752058', '2024-03-07 01:38:49', '2024-03-07 01:38:49'),
(9, 'Jed Muller', 25, '5269713402', '2024-03-07 01:38:49', '2024-03-07 01:38:49'),
(10, 'Reed Weimann', 61, '8413654843', '2024-03-07 01:38:49', '2024-03-07 01:38:49'),
(11, 'Christa Murazik III', 13, '0301263742', '2024-03-07 01:38:49', '2024-03-07 01:38:49'),
(12, 'Prof. Ava Pacocha V', 39, '6862446778', '2024-03-07 01:38:49', '2024-03-07 01:38:49'),
(13, 'Prof. Clark Kunde', 20, '5089433337', '2024-03-07 01:38:49', '2024-03-07 01:38:49'),
(14, 'Marcella Roob', 71, '6848208681', '2024-03-07 01:38:49', '2024-03-07 01:38:49'),
(15, 'Frida Purdy', 78, '8318318836', '2024-03-07 01:38:49', '2024-03-07 01:38:49'),
(16, 'Sandy Strosin', 51, '0519358121', '2024-03-07 01:38:49', '2024-03-07 01:38:49'),
(17, 'Mr. Noah Bauch', 45, '4717787337', '2024-03-07 01:38:49', '2024-03-07 01:38:49'),
(18, 'Markus Glover', 53, '4914516674', '2024-03-07 01:38:49', '2024-03-07 01:38:49'),
(19, 'Prof. Colton Kuhic PhD', 90, '6345580863', '2024-03-07 01:38:49', '2024-03-07 01:38:49'),
(20, 'Retha Haley', 14, '3590017342', '2024-03-07 01:38:49', '2024-03-07 01:38:49'),
(21, 'Manuel Hudson', 66, '7208853272', '2024-03-07 01:38:49', '2024-03-07 01:38:49'),
(22, 'Tyra Turner MD', 21, '8367591125', '2024-03-07 01:38:49', '2024-03-07 01:38:49'),
(23, 'Mrs. Norene Price PhD', 32, '2829611056', '2024-03-07 01:38:49', '2024-03-07 01:38:49'),
(24, 'Liliana Reichert', 62, '0790580664', '2024-03-07 01:38:49', '2024-03-07 01:38:49'),
(25, 'Dr. Franz Walsh DVM', 27, '5870119695', '2024-03-07 01:38:49', '2024-03-07 01:38:49'),
(26, 'Candida Emmerich PhD', 44, '5131739247', '2024-03-07 01:38:49', '2024-03-07 01:38:49'),
(27, 'Cara Moore', 39, '3658482512', '2024-03-07 01:38:49', '2024-03-07 01:38:49'),
(28, 'Dr. Gabe Altenwerth', 83, '9939537275', '2024-03-07 01:38:49', '2024-03-07 01:38:49'),
(29, 'Mrs. Carli Kautzer DDS', 44, '0954236044', '2024-03-07 01:38:49', '2024-03-07 01:38:49'),
(30, 'Bryana Kihn', 52, '7888439765', '2024-03-07 01:38:49', '2024-03-07 01:38:49'),
(31, 'Mr. Vicente Bergstrom', 26, '0509360309', '2024-03-07 01:38:49', '2024-03-07 01:38:49'),
(32, 'Arnaldo Aufderhar', 65, '6494761798', '2024-03-07 01:38:49', '2024-03-07 01:38:49'),
(33, 'Ronaldo Auer MD', 5, '1698277718', '2024-03-07 01:38:49', '2024-03-07 01:38:49'),
(34, 'Dr. Stacey Smith I', 74, '2831504684', '2024-03-07 01:38:49', '2024-03-07 01:38:49'),
(35, 'Hardy Wisoky III', 71, '8469469797', '2024-03-07 01:38:49', '2024-03-07 01:38:49'),
(36, 'Prof. Luis Goldner', 7, '5317498877', '2024-03-07 01:38:49', '2024-03-07 01:38:49'),
(37, 'Ms. Elsie Olson', 6, '1466767911', '2024-03-07 01:38:49', '2024-03-07 01:38:49'),
(38, 'August Smith', 54, '6130261712', '2024-03-07 01:38:49', '2024-03-07 01:38:49'),
(39, 'Amanda Donnelly IV', 86, '9964655733', '2024-03-07 01:38:49', '2024-03-07 01:38:49'),
(40, 'Theodora Schumm III', 3, '8045834372', '2024-03-07 01:38:49', '2024-03-07 01:38:49'),
(41, 'Emmett Batz DVM', 32, '6190902317', '2024-03-07 01:38:49', '2024-03-07 01:38:49'),
(42, 'Evelyn Nitzsche', 30, '5331067295', '2024-03-07 01:38:49', '2024-03-07 01:38:49'),
(43, 'Lois Goodwin', 79, '4125761384', '2024-03-07 01:38:49', '2024-03-07 01:38:49'),
(44, 'Arely Turner', 25, '3996439632', '2024-03-07 01:38:49', '2024-03-07 01:38:49'),
(45, 'Tyreek O\'Conner', 43, '1638021323', '2024-03-07 01:38:49', '2024-03-07 01:38:49'),
(46, 'Trycia Murphy', 77, '4918145340', '2024-03-07 01:38:49', '2024-03-07 01:38:49'),
(47, 'Eleanora Hamill', 50, '7489381888', '2024-03-07 01:38:49', '2024-03-07 01:38:49'),
(48, 'Misael Schmidt', 95, '6670275337', '2024-03-07 01:38:49', '2024-03-07 01:38:49'),
(49, 'Elsa Schmidt', 12, '3018214078', '2024-03-07 01:38:49', '2024-03-07 01:38:49'),
(50, 'Maritza Willms', 21, '7827208790', '2024-03-07 01:38:49', '2024-03-07 01:38:49'),
(51, 'Eda Luettgen', 50, '4598489267', '2024-03-07 01:38:49', '2024-03-07 01:38:49'),
(52, 'Koby Wilderman', 35, '4778253861', '2024-03-07 01:38:49', '2024-03-07 01:38:49'),
(53, 'Ebony Padberg', 85, '6415492499', '2024-03-07 01:38:49', '2024-03-07 01:38:49'),
(54, 'Miss Lenna Ullrich Sr.', 7, '5652284500', '2024-03-07 01:38:49', '2024-03-07 01:38:49'),
(55, 'Mr. Guillermo Streich', 77, '5949667986', '2024-03-07 01:38:49', '2024-03-07 01:38:49'),
(56, 'Baylee Quitzon V', 42, '7615428617', '2024-03-07 01:38:49', '2024-03-07 01:38:49'),
(57, 'Elza Zulauf', 62, '7096513987', '2024-03-07 01:38:49', '2024-03-07 01:38:49'),
(58, 'Maiya Emard', 32, '8103579838', '2024-03-07 01:38:49', '2024-03-07 01:38:49'),
(59, 'Carolina Terry', 44, '4903397961', '2024-03-07 01:38:49', '2024-03-07 01:38:49'),
(60, 'Hugh Howe', 0, '9048451269', '2024-03-07 01:38:49', '2024-03-07 01:38:49'),
(61, 'Adam Blick', 79, '1181363862', '2024-03-07 01:38:49', '2024-03-07 01:38:49'),
(62, 'Rhiannon Robel', 55, '0721184228', '2024-03-07 01:38:49', '2024-03-07 01:38:49'),
(63, 'Flo White', 58, '8042828069', '2024-03-07 01:38:49', '2024-03-07 01:38:49'),
(64, 'Maeve Bauch', 39, '1592624048', '2024-03-07 01:38:49', '2024-03-07 01:38:49'),
(65, 'Geovanny Conroy Jr.', 82, '8569888878', '2024-03-07 01:38:49', '2024-03-07 01:38:49'),
(66, 'Jensen Cole', 37, '8358866332', '2024-03-07 01:38:49', '2024-03-07 01:38:49'),
(67, 'Albina Ankunding', 13, '1184582942', '2024-03-07 01:38:49', '2024-03-07 01:38:49'),
(68, 'Ayla Welch', 86, '2901040676', '2024-03-07 01:38:49', '2024-03-07 01:38:49'),
(69, 'Dr. Kianna Funk III', 36, '8364883928', '2024-03-07 01:38:49', '2024-03-07 01:38:49'),
(70, 'Everardo Gleason', 70, '7605032558', '2024-03-07 01:38:49', '2024-03-07 01:38:49'),
(71, 'Gilberto Spencer', 14, '0739199294', '2024-03-07 01:38:49', '2024-03-07 01:38:49'),
(72, 'Tony Anderson', 98, '1134086968', '2024-03-07 01:38:49', '2024-03-07 01:38:49'),
(73, 'Prof. Zelda McCullough PhD', 37, '3526330785', '2024-03-07 01:38:49', '2024-03-07 01:38:49'),
(74, 'Mr. Dominic Keebler', 61, '0934481075', '2024-03-07 01:38:49', '2024-03-07 01:38:49'),
(75, 'Allene White', 52, '7131652188', '2024-03-07 01:38:49', '2024-03-07 01:38:49'),
(76, 'Mr. Jordyn Kovacek', 84, '2741819060', '2024-03-07 01:38:49', '2024-03-07 01:38:49'),
(77, 'Kamron Boyle', 80, '2029285026', '2024-03-07 01:38:49', '2024-03-07 01:38:49'),
(78, 'Santina Hand', 35, '7843041634', '2024-03-07 01:38:49', '2024-03-07 01:38:49'),
(79, 'Ludie D\'Amore', 78, '9934947749', '2024-03-07 01:38:49', '2024-03-07 01:38:49'),
(80, 'Idella Morar', 36, '0320510740', '2024-03-07 01:38:49', '2024-03-07 01:38:49'),
(81, 'Marion Hessel', 58, '8107177439', '2024-03-07 01:38:49', '2024-03-07 01:38:49'),
(82, 'Adonis Bradtke', 21, '4951716421', '2024-03-07 01:38:49', '2024-03-07 01:38:49'),
(83, 'Dejuan Pagac', 61, '9154630134', '2024-03-07 01:38:49', '2024-03-07 01:38:49'),
(84, 'Prof. Kevin Russel V', 97, '9833194412', '2024-03-07 01:38:49', '2024-03-07 01:38:49'),
(85, 'Prof. Alexis McKenzie III', 93, '7600713625', '2024-03-07 01:38:49', '2024-03-07 01:38:49'),
(86, 'Prof. Jayson Halvorson PhD', 51, '3486942343', '2024-03-07 01:38:49', '2024-03-07 01:38:49'),
(87, 'Mrs. Giovanna Donnelly', 67, '8331455050', '2024-03-07 01:38:49', '2024-03-07 01:38:49'),
(88, 'Erin Blick V', 61, '6922962041', '2024-03-07 01:38:49', '2024-03-07 01:38:49'),
(89, 'Tiffany Ward', 41, '1264713923', '2024-03-07 01:38:49', '2024-03-07 01:38:49'),
(90, 'Kellen Pagac', 36, '3624233621', '2024-03-07 01:38:49', '2024-03-07 01:38:49'),
(91, 'Marlee Weber', 4, '9579206685', '2024-03-07 01:38:49', '2024-03-07 01:38:49'),
(92, 'Prof. Craig Breitenberg', 38, '2953003568', '2024-03-07 01:38:49', '2024-03-07 01:38:49'),
(93, 'Heath Vandervort', 67, '9256040788', '2024-03-07 01:38:49', '2024-03-07 01:38:49'),
(94, 'Dr. Jose Beahan IV', 97, '7706358972', '2024-03-07 01:38:49', '2024-03-07 01:38:49'),
(95, 'Wilbert Sporer', 55, '6146511318', '2024-03-07 01:38:49', '2024-03-07 01:38:49'),
(96, 'Dr. Tiana Gleichner Sr.', 69, '3593568582', '2024-03-07 01:38:49', '2024-03-07 01:38:49'),
(97, 'Maia Nicolas', 84, '1558745059', '2024-03-07 01:38:49', '2024-03-07 01:38:49'),
(98, 'Ryann Ryan III', 6, '2599727555', '2024-03-07 01:38:49', '2024-03-07 01:38:49'),
(99, 'Vita Luettgen', 41, '8745379403', '2024-03-07 01:38:49', '2024-03-07 01:38:49'),
(100, 'Ms. Katharina Muller', 52, '6751863262', '2024-03-07 01:38:49', '2024-03-07 01:38:49');

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
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_03_06_143439_create_customers_table', 1),
(6, '2024_03_06_175741_create_products_table', 1);

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

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `customer_qty` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_name`, `customer_qty`, `created_at`, `updated_at`) VALUES
(2, 'Product-1', '12', '2024-03-07 02:48:56', '2024-03-07 02:48:56'),
(3, 'Product-2', '23', '2024-03-07 02:49:02', '2024-03-07 02:49:18'),
(4, 'Product-3', '22', '2024-03-07 02:49:31', '2024-03-07 02:49:31');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `userid` varchar(255) DEFAULT NULL,
  `contact` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `type` varchar(255) NOT NULL DEFAULT 'admin',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `userid`, `contact`, `password`, `type`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin', 'superadmin@gmail.com', 'superadmin@123', '1231234565', '$2y$12$4dLHeUWInUJpnQvLWhqzN.cRa7ZwmXjn3jYYVbPUA5MncXhEJovR6', 'superadmin', '2024-03-06 19:56:18', '2024-03-06 19:56:18'),
(2, 'Malcolm Runolfsdottir V', 'rath.leola@gmail.com', 'adriana77', '1030202012', '$2y$12$BPXxUq6N3V5be2gb.9ZKxOQ4yXgyvfZ0LQp4wRcv8ydqZEusG9gDi', 'admin', '2024-03-07 01:38:50', '2024-03-07 01:38:50'),
(3, 'Emilio McClure', 'ledner.elton@jones.org', 'benjamin33', '2462344764', '$2y$12$rKNSUlKdSIJcbeNT5sokou/R2n8lWvIXkKhrTHriTCyvMWhf9ABcO', 'admin', '2024-03-07 01:38:50', '2024-03-07 01:38:50'),
(4, 'Koby Jenkins', 'rohan.destini@weissnat.net', 'zoegusikowski', '2990777260', '$2y$12$Wz2PtZ5Vd1OaJoYaC.mKsOQ/WybhKyXFZ/CjzkqjxQVo1gLd4v.mS', 'admin', '2024-03-07 01:38:50', '2024-03-07 01:38:50'),
(5, 'Gaylord Crona', 'sjones@kreiger.biz', 'sidneyruecker', '9111516068', '$2y$12$kJ7BepRD7AKzRHUB71ckaunKPwivLvLiIKRV3.tnzHNeQLzfP5Adq', 'admin', '2024-03-07 01:38:51', '2024-03-07 01:38:51'),
(6, 'Abbey Rogahn', 'curtis.swaniawski@gmail.com', 'alexys75', '9153274282', '$2y$12$F1F4K6TbV4Ie2n9thS0GOuyilR2K8V0Ajs.dzT/ce/Sg/M3lntEFK', 'admin', '2024-03-07 01:38:51', '2024-03-07 01:38:51'),
(7, 'Molly Wyman', 'lmorissette@kub.info', 'charleyauer', '0010302520', '$2y$12$jek3nLoEsw8qIwXJxLiFuuvdyoa6Ci7J/mmGGgAu7hLXHH899IxOG', 'admin', '2024-03-07 01:38:51', '2024-03-07 01:38:51'),
(8, 'Arlie Kilback', 'howell.mireille@gmail.com', 'framirichie', '3299806863', '$2y$12$17vnpueXDXGY9X4Uy/bGS.lazYFoKlMdMHUp1QHP7bbvHXWYLtPbe', 'admin', '2024-03-07 01:38:52', '2024-03-07 01:38:52'),
(9, 'Leann Legros', 'qgoodwin@champlin.com', 'sporercolt', '3527958879', '$2y$12$n.RorImdMOca0zgtDU5IHeeZK6lr2CtyXrsohn3yCsC.iKBr5oiBS', 'admin', '2024-03-07 01:38:52', '2024-03-07 01:38:52'),
(10, 'Merlin Hermann', 'conroy.luz@hotmail.com', 'johnsontwila', '9814506488', '$2y$12$FaGGVUj0Ih/vbSmxo.29ceom8Pc3Qwi/dLqWyjIA7/QhjdCV0wNHq', 'admin', '2024-03-07 01:38:52', '2024-03-07 01:38:52'),
(11, 'Lane Pacocha', 'brisa53@tromp.info', 'rubie86', '7306319630', '$2y$12$uUyd5qpXbTItoe87Tjn5WuemGRl63SEuFhbnyiZ4C680nkPgFAGBO', 'admin', '2024-03-07 01:38:52', '2024-03-07 01:38:52'),
(12, 'Dr. Skylar Reilly', 'considine.amalia@kreiger.com', 'rubyeryan', '8733032895', '$2y$12$REyepQeDjYeMQpZ1qBud1O8EEnj9zpzMgs9zgeP8QPhCFm3QJYHUm', 'admin', '2024-03-07 01:38:53', '2024-03-07 01:38:53'),
(13, 'Mrs. Alia Jones', 'astark@nienow.com', 'jlind', '2107024147', '$2y$12$1OyrXPtKonRbQIiiv28VrOOKPDrOPXVgZQRWwcxwMJntRVg36jy7i', 'admin', '2024-03-07 01:38:53', '2024-03-07 01:38:53'),
(14, 'Mr. Zechariah Bahringer', 'fadel.brandyn@raynor.com', 'rozella48', '2295562384', '$2y$12$lq6UNKI52La0EbX9Z8OEfefOPo7v.EpwJH9POWZfbpc7wbphT9s2i', 'admin', '2024-03-07 01:38:53', '2024-03-07 01:38:53'),
(15, 'Monroe Von', 'mayer.leif@schmeler.net', 'corwinfermin', '2239222360', '$2y$12$Q7PIiUJeHmU90rCqwDMM8e6ULt6ubxUQecL/gE1ak5mIiIYLLpSIe', 'admin', '2024-03-07 01:38:54', '2024-03-07 01:38:54'),
(16, 'Bartholome Zboncak', 'rrunolfsson@ondricka.info', 'walterannette', '9530337862', '$2y$12$7tIe06tMeROqT0TAtyIp1uu/CkztTOtq2UDOZYmpljLF63U8e9RlK', 'admin', '2024-03-07 01:38:54', '2024-03-07 01:38:54'),
(17, 'Ms. Mylene Ortiz', 'hilbert.volkman@dooley.com', 'rboehm', '8696621803', '$2y$12$oFDKA0CwXFAJn1CPPryIL.M2gMcf8Ucua20GGaxyt6Dq4waCoMUvG', 'admin', '2024-03-07 01:38:54', '2024-03-07 01:38:54'),
(18, 'Jessyca Trantow DVM', 'armani04@gmail.com', 'archibald49', '6600894081', '$2y$12$GqlHe9KAjTFBs0DjnxNHg.HTQecuW.aZXlZjAyUWPA1HNfh53h/wS', 'admin', '2024-03-07 01:38:55', '2024-03-07 01:38:55'),
(19, 'Ezra Mante', 'obeahan@hotmail.com', 'ywehner', '7152457484', '$2y$12$HtBYqcwvhORR1wGVx8mzf.6tcpENvJ59VbPCILb1Q2EM56TRWb5uy', 'admin', '2024-03-07 01:38:55', '2024-03-07 01:38:55'),
(20, 'Lizeth Padberg II', 'aylin.marquardt@hotmail.com', 'trantowressie', '2076735181', '$2y$12$SrIkiFfzK3CBfSYveyl7JudZ1OxjYmFLJmEt8r9xF5hUfVIVl3zci', 'admin', '2024-03-07 01:38:55', '2024-03-07 01:38:55'),
(21, 'Luther Langworth', 'carmen.schimmel@gmail.com', 'obechtelar', '6028923280', '$2y$12$.8vdyP63JpkeOiVvZpt8qOmsk4cm6fcTnr2.aNu.F1dTgIs24oC9G', 'admin', '2024-03-07 01:38:56', '2024-03-07 01:38:56'),
(22, 'Santina Conn', 'xjacobson@hotmail.com', 'jackjohnson', '4536436616', '$2y$12$S.DCUtwJtemq4n3ji3X4BuPYDccVEJQlgPGvDuRrtYpNncbi1PNe6', 'admin', '2024-03-07 01:38:56', '2024-03-07 01:38:56'),
(23, 'Prof. Lew Renner Jr.', 'buckridge.kareem@gmail.com', 'bergstrombrandyn', '0630517098', '$2y$12$BQqI2rW7n1ZK3JI3BKQS8OEUfG7JFdDLQSsBqDcolVpBnQN3KpU2W', 'admin', '2024-03-07 01:38:56', '2024-03-07 01:38:56'),
(24, 'Dr. Austin Wolf III', 'guy25@block.com', 'fadelbette', '2469207678', '$2y$12$uE5EQBYZv.8QW22VuXapRuTKUkkA0/hezr3YqnNdsrOS77D86uTH.', 'admin', '2024-03-07 01:38:57', '2024-03-07 01:38:57'),
(25, 'Dudley Cronin', 'garrick34@kemmer.com', 'reinhold17', '5293987746', '$2y$12$YeuVhIjmybXpxRv0CKmliuH2oRTspJx6hKyhAmmfAnlg6Pih/DMYC', 'admin', '2024-03-07 01:38:57', '2024-03-07 01:38:57'),
(26, 'Estel Dicki', 'savanna62@ortiz.org', 'ftorphy', '0462164261', '$2y$12$AwdDPLZd6uiI9C98tuuBgeCFu3oujJf4XuYlHIyGAE3UzhNKKJxFC', 'admin', '2024-03-07 01:38:57', '2024-03-07 01:38:57'),
(27, 'Dwight Hirthe Jr.', 'wiley53@gmail.com', 'ipfannerstill', '6097465566', '$2y$12$rbGHeES1iKNplA0dl.h13ey37damTJDWuWYo3W5OdYQOurmh/Q5NS', 'admin', '2024-03-07 01:38:58', '2024-03-07 01:38:58'),
(28, 'Brooklyn Reichel', 'mabelle.satterfield@dooley.com', 'kellielakin', '5675793879', '$2y$12$TgNTzWn6PGMYoTi.76r7WuZbnmAlAJTdIun/B1B3lkKqwFveJxv/u', 'admin', '2024-03-07 01:38:58', '2024-03-07 01:38:58'),
(29, 'Russell Lubowitz DVM', 'mspencer@rodriguez.org', 'ookeefe', '4749615683', '$2y$12$ggJskAxw5FoJK1qa.4tgoeW9hEOfI1GVLjDXYQnVy.uib445OEZai', 'admin', '2024-03-07 01:38:58', '2024-03-07 01:38:58'),
(30, 'Franz Nienow', 'josiane05@weimann.net', 'jacobskylie', '0468405828', '$2y$12$A5QQuflPMJYSOd/RoGoKVehnnTJmtwG0Esc6XlqbDGS.tLrd/unu6', 'admin', '2024-03-07 01:38:59', '2024-03-07 01:38:59'),
(31, 'Dwight Bergstrom DVM', 'giovanni56@robel.com', 'dandreschmidt', '8813816824', '$2y$12$69CdtyYkV/l0Le7avrPj0eBPrlTZgEj7VZapaOkeVeMIV7NjwG0Su', 'admin', '2024-03-07 01:38:59', '2024-03-07 01:38:59'),
(32, 'Ubaldo Haley', 'wisozk.niko@hotmail.com', 'angiemcglynn', '3784347504', '$2y$12$gYyX8wlAn73yOYz2J7tSjeg0zS9wUdq5fT4AsdgeKgjglYuuxCbFe', 'admin', '2024-03-07 01:38:59', '2024-03-07 01:38:59'),
(33, 'Delbert Weissnat', 'rhett.weber@hotmail.com', 'tabithanader', '4400641074', '$2y$12$7EgRWF4lGDqbSL6xlZAtHeIdk8aBmx96HHQtYvstYpFT9sx6OP836', 'admin', '2024-03-07 01:38:59', '2024-03-07 01:38:59'),
(34, 'Lavern Gutkowski MD', 'wondricka@cormier.com', 'mitchellalexandra', '3468172567', '$2y$12$/GUVI9fFuB6c/GOs694Sy.TBt09MOoZ1DsUM7RP2N.dPyLpa2u5vC', 'admin', '2024-03-07 01:39:00', '2024-03-07 01:39:00'),
(35, 'Prof. Bennie Johnston', 'eddie.pacocha@gmail.com', 'ocievolkman', '1082451626', '$2y$12$Ms/qifmXW97VRo4G66FuOuGGrhQhhSJjU8sYLHHpTVz3vnIZjTxzO', 'admin', '2024-03-07 01:39:00', '2024-03-07 01:39:00'),
(36, 'Mr. Lane Ruecker', 'stephon.stiedemann@williamson.com', 'koeppmozell', '0499562800', '$2y$12$Bb/l8PxW64/4Qkdoa9UttuXQI23oAB/krfXUKnVS69B1ng0GXtnui', 'admin', '2024-03-07 01:39:00', '2024-03-07 01:39:00'),
(37, 'Dr. Ambrose Murray', 'hoppe.helene@hotmail.com', 'laurynspencer', '3708986901', '$2y$12$yqXAldxmXinq.FaXk2u2c.zHHnXjnQVDcPlcNgnRDqX5ONb03AL.G', 'admin', '2024-03-07 01:39:01', '2024-03-07 01:39:01'),
(38, 'Jimmy Keeling DDS', 'mercedes.gutkowski@yahoo.com', 'kfarrell', '7673124952', '$2y$12$bGg2MQMOomUnMlES003p4.OEMCONc.QJH/ccNoGAmfpxf9KAsZ6Mi', 'admin', '2024-03-07 01:39:01', '2024-03-07 01:39:01'),
(39, 'Koby Rowe', 'waelchi.roosevelt@beer.com', 'pkris', '3498815233', '$2y$12$fjLABHHuKPsgV.QTDM.fWuCgfmmNMmrx8Sb7H4ysb7ZxvTXNfPOQy', 'admin', '2024-03-07 01:39:01', '2024-03-07 01:39:01'),
(40, 'Jarod Bashirian', 'katlyn27@marks.com', 'davisjodie', '1144723220', '$2y$12$PNzRZ/rdk8SLT27JSZudwe6BFuRyGAmdJah7Wv.oQDtJDUBciFr9a', 'admin', '2024-03-07 01:39:02', '2024-03-07 01:39:02'),
(41, 'Dr. Trystan Hodkiewicz III', 'wyatt.ortiz@fay.com', 'champlincatalina', '4164020797', '$2y$12$FDU1HlfYBo6R8ba2kIMFAOS3fq9s0G.27M958vJp0WO7ZO69SImi6', 'admin', '2024-03-07 01:39:02', '2024-03-07 01:39:02'),
(42, 'Breana Walker', 'ujakubowski@kuhic.biz', 'waldohalvorson', '1893208539', '$2y$12$H4utRzCw2bjZKtQncn/QY.O8epUGOp1KJ4J7cBqLcVR6FIFP43W2W', 'admin', '2024-03-07 01:39:02', '2024-03-07 01:39:02'),
(43, 'Miss Margret Dach', 'chelsea39@sauer.com', 'nicolaselian', '7389438594', '$2y$12$My1OVM8k./2hWamB4y9fme7zdXxivI7QvMb0iDHFXzUKYAJ//EaYi', 'admin', '2024-03-07 01:39:02', '2024-03-07 01:39:02'),
(44, 'Drake Luettgen', 'rtorphy@johnson.com', 'daltonhickle', '7981832945', '$2y$12$jzBVSUpcRUGeD3awf6lF6ue510/g9qg46OW2Z6gfKgAYFb3PVx4eW', 'admin', '2024-03-07 01:39:03', '2024-03-07 01:39:03'),
(45, 'Mrs. Flavie O\'Conner', 'arvel.greenfelder@yahoo.com', 'kochruss', '5524979662', '$2y$12$s6iesbsfd.O8932aTS.2ZesgX276v7fiu3HtnpHy9eyWjPFBLEqm6', 'admin', '2024-03-07 01:39:03', '2024-03-07 01:39:03'),
(46, 'Enid Trantow IV', 'isidro15@hills.org', 'loy45', '4188991324', '$2y$12$lUM.aw3kBADDk5SUGNFx2O.Xp7Ly2KkcvtVBQsDsX.s3inCiW1Fc.', 'admin', '2024-03-07 01:39:03', '2024-03-07 01:39:03'),
(47, 'Tracy Schaden', 'cameron.pagac@gmail.com', 'ellenmertz', '0914220494', '$2y$12$2ioyBCoP9ySkeQNG55Js4ObioJ4QU.cv3/nAnFEnJ/1BtpP/C0yJi', 'admin', '2024-03-07 01:39:04', '2024-03-07 01:39:04'),
(48, 'Kayleigh Willms', 'iohara@vonrueden.com', 'manuelhickle', '4263236935', '$2y$12$dqtfi8/qrLLYgTqpsUl2s.3hcDHfdM/O.TIfQfmsl0JTYUiRBlDe6', 'admin', '2024-03-07 01:39:04', '2024-03-07 01:39:04'),
(49, 'Miss Janie Veum', 'ualtenwerth@gmail.com', 'dachlayne', '3481095135', '$2y$12$MW3imGhH2R23FHS3aXiw8e1MV8V4XMZZOANPQEJJLkV755CILH13O', 'admin', '2024-03-07 01:39:04', '2024-03-07 01:39:04'),
(50, 'Treva O\'Conner', 'bblanda@kirlin.com', 'thintz', '0011914170', '$2y$12$eIpdcC3fk.ivfe/6dxny..Gr7slmBNMkW1UuzEIgCaQJnafPmv4vu', 'admin', '2024-03-07 01:39:04', '2024-03-07 01:39:04'),
(51, 'Aurore Pouros', 'chris54@kemmer.info', 'parkerrosie', '8370887257', '$2y$12$1f6X2bCB1bFKP4//B.HOcOlCMi/lmUAbI6YPDmZ7UBHc3BasIXu0e', 'admin', '2024-03-07 01:39:05', '2024-03-07 01:39:05'),
(52, 'Ellen Murazik', 'evalyn09@yahoo.com', 'raheem23', '7886169909', '$2y$12$KgSDjzqPPF.0ror4vgG01e/1Qz/4mwn9CWGk/6nhno4ComfCsbJD2', 'admin', '2024-03-07 01:39:05', '2024-03-07 01:39:05'),
(53, 'Prof. Rocio Romaguera', 'ritchie.ariane@huels.org', 'lunabode', '7212616104', '$2y$12$4fKyNOThICNTOi9wkdSdwuOxW5ciUKt3Y1GNDNJGbi3kmWRHFjeqK', 'admin', '2024-03-07 01:39:05', '2024-03-07 01:39:05'),
(54, 'Norberto Jacobs', 'lamont76@kris.com', 'kyle11', '4352610772', '$2y$12$wyKX6eWui.KEIita1DN/ruGnsE/4ZbUBPyIYM6VDlJgWb2RN4OrQ2', 'admin', '2024-03-07 01:39:06', '2024-03-07 01:39:06'),
(55, 'Hassie Murphy', 'carole.luettgen@ratke.net', 'condricka', '0457804045', '$2y$12$Q9K42vB5iumxNczMrSy8lePC19gWjfqqRZ4acO1ersnAeLmexx0bO', 'admin', '2024-03-07 01:39:06', '2024-03-07 01:39:06'),
(56, 'Alfred Koss', 'aprice@hotmail.com', 'toydane', '0652018349', '$2y$12$PmxNaZ8fTkBf7Gg53N4bM.dHhb6lExdH1hqAuuZAKFBVclj3vyhC.', 'admin', '2024-03-07 01:39:06', '2024-03-07 01:39:06'),
(57, 'Edmond Lakin', 'felipa.raynor@gmail.com', 'tysonspinka', '1835683201', '$2y$12$acoBqmxo9y3NGI3yHP6EIu8QJSZiMEF0VK6n/iNrs8evU0Z.2FgrG', 'admin', '2024-03-07 01:39:07', '2024-03-07 01:39:07'),
(58, 'Miss Mariana Bednar', 'fheidenreich@yahoo.com', 'uveum', '3259313874', '$2y$12$cwB3UyXbHbvZ5GXP5ysTruC2xfQ7IpGPvKtsH1vxVpFjY1OmtbR1y', 'admin', '2024-03-07 01:39:07', '2024-03-07 01:39:07'),
(59, 'Keegan Kassulke', 'rico46@gmail.com', 'zulaufjazmin', '4393066963', '$2y$12$XsfvjbaC1D7tNNOoBL7EvOUPpD6Hz7QZWElD/AW9y5wiIUvUSP84S', 'admin', '2024-03-07 01:39:07', '2024-03-07 01:39:07'),
(60, 'Junius Sporer DDS', 'josh.vonrueden@feest.com', 'jarrett53', '8591189321', '$2y$12$VW0bhS8qb5o7sTjtuy/SouZDQh8myXzBLDWR3Fyw.Tm6dKR8fdYqe', 'admin', '2024-03-07 01:39:07', '2024-03-07 01:39:07'),
(61, 'Mr. Jettie Zieme', 'edison.fahey@watsica.com', 'vella17', '1878186659', '$2y$12$klkMv97u9quP/QMkOCedTetiYU3ZZHAR1nmTw2Xtb7iJZQAEkTnli', 'admin', '2024-03-07 01:39:08', '2024-03-07 01:39:08'),
(62, 'Kendrick Tromp MD', 'kshlerin.hosea@yahoo.com', 'dmcdermott', '1618524804', '$2y$12$/yS8rkkp4SNYkptQrHe9U.m0qH416AGv89IzNlDZ.Z6XOQtvfO3x.', 'admin', '2024-03-07 01:39:08', '2024-03-07 01:39:08'),
(63, 'Annette O\'Connell', 'chesley.stokes@carroll.com', 'ykeebler', '7318712469', '$2y$12$6mAFsDvVw1Lxa33u9C.cluCRsqQGQXDcwupJSJ39JJstwXKqHxolG', 'admin', '2024-03-07 01:39:08', '2024-03-07 01:39:08'),
(64, 'Mrs. Flossie Bergstrom', 'schuster.nicholas@thiel.com', 'zulaufname', '3941432435', '$2y$12$k/UWV9PE9Jf1iShGkLt/MOuVx1YOI3kta6M69Q2j7wO4AFZy9/vj.', 'admin', '2024-03-07 01:39:09', '2024-03-07 01:39:09'),
(65, 'Irving Boyle', 'magnus.hermann@larkin.com', 'eliseodaugherty', '9077338677', '$2y$12$MAWH7ID9SlDpWlW1SulMX.f7E/Q0iX5jSqIVFRPNLHAVdQAQMU9pq', 'admin', '2024-03-07 01:39:09', '2024-03-07 01:39:09'),
(66, 'Prof. Isabel Lakin IV', 'jazmyn39@kozey.com', 'tomasa17', '9344955293', '$2y$12$lr7Yt7G3KtCLHw2GNUlmbe4dTbq8bqqzAM7grehBb6Xr3jq/UTgiy', 'admin', '2024-03-07 01:39:09', '2024-03-07 01:39:09'),
(67, 'Hal Wisozk', 'ibotsford@hotmail.com', 'hackettbrayan', '7027509641', '$2y$12$jvJs85cpF8QpIK5ayWZPrOLuYuC1nnKfmuizf.tysWvQcOdH1Pp4u', 'admin', '2024-03-07 01:39:09', '2024-03-07 01:39:09'),
(68, 'Judson Cassin', 'allie85@hotmail.com', 'wilbermckenzie', '8522040960', '$2y$12$ybTHcP9x3bJfEpTA3OXvfOATjqq4djaJH4MUAOxq3ASM7cFWTibxi', 'admin', '2024-03-07 01:39:10', '2024-03-07 01:39:10'),
(69, 'Juliet Medhurst', 'emmalee04@gmail.com', 'auernathanial', '5804486252', '$2y$12$76clP54SG8y4Uj2QLAuoy.DAae6xM/vGv5zduVwF0HOAf74vLwy/6', 'admin', '2024-03-07 01:39:10', '2024-03-07 01:39:10'),
(70, 'Marlen Murphy', 'terry.darby@hotmail.com', 'spowlowski', '5375405971', '$2y$12$JOfBmtrk31OXPi/y.WLONedxIsr8jukeHbW7IYBnHGX4It.aiF5j2', 'admin', '2024-03-07 01:39:10', '2024-03-07 01:39:10'),
(71, 'Dr. Milo Schoen', 'abalistreri@gmail.com', 'uswift', '1101736156', '$2y$12$gsG8KnIZzVQ3Jv5kW.asHuIFryqk/8JK8Uuo9iFGgSyzBS62cQ1X6', 'admin', '2024-03-07 01:39:11', '2024-03-07 01:39:11'),
(72, 'Samara Prosacco', 'chanel93@gmail.com', 'ferrymattie', '0123271847', '$2y$12$jo81V68WEHx0mKZg.X/dYe5T2bbUXGQrjV5LFCgIcA/JIf4RPorie', 'admin', '2024-03-07 01:39:11', '2024-03-07 01:39:11'),
(73, 'Molly Pagac', 'gwitting@hotmail.com', 'uanderson', '5357532275', '$2y$12$wKp2SNaZiXD8Zabfprg92OF7m0HN9TznODAqXFBnWEnFN9FBdbvW2', 'admin', '2024-03-07 01:39:11', '2024-03-07 01:39:11'),
(74, 'Gaylord Rice', 'asha.harvey@yahoo.com', 'ghauck', '3286047903', '$2y$12$0b.iYHG5XT4jIo6/1cFpseF8d2ahED5y5/12RohzbSf0lgl7tDmrS', 'admin', '2024-03-07 01:39:12', '2024-03-07 01:39:12'),
(75, 'Sheridan Schimmel DVM', 'wintheiser.jacky@oconnell.org', 'jamie21', '0256809006', '$2y$12$mTJAmMoilO1Fxe8OnN9RZOnw7P7TdzHJVI05hKhvM.XQeqC2NY28O', 'admin', '2024-03-07 01:39:12', '2024-03-07 01:39:12'),
(76, 'Ardith Dibbert', 'madeline34@skiles.biz', 'lyric21', '1862578388', '$2y$12$KTaW7QCJap/TULjxtSTveef9p9nCO9sriL5YUtXpHea3n79gm.pPa', 'admin', '2024-03-07 01:39:12', '2024-03-07 01:39:12'),
(77, 'Trevor Grant', 'rdicki@howell.com', 'ziemedusty', '6156162568', '$2y$12$v7z4kJSVGCOOzksbxc0EGub3YT1QDh8j2jftoogOw.tNxWn0/noNe', 'admin', '2024-03-07 01:39:12', '2024-03-07 01:39:12'),
(78, 'Mrs. Misty Armstrong', 'west.ernie@kilback.com', 'alejandra90', '2579304444', '$2y$12$mzRYpAt0e9Ab5kosLZsoD.cNWOjvQN/FX1KoXV4J0Rbg4XZQYEaxa', 'admin', '2024-03-07 01:39:13', '2024-03-07 01:39:13'),
(79, 'Jessie Waters', 'bailey.sister@gmail.com', 'frau', '4210463091', '$2y$12$4PxCevdHHs1.lzzHmeYxk.IKgs9Azx8QGICmejqsYKe.8lW8WjMUS', 'admin', '2024-03-07 01:39:13', '2024-03-07 01:39:13'),
(80, 'Prof. Larue Beahan', 'schmidt.joanny@yahoo.com', 'lilianmurray', '4188041985', '$2y$12$Cs6MUubezjChww219ZG8lOns6Jh/Ek9Z3VPyjdUni9frwox7Cc6Ei', 'admin', '2024-03-07 01:39:13', '2024-03-07 01:39:13'),
(81, 'Lucile Shields', 'schulist.cristina@hotmail.com', 'jenniferhegmann', '0244916481', '$2y$12$D2VhkJgVFnktC9AQz7yReuvXa6VhYnOz1Wj/he50rL3zvrhK0Sajy', 'admin', '2024-03-07 01:39:14', '2024-03-07 01:39:14'),
(82, 'Leda Nienow DVM', 'nbeier@gmail.com', 'lueilwitzleonora', '3604022564', '$2y$12$yyLLAk3ea481r11femSy1ufaENC7UkCAnRbdRldFjHKVcj82oYK.q', 'admin', '2024-03-07 01:39:14', '2024-03-07 01:39:14'),
(83, 'Santino Padberg', 'alva.nitzsche@hotmail.com', 'sbashirian', '4386957943', '$2y$12$z4QGrJbykG/DrxZwV8cL8.BQH.6ysZhAwP5al1o.tLG/HuN81GoHO', 'admin', '2024-03-07 01:39:14', '2024-03-07 01:39:14'),
(84, 'Dr. Garry Hoeger II', 'xkovacek@runolfsson.com', 'nikki87', '5486964955', '$2y$12$fjeapfqRpgdzf.weWkXN0eT0aGnFdUpCTcKY9thhmOy7VzJbCO8WW', 'admin', '2024-03-07 01:39:14', '2024-03-07 01:39:14'),
(85, 'Mr. Johnathon Rodriguez', 'lowe.amina@cummerata.com', 'johann51', '0999167339', '$2y$12$ZHDbnkC5TBuOiyaA2Glfd.kC7S7KjylMTrRmBIYXIKL9sNBPe5Ba2', 'admin', '2024-03-07 01:39:15', '2024-03-07 01:39:15'),
(86, 'Mose Trantow Sr.', 'jabari09@hahn.org', 'brain34', '1960218395', '$2y$12$2.kydSABh8ryuTYa0Px7HukYCa8AnjSzeLNUi.Q6mIspJ6pimhSFi', 'admin', '2024-03-07 01:39:15', '2024-03-07 01:39:15'),
(87, 'Dr. Mohamed Dooley', 'seamus.nikolaus@yahoo.com', 'crystal71', '7647159055', '$2y$12$XirvrP5NGclEKCSLtdgbQOp8btkEKuPswdS0Gi4uq26SagS7GhnaK', 'admin', '2024-03-07 01:39:15', '2024-03-07 01:39:15'),
(88, 'Americo Wilderman', 'dennis92@heidenreich.com', 'gkilback', '1703322185', '$2y$12$2UPe82XP9NlrwllmJ4L7dO1vmNgibxd2V8Q.0KM71bowujOwkgTvi', 'admin', '2024-03-07 01:39:16', '2024-03-07 01:39:16'),
(89, 'Arthur Monahan I', 'uschinner@turcotte.com', 'roweedwardo', '2071356841', '$2y$12$Yvx.eL/HvPYb5HQaTD4tQed.PL9pEkqrc8spL/9EflgRX3GQTtf5u', 'admin', '2024-03-07 01:39:16', '2024-03-07 01:39:16'),
(90, 'Sterling Dicki', 'cynthia.bogan@yahoo.com', 'dziemann', '5953238579', '$2y$12$cU/ah4iQcLR6Zz/esuhmv.4IF/N1j7J14jwIyITdBDdECAA.iYaqa', 'admin', '2024-03-07 01:39:16', '2024-03-07 01:39:16'),
(91, 'Vena Bradtke', 'plang@yahoo.com', 'boris59', '4681522935', '$2y$12$iwUpx1KagJpxVxaMpXMH/.CxVU14LTn4WGheoTjUBd4T5.AXYELnG', 'admin', '2024-03-07 01:39:17', '2024-03-07 01:39:17'),
(92, 'Juwan Collier Sr.', 'oren16@gmail.com', 'hollie50', '1143051848', '$2y$12$I6ZipGVniY0nyiAmzY2dB.OpGJ3Yyh2qOS7GS6Pev50fNJHqX/YxC', 'admin', '2024-03-07 01:39:17', '2024-03-07 01:39:17'),
(93, 'Kathleen Welch', 'mabelle37@mante.org', 'vwilderman', '0939682954', '$2y$12$Qs94hU1lifoF46hStekck.51YWAdBuM1Z8uULVlTsqTzmb9jzD1ou', 'admin', '2024-03-07 01:39:17', '2024-03-07 01:39:17'),
(94, 'Elnora Parisian', 'celestino85@klocko.com', 'raphaelle31', '0791862772', '$2y$12$zvtBVZidlt5/v3WEVE9WXuh/z/szl4sKei.0S1kRfjNpDwiSJ27Ze', 'admin', '2024-03-07 01:39:18', '2024-03-07 01:39:18'),
(95, 'Elnora Brown', 'gcole@hotmail.com', 'mariamweber', '1748788319', '$2y$12$BVLGyMJ5THCv.KM58o7uQ.fbuVwGkdljuL/f98krsA7yxqMe/CtVC', 'admin', '2024-03-07 01:39:18', '2024-03-07 01:39:18'),
(96, 'Devan Mertz', 'alivia.balistreri@gmail.com', 'kiehnmarcia', '5025680576', '$2y$12$xc8jw0l6MvuXz31qFg.GKeL22qifwhLIN32b0ycB7EB8JD0/yq40C', 'admin', '2024-03-07 01:39:18', '2024-03-07 01:39:18'),
(97, 'Mr. Albin Stracke DVM', 'clay.schuppe@kohler.com', 'baumbachhazel', '2208280533', '$2y$12$uckOeX9KLhv2/zPIZdaujOW7ia71Rd1alYFNlHC4y8qNk4MwwZMYO', 'admin', '2024-03-07 01:39:19', '2024-03-07 01:39:19'),
(98, 'Heloise Kovacek Sr.', 'pagac.claire@mohr.com', 'hendersoncrona', '0337975718', '$2y$12$bwLELkR/T59QBAIKFMCACOy7Wv9GJ7akgXKTq9XHGIP3q3XiOUF.u', 'admin', '2024-03-07 01:39:19', '2024-03-07 01:39:19'),
(99, 'Miss Oceane Schmidt III', 'dkuvalis@roberts.info', 'dhamill', '7512812442', '$2y$12$j9qvTcjS9YGsEdXVmLF7mePyEvfQjJCwoaCUV9WDwNt6p2V6wV5pi', 'admin', '2024-03-07 01:39:19', '2024-03-07 01:39:19'),
(100, 'Ms. Janice Kutch II', 'erna55@kihn.com', 'shany43', '6149010180', '$2y$12$q8ISvCD4b7kLrEH77vvGPeeILMG7gutnmA0gmtL.6v2DV1UzlI1We', 'admin', '2024-03-07 01:39:20', '2024-03-07 01:39:20'),
(101, 'Max Keebler', 'xbernier@gmail.com', 'rlabadie', '0504291107', '$2y$12$LUbyCFraQ4dkGVqKwH8R6ef8sAuH4es5cOuFmTtVKopc8Mle/1mlu', 'admin', '2024-03-07 01:39:20', '2024-03-07 01:39:20'),
(102, 'user', NULL, 'user@345', NULL, '$2y$12$lUqG7WWCNDvTzAuf.bj3NeYDT3/3.FkUNm0DyvIP2wGY.gLe3zODC', 'admin', '2024-03-07 02:00:11', '2024-03-07 02:00:11'),
(103, 'user', NULL, 'user@379', NULL, NULL, 'admin', '2024-03-07 02:01:07', '2024-03-07 02:04:43'),
(105, 'user', NULL, 'user@567', NULL, '$2y$12$o/mo6H0RRFuY9lI1VSLOLeGIrbSPLMOq.ioJML/gGwHCMwTwCOI2.', 'admin', '2024-03-07 02:29:45', '2024-03-07 02:37:45');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

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
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_userid_unique` (`userid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
