-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Jul 13, 2021 at 12:42 PM
-- Server version: 5.7.32
-- PHP Version: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `martfury`
--

-- --------------------------------------------------------

--
-- Table structure for table `activations`
--

CREATE TABLE `activations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `code` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT '0',
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `activations`
--

INSERT INTO `activations` (`id`, `user_id`, `code`, `completed`, `completed_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'kC6PW9OE8Lpd6i43hDBYaGxy4puS7G78', 1, '2021-07-12 22:41:42', '2021-07-12 22:41:42', '2021-07-12 22:41:42');

-- --------------------------------------------------------

--
-- Table structure for table `ads`
--

CREATE TABLE `ads` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expired_at` datetime DEFAULT NULL,
  `location` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `clicked` bigint(20) NOT NULL DEFAULT '0',
  `order` int(11) DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ads`
--

INSERT INTO `ads` (`id`, `name`, `expired_at`, `location`, `key`, `image`, `url`, `clicked`, `order`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Top Slider Image 1', '2026-07-13 00:00:00', 'top-slider-image-1', 'U9BAKASNZCVB', 'promotion/1.jpg', '/products', 0, 1, 'published', '2021-07-12 22:41:42', '2021-07-12 22:41:42'),
(2, 'Top Slider Image 2', '2026-07-13 00:00:00', 'top-slider-image-2', '1PDEUTRIHJ8T', 'promotion/2.jpg', '/products', 0, 2, 'published', '2021-07-12 22:41:42', '2021-07-12 22:41:42'),
(3, 'Homepage middle 1', '2026-07-13 00:00:00', 'not_set', 'IZ6WU8KUALYD', 'promotion/3.jpg', '/products', 0, 3, 'published', '2021-07-12 22:41:42', '2021-07-12 22:41:42'),
(4, 'Homepage middle 2', '2026-07-13 00:00:00', 'not_set', 'ILSFJVYFGCPZ', 'promotion/4.jpg', '/products', 0, 4, 'published', '2021-07-12 22:41:42', '2021-07-12 22:41:42'),
(5, 'Homepage middle 3', '2026-07-13 00:00:00', 'not_set', 'ZDOZUZZIU7FT', 'promotion/5.jpg', '/products', 0, 5, 'published', '2021-07-12 22:41:42', '2021-07-12 22:41:42'),
(6, 'Homepage bottom big', '2026-07-13 00:00:00', 'not_set', 'Q9YDUIC9HSWS', 'promotion/6.jpg', '/products', 0, 6, 'published', '2021-07-12 22:41:42', '2021-07-12 22:41:42'),
(7, 'Homepage bottom small', '2026-07-13 00:00:00', 'not_set', 'B4WKSDPO3OMR', 'promotion/7.jpg', '/products', 0, 7, 'published', '2021-07-12 22:41:42', '2021-07-12 22:41:42'),
(8, 'Product sidebar', '2026-07-13 00:00:00', 'product-sidebar', '3WSFZWZ3WGF4', 'promotion/8.jpg', '/products', 0, 8, 'published', '2021-07-12 22:41:42', '2021-07-12 22:41:42');

-- --------------------------------------------------------

--
-- Table structure for table `audit_histories`
--

CREATE TABLE `audit_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `module` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `request` text COLLATE utf8mb4_unicode_ci,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `ip_address` varchar(39) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_user` int(10) UNSIGNED NOT NULL,
  `reference_id` int(10) UNSIGNED NOT NULL,
  `reference_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` int(11) NOT NULL,
  `author_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `icon` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint(4) NOT NULL DEFAULT '0',
  `is_featured` tinyint(4) NOT NULL DEFAULT '0',
  `is_default` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `parent_id`, `description`, `status`, `author_id`, `author_type`, `icon`, `order`, `is_featured`, `is_default`, `created_at`, `updated_at`) VALUES
(1, 'Ecommerce', 0, NULL, 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 0, 1, '2021-07-12 22:41:40', '2021-07-12 22:41:40'),
(2, 'Fashion', 0, NULL, 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 0, 0, '2021-07-12 22:41:40', '2021-07-12 22:41:40'),
(3, 'Electronic', 0, NULL, 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 0, 0, '2021-07-12 22:41:40', '2021-07-12 22:41:40'),
(4, 'Commercial', 0, NULL, 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 0, 0, '2021-07-12 22:41:40', '2021-07-12 22:41:40');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unread',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `phone`, `address`, `subject`, `content`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Mr. Otis Johnson DDS', 'maximillian30@example.com', '+1-518-212-7384', '246 Beatty Spur Suite 529\nEmardstad, NJ 95073-4083', 'Molestiae ut autem eos est.', 'Aut officiis minus neque dolore eum temporibus doloribus. Molestias voluptatem voluptatem nemo est nobis pariatur quia doloribus. Dolores tempore sed sint fuga. Optio qui tempore cum. Velit consequuntur occaecati molestias sed qui vel placeat. Nostrum eius voluptatem aut facere eos sint est. Nobis assumenda excepturi temporibus est ullam. Molestiae suscipit corrupti dolores sit numquam earum porro deleniti.', 'unread', '2021-07-12 22:41:36', '2021-07-12 22:41:36'),
(2, 'Jaleel Johnson', 'rebeka.veum@example.net', '606.568.6662', '1870 Rowe Key\nWatsicastad, PA 84205', 'Porro accusamus deleniti ad porro.', 'Autem suscipit maxime molestiae voluptas voluptatem veniam voluptas. Omnis hic iure illo cum alias consequatur. Vel quia rerum distinctio nisi. Qui et molestiae nesciunt molestias quia error dignissimos. Ipsum voluptates aut doloribus possimus possimus molestiae temporibus quos. Recusandae sit ex et aut ut. Totam placeat voluptatem soluta ducimus repellendus voluptate et. Voluptatem dolorem eaque hic consequatur ducimus nisi adipisci dolor.', 'read', '2021-07-12 22:41:36', '2021-07-12 22:41:36'),
(3, 'Vernon Bayer', 'hegmann.jayne@example.org', '484-756-5575', '265 Will Inlet\nVonRuedenborough, ND 64162', 'Et aut modi optio consequatur ut beatae sunt.', 'Similique ea rerum ipsum hic beatae dolor saepe. Asperiores eos aut aut adipisci explicabo tenetur qui voluptas. Nam rem porro quae voluptatem quaerat dolore. Molestiae ratione aut voluptatem autem et quam tempora. Incidunt deleniti quam quis qui cum optio. Alias est ut aut debitis. Vel dolores laboriosam possimus et. Accusamus vitae dolores repudiandae libero debitis. Consequatur deleniti facilis et praesentium magni.', 'unread', '2021-07-12 22:41:36', '2021-07-12 22:41:36'),
(4, 'Ora Lind', 'mathilde.spinka@example.com', '(612) 539-3173', '85968 Chris Mission Suite 878\nAxelstad, TX 21693-7280', 'Vel molestiae perspiciatis quia consequatur.', 'Qui quasi voluptatibus sint omnis. Eaque aut recusandae enim veritatis corrupti. Aliquid omnis quia eius neque ipsam. Ut explicabo nostrum dicta sed omnis laudantium. Dolores voluptatem occaecati temporibus ut quasi magnam ea. Id esse et quis similique. Pariatur soluta enim omnis debitis sunt.', 'unread', '2021-07-12 22:41:36', '2021-07-12 22:41:36'),
(5, 'Mrs. Sonya Wilderman III', 'mitchel77@example.com', '1-915-818-6619', '69173 Cordell Locks\nColestad, VT 23355', 'Dolores et ut dolorem ut ducimus.', 'Fugiat ullam ut error autem iste possimus dolor. Consequuntur reprehenderit enim in et sint autem. Fuga inventore porro sed rerum mollitia. Earum voluptates adipisci voluptatem nobis. Totam et molestias voluptas fugit ut. Odit ex sequi consequuntur aliquid sint autem dolor nesciunt. Aliquid magnam commodi aut perspiciatis quia autem officia. Consequatur exercitationem quasi molestias est et. Sint molestias eveniet et est voluptatem qui a. Laudantium illum consequatur quam quo velit recusandae.', 'read', '2021-07-12 22:41:36', '2021-07-12 22:41:36'),
(6, 'Ally Volkman Jr.', 'cordelia.bartoletti@example.net', '640.849.0934', '2275 Heaney Fords\nEast Kaitlin, NJ 80032', 'Consequatur recusandae aut sit odit ut.', 'Labore cumque at voluptatibus omnis. Exercitationem magni minus voluptatem nulla magnam dolorem quam. Sapiente provident quasi ut maxime ut est et et. Voluptatem error in recusandae eaque accusamus laboriosam. Fugit et dolor laudantium assumenda sunt. Debitis est qui quo enim neque illo. Ut et molestiae rerum voluptatibus in. At odio qui tempore laboriosam. Est quos officiis incidunt veritatis animi est est.', 'read', '2021-07-12 22:41:36', '2021-07-12 22:41:36'),
(7, 'Sonya Haley', 'norma76@example.net', '628-902-8864', '6683 Hirthe Locks Apt. 339\nWest Kaciehaven, KY 60976', 'Voluptatibus sequi maiores aut deserunt illo.', 'Excepturi voluptatem culpa sed perferendis explicabo quidem. Laboriosam qui maxime in minus quis non. Dolorum sint modi nostrum fugit aut qui. Doloremque ea officia cupiditate perspiciatis rerum molestiae laudantium. Adipisci temporibus quo soluta qui voluptatem. Est mollitia repellendus omnis facilis rem est et. Occaecati eligendi reiciendis rem animi.', 'read', '2021-07-12 22:41:36', '2021-07-12 22:41:36'),
(8, 'Emerson Turner', 'arnoldo.hills@example.com', '+1.307.982.3961', '257 Kathryn Village Suite 158\nNew Mozell, ND 77124', 'Eum repellat doloribus et minus.', 'Provident dignissimos unde ducimus qui. Ad molestiae voluptas nihil qui. Iusto sed nesciunt ut nesciunt repudiandae. Blanditiis iusto inventore est nostrum aut voluptatem quo. Nihil omnis autem occaecati illo eum suscipit ut. Consequatur dolorem quam ratione quo sunt eius et. Delectus excepturi id repellat qui. Et sint non et sapiente natus. Id qui quos aut minus eum. Veritatis culpa ea nemo fugiat magnam tempore. Et corrupti aliquid provident minima eos qui velit ut.', 'read', '2021-07-12 22:41:36', '2021-07-12 22:41:36'),
(9, 'Ms. Arielle Frami', 'mkunde@example.com', '1-252-256-5091', '76583 Hackett Walks\nPort Antonia, RI 15925-7306', 'Et nihil et ut sunt omnis.', 'Odio dolorum beatae placeat in. Nihil quo et sunt excepturi consectetur dolorum. Assumenda odit itaque nam ut enim. Qui et est totam repudiandae nam est magni. Quis placeat itaque dicta alias. Atque minima porro magni est reprehenderit officiis tenetur. Porro deleniti aut et eos. Quasi provident est cumque voluptates nulla maiores totam. Possimus consequatur at consequatur amet totam quaerat. Distinctio est deserunt dolores et eos debitis sint. Quaerat rerum soluta natus natus officia quas.', 'unread', '2021-07-12 22:41:36', '2021-07-12 22:41:36'),
(10, 'Elnora Hirthe', 'kristy.satterfield@example.net', '1-551-884-6974', '518 Dibbert Island\nEast Hadley, NM 77748-0519', 'Eum dolore voluptas ducimus quia.', 'Saepe quis occaecati non quia inventore. Non dolores qui ea sunt animi sequi sunt. In voluptatem voluptas perspiciatis hic laborum voluptate. Rem distinctio tenetur aut odio sint reiciendis porro. Voluptatem ut sit expedita repudiandae earum voluptatem eum. Dolor vero quo ipsum beatae aut. Repellat placeat et esse sit quod. Assumenda in qui numquam saepe. Est ratione veniam dolorem voluptatem ea neque suscipit.', 'read', '2021-07-12 22:41:36', '2021-07-12 22:41:36');

-- --------------------------------------------------------

--
-- Table structure for table `contact_replies`
--

CREATE TABLE `contact_replies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dashboard_widgets`
--

CREATE TABLE `dashboard_widgets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dashboard_widget_settings`
--

CREATE TABLE `dashboard_widget_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `user_id` int(10) UNSIGNED NOT NULL,
  `widget_id` int(10) UNSIGNED NOT NULL,
  `order` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_brands`
--

CREATE TABLE `ec_brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `is_featured` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_brands`
--

INSERT INTO `ec_brands` (`id`, `name`, `description`, `website`, `logo`, `status`, `order`, `is_featured`, `created_at`, `updated_at`) VALUES
(1, 'Fashion live', NULL, NULL, 'brands/1.jpg', 'published', 0, 1, '2021-07-12 22:41:11', '2021-07-12 22:41:11'),
(2, 'Hand crafted', NULL, NULL, 'brands/2.jpg', 'published', 1, 1, '2021-07-12 22:41:11', '2021-07-12 22:41:11'),
(3, 'Mestonix', NULL, NULL, 'brands/3.jpg', 'published', 2, 1, '2021-07-12 22:41:11', '2021-07-12 22:41:11'),
(4, 'Sunshine', NULL, NULL, 'brands/4.jpg', 'published', 3, 1, '2021-07-12 22:41:11', '2021-07-12 22:41:11'),
(5, 'Pure', NULL, NULL, 'brands/5.jpg', 'published', 4, 1, '2021-07-12 22:41:11', '2021-07-12 22:41:11'),
(6, 'Anfold', NULL, NULL, 'brands/6.jpg', 'published', 5, 1, '2021-07-12 22:41:11', '2021-07-12 22:41:11'),
(7, 'Automotive', NULL, NULL, 'brands/7.jpg', 'published', 6, 1, '2021-07-12 22:41:11', '2021-07-12 22:41:11');

-- --------------------------------------------------------

--
-- Table structure for table `ec_cart`
--

CREATE TABLE `ec_cart` (
  `identifier` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instance` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_currencies`
--

CREATE TABLE `ec_currencies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `symbol` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_prefix_symbol` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `decimals` tinyint(3) UNSIGNED DEFAULT '0',
  `order` int(10) UNSIGNED DEFAULT '0',
  `is_default` tinyint(4) NOT NULL DEFAULT '0',
  `exchange_rate` double NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_currencies`
--

INSERT INTO `ec_currencies` (`id`, `title`, `symbol`, `is_prefix_symbol`, `decimals`, `order`, `is_default`, `exchange_rate`, `created_at`, `updated_at`) VALUES
(1, 'USD', '$', 1, 2, 0, 1, 1, '2021-07-12 22:41:11', '2021-07-12 22:41:11'),
(2, 'EUR', '€', 0, 2, 1, 0, 0.84, '2021-07-12 22:41:11', '2021-07-12 22:41:11'),
(3, 'VND', '₫', 0, 0, 2, 0, 23203, '2021-07-12 22:41:11', '2021-07-12 22:41:11');

-- --------------------------------------------------------

--
-- Table structure for table `ec_customers`
--

CREATE TABLE `ec_customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `phone` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `confirmed_at` datetime DEFAULT NULL,
  `email_verify_token` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_vendor` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_customers`
--

INSERT INTO `ec_customers` (`id`, `name`, `email`, `password`, `avatar`, `dob`, `phone`, `remember_token`, `created_at`, `updated_at`, `confirmed_at`, `email_verify_token`, `is_vendor`) VALUES
(1, 'Prof. Letha Morar', 'customer@botble.com', '$2y$10$35qcZOhIpDh8zm0vm5nr/OEdxXxesH9s9PA6WxzvV2bSZFHPCFpMC', 'customers/8.jpg', NULL, '+14582076924', NULL, '2021-07-12 22:41:33', '2021-07-12 22:41:33', '2021-07-13 05:41:33', NULL, 0),
(2, 'Mavis Jerde', 'vendor@botble.com', '$2y$10$wXgKx0qhRk5VwgyXllUw9ObOugw6ZLh7maNGnR2z9s6FlzBaHp0..', 'customers/8.jpg', NULL, '+12246215835', NULL, '2021-07-12 22:41:33', '2021-07-12 22:41:33', '2021-07-13 05:41:33', NULL, 0),
(3, 'Travon Heaney', 'sawayn.abigayle@example.net', '$2y$10$b2LS3xvVAPhoDrLtMcO3A.bq9gOodhQdyT3vd15kZngP4RSStV/dG', 'customers/1.jpg', NULL, '+15517086988', NULL, '2021-07-12 22:41:34', '2021-07-12 22:41:45', '2021-07-13 05:41:34', NULL, 1),
(4, 'Lenna Doyle', 'hansen.gladys@example.org', '$2y$10$FrrpBMk8UshumeObiJgiI.nb3oFcjsnjlxzMDxvzMCWB8kgMGVCIm', 'customers/2.jpg', NULL, '+19169122563', NULL, '2021-07-12 22:41:34', '2021-07-12 22:41:45', '2021-07-13 05:41:34', NULL, 1),
(5, 'Mrs. Mellie Hoppe III', 'raphaelle11@example.net', '$2y$10$H.fnWXP1FsHUksOQfbI1QeHHOKf84n5tpKJKP6CKRBYyCtglL9kLm', 'customers/3.jpg', NULL, '+13235215892', NULL, '2021-07-12 22:41:34', '2021-07-12 22:41:34', '2021-07-13 05:41:34', NULL, 0),
(6, 'Wilson Hamill', 'alysson97@example.net', '$2y$10$W2pjnJgkOcGOZ1wd5Oo6NO9K9TDY55G3cyv6XDXv.j6KsQW3WhVsC', 'customers/4.jpg', NULL, '+17570580788', NULL, '2021-07-12 22:41:34', '2021-07-12 22:41:45', '2021-07-13 05:41:34', NULL, 1),
(7, 'Presley Okuneva IV', 'baumbach.dessie@example.com', '$2y$10$cKDCkZd5AoT0qzfc1igni.Gg58Kc.w2EK5Nvn2fbJGEIImWlufcGK', 'customers/5.jpg', NULL, '+12814956113', NULL, '2021-07-12 22:41:35', '2021-07-12 22:41:35', '2021-07-13 05:41:35', NULL, 0),
(8, 'Miles Bahringer IV', 'bkuphal@example.net', '$2y$10$1Ly3cT2.gCaP6JdXfCCsQ.nwQpfK7nDfyZ2CqkDIoDci/Hgpzyw0u', 'customers/6.jpg', NULL, '+19563885395', NULL, '2021-07-12 22:41:35', '2021-07-12 22:41:35', '2021-07-13 05:41:35', NULL, 0),
(9, 'Josie Tromp', 'esmeralda.ziemann@example.com', '$2y$10$dDRE818MvVakV3dFKDZO/.hsxLXc7z4Jc28btTDzNx76mDy8cmAae', 'customers/7.jpg', NULL, '+15516544996', NULL, '2021-07-12 22:41:35', '2021-07-12 22:41:35', '2021-07-13 05:41:35', NULL, 0),
(10, 'Chase Yost', 'farrell.colleen@example.net', '$2y$10$oHBE3XMPdlsVcxP3yH22EuFp2ZKkw79/WGkjQLEM5fo.kE.NPLMU2', 'customers/8.jpg', NULL, '+18622442685', NULL, '2021-07-12 22:41:36', '2021-07-12 22:41:36', '2021-07-13 05:41:36', NULL, 0),
(11, 'Florida Welch', 'wilfrid.strosin@example.org', '$2y$10$IN/5ssdccZ2gO/QvjIHpX.xhfkR9ixWDLJVtv1L5GF8d1oC9rxE.e', 'customers/9.jpg', NULL, '+12128214457', NULL, '2021-07-12 22:41:36', '2021-07-12 22:41:45', '2021-07-13 05:41:36', NULL, 1),
(12, 'Jaylan Trantow', 'craynor@example.org', '$2y$10$oq.ZScqfBAXmW9iA2g1.r.Y6VmAfN0YUnfktZFU7YzgQyv1hr1pzO', 'customers/10.jpg', NULL, '+12065807627', NULL, '2021-07-12 22:41:36', '2021-07-12 22:41:46', '2021-07-13 05:41:36', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ec_customer_addresses`
--

CREATE TABLE `ec_customer_addresses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_id` int(10) UNSIGNED NOT NULL,
  `is_default` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_customer_addresses`
--

INSERT INTO `ec_customer_addresses` (`id`, `name`, `email`, `phone`, `country`, `state`, `city`, `address`, `customer_id`, `is_default`, `created_at`, `updated_at`, `zip_code`) VALUES
(1, 'Prof. Letha Morar', 'customer@botble.com', '+14258434052', 'IR', 'Louisiana', 'Clarastad', '3931 Will Underpass', 1, 1, '2021-07-12 22:41:33', '2021-07-12 22:41:33', '18807'),
(2, 'Prof. Letha Morar', 'customer@botble.com', '+12406180353', 'AZ', 'Wyoming', 'North Enricoburgh', '534 Oral Estate Suite 148', 1, 0, '2021-07-12 22:41:33', '2021-07-12 22:41:33', '44192-6975'),
(3, 'Mavis Jerde', 'vendor@botble.com', '+16895034951', 'AQ', 'Virginia', 'Marksborough', '80724 Labadie Tunnel Suite 996', 2, 1, '2021-07-12 22:41:33', '2021-07-12 22:41:33', '43062-7215'),
(4, 'Mavis Jerde', 'vendor@botble.com', '+12620444887', 'BN', 'Maine', 'Jammiefurt', '734 Kuphal Trail Apt. 381', 2, 0, '2021-07-12 22:41:33', '2021-07-12 22:41:33', '59770'),
(5, 'Travon Heaney', 'sawayn.abigayle@example.net', '+16406618609', 'SG', 'Alaska', 'Shieldsmouth', '532 Francesco Lock Suite 231', 3, 1, '2021-07-12 22:41:34', '2021-07-12 22:41:34', '35763'),
(6, 'Lenna Doyle', 'hansen.gladys@example.org', '+15731214683', 'TT', 'Texas', 'West Darylmouth', '45647 Nicolas Extension', 4, 1, '2021-07-12 22:41:34', '2021-07-12 22:41:34', '61956-2387'),
(7, 'Mrs. Mellie Hoppe III', 'raphaelle11@example.net', '+19856146275', 'PN', 'New Jersey', 'Cobyberg', '42124 Schowalter Points', 5, 1, '2021-07-12 22:41:34', '2021-07-12 22:41:34', '14214-5503'),
(8, 'Wilson Hamill', 'alysson97@example.net', '+14258432242', 'BY', 'Oklahoma', 'West Ramon', '8445 Zemlak Summit Suite 839', 6, 1, '2021-07-12 22:41:34', '2021-07-12 22:41:34', '27566'),
(9, 'Presley Okuneva IV', 'baumbach.dessie@example.com', '+17548160320', 'DJ', 'New Jersey', 'Erdmanstad', '968 Dooley Coves Apt. 952', 7, 1, '2021-07-12 22:41:35', '2021-07-12 22:41:35', '18607'),
(10, 'Miles Bahringer IV', 'bkuphal@example.net', '+16815519015', 'GL', 'Utah', 'Zackton', '2769 Kenny Junctions Apt. 978', 8, 1, '2021-07-12 22:41:35', '2021-07-12 22:41:35', '04834-2653'),
(11, 'Josie Tromp', 'esmeralda.ziemann@example.com', '+17156628022', 'BJ', 'Oregon', 'East Zellaside', '44359 Roob Plains', 9, 1, '2021-07-12 22:41:35', '2021-07-12 22:41:35', '13868-3581'),
(12, 'Chase Yost', 'farrell.colleen@example.net', '+14695405877', 'CU', 'Louisiana', 'South Monafort', '1832 Weldon Highway Apt. 303', 10, 1, '2021-07-12 22:41:36', '2021-07-12 22:41:36', '77560'),
(13, 'Florida Welch', 'wilfrid.strosin@example.org', '+16287171779', 'SM', 'Rhode Island', 'Kosstown', '68449 Kailee Avenue Apt. 189', 11, 1, '2021-07-12 22:41:36', '2021-07-12 22:41:36', '65013'),
(14, 'Jaylan Trantow', 'craynor@example.org', '+12160447177', 'NC', 'Idaho', 'Daronberg', '4898 Runte Springs Apt. 162', 12, 1, '2021-07-12 22:41:36', '2021-07-12 22:41:36', '85505');

-- --------------------------------------------------------

--
-- Table structure for table `ec_customer_password_resets`
--

CREATE TABLE `ec_customer_password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_discounts`
--

CREATE TABLE `ec_discounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `total_used` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `value` double DEFAULT NULL,
  `type` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT 'coupon',
  `can_use_with_promotion` tinyint(1) NOT NULL DEFAULT '0',
  `discount_on` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_quantity` int(10) UNSIGNED DEFAULT NULL,
  `type_option` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'amount',
  `target` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'all-orders',
  `min_order_price` decimal(15,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `store_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_discount_customers`
--

CREATE TABLE `ec_discount_customers` (
  `discount_id` int(10) UNSIGNED NOT NULL,
  `customer_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_discount_products`
--

CREATE TABLE `ec_discount_products` (
  `discount_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_discount_product_collections`
--

CREATE TABLE `ec_discount_product_collections` (
  `discount_id` int(10) UNSIGNED NOT NULL,
  `product_collection_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_flash_sales`
--

CREATE TABLE `ec_flash_sales` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `end_date` datetime NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_flash_sales`
--

INSERT INTO `ec_flash_sales` (`id`, `name`, `end_date`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Winter Sale', '2021-08-12 00:00:00', 'published', '2021-07-12 22:41:36', '2021-07-12 22:41:36');

-- --------------------------------------------------------

--
-- Table structure for table `ec_flash_sale_products`
--

CREATE TABLE `ec_flash_sale_products` (
  `flash_sale_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `price` double UNSIGNED DEFAULT NULL,
  `quantity` int(10) UNSIGNED DEFAULT NULL,
  `sold` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_flash_sale_products`
--

INSERT INTO `ec_flash_sale_products` (`flash_sale_id`, `product_id`, `price`, `quantity`, `sold`) VALUES
(1, 1, 52.965, 17, 1),
(1, 2, 27.135, 16, 4),
(1, 3, 16.2, 13, 3),
(1, 4, 396.984, 12, 3),
(1, 5, 397.92, 19, 5),
(1, 6, 380.98, 13, 1),
(1, 7, 500.64, 14, 2),
(1, 8, 317.7708, 8, 3),
(1, 9, 171.36, 8, 5),
(1, 10, 537.07, 16, 3);

-- --------------------------------------------------------

--
-- Table structure for table `ec_grouped_products`
--

CREATE TABLE `ec_grouped_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `parent_product_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `fixed_qty` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_orders`
--

CREATE TABLE `ec_orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `shipping_option` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_method` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default',
  `status` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `amount` decimal(15,2) NOT NULL,
  `currency_id` int(10) UNSIGNED DEFAULT NULL,
  `tax_amount` decimal(15,2) DEFAULT NULL,
  `shipping_amount` decimal(15,2) DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `coupon_code` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_amount` decimal(15,2) DEFAULT NULL,
  `sub_total` decimal(15,2) NOT NULL,
  `is_confirmed` tinyint(1) NOT NULL DEFAULT '0',
  `discount_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_finished` tinyint(1) DEFAULT '1',
  `token` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `store_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_orders`
--

INSERT INTO `ec_orders` (`id`, `user_id`, `shipping_option`, `shipping_method`, `status`, `amount`, `currency_id`, `tax_amount`, `shipping_amount`, `description`, `coupon_code`, `discount_amount`, `sub_total`, `is_confirmed`, `discount_description`, `is_finished`, `token`, `payment_id`, `created_at`, `updated_at`, `store_id`) VALUES
(1, 8, '1', 'default', 'pending', '22.00', 1, '2.00', '0.00', NULL, NULL, '0.00', '20.00', 1, NULL, 1, 'GpItH3k3zYov3mD659xHxFt2yPIhK', 1, '2021-07-01 06:41:46', '2021-07-12 22:41:46', 1),
(2, 8, '1', 'default', 'pending', '584.10', 1, '53.10', '0.00', NULL, NULL, '0.00', '531.00', 1, NULL, 1, 'kMExQIaDT0YL25XClMoS0vL55wMrb', 2, '2021-06-29 14:41:46', '2021-07-12 22:41:46', 4),
(3, 7, '1', 'default', 'pending', '911.90', 1, '82.90', '0.00', NULL, NULL, '0.00', '829.00', 1, NULL, 1, 'erCSnAOrSaoE99LZpvmLvAcVVvSQ8', 3, '2021-07-09 18:41:46', '2021-07-12 22:41:46', 4),
(4, 7, '1', 'default', 'pending', '2089.50', 1, '99.50', '0.00', NULL, NULL, '0.00', '1990.00', 1, NULL, 1, 'djJobpOnGB5Rx8Dk9AKY9bcZgvNtv', 4, '2021-07-09 18:41:46', '2021-07-12 22:41:46', 5),
(5, 8, '1', 'default', 'completed', '1381.20', 1, '67.70', '0.00', NULL, NULL, '0.00', '1313.50', 1, NULL, 1, 'fkWiYqRDnLKdEUZbSED4CEqjmbZy2', 5, '2021-07-06 22:41:46', '2021-07-12 22:41:47', 4),
(6, 8, '1', 'default', 'completed', '594.00', 1, '54.00', '0.00', NULL, NULL, '0.00', '540.00', 1, NULL, 1, '27xHwUXS6k0mNbBvTTp0Y6n4FryLC', 6, '2021-07-11 10:41:46', '2021-07-12 22:41:48', 5),
(7, 1, '1', 'default', 'pending', '1835.70', 1, '112.70', '0.00', NULL, NULL, '0.00', '1723.00', 1, NULL, 1, 'A4KT5CsJ8wB8rWP3sbgYu3NbaBLjG', 7, '2021-07-05 20:41:46', '2021-07-12 22:41:46', 4),
(8, 1, '1', 'default', 'pending', '1333.20', 1, '121.20', '0.00', NULL, NULL, '0.00', '1212.00', 1, NULL, 1, 'RSykbtmPaGBlQPTgpGEhSfOWJZGUh', 8, '2021-07-01 14:41:46', '2021-07-12 22:41:46', 5),
(9, 8, '1', 'default', 'completed', '1559.30', 1, '50.30', '0.00', NULL, NULL, '0.00', '1509.00', 1, NULL, 1, 'mGJ78S3OT2nCBpvKsl0DkE1NfJkeb', 9, '2021-07-06 06:41:46', '2021-07-12 22:41:49', 2),
(10, 8, '1', 'default', 'pending', '3977.30', 1, '128.30', '0.00', NULL, NULL, '0.00', '3849.00', 1, NULL, 1, 'H0CZPb2KGwlLXKG6ynLosFT9n19OH', 10, '2021-07-08 22:41:46', '2021-07-12 22:41:46', 3),
(11, 8, '1', 'default', 'completed', '2101.80', 1, '67.80', '0.00', NULL, NULL, '0.00', '2034.00', 1, NULL, 1, 'wn8RsMfLjAs6cJZM2DF28N8z4Tbgz', 11, '2021-07-02 06:41:46', '2021-07-12 22:41:49', 5),
(12, 10, '1', 'default', 'completed', '1167.60', 1, '55.60', '0.00', NULL, NULL, '0.00', '1112.00', 1, NULL, 1, 'Ca16uvrICT2IFvSKz4QzkInucmHyb', 12, '2021-07-02 22:41:46', '2021-07-12 22:41:50', 4),
(13, 10, '1', 'default', 'pending', '930.30', 1, '44.30', '0.00', NULL, NULL, '0.00', '886.00', 1, NULL, 1, 'tFb8ANC1z67TxDrj2yTzZsfLkykbJ', 13, '2021-07-04 04:41:46', '2021-07-12 22:41:46', 1),
(14, 8, '1', 'default', 'pending', '3731.70', 1, '177.70', '0.00', NULL, NULL, '0.00', '3554.00', 1, NULL, 1, '0ZdNEgmUxfMRDabMoHV0chyaStakb', 14, '2021-07-11 18:41:46', '2021-07-12 22:41:46', 3),
(15, 8, '1', 'default', 'completed', '1423.80', 1, '67.80', '0.00', NULL, NULL, '0.00', '1356.00', 1, NULL, 1, 'DvtIrS0RKhfKW8YKcmElP85EUMO8J', 15, '2021-07-07 02:41:46', '2021-07-12 22:41:50', 5),
(16, 1, '1', 'default', 'completed', '1847.60', 1, '59.60', '0.00', NULL, NULL, '0.00', '1788.00', 1, NULL, 1, '07IjAGLpRIthXtKbMrpkacNNyZtdc', 16, '2021-07-04 06:41:46', '2021-07-12 22:41:51', 4),
(17, 1, '1', 'default', 'completed', '553.30', 1, '50.30', '0.00', NULL, NULL, '0.00', '503.00', 1, NULL, 1, 'eF8gzGjiQ1fYv27kQsoncpPfe4uup', 17, '2021-07-04 06:41:47', '2021-07-12 22:41:51', 2),
(18, 1, '1', 'default', 'completed', '2101.80', 1, '67.80', '0.00', NULL, NULL, '0.00', '2034.00', 1, NULL, 1, '2I6AeEYvZXzxG8MIQ7dY8vDZPq0C6', 18, '2021-07-02 02:41:47', '2021-07-12 22:41:52', 5),
(19, 9, '1', 'default', 'completed', '3871.90', 1, '124.90', '0.00', NULL, NULL, '0.00', '3747.00', 1, NULL, 1, '7KruMQKTF5kmDoX9SNMMFX23KjcL4', 19, '2021-07-03 22:41:47', '2021-07-12 22:41:52', 3),
(20, 9, '1', 'default', 'completed', '1559.30', 1, '50.30', '0.00', NULL, NULL, '0.00', '1509.00', 1, NULL, 1, 'zV2K5jgBsNBfKNa7YNhF44EWhizIR', 20, '2021-07-02 22:41:47', '2021-07-12 22:41:53', 2),
(21, 10, '1', 'default', 'completed', '1389.30', 1, '126.30', '0.00', NULL, NULL, '0.00', '1263.00', 1, NULL, 1, 'f6vr2qbDbPrhKIonpf85zD80zFZc0', 21, '2021-07-06 12:41:47', '2021-07-12 22:41:54', 2),
(22, 10, '1', 'default', 'completed', '3010.70', 1, '177.70', '0.00', NULL, NULL, '0.00', '2833.00', 1, NULL, 1, '933Oh0TXseVEDd5nMmHoiXZj3Rbzn', 22, '2021-07-09 06:41:47', '2021-07-12 22:41:54', 3),
(23, 9, '1', 'default', 'completed', '2569.90', 1, '82.90', '0.00', NULL, NULL, '0.00', '2487.00', 1, NULL, 1, 'X1OU6udeSoaZstzXVQGxTdYDD0DvG', 23, '2021-07-10 10:41:47', '2021-07-12 22:41:55', 4),
(24, 9, '1', 'default', 'pending', '930.30', 1, '44.30', '0.00', NULL, NULL, '0.00', '886.00', 1, NULL, 1, 'dOSGa3cxCdE9thwPtietOAbHTPmy2', 24, '2021-07-06 06:41:47', '2021-07-12 22:41:47', 1),
(25, 9, '1', 'default', 'pending', '3757.20', 1, '121.20', '0.00', NULL, NULL, '0.00', '3636.00', 1, NULL, 1, 'UIBfEBCP2W2PjjMZH3nBqOzheLK5G', 25, '2021-07-06 06:41:47', '2021-07-12 22:41:47', 5),
(26, 10, '1', 'default', 'completed', '1457.30', 1, '48.30', '0.00', NULL, NULL, '0.00', '1409.00', 1, NULL, 1, 'v4aIhI7q89xFvfryr7TKYAwdloX0W', 26, '2021-07-06 22:41:47', '2021-07-12 22:41:55', 1),
(27, 10, '1', 'default', 'pending', '1167.60', 1, '55.60', '0.00', NULL, NULL, '0.00', '1112.00', 1, NULL, 1, 'ksBYWFDsNQ3HNTGyoTbTxjyIomEut', 27, '2021-07-05 10:41:47', '2021-07-12 22:41:47', 4),
(28, 1, '1', 'default', 'completed', '1847.60', 1, '59.60', '0.00', NULL, NULL, '0.00', '1788.00', 1, NULL, 1, 'PSksN5H3XmlWUlSGptWAR9e6knMHl', 28, '2021-07-12 06:41:47', '2021-07-12 22:41:56', 4),
(29, 1, '1', 'default', 'pending', '2622.90', 1, '124.90', '0.00', NULL, NULL, '0.00', '2498.00', 1, NULL, 1, 'Gr361IMRXcSpq8DLrQRzphGqYZ3F6', 29, '2021-07-06 06:41:47', '2021-07-12 22:41:47', 3),
(30, 1, '1', 'default', 'pending', '2089.50', 1, '99.50', '0.00', NULL, NULL, '0.00', '1990.00', 1, NULL, 1, '781ux0FzInFzw0vn8SsW0wenrEufg', 30, '2021-07-07 14:41:47', '2021-07-12 22:41:47', 5),
(31, 7, '1', 'default', 'pending', '62.00', 1, '2.00', '0.00', NULL, NULL, '0.00', '60.00', 1, NULL, 1, 'QmRX768iSjuxz5Ir0imYgvJQHppd4', 31, '2021-07-08 20:41:47', '2021-07-12 22:41:47', 1),
(32, 7, '1', 'default', 'completed', '2886.10', 1, '93.10', '0.00', NULL, NULL, '0.00', '2793.00', 1, NULL, 1, 'ILldlqtTJaYpoCFnRJ2kjXTV94PZ8', 32, '2021-07-07 16:41:47', '2021-07-12 22:41:56', 5),
(33, 10, '1', 'default', 'completed', '553.30', 1, '50.30', '0.00', NULL, NULL, '0.00', '503.00', 1, NULL, 1, 'J2Gt0xt3Vk2bNTW0RXdPN4SiTkHVu', 33, '2021-07-10 22:41:47', '2021-07-12 22:41:57', 2),
(34, 10, '1', 'default', 'pending', '745.80', 1, '67.80', '0.00', NULL, NULL, '0.00', '678.00', 1, NULL, 1, 'EaMc82YWzKBwWzuJl5KuH8YZMh9qd', 34, '2021-07-10 10:41:47', '2021-07-12 22:41:47', 5),
(35, 10, '1', 'default', 'pending', '42.00', 1, '2.00', '0.00', NULL, NULL, '0.00', '40.00', 1, NULL, 1, 'aRvxvNiPNrQacN369zjEoY861y26s', 35, '2021-07-12 02:41:47', '2021-07-12 22:41:47', 1),
(36, 10, '1', 'default', 'pending', '584.10', 1, '53.10', '0.00', NULL, NULL, '0.00', '531.00', 1, NULL, 1, 'DlmpypehIkys0EWHhPMbRxVpsOo7l', 36, '2021-07-12 02:41:47', '2021-07-12 22:41:47', 4),
(37, 10, '1', 'default', 'pending', '2886.10', 1, '93.10', '0.00', NULL, NULL, '0.00', '2793.00', 1, NULL, 1, 'xIl8ZtGeCxnRfPGqCDvWWUfA5TguM', 37, '2021-07-10 20:41:47', '2021-07-12 22:41:47', 5),
(38, 5, '1', 'default', 'pending', '2761.20', 1, '106.20', '0.00', NULL, NULL, '0.00', '2655.00', 1, NULL, 1, '6NampIxvZcdMtrRHmcQeGDpWC4lka', 38, '2021-07-11 14:41:47', '2021-07-12 22:41:47', 4),
(39, 5, '1', 'default', 'pending', '3977.30', 1, '128.30', '0.00', NULL, NULL, '0.00', '3849.00', 1, NULL, 1, 'TPlBBBaBjuVc4ZasGHSsnp2rvIzWM', 39, '2021-07-09 14:41:47', '2021-07-12 22:41:47', 3),
(40, 5, '1', 'default', 'pending', '1024.10', 1, '93.10', '0.00', NULL, NULL, '0.00', '931.00', 1, NULL, 1, 'JnKPM23BBjAz7xwnantR41Tv22bkl', 40, '2021-07-10 14:41:47', '2021-07-12 22:41:47', 5),
(41, 7, '1', 'default', 'pending', '1562.40', 1, '50.40', '0.00', NULL, NULL, '0.00', '1512.00', 1, NULL, 1, 'C6bVyB8CIDhWYEY5G9weyFdQMCC8Y', 41, '2021-07-10 22:41:47', '2021-07-12 22:41:47', 1),
(42, 7, '1', 'default', 'pending', '2545.20', 1, '121.20', '0.00', NULL, NULL, '0.00', '2424.00', 1, NULL, 1, 'UK4VaMIzwza0QTKNQjHICDLf3pIW9', 42, '2021-07-12 10:41:47', '2021-07-12 22:41:47', 5),
(43, 7, '1', 'default', 'pending', '584.10', 1, '53.10', '0.00', NULL, NULL, '0.00', '531.00', 1, NULL, 1, 'AyGj83rcfKt7I9eI51XH6vtjko9t6', 43, '2021-07-12 10:41:47', '2021-07-12 22:41:47', 4),
(44, 7, '1', 'default', 'completed', '2694.30', 1, '128.30', '0.00', NULL, NULL, '0.00', '2566.00', 1, NULL, 1, 'oKVDLLFiRxn4Zhu41d1ew8ffzlWsm', 44, '2021-07-12 16:41:47', '2021-07-12 22:41:58', 3),
(45, 1, '1', 'default', 'completed', '1041.70', 1, '94.70', '0.00', NULL, NULL, '0.00', '947.00', 1, NULL, 1, '4IJUG0bISYNgYg2G594hW2fIg3FcZ', 45, '2021-07-12 10:41:47', '2021-07-12 22:41:58', 1),
(46, 1, '1', 'default', 'pending', '1674.00', 1, '54.00', '0.00', NULL, NULL, '0.00', '1620.00', 1, NULL, 1, 'B1gQMa23H0ruV7CndpIkzhaxt3QPz', 46, '2021-07-11 22:41:47', '2021-07-12 22:41:47', 5),
(47, 1, '1', 'default', 'completed', '1646.10', 1, '53.10', '0.00', NULL, NULL, '0.00', '1593.00', 1, NULL, 1, 'laNuXHywvs2U8aVu2zmOdZbcDsbVB', 47, '2021-07-12 02:41:47', '2021-07-12 22:41:59', 4),
(48, 7, '1', 'default', 'completed', '1167.60', 1, '55.60', '0.00', NULL, NULL, '0.00', '1112.00', 1, NULL, 1, 'PE8v2kRMC3RWudU6Tk2wgzMb834Cf', 48, '2021-07-12 18:41:47', '2021-07-12 22:41:59', 4),
(49, 7, '1', 'default', 'completed', '580.80', 1, '52.80', '0.00', NULL, NULL, '0.00', '528.00', 1, NULL, 1, 'pS5fCm83Z90a0H7gLmTCjTFG29eqY', 49, '2021-07-12 18:41:47', '2021-07-12 22:42:00', 3),
(50, 7, '1', 'default', 'completed', '1559.30', 1, '50.30', '0.00', NULL, NULL, '0.00', '1509.00', 1, NULL, 1, 'Z0ULJFnQcaRzpes17An1xHXcQC7Xc', 50, '2021-07-12 20:41:47', '2021-07-12 22:42:00', 2),
(51, 7, '1', 'default', 'pending', '745.80', 1, '67.80', '0.00', NULL, NULL, '0.00', '678.00', 1, NULL, 1, 'froIpZ2MTb9JDDX58LCxV61b3vldH', 51, '2021-07-12 04:41:47', '2021-07-12 22:41:47', 5);

-- --------------------------------------------------------

--
-- Table structure for table `ec_order_addresses`
--

CREATE TABLE `ec_order_addresses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_order_addresses`
--

INSERT INTO `ec_order_addresses` (`id`, `name`, `phone`, `email`, `country`, `state`, `city`, `address`, `order_id`, `zip_code`) VALUES
(1, 'Miles Bahringer IV', '+16815519015', 'bkuphal@example.net', 'GL', 'Utah', 'Zackton', '2769 Kenny Junctions Apt. 978', 1, '04834-2653'),
(2, 'Miles Bahringer IV', '+16815519015', 'bkuphal@example.net', 'GL', 'Utah', 'Zackton', '2769 Kenny Junctions Apt. 978', 2, '04834-2653'),
(3, 'Presley Okuneva IV', '+17548160320', 'baumbach.dessie@example.com', 'DJ', 'New Jersey', 'Erdmanstad', '968 Dooley Coves Apt. 952', 3, '18607'),
(4, 'Presley Okuneva IV', '+17548160320', 'baumbach.dessie@example.com', 'DJ', 'New Jersey', 'Erdmanstad', '968 Dooley Coves Apt. 952', 4, '18607'),
(5, 'Miles Bahringer IV', '+16815519015', 'bkuphal@example.net', 'GL', 'Utah', 'Zackton', '2769 Kenny Junctions Apt. 978', 5, '04834-2653'),
(6, 'Miles Bahringer IV', '+16815519015', 'bkuphal@example.net', 'GL', 'Utah', 'Zackton', '2769 Kenny Junctions Apt. 978', 6, '04834-2653'),
(7, 'Prof. Letha Morar', '+14258434052', 'customer@botble.com', 'IR', 'Louisiana', 'Clarastad', '3931 Will Underpass', 7, '18807'),
(8, 'Prof. Letha Morar', '+14258434052', 'customer@botble.com', 'IR', 'Louisiana', 'Clarastad', '3931 Will Underpass', 8, '18807'),
(9, 'Miles Bahringer IV', '+16815519015', 'bkuphal@example.net', 'GL', 'Utah', 'Zackton', '2769 Kenny Junctions Apt. 978', 9, '04834-2653'),
(10, 'Miles Bahringer IV', '+16815519015', 'bkuphal@example.net', 'GL', 'Utah', 'Zackton', '2769 Kenny Junctions Apt. 978', 10, '04834-2653'),
(11, 'Miles Bahringer IV', '+16815519015', 'bkuphal@example.net', 'GL', 'Utah', 'Zackton', '2769 Kenny Junctions Apt. 978', 11, '04834-2653'),
(12, 'Chase Yost', '+14695405877', 'farrell.colleen@example.net', 'CU', 'Louisiana', 'South Monafort', '1832 Weldon Highway Apt. 303', 12, '77560'),
(13, 'Chase Yost', '+14695405877', 'farrell.colleen@example.net', 'CU', 'Louisiana', 'South Monafort', '1832 Weldon Highway Apt. 303', 13, '77560'),
(14, 'Miles Bahringer IV', '+16815519015', 'bkuphal@example.net', 'GL', 'Utah', 'Zackton', '2769 Kenny Junctions Apt. 978', 14, '04834-2653'),
(15, 'Miles Bahringer IV', '+16815519015', 'bkuphal@example.net', 'GL', 'Utah', 'Zackton', '2769 Kenny Junctions Apt. 978', 15, '04834-2653'),
(16, 'Prof. Letha Morar', '+14258434052', 'customer@botble.com', 'IR', 'Louisiana', 'Clarastad', '3931 Will Underpass', 16, '18807'),
(17, 'Prof. Letha Morar', '+14258434052', 'customer@botble.com', 'IR', 'Louisiana', 'Clarastad', '3931 Will Underpass', 17, '18807'),
(18, 'Prof. Letha Morar', '+14258434052', 'customer@botble.com', 'IR', 'Louisiana', 'Clarastad', '3931 Will Underpass', 18, '18807'),
(19, 'Josie Tromp', '+17156628022', 'esmeralda.ziemann@example.com', 'BJ', 'Oregon', 'East Zellaside', '44359 Roob Plains', 19, '13868-3581'),
(20, 'Josie Tromp', '+17156628022', 'esmeralda.ziemann@example.com', 'BJ', 'Oregon', 'East Zellaside', '44359 Roob Plains', 20, '13868-3581'),
(21, 'Chase Yost', '+14695405877', 'farrell.colleen@example.net', 'CU', 'Louisiana', 'South Monafort', '1832 Weldon Highway Apt. 303', 21, '77560'),
(22, 'Chase Yost', '+14695405877', 'farrell.colleen@example.net', 'CU', 'Louisiana', 'South Monafort', '1832 Weldon Highway Apt. 303', 22, '77560'),
(23, 'Josie Tromp', '+17156628022', 'esmeralda.ziemann@example.com', 'BJ', 'Oregon', 'East Zellaside', '44359 Roob Plains', 23, '13868-3581'),
(24, 'Josie Tromp', '+17156628022', 'esmeralda.ziemann@example.com', 'BJ', 'Oregon', 'East Zellaside', '44359 Roob Plains', 24, '13868-3581'),
(25, 'Josie Tromp', '+17156628022', 'esmeralda.ziemann@example.com', 'BJ', 'Oregon', 'East Zellaside', '44359 Roob Plains', 25, '13868-3581'),
(26, 'Chase Yost', '+14695405877', 'farrell.colleen@example.net', 'CU', 'Louisiana', 'South Monafort', '1832 Weldon Highway Apt. 303', 26, '77560'),
(27, 'Chase Yost', '+14695405877', 'farrell.colleen@example.net', 'CU', 'Louisiana', 'South Monafort', '1832 Weldon Highway Apt. 303', 27, '77560'),
(28, 'Prof. Letha Morar', '+14258434052', 'customer@botble.com', 'IR', 'Louisiana', 'Clarastad', '3931 Will Underpass', 28, '18807'),
(29, 'Prof. Letha Morar', '+14258434052', 'customer@botble.com', 'IR', 'Louisiana', 'Clarastad', '3931 Will Underpass', 29, '18807'),
(30, 'Prof. Letha Morar', '+14258434052', 'customer@botble.com', 'IR', 'Louisiana', 'Clarastad', '3931 Will Underpass', 30, '18807'),
(31, 'Presley Okuneva IV', '+17548160320', 'baumbach.dessie@example.com', 'DJ', 'New Jersey', 'Erdmanstad', '968 Dooley Coves Apt. 952', 31, '18607'),
(32, 'Presley Okuneva IV', '+17548160320', 'baumbach.dessie@example.com', 'DJ', 'New Jersey', 'Erdmanstad', '968 Dooley Coves Apt. 952', 32, '18607'),
(33, 'Chase Yost', '+14695405877', 'farrell.colleen@example.net', 'CU', 'Louisiana', 'South Monafort', '1832 Weldon Highway Apt. 303', 33, '77560'),
(34, 'Chase Yost', '+14695405877', 'farrell.colleen@example.net', 'CU', 'Louisiana', 'South Monafort', '1832 Weldon Highway Apt. 303', 34, '77560'),
(35, 'Chase Yost', '+14695405877', 'farrell.colleen@example.net', 'CU', 'Louisiana', 'South Monafort', '1832 Weldon Highway Apt. 303', 35, '77560'),
(36, 'Chase Yost', '+14695405877', 'farrell.colleen@example.net', 'CU', 'Louisiana', 'South Monafort', '1832 Weldon Highway Apt. 303', 36, '77560'),
(37, 'Chase Yost', '+14695405877', 'farrell.colleen@example.net', 'CU', 'Louisiana', 'South Monafort', '1832 Weldon Highway Apt. 303', 37, '77560'),
(38, 'Mrs. Mellie Hoppe III', '+19856146275', 'raphaelle11@example.net', 'PN', 'New Jersey', 'Cobyberg', '42124 Schowalter Points', 38, '14214-5503'),
(39, 'Mrs. Mellie Hoppe III', '+19856146275', 'raphaelle11@example.net', 'PN', 'New Jersey', 'Cobyberg', '42124 Schowalter Points', 39, '14214-5503'),
(40, 'Mrs. Mellie Hoppe III', '+19856146275', 'raphaelle11@example.net', 'PN', 'New Jersey', 'Cobyberg', '42124 Schowalter Points', 40, '14214-5503'),
(41, 'Presley Okuneva IV', '+17548160320', 'baumbach.dessie@example.com', 'DJ', 'New Jersey', 'Erdmanstad', '968 Dooley Coves Apt. 952', 41, '18607'),
(42, 'Presley Okuneva IV', '+17548160320', 'baumbach.dessie@example.com', 'DJ', 'New Jersey', 'Erdmanstad', '968 Dooley Coves Apt. 952', 42, '18607'),
(43, 'Presley Okuneva IV', '+17548160320', 'baumbach.dessie@example.com', 'DJ', 'New Jersey', 'Erdmanstad', '968 Dooley Coves Apt. 952', 43, '18607'),
(44, 'Presley Okuneva IV', '+17548160320', 'baumbach.dessie@example.com', 'DJ', 'New Jersey', 'Erdmanstad', '968 Dooley Coves Apt. 952', 44, '18607'),
(45, 'Prof. Letha Morar', '+14258434052', 'customer@botble.com', 'IR', 'Louisiana', 'Clarastad', '3931 Will Underpass', 45, '18807'),
(46, 'Prof. Letha Morar', '+14258434052', 'customer@botble.com', 'IR', 'Louisiana', 'Clarastad', '3931 Will Underpass', 46, '18807'),
(47, 'Prof. Letha Morar', '+14258434052', 'customer@botble.com', 'IR', 'Louisiana', 'Clarastad', '3931 Will Underpass', 47, '18807'),
(48, 'Presley Okuneva IV', '+17548160320', 'baumbach.dessie@example.com', 'DJ', 'New Jersey', 'Erdmanstad', '968 Dooley Coves Apt. 952', 48, '18607'),
(49, 'Presley Okuneva IV', '+17548160320', 'baumbach.dessie@example.com', 'DJ', 'New Jersey', 'Erdmanstad', '968 Dooley Coves Apt. 952', 49, '18607'),
(50, 'Presley Okuneva IV', '+17548160320', 'baumbach.dessie@example.com', 'DJ', 'New Jersey', 'Erdmanstad', '968 Dooley Coves Apt. 952', 50, '18607'),
(51, 'Presley Okuneva IV', '+17548160320', 'baumbach.dessie@example.com', 'DJ', 'New Jersey', 'Erdmanstad', '968 Dooley Coves Apt. 952', 51, '18607');

-- --------------------------------------------------------

--
-- Table structure for table `ec_order_histories`
--

CREATE TABLE `ec_order_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `extras` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_order_histories`
--

INSERT INTO `ec_order_histories` (`id`, `action`, `description`, `user_id`, `order_id`, `extras`, `created_at`, `updated_at`) VALUES
(1, 'create_order_from_seeder', 'Order is created from the checkout page', NULL, 1, NULL, '2021-07-01 06:41:46', '2021-07-01 06:41:46'),
(2, 'confirm_order', 'Order was verified by %user_name%', 0, 1, NULL, '2021-07-01 06:41:46', '2021-07-01 06:41:46'),
(3, 'confirm_payment', 'Payment was confirmed (amount $22) by %user_name%', 0, 1, NULL, '2021-07-12 22:41:46', '2021-07-12 22:41:46'),
(4, 'create_shipment', 'Created shipment for order', 0, 1, NULL, '2021-07-12 22:41:46', '2021-07-12 22:41:46'),
(5, 'create_order_from_seeder', 'Order is created from the checkout page', NULL, 2, NULL, '2021-06-29 14:41:46', '2021-06-29 14:41:46'),
(6, 'confirm_order', 'Order was verified by %user_name%', 0, 2, NULL, '2021-06-29 14:41:46', '2021-06-29 14:41:46'),
(7, 'create_shipment', 'Created shipment for order', 0, 2, NULL, '2021-07-12 22:41:46', '2021-07-12 22:41:46'),
(8, 'update_status', 'Changed status of shipping to : Delivered . Updated by: %user_name%', 0, 2, NULL, '2021-07-12 22:41:46', '2021-07-12 22:41:46'),
(9, 'create_order_from_seeder', 'Order is created from the checkout page', NULL, 3, NULL, '2021-07-09 18:41:46', '2021-07-09 18:41:46'),
(10, 'confirm_order', 'Order was verified by %user_name%', 0, 3, NULL, '2021-07-09 18:41:46', '2021-07-09 18:41:46'),
(11, 'confirm_payment', 'Payment was confirmed (amount $911.9) by %user_name%', 0, 3, NULL, '2021-07-12 22:41:46', '2021-07-12 22:41:46'),
(12, 'create_shipment', 'Created shipment for order', 0, 3, NULL, '2021-07-12 22:41:46', '2021-07-12 22:41:46'),
(13, 'create_order_from_seeder', 'Order is created from the checkout page', NULL, 4, NULL, '2021-07-09 18:41:46', '2021-07-09 18:41:46'),
(14, 'confirm_order', 'Order was verified by %user_name%', 0, 4, NULL, '2021-07-09 18:41:46', '2021-07-09 18:41:46'),
(15, 'create_shipment', 'Created shipment for order', 0, 4, NULL, '2021-07-12 22:41:46', '2021-07-12 22:41:46'),
(16, 'update_status', 'Changed status of shipping to : Delivered . Updated by: %user_name%', 0, 4, NULL, '2021-07-12 22:41:46', '2021-07-12 22:41:46'),
(17, 'create_order_from_seeder', 'Order is created from the checkout page', NULL, 5, NULL, '2021-07-06 22:41:46', '2021-07-06 22:41:46'),
(18, 'confirm_order', 'Order was verified by %user_name%', 0, 5, NULL, '2021-07-06 22:41:46', '2021-07-06 22:41:46'),
(19, 'confirm_payment', 'Payment was confirmed (amount $1,381.20) by %user_name%', 0, 5, NULL, '2021-07-12 22:41:46', '2021-07-12 22:41:46'),
(20, 'create_shipment', 'Created shipment for order', 0, 5, NULL, '2021-07-12 22:41:46', '2021-07-12 22:41:46'),
(21, 'update_status', 'Changed status of shipping to : Delivered . Updated by: %user_name%', 0, 5, NULL, '2021-07-12 22:41:46', '2021-07-12 22:41:46'),
(22, 'create_order_from_seeder', 'Order is created from the checkout page', NULL, 6, NULL, '2021-07-11 10:41:46', '2021-07-11 10:41:46'),
(23, 'confirm_order', 'Order was verified by %user_name%', 0, 6, NULL, '2021-07-11 10:41:46', '2021-07-11 10:41:46'),
(24, 'confirm_payment', 'Payment was confirmed (amount $594) by %user_name%', 0, 6, NULL, '2021-07-12 22:41:46', '2021-07-12 22:41:46'),
(25, 'create_shipment', 'Created shipment for order', 0, 6, NULL, '2021-07-12 22:41:46', '2021-07-12 22:41:46'),
(26, 'update_status', 'Changed status of shipping to : Delivered . Updated by: %user_name%', 0, 6, NULL, '2021-07-12 22:41:46', '2021-07-12 22:41:46'),
(27, 'create_order_from_seeder', 'Order is created from the checkout page', NULL, 7, NULL, '2021-07-05 20:41:46', '2021-07-05 20:41:46'),
(28, 'confirm_order', 'Order was verified by %user_name%', 0, 7, NULL, '2021-07-05 20:41:46', '2021-07-05 20:41:46'),
(29, 'confirm_payment', 'Payment was confirmed (amount $1,835.70) by %user_name%', 0, 7, NULL, '2021-07-12 22:41:46', '2021-07-12 22:41:46'),
(30, 'create_shipment', 'Created shipment for order', 0, 7, NULL, '2021-07-12 22:41:46', '2021-07-12 22:41:46'),
(31, 'create_order_from_seeder', 'Order is created from the checkout page', NULL, 8, NULL, '2021-07-01 14:41:46', '2021-07-01 14:41:46'),
(32, 'confirm_order', 'Order was verified by %user_name%', 0, 8, NULL, '2021-07-01 14:41:46', '2021-07-01 14:41:46'),
(33, 'confirm_payment', 'Payment was confirmed (amount $1,333.20) by %user_name%', 0, 8, NULL, '2021-07-12 22:41:46', '2021-07-12 22:41:46'),
(34, 'create_shipment', 'Created shipment for order', 0, 8, NULL, '2021-07-12 22:41:46', '2021-07-12 22:41:46'),
(35, 'create_order_from_seeder', 'Order is created from the checkout page', NULL, 9, NULL, '2021-07-06 06:41:46', '2021-07-06 06:41:46'),
(36, 'confirm_order', 'Order was verified by %user_name%', 0, 9, NULL, '2021-07-06 06:41:46', '2021-07-06 06:41:46'),
(37, 'confirm_payment', 'Payment was confirmed (amount $1,559.30) by %user_name%', 0, 9, NULL, '2021-07-12 22:41:46', '2021-07-12 22:41:46'),
(38, 'create_shipment', 'Created shipment for order', 0, 9, NULL, '2021-07-12 22:41:46', '2021-07-12 22:41:46'),
(39, 'update_status', 'Changed status of shipping to : Delivered . Updated by: %user_name%', 0, 9, NULL, '2021-07-12 22:41:46', '2021-07-12 22:41:46'),
(40, 'create_order_from_seeder', 'Order is created from the checkout page', NULL, 10, NULL, '2021-07-08 22:41:46', '2021-07-08 22:41:46'),
(41, 'confirm_order', 'Order was verified by %user_name%', 0, 10, NULL, '2021-07-08 22:41:46', '2021-07-08 22:41:46'),
(42, 'confirm_payment', 'Payment was confirmed (amount $3,977.30) by %user_name%', 0, 10, NULL, '2021-07-12 22:41:46', '2021-07-12 22:41:46'),
(43, 'create_shipment', 'Created shipment for order', 0, 10, NULL, '2021-07-12 22:41:46', '2021-07-12 22:41:46'),
(44, 'create_order_from_seeder', 'Order is created from the checkout page', NULL, 11, NULL, '2021-07-02 06:41:46', '2021-07-02 06:41:46'),
(45, 'confirm_order', 'Order was verified by %user_name%', 0, 11, NULL, '2021-07-02 06:41:46', '2021-07-02 06:41:46'),
(46, 'confirm_payment', 'Payment was confirmed (amount $2,101.80) by %user_name%', 0, 11, NULL, '2021-07-12 22:41:46', '2021-07-12 22:41:46'),
(47, 'create_shipment', 'Created shipment for order', 0, 11, NULL, '2021-07-12 22:41:46', '2021-07-12 22:41:46'),
(48, 'update_status', 'Changed status of shipping to : Delivered . Updated by: %user_name%', 0, 11, NULL, '2021-07-12 22:41:46', '2021-07-12 22:41:46'),
(49, 'create_order_from_seeder', 'Order is created from the checkout page', NULL, 12, NULL, '2021-07-02 22:41:46', '2021-07-02 22:41:46'),
(50, 'confirm_order', 'Order was verified by %user_name%', 0, 12, NULL, '2021-07-02 22:41:46', '2021-07-02 22:41:46'),
(51, 'confirm_payment', 'Payment was confirmed (amount $1,167.60) by %user_name%', 0, 12, NULL, '2021-07-12 22:41:46', '2021-07-12 22:41:46'),
(52, 'create_shipment', 'Created shipment for order', 0, 12, NULL, '2021-07-12 22:41:46', '2021-07-12 22:41:46'),
(53, 'update_status', 'Changed status of shipping to : Delivered . Updated by: %user_name%', 0, 12, NULL, '2021-07-12 22:41:46', '2021-07-12 22:41:46'),
(54, 'create_order_from_seeder', 'Order is created from the checkout page', NULL, 13, NULL, '2021-07-04 04:41:46', '2021-07-04 04:41:46'),
(55, 'confirm_order', 'Order was verified by %user_name%', 0, 13, NULL, '2021-07-04 04:41:46', '2021-07-04 04:41:46'),
(56, 'confirm_payment', 'Payment was confirmed (amount $930.3) by %user_name%', 0, 13, NULL, '2021-07-12 22:41:46', '2021-07-12 22:41:46'),
(57, 'create_shipment', 'Created shipment for order', 0, 13, NULL, '2021-07-12 22:41:46', '2021-07-12 22:41:46'),
(58, 'create_order_from_seeder', 'Order is created from the checkout page', NULL, 14, NULL, '2021-07-11 18:41:46', '2021-07-11 18:41:46'),
(59, 'confirm_order', 'Order was verified by %user_name%', 0, 14, NULL, '2021-07-11 18:41:46', '2021-07-11 18:41:46'),
(60, 'create_shipment', 'Created shipment for order', 0, 14, NULL, '2021-07-12 22:41:46', '2021-07-12 22:41:46'),
(61, 'create_order_from_seeder', 'Order is created from the checkout page', NULL, 15, NULL, '2021-07-07 02:41:46', '2021-07-07 02:41:46'),
(62, 'confirm_order', 'Order was verified by %user_name%', 0, 15, NULL, '2021-07-07 02:41:46', '2021-07-07 02:41:46'),
(63, 'confirm_payment', 'Payment was confirmed (amount $1,423.80) by %user_name%', 0, 15, NULL, '2021-07-12 22:41:46', '2021-07-12 22:41:46'),
(64, 'create_shipment', 'Created shipment for order', 0, 15, NULL, '2021-07-12 22:41:46', '2021-07-12 22:41:46'),
(65, 'update_status', 'Changed status of shipping to : Delivered . Updated by: %user_name%', 0, 15, NULL, '2021-07-12 22:41:46', '2021-07-12 22:41:46'),
(66, 'create_order_from_seeder', 'Order is created from the checkout page', NULL, 16, NULL, '2021-07-04 06:41:46', '2021-07-04 06:41:46'),
(67, 'confirm_order', 'Order was verified by %user_name%', 0, 16, NULL, '2021-07-04 06:41:46', '2021-07-04 06:41:46'),
(68, 'confirm_payment', 'Payment was confirmed (amount $1,847.60) by %user_name%', 0, 16, NULL, '2021-07-12 22:41:46', '2021-07-12 22:41:46'),
(69, 'create_shipment', 'Created shipment for order', 0, 16, NULL, '2021-07-12 22:41:46', '2021-07-12 22:41:46'),
(70, 'update_status', 'Changed status of shipping to : Delivered . Updated by: %user_name%', 0, 16, NULL, '2021-07-12 22:41:46', '2021-07-12 22:41:46'),
(71, 'create_order_from_seeder', 'Order is created from the checkout page', NULL, 17, NULL, '2021-07-04 06:41:47', '2021-07-04 06:41:47'),
(72, 'confirm_order', 'Order was verified by %user_name%', 0, 17, NULL, '2021-07-04 06:41:47', '2021-07-04 06:41:47'),
(73, 'confirm_payment', 'Payment was confirmed (amount $553.3) by %user_name%', 0, 17, NULL, '2021-07-12 22:41:47', '2021-07-12 22:41:47'),
(74, 'create_shipment', 'Created shipment for order', 0, 17, NULL, '2021-07-12 22:41:47', '2021-07-12 22:41:47'),
(75, 'update_status', 'Changed status of shipping to : Delivered . Updated by: %user_name%', 0, 17, NULL, '2021-07-12 22:41:47', '2021-07-12 22:41:47'),
(76, 'create_order_from_seeder', 'Order is created from the checkout page', NULL, 18, NULL, '2021-07-02 02:41:47', '2021-07-02 02:41:47'),
(77, 'confirm_order', 'Order was verified by %user_name%', 0, 18, NULL, '2021-07-02 02:41:47', '2021-07-02 02:41:47'),
(78, 'confirm_payment', 'Payment was confirmed (amount $2,101.80) by %user_name%', 0, 18, NULL, '2021-07-12 22:41:47', '2021-07-12 22:41:47'),
(79, 'create_shipment', 'Created shipment for order', 0, 18, NULL, '2021-07-12 22:41:47', '2021-07-12 22:41:47'),
(80, 'update_status', 'Changed status of shipping to : Delivered . Updated by: %user_name%', 0, 18, NULL, '2021-07-12 22:41:47', '2021-07-12 22:41:47'),
(81, 'create_order_from_seeder', 'Order is created from the checkout page', NULL, 19, NULL, '2021-07-03 22:41:47', '2021-07-03 22:41:47'),
(82, 'confirm_order', 'Order was verified by %user_name%', 0, 19, NULL, '2021-07-03 22:41:47', '2021-07-03 22:41:47'),
(83, 'confirm_payment', 'Payment was confirmed (amount $3,871.90) by %user_name%', 0, 19, NULL, '2021-07-12 22:41:47', '2021-07-12 22:41:47'),
(84, 'create_shipment', 'Created shipment for order', 0, 19, NULL, '2021-07-12 22:41:47', '2021-07-12 22:41:47'),
(85, 'update_status', 'Changed status of shipping to : Delivered . Updated by: %user_name%', 0, 19, NULL, '2021-07-12 22:41:47', '2021-07-12 22:41:47'),
(86, 'create_order_from_seeder', 'Order is created from the checkout page', NULL, 20, NULL, '2021-07-02 22:41:47', '2021-07-02 22:41:47'),
(87, 'confirm_order', 'Order was verified by %user_name%', 0, 20, NULL, '2021-07-02 22:41:47', '2021-07-02 22:41:47'),
(88, 'confirm_payment', 'Payment was confirmed (amount $1,559.30) by %user_name%', 0, 20, NULL, '2021-07-12 22:41:47', '2021-07-12 22:41:47'),
(89, 'create_shipment', 'Created shipment for order', 0, 20, NULL, '2021-07-12 22:41:47', '2021-07-12 22:41:47'),
(90, 'update_status', 'Changed status of shipping to : Delivered . Updated by: %user_name%', 0, 20, NULL, '2021-07-12 22:41:47', '2021-07-12 22:41:47'),
(91, 'create_order_from_seeder', 'Order is created from the checkout page', NULL, 21, NULL, '2021-07-06 12:41:47', '2021-07-06 12:41:47'),
(92, 'confirm_order', 'Order was verified by %user_name%', 0, 21, NULL, '2021-07-06 12:41:47', '2021-07-06 12:41:47'),
(93, 'confirm_payment', 'Payment was confirmed (amount $1,389.30) by %user_name%', 0, 21, NULL, '2021-07-12 22:41:47', '2021-07-12 22:41:47'),
(94, 'create_shipment', 'Created shipment for order', 0, 21, NULL, '2021-07-12 22:41:47', '2021-07-12 22:41:47'),
(95, 'update_status', 'Changed status of shipping to : Delivered . Updated by: %user_name%', 0, 21, NULL, '2021-07-12 22:41:47', '2021-07-12 22:41:47'),
(96, 'create_order_from_seeder', 'Order is created from the checkout page', NULL, 22, NULL, '2021-07-09 06:41:47', '2021-07-09 06:41:47'),
(97, 'confirm_order', 'Order was verified by %user_name%', 0, 22, NULL, '2021-07-09 06:41:47', '2021-07-09 06:41:47'),
(98, 'confirm_payment', 'Payment was confirmed (amount $3,010.70) by %user_name%', 0, 22, NULL, '2021-07-12 22:41:47', '2021-07-12 22:41:47'),
(99, 'create_shipment', 'Created shipment for order', 0, 22, NULL, '2021-07-12 22:41:47', '2021-07-12 22:41:47'),
(100, 'update_status', 'Changed status of shipping to : Delivered . Updated by: %user_name%', 0, 22, NULL, '2021-07-12 22:41:47', '2021-07-12 22:41:47'),
(101, 'create_order_from_seeder', 'Order is created from the checkout page', NULL, 23, NULL, '2021-07-10 10:41:47', '2021-07-10 10:41:47'),
(102, 'confirm_order', 'Order was verified by %user_name%', 0, 23, NULL, '2021-07-10 10:41:47', '2021-07-10 10:41:47'),
(103, 'confirm_payment', 'Payment was confirmed (amount $2,569.90) by %user_name%', 0, 23, NULL, '2021-07-12 22:41:47', '2021-07-12 22:41:47'),
(104, 'create_shipment', 'Created shipment for order', 0, 23, NULL, '2021-07-12 22:41:47', '2021-07-12 22:41:47'),
(105, 'update_status', 'Changed status of shipping to : Delivered . Updated by: %user_name%', 0, 23, NULL, '2021-07-12 22:41:47', '2021-07-12 22:41:47'),
(106, 'create_order_from_seeder', 'Order is created from the checkout page', NULL, 24, NULL, '2021-07-06 06:41:47', '2021-07-06 06:41:47'),
(107, 'confirm_order', 'Order was verified by %user_name%', 0, 24, NULL, '2021-07-06 06:41:47', '2021-07-06 06:41:47'),
(108, 'create_shipment', 'Created shipment for order', 0, 24, NULL, '2021-07-12 22:41:47', '2021-07-12 22:41:47'),
(109, 'create_order_from_seeder', 'Order is created from the checkout page', NULL, 25, NULL, '2021-07-06 06:41:47', '2021-07-06 06:41:47'),
(110, 'confirm_order', 'Order was verified by %user_name%', 0, 25, NULL, '2021-07-06 06:41:47', '2021-07-06 06:41:47'),
(111, 'confirm_payment', 'Payment was confirmed (amount $3,757.20) by %user_name%', 0, 25, NULL, '2021-07-12 22:41:47', '2021-07-12 22:41:47'),
(112, 'create_shipment', 'Created shipment for order', 0, 25, NULL, '2021-07-12 22:41:47', '2021-07-12 22:41:47'),
(113, 'create_order_from_seeder', 'Order is created from the checkout page', NULL, 26, NULL, '2021-07-06 22:41:47', '2021-07-06 22:41:47'),
(114, 'confirm_order', 'Order was verified by %user_name%', 0, 26, NULL, '2021-07-06 22:41:47', '2021-07-06 22:41:47'),
(115, 'confirm_payment', 'Payment was confirmed (amount $1,457.30) by %user_name%', 0, 26, NULL, '2021-07-12 22:41:47', '2021-07-12 22:41:47'),
(116, 'create_shipment', 'Created shipment for order', 0, 26, NULL, '2021-07-12 22:41:47', '2021-07-12 22:41:47'),
(117, 'update_status', 'Changed status of shipping to : Delivered . Updated by: %user_name%', 0, 26, NULL, '2021-07-12 22:41:47', '2021-07-12 22:41:47'),
(118, 'create_order_from_seeder', 'Order is created from the checkout page', NULL, 27, NULL, '2021-07-05 10:41:47', '2021-07-05 10:41:47'),
(119, 'confirm_order', 'Order was verified by %user_name%', 0, 27, NULL, '2021-07-05 10:41:47', '2021-07-05 10:41:47'),
(120, 'confirm_payment', 'Payment was confirmed (amount $1,167.60) by %user_name%', 0, 27, NULL, '2021-07-12 22:41:47', '2021-07-12 22:41:47'),
(121, 'create_shipment', 'Created shipment for order', 0, 27, NULL, '2021-07-12 22:41:47', '2021-07-12 22:41:47'),
(122, 'create_order_from_seeder', 'Order is created from the checkout page', NULL, 28, NULL, '2021-07-12 06:41:47', '2021-07-12 06:41:47'),
(123, 'confirm_order', 'Order was verified by %user_name%', 0, 28, NULL, '2021-07-12 06:41:47', '2021-07-12 06:41:47'),
(124, 'confirm_payment', 'Payment was confirmed (amount $1,847.60) by %user_name%', 0, 28, NULL, '2021-07-12 22:41:47', '2021-07-12 22:41:47'),
(125, 'create_shipment', 'Created shipment for order', 0, 28, NULL, '2021-07-12 22:41:47', '2021-07-12 22:41:47'),
(126, 'update_status', 'Changed status of shipping to : Delivered . Updated by: %user_name%', 0, 28, NULL, '2021-07-12 22:41:47', '2021-07-12 22:41:47'),
(127, 'create_order_from_seeder', 'Order is created from the checkout page', NULL, 29, NULL, '2021-07-06 06:41:47', '2021-07-06 06:41:47'),
(128, 'confirm_order', 'Order was verified by %user_name%', 0, 29, NULL, '2021-07-06 06:41:47', '2021-07-06 06:41:47'),
(129, 'create_shipment', 'Created shipment for order', 0, 29, NULL, '2021-07-12 22:41:47', '2021-07-12 22:41:47'),
(130, 'create_order_from_seeder', 'Order is created from the checkout page', NULL, 30, NULL, '2021-07-07 14:41:47', '2021-07-07 14:41:47'),
(131, 'confirm_order', 'Order was verified by %user_name%', 0, 30, NULL, '2021-07-07 14:41:47', '2021-07-07 14:41:47'),
(132, 'create_shipment', 'Created shipment for order', 0, 30, NULL, '2021-07-12 22:41:47', '2021-07-12 22:41:47'),
(133, 'update_status', 'Changed status of shipping to : Delivered . Updated by: %user_name%', 0, 30, NULL, '2021-07-12 22:41:47', '2021-07-12 22:41:47'),
(134, 'create_order_from_seeder', 'Order is created from the checkout page', NULL, 31, NULL, '2021-07-08 20:41:47', '2021-07-08 20:41:47'),
(135, 'confirm_order', 'Order was verified by %user_name%', 0, 31, NULL, '2021-07-08 20:41:47', '2021-07-08 20:41:47'),
(136, 'create_shipment', 'Created shipment for order', 0, 31, NULL, '2021-07-12 22:41:47', '2021-07-12 22:41:47'),
(137, 'create_order_from_seeder', 'Order is created from the checkout page', NULL, 32, NULL, '2021-07-07 16:41:47', '2021-07-07 16:41:47'),
(138, 'confirm_order', 'Order was verified by %user_name%', 0, 32, NULL, '2021-07-07 16:41:47', '2021-07-07 16:41:47'),
(139, 'confirm_payment', 'Payment was confirmed (amount $2,886.10) by %user_name%', 0, 32, NULL, '2021-07-12 22:41:47', '2021-07-12 22:41:47'),
(140, 'create_shipment', 'Created shipment for order', 0, 32, NULL, '2021-07-12 22:41:47', '2021-07-12 22:41:47'),
(141, 'update_status', 'Changed status of shipping to : Delivered . Updated by: %user_name%', 0, 32, NULL, '2021-07-12 22:41:47', '2021-07-12 22:41:47'),
(142, 'create_order_from_seeder', 'Order is created from the checkout page', NULL, 33, NULL, '2021-07-10 22:41:47', '2021-07-10 22:41:47'),
(143, 'confirm_order', 'Order was verified by %user_name%', 0, 33, NULL, '2021-07-10 22:41:47', '2021-07-10 22:41:47'),
(144, 'confirm_payment', 'Payment was confirmed (amount $553.3) by %user_name%', 0, 33, NULL, '2021-07-12 22:41:47', '2021-07-12 22:41:47'),
(145, 'create_shipment', 'Created shipment for order', 0, 33, NULL, '2021-07-12 22:41:47', '2021-07-12 22:41:47'),
(146, 'update_status', 'Changed status of shipping to : Delivered . Updated by: %user_name%', 0, 33, NULL, '2021-07-12 22:41:47', '2021-07-12 22:41:47'),
(147, 'create_order_from_seeder', 'Order is created from the checkout page', NULL, 34, NULL, '2021-07-10 10:41:47', '2021-07-10 10:41:47'),
(148, 'confirm_order', 'Order was verified by %user_name%', 0, 34, NULL, '2021-07-10 10:41:47', '2021-07-10 10:41:47'),
(149, 'create_shipment', 'Created shipment for order', 0, 34, NULL, '2021-07-12 22:41:47', '2021-07-12 22:41:47'),
(150, 'update_status', 'Changed status of shipping to : Delivered . Updated by: %user_name%', 0, 34, NULL, '2021-07-12 22:41:47', '2021-07-12 22:41:47'),
(151, 'create_order_from_seeder', 'Order is created from the checkout page', NULL, 35, NULL, '2021-07-12 02:41:47', '2021-07-12 02:41:47'),
(152, 'confirm_order', 'Order was verified by %user_name%', 0, 35, NULL, '2021-07-12 02:41:47', '2021-07-12 02:41:47'),
(153, 'create_shipment', 'Created shipment for order', 0, 35, NULL, '2021-07-12 22:41:47', '2021-07-12 22:41:47'),
(154, 'update_status', 'Changed status of shipping to : Delivered . Updated by: %user_name%', 0, 35, NULL, '2021-07-12 22:41:47', '2021-07-12 22:41:47'),
(155, 'create_order_from_seeder', 'Order is created from the checkout page', NULL, 36, NULL, '2021-07-12 02:41:47', '2021-07-12 02:41:47'),
(156, 'confirm_order', 'Order was verified by %user_name%', 0, 36, NULL, '2021-07-12 02:41:47', '2021-07-12 02:41:47'),
(157, 'confirm_payment', 'Payment was confirmed (amount $584.1) by %user_name%', 0, 36, NULL, '2021-07-12 22:41:47', '2021-07-12 22:41:47'),
(158, 'create_shipment', 'Created shipment for order', 0, 36, NULL, '2021-07-12 22:41:47', '2021-07-12 22:41:47'),
(159, 'create_order_from_seeder', 'Order is created from the checkout page', NULL, 37, NULL, '2021-07-10 20:41:47', '2021-07-10 20:41:47'),
(160, 'confirm_order', 'Order was verified by %user_name%', 0, 37, NULL, '2021-07-10 20:41:47', '2021-07-10 20:41:47'),
(161, 'create_shipment', 'Created shipment for order', 0, 37, NULL, '2021-07-12 22:41:47', '2021-07-12 22:41:47'),
(162, 'create_order_from_seeder', 'Order is created from the checkout page', NULL, 38, NULL, '2021-07-11 14:41:47', '2021-07-11 14:41:47'),
(163, 'confirm_order', 'Order was verified by %user_name%', 0, 38, NULL, '2021-07-11 14:41:47', '2021-07-11 14:41:47'),
(164, 'confirm_payment', 'Payment was confirmed (amount $2,761.20) by %user_name%', 0, 38, NULL, '2021-07-12 22:41:47', '2021-07-12 22:41:47'),
(165, 'create_shipment', 'Created shipment for order', 0, 38, NULL, '2021-07-12 22:41:47', '2021-07-12 22:41:47'),
(166, 'create_order_from_seeder', 'Order is created from the checkout page', NULL, 39, NULL, '2021-07-09 14:41:47', '2021-07-09 14:41:47'),
(167, 'confirm_order', 'Order was verified by %user_name%', 0, 39, NULL, '2021-07-09 14:41:47', '2021-07-09 14:41:47'),
(168, 'confirm_payment', 'Payment was confirmed (amount $3,977.30) by %user_name%', 0, 39, NULL, '2021-07-12 22:41:47', '2021-07-12 22:41:47'),
(169, 'create_shipment', 'Created shipment for order', 0, 39, NULL, '2021-07-12 22:41:47', '2021-07-12 22:41:47'),
(170, 'create_order_from_seeder', 'Order is created from the checkout page', NULL, 40, NULL, '2021-07-10 14:41:47', '2021-07-10 14:41:47'),
(171, 'confirm_order', 'Order was verified by %user_name%', 0, 40, NULL, '2021-07-10 14:41:47', '2021-07-10 14:41:47'),
(172, 'create_shipment', 'Created shipment for order', 0, 40, NULL, '2021-07-12 22:41:47', '2021-07-12 22:41:47'),
(173, 'update_status', 'Changed status of shipping to : Delivered . Updated by: %user_name%', 0, 40, NULL, '2021-07-12 22:41:47', '2021-07-12 22:41:47'),
(174, 'create_order_from_seeder', 'Order is created from the checkout page', NULL, 41, NULL, '2021-07-10 22:41:47', '2021-07-10 22:41:47'),
(175, 'confirm_order', 'Order was verified by %user_name%', 0, 41, NULL, '2021-07-10 22:41:47', '2021-07-10 22:41:47'),
(176, 'create_shipment', 'Created shipment for order', 0, 41, NULL, '2021-07-12 22:41:47', '2021-07-12 22:41:47'),
(177, 'create_order_from_seeder', 'Order is created from the checkout page', NULL, 42, NULL, '2021-07-12 10:41:47', '2021-07-12 10:41:47'),
(178, 'confirm_order', 'Order was verified by %user_name%', 0, 42, NULL, '2021-07-12 10:41:47', '2021-07-12 10:41:47'),
(179, 'create_shipment', 'Created shipment for order', 0, 42, NULL, '2021-07-12 22:41:47', '2021-07-12 22:41:47'),
(180, 'update_status', 'Changed status of shipping to : Delivered . Updated by: %user_name%', 0, 42, NULL, '2021-07-12 22:41:47', '2021-07-12 22:41:47'),
(181, 'create_order_from_seeder', 'Order is created from the checkout page', NULL, 43, NULL, '2021-07-12 10:41:47', '2021-07-12 10:41:47'),
(182, 'confirm_order', 'Order was verified by %user_name%', 0, 43, NULL, '2021-07-12 10:41:47', '2021-07-12 10:41:47'),
(183, 'create_shipment', 'Created shipment for order', 0, 43, NULL, '2021-07-12 22:41:47', '2021-07-12 22:41:47'),
(184, 'create_order_from_seeder', 'Order is created from the checkout page', NULL, 44, NULL, '2021-07-12 16:41:47', '2021-07-12 16:41:47'),
(185, 'confirm_order', 'Order was verified by %user_name%', 0, 44, NULL, '2021-07-12 16:41:47', '2021-07-12 16:41:47'),
(186, 'confirm_payment', 'Payment was confirmed (amount $2,694.30) by %user_name%', 0, 44, NULL, '2021-07-12 22:41:47', '2021-07-12 22:41:47'),
(187, 'create_shipment', 'Created shipment for order', 0, 44, NULL, '2021-07-12 22:41:47', '2021-07-12 22:41:47'),
(188, 'update_status', 'Changed status of shipping to : Delivered . Updated by: %user_name%', 0, 44, NULL, '2021-07-12 22:41:47', '2021-07-12 22:41:47'),
(189, 'create_order_from_seeder', 'Order is created from the checkout page', NULL, 45, NULL, '2021-07-12 10:41:47', '2021-07-12 10:41:47'),
(190, 'confirm_order', 'Order was verified by %user_name%', 0, 45, NULL, '2021-07-12 10:41:47', '2021-07-12 10:41:47'),
(191, 'confirm_payment', 'Payment was confirmed (amount $1,041.70) by %user_name%', 0, 45, NULL, '2021-07-12 22:41:47', '2021-07-12 22:41:47'),
(192, 'create_shipment', 'Created shipment for order', 0, 45, NULL, '2021-07-12 22:41:47', '2021-07-12 22:41:47'),
(193, 'update_status', 'Changed status of shipping to : Delivered . Updated by: %user_name%', 0, 45, NULL, '2021-07-12 22:41:47', '2021-07-12 22:41:47'),
(194, 'create_order_from_seeder', 'Order is created from the checkout page', NULL, 46, NULL, '2021-07-11 22:41:47', '2021-07-11 22:41:47'),
(195, 'confirm_order', 'Order was verified by %user_name%', 0, 46, NULL, '2021-07-11 22:41:47', '2021-07-11 22:41:47'),
(196, 'confirm_payment', 'Payment was confirmed (amount $1,674.00) by %user_name%', 0, 46, NULL, '2021-07-12 22:41:47', '2021-07-12 22:41:47'),
(197, 'create_shipment', 'Created shipment for order', 0, 46, NULL, '2021-07-12 22:41:47', '2021-07-12 22:41:47'),
(198, 'create_order_from_seeder', 'Order is created from the checkout page', NULL, 47, NULL, '2021-07-12 02:41:47', '2021-07-12 02:41:47'),
(199, 'confirm_order', 'Order was verified by %user_name%', 0, 47, NULL, '2021-07-12 02:41:47', '2021-07-12 02:41:47'),
(200, 'confirm_payment', 'Payment was confirmed (amount $1,646.10) by %user_name%', 0, 47, NULL, '2021-07-12 22:41:47', '2021-07-12 22:41:47'),
(201, 'create_shipment', 'Created shipment for order', 0, 47, NULL, '2021-07-12 22:41:47', '2021-07-12 22:41:47'),
(202, 'update_status', 'Changed status of shipping to : Delivered . Updated by: %user_name%', 0, 47, NULL, '2021-07-12 22:41:47', '2021-07-12 22:41:47'),
(203, 'create_order_from_seeder', 'Order is created from the checkout page', NULL, 48, NULL, '2021-07-12 18:41:47', '2021-07-12 18:41:47'),
(204, 'confirm_order', 'Order was verified by %user_name%', 0, 48, NULL, '2021-07-12 18:41:47', '2021-07-12 18:41:47'),
(205, 'confirm_payment', 'Payment was confirmed (amount $1,167.60) by %user_name%', 0, 48, NULL, '2021-07-12 22:41:47', '2021-07-12 22:41:47'),
(206, 'create_shipment', 'Created shipment for order', 0, 48, NULL, '2021-07-12 22:41:47', '2021-07-12 22:41:47'),
(207, 'update_status', 'Changed status of shipping to : Delivered . Updated by: %user_name%', 0, 48, NULL, '2021-07-12 22:41:47', '2021-07-12 22:41:47'),
(208, 'create_order_from_seeder', 'Order is created from the checkout page', NULL, 49, NULL, '2021-07-12 18:41:47', '2021-07-12 18:41:47'),
(209, 'confirm_order', 'Order was verified by %user_name%', 0, 49, NULL, '2021-07-12 18:41:47', '2021-07-12 18:41:47'),
(210, 'confirm_payment', 'Payment was confirmed (amount $580.8) by %user_name%', 0, 49, NULL, '2021-07-12 22:41:47', '2021-07-12 22:41:47'),
(211, 'create_shipment', 'Created shipment for order', 0, 49, NULL, '2021-07-12 22:41:47', '2021-07-12 22:41:47'),
(212, 'update_status', 'Changed status of shipping to : Delivered . Updated by: %user_name%', 0, 49, NULL, '2021-07-12 22:41:47', '2021-07-12 22:41:47'),
(213, 'create_order_from_seeder', 'Order is created from the checkout page', NULL, 50, NULL, '2021-07-12 20:41:47', '2021-07-12 20:41:47'),
(214, 'confirm_order', 'Order was verified by %user_name%', 0, 50, NULL, '2021-07-12 20:41:47', '2021-07-12 20:41:47'),
(215, 'confirm_payment', 'Payment was confirmed (amount $1,559.30) by %user_name%', 0, 50, NULL, '2021-07-12 22:41:47', '2021-07-12 22:41:47'),
(216, 'create_shipment', 'Created shipment for order', 0, 50, NULL, '2021-07-12 22:41:47', '2021-07-12 22:41:47'),
(217, 'update_status', 'Changed status of shipping to : Delivered . Updated by: %user_name%', 0, 50, NULL, '2021-07-12 22:41:47', '2021-07-12 22:41:47'),
(218, 'create_order_from_seeder', 'Order is created from the checkout page', NULL, 51, NULL, '2021-07-12 04:41:47', '2021-07-12 04:41:47'),
(219, 'confirm_order', 'Order was verified by %user_name%', 0, 51, NULL, '2021-07-12 04:41:47', '2021-07-12 04:41:47'),
(220, 'create_shipment', 'Created shipment for order', 0, 51, NULL, '2021-07-12 22:41:47', '2021-07-12 22:41:47'),
(221, 'update_status', 'Changed status of shipping to : Delivered . Updated by: %user_name%', 0, 51, NULL, '2021-07-12 22:41:47', '2021-07-12 22:41:47'),
(222, 'update_status', 'Order confirmed by %user_name%', 0, 5, NULL, '2021-07-12 22:41:47', '2021-07-12 22:41:47'),
(223, 'update_status', 'Order confirmed by %user_name%', 0, 6, NULL, '2021-07-12 22:41:48', '2021-07-12 22:41:48'),
(224, 'update_status', 'Order confirmed by %user_name%', 0, 9, NULL, '2021-07-12 22:41:49', '2021-07-12 22:41:49'),
(225, 'update_status', 'Order confirmed by %user_name%', 0, 11, NULL, '2021-07-12 22:41:49', '2021-07-12 22:41:49'),
(226, 'update_status', 'Order confirmed by %user_name%', 0, 12, NULL, '2021-07-12 22:41:50', '2021-07-12 22:41:50'),
(227, 'update_status', 'Order confirmed by %user_name%', 0, 15, NULL, '2021-07-12 22:41:50', '2021-07-12 22:41:50'),
(228, 'update_status', 'Order confirmed by %user_name%', 0, 16, NULL, '2021-07-12 22:41:51', '2021-07-12 22:41:51'),
(229, 'update_status', 'Order confirmed by %user_name%', 0, 17, NULL, '2021-07-12 22:41:51', '2021-07-12 22:41:51'),
(230, 'update_status', 'Order confirmed by %user_name%', 0, 18, NULL, '2021-07-12 22:41:52', '2021-07-12 22:41:52'),
(231, 'update_status', 'Order confirmed by %user_name%', 0, 19, NULL, '2021-07-12 22:41:52', '2021-07-12 22:41:52'),
(232, 'update_status', 'Order confirmed by %user_name%', 0, 20, NULL, '2021-07-12 22:41:53', '2021-07-12 22:41:53'),
(233, 'update_status', 'Order confirmed by %user_name%', 0, 21, NULL, '2021-07-12 22:41:54', '2021-07-12 22:41:54'),
(234, 'update_status', 'Order confirmed by %user_name%', 0, 22, NULL, '2021-07-12 22:41:54', '2021-07-12 22:41:54'),
(235, 'update_status', 'Order confirmed by %user_name%', 0, 23, NULL, '2021-07-12 22:41:55', '2021-07-12 22:41:55'),
(236, 'update_status', 'Order confirmed by %user_name%', 0, 26, NULL, '2021-07-12 22:41:55', '2021-07-12 22:41:55'),
(237, 'update_status', 'Order confirmed by %user_name%', 0, 28, NULL, '2021-07-12 22:41:56', '2021-07-12 22:41:56'),
(238, 'update_status', 'Order confirmed by %user_name%', 0, 32, NULL, '2021-07-12 22:41:56', '2021-07-12 22:41:56'),
(239, 'update_status', 'Order confirmed by %user_name%', 0, 33, NULL, '2021-07-12 22:41:57', '2021-07-12 22:41:57'),
(240, 'update_status', 'Order confirmed by %user_name%', 0, 44, NULL, '2021-07-12 22:41:58', '2021-07-12 22:41:58'),
(241, 'update_status', 'Order confirmed by %user_name%', 0, 45, NULL, '2021-07-12 22:41:58', '2021-07-12 22:41:58'),
(242, 'update_status', 'Order confirmed by %user_name%', 0, 47, NULL, '2021-07-12 22:41:59', '2021-07-12 22:41:59'),
(243, 'update_status', 'Order confirmed by %user_name%', 0, 48, NULL, '2021-07-12 22:41:59', '2021-07-12 22:41:59'),
(244, 'update_status', 'Order confirmed by %user_name%', 0, 49, NULL, '2021-07-12 22:42:00', '2021-07-12 22:42:00'),
(245, 'update_status', 'Order confirmed by %user_name%', 0, 50, NULL, '2021-07-12 22:42:00', '2021-07-12 22:42:00');

-- --------------------------------------------------------

--
-- Table structure for table `ec_order_product`
--

CREATE TABLE `ec_order_product` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `qty` int(11) NOT NULL,
  `price` decimal(15,2) NOT NULL,
  `tax_amount` decimal(15,2) NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `product_id` int(10) UNSIGNED DEFAULT NULL,
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `weight` double(8,2) DEFAULT '0.00',
  `restock_quantity` int(10) UNSIGNED DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_order_product`
--

INSERT INTO `ec_order_product` (`id`, `order_id`, `qty`, `price`, `tax_amount`, `options`, `product_id`, `product_name`, `weight`, `restock_quantity`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '20.00', '2.00', '[]', 29, 'Beat Headphone', 732.00, 0, '2021-07-12 22:41:46', '2021-07-12 22:41:46'),
(2, 2, 1, '531.00', '53.10', '[]', 60, 'Apple MacBook Air Retina 12-Inch Laptop', 774.00, 0, '2021-07-12 22:41:46', '2021-07-12 22:41:46'),
(3, 3, 1, '829.00', '82.90', '[]', 35, 'Smart Watch External', 574.00, 0, '2021-07-12 22:41:46', '2021-07-12 22:41:46'),
(4, 4, 2, '995.00', '99.50', '[]', 66, 'Aveeno Moisturizing Body Shower 450ml', 1322.00, 0, '2021-07-12 22:41:46', '2021-07-12 22:41:46'),
(5, 5, 2, '40.50', '4.05', '[]', 27, 'Smart Watches', 1064.00, 0, '2021-07-12 22:41:46', '2021-07-12 22:41:46'),
(6, 5, 1, '40.50', '4.05', '[]', 28, 'Smart Watches', 532.00, 0, '2021-07-12 22:41:46', '2021-07-12 22:41:46'),
(7, 5, 2, '596.00', '59.60', '[]', 42, 'Audio Equipment', 1100.00, 0, '2021-07-12 22:41:46', '2021-07-12 22:41:46'),
(8, 6, 1, '540.00', '54.00', '[]', 55, 'B&O Play Mini Bluetooth Speaker', 783.00, 0, '2021-07-12 22:41:46', '2021-07-12 22:41:46'),
(9, 7, 2, '596.00', '59.60', '[]', 42, 'Audio Equipment', 1100.00, 0, '2021-07-12 22:41:46', '2021-07-12 22:41:46'),
(10, 7, 1, '531.00', '53.10', '[]', 60, 'Apple MacBook Air Retina 12-Inch Laptop', 774.00, 0, '2021-07-12 22:41:46', '2021-07-12 22:41:46'),
(11, 8, 1, '1212.00', '121.20', '[]', 49, 'Xbox One Wireless Controller Black Color', 672.00, 0, '2021-07-12 22:41:46', '2021-07-12 22:41:46'),
(12, 9, 3, '503.00', '50.30', '[]', 61, 'Samsung Gear VR Virtual Reality Headset', 2622.00, 0, '2021-07-12 22:41:46', '2021-07-12 22:41:46'),
(13, 10, 3, '1283.00', '128.30', '[]', 69, 'NYX Beauty Couton Pallete Makeup 12', 2061.00, 0, '2021-07-12 22:41:46', '2021-07-12 22:41:46'),
(14, 11, 3, '678.00', '67.80', '[]', 75, 'MVMTH Classical Leather Watch In Black', 2427.00, 0, '2021-07-12 22:41:46', '2021-07-12 22:41:46'),
(15, 12, 2, '556.00', '55.60', '[]', 33, 'Red & Black Headphone', 1514.00, 0, '2021-07-12 22:41:46', '2021-07-12 22:41:46'),
(16, 13, 2, '443.00', '44.30', '[]', 36, 'Nikon HD camera', 1262.00, 0, '2021-07-12 22:41:46', '2021-07-12 22:41:46'),
(17, 14, 2, '1249.00', '124.90', '[]', 45, 'Herschel Leather Duffle Bag In Brown Color', 1034.00, 0, '2021-07-12 22:41:46', '2021-07-12 22:41:46'),
(18, 14, 2, '528.00', '52.80', '[]', 52, 'Sound Intone I65 Earphone White Version', 1254.00, 0, '2021-07-12 22:41:46', '2021-07-12 22:41:46'),
(19, 15, 2, '678.00', '67.80', '[]', 76, 'MVMTH Classical Leather Watch In Black', 1618.00, 0, '2021-07-12 22:41:46', '2021-07-12 22:41:46'),
(20, 16, 3, '596.00', '59.60', '[]', 40, 'Audio Equipment', 1650.00, 0, '2021-07-12 22:41:46', '2021-07-12 22:41:46'),
(21, 17, 1, '503.00', '50.30', '[]', 62, 'Samsung Gear VR Virtual Reality Headset', 874.00, 0, '2021-07-12 22:41:47', '2021-07-12 22:41:47'),
(22, 18, 3, '678.00', '67.80', '[]', 75, 'MVMTH Classical Leather Watch In Black', 2427.00, 0, '2021-07-12 22:41:47', '2021-07-12 22:41:47'),
(23, 19, 3, '1249.00', '124.90', '[]', 45, 'Herschel Leather Duffle Bag In Brown Color', 1551.00, 0, '2021-07-12 22:41:47', '2021-07-12 22:41:47'),
(24, 20, 3, '503.00', '50.30', '[]', 61, 'Samsung Gear VR Virtual Reality Headset', 2622.00, 0, '2021-07-12 22:41:47', '2021-07-12 22:41:47'),
(25, 21, 1, '1263.00', '126.30', '[]', 43, 'Smart Televisions', 854.00, 0, '2021-07-12 22:41:47', '2021-07-12 22:41:47'),
(26, 22, 1, '1249.00', '124.90', '[]', 46, 'Herschel Leather Duffle Bag In Brown Color', 517.00, 0, '2021-07-12 22:41:47', '2021-07-12 22:41:47'),
(27, 22, 3, '528.00', '52.80', '[]', 54, 'Sound Intone I65 Earphone White Version', 1881.00, 0, '2021-07-12 22:41:47', '2021-07-12 22:41:47'),
(28, 23, 3, '829.00', '82.90', '[]', 35, 'Smart Watch External', 1722.00, 0, '2021-07-12 22:41:47', '2021-07-12 22:41:47'),
(29, 24, 2, '443.00', '44.30', '[]', 36, 'Nikon HD camera', 1262.00, 0, '2021-07-12 22:41:47', '2021-07-12 22:41:47'),
(30, 25, 3, '1212.00', '121.20', '[]', 49, 'Xbox One Wireless Controller Black Color', 2016.00, 0, '2021-07-12 22:41:47', '2021-07-12 22:41:47'),
(31, 26, 1, '20.00', '2.00', '[]', 29, 'Beat Headphone', 732.00, 0, '2021-07-12 22:41:47', '2021-07-12 22:41:47'),
(32, 26, 3, '20.00', '2.00', '[]', 30, 'Beat Headphone', 2196.00, 0, '2021-07-12 22:41:47', '2021-07-12 22:41:47'),
(33, 26, 3, '443.00', '44.30', '[]', 37, 'Nikon HD camera', 1893.00, 0, '2021-07-12 22:41:47', '2021-07-12 22:41:47'),
(34, 27, 2, '556.00', '55.60', '[]', 33, 'Red & Black Headphone', 1514.00, 0, '2021-07-12 22:41:47', '2021-07-12 22:41:47'),
(35, 28, 3, '596.00', '59.60', '[]', 42, 'Audio Equipment', 1650.00, 0, '2021-07-12 22:41:47', '2021-07-12 22:41:47'),
(36, 29, 2, '1249.00', '124.90', '[]', 45, 'Herschel Leather Duffle Bag In Brown Color', 1034.00, 0, '2021-07-12 22:41:47', '2021-07-12 22:41:47'),
(37, 30, 2, '995.00', '99.50', '[]', 66, 'Aveeno Moisturizing Body Shower 450ml', 1322.00, 0, '2021-07-12 22:41:47', '2021-07-12 22:41:47'),
(38, 31, 3, '20.00', '2.00', '[]', 32, 'Beat Headphone', 2196.00, 0, '2021-07-12 22:41:47', '2021-07-12 22:41:47'),
(39, 32, 3, '931.00', '93.10', '[]', 74, 'NYX Beauty Couton Pallete Makeup 12', 2487.00, 0, '2021-07-12 22:41:47', '2021-07-12 22:41:47'),
(40, 33, 1, '503.00', '50.30', '[]', 63, 'Samsung Gear VR Virtual Reality Headset', 874.00, 0, '2021-07-12 22:41:47', '2021-07-12 22:41:47'),
(41, 34, 1, '678.00', '67.80', '[]', 76, 'MVMTH Classical Leather Watch In Black', 809.00, 0, '2021-07-12 22:41:47', '2021-07-12 22:41:47'),
(42, 35, 2, '20.00', '2.00', '[]', 29, 'Beat Headphone', 1464.00, 0, '2021-07-12 22:41:47', '2021-07-12 22:41:47'),
(43, 36, 1, '531.00', '53.10', '[]', 59, 'Apple MacBook Air Retina 12-Inch Laptop', 774.00, 0, '2021-07-12 22:41:47', '2021-07-12 22:41:47'),
(44, 37, 3, '931.00', '93.10', '[]', 73, 'NYX Beauty Couton Pallete Makeup 12', 2487.00, 0, '2021-07-12 22:41:47', '2021-07-12 22:41:47'),
(45, 38, 2, '531.00', '53.10', '[]', 59, 'Apple MacBook Air Retina 12-Inch Laptop', 1548.00, 0, '2021-07-12 22:41:47', '2021-07-12 22:41:47'),
(46, 38, 3, '531.00', '53.10', '[]', 60, 'Apple MacBook Air Retina 12-Inch Laptop', 2322.00, 0, '2021-07-12 22:41:47', '2021-07-12 22:41:47'),
(47, 39, 3, '1283.00', '128.30', '[]', 69, 'NYX Beauty Couton Pallete Makeup 12', 2061.00, 0, '2021-07-12 22:41:47', '2021-07-12 22:41:47'),
(48, 40, 1, '931.00', '93.10', '[]', 71, 'NYX Beauty Couton Pallete Makeup 12', 829.00, 0, '2021-07-12 22:41:47', '2021-07-12 22:41:47'),
(49, 41, 3, '504.00', '50.40', '[]', 44, 'Samsung Smart Phone', 1734.00, 0, '2021-07-12 22:41:47', '2021-07-12 22:41:47'),
(50, 42, 2, '1212.00', '121.20', '[]', 47, 'Xbox One Wireless Controller Black Color', 1344.00, 0, '2021-07-12 22:41:47', '2021-07-12 22:41:47'),
(51, 43, 1, '531.00', '53.10', '[]', 60, 'Apple MacBook Air Retina 12-Inch Laptop', 774.00, 0, '2021-07-12 22:41:47', '2021-07-12 22:41:47'),
(52, 44, 2, '1283.00', '128.30', '[]', 69, 'NYX Beauty Couton Pallete Makeup 12', 1374.00, 0, '2021-07-12 22:41:47', '2021-07-12 22:41:47'),
(53, 45, 1, '443.00', '44.30', '[]', 38, 'Nikon HD camera', 631.00, 0, '2021-07-12 22:41:47', '2021-07-12 22:41:47'),
(54, 45, 1, '504.00', '50.40', '[]', 44, 'Samsung Smart Phone', 578.00, 0, '2021-07-12 22:41:47', '2021-07-12 22:41:47'),
(55, 46, 3, '540.00', '54.00', '[]', 56, 'B&O Play Mini Bluetooth Speaker', 2349.00, 0, '2021-07-12 22:41:47', '2021-07-12 22:41:47'),
(56, 47, 3, '531.00', '53.10', '[]', 60, 'Apple MacBook Air Retina 12-Inch Laptop', 2322.00, 0, '2021-07-12 22:41:47', '2021-07-12 22:41:47'),
(57, 48, 2, '556.00', '55.60', '[]', 34, 'Red & Black Headphone', 1514.00, 0, '2021-07-12 22:41:47', '2021-07-12 22:41:47'),
(58, 49, 1, '528.00', '52.80', '[]', 53, 'Sound Intone I65 Earphone White Version', 627.00, 0, '2021-07-12 22:41:47', '2021-07-12 22:41:47'),
(59, 50, 3, '503.00', '50.30', '[]', 63, 'Samsung Gear VR Virtual Reality Headset', 2622.00, 0, '2021-07-12 22:41:47', '2021-07-12 22:41:47'),
(60, 51, 1, '678.00', '67.80', '[]', 76, 'MVMTH Classical Leather Watch In Black', 809.00, 0, '2021-07-12 22:41:47', '2021-07-12 22:41:47');

-- --------------------------------------------------------

--
-- Table structure for table `ec_products`
--

CREATE TABLE `ec_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `images` text COLLATE utf8mb4_unicode_ci,
  `sku` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `quantity` int(10) UNSIGNED DEFAULT NULL,
  `allow_checkout_when_out_of_stock` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `with_storehouse_management` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `is_featured` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `options` text COLLATE utf8mb4_unicode_ci,
  `category_id` int(10) UNSIGNED DEFAULT NULL,
  `brand_id` int(10) UNSIGNED DEFAULT NULL,
  `is_variation` tinyint(4) NOT NULL DEFAULT '0',
  `is_searchable` tinyint(4) NOT NULL DEFAULT '0',
  `is_show_on_list` tinyint(4) NOT NULL DEFAULT '0',
  `sale_type` tinyint(4) NOT NULL DEFAULT '0',
  `price` double UNSIGNED DEFAULT NULL,
  `sale_price` double UNSIGNED DEFAULT NULL,
  `start_date` timestamp NULL DEFAULT NULL,
  `end_date` timestamp NULL DEFAULT NULL,
  `length` double(8,2) DEFAULT NULL,
  `wide` double(8,2) DEFAULT NULL,
  `height` double(8,2) DEFAULT NULL,
  `weight` double(8,2) DEFAULT NULL,
  `barcode` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `length_unit` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wide_unit` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `height_unit` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weight_unit` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `tax_id` int(10) UNSIGNED DEFAULT NULL,
  `views` bigint(20) NOT NULL DEFAULT '0',
  `stock_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'in_stock',
  `store_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_products`
--

INSERT INTO `ec_products` (`id`, `name`, `description`, `content`, `status`, `images`, `sku`, `order`, `quantity`, `allow_checkout_when_out_of_stock`, `with_storehouse_management`, `is_featured`, `options`, `category_id`, `brand_id`, `is_variation`, `is_searchable`, `is_show_on_list`, `sale_type`, `price`, `sale_price`, `start_date`, `end_date`, `length`, `wide`, `height`, `weight`, `barcode`, `length_unit`, `wide_unit`, `height_unit`, `weight_unit`, `created_at`, `updated_at`, `tax_id`, `views`, `stock_status`, `store_id`) VALUES
(1, 'Dual Camera 20MP', '<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>', 'published', '[\"products\\/1.jpg\"]', 'SW-155-A0', 0, 13, 0, 1, 1, NULL, NULL, 2, 0, 0, 0, 0, 80.25, NULL, NULL, NULL, 14.00, 20.00, 17.00, 516.00, NULL, NULL, NULL, NULL, NULL, '2021-07-12 22:41:31', '2021-07-12 22:41:46', 1, 57969, 'in_stock', 2),
(2, 'Smart Watches', '<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>', 'published', '[\"products\\/2.jpg\",\"products\\/2-1.jpg\",\"products\\/2-2.jpg\",\"products\\/2-3.jpg\"]', 'SW-170-A0', 0, 12, 0, 1, 1, NULL, NULL, 6, 0, 0, 0, 0, 40.5, NULL, NULL, NULL, 18.00, 19.00, 11.00, 532.00, NULL, NULL, NULL, NULL, NULL, '2021-07-12 22:41:31', '2021-07-12 22:41:46', 1, 23968, 'in_stock', 4),
(3, 'Beat Headphone', '<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>', 'published', '[\"products\\/3.jpg\"]', 'SW-144-A0', 0, 11, 0, 1, 1, NULL, NULL, 4, 0, 0, 0, 0, 20, NULL, NULL, NULL, 17.00, 19.00, 18.00, 732.00, NULL, NULL, NULL, NULL, NULL, '2021-07-12 22:41:31', '2021-07-12 22:41:46', 1, 82022, 'in_stock', 1),
(4, 'Red & Black Headphone', '<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>', 'published', '[\"products\\/4.jpg\",\"products\\/4-1.jpg\",\"products\\/4-2.jpg\",\"products\\/4-3.jpg\"]', 'SW-191-A0', 0, 10, 0, 1, 1, NULL, NULL, 5, 0, 0, 0, 0, 556, 472.6, NULL, NULL, 11.00, 17.00, 10.00, 757.00, NULL, NULL, NULL, NULL, NULL, '2021-07-12 22:41:31', '2021-07-12 22:41:46', 1, 98793, 'in_stock', 4),
(5, 'Smart Watch External', '<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>', 'published', '[\"products\\/5.jpg\",\"products\\/5-1.jpg\",\"products\\/5-2.jpg\",\"products\\/5-3.jpg\"]', 'SW-122-A0', 0, 20, 0, 1, 1, NULL, NULL, 1, 0, 0, 0, 0, 829, NULL, NULL, NULL, 10.00, 16.00, 12.00, 574.00, NULL, NULL, NULL, NULL, NULL, '2021-07-12 22:41:31', '2021-07-12 22:41:46', 1, 146614, 'in_stock', 4),
(6, 'Nikon HD camera', '<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>', 'published', '[\"products\\/6.jpg\"]', 'SW-173-A0', 0, 13, 0, 1, 1, NULL, NULL, 5, 0, 0, 0, 0, 443, NULL, NULL, NULL, 12.00, 14.00, 13.00, 631.00, NULL, NULL, NULL, NULL, NULL, '2021-07-12 22:41:31', '2021-07-12 22:41:46', 1, 30639, 'in_stock', 1),
(7, 'Audio Equipment', '<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>', 'published', '[\"products\\/7.jpg\"]', 'SW-139-A0', 0, 16, 0, 1, 1, NULL, NULL, 5, 0, 0, 0, 0, 596, NULL, NULL, NULL, 16.00, 14.00, 17.00, 550.00, NULL, NULL, NULL, NULL, NULL, '2021-07-12 22:41:31', '2021-07-12 22:41:46', 1, 93659, 'in_stock', 4),
(8, 'Smart Televisions', '<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>', 'published', '[\"products\\/8.jpg\",\"products\\/8-1.jpg\",\"products\\/8-2.jpg\",\"products\\/8-3.jpg\"]', 'SW-189-A0', 0, 15, 0, 1, 1, NULL, NULL, 7, 0, 0, 0, 0, 1263, 934.62, NULL, NULL, 13.00, 16.00, 18.00, 854.00, NULL, NULL, NULL, NULL, NULL, '2021-07-12 22:41:31', '2021-07-12 22:41:46', 1, 113352, 'in_stock', 2),
(9, 'Samsung Smart Phone', '<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>', 'published', '[\"products\\/9.jpg\",\"products\\/9-1.jpg\",\"products\\/9-2.jpg\"]', 'SW-185-A0', 0, 12, 0, 1, 1, NULL, NULL, 7, 0, 0, 0, 0, 504, NULL, NULL, NULL, 12.00, 16.00, 18.00, 578.00, NULL, NULL, NULL, NULL, NULL, '2021-07-12 22:41:31', '2021-07-12 22:41:46', 1, 74789, 'in_stock', 1),
(10, 'Herschel Leather Duffle Bag In Brown Color', '<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>', 'published', '[\"products\\/10.jpg\",\"products\\/10-1.jpg\",\"products\\/10-2.jpg\"]', 'SW-163-A0', 0, 19, 0, 1, 0, NULL, NULL, 3, 0, 0, 0, 0, 1249, NULL, NULL, NULL, 20.00, 10.00, 12.00, 517.00, NULL, NULL, NULL, NULL, NULL, '2021-07-12 22:41:31', '2021-07-12 22:41:46', 1, 71929, 'in_stock', 3),
(11, 'Xbox One Wireless Controller Black Color', '<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>', 'published', '[\"products\\/11.jpg\",\"products\\/11-1.jpg\",\"products\\/11-2.jpg\",\"products\\/11-3.jpg\"]', 'SW-105-A0', 0, 18, 0, 1, 0, NULL, NULL, 2, 0, 0, 0, 0, 1212, NULL, NULL, NULL, 19.00, 13.00, 17.00, 672.00, NULL, NULL, NULL, NULL, NULL, '2021-07-12 22:41:31', '2021-07-12 22:41:46', 1, 125178, 'in_stock', 5),
(12, 'EPSION Plaster Printer', '<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>', 'published', '[\"products\\/12.jpg\",\"products\\/12-1.jpg\",\"products\\/12-2.jpg\",\"products\\/12-3.jpg\"]', 'SW-108-A0', 0, 13, 0, 1, 0, NULL, NULL, 1, 0, 0, 0, 0, 596, 530.44, NULL, NULL, 17.00, 18.00, 15.00, 816.00, NULL, NULL, NULL, NULL, NULL, '2021-07-12 22:41:31', '2021-07-12 22:41:46', 1, 108064, 'in_stock', 2),
(13, 'Sound Intone I65 Earphone White Version', '<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>', 'published', '[\"products\\/13.jpg\",\"products\\/13-1.jpg\"]', 'SW-196-A0', 0, 12, 0, 1, 0, NULL, NULL, 1, 0, 0, 0, 0, 528, NULL, NULL, NULL, 10.00, 18.00, 14.00, 627.00, NULL, NULL, NULL, NULL, NULL, '2021-07-12 22:41:31', '2021-07-12 22:41:46', 1, 48369, 'in_stock', 3),
(14, 'B&O Play Mini Bluetooth Speaker', '<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>', 'published', '[\"products\\/14.jpg\"]', 'SW-114-A0', 0, 19, 0, 1, 0, NULL, NULL, 3, 0, 0, 0, 0, 540, NULL, NULL, NULL, 19.00, 16.00, 19.00, 783.00, NULL, NULL, NULL, NULL, NULL, '2021-07-12 22:41:31', '2021-07-12 22:41:46', 1, 168668, 'in_stock', 5),
(15, 'Apple MacBook Air Retina 13.3-Inch Laptop', '<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>', 'published', '[\"products\\/15.jpg\",\"products\\/15-1.jpg\"]', 'SW-157-A0', 0, 18, 0, 1, 0, NULL, NULL, 4, 0, 0, 0, 0, 570, NULL, NULL, NULL, 12.00, 10.00, 20.00, 870.00, NULL, NULL, NULL, NULL, NULL, '2021-07-12 22:41:31', '2021-07-12 22:41:46', 1, 34891, 'in_stock', 2),
(16, 'Apple MacBook Air Retina 12-Inch Laptop', '<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>', 'published', '[\"products\\/16.jpg\"]', 'SW-109-A0', 0, 18, 0, 1, 0, NULL, NULL, 5, 0, 0, 0, 0, 531, 377.01, NULL, NULL, 16.00, 19.00, 11.00, 774.00, NULL, NULL, NULL, NULL, NULL, '2021-07-12 22:41:31', '2021-07-12 22:41:46', 1, 173756, 'in_stock', 4),
(17, 'Samsung Gear VR Virtual Reality Headset', '<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>', 'published', '[\"products\\/17.jpg\",\"products\\/17-1.jpg\",\"products\\/17-2.jpg\",\"products\\/17-3.jpg\"]', 'SW-145-A0', 0, 13, 0, 1, 0, NULL, NULL, 4, 0, 0, 0, 0, 503, NULL, NULL, NULL, 12.00, 19.00, 15.00, 874.00, NULL, NULL, NULL, NULL, NULL, '2021-07-12 22:41:31', '2021-07-12 22:41:46', 1, 138912, 'in_stock', 2),
(18, 'Aveeno Moisturizing Body Shower 450ml', '<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>', 'published', '[\"products\\/18.jpg\",\"products\\/18-1.jpg\",\"products\\/18-2.jpg\",\"products\\/18-3.jpg\"]', 'SW-194-A0', 0, 14, 0, 1, 0, NULL, NULL, 1, 0, 0, 0, 0, 995, NULL, NULL, NULL, 17.00, 17.00, 17.00, 661.00, NULL, NULL, NULL, NULL, NULL, '2021-07-12 22:41:31', '2021-07-12 22:41:46', 1, 96409, 'in_stock', 5);
INSERT INTO `ec_products` (`id`, `name`, `description`, `content`, `status`, `images`, `sku`, `order`, `quantity`, `allow_checkout_when_out_of_stock`, `with_storehouse_management`, `is_featured`, `options`, `category_id`, `brand_id`, `is_variation`, `is_searchable`, `is_show_on_list`, `sale_type`, `price`, `sale_price`, `start_date`, `end_date`, `length`, `wide`, `height`, `weight`, `barcode`, `length_unit`, `wide_unit`, `height_unit`, `weight_unit`, `created_at`, `updated_at`, `tax_id`, `views`, `stock_status`, `store_id`) VALUES
(19, 'NYX Beauty Couton Pallete Makeup 12', '<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>', 'published', '[\"products\\/19.jpg\",\"products\\/19-1.jpg\",\"products\\/19-2.jpg\",\"products\\/19-3.jpg\"]', 'SW-165-A0', 0, 18, 0, 1, 0, NULL, NULL, 1, 0, 0, 0, 0, 1283, NULL, NULL, NULL, 14.00, 17.00, 10.00, 687.00, NULL, NULL, NULL, NULL, NULL, '2021-07-12 22:41:31', '2021-07-12 22:41:46', 1, 41978, 'in_stock', 3),
(20, 'NYX Beauty Couton Pallete Makeup 12', '<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>', 'published', '[\"products\\/20.jpg\",\"products\\/20-1.jpg\",\"products\\/20-2.jpg\",\"products\\/20-3.jpg\"]', 'SW-197-A0', 0, 18, 0, 1, 0, NULL, NULL, 6, 0, 0, 0, 0, 931, 782.04, NULL, NULL, 13.00, 18.00, 15.00, 829.00, NULL, NULL, NULL, NULL, NULL, '2021-07-12 22:41:31', '2021-07-12 22:41:46', 1, 107859, 'in_stock', 5),
(21, 'MVMTH Classical Leather Watch In Black', '<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>', 'published', '[\"products\\/21.jpg\",\"products\\/21-1.jpg\",\"products\\/21-2.jpg\"]', 'SW-177-A0', 0, 10, 0, 1, 0, NULL, NULL, 4, 0, 0, 0, 0, 678, NULL, NULL, NULL, 11.00, 14.00, 10.00, 809.00, NULL, NULL, NULL, NULL, NULL, '2021-07-12 22:41:31', '2021-07-12 22:41:46', 1, 175704, 'in_stock', 5),
(22, 'Baxter Care Hair Kit For Bearded Mens', '<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>', 'published', '[\"products\\/22.jpg\",\"products\\/22-1.jpg\",\"products\\/22-2.jpg\",\"products\\/22-3.jpg\"]', 'SW-157-A0', 0, 16, 0, 1, 0, NULL, NULL, 1, 0, 0, 0, 0, 463, NULL, NULL, NULL, 11.00, 17.00, 14.00, 859.00, NULL, NULL, NULL, NULL, NULL, '2021-07-12 22:41:31', '2021-07-12 22:41:46', 1, 171115, 'in_stock', 1),
(23, 'Ciate Palemore Lipstick Bold Red Color', '<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>', 'published', '[\"products\\/23.jpg\",\"products\\/23-1.jpg\",\"products\\/23-2.jpg\",\"products\\/23-3.jpg\"]', 'SW-163-A0', 0, 16, 0, 1, 0, NULL, NULL, 7, 0, 0, 0, 0, 774, NULL, NULL, NULL, 10.00, 11.00, 19.00, 609.00, NULL, NULL, NULL, NULL, NULL, '2021-07-12 22:41:31', '2021-07-12 22:41:46', 1, 170605, 'in_stock', 3),
(24, 'Dual Camera 20MP', NULL, NULL, 'published', '[\"products\\/1.jpg\"]', 'SW-155-A0', 0, 13, 0, 1, 0, NULL, NULL, 2, 1, 0, 0, 0, 80.25, NULL, NULL, NULL, 14.00, 20.00, 17.00, 516.00, NULL, NULL, NULL, NULL, NULL, '2021-07-12 22:41:31', '2021-07-12 22:41:31', NULL, 0, 'in_stock', NULL),
(25, 'Smart Watches', NULL, NULL, 'published', '[\"products\\/2.jpg\"]', 'SW-170-A0', 0, 12, 0, 1, 0, NULL, NULL, 6, 1, 0, 0, 0, 40.5, NULL, NULL, NULL, 18.00, 19.00, 11.00, 532.00, NULL, NULL, NULL, NULL, NULL, '2021-07-12 22:41:31', '2021-07-12 22:41:31', NULL, 0, 'in_stock', NULL),
(26, 'Smart Watches', NULL, NULL, 'published', '[\"products\\/2-1.jpg\"]', 'SW-170-A0-A1', 0, 12, 0, 1, 0, NULL, NULL, 6, 1, 0, 0, 0, 40.5, NULL, NULL, NULL, 18.00, 19.00, 11.00, 532.00, NULL, NULL, NULL, NULL, NULL, '2021-07-12 22:41:31', '2021-07-12 22:41:31', NULL, 0, 'in_stock', NULL),
(27, 'Smart Watches', NULL, NULL, 'published', '[\"products\\/2-2.jpg\"]', 'SW-170-A0-A2', 0, 12, 0, 1, 0, NULL, NULL, 6, 1, 0, 0, 0, 40.5, NULL, NULL, NULL, 18.00, 19.00, 11.00, 532.00, NULL, NULL, NULL, NULL, NULL, '2021-07-12 22:41:31', '2021-07-12 22:41:31', NULL, 0, 'in_stock', NULL),
(28, 'Smart Watches', NULL, NULL, 'published', '[\"products\\/2-3.jpg\"]', 'SW-170-A0-A3', 0, 12, 0, 1, 0, NULL, NULL, 6, 1, 0, 0, 0, 40.5, NULL, NULL, NULL, 18.00, 19.00, 11.00, 532.00, NULL, NULL, NULL, NULL, NULL, '2021-07-12 22:41:31', '2021-07-12 22:41:31', NULL, 0, 'in_stock', NULL),
(29, 'Beat Headphone', NULL, NULL, 'published', '[\"products\\/3.jpg\"]', 'SW-144-A0', 0, 11, 0, 1, 0, NULL, NULL, 4, 1, 0, 0, 0, 20, NULL, NULL, NULL, 17.00, 19.00, 18.00, 732.00, NULL, NULL, NULL, NULL, NULL, '2021-07-12 22:41:31', '2021-07-12 22:41:31', NULL, 0, 'in_stock', NULL),
(30, 'Beat Headphone', NULL, NULL, 'published', '[\"products\\/3.jpg\"]', 'SW-144-A0-A1', 0, 11, 0, 1, 0, NULL, NULL, 4, 1, 0, 0, 0, 20, NULL, NULL, NULL, 17.00, 19.00, 18.00, 732.00, NULL, NULL, NULL, NULL, NULL, '2021-07-12 22:41:31', '2021-07-12 22:41:31', NULL, 0, 'in_stock', NULL),
(31, 'Beat Headphone', NULL, NULL, 'published', '[\"products\\/3.jpg\"]', 'SW-144-A0-A2', 0, 11, 0, 1, 0, NULL, NULL, 4, 1, 0, 0, 0, 20, NULL, NULL, NULL, 17.00, 19.00, 18.00, 732.00, NULL, NULL, NULL, NULL, NULL, '2021-07-12 22:41:31', '2021-07-12 22:41:31', NULL, 0, 'in_stock', NULL),
(32, 'Beat Headphone', NULL, NULL, 'published', '[\"products\\/3.jpg\"]', 'SW-144-A0-A3', 0, 11, 0, 1, 0, NULL, NULL, 4, 1, 0, 0, 0, 20, NULL, NULL, NULL, 17.00, 19.00, 18.00, 732.00, NULL, NULL, NULL, NULL, NULL, '2021-07-12 22:41:31', '2021-07-12 22:41:31', NULL, 0, 'in_stock', NULL),
(33, 'Red & Black Headphone', NULL, NULL, 'published', '[\"products\\/4.jpg\"]', 'SW-191-A0', 0, 10, 0, 1, 0, NULL, NULL, 5, 1, 0, 0, 0, 556, 472.6, NULL, NULL, 11.00, 17.00, 10.00, 757.00, NULL, NULL, NULL, NULL, NULL, '2021-07-12 22:41:31', '2021-07-12 22:41:31', NULL, 0, 'in_stock', NULL),
(34, 'Red & Black Headphone', NULL, NULL, 'published', '[\"products\\/4-1.jpg\"]', 'SW-191-A0-A1', 0, 10, 0, 1, 0, NULL, NULL, 5, 1, 0, 0, 0, 556, 411.44, NULL, NULL, 11.00, 17.00, 10.00, 757.00, NULL, NULL, NULL, NULL, NULL, '2021-07-12 22:41:31', '2021-07-12 22:41:31', NULL, 0, 'in_stock', NULL),
(35, 'Smart Watch External', NULL, NULL, 'published', '[\"products\\/5.jpg\"]', 'SW-122-A0', 0, 20, 0, 1, 0, NULL, NULL, 1, 1, 0, 0, 0, 829, NULL, NULL, NULL, 10.00, 16.00, 12.00, 574.00, NULL, NULL, NULL, NULL, NULL, '2021-07-12 22:41:31', '2021-07-12 22:41:31', NULL, 0, 'in_stock', NULL),
(36, 'Nikon HD camera', NULL, NULL, 'published', '[\"products\\/6.jpg\"]', 'SW-173-A0', 0, 13, 0, 1, 0, NULL, NULL, 5, 1, 0, 0, 0, 443, NULL, NULL, NULL, 12.00, 14.00, 13.00, 631.00, NULL, NULL, NULL, NULL, NULL, '2021-07-12 22:41:31', '2021-07-12 22:41:31', NULL, 0, 'in_stock', NULL),
(37, 'Nikon HD camera', NULL, NULL, 'published', '[\"products\\/6.jpg\"]', 'SW-173-A0-A1', 0, 13, 0, 1, 0, NULL, NULL, 5, 1, 0, 0, 0, 443, NULL, NULL, NULL, 12.00, 14.00, 13.00, 631.00, NULL, NULL, NULL, NULL, NULL, '2021-07-12 22:41:31', '2021-07-12 22:41:31', NULL, 0, 'in_stock', NULL),
(38, 'Nikon HD camera', NULL, NULL, 'published', '[\"products\\/6.jpg\"]', 'SW-173-A0-A2', 0, 13, 0, 1, 0, NULL, NULL, 5, 1, 0, 0, 0, 443, NULL, NULL, NULL, 12.00, 14.00, 13.00, 631.00, NULL, NULL, NULL, NULL, NULL, '2021-07-12 22:41:31', '2021-07-12 22:41:31', NULL, 0, 'in_stock', NULL),
(39, 'Audio Equipment', NULL, NULL, 'published', '[\"products\\/7.jpg\"]', 'SW-139-A0', 0, 16, 0, 1, 0, NULL, NULL, 5, 1, 0, 0, 0, 596, NULL, NULL, NULL, 16.00, 14.00, 17.00, 550.00, NULL, NULL, NULL, NULL, NULL, '2021-07-12 22:41:31', '2021-07-12 22:41:31', NULL, 0, 'in_stock', NULL),
(40, 'Audio Equipment', NULL, NULL, 'published', '[\"products\\/7.jpg\"]', 'SW-139-A0-A1', 0, 16, 0, 1, 0, NULL, NULL, 5, 1, 0, 0, 0, 596, NULL, NULL, NULL, 16.00, 14.00, 17.00, 550.00, NULL, NULL, NULL, NULL, NULL, '2021-07-12 22:41:31', '2021-07-12 22:41:31', NULL, 0, 'in_stock', NULL),
(41, 'Audio Equipment', NULL, NULL, 'published', '[\"products\\/7.jpg\"]', 'SW-139-A0-A2', 0, 16, 0, 1, 0, NULL, NULL, 5, 1, 0, 0, 0, 596, NULL, NULL, NULL, 16.00, 14.00, 17.00, 550.00, NULL, NULL, NULL, NULL, NULL, '2021-07-12 22:41:31', '2021-07-12 22:41:31', NULL, 0, 'in_stock', NULL),
(42, 'Audio Equipment', NULL, NULL, 'published', '[\"products\\/7.jpg\"]', 'SW-139-A0-A3', 0, 16, 0, 1, 0, NULL, NULL, 5, 1, 0, 0, 0, 596, NULL, NULL, NULL, 16.00, 14.00, 17.00, 550.00, NULL, NULL, NULL, NULL, NULL, '2021-07-12 22:41:31', '2021-07-12 22:41:31', NULL, 0, 'in_stock', NULL),
(43, 'Smart Televisions', NULL, NULL, 'published', '[\"products\\/8.jpg\"]', 'SW-189-A0', 0, 15, 0, 1, 0, NULL, NULL, 7, 1, 0, 0, 0, 1263, 934.62, NULL, NULL, 13.00, 16.00, 18.00, 854.00, NULL, NULL, NULL, NULL, NULL, '2021-07-12 22:41:31', '2021-07-12 22:41:31', NULL, 0, 'in_stock', NULL),
(44, 'Samsung Smart Phone', NULL, NULL, 'published', '[\"products\\/9.jpg\"]', 'SW-185-A0', 0, 12, 0, 1, 0, NULL, NULL, 7, 1, 0, 0, 0, 504, NULL, NULL, NULL, 12.00, 16.00, 18.00, 578.00, NULL, NULL, NULL, NULL, NULL, '2021-07-12 22:41:31', '2021-07-12 22:41:31', NULL, 0, 'in_stock', NULL),
(45, 'Herschel Leather Duffle Bag In Brown Color', NULL, NULL, 'published', '[\"products\\/10.jpg\"]', 'SW-163-A0', 0, 19, 0, 1, 0, NULL, NULL, 3, 1, 0, 0, 0, 1249, NULL, NULL, NULL, 20.00, 10.00, 12.00, 517.00, NULL, NULL, NULL, NULL, NULL, '2021-07-12 22:41:31', '2021-07-12 22:41:31', NULL, 0, 'in_stock', NULL),
(46, 'Herschel Leather Duffle Bag In Brown Color', NULL, NULL, 'published', '[\"products\\/10-1.jpg\"]', 'SW-163-A0-A1', 0, 19, 0, 1, 0, NULL, NULL, 3, 1, 0, 0, 0, 1249, NULL, NULL, NULL, 20.00, 10.00, 12.00, 517.00, NULL, NULL, NULL, NULL, NULL, '2021-07-12 22:41:31', '2021-07-12 22:41:31', NULL, 0, 'in_stock', NULL),
(47, 'Xbox One Wireless Controller Black Color', NULL, NULL, 'published', '[\"products\\/11.jpg\"]', 'SW-105-A0', 0, 18, 0, 1, 0, NULL, NULL, 2, 1, 0, 0, 0, 1212, NULL, NULL, NULL, 19.00, 13.00, 17.00, 672.00, NULL, NULL, NULL, NULL, NULL, '2021-07-12 22:41:31', '2021-07-12 22:41:31', NULL, 0, 'in_stock', NULL),
(48, 'Xbox One Wireless Controller Black Color', NULL, NULL, 'published', '[\"products\\/11-1.jpg\"]', 'SW-105-A0-A1', 0, 18, 0, 1, 0, NULL, NULL, 2, 1, 0, 0, 0, 1212, NULL, NULL, NULL, 19.00, 13.00, 17.00, 672.00, NULL, NULL, NULL, NULL, NULL, '2021-07-12 22:41:31', '2021-07-12 22:41:31', NULL, 0, 'in_stock', NULL),
(49, 'Xbox One Wireless Controller Black Color', NULL, NULL, 'published', '[\"products\\/11-2.jpg\"]', 'SW-105-A0-A2', 0, 18, 0, 1, 0, NULL, NULL, 2, 1, 0, 0, 0, 1212, NULL, NULL, NULL, 19.00, 13.00, 17.00, 672.00, NULL, NULL, NULL, NULL, NULL, '2021-07-12 22:41:31', '2021-07-12 22:41:31', NULL, 0, 'in_stock', NULL),
(50, 'EPSION Plaster Printer', NULL, NULL, 'published', '[\"products\\/12.jpg\"]', 'SW-108-A0', 0, 13, 0, 1, 0, NULL, NULL, 1, 1, 0, 0, 0, 596, 530.44, NULL, NULL, 17.00, 18.00, 15.00, 816.00, NULL, NULL, NULL, NULL, NULL, '2021-07-12 22:41:31', '2021-07-12 22:41:31', NULL, 0, 'in_stock', NULL),
(51, 'EPSION Plaster Printer', NULL, NULL, 'published', '[\"products\\/12-1.jpg\"]', 'SW-108-A0-A1', 0, 13, 0, 1, 0, NULL, NULL, 1, 1, 0, 0, 0, 596, 488.72, NULL, NULL, 17.00, 18.00, 15.00, 816.00, NULL, NULL, NULL, NULL, NULL, '2021-07-12 22:41:31', '2021-07-12 22:41:31', NULL, 0, 'in_stock', NULL),
(52, 'Sound Intone I65 Earphone White Version', NULL, NULL, 'published', '[\"products\\/13.jpg\"]', 'SW-196-A0', 0, 12, 0, 1, 0, NULL, NULL, 1, 1, 0, 0, 0, 528, NULL, NULL, NULL, 10.00, 18.00, 14.00, 627.00, NULL, NULL, NULL, NULL, NULL, '2021-07-12 22:41:31', '2021-07-12 22:41:31', NULL, 0, 'in_stock', NULL),
(53, 'Sound Intone I65 Earphone White Version', NULL, NULL, 'published', '[\"products\\/13-1.jpg\"]', 'SW-196-A0-A1', 0, 12, 0, 1, 0, NULL, NULL, 1, 1, 0, 0, 0, 528, NULL, NULL, NULL, 10.00, 18.00, 14.00, 627.00, NULL, NULL, NULL, NULL, NULL, '2021-07-12 22:41:31', '2021-07-12 22:41:31', NULL, 0, 'in_stock', NULL),
(54, 'Sound Intone I65 Earphone White Version', NULL, NULL, 'published', '[\"products\\/13.jpg\"]', 'SW-196-A0-A2', 0, 12, 0, 1, 0, NULL, NULL, 1, 1, 0, 0, 0, 528, NULL, NULL, NULL, 10.00, 18.00, 14.00, 627.00, NULL, NULL, NULL, NULL, NULL, '2021-07-12 22:41:31', '2021-07-12 22:41:31', NULL, 0, 'in_stock', NULL),
(55, 'B&O Play Mini Bluetooth Speaker', NULL, NULL, 'published', '[\"products\\/14.jpg\"]', 'SW-114-A0', 0, 19, 0, 1, 0, NULL, NULL, 3, 1, 0, 0, 0, 540, NULL, NULL, NULL, 19.00, 16.00, 19.00, 783.00, NULL, NULL, NULL, NULL, NULL, '2021-07-12 22:41:31', '2021-07-12 22:41:31', NULL, 0, 'in_stock', NULL),
(56, 'B&O Play Mini Bluetooth Speaker', NULL, NULL, 'published', '[\"products\\/14.jpg\"]', 'SW-114-A0-A1', 0, 19, 0, 1, 0, NULL, NULL, 3, 1, 0, 0, 0, 540, NULL, NULL, NULL, 19.00, 16.00, 19.00, 783.00, NULL, NULL, NULL, NULL, NULL, '2021-07-12 22:41:31', '2021-07-12 22:41:31', NULL, 0, 'in_stock', NULL),
(57, 'B&O Play Mini Bluetooth Speaker', NULL, NULL, 'published', '[\"products\\/14.jpg\"]', 'SW-114-A0-A2', 0, 19, 0, 1, 0, NULL, NULL, 3, 1, 0, 0, 0, 540, NULL, NULL, NULL, 19.00, 16.00, 19.00, 783.00, NULL, NULL, NULL, NULL, NULL, '2021-07-12 22:41:31', '2021-07-12 22:41:31', NULL, 0, 'in_stock', NULL),
(58, 'Apple MacBook Air Retina 13.3-Inch Laptop', NULL, NULL, 'published', '[\"products\\/15.jpg\"]', 'SW-157-A0', 0, 18, 0, 1, 0, NULL, NULL, 4, 1, 0, 0, 0, 570, NULL, NULL, NULL, 12.00, 10.00, 20.00, 870.00, NULL, NULL, NULL, NULL, NULL, '2021-07-12 22:41:31', '2021-07-12 22:41:31', NULL, 0, 'in_stock', NULL),
(59, 'Apple MacBook Air Retina 12-Inch Laptop', NULL, NULL, 'published', '[\"products\\/16.jpg\"]', 'SW-109-A0', 0, 18, 0, 1, 0, NULL, NULL, 5, 1, 0, 0, 0, 531, 377.01, NULL, NULL, 16.00, 19.00, 11.00, 774.00, NULL, NULL, NULL, NULL, NULL, '2021-07-12 22:41:31', '2021-07-12 22:41:31', NULL, 0, 'in_stock', NULL),
(60, 'Apple MacBook Air Retina 12-Inch Laptop', NULL, NULL, 'published', '[\"products\\/16.jpg\"]', 'SW-109-A0-A1', 0, 18, 0, 1, 0, NULL, NULL, 5, 1, 0, 0, 0, 531, 435.42, NULL, NULL, 16.00, 19.00, 11.00, 774.00, NULL, NULL, NULL, NULL, NULL, '2021-07-12 22:41:31', '2021-07-12 22:41:31', NULL, 0, 'in_stock', NULL),
(61, 'Samsung Gear VR Virtual Reality Headset', NULL, NULL, 'published', '[\"products\\/17.jpg\"]', 'SW-145-A0', 0, 13, 0, 1, 0, NULL, NULL, 4, 1, 0, 0, 0, 503, NULL, NULL, NULL, 12.00, 19.00, 15.00, 874.00, NULL, NULL, NULL, NULL, NULL, '2021-07-12 22:41:31', '2021-07-12 22:41:31', NULL, 0, 'in_stock', NULL),
(62, 'Samsung Gear VR Virtual Reality Headset', NULL, NULL, 'published', '[\"products\\/17-1.jpg\"]', 'SW-145-A0-A1', 0, 13, 0, 1, 0, NULL, NULL, 4, 1, 0, 0, 0, 503, NULL, NULL, NULL, 12.00, 19.00, 15.00, 874.00, NULL, NULL, NULL, NULL, NULL, '2021-07-12 22:41:31', '2021-07-12 22:41:31', NULL, 0, 'in_stock', NULL),
(63, 'Samsung Gear VR Virtual Reality Headset', NULL, NULL, 'published', '[\"products\\/17-2.jpg\"]', 'SW-145-A0-A2', 0, 13, 0, 1, 0, NULL, NULL, 4, 1, 0, 0, 0, 503, NULL, NULL, NULL, 12.00, 19.00, 15.00, 874.00, NULL, NULL, NULL, NULL, NULL, '2021-07-12 22:41:31', '2021-07-12 22:41:31', NULL, 0, 'in_stock', NULL),
(64, 'Samsung Gear VR Virtual Reality Headset', NULL, NULL, 'published', '[\"products\\/17-3.jpg\"]', 'SW-145-A0-A3', 0, 13, 0, 1, 0, NULL, NULL, 4, 1, 0, 0, 0, 503, NULL, NULL, NULL, 12.00, 19.00, 15.00, 874.00, NULL, NULL, NULL, NULL, NULL, '2021-07-12 22:41:31', '2021-07-12 22:41:31', NULL, 0, 'in_stock', NULL),
(65, 'Aveeno Moisturizing Body Shower 450ml', NULL, NULL, 'published', '[\"products\\/18.jpg\"]', 'SW-194-A0', 0, 14, 0, 1, 0, NULL, NULL, 1, 1, 0, 0, 0, 995, NULL, NULL, NULL, 17.00, 17.00, 17.00, 661.00, NULL, NULL, NULL, NULL, NULL, '2021-07-12 22:41:31', '2021-07-12 22:41:31', NULL, 0, 'in_stock', NULL),
(66, 'Aveeno Moisturizing Body Shower 450ml', NULL, NULL, 'published', '[\"products\\/18-1.jpg\"]', 'SW-194-A0-A1', 0, 14, 0, 1, 0, NULL, NULL, 1, 1, 0, 0, 0, 995, NULL, NULL, NULL, 17.00, 17.00, 17.00, 661.00, NULL, NULL, NULL, NULL, NULL, '2021-07-12 22:41:31', '2021-07-12 22:41:31', NULL, 0, 'in_stock', NULL),
(67, 'NYX Beauty Couton Pallete Makeup 12', NULL, NULL, 'published', '[\"products\\/19.jpg\"]', 'SW-165-A0', 0, 18, 0, 1, 0, NULL, NULL, 1, 1, 0, 0, 0, 1283, NULL, NULL, NULL, 14.00, 17.00, 10.00, 687.00, NULL, NULL, NULL, NULL, NULL, '2021-07-12 22:41:31', '2021-07-12 22:41:31', NULL, 0, 'in_stock', NULL),
(68, 'NYX Beauty Couton Pallete Makeup 12', NULL, NULL, 'published', '[\"products\\/19-1.jpg\"]', 'SW-165-A0-A1', 0, 18, 0, 1, 0, NULL, NULL, 1, 1, 0, 0, 0, 1283, NULL, NULL, NULL, 14.00, 17.00, 10.00, 687.00, NULL, NULL, NULL, NULL, NULL, '2021-07-12 22:41:31', '2021-07-12 22:41:31', NULL, 0, 'in_stock', NULL),
(69, 'NYX Beauty Couton Pallete Makeup 12', NULL, NULL, 'published', '[\"products\\/19-2.jpg\"]', 'SW-165-A0-A2', 0, 18, 0, 1, 0, NULL, NULL, 1, 1, 0, 0, 0, 1283, NULL, NULL, NULL, 14.00, 17.00, 10.00, 687.00, NULL, NULL, NULL, NULL, NULL, '2021-07-12 22:41:31', '2021-07-12 22:41:31', NULL, 0, 'in_stock', NULL),
(70, 'NYX Beauty Couton Pallete Makeup 12', NULL, NULL, 'published', '[\"products\\/19-3.jpg\"]', 'SW-165-A0-A3', 0, 18, 0, 1, 0, NULL, NULL, 1, 1, 0, 0, 0, 1283, NULL, NULL, NULL, 14.00, 17.00, 10.00, 687.00, NULL, NULL, NULL, NULL, NULL, '2021-07-12 22:41:31', '2021-07-12 22:41:31', NULL, 0, 'in_stock', NULL),
(71, 'NYX Beauty Couton Pallete Makeup 12', NULL, NULL, 'published', '[\"products\\/20.jpg\"]', 'SW-197-A0', 0, 18, 0, 1, 0, NULL, NULL, 6, 1, 0, 0, 0, 931, 782.04, NULL, NULL, 13.00, 18.00, 15.00, 829.00, NULL, NULL, NULL, NULL, NULL, '2021-07-12 22:41:31', '2021-07-12 22:41:31', NULL, 0, 'in_stock', NULL),
(72, 'NYX Beauty Couton Pallete Makeup 12', NULL, NULL, 'published', '[\"products\\/20-1.jpg\"]', 'SW-197-A0-A1', 0, 18, 0, 1, 0, NULL, NULL, 6, 1, 0, 0, 0, 931, 754.11, NULL, NULL, 13.00, 18.00, 15.00, 829.00, NULL, NULL, NULL, NULL, NULL, '2021-07-12 22:41:31', '2021-07-12 22:41:31', NULL, 0, 'in_stock', NULL),
(73, 'NYX Beauty Couton Pallete Makeup 12', NULL, NULL, 'published', '[\"products\\/20-2.jpg\"]', 'SW-197-A0-A2', 0, 18, 0, 1, 0, NULL, NULL, 6, 1, 0, 0, 0, 931, 688.94, NULL, NULL, 13.00, 18.00, 15.00, 829.00, NULL, NULL, NULL, NULL, NULL, '2021-07-12 22:41:31', '2021-07-12 22:41:31', NULL, 0, 'in_stock', NULL),
(74, 'NYX Beauty Couton Pallete Makeup 12', NULL, NULL, 'published', '[\"products\\/20-3.jpg\"]', 'SW-197-A0-A3', 0, 18, 0, 1, 0, NULL, NULL, 6, 1, 0, 0, 0, 931, 679.63, NULL, NULL, 13.00, 18.00, 15.00, 829.00, NULL, NULL, NULL, NULL, NULL, '2021-07-12 22:41:31', '2021-07-12 22:41:31', NULL, 0, 'in_stock', NULL),
(75, 'MVMTH Classical Leather Watch In Black', NULL, NULL, 'published', '[\"products\\/21.jpg\"]', 'SW-177-A0', 0, 10, 0, 1, 0, NULL, NULL, 4, 1, 0, 0, 0, 678, NULL, NULL, NULL, 11.00, 14.00, 10.00, 809.00, NULL, NULL, NULL, NULL, NULL, '2021-07-12 22:41:31', '2021-07-12 22:41:31', NULL, 0, 'in_stock', NULL),
(76, 'MVMTH Classical Leather Watch In Black', NULL, NULL, 'published', '[\"products\\/21-1.jpg\"]', 'SW-177-A0-A1', 0, 10, 0, 1, 0, NULL, NULL, 4, 1, 0, 0, 0, 678, NULL, NULL, NULL, 11.00, 14.00, 10.00, 809.00, NULL, NULL, NULL, NULL, NULL, '2021-07-12 22:41:31', '2021-07-12 22:41:31', NULL, 0, 'in_stock', NULL),
(77, 'Baxter Care Hair Kit For Bearded Mens', NULL, NULL, 'published', '[\"products\\/22.jpg\"]', 'SW-157-A0', 0, 16, 0, 1, 0, NULL, NULL, 1, 1, 0, 0, 0, 463, NULL, NULL, NULL, 11.00, 17.00, 14.00, 859.00, NULL, NULL, NULL, NULL, NULL, '2021-07-12 22:41:31', '2021-07-12 22:41:31', NULL, 0, 'in_stock', NULL),
(78, 'Ciate Palemore Lipstick Bold Red Color', NULL, NULL, 'published', '[\"products\\/23.jpg\"]', 'SW-163-A0', 0, 16, 0, 1, 0, NULL, NULL, 7, 1, 0, 0, 0, 774, NULL, NULL, NULL, 10.00, 11.00, 19.00, 609.00, NULL, NULL, NULL, NULL, NULL, '2021-07-12 22:41:31', '2021-07-12 22:41:31', NULL, 0, 'in_stock', NULL),
(79, 'Ciate Palemore Lipstick Bold Red Color', NULL, NULL, 'published', '[\"products\\/23-1.jpg\"]', 'SW-163-A0-A1', 0, 16, 0, 1, 0, NULL, NULL, 7, 1, 0, 0, 0, 774, NULL, NULL, NULL, 10.00, 11.00, 19.00, 609.00, NULL, NULL, NULL, NULL, NULL, '2021-07-12 22:41:31', '2021-07-12 22:41:31', NULL, 0, 'in_stock', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_attributes`
--

CREATE TABLE `ec_product_attributes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `attribute_set_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `order` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_product_attributes`
--

INSERT INTO `ec_product_attributes` (`id`, `attribute_set_id`, `title`, `slug`, `color`, `image`, `is_default`, `order`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Green', 'green', '#5FB7D4', NULL, 1, 1, 'published', '2021-07-12 22:41:31', '2021-07-12 22:41:31'),
(2, 1, 'Blue', 'blue', '#333333', NULL, 0, 2, 'published', '2021-07-12 22:41:31', '2021-07-12 22:41:31'),
(3, 1, 'Red', 'red', '#DA323F', NULL, 0, 3, 'published', '2021-07-12 22:41:31', '2021-07-12 22:41:31'),
(4, 1, 'Black', 'back', '#2F366C', NULL, 0, 4, 'published', '2021-07-12 22:41:31', '2021-07-12 22:41:31'),
(5, 1, 'Brown', 'brown', '#87554B', NULL, 0, 5, 'published', '2021-07-12 22:41:31', '2021-07-12 22:41:31'),
(6, 2, 'S', 's', NULL, NULL, 1, 1, 'published', '2021-07-12 22:41:31', '2021-07-12 22:41:31'),
(7, 2, 'M', 'm', NULL, NULL, 1, 2, 'published', '2021-07-12 22:41:31', '2021-07-12 22:41:31'),
(8, 2, 'L', 'l', NULL, NULL, 1, 3, 'published', '2021-07-12 22:41:32', '2021-07-12 22:41:32'),
(9, 2, 'XL', 'xl', NULL, NULL, 1, 4, 'published', '2021-07-12 22:41:32', '2021-07-12 22:41:32'),
(10, 2, 'XXL', 'xxl', NULL, NULL, 1, 5, 'published', '2021-07-12 22:41:32', '2021-07-12 22:41:32');

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_attribute_sets`
--

CREATE TABLE `ec_product_attribute_sets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `display_layout` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'swatch_dropdown',
  `is_searchable` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `is_comparable` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `is_use_in_product_listing` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_product_attribute_sets`
--

INSERT INTO `ec_product_attribute_sets` (`id`, `title`, `slug`, `display_layout`, `is_searchable`, `is_comparable`, `is_use_in_product_listing`, `status`, `order`, `created_at`, `updated_at`) VALUES
(1, 'Color', 'color', 'visual', 1, 1, 1, 'published', 0, '2021-07-12 22:41:31', '2021-07-12 22:41:31'),
(2, 'Size', 'size', 'text', 1, 1, 1, 'published', 1, '2021-07-12 22:41:31', '2021-07-12 22:41:31');

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_categories`
--

CREATE TABLE `ec_product_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT '0',
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_featured` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_product_categories`
--

INSERT INTO `ec_product_categories` (`id`, `name`, `parent_id`, `description`, `status`, `order`, `image`, `is_featured`, `created_at`, `updated_at`) VALUES
(1, 'Hot Promotions', 0, NULL, 'published', 0, NULL, 0, '2021-07-12 22:41:12', '2021-07-12 22:41:12'),
(2, 'Electronics', 0, NULL, 'published', 1, 'product-categories/1.jpg', 1, '2021-07-12 22:41:12', '2021-07-12 22:41:12'),
(3, 'Clothing', 0, NULL, 'published', 2, 'product-categories/2.jpg', 1, '2021-07-12 22:41:12', '2021-07-12 22:41:12'),
(4, 'Computers', 0, NULL, 'published', 3, 'product-categories/3.jpg', 1, '2021-07-12 22:41:12', '2021-07-12 22:41:12'),
(5, 'Home & Kitchen', 0, NULL, 'published', 4, 'product-categories/4.jpg', 1, '2021-07-12 22:41:12', '2021-07-12 22:41:12'),
(6, 'Health & Beauty', 0, NULL, 'published', 5, 'product-categories/5.jpg', 1, '2021-07-12 22:41:12', '2021-07-12 22:41:12'),
(7, 'Jewelry & Watch', 0, NULL, 'published', 6, 'product-categories/6.jpg', 1, '2021-07-12 22:41:12', '2021-07-12 22:41:12'),
(8, 'Technology Toys', 0, NULL, 'published', 7, 'product-categories/7.jpg', 1, '2021-07-12 22:41:12', '2021-07-12 22:41:12'),
(9, 'Phones', 0, NULL, 'published', 8, 'product-categories/8.jpg', 1, '2021-07-12 22:41:12', '2021-07-12 22:41:12'),
(10, 'Babies & Moms', 0, NULL, 'published', 9, NULL, 0, '2021-07-12 22:41:12', '2021-07-12 22:41:12'),
(11, 'Sport & Outdoor', 0, NULL, 'published', 10, NULL, 0, '2021-07-12 22:41:12', '2021-07-12 22:41:12'),
(12, 'Books & Office', 0, NULL, 'published', 11, NULL, 0, '2021-07-12 22:41:12', '2021-07-12 22:41:12'),
(13, 'Cars & Motorcycles', 0, NULL, 'published', 12, NULL, 0, '2021-07-12 22:41:12', '2021-07-12 22:41:12'),
(14, 'Home Improvements', 0, NULL, 'published', 13, NULL, 0, '2021-07-12 22:41:12', '2021-07-12 22:41:12'),
(15, 'Consumer Electronic', 2, NULL, 'published', 0, NULL, 0, '2021-07-12 22:41:12', '2021-07-12 22:41:12'),
(16, 'Accessories & Parts', 2, NULL, 'published', 0, NULL, 0, '2021-07-12 22:41:12', '2021-07-12 22:41:12'),
(17, 'Computer & Technologies', 4, NULL, 'published', 0, NULL, 0, '2021-07-12 22:41:12', '2021-07-12 22:41:12'),
(18, 'Networking', 4, NULL, 'published', 0, NULL, 0, '2021-07-12 22:41:12', '2021-07-12 22:41:12'),
(19, 'Home Audio & Theaters', 15, NULL, 'published', 0, NULL, 0, '2021-07-12 22:41:12', '2021-07-12 22:41:12'),
(20, 'TV & Videos', 15, NULL, 'published', 0, NULL, 0, '2021-07-12 22:41:12', '2021-07-12 22:41:12'),
(21, 'Camera, Photos & Videos', 15, NULL, 'published', 0, NULL, 0, '2021-07-12 22:41:12', '2021-07-12 22:41:12'),
(22, 'Cellphones & Accessories', 15, NULL, 'published', 0, NULL, 0, '2021-07-12 22:41:12', '2021-07-12 22:41:12'),
(23, 'Headphones', 15, NULL, 'published', 0, NULL, 0, '2021-07-12 22:41:12', '2021-07-12 22:41:12'),
(24, 'Videos games', 15, NULL, 'published', 0, NULL, 0, '2021-07-12 22:41:12', '2021-07-12 22:41:12'),
(25, 'Wireless Speakers', 15, NULL, 'published', 0, NULL, 0, '2021-07-12 22:41:12', '2021-07-12 22:41:12'),
(26, 'Office Electronic', 15, NULL, 'published', 0, NULL, 0, '2021-07-12 22:41:12', '2021-07-12 22:41:12'),
(27, 'Digital Cables', 16, NULL, 'published', 0, NULL, 0, '2021-07-12 22:41:12', '2021-07-12 22:41:12'),
(28, 'Audio & Video Cables', 16, NULL, 'published', 0, NULL, 0, '2021-07-12 22:41:12', '2021-07-12 22:41:12'),
(29, 'Batteries', 16, NULL, 'published', 0, NULL, 0, '2021-07-12 22:41:12', '2021-07-12 22:41:12'),
(30, 'Computer & Tablets', 17, NULL, 'published', 0, NULL, 0, '2021-07-12 22:41:12', '2021-07-12 22:41:12'),
(31, 'Laptop', 17, NULL, 'published', 0, NULL, 0, '2021-07-12 22:41:12', '2021-07-12 22:41:12'),
(32, 'Monitors', 17, NULL, 'published', 0, NULL, 0, '2021-07-12 22:41:12', '2021-07-12 22:41:12'),
(33, 'Computer Components', 17, NULL, 'published', 0, NULL, 0, '2021-07-12 22:41:12', '2021-07-12 22:41:12'),
(34, 'Drive & Storages', 18, NULL, 'published', 0, NULL, 0, '2021-07-12 22:41:12', '2021-07-12 22:41:12'),
(35, 'Gaming Laptop', 18, NULL, 'published', 0, NULL, 0, '2021-07-12 22:41:12', '2021-07-12 22:41:12'),
(36, 'Security & Protection', 18, NULL, 'published', 0, NULL, 0, '2021-07-12 22:41:12', '2021-07-12 22:41:12'),
(37, 'Accessories', 18, NULL, 'published', 0, NULL, 0, '2021-07-12 22:41:12', '2021-07-12 22:41:12');

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_category_product`
--

CREATE TABLE `ec_product_category_product` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_product_category_product`
--

INSERT INTO `ec_product_category_product` (`id`, `category_id`, `product_id`) VALUES
(1, 28, 1),
(2, 29, 1),
(3, 5, 1),
(4, 16, 1),
(5, 26, 2),
(6, 2, 2),
(7, 10, 2),
(8, 17, 2),
(9, 21, 3),
(10, 14, 3),
(11, 10, 3),
(12, 17, 3),
(13, 6, 4),
(14, 16, 4),
(15, 17, 4),
(16, 14, 5),
(17, 18, 5),
(18, 37, 5),
(19, 16, 5),
(20, 37, 6),
(21, 8, 6),
(22, 17, 6),
(23, 9, 7),
(24, 11, 7),
(25, 20, 7),
(26, 17, 7),
(27, 12, 8),
(28, 23, 8),
(29, 21, 8),
(30, 16, 8),
(31, 19, 9),
(32, 16, 9),
(33, 17, 9),
(34, 4, 10),
(35, 35, 10),
(36, 23, 10),
(37, 15, 10),
(38, 6, 11),
(39, 25, 11),
(40, 29, 11),
(41, 16, 11),
(42, 24, 12),
(43, 8, 12),
(44, 28, 12),
(45, 16, 12),
(46, 17, 13),
(47, 23, 13),
(48, 26, 13),
(49, 16, 13),
(50, 26, 14),
(51, 19, 14),
(52, 2, 14),
(53, 16, 14),
(54, 4, 15),
(55, 22, 15),
(56, 32, 15),
(57, 15, 15),
(58, 13, 16),
(59, 14, 16),
(60, 22, 16),
(61, 15, 16),
(62, 37, 17),
(63, 21, 17),
(64, 9, 17),
(65, 16, 17),
(66, 8, 18),
(67, 20, 18),
(68, 31, 18),
(69, 16, 18),
(70, 3, 19),
(71, 37, 19),
(72, 19, 19),
(73, 17, 19),
(74, 23, 20),
(75, 24, 20),
(76, 30, 20),
(77, 15, 20),
(78, 9, 21),
(79, 36, 21),
(80, 14, 21),
(81, 15, 21),
(82, 5, 22),
(83, 27, 22),
(84, 26, 22),
(85, 15, 22),
(86, 37, 23),
(87, 4, 23),
(88, 9, 23),
(89, 17, 23);

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_collections`
--

CREATE TABLE `ec_product_collections` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_featured` tinyint(3) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_product_collections`
--

INSERT INTO `ec_product_collections` (`id`, `name`, `slug`, `description`, `image`, `status`, `created_at`, `updated_at`, `is_featured`) VALUES
(1, 'New Arrival', 'new-arrival', NULL, NULL, 'published', '2021-07-12 22:41:12', '2021-07-12 22:41:12', 0),
(2, 'Best Sellers', 'best-sellers', NULL, NULL, 'published', '2021-07-12 22:41:12', '2021-07-12 22:41:12', 0),
(3, 'Special Offer', 'special-offer', NULL, NULL, 'published', '2021-07-12 22:41:12', '2021-07-12 22:41:12', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_collection_products`
--

CREATE TABLE `ec_product_collection_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_collection_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_product_collection_products`
--

INSERT INTO `ec_product_collection_products` (`id`, `product_collection_id`, `product_id`) VALUES
(1, 2, 1),
(2, 2, 2),
(3, 2, 3),
(4, 2, 4),
(5, 2, 5),
(6, 3, 6),
(7, 2, 7),
(8, 2, 8),
(9, 1, 9),
(10, 3, 10),
(11, 1, 11),
(12, 1, 12),
(13, 2, 13),
(14, 3, 14),
(15, 2, 15),
(16, 2, 16),
(17, 3, 17),
(18, 2, 18),
(19, 3, 19),
(20, 3, 20),
(21, 1, 21),
(22, 3, 22),
(23, 1, 23);

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_cross_sale_relations`
--

CREATE TABLE `ec_product_cross_sale_relations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `from_product_id` int(10) UNSIGNED NOT NULL,
  `to_product_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_product_cross_sale_relations`
--

INSERT INTO `ec_product_cross_sale_relations` (`id`, `from_product_id`, `to_product_id`) VALUES
(1, 1, 9),
(2, 1, 20),
(3, 1, 7),
(4, 1, 6),
(5, 1, 12),
(6, 2, 5),
(7, 2, 15),
(8, 2, 19),
(9, 2, 12),
(10, 2, 11),
(11, 2, 17),
(12, 2, 10),
(13, 3, 9),
(14, 3, 12),
(15, 3, 8),
(16, 3, 18),
(17, 3, 15),
(18, 4, 11),
(19, 4, 7),
(20, 4, 16),
(21, 4, 19),
(22, 4, 5),
(23, 5, 15),
(24, 5, 3),
(25, 5, 10),
(26, 5, 6),
(27, 5, 12),
(28, 5, 14),
(29, 6, 14),
(30, 6, 12),
(31, 6, 11),
(32, 6, 4),
(33, 6, 7),
(34, 7, 8),
(35, 7, 11),
(36, 7, 9),
(37, 7, 13),
(38, 7, 17),
(39, 7, 10),
(40, 7, 12),
(41, 8, 16),
(42, 8, 5),
(43, 8, 9),
(44, 8, 2),
(45, 8, 15),
(46, 9, 20),
(47, 9, 16),
(48, 9, 18),
(49, 9, 4),
(50, 9, 14),
(51, 9, 2),
(52, 10, 5),
(53, 10, 8),
(54, 10, 19),
(55, 10, 6),
(56, 10, 3),
(57, 11, 19),
(58, 11, 15),
(59, 11, 4),
(60, 11, 8),
(61, 11, 12),
(62, 11, 2),
(63, 12, 5),
(64, 12, 11),
(65, 12, 7),
(66, 12, 6),
(67, 12, 19),
(68, 12, 18),
(69, 13, 10),
(70, 13, 1),
(71, 13, 12),
(72, 13, 20),
(73, 13, 5),
(74, 13, 6),
(75, 13, 8),
(76, 14, 2),
(77, 14, 8),
(78, 14, 5),
(79, 14, 11),
(80, 14, 15),
(81, 14, 4),
(82, 14, 12),
(83, 15, 1),
(84, 15, 7),
(85, 15, 8),
(86, 15, 14),
(87, 15, 18),
(88, 15, 12),
(89, 15, 16),
(90, 16, 9),
(91, 16, 12),
(92, 16, 8),
(93, 16, 20),
(94, 16, 11),
(95, 16, 13),
(96, 16, 6),
(97, 17, 12),
(98, 17, 16),
(99, 17, 15),
(100, 17, 6),
(101, 17, 3),
(102, 17, 11),
(103, 18, 13),
(104, 18, 12),
(105, 18, 1),
(106, 18, 10),
(107, 18, 17),
(108, 18, 7),
(109, 18, 8),
(110, 19, 10),
(111, 19, 3),
(112, 19, 6),
(113, 19, 4),
(114, 19, 5),
(115, 19, 2),
(116, 20, 16),
(117, 20, 14),
(118, 20, 8),
(119, 20, 9),
(120, 20, 6),
(121, 20, 12),
(122, 21, 13),
(123, 21, 8),
(124, 21, 14),
(125, 21, 2),
(126, 21, 4),
(127, 21, 3),
(128, 21, 5),
(129, 22, 6),
(130, 22, 13),
(131, 22, 10),
(132, 22, 12),
(133, 22, 3),
(134, 22, 19),
(135, 23, 4),
(136, 23, 10),
(137, 23, 13),
(138, 23, 11),
(139, 23, 17),
(140, 23, 12);

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_labels`
--

CREATE TABLE `ec_product_labels` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_product_labels`
--

INSERT INTO `ec_product_labels` (`id`, `name`, `color`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Hot', '#ec2434', 'published', '2021-07-12 22:41:12', '2021-07-12 22:41:12'),
(2, 'New', '#00c9a7', 'published', '2021-07-12 22:41:12', '2021-07-12 22:41:12'),
(3, 'Sale', '#fe9931', 'published', '2021-07-12 22:41:12', '2021-07-12 22:41:12');

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_label_products`
--

CREATE TABLE `ec_product_label_products` (
  `product_label_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_product_label_products`
--

INSERT INTO `ec_product_label_products` (`product_label_id`, `product_id`) VALUES
(1, 6),
(1, 12),
(1, 18),
(1, 21),
(2, 9),
(2, 15),
(3, 3);

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_related_relations`
--

CREATE TABLE `ec_product_related_relations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `from_product_id` int(10) UNSIGNED NOT NULL,
  `to_product_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_tags`
--

CREATE TABLE `ec_product_tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_product_tags`
--

INSERT INTO `ec_product_tags` (`id`, `name`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Electronic', NULL, 'published', '2021-07-12 22:41:36', '2021-07-12 22:41:36'),
(2, 'Mobile', NULL, 'published', '2021-07-12 22:41:36', '2021-07-12 22:41:36'),
(3, 'Iphone', NULL, 'published', '2021-07-12 22:41:36', '2021-07-12 22:41:36'),
(4, 'Printer', NULL, 'published', '2021-07-12 22:41:36', '2021-07-12 22:41:36'),
(5, 'Office', NULL, 'published', '2021-07-12 22:41:36', '2021-07-12 22:41:36'),
(6, 'IT', NULL, 'published', '2021-07-12 22:41:36', '2021-07-12 22:41:36');

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_tag_product`
--

CREATE TABLE `ec_product_tag_product` (
  `product_id` int(10) UNSIGNED NOT NULL,
  `tag_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_product_tag_product`
--

INSERT INTO `ec_product_tag_product` (`product_id`, `tag_id`) VALUES
(1, 1),
(1, 3),
(1, 6),
(2, 2),
(2, 3),
(3, 5),
(4, 1),
(4, 2),
(4, 4),
(5, 1),
(6, 1),
(6, 2),
(6, 4),
(7, 2),
(7, 3),
(7, 5),
(8, 2),
(8, 3),
(8, 4),
(9, 3),
(9, 4),
(10, 1),
(10, 3),
(10, 5),
(11, 3),
(11, 4),
(12, 3),
(12, 4),
(12, 5),
(13, 1),
(13, 4),
(13, 5),
(14, 2),
(14, 4),
(14, 6),
(15, 2),
(15, 5),
(15, 6),
(16, 6),
(17, 1),
(17, 5),
(17, 6),
(18, 1),
(18, 2),
(18, 4),
(19, 1),
(19, 2),
(20, 3),
(20, 5),
(20, 6),
(21, 1),
(21, 2),
(22, 3),
(22, 4),
(22, 5),
(23, 2),
(23, 4),
(23, 6);

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_up_sale_relations`
--

CREATE TABLE `ec_product_up_sale_relations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `from_product_id` int(10) UNSIGNED NOT NULL,
  `to_product_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_variations`
--

CREATE TABLE `ec_product_variations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED DEFAULT NULL,
  `configurable_product_id` int(10) UNSIGNED NOT NULL,
  `is_default` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_product_variations`
--

INSERT INTO `ec_product_variations` (`id`, `product_id`, `configurable_product_id`, `is_default`) VALUES
(1, 24, 1, 1),
(2, 25, 2, 1),
(3, 26, 2, 0),
(4, 27, 2, 0),
(5, 28, 2, 0),
(6, 29, 3, 1),
(7, 30, 3, 0),
(8, 31, 3, 0),
(9, 32, 3, 0),
(10, 33, 4, 1),
(11, 34, 4, 0),
(12, 35, 5, 1),
(13, 36, 6, 1),
(14, 37, 6, 0),
(15, 38, 6, 0),
(16, 39, 7, 1),
(17, 40, 7, 0),
(18, 41, 7, 0),
(19, 42, 7, 0),
(20, 43, 8, 1),
(21, 44, 9, 1),
(22, 45, 10, 1),
(23, 46, 10, 0),
(24, 47, 11, 1),
(25, 48, 11, 0),
(26, 49, 11, 0),
(27, 50, 12, 1),
(28, 51, 12, 0),
(29, 52, 13, 1),
(30, 53, 13, 0),
(31, 54, 13, 0),
(32, 55, 14, 1),
(33, 56, 14, 0),
(34, 57, 14, 0),
(35, 58, 15, 1),
(36, 59, 16, 1),
(37, 60, 16, 0),
(38, 61, 17, 1),
(39, 62, 17, 0),
(40, 63, 17, 0),
(41, 64, 17, 0),
(42, 65, 18, 1),
(43, 66, 18, 0),
(44, 67, 19, 1),
(45, 68, 19, 0),
(46, 69, 19, 0),
(47, 70, 19, 0),
(48, 71, 20, 1),
(49, 72, 20, 0),
(50, 73, 20, 0),
(51, 74, 20, 0),
(52, 75, 21, 1),
(53, 76, 21, 0),
(54, 77, 22, 1),
(55, 78, 23, 1),
(56, 79, 23, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_variation_items`
--

CREATE TABLE `ec_product_variation_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `attribute_id` int(10) UNSIGNED NOT NULL,
  `variation_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_product_variation_items`
--

INSERT INTO `ec_product_variation_items` (`id`, `attribute_id`, `variation_id`) VALUES
(1, 2, 1),
(2, 8, 1),
(3, 1, 2),
(4, 9, 2),
(5, 2, 3),
(6, 10, 3),
(7, 1, 4),
(8, 8, 4),
(9, 1, 5),
(10, 6, 5),
(11, 5, 6),
(12, 8, 6),
(13, 1, 7),
(14, 6, 7),
(15, 3, 8),
(16, 9, 8),
(17, 3, 9),
(18, 9, 9),
(19, 3, 10),
(20, 8, 10),
(21, 3, 11),
(22, 9, 11),
(23, 2, 12),
(24, 10, 12),
(25, 2, 13),
(26, 9, 13),
(27, 1, 14),
(28, 10, 14),
(29, 3, 15),
(30, 10, 15),
(31, 4, 16),
(32, 6, 16),
(33, 3, 17),
(34, 6, 17),
(35, 1, 18),
(36, 10, 18),
(37, 4, 19),
(38, 7, 19),
(39, 5, 20),
(40, 9, 20),
(41, 1, 21),
(42, 8, 21),
(43, 5, 22),
(44, 6, 22),
(45, 5, 23),
(46, 8, 23),
(47, 4, 24),
(48, 7, 24),
(49, 1, 25),
(50, 6, 25),
(51, 5, 26),
(52, 6, 26),
(53, 5, 27),
(54, 8, 27),
(55, 1, 28),
(56, 10, 28),
(57, 5, 29),
(58, 8, 29),
(59, 5, 30),
(60, 10, 30),
(61, 3, 31),
(62, 8, 31),
(63, 4, 32),
(64, 8, 32),
(65, 4, 33),
(66, 8, 33),
(67, 2, 34),
(68, 9, 34),
(69, 2, 35),
(70, 7, 35),
(71, 1, 36),
(72, 9, 36),
(73, 3, 37),
(74, 7, 37),
(75, 3, 38),
(76, 10, 38),
(77, 2, 39),
(78, 7, 39),
(79, 4, 40),
(80, 7, 40),
(81, 4, 41),
(82, 6, 41),
(83, 3, 42),
(84, 6, 42),
(85, 4, 43),
(86, 10, 43),
(87, 4, 44),
(88, 9, 44),
(89, 2, 45),
(90, 10, 45),
(91, 3, 46),
(92, 7, 46),
(93, 3, 47),
(94, 9, 47),
(95, 4, 48),
(96, 6, 48),
(97, 1, 49),
(98, 10, 49),
(99, 2, 50),
(100, 7, 50),
(101, 5, 51),
(102, 10, 51),
(103, 4, 52),
(104, 6, 52),
(105, 3, 53),
(106, 6, 53),
(107, 2, 54),
(108, 8, 54),
(109, 1, 55),
(110, 8, 55),
(111, 2, 56),
(112, 10, 56);

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_with_attribute`
--

CREATE TABLE `ec_product_with_attribute` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `attribute_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_product_with_attribute`
--

INSERT INTO `ec_product_with_attribute` (`id`, `attribute_id`, `product_id`) VALUES
(1, 2, 1),
(2, 6, 1),
(3, 5, 2),
(4, 6, 2),
(5, 1, 3),
(6, 7, 3),
(7, 5, 4),
(8, 6, 4),
(9, 3, 5),
(10, 6, 5),
(11, 2, 6),
(12, 10, 6),
(13, 5, 7),
(14, 7, 7),
(15, 4, 8),
(16, 6, 8),
(17, 2, 9),
(18, 8, 9),
(19, 4, 10),
(20, 10, 10),
(21, 1, 11),
(22, 6, 11),
(23, 4, 12),
(24, 8, 12),
(25, 5, 13),
(26, 9, 13),
(27, 4, 14),
(28, 7, 14),
(29, 1, 15),
(30, 9, 15),
(31, 5, 16),
(32, 8, 16),
(33, 4, 17),
(34, 9, 17),
(35, 4, 18),
(36, 7, 18),
(37, 3, 19),
(38, 10, 19),
(39, 3, 20),
(40, 6, 20),
(41, 1, 21),
(42, 6, 21),
(43, 3, 22),
(44, 10, 22),
(45, 1, 23),
(46, 10, 23);

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_with_attribute_set`
--

CREATE TABLE `ec_product_with_attribute_set` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `attribute_set_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `order` tinyint(3) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_product_with_attribute_set`
--

INSERT INTO `ec_product_with_attribute_set` (`id`, `attribute_set_id`, `product_id`, `order`) VALUES
(1, 1, 1, 0),
(2, 2, 1, 0),
(3, 1, 2, 0),
(4, 2, 2, 0),
(5, 1, 3, 0),
(6, 2, 3, 0),
(7, 1, 4, 0),
(8, 2, 4, 0),
(9, 1, 5, 0),
(10, 2, 5, 0),
(11, 1, 6, 0),
(12, 2, 6, 0),
(13, 1, 7, 0),
(14, 2, 7, 0),
(15, 1, 8, 0),
(16, 2, 8, 0),
(17, 1, 9, 0),
(18, 2, 9, 0),
(19, 1, 10, 0),
(20, 2, 10, 0),
(21, 1, 11, 0),
(22, 2, 11, 0),
(23, 1, 12, 0),
(24, 2, 12, 0),
(25, 1, 13, 0),
(26, 2, 13, 0),
(27, 1, 14, 0),
(28, 2, 14, 0),
(29, 1, 15, 0),
(30, 2, 15, 0),
(31, 1, 16, 0),
(32, 2, 16, 0),
(33, 1, 17, 0),
(34, 2, 17, 0),
(35, 1, 18, 0),
(36, 2, 18, 0),
(37, 1, 19, 0),
(38, 2, 19, 0),
(39, 1, 20, 0),
(40, 2, 20, 0),
(41, 1, 21, 0),
(42, 2, 21, 0),
(43, 1, 22, 0),
(44, 2, 22, 0),
(45, 1, 23, 0),
(46, 2, 23, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ec_reviews`
--

CREATE TABLE `ec_reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `star` double(8,2) NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_reviews`
--

INSERT INTO `ec_reviews` (`id`, `customer_id`, `product_id`, `star`, `comment`, `status`, `created_at`, `updated_at`) VALUES
(1, 8, 5, 1.00, 'Tempore ut corrupti numquam et odio ducimus. Nemo quis officia corrupti a. Eaque maxime eos dolor iusto molestiae soluta minus dolorem.', 'published', '2021-07-12 22:41:36', '2021-07-12 22:41:36'),
(2, 11, 5, 4.00, 'Et enim rerum voluptatem tempore. Voluptate ut dolores necessitatibus minima numquam dolor quo.', 'published', '2021-07-12 22:41:36', '2021-07-12 22:41:36'),
(3, 10, 44, 2.00, 'Dignissimos facere sapiente et qui. Deserunt voluptatem est quibusdam.', 'published', '2021-07-12 22:41:36', '2021-07-12 22:41:36'),
(4, 6, 7, 1.00, 'Nostrum aut consectetur dolorum iste libero dolores. Necessitatibus totam voluptatem et hic quam voluptatem rem.', 'published', '2021-07-12 22:41:36', '2021-07-12 22:41:36'),
(5, 9, 32, 1.00, 'Error modi est rem ut repellat. Est unde sit enim impedit maiores autem facere. Dolores natus ullam corporis. Iusto eligendi quo rerum quam sed.', 'published', '2021-07-12 22:41:36', '2021-07-12 22:41:36'),
(6, 9, 27, 5.00, 'Vero eum aut nihil tenetur voluptate praesentium. Iusto quo vitae similique quae qui.', 'published', '2021-07-12 22:41:36', '2021-07-12 22:41:36'),
(7, 8, 52, 5.00, 'Veniam dolorem eos nihil. Et hic consequuntur dolorem quibusdam maiores dolorem. Nostrum nostrum at ex perspiciatis ab. Nesciunt ut quasi labore.', 'published', '2021-07-12 22:41:36', '2021-07-12 22:41:36'),
(8, 9, 47, 5.00, 'Ut totam delectus voluptatum iusto sit at enim aliquid. Aut nam vel facere corrupti.', 'published', '2021-07-12 22:41:36', '2021-07-12 22:41:36'),
(9, 10, 54, 5.00, 'Qui consectetur ut earum quidem et. Est voluptas architecto ab quisquam laborum. Reiciendis consequatur facere unde.', 'published', '2021-07-12 22:41:36', '2021-07-12 22:41:36'),
(10, 7, 11, 2.00, 'Aliquam et quo occaecati asperiores. Et excepturi sit eligendi qui soluta. Molestiae placeat et id dolore harum omnis aut.', 'published', '2021-07-12 22:41:36', '2021-07-12 22:41:36'),
(11, 9, 16, 2.00, 'In accusantium dolor facilis. Esse et eos dolor. Ipsa consequatur accusantium omnis consequatur adipisci. Eveniet at fugit ullam non.', 'published', '2021-07-12 22:41:36', '2021-07-12 22:41:36'),
(12, 3, 26, 2.00, 'Velit quod quia labore quis quo. Ex omnis est recusandae maiores. Minus illo et dolor atque libero.', 'published', '2021-07-12 22:41:36', '2021-07-12 22:41:36'),
(13, 7, 32, 2.00, 'Sit harum praesentium eum ullam quam unde harum. Minus tempore quidem qui odio impedit. Qui culpa inventore corrupti.', 'published', '2021-07-12 22:41:36', '2021-07-12 22:41:36'),
(14, 11, 33, 1.00, 'Consequuntur odio nostrum nesciunt. Eos placeat consequuntur et et magnam at quo non. Nulla quia adipisci et non nihil.', 'published', '2021-07-12 22:41:36', '2021-07-12 22:41:36'),
(15, 9, 41, 5.00, 'Voluptate adipisci sit dolorum quia est hic aut dolor. Molestias est sapiente rerum autem. Nemo voluptate libero inventore.', 'published', '2021-07-12 22:41:36', '2021-07-12 22:41:36'),
(16, 8, 54, 5.00, 'Impedit quidem quidem reprehenderit dolorum vel et architecto. Modi saepe quos qui harum. Earum illo sit debitis quis inventore.', 'published', '2021-07-12 22:41:36', '2021-07-12 22:41:36'),
(17, 9, 63, 3.00, 'In provident iusto earum tenetur quo nihil voluptas culpa. Animi a nam consequatur sequi non vitae voluptatem. Ut odit deserunt quo sit esse maiores.', 'published', '2021-07-12 22:41:36', '2021-07-12 22:41:36'),
(18, 3, 23, 5.00, 'Blanditiis aspernatur ut provident non. Praesentium est labore aliquam accusamus ut debitis. Cupiditate voluptas tenetur qui est fugiat.', 'published', '2021-07-12 22:41:36', '2021-07-12 22:41:36'),
(19, 2, 9, 2.00, 'Quis quis id esse beatae praesentium. Ducimus explicabo eos magnam voluptatem. Mollitia quibusdam fugit cum quae eos maiores et.', 'published', '2021-07-12 22:41:36', '2021-07-12 22:41:36'),
(20, 11, 10, 2.00, 'Iure ea atque ab provident ut omnis quo. Sequi ea minus et quo et aut. Qui maiores eum eligendi.', 'published', '2021-07-12 22:41:36', '2021-07-12 22:41:36'),
(21, 6, 41, 4.00, 'Sequi reprehenderit et natus sit ea. Quo et sit impedit ut. Atque suscipit delectus velit sed unde minima labore molestiae.', 'published', '2021-07-12 22:41:36', '2021-07-12 22:41:36'),
(22, 2, 18, 4.00, 'Optio itaque maxime quisquam ut qui illum. Nihil facilis autem et modi nihil. Sint nam consequatur natus repellat illum tenetur et.', 'published', '2021-07-12 22:41:36', '2021-07-12 22:41:36'),
(23, 3, 56, 3.00, 'Quia minus iure doloremque quis et autem et. Error ratione quaerat quia eius et necessitatibus. Dignissimos et tempora alias quaerat dolores quam.', 'published', '2021-07-12 22:41:36', '2021-07-12 22:41:36'),
(24, 7, 49, 4.00, 'Maiores dolores aperiam quod cumque dolorem vel est. Ducimus magni possimus nulla deleniti tempore soluta. Cumque impedit architecto quisquam quae.', 'published', '2021-07-12 22:41:36', '2021-07-12 22:41:36'),
(25, 11, 29, 4.00, 'Placeat id expedita illum molestias. Aspernatur porro eum ut tempora ex laborum. Velit iste in qui quis.', 'published', '2021-07-12 22:41:36', '2021-07-12 22:41:36'),
(26, 8, 35, 2.00, 'Nobis minima animi dolore commodi. Quisquam ea quo odit aut dolore quaerat. Dignissimos omnis omnis aut error.', 'published', '2021-07-12 22:41:36', '2021-07-12 22:41:36'),
(27, 5, 46, 2.00, 'Reprehenderit velit officia possimus temporibus cum. Tempora animi aut deleniti sed suscipit. Minima rerum modi rerum vero. Sed voluptas cum dolor.', 'published', '2021-07-12 22:41:36', '2021-07-12 22:41:36'),
(28, 1, 63, 5.00, 'Et tempora voluptates et nisi. Sint ea aliquam laborum explicabo velit. Ea quia dolor modi.', 'published', '2021-07-12 22:41:36', '2021-07-12 22:41:36'),
(29, 4, 7, 1.00, 'Et qui numquam ut. Fugiat ullam aut animi voluptas in assumenda eos labore. Sit cupiditate commodi sint hic. Fuga quia reprehenderit beatae aut.', 'published', '2021-07-12 22:41:36', '2021-07-12 22:41:36'),
(30, 12, 8, 5.00, 'Voluptatem accusantium aut vel velit est animi. Eveniet unde velit qui consequatur quia commodi sed. Illo ut odio eligendi reprehenderit.', 'published', '2021-07-12 22:41:36', '2021-07-12 22:41:36'),
(31, 2, 39, 5.00, 'Esse maiores ipsam ipsam magnam minima iusto ut. Quam est tenetur impedit. Voluptatem esse et laudantium dolorum.', 'published', '2021-07-12 22:41:36', '2021-07-12 22:41:36'),
(32, 3, 74, 3.00, 'Quis a molestias error tempore. Qui error temporibus est nam aliquid et et. At exercitationem minima et omnis veritatis vel.', 'published', '2021-07-12 22:41:36', '2021-07-12 22:41:36'),
(33, 6, 63, 1.00, 'Mollitia tenetur qui neque animi. Provident aut autem nemo sit. Fuga reiciendis tenetur fugit atque aut laboriosam.', 'published', '2021-07-12 22:41:36', '2021-07-12 22:41:36'),
(34, 7, 11, 5.00, 'At est quas occaecati rerum ut qui. Iusto eligendi accusantium culpa. Porro quisquam sint provident in.', 'published', '2021-07-12 22:41:36', '2021-07-12 22:41:36'),
(35, 6, 38, 5.00, 'Et quas eos qui voluptatem dolorum voluptas. Necessitatibus voluptatem commodi et illum non. Dolores error est numquam qui amet.', 'published', '2021-07-12 22:41:36', '2021-07-12 22:41:36'),
(36, 6, 24, 3.00, 'Sed enim quasi culpa debitis harum. Minus temporibus dolorum ut. Earum dignissimos pariatur iusto molestias porro ut repellat.', 'published', '2021-07-12 22:41:36', '2021-07-12 22:41:36'),
(37, 4, 75, 4.00, 'Eum veritatis repudiandae sit in nesciunt at hic. Inventore et qui et sint similique vero. Quis ipsam rem qui qui tempore ut.', 'published', '2021-07-12 22:41:36', '2021-07-12 22:41:36'),
(38, 9, 22, 5.00, 'Accusantium aut fugiat officiis reiciendis rerum. Assumenda placeat aliquid nesciunt quo sed quia. Quae consequuntur suscipit id nisi eligendi.', 'published', '2021-07-12 22:41:36', '2021-07-12 22:41:36'),
(39, 6, 35, 4.00, 'Necessitatibus rerum tenetur quos voluptatibus quam. Tempore molestias quis repellendus. Quo hic nihil delectus quis.', 'published', '2021-07-12 22:41:36', '2021-07-12 22:41:36'),
(40, 11, 55, 3.00, 'Eius sit eius aut autem. Dolore iure non odit. Quod non et deserunt quidem voluptatem officia.', 'published', '2021-07-12 22:41:36', '2021-07-12 22:41:36'),
(41, 7, 51, 1.00, 'Qui voluptate dignissimos et hic eum id. Vel velit vero laboriosam itaque reprehenderit ab. Ut doloremque quia et perferendis.', 'published', '2021-07-12 22:41:36', '2021-07-12 22:41:36'),
(42, 12, 17, 4.00, 'Debitis dolor quo sed. Rem blanditiis voluptatem repellendus at deleniti. Dolorum voluptate corrupti quia corrupti eos illo labore quia.', 'published', '2021-07-12 22:41:36', '2021-07-12 22:41:36'),
(43, 3, 77, 4.00, 'Sit et numquam consequuntur voluptatem et quisquam. Iste sunt in quia quia debitis ipsa.', 'published', '2021-07-12 22:41:36', '2021-07-12 22:41:36'),
(44, 12, 22, 3.00, 'Minima beatae ab dolorum in est. Debitis maiores rerum omnis ut sed debitis quod. Repellendus odit ipsum unde et.', 'published', '2021-07-12 22:41:36', '2021-07-12 22:41:36'),
(45, 11, 64, 5.00, 'Incidunt dolorem aliquid sint voluptatem fugiat ab sint nihil. Et occaecati eos unde. Sit eum ut reprehenderit voluptate cupiditate.', 'published', '2021-07-12 22:41:36', '2021-07-12 22:41:36'),
(46, 11, 57, 3.00, 'Itaque repudiandae consequatur commodi ratione. Qui et est magnam vel.', 'published', '2021-07-12 22:41:36', '2021-07-12 22:41:36'),
(47, 3, 13, 4.00, 'Voluptas sit harum possimus consequatur nobis aut. Dolore quia voluptas nostrum rerum atque labore facere. Iure facilis assumenda et similique sequi.', 'published', '2021-07-12 22:41:36', '2021-07-12 22:41:36'),
(48, 1, 29, 1.00, 'Velit repellat enim omnis tempore vitae iusto. Fuga praesentium sed velit aliquam reiciendis. Quia ex occaecati inventore ratione quia.', 'published', '2021-07-12 22:41:36', '2021-07-12 22:41:36'),
(49, 3, 10, 4.00, 'Qui eveniet est dolorum quidem culpa qui nemo ullam. Maxime dolorem repudiandae quidem eos odio fugiat amet.', 'published', '2021-07-12 22:41:36', '2021-07-12 22:41:36'),
(50, 3, 55, 5.00, 'Aut et adipisci labore optio quas. Dolorem qui neque animi quod voluptatem. Quis voluptate aspernatur est voluptate atque.', 'published', '2021-07-12 22:41:36', '2021-07-12 22:41:36');

-- --------------------------------------------------------

--
-- Table structure for table `ec_shipments`
--

CREATE TABLE `ec_shipments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `weight` double(8,2) DEFAULT '0.00',
  `shipment_id` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `cod_amount` decimal(15,2) DEFAULT '0.00',
  `cod_status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `cross_checking_status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `price` decimal(15,2) DEFAULT '0.00',
  `store_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_shipments`
--

INSERT INTO `ec_shipments` (`id`, `order_id`, `user_id`, `weight`, `shipment_id`, `note`, `status`, `cod_amount`, `cod_status`, `cross_checking_status`, `price`, `store_id`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, 732.00, NULL, '', 'approved', '0.00', 'completed', 'pending', '0.00', 0, '2021-07-12 22:41:46', '2021-07-12 22:41:46'),
(2, 2, NULL, 774.00, NULL, '', 'delivered', '584.10', 'completed', 'pending', '0.00', 0, '2021-07-12 22:41:46', '2021-07-12 22:41:46'),
(3, 3, NULL, 574.00, NULL, '', 'approved', '0.00', 'completed', 'pending', '0.00', 0, '2021-07-12 22:41:46', '2021-07-12 22:41:46'),
(4, 4, NULL, 1322.00, NULL, '', 'delivered', '0.00', 'completed', 'pending', '0.00', 0, '2021-07-12 22:41:46', '2021-07-12 22:41:46'),
(5, 5, NULL, 2696.00, NULL, '', 'delivered', '0.00', 'completed', 'pending', '0.00', 0, '2021-07-12 22:41:46', '2021-07-12 22:41:46'),
(6, 6, NULL, 783.00, NULL, '', 'delivered', '0.00', 'completed', 'pending', '0.00', 0, '2021-07-12 22:41:46', '2021-07-12 22:41:46'),
(7, 7, NULL, 1874.00, NULL, '', 'approved', '0.00', 'completed', 'pending', '0.00', 0, '2021-07-12 22:41:46', '2021-07-12 22:41:46'),
(8, 8, NULL, 672.00, NULL, '', 'approved', '0.00', 'completed', 'pending', '0.00', 0, '2021-07-12 22:41:46', '2021-07-12 22:41:46'),
(9, 9, NULL, 2622.00, NULL, '', 'delivered', '0.00', 'completed', 'pending', '0.00', 0, '2021-07-12 22:41:46', '2021-07-12 22:41:46'),
(10, 10, NULL, 2061.00, NULL, '', 'approved', '0.00', 'completed', 'pending', '0.00', 0, '2021-07-12 22:41:46', '2021-07-12 22:41:46'),
(11, 11, NULL, 2427.00, NULL, '', 'delivered', '0.00', 'completed', 'pending', '0.00', 0, '2021-07-12 22:41:46', '2021-07-12 22:41:46'),
(12, 12, NULL, 1514.00, NULL, '', 'delivered', '0.00', 'completed', 'pending', '0.00', 0, '2021-07-12 22:41:46', '2021-07-12 22:41:46'),
(13, 13, NULL, 1262.00, NULL, '', 'approved', '0.00', 'completed', 'pending', '0.00', 0, '2021-07-12 22:41:46', '2021-07-12 22:41:46'),
(14, 14, NULL, 2288.00, NULL, '', 'approved', '3731.70', 'pending', 'pending', '0.00', 0, '2021-07-12 22:41:46', '2021-07-12 22:41:46'),
(15, 15, NULL, 1618.00, NULL, '', 'delivered', '0.00', 'completed', 'pending', '0.00', 0, '2021-07-12 22:41:46', '2021-07-12 22:41:46'),
(16, 16, NULL, 1650.00, NULL, '', 'delivered', '0.00', 'completed', 'pending', '0.00', 0, '2021-07-12 22:41:46', '2021-07-12 22:41:46'),
(17, 17, NULL, 874.00, NULL, '', 'delivered', '0.00', 'completed', 'pending', '0.00', 0, '2021-07-12 22:41:47', '2021-07-12 22:41:47'),
(18, 18, NULL, 2427.00, NULL, '', 'delivered', '0.00', 'completed', 'pending', '0.00', 0, '2021-07-12 22:41:47', '2021-07-12 22:41:47'),
(19, 19, NULL, 1551.00, NULL, '', 'delivered', '0.00', 'completed', 'pending', '0.00', 0, '2021-07-12 22:41:47', '2021-07-12 22:41:47'),
(20, 20, NULL, 2622.00, NULL, '', 'delivered', '0.00', 'completed', 'pending', '0.00', 0, '2021-07-12 22:41:47', '2021-07-12 22:41:47'),
(21, 21, NULL, 854.00, NULL, '', 'delivered', '0.00', 'completed', 'pending', '0.00', 0, '2021-07-12 22:41:47', '2021-07-12 22:41:47'),
(22, 22, NULL, 2398.00, NULL, '', 'delivered', '0.00', 'completed', 'pending', '0.00', 0, '2021-07-12 22:41:47', '2021-07-12 22:41:47'),
(23, 23, NULL, 1722.00, NULL, '', 'delivered', '0.00', 'completed', 'pending', '0.00', 0, '2021-07-12 22:41:47', '2021-07-12 22:41:47'),
(24, 24, NULL, 1262.00, NULL, '', 'approved', '930.30', 'pending', 'pending', '0.00', 0, '2021-07-12 22:41:47', '2021-07-12 22:41:47'),
(25, 25, NULL, 2016.00, NULL, '', 'approved', '0.00', 'completed', 'pending', '0.00', 0, '2021-07-12 22:41:47', '2021-07-12 22:41:47'),
(26, 26, NULL, 4821.00, NULL, '', 'delivered', '0.00', 'completed', 'pending', '0.00', 0, '2021-07-12 22:41:47', '2021-07-12 22:41:47'),
(27, 27, NULL, 1514.00, NULL, '', 'approved', '0.00', 'completed', 'pending', '0.00', 0, '2021-07-12 22:41:47', '2021-07-12 22:41:47'),
(28, 28, NULL, 1650.00, NULL, '', 'delivered', '0.00', 'completed', 'pending', '0.00', 0, '2021-07-12 22:41:47', '2021-07-12 22:41:47'),
(29, 29, NULL, 1034.00, NULL, '', 'approved', '0.00', 'completed', 'pending', '0.00', 0, '2021-07-12 22:41:47', '2021-07-12 22:41:47'),
(30, 30, NULL, 1322.00, NULL, '', 'delivered', '0.00', 'completed', 'pending', '0.00', 0, '2021-07-12 22:41:47', '2021-07-12 22:41:47'),
(31, 31, NULL, 2196.00, NULL, '', 'approved', '0.00', 'completed', 'pending', '0.00', 0, '2021-07-12 22:41:47', '2021-07-12 22:41:47'),
(32, 32, NULL, 2487.00, NULL, '', 'delivered', '0.00', 'completed', 'pending', '0.00', 0, '2021-07-12 22:41:47', '2021-07-12 22:41:47'),
(33, 33, NULL, 874.00, NULL, '', 'delivered', '0.00', 'completed', 'pending', '0.00', 0, '2021-07-12 22:41:47', '2021-07-12 22:41:47'),
(34, 34, NULL, 809.00, NULL, '', 'delivered', '745.80', 'completed', 'pending', '0.00', 0, '2021-07-12 22:41:47', '2021-07-12 22:41:47'),
(35, 35, NULL, 1464.00, NULL, '', 'delivered', '42.00', 'completed', 'pending', '0.00', 0, '2021-07-12 22:41:47', '2021-07-12 22:41:47'),
(36, 36, NULL, 774.00, NULL, '', 'approved', '0.00', 'completed', 'pending', '0.00', 0, '2021-07-12 22:41:47', '2021-07-12 22:41:47'),
(37, 37, NULL, 2487.00, NULL, '', 'approved', '0.00', 'completed', 'pending', '0.00', 0, '2021-07-12 22:41:47', '2021-07-12 22:41:47'),
(38, 38, NULL, 3870.00, NULL, '', 'approved', '0.00', 'completed', 'pending', '0.00', 0, '2021-07-12 22:41:47', '2021-07-12 22:41:47'),
(39, 39, NULL, 2061.00, NULL, '', 'approved', '0.00', 'completed', 'pending', '0.00', 0, '2021-07-12 22:41:47', '2021-07-12 22:41:47'),
(40, 40, NULL, 829.00, NULL, '', 'delivered', '0.00', 'completed', 'pending', '0.00', 0, '2021-07-12 22:41:47', '2021-07-12 22:41:47'),
(41, 41, NULL, 1734.00, NULL, '', 'approved', '1562.40', 'pending', 'pending', '0.00', 0, '2021-07-12 22:41:47', '2021-07-12 22:41:47'),
(42, 42, NULL, 1344.00, NULL, '', 'delivered', '2545.20', 'completed', 'pending', '0.00', 0, '2021-07-12 22:41:47', '2021-07-12 22:41:47'),
(43, 43, NULL, 774.00, NULL, '', 'approved', '0.00', 'completed', 'pending', '0.00', 0, '2021-07-12 22:41:47', '2021-07-12 22:41:47'),
(44, 44, NULL, 1374.00, NULL, '', 'delivered', '0.00', 'completed', 'pending', '0.00', 0, '2021-07-12 22:41:47', '2021-07-12 22:41:47'),
(45, 45, NULL, 1209.00, NULL, '', 'delivered', '0.00', 'completed', 'pending', '0.00', 0, '2021-07-12 22:41:47', '2021-07-12 22:41:47'),
(46, 46, NULL, 2349.00, NULL, '', 'approved', '0.00', 'completed', 'pending', '0.00', 0, '2021-07-12 22:41:47', '2021-07-12 22:41:47'),
(47, 47, NULL, 2322.00, NULL, '', 'delivered', '0.00', 'completed', 'pending', '0.00', 0, '2021-07-12 22:41:47', '2021-07-12 22:41:47'),
(48, 48, NULL, 1514.00, NULL, '', 'delivered', '0.00', 'completed', 'pending', '0.00', 0, '2021-07-12 22:41:47', '2021-07-12 22:41:47'),
(49, 49, NULL, 627.00, NULL, '', 'delivered', '0.00', 'completed', 'pending', '0.00', 0, '2021-07-12 22:41:47', '2021-07-12 22:41:47'),
(50, 50, NULL, 2622.00, NULL, '', 'delivered', '0.00', 'completed', 'pending', '0.00', 0, '2021-07-12 22:41:47', '2021-07-12 22:41:47'),
(51, 51, NULL, 809.00, NULL, '', 'delivered', '745.80', 'completed', 'pending', '0.00', 0, '2021-07-12 22:41:47', '2021-07-12 22:41:47');

-- --------------------------------------------------------

--
-- Table structure for table `ec_shipment_histories`
--

CREATE TABLE `ec_shipment_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `shipment_id` int(10) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_shipment_histories`
--

INSERT INTO `ec_shipment_histories` (`id`, `action`, `description`, `user_id`, `shipment_id`, `order_id`, `created_at`, `updated_at`) VALUES
(1, 'create_from_order', 'Shipping was created from order %order_id%', 0, 1, 1, '2021-07-01 06:41:46', '2021-07-01 06:41:46'),
(2, 'update_status', 'Changed status of shipping to : Approved . Updated by: %user_name%', 0, 1, 1, '2021-07-11 06:41:46', '2021-07-12 22:41:46'),
(3, 'create_from_order', 'Shipping was created from order %order_id%', 0, 2, 2, '2021-06-29 14:41:46', '2021-06-29 14:41:46'),
(4, 'update_status', 'Changed status of shipping to : Approved . Updated by: %user_name%', 0, 2, 2, '2021-07-11 06:41:46', '2021-07-12 22:41:46'),
(5, 'update_cod_status', 'Updated COD status to Completed . Updated by: %user_name%', 0, 2, 2, '2021-07-12 22:41:46', '2021-07-12 22:41:46'),
(6, 'update_status', 'Changed status of shipping to : Delivered . Updated by: %user_name%', 0, 2, 2, '2021-07-12 22:41:46', '2021-07-12 22:41:46'),
(7, 'create_from_order', 'Shipping was created from order %order_id%', 0, 3, 3, '2021-07-09 18:41:46', '2021-07-09 18:41:46'),
(8, 'update_status', 'Changed status of shipping to : Approved . Updated by: %user_name%', 0, 3, 3, '2021-07-11 08:41:46', '2021-07-12 22:41:46'),
(9, 'create_from_order', 'Shipping was created from order %order_id%', 0, 4, 4, '2021-07-09 18:41:46', '2021-07-09 18:41:46'),
(10, 'update_status', 'Changed status of shipping to : Approved . Updated by: %user_name%', 0, 4, 4, '2021-07-11 08:41:46', '2021-07-12 22:41:46'),
(11, 'update_status', 'Changed status of shipping to : Delivered . Updated by: %user_name%', 0, 4, 4, '2021-07-12 22:41:46', '2021-07-12 22:41:46'),
(12, 'create_from_order', 'Shipping was created from order %order_id%', 0, 5, 5, '2021-07-06 22:41:46', '2021-07-06 22:41:46'),
(13, 'update_status', 'Changed status of shipping to : Approved . Updated by: %user_name%', 0, 5, 5, '2021-07-11 10:41:46', '2021-07-12 22:41:46'),
(14, 'update_status', 'Changed status of shipping to : Delivered . Updated by: %user_name%', 0, 5, 5, '2021-07-12 22:41:46', '2021-07-12 22:41:46'),
(15, 'create_from_order', 'Shipping was created from order %order_id%', 0, 6, 6, '2021-07-11 10:41:46', '2021-07-11 10:41:46'),
(16, 'update_status', 'Changed status of shipping to : Approved . Updated by: %user_name%', 0, 6, 6, '2021-07-11 10:41:46', '2021-07-12 22:41:46'),
(17, 'update_status', 'Changed status of shipping to : Delivered . Updated by: %user_name%', 0, 6, 6, '2021-07-12 22:41:46', '2021-07-12 22:41:46'),
(18, 'create_from_order', 'Shipping was created from order %order_id%', 0, 7, 7, '2021-07-05 20:41:46', '2021-07-05 20:41:46'),
(19, 'update_status', 'Changed status of shipping to : Approved . Updated by: %user_name%', 0, 7, 7, '2021-07-11 12:41:46', '2021-07-12 22:41:46'),
(20, 'create_from_order', 'Shipping was created from order %order_id%', 0, 8, 8, '2021-07-01 14:41:46', '2021-07-01 14:41:46'),
(21, 'update_status', 'Changed status of shipping to : Approved . Updated by: %user_name%', 0, 8, 8, '2021-07-11 12:41:46', '2021-07-12 22:41:46'),
(22, 'create_from_order', 'Shipping was created from order %order_id%', 0, 9, 9, '2021-07-06 06:41:46', '2021-07-06 06:41:46'),
(23, 'update_status', 'Changed status of shipping to : Approved . Updated by: %user_name%', 0, 9, 9, '2021-07-11 14:41:46', '2021-07-12 22:41:46'),
(24, 'update_status', 'Changed status of shipping to : Delivered . Updated by: %user_name%', 0, 9, 9, '2021-07-12 22:41:46', '2021-07-12 22:41:46'),
(25, 'create_from_order', 'Shipping was created from order %order_id%', 0, 10, 10, '2021-07-08 22:41:46', '2021-07-08 22:41:46'),
(26, 'update_status', 'Changed status of shipping to : Approved . Updated by: %user_name%', 0, 10, 10, '2021-07-11 14:41:46', '2021-07-12 22:41:46'),
(27, 'create_from_order', 'Shipping was created from order %order_id%', 0, 11, 11, '2021-07-02 06:41:46', '2021-07-02 06:41:46'),
(28, 'update_status', 'Changed status of shipping to : Approved . Updated by: %user_name%', 0, 11, 11, '2021-07-11 14:41:46', '2021-07-12 22:41:46'),
(29, 'update_status', 'Changed status of shipping to : Delivered . Updated by: %user_name%', 0, 11, 11, '2021-07-12 22:41:46', '2021-07-12 22:41:46'),
(30, 'create_from_order', 'Shipping was created from order %order_id%', 0, 12, 12, '2021-07-02 22:41:46', '2021-07-02 22:41:46'),
(31, 'update_status', 'Changed status of shipping to : Approved . Updated by: %user_name%', 0, 12, 12, '2021-07-11 16:41:46', '2021-07-12 22:41:46'),
(32, 'update_status', 'Changed status of shipping to : Delivered . Updated by: %user_name%', 0, 12, 12, '2021-07-12 22:41:46', '2021-07-12 22:41:46'),
(33, 'create_from_order', 'Shipping was created from order %order_id%', 0, 13, 13, '2021-07-04 04:41:46', '2021-07-04 04:41:46'),
(34, 'update_status', 'Changed status of shipping to : Approved . Updated by: %user_name%', 0, 13, 13, '2021-07-11 16:41:46', '2021-07-12 22:41:46'),
(35, 'create_from_order', 'Shipping was created from order %order_id%', 0, 14, 14, '2021-07-11 18:41:46', '2021-07-11 18:41:46'),
(36, 'update_status', 'Changed status of shipping to : Approved . Updated by: %user_name%', 0, 14, 14, '2021-07-11 18:41:46', '2021-07-12 22:41:46'),
(37, 'create_from_order', 'Shipping was created from order %order_id%', 0, 15, 15, '2021-07-07 02:41:46', '2021-07-07 02:41:46'),
(38, 'update_status', 'Changed status of shipping to : Approved . Updated by: %user_name%', 0, 15, 15, '2021-07-11 18:41:46', '2021-07-12 22:41:46'),
(39, 'update_status', 'Changed status of shipping to : Delivered . Updated by: %user_name%', 0, 15, 15, '2021-07-12 22:41:46', '2021-07-12 22:41:46'),
(40, 'create_from_order', 'Shipping was created from order %order_id%', 0, 16, 16, '2021-07-04 06:41:46', '2021-07-04 06:41:46'),
(41, 'update_status', 'Changed status of shipping to : Approved . Updated by: %user_name%', 0, 16, 16, '2021-07-11 20:41:46', '2021-07-12 22:41:46'),
(42, 'update_status', 'Changed status of shipping to : Delivered . Updated by: %user_name%', 0, 16, 16, '2021-07-12 22:41:46', '2021-07-12 22:41:46'),
(43, 'create_from_order', 'Shipping was created from order %order_id%', 0, 17, 17, '2021-07-04 06:41:47', '2021-07-04 06:41:47'),
(44, 'update_status', 'Changed status of shipping to : Approved . Updated by: %user_name%', 0, 17, 17, '2021-07-11 20:41:47', '2021-07-12 22:41:47'),
(45, 'update_status', 'Changed status of shipping to : Delivered . Updated by: %user_name%', 0, 17, 17, '2021-07-12 22:41:47', '2021-07-12 22:41:47'),
(46, 'create_from_order', 'Shipping was created from order %order_id%', 0, 18, 18, '2021-07-02 02:41:47', '2021-07-02 02:41:47'),
(47, 'update_status', 'Changed status of shipping to : Approved . Updated by: %user_name%', 0, 18, 18, '2021-07-11 20:41:47', '2021-07-12 22:41:47'),
(48, 'update_status', 'Changed status of shipping to : Delivered . Updated by: %user_name%', 0, 18, 18, '2021-07-12 22:41:47', '2021-07-12 22:41:47'),
(49, 'create_from_order', 'Shipping was created from order %order_id%', 0, 19, 19, '2021-07-03 22:41:47', '2021-07-03 22:41:47'),
(50, 'update_status', 'Changed status of shipping to : Approved . Updated by: %user_name%', 0, 19, 19, '2021-07-11 22:41:47', '2021-07-12 22:41:47'),
(51, 'update_status', 'Changed status of shipping to : Delivered . Updated by: %user_name%', 0, 19, 19, '2021-07-12 22:41:47', '2021-07-12 22:41:47'),
(52, 'create_from_order', 'Shipping was created from order %order_id%', 0, 20, 20, '2021-07-02 22:41:47', '2021-07-02 22:41:47'),
(53, 'update_status', 'Changed status of shipping to : Approved . Updated by: %user_name%', 0, 20, 20, '2021-07-11 22:41:47', '2021-07-12 22:41:47'),
(54, 'update_status', 'Changed status of shipping to : Delivered . Updated by: %user_name%', 0, 20, 20, '2021-07-12 22:41:47', '2021-07-12 22:41:47'),
(55, 'create_from_order', 'Shipping was created from order %order_id%', 0, 21, 21, '2021-07-06 12:41:47', '2021-07-06 12:41:47'),
(56, 'update_status', 'Changed status of shipping to : Approved . Updated by: %user_name%', 0, 21, 21, '2021-07-12 00:41:47', '2021-07-12 22:41:47'),
(57, 'update_status', 'Changed status of shipping to : Delivered . Updated by: %user_name%', 0, 21, 21, '2021-07-12 22:41:47', '2021-07-12 22:41:47'),
(58, 'create_from_order', 'Shipping was created from order %order_id%', 0, 22, 22, '2021-07-09 06:41:47', '2021-07-09 06:41:47'),
(59, 'update_status', 'Changed status of shipping to : Approved . Updated by: %user_name%', 0, 22, 22, '2021-07-12 00:41:47', '2021-07-12 22:41:47'),
(60, 'update_status', 'Changed status of shipping to : Delivered . Updated by: %user_name%', 0, 22, 22, '2021-07-12 22:41:47', '2021-07-12 22:41:47'),
(61, 'create_from_order', 'Shipping was created from order %order_id%', 0, 23, 23, '2021-07-10 10:41:47', '2021-07-10 10:41:47'),
(62, 'update_status', 'Changed status of shipping to : Approved . Updated by: %user_name%', 0, 23, 23, '2021-07-12 02:41:47', '2021-07-12 22:41:47'),
(63, 'update_status', 'Changed status of shipping to : Delivered . Updated by: %user_name%', 0, 23, 23, '2021-07-12 22:41:47', '2021-07-12 22:41:47'),
(64, 'create_from_order', 'Shipping was created from order %order_id%', 0, 24, 24, '2021-07-06 06:41:47', '2021-07-06 06:41:47'),
(65, 'update_status', 'Changed status of shipping to : Approved . Updated by: %user_name%', 0, 24, 24, '2021-07-12 02:41:47', '2021-07-12 22:41:47'),
(66, 'create_from_order', 'Shipping was created from order %order_id%', 0, 25, 25, '2021-07-06 06:41:47', '2021-07-06 06:41:47'),
(67, 'update_status', 'Changed status of shipping to : Approved . Updated by: %user_name%', 0, 25, 25, '2021-07-12 02:41:47', '2021-07-12 22:41:47'),
(68, 'create_from_order', 'Shipping was created from order %order_id%', 0, 26, 26, '2021-07-06 22:41:47', '2021-07-06 22:41:47'),
(69, 'update_status', 'Changed status of shipping to : Approved . Updated by: %user_name%', 0, 26, 26, '2021-07-12 04:41:47', '2021-07-12 22:41:47'),
(70, 'update_status', 'Changed status of shipping to : Delivered . Updated by: %user_name%', 0, 26, 26, '2021-07-12 22:41:47', '2021-07-12 22:41:47'),
(71, 'create_from_order', 'Shipping was created from order %order_id%', 0, 27, 27, '2021-07-05 10:41:47', '2021-07-05 10:41:47'),
(72, 'update_status', 'Changed status of shipping to : Approved . Updated by: %user_name%', 0, 27, 27, '2021-07-12 04:41:47', '2021-07-12 22:41:47'),
(73, 'create_from_order', 'Shipping was created from order %order_id%', 0, 28, 28, '2021-07-12 06:41:47', '2021-07-12 06:41:47'),
(74, 'update_status', 'Changed status of shipping to : Approved . Updated by: %user_name%', 0, 28, 28, '2021-07-12 06:41:47', '2021-07-12 22:41:47'),
(75, 'update_status', 'Changed status of shipping to : Delivered . Updated by: %user_name%', 0, 28, 28, '2021-07-12 22:41:47', '2021-07-12 22:41:47'),
(76, 'create_from_order', 'Shipping was created from order %order_id%', 0, 29, 29, '2021-07-06 06:41:47', '2021-07-06 06:41:47'),
(77, 'update_status', 'Changed status of shipping to : Approved . Updated by: %user_name%', 0, 29, 29, '2021-07-12 06:41:47', '2021-07-12 22:41:47'),
(78, 'create_from_order', 'Shipping was created from order %order_id%', 0, 30, 30, '2021-07-07 14:41:47', '2021-07-07 14:41:47'),
(79, 'update_status', 'Changed status of shipping to : Approved . Updated by: %user_name%', 0, 30, 30, '2021-07-12 06:41:47', '2021-07-12 22:41:47'),
(80, 'update_status', 'Changed status of shipping to : Delivered . Updated by: %user_name%', 0, 30, 30, '2021-07-12 22:41:47', '2021-07-12 22:41:47'),
(81, 'create_from_order', 'Shipping was created from order %order_id%', 0, 31, 31, '2021-07-08 20:41:47', '2021-07-08 20:41:47'),
(82, 'update_status', 'Changed status of shipping to : Approved . Updated by: %user_name%', 0, 31, 31, '2021-07-12 08:41:47', '2021-07-12 22:41:47'),
(83, 'create_from_order', 'Shipping was created from order %order_id%', 0, 32, 32, '2021-07-07 16:41:47', '2021-07-07 16:41:47'),
(84, 'update_status', 'Changed status of shipping to : Approved . Updated by: %user_name%', 0, 32, 32, '2021-07-12 08:41:47', '2021-07-12 22:41:47'),
(85, 'update_status', 'Changed status of shipping to : Delivered . Updated by: %user_name%', 0, 32, 32, '2021-07-12 22:41:47', '2021-07-12 22:41:47'),
(86, 'create_from_order', 'Shipping was created from order %order_id%', 0, 33, 33, '2021-07-10 22:41:47', '2021-07-10 22:41:47'),
(87, 'update_status', 'Changed status of shipping to : Approved . Updated by: %user_name%', 0, 33, 33, '2021-07-12 10:41:47', '2021-07-12 22:41:47'),
(88, 'update_status', 'Changed status of shipping to : Delivered . Updated by: %user_name%', 0, 33, 33, '2021-07-12 22:41:47', '2021-07-12 22:41:47'),
(89, 'create_from_order', 'Shipping was created from order %order_id%', 0, 34, 34, '2021-07-10 10:41:47', '2021-07-10 10:41:47'),
(90, 'update_status', 'Changed status of shipping to : Approved . Updated by: %user_name%', 0, 34, 34, '2021-07-12 10:41:47', '2021-07-12 22:41:47'),
(91, 'update_cod_status', 'Updated COD status to Completed . Updated by: %user_name%', 0, 34, 34, '2021-07-12 22:41:47', '2021-07-12 22:41:47'),
(92, 'update_status', 'Changed status of shipping to : Delivered . Updated by: %user_name%', 0, 34, 34, '2021-07-12 22:41:47', '2021-07-12 22:41:47'),
(93, 'create_from_order', 'Shipping was created from order %order_id%', 0, 35, 35, '2021-07-12 02:41:47', '2021-07-12 02:41:47'),
(94, 'update_status', 'Changed status of shipping to : Approved . Updated by: %user_name%', 0, 35, 35, '2021-07-12 12:41:47', '2021-07-12 22:41:47'),
(95, 'update_cod_status', 'Updated COD status to Completed . Updated by: %user_name%', 0, 35, 35, '2021-07-12 22:41:47', '2021-07-12 22:41:47'),
(96, 'update_status', 'Changed status of shipping to : Delivered . Updated by: %user_name%', 0, 35, 35, '2021-07-12 22:41:47', '2021-07-12 22:41:47'),
(97, 'create_from_order', 'Shipping was created from order %order_id%', 0, 36, 36, '2021-07-12 02:41:47', '2021-07-12 02:41:47'),
(98, 'update_status', 'Changed status of shipping to : Approved . Updated by: %user_name%', 0, 36, 36, '2021-07-12 12:41:47', '2021-07-12 22:41:47'),
(99, 'create_from_order', 'Shipping was created from order %order_id%', 0, 37, 37, '2021-07-10 20:41:47', '2021-07-10 20:41:47'),
(100, 'update_status', 'Changed status of shipping to : Approved . Updated by: %user_name%', 0, 37, 37, '2021-07-12 12:41:47', '2021-07-12 22:41:47'),
(101, 'create_from_order', 'Shipping was created from order %order_id%', 0, 38, 38, '2021-07-11 14:41:47', '2021-07-11 14:41:47'),
(102, 'update_status', 'Changed status of shipping to : Approved . Updated by: %user_name%', 0, 38, 38, '2021-07-12 14:41:47', '2021-07-12 22:41:47'),
(103, 'create_from_order', 'Shipping was created from order %order_id%', 0, 39, 39, '2021-07-09 14:41:47', '2021-07-09 14:41:47'),
(104, 'update_status', 'Changed status of shipping to : Approved . Updated by: %user_name%', 0, 39, 39, '2021-07-12 14:41:47', '2021-07-12 22:41:47'),
(105, 'create_from_order', 'Shipping was created from order %order_id%', 0, 40, 40, '2021-07-10 14:41:47', '2021-07-10 14:41:47'),
(106, 'update_status', 'Changed status of shipping to : Approved . Updated by: %user_name%', 0, 40, 40, '2021-07-12 14:41:47', '2021-07-12 22:41:47'),
(107, 'update_status', 'Changed status of shipping to : Delivered . Updated by: %user_name%', 0, 40, 40, '2021-07-12 22:41:47', '2021-07-12 22:41:47'),
(108, 'create_from_order', 'Shipping was created from order %order_id%', 0, 41, 41, '2021-07-10 22:41:47', '2021-07-10 22:41:47'),
(109, 'update_status', 'Changed status of shipping to : Approved . Updated by: %user_name%', 0, 41, 41, '2021-07-12 16:41:47', '2021-07-12 22:41:47'),
(110, 'create_from_order', 'Shipping was created from order %order_id%', 0, 42, 42, '2021-07-12 10:41:47', '2021-07-12 10:41:47'),
(111, 'update_status', 'Changed status of shipping to : Approved . Updated by: %user_name%', 0, 42, 42, '2021-07-12 16:41:47', '2021-07-12 22:41:47'),
(112, 'update_cod_status', 'Updated COD status to Completed . Updated by: %user_name%', 0, 42, 42, '2021-07-12 22:41:47', '2021-07-12 22:41:47'),
(113, 'update_status', 'Changed status of shipping to : Delivered . Updated by: %user_name%', 0, 42, 42, '2021-07-12 22:41:47', '2021-07-12 22:41:47'),
(114, 'create_from_order', 'Shipping was created from order %order_id%', 0, 43, 43, '2021-07-12 10:41:47', '2021-07-12 10:41:47'),
(115, 'update_status', 'Changed status of shipping to : Approved . Updated by: %user_name%', 0, 43, 43, '2021-07-12 16:41:47', '2021-07-12 22:41:47'),
(116, 'create_from_order', 'Shipping was created from order %order_id%', 0, 44, 44, '2021-07-12 16:41:47', '2021-07-12 16:41:47'),
(117, 'update_status', 'Changed status of shipping to : Approved . Updated by: %user_name%', 0, 44, 44, '2021-07-12 16:41:47', '2021-07-12 22:41:47'),
(118, 'update_status', 'Changed status of shipping to : Delivered . Updated by: %user_name%', 0, 44, 44, '2021-07-12 22:41:47', '2021-07-12 22:41:47'),
(119, 'create_from_order', 'Shipping was created from order %order_id%', 0, 45, 45, '2021-07-12 10:41:47', '2021-07-12 10:41:47'),
(120, 'update_status', 'Changed status of shipping to : Approved . Updated by: %user_name%', 0, 45, 45, '2021-07-12 18:41:47', '2021-07-12 22:41:47'),
(121, 'update_status', 'Changed status of shipping to : Delivered . Updated by: %user_name%', 0, 45, 45, '2021-07-12 22:41:47', '2021-07-12 22:41:47'),
(122, 'create_from_order', 'Shipping was created from order %order_id%', 0, 46, 46, '2021-07-11 22:41:47', '2021-07-11 22:41:47'),
(123, 'update_status', 'Changed status of shipping to : Approved . Updated by: %user_name%', 0, 46, 46, '2021-07-12 18:41:47', '2021-07-12 22:41:47'),
(124, 'create_from_order', 'Shipping was created from order %order_id%', 0, 47, 47, '2021-07-12 02:41:47', '2021-07-12 02:41:47'),
(125, 'update_status', 'Changed status of shipping to : Approved . Updated by: %user_name%', 0, 47, 47, '2021-07-12 18:41:47', '2021-07-12 22:41:47'),
(126, 'update_status', 'Changed status of shipping to : Delivered . Updated by: %user_name%', 0, 47, 47, '2021-07-12 22:41:47', '2021-07-12 22:41:47'),
(127, 'create_from_order', 'Shipping was created from order %order_id%', 0, 48, 48, '2021-07-12 18:41:47', '2021-07-12 18:41:47'),
(128, 'update_status', 'Changed status of shipping to : Approved . Updated by: %user_name%', 0, 48, 48, '2021-07-12 20:41:47', '2021-07-12 22:41:47'),
(129, 'update_status', 'Changed status of shipping to : Delivered . Updated by: %user_name%', 0, 48, 48, '2021-07-12 22:41:47', '2021-07-12 22:41:47'),
(130, 'create_from_order', 'Shipping was created from order %order_id%', 0, 49, 49, '2021-07-12 18:41:47', '2021-07-12 18:41:47'),
(131, 'update_status', 'Changed status of shipping to : Approved . Updated by: %user_name%', 0, 49, 49, '2021-07-12 20:41:47', '2021-07-12 22:41:47'),
(132, 'update_status', 'Changed status of shipping to : Delivered . Updated by: %user_name%', 0, 49, 49, '2021-07-12 22:41:47', '2021-07-12 22:41:47'),
(133, 'create_from_order', 'Shipping was created from order %order_id%', 0, 50, 50, '2021-07-12 20:41:47', '2021-07-12 20:41:47'),
(134, 'update_status', 'Changed status of shipping to : Approved . Updated by: %user_name%', 0, 50, 50, '2021-07-12 20:41:47', '2021-07-12 22:41:47'),
(135, 'update_status', 'Changed status of shipping to : Delivered . Updated by: %user_name%', 0, 50, 50, '2021-07-12 22:41:47', '2021-07-12 22:41:47'),
(136, 'create_from_order', 'Shipping was created from order %order_id%', 0, 51, 51, '2021-07-12 04:41:47', '2021-07-12 04:41:47'),
(137, 'update_status', 'Changed status of shipping to : Approved . Updated by: %user_name%', 0, 51, 51, '2021-07-12 20:41:47', '2021-07-12 22:41:47'),
(138, 'update_cod_status', 'Updated COD status to Completed . Updated by: %user_name%', 0, 51, 51, '2021-07-12 22:41:47', '2021-07-12 22:41:47'),
(139, 'update_status', 'Changed status of shipping to : Delivered . Updated by: %user_name%', 0, 51, 51, '2021-07-12 22:41:47', '2021-07-12 22:41:47');

-- --------------------------------------------------------

--
-- Table structure for table `ec_shipping`
--

CREATE TABLE `ec_shipping` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_shipping`
--

INSERT INTO `ec_shipping` (`id`, `title`, `country`, `created_at`, `updated_at`) VALUES
(1, 'All', NULL, '2021-07-12 22:41:36', '2021-07-12 22:41:36');

-- --------------------------------------------------------

--
-- Table structure for table `ec_shipping_rules`
--

CREATE TABLE `ec_shipping_rules` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_id` int(10) UNSIGNED NOT NULL,
  `type` enum('base_on_price','base_on_weight') COLLATE utf8mb4_unicode_ci DEFAULT 'base_on_price',
  `currency_id` int(10) UNSIGNED DEFAULT NULL,
  `from` decimal(15,2) DEFAULT '0.00',
  `to` decimal(15,2) DEFAULT '0.00',
  `price` decimal(15,2) DEFAULT '0.00',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_shipping_rules`
--

INSERT INTO `ec_shipping_rules` (`id`, `name`, `shipping_id`, `type`, `currency_id`, `from`, `to`, `price`, `created_at`, `updated_at`) VALUES
(1, 'Delivery', 1, 'base_on_price', NULL, '0.00', NULL, '0.00', '2021-07-12 22:41:36', '2021-07-12 22:41:36');

-- --------------------------------------------------------

--
-- Table structure for table `ec_shipping_rule_items`
--

CREATE TABLE `ec_shipping_rule_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `shipping_rule_id` int(10) UNSIGNED NOT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adjustment_price` decimal(15,2) DEFAULT '0.00',
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_store_locators`
--

CREATE TABLE `ec_store_locators` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_primary` tinyint(1) DEFAULT '0',
  `is_shipping_location` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_store_locators`
--

INSERT INTO `ec_store_locators` (`id`, `name`, `email`, `phone`, `address`, `country`, `state`, `city`, `is_primary`, `is_shipping_location`, `created_at`, `updated_at`) VALUES
(1, 'Martfury', 'sales@botble.com', '1800979769', '502 New Street', 'AU', 'Brighton VIC', 'Brighton VIC', 1, 1, '2021-07-12 22:41:42', '2021-07-12 22:41:42');

-- --------------------------------------------------------

--
-- Table structure for table `ec_taxes`
--

CREATE TABLE `ec_taxes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `percentage` double(8,6) DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_taxes`
--

INSERT INTO `ec_taxes` (`id`, `title`, `percentage`, `priority`, `status`, `created_at`, `updated_at`) VALUES
(1, 'VAT', 10.000000, 1, 'published', '2021-07-12 22:41:36', '2021-07-12 22:41:36'),
(2, 'None', 0.000000, 2, 'published', '2021-07-12 22:41:36', '2021-07-12 22:41:36');

-- --------------------------------------------------------

--
-- Table structure for table `ec_wish_lists`
--

CREATE TABLE `ec_wish_lists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `question`, `answer`, `category_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'What Shipping Methods Are Available?', 'Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.', 1, 'published', '2021-07-12 22:41:42', '2021-07-12 22:41:42'),
(2, 'Do You Ship Internationally?', 'Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.', 1, 'published', '2021-07-12 22:41:42', '2021-07-12 22:41:42'),
(3, 'How Long Will It Take To Get My Package?', 'Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.', 1, 'published', '2021-07-12 22:41:42', '2021-07-12 22:41:42'),
(4, 'What Payment Methods Are Accepted?', 'Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.', 2, 'published', '2021-07-12 22:41:42', '2021-07-12 22:41:42'),
(5, 'Is Buying On-Line Safe?', 'Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.', 2, 'published', '2021-07-12 22:41:42', '2021-07-12 22:41:42'),
(6, 'How do I place an Order?', 'Keytar cray slow-carb, Godard banh mi salvia pour-over. Slow-carb Odd Future seitan normcore. Master cleanse American Apparel gentrify flexitarian beard slow-carb next level. Raw denim polaroid paleo farm-to-table, put a bird on it lo-fi tattooed Wes Anderson Pinterest letterpress. Fingerstache McSweeney’s pour-over, letterpress Schlitz photo booth master cleanse bespoke hashtag chillwave gentrify.', 3, 'published', '2021-07-12 22:41:42', '2021-07-12 22:41:42'),
(7, 'How Can I Cancel Or Change My Order?', 'Plaid letterpress leggings craft beer meh ethical Pinterest. Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth.', 3, 'published', '2021-07-12 22:41:42', '2021-07-12 22:41:42'),
(8, 'Do I need an account to place an order?', 'Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY. Cray ugh 3 wolf moon fap, fashion axe irony butcher cornhole typewriter chambray VHS banjo street art.', 3, 'published', '2021-07-12 22:41:42', '2021-07-12 22:41:42'),
(9, 'How Do I Track My Order?', 'Keytar cray slow-carb, Godard banh mi salvia pour-over. Slow-carb @Odd Future seitan normcore. Master cleanse American Apparel gentrify flexitarian beard slow-carb next level.', 3, 'published', '2021-07-12 22:41:42', '2021-07-12 22:41:42'),
(10, 'How Can I Return a Product?', 'Kale chips Truffaut Williamsburg, hashtag fixie Pinterest raw denim c hambray drinking vinegar Carles street art Bushwick gastropub. Wolf Tumblr paleo church-key. Plaid food truck Echo Park YOLO bitters hella, direct trade Thundercats leggings quinoa before they sold out. You probably haven’t heard of them wayfarers authentic umami drinking vinegar Pinterest Cosby sweater, fingerstache fap High Life.', 3, 'published', '2021-07-12 22:41:42', '2021-07-12 22:41:42');

-- --------------------------------------------------------

--
-- Table structure for table `faq_categories`
--

CREATE TABLE `faq_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` tinyint(4) NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faq_categories`
--

INSERT INTO `faq_categories` (`id`, `name`, `order`, `status`, `created_at`, `updated_at`) VALUES
(1, 'SHIPPING', 0, 'published', '2021-07-12 22:41:42', '2021-07-12 22:41:42'),
(2, 'PAYMENT', 1, 'published', '2021-07-12 22:41:42', '2021-07-12 22:41:42'),
(3, 'Order & Returns', 2, 'published', '2021-07-12 22:41:42', '2021-07-12 22:41:42');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `media_files`
--

CREATE TABLE `media_files` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `folder_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `mime_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` int(11) NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media_files`
--

INSERT INTO `media_files` (`id`, `user_id`, `name`, `folder_id`, `mime_type`, `size`, `url`, `options`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 0, '1', 1, 'image/jpeg', 2200, 'brands/1.jpg', '[]', '2021-07-12 22:41:10', '2021-07-12 22:41:10', NULL),
(2, 0, '2', 1, 'image/jpeg', 2685, 'brands/2.jpg', '[]', '2021-07-12 22:41:10', '2021-07-12 22:41:10', NULL),
(3, 0, '3', 1, 'image/jpeg', 2311, 'brands/3.jpg', '[]', '2021-07-12 22:41:10', '2021-07-12 22:41:10', NULL),
(4, 0, '4', 1, 'image/jpeg', 2374, 'brands/4.jpg', '[]', '2021-07-12 22:41:10', '2021-07-12 22:41:10', NULL),
(5, 0, '5', 1, 'image/jpeg', 1927, 'brands/5.jpg', '[]', '2021-07-12 22:41:10', '2021-07-12 22:41:10', NULL),
(6, 0, '6', 1, 'image/jpeg', 2519, 'brands/6.jpg', '[]', '2021-07-12 22:41:10', '2021-07-12 22:41:10', NULL),
(7, 0, '7', 1, 'image/jpeg', 3043, 'brands/7.jpg', '[]', '2021-07-12 22:41:10', '2021-07-12 22:41:10', NULL),
(8, 0, '1', 2, 'image/jpeg', 5173, 'product-categories/1.jpg', '[]', '2021-07-12 22:41:11', '2021-07-12 22:41:11', NULL),
(9, 0, '2', 2, 'image/jpeg', 7355, 'product-categories/2.jpg', '[]', '2021-07-12 22:41:11', '2021-07-12 22:41:11', NULL),
(10, 0, '3', 2, 'image/jpeg', 4427, 'product-categories/3.jpg', '[]', '2021-07-12 22:41:11', '2021-07-12 22:41:11', NULL),
(11, 0, '4', 2, 'image/jpeg', 2963, 'product-categories/4.jpg', '[]', '2021-07-12 22:41:11', '2021-07-12 22:41:11', NULL),
(12, 0, '5', 2, 'image/jpeg', 5016, 'product-categories/5.jpg', '[]', '2021-07-12 22:41:11', '2021-07-12 22:41:11', NULL),
(13, 0, '6', 2, 'image/jpeg', 4101, 'product-categories/6.jpg', '[]', '2021-07-12 22:41:11', '2021-07-12 22:41:11', NULL),
(14, 0, '7', 2, 'image/jpeg', 2576, 'product-categories/7.jpg', '[]', '2021-07-12 22:41:11', '2021-07-12 22:41:11', NULL),
(15, 0, '8', 2, 'image/jpeg', 4670, 'product-categories/8.jpg', '[]', '2021-07-12 22:41:11', '2021-07-12 22:41:11', NULL),
(16, 0, '1', 3, 'image/jpeg', 4911, 'products/1.jpg', '[]', '2021-07-12 22:41:12', '2021-07-12 22:41:12', NULL),
(17, 0, '10-1', 3, 'image/jpeg', 120755, 'products/10-1.jpg', '[]', '2021-07-12 22:41:12', '2021-07-12 22:41:12', NULL),
(18, 0, '10-2', 3, 'image/jpeg', 148563, 'products/10-2.jpg', '[]', '2021-07-12 22:41:12', '2021-07-12 22:41:12', NULL),
(19, 0, '10', 3, 'image/jpeg', 11176, 'products/10.jpg', '[]', '2021-07-12 22:41:13', '2021-07-12 22:41:13', NULL),
(20, 0, '11-1', 3, 'image/jpeg', 13706, 'products/11-1.jpg', '[]', '2021-07-12 22:41:13', '2021-07-12 22:41:13', NULL),
(21, 0, '11-2', 3, 'image/jpeg', 16809, 'products/11-2.jpg', '[]', '2021-07-12 22:41:13', '2021-07-12 22:41:13', NULL),
(22, 0, '11-3', 3, 'image/jpeg', 23991, 'products/11-3.jpg', '[]', '2021-07-12 22:41:13', '2021-07-12 22:41:13', NULL),
(23, 0, '11', 3, 'image/jpeg', 8234, 'products/11.jpg', '[]', '2021-07-12 22:41:13', '2021-07-12 22:41:13', NULL),
(24, 0, '12-1', 3, 'image/jpeg', 47775, 'products/12-1.jpg', '[]', '2021-07-12 22:41:13', '2021-07-12 22:41:13', NULL),
(25, 0, '12-2', 3, 'image/jpeg', 52722, 'products/12-2.jpg', '[]', '2021-07-12 22:41:14', '2021-07-12 22:41:14', NULL),
(26, 0, '12-3', 3, 'image/jpeg', 57295, 'products/12-3.jpg', '[]', '2021-07-12 22:41:14', '2021-07-12 22:41:14', NULL),
(27, 0, '12', 3, 'image/jpeg', 9642, 'products/12.jpg', '[]', '2021-07-12 22:41:15', '2021-07-12 22:41:15', NULL),
(28, 0, '13-1', 3, 'image/jpeg', 7494, 'products/13-1.jpg', '[]', '2021-07-12 22:41:15', '2021-07-12 22:41:15', NULL),
(29, 0, '13', 3, 'image/jpeg', 7266, 'products/13.jpg', '[]', '2021-07-12 22:41:15', '2021-07-12 22:41:15', NULL),
(30, 0, '14', 3, 'image/jpeg', 6626, 'products/14.jpg', '[]', '2021-07-12 22:41:15', '2021-07-12 22:41:15', NULL),
(31, 0, '15-1', 3, 'image/jpeg', 9014, 'products/15-1.jpg', '[]', '2021-07-12 22:41:15', '2021-07-12 22:41:15', NULL),
(32, 0, '15', 3, 'image/jpeg', 6629, 'products/15.jpg', '[]', '2021-07-12 22:41:15', '2021-07-12 22:41:15', NULL),
(33, 0, '16', 3, 'image/jpeg', 8558, 'products/16.jpg', '[]', '2021-07-12 22:41:15', '2021-07-12 22:41:15', NULL),
(34, 0, '17-1', 3, 'image/jpeg', 63248, 'products/17-1.jpg', '[]', '2021-07-12 22:41:15', '2021-07-12 22:41:15', NULL),
(35, 0, '17-2', 3, 'image/jpeg', 71404, 'products/17-2.jpg', '[]', '2021-07-12 22:41:16', '2021-07-12 22:41:16', NULL),
(36, 0, '17-3', 3, 'image/jpeg', 58949, 'products/17-3.jpg', '[]', '2021-07-12 22:41:16', '2021-07-12 22:41:16', NULL),
(37, 0, '17', 3, 'image/jpeg', 7050, 'products/17.jpg', '[]', '2021-07-12 22:41:17', '2021-07-12 22:41:17', NULL),
(38, 0, '18-1', 3, 'image/jpeg', 527022, 'products/18-1.jpg', '[]', '2021-07-12 22:41:17', '2021-07-12 22:41:17', NULL),
(39, 0, '18-2', 3, 'image/jpeg', 43849, 'products/18-2.jpg', '[]', '2021-07-12 22:41:17', '2021-07-12 22:41:17', NULL),
(40, 0, '18-3', 3, 'image/jpeg', 63876, 'products/18-3.jpg', '[]', '2021-07-12 22:41:18', '2021-07-12 22:41:18', NULL),
(41, 0, '18', 3, 'image/jpeg', 61587, 'products/18.jpg', '[]', '2021-07-12 22:41:18', '2021-07-12 22:41:18', NULL),
(42, 0, '19-1', 3, 'image/jpeg', 23166, 'products/19-1.jpg', '[]', '2021-07-12 22:41:18', '2021-07-12 22:41:18', NULL),
(43, 0, '19-2', 3, 'image/jpeg', 12306, 'products/19-2.jpg', '[]', '2021-07-12 22:41:18', '2021-07-12 22:41:18', NULL),
(44, 0, '19-3', 3, 'image/jpeg', 51458, 'products/19-3.jpg', '[]', '2021-07-12 22:41:18', '2021-07-12 22:41:18', NULL),
(45, 0, '19', 3, 'image/jpeg', 227872, 'products/19.jpg', '[]', '2021-07-12 22:41:19', '2021-07-12 22:41:19', NULL),
(46, 0, '2-1', 3, 'image/jpeg', 85522, 'products/2-1.jpg', '[]', '2021-07-12 22:41:19', '2021-07-12 22:41:19', NULL),
(47, 0, '2-2', 3, 'image/jpeg', 122423, 'products/2-2.jpg', '[]', '2021-07-12 22:41:19', '2021-07-12 22:41:19', NULL),
(48, 0, '2-3', 3, 'image/jpeg', 61996, 'products/2-3.jpg', '[]', '2021-07-12 22:41:20', '2021-07-12 22:41:20', NULL),
(49, 0, '2', 3, 'image/jpeg', 10832, 'products/2.jpg', '[]', '2021-07-12 22:41:20', '2021-07-12 22:41:20', NULL),
(50, 0, '20-1', 3, 'image/jpeg', 108013, 'products/20-1.jpg', '[]', '2021-07-12 22:41:20', '2021-07-12 22:41:20', NULL),
(51, 0, '20-2', 3, 'image/jpeg', 107598, 'products/20-2.jpg', '[]', '2021-07-12 22:41:21', '2021-07-12 22:41:21', NULL),
(52, 0, '20-3', 3, 'image/jpeg', 31959, 'products/20-3.jpg', '[]', '2021-07-12 22:41:21', '2021-07-12 22:41:21', NULL),
(53, 0, '20', 3, 'image/jpeg', 12798, 'products/20.jpg', '[]', '2021-07-12 22:41:21', '2021-07-12 22:41:21', NULL),
(54, 0, '21-1', 3, 'image/jpeg', 92022, 'products/21-1.jpg', '[]', '2021-07-12 22:41:22', '2021-07-12 22:41:22', NULL),
(55, 0, '21-2', 3, 'image/jpeg', 73796, 'products/21-2.jpg', '[]', '2021-07-12 22:41:22', '2021-07-12 22:41:22', NULL),
(56, 0, '21', 3, 'image/jpeg', 72410, 'products/21.jpg', '[]', '2021-07-12 22:41:22', '2021-07-12 22:41:22', NULL),
(57, 0, '22-1', 3, 'image/jpeg', 50174, 'products/22-1.jpg', '[]', '2021-07-12 22:41:23', '2021-07-12 22:41:23', NULL),
(58, 0, '22-2', 3, 'image/jpeg', 63267, 'products/22-2.jpg', '[]', '2021-07-12 22:41:23', '2021-07-12 22:41:23', NULL),
(59, 0, '22-3', 3, 'image/jpeg', 125017, 'products/22-3.jpg', '[]', '2021-07-12 22:41:23', '2021-07-12 22:41:23', NULL),
(60, 0, '22', 3, 'image/jpeg', 88636, 'products/22.jpg', '[]', '2021-07-12 22:41:24', '2021-07-12 22:41:24', NULL),
(61, 0, '23-1', 3, 'image/jpeg', 64117, 'products/23-1.jpg', '[]', '2021-07-12 22:41:24', '2021-07-12 22:41:24', NULL),
(62, 0, '23-2', 3, 'image/jpeg', 96786, 'products/23-2.jpg', '[]', '2021-07-12 22:41:25', '2021-07-12 22:41:25', NULL),
(63, 0, '23-3', 3, 'image/jpeg', 46477, 'products/23-3.jpg', '[]', '2021-07-12 22:41:25', '2021-07-12 22:41:25', NULL),
(64, 0, '23', 3, 'image/jpeg', 68142, 'products/23.jpg', '[]', '2021-07-12 22:41:25', '2021-07-12 22:41:25', NULL),
(65, 0, '3', 3, 'image/jpeg', 8388, 'products/3.jpg', '[]', '2021-07-12 22:41:26', '2021-07-12 22:41:26', NULL),
(66, 0, '4-1', 3, 'image/jpeg', 39071, 'products/4-1.jpg', '[]', '2021-07-12 22:41:26', '2021-07-12 22:41:26', NULL),
(67, 0, '4-2', 3, 'image/jpeg', 35982, 'products/4-2.jpg', '[]', '2021-07-12 22:41:26', '2021-07-12 22:41:26', NULL),
(68, 0, '4-3', 3, 'image/jpeg', 62867, 'products/4-3.jpg', '[]', '2021-07-12 22:41:27', '2021-07-12 22:41:27', NULL),
(69, 0, '4', 3, 'image/jpeg', 5547, 'products/4.jpg', '[]', '2021-07-12 22:41:27', '2021-07-12 22:41:27', NULL),
(70, 0, '5-1', 3, 'image/jpeg', 72383, 'products/5-1.jpg', '[]', '2021-07-12 22:41:27', '2021-07-12 22:41:27', NULL),
(71, 0, '5-2', 3, 'image/jpeg', 108591, 'products/5-2.jpg', '[]', '2021-07-12 22:41:28', '2021-07-12 22:41:28', NULL),
(72, 0, '5-3', 3, 'image/jpeg', 63741, 'products/5-3.jpg', '[]', '2021-07-12 22:41:28', '2021-07-12 22:41:28', NULL),
(73, 0, '5', 3, 'image/jpeg', 98052, 'products/5.jpg', '[]', '2021-07-12 22:41:28', '2021-07-12 22:41:28', NULL),
(74, 0, '6', 3, 'image/jpeg', 10944, 'products/6.jpg', '[]', '2021-07-12 22:41:29', '2021-07-12 22:41:29', NULL),
(75, 0, '7', 3, 'image/jpeg', 10160, 'products/7.jpg', '[]', '2021-07-12 22:41:29', '2021-07-12 22:41:29', NULL),
(76, 0, '8-1', 3, 'image/jpeg', 9986, 'products/8-1.jpg', '[]', '2021-07-12 22:41:29', '2021-07-12 22:41:29', NULL),
(77, 0, '8-2', 3, 'image/jpeg', 8132, 'products/8-2.jpg', '[]', '2021-07-12 22:41:29', '2021-07-12 22:41:29', NULL),
(78, 0, '8-3', 3, 'image/jpeg', 7867, 'products/8-3.jpg', '[]', '2021-07-12 22:41:29', '2021-07-12 22:41:29', NULL),
(79, 0, '8', 3, 'image/jpeg', 10459, 'products/8.jpg', '[]', '2021-07-12 22:41:29', '2021-07-12 22:41:29', NULL),
(80, 0, '9-1', 3, 'image/jpeg', 623616, 'products/9-1.jpg', '[]', '2021-07-12 22:41:29', '2021-07-12 22:41:29', NULL),
(81, 0, '9-2', 3, 'image/jpeg', 647454, 'products/9-2.jpg', '[]', '2021-07-12 22:41:30', '2021-07-12 22:41:30', NULL),
(82, 0, '9', 3, 'image/jpeg', 16733, 'products/9.jpg', '[]', '2021-07-12 22:41:31', '2021-07-12 22:41:31', NULL),
(83, 0, '1', 4, 'image/jpeg', 11752, 'customers/1.jpg', '[]', '2021-07-12 22:41:32', '2021-07-12 22:41:32', NULL),
(84, 0, '10', 4, 'image/jpeg', 27814, 'customers/10.jpg', '[]', '2021-07-12 22:41:32', '2021-07-12 22:41:32', NULL),
(85, 0, '2', 4, 'image/jpeg', 19005, 'customers/2.jpg', '[]', '2021-07-12 22:41:32', '2021-07-12 22:41:32', NULL),
(86, 0, '3', 4, 'image/jpeg', 20400, 'customers/3.jpg', '[]', '2021-07-12 22:41:32', '2021-07-12 22:41:32', NULL),
(87, 0, '4', 4, 'image/jpeg', 26819, 'customers/4.jpg', '[]', '2021-07-12 22:41:32', '2021-07-12 22:41:32', NULL),
(88, 0, '5', 4, 'image/jpeg', 14367, 'customers/5.jpg', '[]', '2021-07-12 22:41:32', '2021-07-12 22:41:32', NULL),
(89, 0, '6', 4, 'image/jpeg', 12367, 'customers/6.jpg', '[]', '2021-07-12 22:41:32', '2021-07-12 22:41:32', NULL),
(90, 0, '7', 4, 'image/jpeg', 20652, 'customers/7.jpg', '[]', '2021-07-12 22:41:32', '2021-07-12 22:41:32', NULL),
(91, 0, '8', 4, 'image/jpeg', 21164, 'customers/8.jpg', '[]', '2021-07-12 22:41:33', '2021-07-12 22:41:33', NULL),
(92, 0, '9', 4, 'image/jpeg', 6084, 'customers/9.jpg', '[]', '2021-07-12 22:41:33', '2021-07-12 22:41:33', NULL),
(93, 0, '1', 5, 'image/jpeg', 532819, 'news/1.jpg', '[]', '2021-07-12 22:41:36', '2021-07-12 22:41:36', NULL),
(94, 0, '2', 5, 'image/jpeg', 553729, 'news/2.jpg', '[]', '2021-07-12 22:41:37', '2021-07-12 22:41:37', NULL),
(95, 0, '3', 5, 'image/jpeg', 522223, 'news/3.jpg', '[]', '2021-07-12 22:41:37', '2021-07-12 22:41:37', NULL),
(96, 0, '4', 5, 'image/jpeg', 910908, 'news/4.jpg', '[]', '2021-07-12 22:41:38', '2021-07-12 22:41:38', NULL),
(97, 0, '5', 5, 'image/jpeg', 666561, 'news/5.jpg', '[]', '2021-07-12 22:41:38', '2021-07-12 22:41:38', NULL),
(98, 0, '6', 5, 'image/jpeg', 431929, 'news/6.jpg', '[]', '2021-07-12 22:41:39', '2021-07-12 22:41:39', NULL),
(99, 0, '7', 5, 'image/jpeg', 568268, 'news/7.jpg', '[]', '2021-07-12 22:41:39', '2021-07-12 22:41:39', NULL),
(100, 0, '1', 6, 'image/jpeg', 139880, 'sliders/1.jpg', '[]', '2021-07-12 22:41:40', '2021-07-12 22:41:40', NULL),
(101, 0, '2', 6, 'image/jpeg', 85128, 'sliders/2.jpg', '[]', '2021-07-12 22:41:40', '2021-07-12 22:41:40', NULL),
(102, 0, '3', 6, 'image/jpeg', 85668, 'sliders/3.jpg', '[]', '2021-07-12 22:41:40', '2021-07-12 22:41:40', NULL),
(103, 0, '1', 7, 'image/jpeg', 56015, 'promotion/1.jpg', '[]', '2021-07-12 22:41:41', '2021-07-12 22:41:41', NULL),
(104, 0, '2', 7, 'image/jpeg', 39964, 'promotion/2.jpg', '[]', '2021-07-12 22:41:41', '2021-07-12 22:41:41', NULL),
(105, 0, '3', 7, 'image/jpeg', 71948, 'promotion/3.jpg', '[]', '2021-07-12 22:41:41', '2021-07-12 22:41:41', NULL),
(106, 0, '4', 7, 'image/jpeg', 94590, 'promotion/4.jpg', '[]', '2021-07-12 22:41:41', '2021-07-12 22:41:41', NULL),
(107, 0, '5', 7, 'image/jpeg', 96153, 'promotion/5.jpg', '[]', '2021-07-12 22:41:41', '2021-07-12 22:41:41', NULL),
(108, 0, '6', 7, 'image/jpeg', 160910, 'promotion/6.jpg', '[]', '2021-07-12 22:41:42', '2021-07-12 22:41:42', NULL),
(109, 0, '7', 7, 'image/jpeg', 59044, 'promotion/7.jpg', '[]', '2021-07-12 22:41:42', '2021-07-12 22:41:42', NULL),
(110, 0, '8', 7, 'image/jpeg', 39964, 'promotion/8.jpg', '[]', '2021-07-12 22:41:42', '2021-07-12 22:41:42', NULL),
(111, 0, 'app', 8, 'image/png', 88771, 'general/app.png', '[]', '2021-07-12 22:41:43', '2021-07-12 22:41:43', NULL),
(112, 0, 'coming-soon', 8, 'image/jpeg', 83359, 'general/coming-soon.jpg', '[]', '2021-07-12 22:41:43', '2021-07-12 22:41:43', NULL),
(113, 0, 'favicon', 8, 'image/png', 5147, 'general/favicon.png', '[]', '2021-07-12 22:41:43', '2021-07-12 22:41:43', NULL),
(114, 0, 'logo-dark', 8, 'image/png', 906, 'general/logo-dark.png', '[]', '2021-07-12 22:41:43', '2021-07-12 22:41:43', NULL),
(115, 0, 'logo-light', 8, 'image/png', 1430, 'general/logo-light.png', '[]', '2021-07-12 22:41:43', '2021-07-12 22:41:43', NULL),
(116, 0, 'logo', 8, 'image/png', 892, 'general/logo.png', '[]', '2021-07-12 22:41:44', '2021-07-12 22:41:44', NULL),
(117, 0, 'newsletter', 8, 'image/jpeg', 25569, 'general/newsletter.jpg', '[]', '2021-07-12 22:41:44', '2021-07-12 22:41:44', NULL),
(118, 0, 'payment-method-1', 8, 'image/jpeg', 976, 'general/payment-method-1.jpg', '[]', '2021-07-12 22:41:44', '2021-07-12 22:41:44', NULL),
(119, 0, 'payment-method-2', 8, 'image/jpeg', 1122, 'general/payment-method-2.jpg', '[]', '2021-07-12 22:41:44', '2021-07-12 22:41:44', NULL),
(120, 0, 'payment-method-3', 8, 'image/jpeg', 1040, 'general/payment-method-3.jpg', '[]', '2021-07-12 22:41:44', '2021-07-12 22:41:44', NULL),
(121, 0, 'payment-method-4', 8, 'image/jpeg', 722, 'general/payment-method-4.jpg', '[]', '2021-07-12 22:41:44', '2021-07-12 22:41:44', NULL),
(122, 0, 'payment-method-5', 8, 'image/jpeg', 773, 'general/payment-method-5.jpg', '[]', '2021-07-12 22:41:44', '2021-07-12 22:41:44', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `media_folders`
--

CREATE TABLE `media_folders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media_folders`
--

INSERT INTO `media_folders` (`id`, `user_id`, `name`, `slug`, `parent_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 0, 'brands', 'brands', 0, '2021-07-12 22:41:10', '2021-07-12 22:41:10', NULL),
(2, 0, 'product-categories', 'product-categories', 0, '2021-07-12 22:41:11', '2021-07-12 22:41:11', NULL),
(3, 0, 'products', 'products', 0, '2021-07-12 22:41:12', '2021-07-12 22:41:12', NULL),
(4, 0, 'customers', 'customers', 0, '2021-07-12 22:41:32', '2021-07-12 22:41:32', NULL),
(5, 0, 'news', 'news', 0, '2021-07-12 22:41:36', '2021-07-12 22:41:36', NULL),
(6, 0, 'sliders', 'sliders', 0, '2021-07-12 22:41:40', '2021-07-12 22:41:40', NULL),
(7, 0, 'promotion', 'promotion', 0, '2021-07-12 22:41:41', '2021-07-12 22:41:41', NULL),
(8, 0, 'general', 'general', 0, '2021-07-12 22:41:43', '2021-07-12 22:41:43', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `media_settings`
--

CREATE TABLE `media_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `media_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Main menu', 'main-menu', 'published', '2021-07-12 22:41:42', '2021-07-12 22:41:42'),
(2, 'Quick links', 'quick-links', 'published', '2021-07-12 22:41:42', '2021-07-12 22:41:42'),
(3, 'Company', 'company', 'published', '2021-07-12 22:41:42', '2021-07-12 22:41:42'),
(4, 'Business', 'business', 'published', '2021-07-12 22:41:42', '2021-07-12 22:41:42');

-- --------------------------------------------------------

--
-- Table structure for table `menu_locations`
--

CREATE TABLE `menu_locations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED NOT NULL,
  `location` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_locations`
--

INSERT INTO `menu_locations` (`id`, `menu_id`, `location`, `created_at`, `updated_at`) VALUES
(1, 1, 'main-menu', '2021-07-12 22:41:42', '2021-07-12 22:41:42');

-- --------------------------------------------------------

--
-- Table structure for table `menu_nodes`
--

CREATE TABLE `menu_nodes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `reference_id` int(10) UNSIGNED DEFAULT NULL,
  `reference_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_font` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `css_class` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `has_child` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_nodes`
--

INSERT INTO `menu_nodes` (`id`, `menu_id`, `parent_id`, `reference_id`, `reference_type`, `url`, `icon_font`, `position`, `title`, `css_class`, `target`, `has_child`, `created_at`, `updated_at`) VALUES
(1, 1, 0, NULL, NULL, '/', NULL, 0, 'Home', NULL, '_self', 0, '2021-07-12 22:41:42', '2021-07-12 22:41:42'),
(2, 1, 0, NULL, NULL, '#', NULL, 0, 'Pages', NULL, '_self', 1, '2021-07-12 22:41:42', '2021-07-12 22:41:42'),
(3, 1, 2, 2, 'Botble\\Page\\Models\\Page', '/about-us', NULL, 0, 'About us', NULL, '_self', 0, '2021-07-12 22:41:42', '2021-07-12 22:41:42'),
(4, 1, 2, 3, 'Botble\\Page\\Models\\Page', '/terms-of-use', NULL, 0, 'Terms Of Use', NULL, '_self', 0, '2021-07-12 22:41:42', '2021-07-12 22:41:42'),
(5, 1, 2, 4, 'Botble\\Page\\Models\\Page', '/terms-conditions', NULL, 0, 'Terms & Conditions', NULL, '_self', 0, '2021-07-12 22:41:42', '2021-07-12 22:41:42'),
(6, 1, 2, 5, 'Botble\\Page\\Models\\Page', '/refund-policy', NULL, 0, 'Refund Policy', NULL, '_self', 0, '2021-07-12 22:41:42', '2021-07-12 22:41:42'),
(7, 1, 2, 12, 'Botble\\Page\\Models\\Page', '/coming-soon', NULL, 0, 'Coming soon', NULL, '_self', 0, '2021-07-12 22:41:42', '2021-07-12 22:41:42'),
(8, 1, 0, NULL, NULL, '/products', NULL, 0, 'Shop', NULL, '_self', 1, '2021-07-12 22:41:42', '2021-07-12 22:41:42'),
(9, 1, 8, NULL, NULL, '/products', NULL, 0, 'All products', NULL, '_self', 0, '2021-07-12 22:41:42', '2021-07-12 22:41:42'),
(10, 1, 8, 15, 'Botble\\Ecommerce\\Models\\ProductCategory', '/product-categories/consumer-electronic', NULL, 0, 'Products Of Category', NULL, '_self', 0, '2021-07-12 22:41:42', '2021-07-12 22:41:42'),
(11, 1, 8, NULL, NULL, '/products/beat-headphone', NULL, 0, 'Product Single', NULL, '_self', 0, '2021-07-12 22:41:42', '2021-07-12 22:41:42'),
(12, 1, 0, 6, 'Botble\\Page\\Models\\Page', '/blog', NULL, 0, 'Blog', NULL, '_self', 0, '2021-07-12 22:41:42', '2021-07-12 22:41:42'),
(13, 1, 0, 7, 'Botble\\Page\\Models\\Page', '/faqs', NULL, 0, 'FAQs', NULL, '_self', 0, '2021-07-12 22:41:42', '2021-07-12 22:41:42'),
(14, 1, 0, 8, 'Botble\\Page\\Models\\Page', '/contact', NULL, 0, 'Contact', NULL, '_self', 0, '2021-07-12 22:41:42', '2021-07-12 22:41:42'),
(15, 2, 0, 3, 'Botble\\Page\\Models\\Page', '/terms-of-use', NULL, 0, 'Terms Of Use', NULL, '_self', 0, '2021-07-12 22:41:42', '2021-07-12 22:41:42'),
(16, 2, 0, 4, 'Botble\\Page\\Models\\Page', '/terms-conditions', NULL, 0, 'Terms & Conditions', NULL, '_self', 0, '2021-07-12 22:41:42', '2021-07-12 22:41:42'),
(17, 2, 0, 5, 'Botble\\Page\\Models\\Page', '/refund-policy', NULL, 0, 'Refund Policy', NULL, '_self', 0, '2021-07-12 22:41:42', '2021-07-12 22:41:42'),
(18, 2, 0, 7, 'Botble\\Page\\Models\\Page', '/faqs', NULL, 0, 'FAQs', NULL, '_self', 0, '2021-07-12 22:41:42', '2021-07-12 22:41:42'),
(19, 2, 0, NULL, NULL, '/nothing', NULL, 0, '404 Page', NULL, '_self', 0, '2021-07-12 22:41:42', '2021-07-12 22:41:42'),
(20, 3, 0, 2, 'Botble\\Page\\Models\\Page', '/about-us', NULL, 0, 'About us', NULL, '_self', 0, '2021-07-12 22:41:42', '2021-07-12 22:41:42'),
(21, 3, 0, 10, 'Botble\\Page\\Models\\Page', '/affiliate', NULL, 0, 'Affiliate', NULL, '_self', 0, '2021-07-12 22:41:42', '2021-07-12 22:41:42'),
(22, 3, 0, 11, 'Botble\\Page\\Models\\Page', '/career', NULL, 0, 'Career', NULL, '_self', 0, '2021-07-12 22:41:42', '2021-07-12 22:41:42'),
(23, 3, 0, 8, 'Botble\\Page\\Models\\Page', '/contact', NULL, 0, 'Contact us', NULL, '_self', 0, '2021-07-12 22:41:42', '2021-07-12 22:41:42'),
(24, 4, 0, 6, 'Botble\\Page\\Models\\Page', '/blog', NULL, 0, 'Our blog', NULL, '_self', 0, '2021-07-12 22:41:42', '2021-07-12 22:41:42'),
(25, 4, 0, NULL, NULL, '/cart', NULL, 0, 'Cart', NULL, '_self', 0, '2021-07-12 22:41:42', '2021-07-12 22:41:42'),
(26, 4, 0, NULL, NULL, '/customer/overview', NULL, 0, 'My account', NULL, '_self', 0, '2021-07-12 22:41:42', '2021-07-12 22:41:42'),
(27, 4, 0, NULL, NULL, '/products', NULL, 0, 'Shop', NULL, '_self', 0, '2021-07-12 22:41:42', '2021-07-12 22:41:42');

-- --------------------------------------------------------

--
-- Table structure for table `meta_boxes`
--

CREATE TABLE `meta_boxes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_value` text COLLATE utf8mb4_unicode_ci,
  `reference_id` int(10) UNSIGNED NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `meta_boxes`
--

INSERT INTO `meta_boxes` (`id`, `meta_key`, `meta_value`, `reference_id`, `reference_type`, `created_at`, `updated_at`) VALUES
(1, 'icon', '[\"icon-star\"]', 1, 'Botble\\Ecommerce\\Models\\ProductCategory', '2021-07-12 22:41:12', '2021-07-12 22:41:12'),
(2, 'icon', '[\"icon-laundry\"]', 2, 'Botble\\Ecommerce\\Models\\ProductCategory', '2021-07-12 22:41:12', '2021-07-12 22:41:12'),
(3, 'icon', '[\"icon-shirt\"]', 3, 'Botble\\Ecommerce\\Models\\ProductCategory', '2021-07-12 22:41:12', '2021-07-12 22:41:12'),
(4, 'icon', '[\"icon-desktop\"]', 4, 'Botble\\Ecommerce\\Models\\ProductCategory', '2021-07-12 22:41:12', '2021-07-12 22:41:12'),
(5, 'icon', '[\"icon-lampshade\"]', 5, 'Botble\\Ecommerce\\Models\\ProductCategory', '2021-07-12 22:41:12', '2021-07-12 22:41:12'),
(6, 'icon', '[\"icon-heart-pulse\"]', 6, 'Botble\\Ecommerce\\Models\\ProductCategory', '2021-07-12 22:41:12', '2021-07-12 22:41:12'),
(7, 'icon', '[\"icon-diamond2\"]', 7, 'Botble\\Ecommerce\\Models\\ProductCategory', '2021-07-12 22:41:12', '2021-07-12 22:41:12'),
(8, 'icon', '[\"icon-desktop\"]', 8, 'Botble\\Ecommerce\\Models\\ProductCategory', '2021-07-12 22:41:12', '2021-07-12 22:41:12'),
(9, 'icon', '[\"icon-smartphone\"]', 9, 'Botble\\Ecommerce\\Models\\ProductCategory', '2021-07-12 22:41:12', '2021-07-12 22:41:12'),
(10, 'icon', '[\"icon-baby-bottle\"]', 10, 'Botble\\Ecommerce\\Models\\ProductCategory', '2021-07-12 22:41:12', '2021-07-12 22:41:12'),
(11, 'icon', '[\"icon-baseball\"]', 11, 'Botble\\Ecommerce\\Models\\ProductCategory', '2021-07-12 22:41:12', '2021-07-12 22:41:12'),
(12, 'icon', '[\"icon-book2\"]', 12, 'Botble\\Ecommerce\\Models\\ProductCategory', '2021-07-12 22:41:12', '2021-07-12 22:41:12'),
(13, 'icon', '[\"icon-car-siren\"]', 13, 'Botble\\Ecommerce\\Models\\ProductCategory', '2021-07-12 22:41:12', '2021-07-12 22:41:12'),
(14, 'icon', '[\"icon-wrench\"]', 14, 'Botble\\Ecommerce\\Models\\ProductCategory', '2021-07-12 22:41:12', '2021-07-12 22:41:12');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2013_04_09_032329_create_base_tables', 1),
(2, '2013_04_09_062329_create_revisions_table', 1),
(3, '2014_10_12_000000_create_users_table', 1),
(4, '2014_10_12_100000_create_password_resets_table', 1),
(5, '2016_06_10_230148_create_acl_tables', 1),
(6, '2016_06_14_230857_create_menus_table', 1),
(7, '2016_06_28_221418_create_pages_table', 1),
(8, '2016_10_05_074239_create_setting_table', 1),
(9, '2016_11_28_032840_create_dashboard_widget_tables', 1),
(10, '2016_12_16_084601_create_widgets_table', 1),
(11, '2017_05_09_070343_create_media_tables', 1),
(12, '2017_11_03_070450_create_slug_table', 1),
(13, '2019_01_05_053554_create_jobs_table', 1),
(14, '2019_05_03_000001_create_customer_columns', 1),
(15, '2019_05_03_000002_create_subscriptions_table', 1),
(16, '2019_05_03_000003_create_subscription_items_table', 1),
(17, '2019_08_19_000000_create_failed_jobs_table', 1),
(18, '2020_11_18_150916_ads_create_ads_table', 2),
(19, '2015_06_29_025744_create_audit_history', 3),
(20, '2015_06_18_033822_create_blog_table', 4),
(21, '2021_02_16_092633_remove_default_value_for_author_type', 4),
(22, '2016_06_17_091537_create_contacts_table', 5),
(23, '2020_03_05_041139_create_ecommerce_tables', 6),
(24, '2020_09_22_135635_update_taxes_table', 6),
(25, '2020_09_29_101006_add_views_into_ec_products_table', 6),
(26, '2020_10_01_152311_make_column_image_in_product_attributes_table_nullable', 6),
(27, '2020_10_06_073439_improve_ecommerce_database', 6),
(28, '2020_11_01_040415_update_table_ec_order_addresses', 6),
(29, '2020_11_04_091510_make_column_phone_in_order_addresses_nullable', 6),
(30, '2020_11_30_015801_update_table_ec_product_categories', 6),
(31, '2021_01_01_044147_ecommerce_create_flash_sale_table', 6),
(32, '2021_01_17_082713_add_column_is_featured_to_product_collections_table', 6),
(33, '2021_01_18_024333_add_zip_code_into_table_customer_addresses', 6),
(34, '2021_02_18_073505_update_table_ec_reviews', 6),
(35, '2021_03_10_024419_add_column_confirmed_at_to_table_ec_customers', 6),
(36, '2021_03_10_025153_change_column_tax_amount', 6),
(37, '2021_03_20_033103_add_column_availability_to_table_ec_products', 6),
(38, '2021_04_28_074008_ecommerce_create_product_label_table', 6),
(39, '2021_06_28_153141_correct_slugs_data', 6),
(40, '2018_07_09_221238_create_faq_table', 7),
(41, '2021_07_06_030002_create_marketplace_table', 8),
(42, '2017_10_24_154832_create_newsletter_table', 9),
(43, '2017_05_18_080441_create_payment_tables', 10),
(44, '2021_03_27_144913_add_customer_type_into_table_payments', 10),
(45, '2021_05_24_034720_make_column_currency_nullable', 10),
(46, '2017_07_11_140018_create_simple_slider_table', 11),
(47, '2016_10_07_193005_create_translations_table', 12);

-- --------------------------------------------------------

--
-- Table structure for table `mp_customer_revenues`
--

CREATE TABLE `mp_customer_revenues` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` int(10) UNSIGNED DEFAULT NULL,
  `order_id` int(10) UNSIGNED DEFAULT NULL,
  `sub_amount` decimal(15,2) UNSIGNED DEFAULT '0.00',
  `fee` decimal(15,2) UNSIGNED DEFAULT '0.00',
  `amount` decimal(15,2) UNSIGNED DEFAULT '0.00',
  `current_balance` decimal(15,2) UNSIGNED DEFAULT '0.00',
  `currency` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mp_customer_revenues`
--

INSERT INTO `mp_customer_revenues` (`id`, `customer_id`, `order_id`, `sub_amount`, `fee`, `amount`, `current_balance`, `currency`, `description`, `created_at`, `updated_at`) VALUES
(1, 11, 5, '1381.20', '0.00', '1381.20', '0.00', 'USD', NULL, '2021-07-11 22:41:47', '2021-07-11 22:41:47'),
(2, 12, 6, '594.00', '0.00', '594.00', '0.00', 'USD', NULL, '2021-07-07 16:41:48', '2021-07-07 16:41:48'),
(3, 4, 9, '1559.30', '0.00', '1559.30', '0.00', 'USD', NULL, '2021-07-07 22:41:49', '2021-07-07 22:41:49'),
(4, 12, 11, '2101.80', '0.00', '2101.80', '594.00', 'USD', NULL, '2021-07-09 22:41:49', '2021-07-09 22:41:49'),
(5, 11, 12, '1167.60', '0.00', '1167.60', '1381.20', 'USD', NULL, '2021-07-07 12:41:50', '2021-07-07 12:41:50'),
(6, 12, 15, '1423.80', '0.00', '1423.80', '2695.80', 'USD', NULL, '2021-07-04 22:41:50', '2021-07-04 22:41:50'),
(7, 11, 16, '1847.60', '0.00', '1847.60', '2548.80', 'USD', NULL, '2021-07-11 12:41:51', '2021-07-11 12:41:51'),
(8, 4, 17, '553.30', '0.00', '553.30', '1559.30', 'USD', NULL, '2021-07-03 22:41:51', '2021-07-03 22:41:51'),
(9, 12, 18, '2101.80', '0.00', '2101.80', '4119.60', 'USD', NULL, '2021-07-11 08:41:52', '2021-07-11 08:41:52'),
(10, 6, 19, '3871.90', '0.00', '3871.90', '0.00', 'USD', NULL, '2021-07-04 14:41:52', '2021-07-04 14:41:52'),
(11, 4, 20, '1559.30', '0.00', '1559.30', '2112.60', 'USD', NULL, '2021-07-04 04:41:53', '2021-07-04 04:41:53'),
(12, 4, 21, '1389.30', '0.00', '1389.30', '3671.90', 'USD', NULL, '2021-07-09 06:41:54', '2021-07-09 06:41:54'),
(13, 6, 22, '3010.70', '0.00', '3010.70', '3871.90', 'USD', NULL, '2021-06-29 12:41:54', '2021-06-29 12:41:54'),
(14, 11, 23, '2569.90', '0.00', '2569.90', '4396.40', 'USD', NULL, '2021-06-24 22:41:55', '2021-06-24 22:41:55'),
(15, 3, 26, '1457.30', '0.00', '1457.30', '0.00', 'USD', NULL, '2021-07-01 16:41:55', '2021-07-01 16:41:55'),
(16, 11, 28, '1847.60', '0.00', '1847.60', '6966.30', 'USD', NULL, '2021-07-08 02:41:56', '2021-07-08 02:41:56'),
(17, 12, 32, '2886.10', '0.00', '2886.10', '6221.40', 'USD', NULL, '2021-07-10 04:41:56', '2021-07-10 04:41:56'),
(18, 4, 33, '553.30', '0.00', '553.30', '5061.20', 'USD', NULL, '2021-07-04 10:41:57', '2021-07-04 10:41:57'),
(19, 6, 44, '2694.30', '0.00', '2694.30', '6882.60', 'USD', NULL, '2021-06-12 22:41:58', '2021-06-12 22:41:58'),
(20, 3, 45, '1041.70', '0.00', '1041.70', '1457.30', 'USD', NULL, '2021-06-27 14:41:58', '2021-06-27 14:41:58'),
(21, 11, 47, '1646.10', '0.00', '1646.10', '8813.90', 'USD', NULL, '2021-06-30 22:41:59', '2021-06-30 22:41:59'),
(22, 11, 48, '1167.60', '0.00', '1167.60', '10460.00', 'USD', NULL, '2021-06-14 08:41:59', '2021-06-14 08:41:59'),
(23, 6, 49, '580.80', '0.00', '580.80', '9576.90', 'USD', NULL, '2021-06-17 22:42:00', '2021-06-17 22:42:00'),
(24, 4, 50, '1559.30', '0.00', '1559.30', '5614.50', 'USD', NULL, '2021-06-17 10:42:00', '2021-06-17 10:42:00');

-- --------------------------------------------------------

--
-- Table structure for table `mp_customer_withdrawals`
--

CREATE TABLE `mp_customer_withdrawals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` int(10) UNSIGNED DEFAULT NULL,
  `fee` decimal(15,2) UNSIGNED DEFAULT '0.00',
  `amount` decimal(15,2) UNSIGNED DEFAULT '0.00',
  `current_balance` decimal(15,2) UNSIGNED DEFAULT '0.00',
  `currency` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `bank_info` text COLLATE utf8mb4_unicode_ci,
  `payment_channel` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `images` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mp_customer_withdrawals`
--

INSERT INTO `mp_customer_withdrawals` (`id`, `customer_id`, `fee`, `amount`, `current_balance`, `currency`, `description`, `bank_info`, `payment_channel`, `user_id`, `status`, `images`, `created_at`, `updated_at`) VALUES
(1, 3, '0.00', '611.00', '2499.00', 'USD', '', '{\"name\":\"Dr. Sammie Larkin I\",\"number\":\"+18304067782\",\"full_name\":\"Dr. Brice Dare Sr.\",\"description\":\"Emmett Torp\"}', NULL, 0, 'processing', NULL, '2021-07-12 22:42:01', '2021-07-12 22:42:01'),
(2, 3, '0.00', '206.00', '1888.00', 'USD', '', '{\"name\":\"Dr. Sammie Larkin I\",\"number\":\"+18304067782\",\"full_name\":\"Dr. Brice Dare Sr.\",\"description\":\"Emmett Torp\"}', NULL, 0, 'completed', NULL, '2021-07-12 22:42:01', '2021-07-12 22:42:01'),
(3, 3, '0.00', '306.00', '1682.00', 'USD', '', '{\"name\":\"Dr. Sammie Larkin I\",\"number\":\"+18304067782\",\"full_name\":\"Dr. Brice Dare Sr.\",\"description\":\"Emmett Torp\"}', NULL, 0, 'processing', NULL, '2021-07-12 22:42:02', '2021-07-12 22:42:02'),
(4, 4, '0.00', '292.00', '7173.80', 'USD', '', '{\"name\":\"Mrs. Lucie Wunsch PhD\",\"number\":\"+16165753352\",\"full_name\":\"Monserrate McLaughlin Jr.\",\"description\":\"Jarrett Zulauf\"}', NULL, 0, 'pending', NULL, '2021-07-12 22:42:03', '2021-07-12 22:42:03'),
(5, 4, '0.00', '605.00', '6881.80', 'USD', '', '{\"name\":\"Mrs. Lucie Wunsch PhD\",\"number\":\"+16165753352\",\"full_name\":\"Monserrate McLaughlin Jr.\",\"description\":\"Jarrett Zulauf\"}', NULL, 0, 'pending', NULL, '2021-07-12 22:42:03', '2021-07-12 22:42:03'),
(6, 4, '0.00', '774.00', '6276.80', 'USD', '', '{\"name\":\"Mrs. Lucie Wunsch PhD\",\"number\":\"+16165753352\",\"full_name\":\"Monserrate McLaughlin Jr.\",\"description\":\"Jarrett Zulauf\"}', NULL, 0, 'completed', NULL, '2021-07-12 22:42:04', '2021-07-12 22:42:04'),
(7, 6, '0.00', '2928.00', '10157.70', 'USD', '', '{\"name\":\"Prof. Damien Ortiz\",\"number\":\"+18595489989\",\"full_name\":\"Vernice Witting\",\"description\":\"Prof. Gavin Koelpin\"}', NULL, 0, 'completed', NULL, '2021-07-12 22:42:04', '2021-07-12 22:42:04'),
(8, 6, '0.00', '1771.00', '7229.70', 'USD', '', '{\"name\":\"Prof. Damien Ortiz\",\"number\":\"+18595489989\",\"full_name\":\"Vernice Witting\",\"description\":\"Prof. Gavin Koelpin\"}', NULL, 0, 'processing', NULL, '2021-07-12 22:42:05', '2021-07-12 22:42:05'),
(9, 11, '0.00', '890.00', '11627.60', 'USD', '', '{\"name\":\"Vidal Dietrich\",\"number\":\"+12155175781\",\"full_name\":\"Price Considine\",\"description\":\"Jamaal Murphy\"}', NULL, 0, 'processing', NULL, '2021-07-12 22:42:05', '2021-07-12 22:42:05'),
(10, 11, '0.00', '1148.00', '10737.60', 'USD', '', '{\"name\":\"Vidal Dietrich\",\"number\":\"+12155175781\",\"full_name\":\"Price Considine\",\"description\":\"Jamaal Murphy\"}', NULL, 0, 'completed', NULL, '2021-07-12 22:42:06', '2021-07-12 22:42:06'),
(11, 11, '0.00', '2552.00', '9589.60', 'USD', '', '{\"name\":\"Vidal Dietrich\",\"number\":\"+12155175781\",\"full_name\":\"Price Considine\",\"description\":\"Jamaal Murphy\"}', NULL, 0, 'pending', NULL, '2021-07-12 22:42:06', '2021-07-12 22:42:06'),
(12, 12, '0.00', '656.00', '9107.50', 'USD', '', '{\"name\":\"Heber Feest\",\"number\":\"+14439590212\",\"full_name\":\"Sydnee King\",\"description\":\"Jovani O\'Reilly\"}', NULL, 0, 'processing', NULL, '2021-07-12 22:42:07', '2021-07-12 22:42:07'),
(13, 12, '0.00', '2012.00', '8451.50', 'USD', '', '{\"name\":\"Heber Feest\",\"number\":\"+14439590212\",\"full_name\":\"Sydnee King\",\"description\":\"Jovani O\'Reilly\"}', NULL, 0, 'processing', NULL, '2021-07-12 22:42:08', '2021-07-12 22:42:08'),
(14, 12, '0.00', '1170.00', '6439.50', 'USD', '', '{\"name\":\"Heber Feest\",\"number\":\"+14439590212\",\"full_name\":\"Sydnee King\",\"description\":\"Jovani O\'Reilly\"}', NULL, 0, 'processing', NULL, '2021-07-12 22:42:08', '2021-07-12 22:42:08');

-- --------------------------------------------------------

--
-- Table structure for table `mp_stores`
--

CREATE TABLE `mp_stores` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_id` int(10) UNSIGNED DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mp_stores`
--

INSERT INTO `mp_stores` (`id`, `name`, `email`, `phone`, `address`, `country`, `state`, `city`, `customer_id`, `logo`, `description`, `content`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Charlotte Gerlach I', 'smitham.gus@example.com', '+13805729570', '35794 Alexandrea Prairie Suite 873', 'NU', 'Georgia', 'North Tedshire', 3, 'customers/1.jpg', 'Vel nemo perferendis quia aliquam.', 'Fugit qui aut officiis iusto. Adipisci aut nemo harum minus repudiandae vel. Neque qui maxime rerum quia sunt consequuntur esse.', 'published', '2021-07-12 22:41:46', '2021-07-12 22:41:46'),
(2, 'Duncan Grimes', 'joanie.feil@example.org', '+12534934725', '632 Ratke Lights', 'AO', 'Colorado', 'East Lempichester', 4, 'customers/2.jpg', 'Pariatur aut numquam dolorem omnis.', 'Nisi eius autem enim. Nihil tenetur id incidunt sed sequi quo. Sed iste qui sint repellat totam. Inventore consequuntur et fugiat qui hic dolorem.', 'published', '2021-07-12 22:41:46', '2021-07-12 22:41:46'),
(3, 'Miss Kamille Wuckert', 'etha57@example.org', '+12093720820', '7445 Hartmann Crest Suite 808', 'MR', 'Illinois', 'East Piercestad', 6, 'customers/3.jpg', 'Quos molestiae iusto id aut.', 'Ratione sit nam nulla occaecati error non. Occaecati sapiente et in. Quaerat ratione a quia placeat eum aut doloribus veritatis.', 'published', '2021-07-12 22:41:46', '2021-07-12 22:41:46'),
(4, 'Prof. Caden Ryan', 'aimee35@example.com', '+12534849324', '276 Mante Brooks', 'AE', 'Indiana', 'North Tracemouth', 11, 'customers/4.jpg', 'Rerum modi blanditiis odit nihil esse.', 'Nihil voluptatem et delectus. Qui nihil laborum numquam culpa nulla. Sapiente cumque quia mollitia veritatis quia.', 'published', '2021-07-12 22:41:46', '2021-07-12 22:41:46'),
(5, 'Alphonso Haag', 'hill.julia@example.org', '+15183655666', '74347 Ernesto Lodge', 'GF', 'Mississippi', 'Alexstad', 12, 'customers/5.jpg', 'Optio et rerum et sapiente.', 'Aut ex necessitatibus et. Asperiores possimus amet quos recusandae. Deleniti animi exercitationem ullam explicabo asperiores.', 'published', '2021-07-12 22:41:46', '2021-07-12 22:41:46');

-- --------------------------------------------------------

--
-- Table structure for table `mp_vendor_info`
--

CREATE TABLE `mp_vendor_info` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `balance` decimal(15,2) NOT NULL DEFAULT '0.00',
  `total_fee` decimal(15,2) NOT NULL DEFAULT '0.00',
  `total_revenue` decimal(15,2) NOT NULL DEFAULT '0.00',
  `signature` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_info` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mp_vendor_info`
--

INSERT INTO `mp_vendor_info` (`id`, `customer_id`, `balance`, `total_fee`, `total_revenue`, `signature`, `bank_info`, `created_at`, `updated_at`) VALUES
(1, 3, '1376.00', '0.00', '2499.00', '$2y$10$f9SE/ImjMouf/5eO/j.0.OFQ03/ahpqrK3GpwLn5Y0F86IpRYMriu', '{\"name\":\"Dr. Sammie Larkin I\",\"number\":\"+18304067782\",\"full_name\":\"Dr. Brice Dare Sr.\",\"description\":\"Emmett Torp\"}', '2021-07-12 22:41:45', '2021-07-12 22:42:03'),
(2, 4, '5502.80', '0.00', '7173.80', '$2y$10$gdFOityGY/vV6A1MZdn2sue6kBVagGG8324aK/C8p29qJluhlhaTK', '{\"name\":\"Mrs. Lucie Wunsch PhD\",\"number\":\"+16165753352\",\"full_name\":\"Monserrate McLaughlin Jr.\",\"description\":\"Jarrett Zulauf\"}', '2021-07-12 22:41:45', '2021-07-12 22:42:04'),
(3, 6, '5458.70', '0.00', '10157.70', '$2y$10$igVfirKQ5cE2M.IGflQseusjHV38FN8sYPe3UHvPbkSf/M4Rs1Kou', '{\"name\":\"Prof. Damien Ortiz\",\"number\":\"+18595489989\",\"full_name\":\"Vernice Witting\",\"description\":\"Prof. Gavin Koelpin\"}', '2021-07-12 22:41:45', '2021-07-12 22:42:05'),
(4, 11, '7037.60', '0.00', '11627.60', '$2y$10$Yz8/mEAQ2eE340ESJt3FrewMHC8h7T5PNPreUqb9PwFUwrIXzsrEa', '{\"name\":\"Vidal Dietrich\",\"number\":\"+12155175781\",\"full_name\":\"Price Considine\",\"description\":\"Jamaal Murphy\"}', '2021-07-12 22:41:46', '2021-07-12 22:42:07'),
(5, 12, '5269.50', '0.00', '9107.50', '$2y$10$qjGm9W2ra5W4YDLAiZnBTeNqu0/HPP65XE2xS8UMn3s.U2zG4X9au', '{\"name\":\"Heber Feest\",\"number\":\"+14439590212\",\"full_name\":\"Sydnee King\",\"description\":\"Jovani O\'Reilly\"}', '2021-07-12 22:41:46', '2021-07-12 22:42:09');

-- --------------------------------------------------------

--
-- Table structure for table `newsletters`
--

CREATE TABLE `newsletters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'subscribed',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `user_id` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_featured` tinyint(4) NOT NULL DEFAULT '0',
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `name`, `content`, `user_id`, `image`, `template`, `is_featured`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Home', '<div>[simple-slider key=\"home-slider\"][/simple-slider]</div><div>[site-features][/site-features]</div><div>[flash-sale title=\"Deal of the day\" flash_sale_id=\"1\"][/flash-sale]</div><div>[featured-product-categories title=\"Top Categories\"][/featured-product-categories]</div><div>[theme-ads key_1=\"IZ6WU8KUALYD\" key_2=\"ILSFJVYFGCPZ\" key_3=\"ZDOZUZZIU7FT\"][/theme-ads]</div><div>[featured-products title=\"Featured products\"][/featured-products]</div><div>[theme-ads key_1=\"Q9YDUIC9HSWS\" key_2=\"Q9YDUIC9HSWS\"][/theme-ads]</div><div>[product-collections title=\"Exclusive Products\"][/product-collections]</div><div>[product-category-products category_id=\"17\"][/product-category-products]</div><div>[download-app title=\"Download Martfury App Now!\" subtitle=\"Shopping fastly and easily more with our app. Get a link to download the app on your phone.\" screenshot=\"general/app.png\" android_app_url=\"https://www.appstore.com\" ios_app_url=\"https://play.google.com/store\"][/download-app]</div><div>[product-category-products category_id=\"15\"][/product-category-products]</div><div>[newsletter-form title=\"Join Our Newsletter Now\" subtitle=\"Subscribe to get information about products and coupons\"][/newsletter-form]</div>', 1, NULL, 'homepage', 0, NULL, 'published', '2021-07-12 22:41:41', '2021-07-12 22:41:41'),
(2, 'About us', '<p>THAN A MILE HIGH TO LEAVE THE COURT.\' Everybody looked at Two. Two began in a hot tureen! Who for such dainties would not stoop? Soup of the window, and on both sides of it, and finding it very nice, (it had, in fact, a sort of chance of her own ears for having missed their turns, and she felt certain it must make me larger, it must be what he did with the end of the tea--\' \'The twinkling of the officers: but the three gardeners, oblong and flat, with their hands and feet, to make out which.</p><p>While she was trying to invent something!\' \'I--I\'m a little shriek, and went on without attending to her, still it had grown in the sand with wooden spades, then a voice of thunder, and people began running about in the sea. But they HAVE their tails in their mouths. So they went on growing, and very soon found herself in a twinkling! Half-past one, time for dinner!\' (\'I only wish people knew that: then they both cried. \'Wake up, Alice dear!\' said her sister; \'Why, what a Mock Turtle with a.</p><p>Caterpillar. Alice thought she might as well as she said to a lobster--\' (Alice began to repeat it, but her head on her toes when they met in the same thing,\' said the King; and the constant heavy sobbing of the earth. Let me see: I\'ll give them a railway station.) However, she got up very sulkily and crossed over to the Duchess: \'and the moral of that is--\"Birds of a globe of goldfish she had someone to listen to her. The Cat seemed to be otherwise.\"\' \'I think you could manage it?) \'And what.</p><p>When she got into a pig, and she tried her best to climb up one of these cakes,\' she thought, and it sat for a moment to be true): If she should chance to be rude, so she helped herself to about two feet high, and her face like the right word) \'--but I shall have to ask any more questions about it, you know.\' \'I DON\'T know,\' said Alice indignantly. \'Let me alone!\' \'Serpent, I say again!\' repeated the Pigeon, but in a very decided tone: \'tell her something about the games now.\' CHAPTER X. The.</p>', 1, NULL, 'default', 0, NULL, 'published', '2021-07-12 22:41:41', '2021-07-12 22:41:41'),
(3, 'Terms Of Use', '<p>She was a dispute going on shrinking rapidly: she soon found an opportunity of taking it away. She did not venture to go with Edgar Atheling to meet William and offer him the crown. William\'s conduct at first was in the beautiful garden, among the bright flower-beds and the fan, and skurried away into the teapot. \'At any rate I\'ll never go THERE again!\' said Alice thoughtfully: \'but then--I shouldn\'t be hungry for it, you know--\' (pointing with his head!\' or \'Off with her head! Off--\'.</p><p>No, I\'ve made up my mind about it; and the baby was howling so much about a thousand times as large as himself, and this Alice would not join the dance. Would not, could not, would not give all else for two Pennyworth only of beautiful Soup? Pennyworth only of beautiful Soup? Pennyworth only of beautiful Soup? Pennyworth only of beautiful Soup? Pennyworth only of beautiful Soup? Beau--ootiful Soo--oop! Soo--oop of the Mock Turtle to the beginning again?\' Alice ventured to say. \'What is his.</p><p>The great question is, what did the archbishop find?\' The Mouse did not notice this last remark that had slipped in like herself. \'Would it be murder to leave it behind?\' She said this she looked up, and there was a very poor speaker,\' said the Pigeon; \'but if you\'ve seen them at dinn--\' she checked herself hastily, and said nothing. \'This here young lady,\' said the Cat. \'I don\'t believe it,\' said the Duck: \'it\'s generally a ridge or furrow in the pool, \'and she sits purring so nicely by the.</p><p>HE taught us Drawling, Stretching, and Fainting in Coils.\' \'What was THAT like?\' said Alice. \'Call it what you mean,\' said Alice. \'You are,\' said the Duchess. An invitation for the fan and the Hatter began, in a melancholy tone. \'Nobody seems to be told so. \'It\'s really dreadful,\' she muttered to herself, (not in a dreamy sort of idea that they were mine before. If I or she fell past it. \'Well!\' thought Alice to herself, and fanned herself with one finger; and the words \'DRINK ME,\' but.</p>', 1, NULL, 'default', 0, NULL, 'published', '2021-07-12 22:41:41', '2021-07-12 22:41:41'),
(4, 'Terms & Conditions', '<p>WOULD twist itself round and look up in such long curly brown hair! And it\'ll fetch things when you have of putting things!\' \'It\'s a friend of mine--a Cheshire Cat,\' said Alice: \'I don\'t even know what to uglify is, you know. But do cats eat bats? Do cats eat bats?\' and sometimes, \'Do bats eat cats?\' for, you see, Miss, this here ought to have changed since her swim in the other. In the very tones of her sister, who was reading the list of singers. \'You may go,\' said the Caterpillar. \'Well.</p><p>Caterpillar. \'Well, I should have liked teaching it tricks very much, if--if I\'d only been the right way to explain the mistake it had some kind of thing never happened, and now here I am in the last concert!\' on which the words did not dare to disobey, though she felt that this could not join the dance. \'\"What matters it how far we go?\" his scaly friend replied. \"There is another shore, you know, and he says it\'s so useful, it\'s worth a hundred pounds! He says it kills all the children she.</p><p>In another minute there was a little recovered from the trees upon her face. \'Wake up, Alice dear!\' said her sister; \'Why, what are they made of?\' \'Pepper, mostly,\' said the Mouse, sharply and very nearly carried it off. * * * * * * * * * * * * * * * * * * * * * * * * * * * * \'Come, my head\'s free at last!\' said Alice very meekly: \'I\'m growing.\' \'You\'ve no right to think,\' said Alice thoughtfully: \'but then--I shouldn\'t be hungry for it, you may nurse it a minute or two, they began running.</p><p>Next came the royal children, and make THEIR eyes bright and eager with many a strange tale, perhaps even with the words \'DRINK ME\' beautifully printed on it (as she had known them all her wonderful Adventures, till she had not attended to this mouse? Everything is so out-of-the-way down here, that I should be free of them didn\'t know that you\'re mad?\' \'To begin with,\' the Mock Turtle went on, \'\"--found it advisable to go through next walking about at the mushroom for a minute or two she.</p>', 1, NULL, 'default', 0, NULL, 'published', '2021-07-12 22:41:41', '2021-07-12 22:41:41'),
(5, 'Refund Policy', '<p>But she went back to the shore, and then they both sat silent and looked at the moment, \'My dear! I shall have to turn round on its axis--\' \'Talking of axes,\' said the Dodo replied very gravely. \'What else have you got in your knocking,\' the Footman remarked, \'till tomorrow--\' At this moment Alice felt a little while, however, she again heard a voice sometimes choked with sobs, to sing this:-- \'Beautiful Soup, so rich and green, Waiting in a low voice, \'Why the fact is, you ARE a simpleton.\'.</p><p>Wonderland of long ago: and how she would get up and went on again:-- \'You may go,\' said the King, going up to the garden at once; but, alas for poor Alice! when she first saw the White Rabbit blew three blasts on the twelfth?\' Alice went on eagerly: \'There is such a dear quiet thing,\' Alice went on, \'that they\'d let Dinah stop in the grass, merely remarking as it settled down again in a furious passion, and went on without attending to her, though, as they lay sprawling about, reminding her.</p><p>She took down a very truthful child; \'but little girls in my size; and as he could think of anything else. CHAPTER V. Advice from a Caterpillar The Caterpillar and Alice was beginning to think about stopping herself before she found her head struck against the ceiling, and had been to a lobster--\' (Alice began to say anything. \'Why,\' said the Queen, pointing to the end: then stop.\' These were the two sides of it, and very soon finished it off. \'If everybody minded their own business!\' \'Ah.</p><p>Gryphon, and all of you, and don\'t speak a word till I\'ve finished.\' So they sat down a jar from one of the bottle was a table, with a sigh: \'he taught Laughing and Grief, they used to say.\' \'So he did, so he did,\' said the cook. \'Treacle,\' said a timid voice at her feet in a bit.\' \'Perhaps it hasn\'t one,\' Alice ventured to say. \'What is it?\' he said. \'Fifteenth,\' said the Gryphon. \'Turn a somersault in the sea!\' cried the Gryphon, before Alice could not remember ever having seen in her head.</p>', 1, NULL, 'default', 0, NULL, 'published', '2021-07-12 22:41:41', '2021-07-12 22:41:41'),
(6, 'Blog', '<p>---</p>', 1, NULL, 'blog-sidebar', 0, NULL, 'published', '2021-07-12 22:41:41', '2021-07-12 22:41:41'),
(7, 'FAQs', '<div>[faq title=\"Frequently Asked Questions\"][/faq]</div>', 1, NULL, 'default', 0, NULL, 'published', '2021-07-12 22:41:41', '2021-07-12 22:41:41'),
(8, 'Contact', '<div>[google-map]502 New Street, Brighton VIC, Australia[/google-map]</div><div>[contact-info-boxes title=\"Contact Us For Any Questions\"][/contact-info-boxes]</div><div>[contact-form][/contact-form]</div>', 1, NULL, 'full-width', 0, NULL, 'published', '2021-07-12 22:41:41', '2021-07-12 22:41:41'),
(9, 'Cookie Policy', '<h3>EU Cookie Consent</h3><p>To use this Website we are using Cookies and collecting some Data. To be compliant with the EU GDPR we give you to choose if you allow us to use certain Cookies and to collect some Data.</p><h4>Essential Data</h4><p>The Essential Data is needed to run the Site you are visiting technically. You can not deactivate them.</p><p>- Session Cookie: PHP uses a Cookie to identify user sessions. Without this Cookie the Website is not working.</p><p>- XSRF-Token Cookie: Laravel automatically generates a CSRF \"token\" for each active user session managed by the application. This token is used to verify that the authenticated user is the one actually making the requests to the application.</p>', 1, NULL, 'default', 0, NULL, 'published', '2021-07-12 22:41:41', '2021-07-12 22:41:41'),
(10, 'Affiliate', '<p>Hatter added as an explanation. \'Oh, you\'re sure to happen,\' she said this, she came upon a little nervous about it just missed her. Alice caught the baby joined):-- \'Wow! wow! wow!\' \'Here! you may stand down,\' continued the Pigeon, raising its voice to its children, \'Come away, my dears! It\'s high time to be lost: away went Alice after it, and behind them a railway station.) However, she soon found herself lying on the floor, and a Long Tale They were indeed a queer-looking party that.</p><p>He sent them word I had not long to doubt, for the Dormouse,\' thought Alice; but she heard a little recovered from the Gryphon, \'she wants for to know your history, she do.\' \'I\'ll tell it her,\' said the Caterpillar. \'Is that the reason is--\' here the conversation a little. \'\'Tis so,\' said the Mouse. \'Of course,\' the Gryphon answered, very nearly in the pool was getting quite crowded with the bread-knife.\' The March Hare and the pair of boots every Christmas.\' And she opened it, and finding it.</p><p>White Rabbit was no longer to be otherwise.\"\' \'I think I must be removed,\' said the Caterpillar. \'Is that all?\' said Alice, timidly; \'some of the party sat silent and looked at the righthand bit again, and all sorts of things, and she, oh! she knows such a capital one for catching mice--oh, I beg your pardon!\' cried Alice in a solemn tone, \'For the Duchess. An invitation from the trees had a vague sort of idea that they had to do that,\' said the King, \'that saves a world of trouble, you know.</p><p>The Footman seemed to have wondered at this, but at last the Mouse, getting up and walking off to other parts of the conversation. Alice felt that she had hoped) a fan and a crash of broken glass. \'What a funny watch!\' she remarked. \'There isn\'t any,\' said the Caterpillar. \'Not QUITE right, I\'m afraid,\' said Alice, a good many voices all talking together: she made out that the Mouse heard this, it turned a corner, \'Oh my ears and whiskers, how late it\'s getting!\' She was close behind her.</p>', 1, NULL, 'default', 0, NULL, 'published', '2021-07-12 22:41:41', '2021-07-12 22:41:41'),
(11, 'Career', '<p>Duchess. An invitation from the trees as well as she went on again: \'Twenty-four hours, I THINK; or is it I can\'t remember,\' said the Caterpillar. Alice thought to herself \'This is Bill,\' she gave her answer. \'They\'re done with a large caterpillar, that was said, and went on talking: \'Dear, dear! How queer everything is queer to-day.\' Just then her head was so full of the table, but there were ten of them, and he checked himself suddenly: the others looked round also, and all would change to.</p><p>ME.\' \'You!\' said the White Rabbit, trotting slowly back to the porpoise, \"Keep back, please: we don\'t want YOU with us!\"\' \'They were obliged to write out a box of comfits, (luckily the salt water had not noticed before, and behind it was empty: she did it so VERY wide, but she stopped hastily, for the hedgehogs; and in another moment down went Alice after it, never once considering how in the air: it puzzled her a good deal on where you want to go! Let me see: four times five is twelve, and.</p><p>That your eye was as long as you can--\' \'Swim after them!\' screamed the Pigeon. \'I\'m NOT a serpent!\' said Alice aloud, addressing nobody in particular. \'She\'d soon fetch it here, lad!--Here, put \'em up at the number of executions the Queen till she was trying to explain the paper. \'If there\'s no room to open her mouth; but she had to stoop to save her neck would bend about easily in any direction, like a frog; and both footmen, Alice noticed, had powdered hair that WOULD always get into the.</p><p>By this time the Queen was close behind us, and he\'s treading on her spectacles, and began whistling. \'Oh, there\'s no harm in trying.\' So she was quite impossible to say \'I once tasted--\' but checked herself hastily. \'I thought it must be growing small again.\' She got up this morning? I almost wish I\'d gone to see it pop down a large cauldron which seemed to think that there was no label this time the Queen put on her lap as if his heart would break. She pitied him deeply. \'What is it?\' The.</p>', 1, NULL, 'default', 0, NULL, 'published', '2021-07-12 22:41:41', '2021-07-12 22:41:41'),
(12, 'Coming soon', '<p>Condimentum ipsum a adipiscing hac dolor set consectetur urna commodo elit parturient <br/>molestie ut nisl partu convallier ullamcorpe.</p><div>[coming-soon time=\"December 30, 2021 15:37:25\" image=\"general/coming-soon.jpg\"][/coming-soon]</div>', 1, NULL, 'coming-soon', 0, NULL, 'published', '2021-07-12 22:41:41', '2021-07-12 22:41:41');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `currency` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `charge_id` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_channel` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(15,2) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT 'pending',
  `payment_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'confirm',
  `customer_id` int(10) UNSIGNED DEFAULT NULL,
  `refunded_amount` decimal(15,2) UNSIGNED DEFAULT NULL,
  `refund_note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `customer_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `currency`, `user_id`, `charge_id`, `payment_channel`, `description`, `amount`, `order_id`, `status`, `payment_type`, `customer_id`, `refunded_amount`, `refund_note`, `created_at`, `updated_at`, `customer_type`) VALUES
(1, 'USD', 0, 'MI8ZG78TPU', 'paypal', NULL, '22.00', 1, 'completed', 'confirm', 8, NULL, NULL, '2021-07-12 22:41:46', '2021-07-12 22:41:46', 'Botble\\Ecommerce\\Models\\Customer'),
(2, 'USD', 0, 'F63MB4EXLK', 'cod', NULL, '584.10', 2, 'pending', 'confirm', 8, NULL, NULL, '2021-07-12 22:41:46', '2021-07-12 22:41:46', 'Botble\\Ecommerce\\Models\\Customer'),
(3, 'USD', 0, 'HDB1VKLI9V', 'paystack', NULL, '911.90', 3, 'completed', 'confirm', 7, NULL, NULL, '2021-07-12 22:41:46', '2021-07-12 22:41:46', 'Botble\\Ecommerce\\Models\\Customer'),
(4, 'USD', 0, 'MJJH0PIC1R', 'bank_transfer', NULL, '2089.50', 4, 'pending', 'confirm', 7, NULL, NULL, '2021-07-12 22:41:46', '2021-07-12 22:41:46', 'Botble\\Ecommerce\\Models\\Customer'),
(5, 'USD', 0, 'KRWRO2HUEA', 'paystack', NULL, '1381.20', 5, 'completed', 'confirm', 8, NULL, NULL, '2021-07-12 22:41:46', '2021-07-12 22:41:46', 'Botble\\Ecommerce\\Models\\Customer'),
(6, 'USD', 0, 'BP1NCTIKD9', 'sslcommerz', NULL, '594.00', 6, 'completed', 'confirm', 8, NULL, NULL, '2021-07-12 22:41:46', '2021-07-12 22:41:46', 'Botble\\Ecommerce\\Models\\Customer'),
(7, 'USD', 0, 'K5VQJVX6Y6', 'paypal', NULL, '1835.70', 7, 'completed', 'confirm', 1, NULL, NULL, '2021-07-12 22:41:46', '2021-07-12 22:41:46', 'Botble\\Ecommerce\\Models\\Customer'),
(8, 'USD', 0, 'QPCLU7AUNY', 'razorpay', NULL, '1333.20', 8, 'completed', 'confirm', 1, NULL, NULL, '2021-07-12 22:41:46', '2021-07-12 22:41:46', 'Botble\\Ecommerce\\Models\\Customer'),
(9, 'USD', 0, 'NDKXTIRLKO', 'paystack', NULL, '1559.30', 9, 'completed', 'confirm', 8, NULL, NULL, '2021-07-12 22:41:46', '2021-07-12 22:41:46', 'Botble\\Ecommerce\\Models\\Customer'),
(10, 'USD', 0, 'KJDAN72A83', 'sslcommerz', NULL, '3977.30', 10, 'completed', 'confirm', 8, NULL, NULL, '2021-07-12 22:41:46', '2021-07-12 22:41:46', 'Botble\\Ecommerce\\Models\\Customer'),
(11, 'USD', 0, 'M1PD5EGTKS', 'razorpay', NULL, '2101.80', 11, 'completed', 'confirm', 8, NULL, NULL, '2021-07-12 22:41:46', '2021-07-12 22:41:46', 'Botble\\Ecommerce\\Models\\Customer'),
(12, 'USD', 0, 'DYS3WOJTNM', 'mollie', NULL, '1167.60', 12, 'completed', 'confirm', 10, NULL, NULL, '2021-07-12 22:41:46', '2021-07-12 22:41:46', 'Botble\\Ecommerce\\Models\\Customer'),
(13, 'USD', 0, 'YJVZTMUYAX', 'mollie', NULL, '930.30', 13, 'completed', 'confirm', 10, NULL, NULL, '2021-07-12 22:41:46', '2021-07-12 22:41:46', 'Botble\\Ecommerce\\Models\\Customer'),
(14, 'USD', 0, '1ZNABOU3MA', 'cod', NULL, '3731.70', 14, 'pending', 'confirm', 8, NULL, NULL, '2021-07-12 22:41:46', '2021-07-12 22:41:46', 'Botble\\Ecommerce\\Models\\Customer'),
(15, 'USD', 0, '3XPQCAGRF0', 'razorpay', NULL, '1423.80', 15, 'completed', 'confirm', 8, NULL, NULL, '2021-07-12 22:41:46', '2021-07-12 22:41:46', 'Botble\\Ecommerce\\Models\\Customer'),
(16, 'USD', 0, 'HUXLXXHG4K', 'sslcommerz', NULL, '1847.60', 16, 'completed', 'confirm', 1, NULL, NULL, '2021-07-12 22:41:46', '2021-07-12 22:41:46', 'Botble\\Ecommerce\\Models\\Customer'),
(17, 'USD', 0, 'IMJTH5B7MK', 'sslcommerz', NULL, '553.30', 17, 'completed', 'confirm', 1, NULL, NULL, '2021-07-12 22:41:47', '2021-07-12 22:41:47', 'Botble\\Ecommerce\\Models\\Customer'),
(18, 'USD', 0, 'BK04SFK8KG', 'paystack', NULL, '2101.80', 18, 'completed', 'confirm', 1, NULL, NULL, '2021-07-12 22:41:47', '2021-07-12 22:41:47', 'Botble\\Ecommerce\\Models\\Customer'),
(19, 'USD', 0, '1WS4CZ3VJN', 'paypal', NULL, '3871.90', 19, 'completed', 'confirm', 9, NULL, NULL, '2021-07-12 22:41:47', '2021-07-12 22:41:47', 'Botble\\Ecommerce\\Models\\Customer'),
(20, 'USD', 0, 'IFX4IKJQUP', 'mollie', NULL, '1559.30', 20, 'completed', 'confirm', 9, NULL, NULL, '2021-07-12 22:41:47', '2021-07-12 22:41:47', 'Botble\\Ecommerce\\Models\\Customer'),
(21, 'USD', 0, 'ETNXEZXHW4', 'mollie', NULL, '1389.30', 21, 'completed', 'confirm', 10, NULL, NULL, '2021-07-12 22:41:47', '2021-07-12 22:41:47', 'Botble\\Ecommerce\\Models\\Customer'),
(22, 'USD', 0, '1F6OCXDXGJ', 'mollie', NULL, '3010.70', 22, 'completed', 'confirm', 10, NULL, NULL, '2021-07-12 22:41:47', '2021-07-12 22:41:47', 'Botble\\Ecommerce\\Models\\Customer'),
(23, 'USD', 0, 'XNW5XQKEFJ', 'paystack', NULL, '2569.90', 23, 'completed', 'confirm', 9, NULL, NULL, '2021-07-12 22:41:47', '2021-07-12 22:41:47', 'Botble\\Ecommerce\\Models\\Customer'),
(24, 'USD', 0, 'COC5JEWGLG', 'cod', NULL, '930.30', 24, 'pending', 'confirm', 9, NULL, NULL, '2021-07-12 22:41:47', '2021-07-12 22:41:47', 'Botble\\Ecommerce\\Models\\Customer'),
(25, 'USD', 0, 'EUO13HK5OV', 'razorpay', NULL, '3757.20', 25, 'completed', 'confirm', 9, NULL, NULL, '2021-07-12 22:41:47', '2021-07-12 22:41:47', 'Botble\\Ecommerce\\Models\\Customer'),
(26, 'USD', 0, 'POHBHSAIAC', 'mollie', NULL, '1457.30', 26, 'completed', 'confirm', 10, NULL, NULL, '2021-07-12 22:41:47', '2021-07-12 22:41:47', 'Botble\\Ecommerce\\Models\\Customer'),
(27, 'USD', 0, 'VGXMZJAR13', 'razorpay', NULL, '1167.60', 27, 'completed', 'confirm', 10, NULL, NULL, '2021-07-12 22:41:47', '2021-07-12 22:41:47', 'Botble\\Ecommerce\\Models\\Customer'),
(28, 'USD', 0, 'F0XTPPHUNN', 'razorpay', NULL, '1847.60', 28, 'completed', 'confirm', 1, NULL, NULL, '2021-07-12 22:41:47', '2021-07-12 22:41:47', 'Botble\\Ecommerce\\Models\\Customer'),
(29, 'USD', 0, 'ED5M6JXLG1', 'bank_transfer', NULL, '2622.90', 29, 'pending', 'confirm', 1, NULL, NULL, '2021-07-12 22:41:47', '2021-07-12 22:41:47', 'Botble\\Ecommerce\\Models\\Customer'),
(30, 'USD', 0, 'PDPQJPHKMC', 'bank_transfer', NULL, '2089.50', 30, 'pending', 'confirm', 1, NULL, NULL, '2021-07-12 22:41:47', '2021-07-12 22:41:47', 'Botble\\Ecommerce\\Models\\Customer'),
(31, 'USD', 0, 'OSENWEALS5', 'bank_transfer', NULL, '62.00', 31, 'pending', 'confirm', 7, NULL, NULL, '2021-07-12 22:41:47', '2021-07-12 22:41:47', 'Botble\\Ecommerce\\Models\\Customer'),
(32, 'USD', 0, '1Z34F80OAG', 'mollie', NULL, '2886.10', 32, 'completed', 'confirm', 7, NULL, NULL, '2021-07-12 22:41:47', '2021-07-12 22:41:47', 'Botble\\Ecommerce\\Models\\Customer'),
(33, 'USD', 0, 'KOARFDTIQ4', 'mollie', NULL, '553.30', 33, 'completed', 'confirm', 10, NULL, NULL, '2021-07-12 22:41:47', '2021-07-12 22:41:47', 'Botble\\Ecommerce\\Models\\Customer'),
(34, 'USD', 0, 'T0QYA3UCKS', 'cod', NULL, '745.80', 34, 'pending', 'confirm', 10, NULL, NULL, '2021-07-12 22:41:47', '2021-07-12 22:41:47', 'Botble\\Ecommerce\\Models\\Customer'),
(35, 'USD', 0, 'TVV0OHC1CL', 'cod', NULL, '42.00', 35, 'pending', 'confirm', 10, NULL, NULL, '2021-07-12 22:41:47', '2021-07-12 22:41:47', 'Botble\\Ecommerce\\Models\\Customer'),
(36, 'USD', 0, 'P9VEMLZJM6', 'stripe', NULL, '584.10', 36, 'completed', 'confirm', 10, NULL, NULL, '2021-07-12 22:41:47', '2021-07-12 22:41:47', 'Botble\\Ecommerce\\Models\\Customer'),
(37, 'USD', 0, 'KHR7X906HR', 'bank_transfer', NULL, '2886.10', 37, 'pending', 'confirm', 10, NULL, NULL, '2021-07-12 22:41:47', '2021-07-12 22:41:47', 'Botble\\Ecommerce\\Models\\Customer'),
(38, 'USD', 0, 'PS7T5Q41TY', 'paystack', NULL, '2761.20', 38, 'completed', 'confirm', 5, NULL, NULL, '2021-07-12 22:41:47', '2021-07-12 22:41:47', 'Botble\\Ecommerce\\Models\\Customer'),
(39, 'USD', 0, 'H6XRGUMRRP', 'sslcommerz', NULL, '3977.30', 39, 'completed', 'confirm', 5, NULL, NULL, '2021-07-12 22:41:47', '2021-07-12 22:41:47', 'Botble\\Ecommerce\\Models\\Customer'),
(40, 'USD', 0, 'WZMB0EGQNA', 'bank_transfer', NULL, '1024.10', 40, 'pending', 'confirm', 5, NULL, NULL, '2021-07-12 22:41:47', '2021-07-12 22:41:47', 'Botble\\Ecommerce\\Models\\Customer'),
(41, 'USD', 0, 'ES6VVCUQ5B', 'cod', NULL, '1562.40', 41, 'pending', 'confirm', 7, NULL, NULL, '2021-07-12 22:41:47', '2021-07-12 22:41:47', 'Botble\\Ecommerce\\Models\\Customer'),
(42, 'USD', 0, 'WOYI9G10ZZ', 'cod', NULL, '2545.20', 42, 'pending', 'confirm', 7, NULL, NULL, '2021-07-12 22:41:47', '2021-07-12 22:41:47', 'Botble\\Ecommerce\\Models\\Customer'),
(43, 'USD', 0, '5ZTBBCHKFO', 'bank_transfer', NULL, '584.10', 43, 'pending', 'confirm', 7, NULL, NULL, '2021-07-12 22:41:47', '2021-07-12 22:41:47', 'Botble\\Ecommerce\\Models\\Customer'),
(44, 'USD', 0, '97R9YFGDGH', 'razorpay', NULL, '2694.30', 44, 'completed', 'confirm', 7, NULL, NULL, '2021-07-12 22:41:47', '2021-07-12 22:41:47', 'Botble\\Ecommerce\\Models\\Customer'),
(45, 'USD', 0, 'CORO9TCGQ9', 'paystack', NULL, '1041.70', 45, 'completed', 'confirm', 1, NULL, NULL, '2021-07-12 22:41:47', '2021-07-12 22:41:47', 'Botble\\Ecommerce\\Models\\Customer'),
(46, 'USD', 0, 'EE0Z095E9G', 'sslcommerz', NULL, '1674.00', 46, 'completed', 'confirm', 1, NULL, NULL, '2021-07-12 22:41:47', '2021-07-12 22:41:47', 'Botble\\Ecommerce\\Models\\Customer'),
(47, 'USD', 0, 'KZR5WWBBWO', 'sslcommerz', NULL, '1646.10', 47, 'completed', 'confirm', 1, NULL, NULL, '2021-07-12 22:41:47', '2021-07-12 22:41:47', 'Botble\\Ecommerce\\Models\\Customer'),
(48, 'USD', 0, 'YE15WCN0OV', 'sslcommerz', NULL, '1167.60', 48, 'completed', 'confirm', 7, NULL, NULL, '2021-07-12 22:41:47', '2021-07-12 22:41:47', 'Botble\\Ecommerce\\Models\\Customer'),
(49, 'USD', 0, 'R8ER4WERTY', 'sslcommerz', NULL, '580.80', 49, 'completed', 'confirm', 7, NULL, NULL, '2021-07-12 22:41:47', '2021-07-12 22:41:47', 'Botble\\Ecommerce\\Models\\Customer'),
(50, 'USD', 0, 'MNB2EVP0Y2', 'paystack', NULL, '1559.30', 50, 'completed', 'confirm', 7, NULL, NULL, '2021-07-12 22:41:47', '2021-07-12 22:41:47', 'Botble\\Ecommerce\\Models\\Customer'),
(51, 'USD', 0, 'JNB7CXLDLM', 'cod', NULL, '745.80', 51, 'pending', 'confirm', 7, NULL, NULL, '2021-07-12 22:41:47', '2021-07-12 22:41:47', 'Botble\\Ecommerce\\Models\\Customer');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` int(11) NOT NULL,
  `author_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `is_featured` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `views` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `format_type` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `name`, `description`, `content`, `status`, `author_id`, `author_type`, `is_featured`, `image`, `views`, `format_type`, `created_at`, `updated_at`) VALUES
(1, '4 Expert Tips On How To Choose The Right Men’s Wallet', 'You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.', '<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/1.jpg', 800, NULL, '2021-07-12 22:41:40', '2021-07-12 22:41:40'),
(2, 'Sexy Clutches: How to Buy & Wear a Designer Clutch Bag', 'There isn’t much a girl can’t handle with the right accessories. That’s why the perfect women’s clutch bag is a wardrobe essential for first dates and spring weddings.', '<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/2.jpg', 2382, NULL, '2021-07-12 22:41:40', '2021-07-12 22:41:40'),
(3, 'The Top 2020 Handbag Trends to Know', 'For the handbag obsessives, let\'s dive into the latter a little more. This year will bring a fresh array of bag designs, and already we\'ve gotten a sneak peek of what both spring and fall 2020 collections have to offer/', '<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/3.jpg', 118, NULL, '2021-07-12 22:41:40', '2021-07-12 22:41:40'),
(4, 'How to Match the Color of Your Handbag With an Outfit', 'To match your multi-colored purses with your favorite outfits, simply select a complementary handbag hue that will make your outfit pop for work or the weekend.', '<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/4.jpg', 790, NULL, '2021-07-12 22:41:40', '2021-07-12 22:41:40'),
(5, 'How to Care for Leather Bags', 'A leather bag is a special, near-universally beloved object, appreciated in equal measure by bon-vivants of both sexes, who cherish the supple hand, understated burnish and heady smell that can only emanate from premium quality skin.', '<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/5.jpg', 834, NULL, '2021-07-12 22:41:40', '2021-07-12 22:41:40'),
(6, 'We\'re Crushing Hard on Summer\'s 10 Biggest Bag Trends', 'Summer is just around the corner, and there\'s no easier way to amp up your new-season look than with a chic, new handbag. Whether you\'re wearing basic sweat shorts and a tank top or a pretty floral maxi dress, a bag is an effortless way to add interest to all your summer ensembles.', '<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/6.jpg', 1336, NULL, '2021-07-12 22:41:40', '2021-07-12 22:41:40'),
(7, 'Explore Fashion Trending For Guys In Autumn 2021', 'Summer is just around the corner, and there\'s no easier way to amp up your new-season look than with a chic, new handbag. Whether you\'re wearing basic sweat shorts and a tank top or a pretty floral maxi dress, a bag is an effortless way to add interest to all your summer ensembles.', '<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/7.jpg', 1595, NULL, '2021-07-12 22:41:40', '2021-07-12 22:41:40');

-- --------------------------------------------------------

--
-- Table structure for table `post_categories`
--

CREATE TABLE `post_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_categories`
--

INSERT INTO `post_categories` (`id`, `category_id`, `post_id`) VALUES
(1, 4, 1),
(2, 4, 2),
(3, 3, 3),
(4, 4, 4),
(5, 1, 5),
(6, 2, 6),
(7, 1, 7);

-- --------------------------------------------------------

--
-- Table structure for table `post_tags`
--

CREATE TABLE `post_tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tag_id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_tags`
--

INSERT INTO `post_tags` (`id`, `tag_id`, `post_id`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 4, 1),
(5, 5, 1),
(6, 1, 2),
(7, 2, 2),
(8, 3, 2),
(9, 4, 2),
(10, 5, 2),
(11, 1, 3),
(12, 2, 3),
(13, 3, 3),
(14, 4, 3),
(15, 5, 3),
(16, 1, 4),
(17, 2, 4),
(18, 3, 4),
(19, 4, 4),
(20, 5, 4),
(21, 1, 5),
(22, 2, 5),
(23, 3, 5),
(24, 4, 5),
(25, 5, 5),
(26, 1, 6),
(27, 2, 6),
(28, 3, 6),
(29, 4, 6),
(30, 5, 6),
(31, 1, 7),
(32, 2, 7),
(33, 3, 7),
(34, 4, 7),
(35, 5, 7);

-- --------------------------------------------------------

--
-- Table structure for table `revisions`
--

CREATE TABLE `revisions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `revisionable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revisionable_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `old_value` text COLLATE utf8mb4_unicode_ci,
  `new_value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `created_by` int(10) UNSIGNED NOT NULL,
  `updated_by` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `role_users`
--

CREATE TABLE `role_users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1, 'activated_plugins', '[\"ads\",\"analytics\",\"audit-log\",\"backup\",\"blog\",\"captcha\",\"contact\",\"cookie-consent\",\"ecommerce\",\"faq\",\"marketplace\",\"mollie\",\"newsletter\",\"payment\",\"paystack\",\"razorpay\",\"simple-slider\",\"social-login\",\"sslcommerz\",\"translation\"]', NULL, NULL),
(4, 'simple_slider_using_assets', '0', NULL, NULL),
(5, 'permalink-botble-blog-models-post', 'blog', NULL, NULL),
(6, 'permalink-botble-blog-models-category', 'blog', NULL, NULL),
(7, 'payment_cod_status', '1', NULL, NULL),
(8, 'payment_cod_description', 'Please pay money directly to the postman, if you choose cash on delivery method (COD).', NULL, NULL),
(9, 'payment_bank_transfer_status', '1', NULL, NULL),
(10, 'payment_bank_transfer_description', 'Please send money to our bank account: ACB - 1990 404 19.', NULL, NULL),
(11, 'plugins_ecommerce_customer_new_order_status', '0', NULL, NULL),
(12, 'plugins_ecommerce_admin_new_order_status', '0', NULL, NULL),
(13, 'ecommerce_store_name', 'Martfury', NULL, NULL),
(14, 'ecommerce_store_phone', '1800979769', NULL, NULL),
(15, 'ecommerce_store_address', '502 New Street', NULL, NULL),
(16, 'ecommerce_store_state', 'Brighton VIC', NULL, NULL),
(17, 'ecommerce_store_city', 'Brighton VIC', NULL, NULL),
(18, 'ecommerce_store_country', 'AU', NULL, NULL),
(19, 'theme', 'martfury', NULL, NULL),
(20, 'admin_logo', 'general/logo-light.png', NULL, NULL),
(21, 'theme-martfury-site_title', 'Martfury - Laravel Ecommerce system', NULL, NULL),
(22, 'theme-martfury-copyright', '© 2021 Martfury. All Rights Reserved.', NULL, NULL),
(23, 'theme-martfury-favicon', 'general/favicon.png', NULL, NULL),
(24, 'theme-martfury-logo', 'general/logo.png', NULL, NULL),
(25, 'theme-martfury-welcome_message', 'Welcome to Martfury Online Shopping Store!', NULL, NULL),
(26, 'theme-martfury-address', '502 New Street, Brighton VIC, Australia', NULL, NULL),
(27, 'theme-martfury-hotline', '1800 97 97 69', NULL, NULL),
(28, 'theme-martfury-email', 'contact@martfury.co', NULL, NULL),
(29, 'theme-martfury-payment_methods', '[\"general\\/payment-method-1.jpg\",\"general\\/payment-method-2.jpg\",\"general\\/payment-method-3.jpg\",\"general\\/payment-method-4.jpg\",\"general\\/payment-method-5.jpg\"]', NULL, NULL),
(30, 'theme-martfury-newsletter_image', 'general/newsletter.jpg', NULL, NULL),
(31, 'theme-martfury-homepage_id', '1', NULL, NULL),
(32, 'theme-martfury-blog_page_id', '6', NULL, NULL),
(33, 'theme-martfury-cookie_consent_message', 'Your experience on this site will be improved by allowing cookies ', NULL, NULL),
(34, 'theme-martfury-cookie_consent_learn_more_url', 'http://martfury.local/cookie-policy', NULL, NULL),
(35, 'theme-martfury-cookie_consent_learn_more_text', 'Cookie Policy', NULL, NULL),
(36, 'theme-martfury-number_of_products_per_page', '40', NULL, NULL),
(37, 'theme-martfury-feature_1_title', 'Free Delivery', NULL, NULL),
(38, 'theme-martfury-feature_1_subtitle', 'For all orders over $99', NULL, NULL),
(39, 'theme-martfury-feature_1_icon', 'icon-rocket', NULL, NULL),
(40, 'theme-martfury-feature_2_title', '90 Days Return', NULL, NULL),
(41, 'theme-martfury-feature_2_subtitle', 'If goods have problems', NULL, NULL),
(42, 'theme-martfury-feature_2_icon', 'icon-sync', NULL, NULL),
(43, 'theme-martfury-feature_3_title', 'Secure Payment', NULL, NULL),
(44, 'theme-martfury-feature_3_subtitle', '100% secure payment', NULL, NULL),
(45, 'theme-martfury-feature_3_icon', 'icon-credit-card', NULL, NULL),
(46, 'theme-martfury-feature_4_title', '24/7 Support', NULL, NULL),
(47, 'theme-martfury-feature_4_subtitle', 'Dedicated support', NULL, NULL),
(48, 'theme-martfury-feature_4_icon', 'icon-bubbles', NULL, NULL),
(49, 'theme-martfury-feature_5_title', 'Gift Service', NULL, NULL),
(50, 'theme-martfury-feature_5_subtitle', 'Support gift service', NULL, NULL),
(51, 'theme-martfury-feature_5_icon', 'icon-gift', NULL, NULL),
(52, 'theme-martfury-product_feature_1_title', 'Shipping worldwide', NULL, NULL),
(53, 'theme-martfury-product_feature_1_icon', 'icon-network', NULL, NULL),
(54, 'theme-martfury-product_feature_2_title', 'Free 7-day return if eligible, so easy', NULL, NULL),
(55, 'theme-martfury-product_feature_2_icon', 'icon-3d-rotate', NULL, NULL),
(56, 'theme-martfury-product_feature_3_title', 'Supplier give bills for this product.', NULL, NULL),
(57, 'theme-martfury-product_feature_3_icon', 'icon-receipt', NULL, NULL),
(58, 'theme-martfury-product_feature_4_title', 'Pay online or when receiving goods', NULL, NULL),
(59, 'theme-martfury-product_feature_4_icon', 'icon-credit-card', NULL, NULL),
(60, 'theme-martfury-contact_info_box_1_title', 'Contact Directly', NULL, NULL),
(61, 'theme-martfury-contact_info_box_1_subtitle', 'contact@martfury.com', NULL, NULL),
(62, 'theme-martfury-contact_info_box_1_details', '(+004) 912-3548-07', NULL, NULL),
(63, 'theme-martfury-contact_info_box_2_title', 'Headquarters', NULL, NULL),
(64, 'theme-martfury-contact_info_box_2_subtitle', '17 Queen St, Southbank, Melbourne 10560, Australia', NULL, NULL),
(65, 'theme-martfury-contact_info_box_2_details', '', NULL, NULL),
(66, 'theme-martfury-contact_info_box_3_title', 'Work With Us', NULL, NULL),
(67, 'theme-martfury-contact_info_box_3_subtitle', 'Send your CV to our email:', NULL, NULL),
(68, 'theme-martfury-contact_info_box_3_details', 'career@martfury.com', NULL, NULL),
(69, 'theme-martfury-contact_info_box_4_title', 'Customer Service', NULL, NULL),
(70, 'theme-martfury-contact_info_box_4_subtitle', 'customercare@martfury.com', NULL, NULL),
(71, 'theme-martfury-contact_info_box_4_details', '(800) 843-2446', NULL, NULL),
(72, 'theme-martfury-contact_info_box_5_title', 'Media Relations', NULL, NULL),
(73, 'theme-martfury-contact_info_box_5_subtitle', 'media@martfury.com', NULL, NULL),
(74, 'theme-martfury-contact_info_box_5_details', '(801) 947-3564', NULL, NULL),
(75, 'theme-martfury-contact_info_box_6_title', 'Vendor Support', NULL, NULL),
(76, 'theme-martfury-contact_info_box_6_subtitle', 'vendorsupport@martfury.com', NULL, NULL),
(77, 'theme-martfury-contact_info_box_6_details', '(801) 947-3100', NULL, NULL),
(78, 'theme-martfury-number_of_cross_sale_products_in_cart_page', '7', NULL, NULL),
(79, 'theme-martfury-logo_in_the_checkout_page', 'general/logo-dark.png', NULL, NULL),
(80, 'theme-martfury-logo_in_invoices', 'general/logo-dark.png', NULL, NULL),
(81, 'theme-martfury-logo_vendor_dashboard', 'general/logo-dark.png', NULL, NULL),
(82, 'theme-martfury-social-name-1', 'Facebook', NULL, NULL),
(83, 'theme-martfury-social-url-1', 'https://www.facebook.com/', NULL, NULL),
(84, 'theme-martfury-social-icon-1', 'fa-facebook', NULL, NULL),
(85, 'theme-martfury-social-color-1', '#3b5999', NULL, NULL),
(86, 'theme-martfury-social-name-2', 'Twitter', NULL, NULL),
(87, 'theme-martfury-social-url-2', 'https://www.twitter.com/', NULL, NULL),
(88, 'theme-martfury-social-icon-2', 'fa-twitter', NULL, NULL),
(89, 'theme-martfury-social-color-2', '#55ACF9', NULL, NULL),
(90, 'theme-martfury-social-name-3', 'Instagram', NULL, NULL),
(91, 'theme-martfury-social-url-3', 'https://www.instagram.com/', NULL, NULL),
(92, 'theme-martfury-social-icon-3', 'fa-instagram', NULL, NULL),
(93, 'theme-martfury-social-color-3', '#E1306C', NULL, NULL),
(94, 'theme-martfury-social-name-4', 'Youtube', NULL, NULL),
(95, 'theme-martfury-social-url-4', 'https://www.youtube.com/', NULL, NULL),
(96, 'theme-martfury-social-icon-4', 'fa-youtube', NULL, NULL),
(97, 'theme-martfury-social-color-4', '#FF0000', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `simple_sliders`
--

CREATE TABLE `simple_sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `simple_sliders`
--

INSERT INTO `simple_sliders` (`id`, `name`, `key`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Home slider', 'home-slider', 'The main slider on homepage', 'published', '2021-07-12 22:41:41', '2021-07-12 22:41:41');

-- --------------------------------------------------------

--
-- Table structure for table `simple_slider_items`
--

CREATE TABLE `simple_slider_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `simple_slider_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `order` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `simple_slider_items`
--

INSERT INTO `simple_slider_items` (`id`, `simple_slider_id`, `title`, `image`, `link`, `description`, `order`, `created_at`, `updated_at`) VALUES
(1, 1, 'Slider 1', 'sliders/1.jpg', '/products', NULL, 1, '2021-07-12 22:41:41', '2021-07-12 22:41:41'),
(2, 1, 'Slider 2', 'sliders/2.jpg', '/products', NULL, 2, '2021-07-12 22:41:41', '2021-07-12 22:41:41'),
(3, 1, 'Slider 3', 'sliders/3.jpg', '/products', NULL, 3, '2021-07-12 22:41:41', '2021-07-12 22:41:41');

-- --------------------------------------------------------

--
-- Table structure for table `slugs`
--

CREATE TABLE `slugs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` int(10) UNSIGNED NOT NULL,
  `reference_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prefix` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `slugs`
--

INSERT INTO `slugs` (`id`, `key`, `reference_id`, `reference_type`, `prefix`, `created_at`, `updated_at`) VALUES
(1, 'fashion-live', 1, 'Botble\\Ecommerce\\Models\\Brand', 'brands', '2021-07-12 22:41:11', '2021-07-12 22:41:11'),
(2, 'hand-crafted', 2, 'Botble\\Ecommerce\\Models\\Brand', 'brands', '2021-07-12 22:41:11', '2021-07-12 22:41:11'),
(3, 'mestonix', 3, 'Botble\\Ecommerce\\Models\\Brand', 'brands', '2021-07-12 22:41:11', '2021-07-12 22:41:11'),
(4, 'sunshine', 4, 'Botble\\Ecommerce\\Models\\Brand', 'brands', '2021-07-12 22:41:11', '2021-07-12 22:41:11'),
(5, 'pure', 5, 'Botble\\Ecommerce\\Models\\Brand', 'brands', '2021-07-12 22:41:11', '2021-07-12 22:41:11'),
(6, 'anfold', 6, 'Botble\\Ecommerce\\Models\\Brand', 'brands', '2021-07-12 22:41:11', '2021-07-12 22:41:11'),
(7, 'automotive', 7, 'Botble\\Ecommerce\\Models\\Brand', 'brands', '2021-07-12 22:41:11', '2021-07-12 22:41:11'),
(8, 'hot-promotions', 1, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-07-12 22:41:12', '2021-07-12 22:41:12'),
(9, 'electronics', 2, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-07-12 22:41:12', '2021-07-12 22:41:12'),
(10, 'clothing', 3, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-07-12 22:41:12', '2021-07-12 22:41:12'),
(11, 'computers', 4, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-07-12 22:41:12', '2021-07-12 22:41:12'),
(12, 'home-kitchen', 5, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-07-12 22:41:12', '2021-07-12 22:41:12'),
(13, 'health-beauty', 6, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-07-12 22:41:12', '2021-07-12 22:41:12'),
(14, 'jewelry-watch', 7, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-07-12 22:41:12', '2021-07-12 22:41:12'),
(15, 'technology-toys', 8, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-07-12 22:41:12', '2021-07-12 22:41:12'),
(16, 'phones', 9, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-07-12 22:41:12', '2021-07-12 22:41:12'),
(17, 'babies-moms', 10, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-07-12 22:41:12', '2021-07-12 22:41:12'),
(18, 'sport-outdoor', 11, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-07-12 22:41:12', '2021-07-12 22:41:12'),
(19, 'books-office', 12, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-07-12 22:41:12', '2021-07-12 22:41:12'),
(20, 'cars-motorcycles', 13, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-07-12 22:41:12', '2021-07-12 22:41:12'),
(21, 'home-improvements', 14, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-07-12 22:41:12', '2021-07-12 22:41:12'),
(22, 'consumer-electronic', 15, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-07-12 22:41:12', '2021-07-12 22:41:12'),
(23, 'accessories-parts', 16, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-07-12 22:41:12', '2021-07-12 22:41:12'),
(24, 'computer-technologies', 17, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-07-12 22:41:12', '2021-07-12 22:41:12'),
(25, 'networking', 18, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-07-12 22:41:12', '2021-07-12 22:41:12'),
(26, 'home-audio-theaters', 19, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-07-12 22:41:12', '2021-07-12 22:41:12'),
(27, 'tv-videos', 20, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-07-12 22:41:12', '2021-07-12 22:41:12'),
(28, 'camera-photos-videos', 21, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-07-12 22:41:12', '2021-07-12 22:41:12'),
(29, 'cellphones-accessories', 22, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-07-12 22:41:12', '2021-07-12 22:41:12'),
(30, 'headphones', 23, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-07-12 22:41:12', '2021-07-12 22:41:12'),
(31, 'videos-games', 24, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-07-12 22:41:12', '2021-07-12 22:41:12'),
(32, 'wireless-speakers', 25, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-07-12 22:41:12', '2021-07-12 22:41:12'),
(33, 'office-electronic', 26, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-07-12 22:41:12', '2021-07-12 22:41:12'),
(34, 'digital-cables', 27, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-07-12 22:41:12', '2021-07-12 22:41:12'),
(35, 'audio-video-cables', 28, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-07-12 22:41:12', '2021-07-12 22:41:12'),
(36, 'batteries', 29, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-07-12 22:41:12', '2021-07-12 22:41:12'),
(37, 'computer-tablets', 30, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-07-12 22:41:12', '2021-07-12 22:41:12'),
(38, 'laptop', 31, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-07-12 22:41:12', '2021-07-12 22:41:12'),
(39, 'monitors', 32, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-07-12 22:41:12', '2021-07-12 22:41:12'),
(40, 'computer-components', 33, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-07-12 22:41:12', '2021-07-12 22:41:12'),
(41, 'drive-storages', 34, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-07-12 22:41:12', '2021-07-12 22:41:12'),
(42, 'gaming-laptop', 35, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-07-12 22:41:12', '2021-07-12 22:41:12'),
(43, 'security-protection', 36, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-07-12 22:41:12', '2021-07-12 22:41:12'),
(44, 'accessories', 37, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-07-12 22:41:12', '2021-07-12 22:41:12'),
(45, 'dual-camera-20mp', 1, 'Botble\\Ecommerce\\Models\\Product', 'products', '2021-07-12 22:41:31', '2021-07-12 22:41:31'),
(46, 'smart-watches', 2, 'Botble\\Ecommerce\\Models\\Product', 'products', '2021-07-12 22:41:31', '2021-07-12 22:41:31'),
(47, 'beat-headphone', 3, 'Botble\\Ecommerce\\Models\\Product', 'products', '2021-07-12 22:41:31', '2021-07-12 22:41:31'),
(48, 'red-black-headphone', 4, 'Botble\\Ecommerce\\Models\\Product', 'products', '2021-07-12 22:41:31', '2021-07-12 22:41:31'),
(49, 'smart-watch-external', 5, 'Botble\\Ecommerce\\Models\\Product', 'products', '2021-07-12 22:41:31', '2021-07-12 22:41:31'),
(50, 'nikon-hd-camera', 6, 'Botble\\Ecommerce\\Models\\Product', 'products', '2021-07-12 22:41:31', '2021-07-12 22:41:31'),
(51, 'audio-equipment', 7, 'Botble\\Ecommerce\\Models\\Product', 'products', '2021-07-12 22:41:31', '2021-07-12 22:41:31'),
(52, 'smart-televisions', 8, 'Botble\\Ecommerce\\Models\\Product', 'products', '2021-07-12 22:41:31', '2021-07-12 22:41:31'),
(53, 'samsung-smart-phone', 9, 'Botble\\Ecommerce\\Models\\Product', 'products', '2021-07-12 22:41:31', '2021-07-12 22:41:31'),
(54, 'herschel-leather-duffle-bag-in-brown-color', 10, 'Botble\\Ecommerce\\Models\\Product', 'products', '2021-07-12 22:41:31', '2021-07-12 22:41:31'),
(55, 'xbox-one-wireless-controller-black-color', 11, 'Botble\\Ecommerce\\Models\\Product', 'products', '2021-07-12 22:41:31', '2021-07-12 22:41:31'),
(56, 'epsion-plaster-printer', 12, 'Botble\\Ecommerce\\Models\\Product', 'products', '2021-07-12 22:41:31', '2021-07-12 22:41:31'),
(57, 'sound-intone-i65-earphone-white-version', 13, 'Botble\\Ecommerce\\Models\\Product', 'products', '2021-07-12 22:41:31', '2021-07-12 22:41:31'),
(58, 'bo-play-mini-bluetooth-speaker', 14, 'Botble\\Ecommerce\\Models\\Product', 'products', '2021-07-12 22:41:31', '2021-07-12 22:41:31'),
(59, 'apple-macbook-air-retina-133-inch-laptop', 15, 'Botble\\Ecommerce\\Models\\Product', 'products', '2021-07-12 22:41:31', '2021-07-12 22:41:31'),
(60, 'apple-macbook-air-retina-12-inch-laptop', 16, 'Botble\\Ecommerce\\Models\\Product', 'products', '2021-07-12 22:41:31', '2021-07-12 22:41:31'),
(61, 'samsung-gear-vr-virtual-reality-headset', 17, 'Botble\\Ecommerce\\Models\\Product', 'products', '2021-07-12 22:41:31', '2021-07-12 22:41:31'),
(62, 'aveeno-moisturizing-body-shower-450ml', 18, 'Botble\\Ecommerce\\Models\\Product', 'products', '2021-07-12 22:41:31', '2021-07-12 22:41:31'),
(63, 'nyx-beauty-couton-pallete-makeup-12', 19, 'Botble\\Ecommerce\\Models\\Product', 'products', '2021-07-12 22:41:31', '2021-07-12 22:41:31'),
(64, 'nyx-beauty-couton-pallete-makeup-12', 20, 'Botble\\Ecommerce\\Models\\Product', 'products', '2021-07-12 22:41:31', '2021-07-12 22:41:31'),
(65, 'mvmth-classical-leather-watch-in-black', 21, 'Botble\\Ecommerce\\Models\\Product', 'products', '2021-07-12 22:41:31', '2021-07-12 22:41:31'),
(66, 'baxter-care-hair-kit-for-bearded-mens', 22, 'Botble\\Ecommerce\\Models\\Product', 'products', '2021-07-12 22:41:31', '2021-07-12 22:41:31'),
(67, 'ciate-palemore-lipstick-bold-red-color', 23, 'Botble\\Ecommerce\\Models\\Product', 'products', '2021-07-12 22:41:31', '2021-07-12 22:41:31'),
(68, 'electronic', 1, 'Botble\\Ecommerce\\Models\\ProductTag', 'product-tags', '2021-07-12 22:41:36', '2021-07-12 22:41:36'),
(69, 'mobile', 2, 'Botble\\Ecommerce\\Models\\ProductTag', 'product-tags', '2021-07-12 22:41:36', '2021-07-12 22:41:36'),
(70, 'iphone', 3, 'Botble\\Ecommerce\\Models\\ProductTag', 'product-tags', '2021-07-12 22:41:36', '2021-07-12 22:41:36'),
(71, 'printer', 4, 'Botble\\Ecommerce\\Models\\ProductTag', 'product-tags', '2021-07-12 22:41:36', '2021-07-12 22:41:36'),
(72, 'office', 5, 'Botble\\Ecommerce\\Models\\ProductTag', 'product-tags', '2021-07-12 22:41:36', '2021-07-12 22:41:36'),
(73, 'it', 6, 'Botble\\Ecommerce\\Models\\ProductTag', 'product-tags', '2021-07-12 22:41:36', '2021-07-12 22:41:36'),
(74, 'general', 1, 'Botble\\Blog\\Models\\Tag', 'tag', '2021-07-12 22:41:40', '2021-07-12 22:41:40'),
(75, 'design', 2, 'Botble\\Blog\\Models\\Tag', 'tag', '2021-07-12 22:41:40', '2021-07-12 22:41:40'),
(76, 'jquery', 3, 'Botble\\Blog\\Models\\Tag', 'tag', '2021-07-12 22:41:40', '2021-07-12 22:41:40'),
(77, 'branding', 4, 'Botble\\Blog\\Models\\Tag', 'tag', '2021-07-12 22:41:40', '2021-07-12 22:41:40'),
(78, 'modern', 5, 'Botble\\Blog\\Models\\Tag', 'tag', '2021-07-12 22:41:40', '2021-07-12 22:41:40'),
(79, 'ecommerce', 1, 'Botble\\Blog\\Models\\Category', 'blog', '2021-07-12 22:41:40', '2021-07-12 22:41:42'),
(80, 'fashion', 2, 'Botble\\Blog\\Models\\Category', 'blog', '2021-07-12 22:41:40', '2021-07-12 22:41:42'),
(81, 'electronic', 3, 'Botble\\Blog\\Models\\Category', 'blog', '2021-07-12 22:41:40', '2021-07-12 22:41:42'),
(82, 'commercial', 4, 'Botble\\Blog\\Models\\Category', 'blog', '2021-07-12 22:41:40', '2021-07-12 22:41:42'),
(83, '4-expert-tips-on-how-to-choose-the-right-mens-wallet', 1, 'Botble\\Blog\\Models\\Post', 'blog', '2021-07-12 22:41:40', '2021-07-12 22:41:42'),
(84, 'sexy-clutches-how-to-buy-wear-a-designer-clutch-bag', 2, 'Botble\\Blog\\Models\\Post', 'blog', '2021-07-12 22:41:40', '2021-07-12 22:41:42'),
(85, 'the-top-2020-handbag-trends-to-know', 3, 'Botble\\Blog\\Models\\Post', 'blog', '2021-07-12 22:41:40', '2021-07-12 22:41:42'),
(86, 'how-to-match-the-color-of-your-handbag-with-an-outfit', 4, 'Botble\\Blog\\Models\\Post', 'blog', '2021-07-12 22:41:40', '2021-07-12 22:41:42'),
(87, 'how-to-care-for-leather-bags', 5, 'Botble\\Blog\\Models\\Post', 'blog', '2021-07-12 22:41:40', '2021-07-12 22:41:42'),
(88, 'were-crushing-hard-on-summers-10-biggest-bag-trends', 6, 'Botble\\Blog\\Models\\Post', 'blog', '2021-07-12 22:41:40', '2021-07-12 22:41:42'),
(89, 'explore-fashion-trending-for-guys-in-autumn-2021', 7, 'Botble\\Blog\\Models\\Post', 'blog', '2021-07-12 22:41:40', '2021-07-12 22:41:42'),
(90, 'home', 1, 'Botble\\Page\\Models\\Page', '', '2021-07-12 22:41:41', '2021-07-12 22:41:41'),
(91, 'about-us', 2, 'Botble\\Page\\Models\\Page', '', '2021-07-12 22:41:41', '2021-07-12 22:41:41'),
(92, 'terms-of-use', 3, 'Botble\\Page\\Models\\Page', '', '2021-07-12 22:41:41', '2021-07-12 22:41:41'),
(93, 'terms-conditions', 4, 'Botble\\Page\\Models\\Page', '', '2021-07-12 22:41:41', '2021-07-12 22:41:41'),
(94, 'refund-policy', 5, 'Botble\\Page\\Models\\Page', '', '2021-07-12 22:41:41', '2021-07-12 22:41:41'),
(95, 'blog', 6, 'Botble\\Page\\Models\\Page', '', '2021-07-12 22:41:41', '2021-07-12 22:41:41'),
(96, 'faqs', 7, 'Botble\\Page\\Models\\Page', '', '2021-07-12 22:41:41', '2021-07-12 22:41:41'),
(97, 'contact', 8, 'Botble\\Page\\Models\\Page', '', '2021-07-12 22:41:41', '2021-07-12 22:41:41'),
(98, 'cookie-policy', 9, 'Botble\\Page\\Models\\Page', '', '2021-07-12 22:41:41', '2021-07-12 22:41:41'),
(99, 'affiliate', 10, 'Botble\\Page\\Models\\Page', '', '2021-07-12 22:41:41', '2021-07-12 22:41:41'),
(100, 'career', 11, 'Botble\\Page\\Models\\Page', '', '2021-07-12 22:41:41', '2021-07-12 22:41:41'),
(101, 'coming-soon', 12, 'Botble\\Page\\Models\\Page', '', '2021-07-12 22:41:41', '2021-07-12 22:41:41'),
(102, 'charlotte-gerlach-i', 1, 'Botble\\Marketplace\\Models\\Store', 'stores', '2021-07-12 22:41:46', '2021-07-12 22:41:46'),
(103, 'duncan-grimes', 2, 'Botble\\Marketplace\\Models\\Store', 'stores', '2021-07-12 22:41:46', '2021-07-12 22:41:46'),
(104, 'miss-kamille-wuckert', 3, 'Botble\\Marketplace\\Models\\Store', 'stores', '2021-07-12 22:41:46', '2021-07-12 22:41:46'),
(105, 'prof-caden-ryan', 4, 'Botble\\Marketplace\\Models\\Store', 'stores', '2021-07-12 22:41:46', '2021-07-12 22:41:46'),
(106, 'alphonso-haag', 5, 'Botble\\Marketplace\\Models\\Store', 'stores', '2021-07-12 22:41:46', '2021-07-12 22:41:46');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_id` int(11) NOT NULL,
  `author_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `name`, `author_id`, `author_type`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'General', 1, 'Botble\\ACL\\Models\\User', '', 'published', '2021-07-12 22:41:40', '2021-07-12 22:41:40'),
(2, 'Design', 1, 'Botble\\ACL\\Models\\User', '', 'published', '2021-07-12 22:41:40', '2021-07-12 22:41:40'),
(3, 'Jquery', 1, 'Botble\\ACL\\Models\\User', '', 'published', '2021-07-12 22:41:40', '2021-07-12 22:41:40'),
(4, 'Branding', 1, 'Botble\\ACL\\Models\\User', '', 'published', '2021-07-12 22:41:40', '2021-07-12 22:41:40'),
(5, 'Modern', 1, 'Botble\\ACL\\Models\\User', '', 'published', '2021-07-12 22:41:40', '2021-07-12 22:41:40');

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `group` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `translations`
--

INSERT INTO `translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1, 1, 'en', 'auth', 'failed', 'These credentials do not match our records.', '2021-07-12 22:42:21', '2021-07-12 22:42:21'),
(2, 1, 'en', 'auth', 'password', 'The provided password is incorrect.', '2021-07-12 22:42:21', '2021-07-12 22:42:21'),
(3, 1, 'en', 'auth', 'throttle', 'Too many login attempts. Please try again in :seconds seconds.', '2021-07-12 22:42:21', '2021-07-12 22:42:21'),
(4, 1, 'en', 'pagination', 'previous', '&laquo; Previous', '2021-07-12 22:42:21', '2021-07-12 22:42:21'),
(5, 1, 'en', 'pagination', 'next', 'Next &raquo;', '2021-07-12 22:42:21', '2021-07-12 22:42:21'),
(6, 1, 'en', 'passwords', 'reset', 'Your password has been reset!', '2021-07-12 22:42:21', '2021-07-12 22:42:21'),
(7, 1, 'en', 'passwords', 'sent', 'We have emailed your password reset link!', '2021-07-12 22:42:21', '2021-07-12 22:42:21'),
(8, 1, 'en', 'passwords', 'throttled', 'Please wait before retrying.', '2021-07-12 22:42:21', '2021-07-12 22:42:21'),
(9, 1, 'en', 'passwords', 'token', 'This password reset token is invalid.', '2021-07-12 22:42:21', '2021-07-12 22:42:21'),
(10, 1, 'en', 'passwords', 'user', 'We can\'t find a user with that email address.', '2021-07-12 22:42:21', '2021-07-12 22:42:21'),
(11, 1, 'en', 'validation', 'accepted', 'The :attribute must be accepted.', '2021-07-12 22:42:21', '2021-07-12 22:42:21'),
(12, 1, 'en', 'validation', 'active_url', 'The :attribute is not a valid URL.', '2021-07-12 22:42:21', '2021-07-12 22:42:21'),
(13, 1, 'en', 'validation', 'after', 'The :attribute must be a date after :date.', '2021-07-12 22:42:21', '2021-07-12 22:42:21'),
(14, 1, 'en', 'validation', 'after_or_equal', 'The :attribute must be a date after or equal to :date.', '2021-07-12 22:42:21', '2021-07-12 22:42:21'),
(15, 1, 'en', 'validation', 'alpha', 'The :attribute must only contain letters.', '2021-07-12 22:42:21', '2021-07-12 22:42:21'),
(16, 1, 'en', 'validation', 'alpha_dash', 'The :attribute must only contain letters, numbers, dashes and underscores.', '2021-07-12 22:42:21', '2021-07-12 22:42:21'),
(17, 1, 'en', 'validation', 'alpha_num', 'The :attribute must only contain letters and numbers.', '2021-07-12 22:42:21', '2021-07-12 22:42:21'),
(18, 1, 'en', 'validation', 'array', 'The :attribute must be an array.', '2021-07-12 22:42:21', '2021-07-12 22:42:21'),
(19, 1, 'en', 'validation', 'before', 'The :attribute must be a date before :date.', '2021-07-12 22:42:21', '2021-07-12 22:42:21'),
(20, 1, 'en', 'validation', 'before_or_equal', 'The :attribute must be a date before or equal to :date.', '2021-07-12 22:42:21', '2021-07-12 22:42:21'),
(21, 1, 'en', 'validation', 'between.numeric', 'The :attribute must be between :min and :max.', '2021-07-12 22:42:21', '2021-07-12 22:42:21'),
(22, 1, 'en', 'validation', 'between.file', 'The :attribute must be between :min and :max kilobytes.', '2021-07-12 22:42:21', '2021-07-12 22:42:21'),
(23, 1, 'en', 'validation', 'between.string', 'The :attribute must be between :min and :max characters.', '2021-07-12 22:42:21', '2021-07-12 22:42:21'),
(24, 1, 'en', 'validation', 'between.array', 'The :attribute must have between :min and :max items.', '2021-07-12 22:42:21', '2021-07-12 22:42:21'),
(25, 1, 'en', 'validation', 'boolean', 'The :attribute field must be true or false.', '2021-07-12 22:42:21', '2021-07-12 22:42:21'),
(26, 1, 'en', 'validation', 'confirmed', 'The :attribute confirmation does not match.', '2021-07-12 22:42:21', '2021-07-12 22:42:21'),
(27, 1, 'en', 'validation', 'current_password', 'The password is incorrect.', '2021-07-12 22:42:21', '2021-07-12 22:42:21'),
(28, 1, 'en', 'validation', 'date', 'The :attribute is not a valid date.', '2021-07-12 22:42:21', '2021-07-12 22:42:21'),
(29, 1, 'en', 'validation', 'date_equals', 'The :attribute must be a date equal to :date.', '2021-07-12 22:42:21', '2021-07-12 22:42:21'),
(30, 1, 'en', 'validation', 'date_format', 'The :attribute does not match the format :format.', '2021-07-12 22:42:21', '2021-07-12 22:42:21'),
(31, 1, 'en', 'validation', 'different', 'The :attribute and :other must be different.', '2021-07-12 22:42:21', '2021-07-12 22:42:21'),
(32, 1, 'en', 'validation', 'digits', 'The :attribute must be :digits digits.', '2021-07-12 22:42:21', '2021-07-12 22:42:21'),
(33, 1, 'en', 'validation', 'digits_between', 'The :attribute must be between :min and :max digits.', '2021-07-12 22:42:21', '2021-07-12 22:42:21'),
(34, 1, 'en', 'validation', 'dimensions', 'The :attribute has invalid image dimensions.', '2021-07-12 22:42:21', '2021-07-12 22:42:21'),
(35, 1, 'en', 'validation', 'distinct', 'The :attribute field has a duplicate value.', '2021-07-12 22:42:21', '2021-07-12 22:42:21'),
(36, 1, 'en', 'validation', 'email', 'The :attribute must be a valid email address.', '2021-07-12 22:42:21', '2021-07-12 22:42:21'),
(37, 1, 'en', 'validation', 'ends_with', 'The :attribute must end with one of the following: :values.', '2021-07-12 22:42:21', '2021-07-12 22:42:21'),
(38, 1, 'en', 'validation', 'exists', 'The selected :attribute is invalid.', '2021-07-12 22:42:21', '2021-07-12 22:42:21'),
(39, 1, 'en', 'validation', 'file', 'The :attribute must be a file.', '2021-07-12 22:42:21', '2021-07-12 22:42:21'),
(40, 1, 'en', 'validation', 'filled', 'The :attribute field must have a value.', '2021-07-12 22:42:21', '2021-07-12 22:42:21'),
(41, 1, 'en', 'validation', 'gt.numeric', 'The :attribute must be greater than :value.', '2021-07-12 22:42:21', '2021-07-12 22:42:21'),
(42, 1, 'en', 'validation', 'gt.file', 'The :attribute must be greater than :value kilobytes.', '2021-07-12 22:42:21', '2021-07-12 22:42:21'),
(43, 1, 'en', 'validation', 'gt.string', 'The :attribute must be greater than :value characters.', '2021-07-12 22:42:21', '2021-07-12 22:42:21'),
(44, 1, 'en', 'validation', 'gt.array', 'The :attribute must have more than :value items.', '2021-07-12 22:42:21', '2021-07-12 22:42:21'),
(45, 1, 'en', 'validation', 'gte.numeric', 'The :attribute must be greater than or equal :value.', '2021-07-12 22:42:21', '2021-07-12 22:42:21'),
(46, 1, 'en', 'validation', 'gte.file', 'The :attribute must be greater than or equal :value kilobytes.', '2021-07-12 22:42:21', '2021-07-12 22:42:21'),
(47, 1, 'en', 'validation', 'gte.string', 'The :attribute must be greater than or equal :value characters.', '2021-07-12 22:42:21', '2021-07-12 22:42:21'),
(48, 1, 'en', 'validation', 'gte.array', 'The :attribute must have :value items or more.', '2021-07-12 22:42:21', '2021-07-12 22:42:21'),
(49, 1, 'en', 'validation', 'image', 'The :attribute must be an image.', '2021-07-12 22:42:21', '2021-07-12 22:42:21'),
(50, 1, 'en', 'validation', 'in', 'The selected :attribute is invalid.', '2021-07-12 22:42:21', '2021-07-12 22:42:21'),
(51, 1, 'en', 'validation', 'in_array', 'The :attribute field does not exist in :other.', '2021-07-12 22:42:21', '2021-07-12 22:42:21'),
(52, 1, 'en', 'validation', 'integer', 'The :attribute must be an integer.', '2021-07-12 22:42:21', '2021-07-12 22:42:21'),
(53, 1, 'en', 'validation', 'ip', 'The :attribute must be a valid IP address.', '2021-07-12 22:42:21', '2021-07-12 22:42:21'),
(54, 1, 'en', 'validation', 'ipv4', 'The :attribute must be a valid IPv4 address.', '2021-07-12 22:42:21', '2021-07-12 22:42:21'),
(55, 1, 'en', 'validation', 'ipv6', 'The :attribute must be a valid IPv6 address.', '2021-07-12 22:42:21', '2021-07-12 22:42:21'),
(56, 1, 'en', 'validation', 'json', 'The :attribute must be a valid JSON string.', '2021-07-12 22:42:21', '2021-07-12 22:42:21'),
(57, 1, 'en', 'validation', 'lt.numeric', 'The :attribute must be less than :value.', '2021-07-12 22:42:21', '2021-07-12 22:42:21'),
(58, 1, 'en', 'validation', 'lt.file', 'The :attribute must be less than :value kilobytes.', '2021-07-12 22:42:21', '2021-07-12 22:42:21'),
(59, 1, 'en', 'validation', 'lt.string', 'The :attribute must be less than :value characters.', '2021-07-12 22:42:21', '2021-07-12 22:42:21'),
(60, 1, 'en', 'validation', 'lt.array', 'The :attribute must have less than :value items.', '2021-07-12 22:42:21', '2021-07-12 22:42:21'),
(61, 1, 'en', 'validation', 'lte.numeric', 'The :attribute must be less than or equal :value.', '2021-07-12 22:42:21', '2021-07-12 22:42:21'),
(62, 1, 'en', 'validation', 'lte.file', 'The :attribute must be less than or equal :value kilobytes.', '2021-07-12 22:42:21', '2021-07-12 22:42:21'),
(63, 1, 'en', 'validation', 'lte.string', 'The :attribute must be less than or equal :value characters.', '2021-07-12 22:42:21', '2021-07-12 22:42:21'),
(64, 1, 'en', 'validation', 'lte.array', 'The :attribute must not have more than :value items.', '2021-07-12 22:42:21', '2021-07-12 22:42:21'),
(65, 1, 'en', 'validation', 'max.numeric', 'The :attribute must not be greater than :max.', '2021-07-12 22:42:21', '2021-07-12 22:42:21'),
(66, 1, 'en', 'validation', 'max.file', 'The :attribute must not be greater than :max kilobytes.', '2021-07-12 22:42:21', '2021-07-12 22:42:21'),
(67, 1, 'en', 'validation', 'max.string', 'The :attribute must not be greater than :max characters.', '2021-07-12 22:42:21', '2021-07-12 22:42:21'),
(68, 1, 'en', 'validation', 'max.array', 'The :attribute must not have more than :max items.', '2021-07-12 22:42:21', '2021-07-12 22:42:21'),
(69, 1, 'en', 'validation', 'mimes', 'The :attribute must be a file of type: :values.', '2021-07-12 22:42:21', '2021-07-12 22:42:21'),
(70, 1, 'en', 'validation', 'mimetypes', 'The :attribute must be a file of type: :values.', '2021-07-12 22:42:21', '2021-07-12 22:42:21'),
(71, 1, 'en', 'validation', 'min.numeric', 'The :attribute must be at least :min.', '2021-07-12 22:42:21', '2021-07-12 22:42:21'),
(72, 1, 'en', 'validation', 'min.file', 'The :attribute must be at least :min kilobytes.', '2021-07-12 22:42:21', '2021-07-12 22:42:21'),
(73, 1, 'en', 'validation', 'min.string', 'The :attribute must be at least :min characters.', '2021-07-12 22:42:21', '2021-07-12 22:42:21'),
(74, 1, 'en', 'validation', 'min.array', 'The :attribute must have at least :min items.', '2021-07-12 22:42:21', '2021-07-12 22:42:21'),
(75, 1, 'en', 'validation', 'multiple_of', 'The :attribute must be a multiple of :value.', '2021-07-12 22:42:21', '2021-07-12 22:42:21'),
(76, 1, 'en', 'validation', 'not_in', 'The selected :attribute is invalid.', '2021-07-12 22:42:21', '2021-07-12 22:42:21'),
(77, 1, 'en', 'validation', 'not_regex', 'The :attribute format is invalid.', '2021-07-12 22:42:21', '2021-07-12 22:42:21'),
(78, 1, 'en', 'validation', 'numeric', 'The :attribute must be a number.', '2021-07-12 22:42:21', '2021-07-12 22:42:21'),
(79, 1, 'en', 'validation', 'password', 'The password is incorrect.', '2021-07-12 22:42:21', '2021-07-12 22:42:21'),
(80, 1, 'en', 'validation', 'present', 'The :attribute field must be present.', '2021-07-12 22:42:21', '2021-07-12 22:42:21'),
(81, 1, 'en', 'validation', 'regex', 'The :attribute format is invalid.', '2021-07-12 22:42:21', '2021-07-12 22:42:21'),
(82, 1, 'en', 'validation', 'required', 'The :attribute field is required.', '2021-07-12 22:42:21', '2021-07-12 22:42:21'),
(83, 1, 'en', 'validation', 'required_if', 'The :attribute field is required when :other is :value.', '2021-07-12 22:42:21', '2021-07-12 22:42:21'),
(84, 1, 'en', 'validation', 'required_unless', 'The :attribute field is required unless :other is in :values.', '2021-07-12 22:42:21', '2021-07-12 22:42:21'),
(85, 1, 'en', 'validation', 'required_with', 'The :attribute field is required when :values is present.', '2021-07-12 22:42:21', '2021-07-12 22:42:21'),
(86, 1, 'en', 'validation', 'required_with_all', 'The :attribute field is required when :values are present.', '2021-07-12 22:42:21', '2021-07-12 22:42:21'),
(87, 1, 'en', 'validation', 'required_without', 'The :attribute field is required when :values is not present.', '2021-07-12 22:42:21', '2021-07-12 22:42:21'),
(88, 1, 'en', 'validation', 'required_without_all', 'The :attribute field is required when none of :values are present.', '2021-07-12 22:42:21', '2021-07-12 22:42:21'),
(89, 1, 'en', 'validation', 'prohibited', 'The :attribute field is prohibited.', '2021-07-12 22:42:21', '2021-07-12 22:42:21'),
(90, 1, 'en', 'validation', 'prohibited_if', 'The :attribute field is prohibited when :other is :value.', '2021-07-12 22:42:21', '2021-07-12 22:42:21'),
(91, 1, 'en', 'validation', 'prohibited_unless', 'The :attribute field is prohibited unless :other is in :values.', '2021-07-12 22:42:21', '2021-07-12 22:42:21'),
(92, 1, 'en', 'validation', 'same', 'The :attribute and :other must match.', '2021-07-12 22:42:21', '2021-07-12 22:42:21'),
(93, 1, 'en', 'validation', 'size.numeric', 'The :attribute must be :size.', '2021-07-12 22:42:21', '2021-07-12 22:42:21'),
(94, 1, 'en', 'validation', 'size.file', 'The :attribute must be :size kilobytes.', '2021-07-12 22:42:21', '2021-07-12 22:42:21'),
(95, 1, 'en', 'validation', 'size.string', 'The :attribute must be :size characters.', '2021-07-12 22:42:21', '2021-07-12 22:42:21'),
(96, 1, 'en', 'validation', 'size.array', 'The :attribute must contain :size items.', '2021-07-12 22:42:21', '2021-07-12 22:42:21'),
(97, 1, 'en', 'validation', 'starts_with', 'The :attribute must start with one of the following: :values.', '2021-07-12 22:42:21', '2021-07-12 22:42:21'),
(98, 1, 'en', 'validation', 'string', 'The :attribute must be a string.', '2021-07-12 22:42:21', '2021-07-12 22:42:21'),
(99, 1, 'en', 'validation', 'timezone', 'The :attribute must be a valid timezone.', '2021-07-12 22:42:21', '2021-07-12 22:42:21'),
(100, 1, 'en', 'validation', 'unique', 'The :attribute has already been taken.', '2021-07-12 22:42:21', '2021-07-12 22:42:21'),
(101, 1, 'en', 'validation', 'uploaded', 'The :attribute failed to upload.', '2021-07-12 22:42:21', '2021-07-12 22:42:21'),
(102, 1, 'en', 'validation', 'url', 'The :attribute must be a valid URL.', '2021-07-12 22:42:21', '2021-07-12 22:42:21'),
(103, 1, 'en', 'validation', 'uuid', 'The :attribute must be a valid UUID.', '2021-07-12 22:42:21', '2021-07-12 22:42:21'),
(104, 1, 'en', 'validation', 'custom.attribute-name.rule-name', 'custom-message', '2021-07-12 22:42:21', '2021-07-12 22:42:21'),
(105, 1, 'en', 'core/acl/api', 'api_clients', 'API Clients', '2021-07-12 22:42:21', '2021-07-12 22:42:21'),
(106, 1, 'en', 'core/acl/api', 'create_new_client', 'Create new client', '2021-07-12 22:42:21', '2021-07-12 22:42:21'),
(107, 1, 'en', 'core/acl/api', 'create_new_client_success', 'Create new client successfully!', '2021-07-12 22:42:21', '2021-07-12 22:42:21'),
(108, 1, 'en', 'core/acl/api', 'edit_client', 'Edit client \":name\"', '2021-07-12 22:42:21', '2021-07-12 22:42:21'),
(109, 1, 'en', 'core/acl/api', 'edit_client_success', 'Updated client successfully!', '2021-07-12 22:42:21', '2021-07-12 22:42:21'),
(110, 1, 'en', 'core/acl/api', 'delete_success', 'Deleted client successfully!', '2021-07-12 22:42:21', '2021-07-12 22:42:21'),
(111, 1, 'en', 'core/acl/api', 'confirm_delete_title', 'Confirm delete client \":name\"', '2021-07-12 22:42:21', '2021-07-12 22:42:21'),
(112, 1, 'en', 'core/acl/api', 'confirm_delete_description', 'Do you really want to delete client \":name\"?', '2021-07-12 22:42:21', '2021-07-12 22:42:21'),
(113, 1, 'en', 'core/acl/api', 'cancel_delete', 'No', '2021-07-12 22:42:21', '2021-07-12 22:42:21'),
(114, 1, 'en', 'core/acl/api', 'continue_delete', 'Yes, let\'s delete it!', '2021-07-12 22:42:21', '2021-07-12 22:42:21'),
(115, 1, 'en', 'core/acl/api', 'name', 'Name', '2021-07-12 22:42:21', '2021-07-12 22:42:21'),
(116, 1, 'en', 'core/acl/api', 'cancel', 'Cancel', '2021-07-12 22:42:21', '2021-07-12 22:42:21'),
(117, 1, 'en', 'core/acl/api', 'save', 'Save', '2021-07-12 22:42:21', '2021-07-12 22:42:21'),
(118, 1, 'en', 'core/acl/api', 'edit', 'Edit', '2021-07-12 22:42:21', '2021-07-12 22:42:21'),
(119, 1, 'en', 'core/acl/api', 'delete', 'Delete', '2021-07-12 22:42:21', '2021-07-12 22:42:21'),
(120, 1, 'en', 'core/acl/api', 'client_id', 'Client ID', '2021-07-12 22:42:21', '2021-07-12 22:42:21'),
(121, 1, 'en', 'core/acl/api', 'secret', 'Secret', '2021-07-12 22:42:21', '2021-07-12 22:42:21'),
(122, 1, 'en', 'core/acl/auth', 'login.username', 'Email/Username', '2021-07-12 22:42:21', '2021-07-12 22:42:21'),
(123, 1, 'en', 'core/acl/auth', 'login.email', 'Email', '2021-07-12 22:42:21', '2021-07-12 22:42:21'),
(124, 1, 'en', 'core/acl/auth', 'login.password', 'Password', '2021-07-12 22:42:21', '2021-07-12 22:42:21'),
(125, 1, 'en', 'core/acl/auth', 'login.title', 'User Login', '2021-07-12 22:42:21', '2021-07-12 22:42:21'),
(126, 1, 'en', 'core/acl/auth', 'login.remember', 'Remember me?', '2021-07-12 22:42:21', '2021-07-12 22:42:21'),
(127, 1, 'en', 'core/acl/auth', 'login.login', 'Sign in', '2021-07-12 22:42:21', '2021-07-12 22:42:21'),
(128, 1, 'en', 'core/acl/auth', 'login.placeholder.username', 'Please enter your username', '2021-07-12 22:42:21', '2021-07-12 22:42:21'),
(129, 1, 'en', 'core/acl/auth', 'login.placeholder.email', 'Please enter your email', '2021-07-12 22:42:21', '2021-07-12 22:42:21'),
(130, 1, 'en', 'core/acl/auth', 'login.success', 'Login successfully!', '2021-07-12 22:42:21', '2021-07-12 22:42:21'),
(131, 1, 'en', 'core/acl/auth', 'login.fail', 'Wrong username or password.', '2021-07-12 22:42:21', '2021-07-12 22:42:21'),
(132, 1, 'en', 'core/acl/auth', 'login.not_active', 'Your account has not been activated yet!', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(133, 1, 'en', 'core/acl/auth', 'login.banned', 'This account is banned.', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(134, 1, 'en', 'core/acl/auth', 'login.logout_success', 'Logout successfully!', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(135, 1, 'en', 'core/acl/auth', 'login.dont_have_account', 'You don\'t have account on this system, please contact administrator for more information!', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(136, 1, 'en', 'core/acl/auth', 'forgot_password.title', 'Forgot Password', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(137, 1, 'en', 'core/acl/auth', 'forgot_password.message', '<p>Have you forgotten your password?</p><p>Please enter your email account. System will send a email with active link to reset your password.</p>', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(138, 1, 'en', 'core/acl/auth', 'forgot_password.submit', 'Submit', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(139, 1, 'en', 'core/acl/auth', 'reset.new_password', 'New password', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(140, 1, 'en', 'core/acl/auth', 'reset.password_confirmation', 'Confirm new password', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(141, 1, 'en', 'core/acl/auth', 'reset.email', 'Email', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(142, 1, 'en', 'core/acl/auth', 'reset.title', 'Reset your password', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(143, 1, 'en', 'core/acl/auth', 'reset.update', 'Update', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(144, 1, 'en', 'core/acl/auth', 'reset.wrong_token', 'This link is invalid or expired. Please try using reset form again.', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(145, 1, 'en', 'core/acl/auth', 'reset.user_not_found', 'This username is not exist.', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(146, 1, 'en', 'core/acl/auth', 'reset.success', 'Reset password successfully!', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(147, 1, 'en', 'core/acl/auth', 'reset.fail', 'Token is invalid, the reset password link has been expired!', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(148, 1, 'en', 'core/acl/auth', 'reset.reset.title', 'Email reset password', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(149, 1, 'en', 'core/acl/auth', 'reset.send.success', 'A email was sent to your email account. Please check and complete this action.', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(150, 1, 'en', 'core/acl/auth', 'reset.send.fail', 'Can not send email in this time. Please try again later.', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(151, 1, 'en', 'core/acl/auth', 'reset.new-password', 'New password', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(152, 1, 'en', 'core/acl/auth', 'email.reminder.title', 'Email reset password', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(153, 1, 'en', 'core/acl/auth', 'password_confirmation', 'Password confirm', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(154, 1, 'en', 'core/acl/auth', 'failed', 'Failed', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(155, 1, 'en', 'core/acl/auth', 'throttle', 'Throttle', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(156, 1, 'en', 'core/acl/auth', 'not_member', 'Not a member yet?', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(157, 1, 'en', 'core/acl/auth', 'register_now', 'Register now', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(158, 1, 'en', 'core/acl/auth', 'lost_your_password', 'Lost your password?', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(159, 1, 'en', 'core/acl/auth', 'login_title', 'Admin', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(160, 1, 'en', 'core/acl/auth', 'login_via_social', 'Login with social networks', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(161, 1, 'en', 'core/acl/auth', 'back_to_login', 'Back to login page', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(162, 1, 'en', 'core/acl/auth', 'sign_in_below', 'Sign In Below', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(163, 1, 'en', 'core/acl/auth', 'languages', 'Languages', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(164, 1, 'en', 'core/acl/auth', 'reset_password', 'Reset Password', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(165, 1, 'en', 'core/acl/permissions', 'notices.role_in_use', 'Cannot delete this role, it is still in use!', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(166, 1, 'en', 'core/acl/permissions', 'notices.role_delete_belong_user', 'You are not able to delete this role; it belongs to someone else!', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(167, 1, 'en', 'core/acl/permissions', 'notices.role_edit_belong_user', 'You are not able to edit this role; it belongs to someone else!', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(168, 1, 'en', 'core/acl/permissions', 'notices.delete_global_role', 'You are not allowed to delete global roles!', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(169, 1, 'en', 'core/acl/permissions', 'notices.delete_success', 'The selected role was deleted successfully!', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(170, 1, 'en', 'core/acl/permissions', 'notices.modified_success', 'The selected role was modified successfully!', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(171, 1, 'en', 'core/acl/permissions', 'notices.create_success', 'The new role was successfully created', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(172, 1, 'en', 'core/acl/permissions', 'notices.duplicated_success', 'The selected role was duplicated successfully', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(173, 1, 'en', 'core/acl/permissions', 'notices.no_select', 'Please select at least one record to take this action!', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(174, 1, 'en', 'core/acl/permissions', 'notices.not_found', 'Role not found', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(175, 1, 'en', 'core/acl/permissions', 'name', 'Name', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(176, 1, 'en', 'core/acl/permissions', 'current_role', 'Current Role', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(177, 1, 'en', 'core/acl/permissions', 'no_role_assigned', 'No role assigned', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(178, 1, 'en', 'core/acl/permissions', 'role_assigned', 'Assigned Role', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(179, 1, 'en', 'core/acl/permissions', 'create_role', 'Create New Role', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(180, 1, 'en', 'core/acl/permissions', 'role_name', 'Name', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(181, 1, 'en', 'core/acl/permissions', 'role_description', 'Description', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(182, 1, 'en', 'core/acl/permissions', 'permission_flags', 'Permission Flags', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(183, 1, 'en', 'core/acl/permissions', 'cancel', 'Cancel', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(184, 1, 'en', 'core/acl/permissions', 'reset', 'Reset', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(185, 1, 'en', 'core/acl/permissions', 'save', 'Save', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(186, 1, 'en', 'core/acl/permissions', 'global_role_msg', 'This is a global role and cannot be modified.  You can use the Duplicate button to make a copy of this role that you can then modify.', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(187, 1, 'en', 'core/acl/permissions', 'details', 'Details', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(188, 1, 'en', 'core/acl/permissions', 'duplicate', 'Duplicate', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(189, 1, 'en', 'core/acl/permissions', 'all', 'All Permissions', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(190, 1, 'en', 'core/acl/permissions', 'list_role', 'List Roles', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(191, 1, 'en', 'core/acl/permissions', 'created_on', 'Created On', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(192, 1, 'en', 'core/acl/permissions', 'created_by', 'Created By', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(193, 1, 'en', 'core/acl/permissions', 'actions', 'Actions', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(194, 1, 'en', 'core/acl/permissions', 'role_in_use', 'Cannot delete this role, it is still in use!', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(195, 1, 'en', 'core/acl/permissions', 'role_delete_belong_user', 'You are not able to delete this role; it belongs to someone else!', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(196, 1, 'en', 'core/acl/permissions', 'delete_global_role', 'Can not delete global role', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(197, 1, 'en', 'core/acl/permissions', 'delete_success', 'Delete role successfully', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(198, 1, 'en', 'core/acl/permissions', 'no_select', 'Please select at least one role to take this action!', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(199, 1, 'en', 'core/acl/permissions', 'not_found', 'No role found!', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(200, 1, 'en', 'core/acl/permissions', 'role_edit_belong_user', 'You are not able to edit this role; it belongs to someone else!', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(201, 1, 'en', 'core/acl/permissions', 'modified_success', 'Modified successfully', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(202, 1, 'en', 'core/acl/permissions', 'create_success', 'Create successfully', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(203, 1, 'en', 'core/acl/permissions', 'duplicated_success', 'Duplicated successfully', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(204, 1, 'en', 'core/acl/permissions', 'options', 'Options', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(205, 1, 'en', 'core/acl/permissions', 'access_denied_message', 'You are not allowed to do this action', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(206, 1, 'en', 'core/acl/permissions', 'roles', 'Roles', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(207, 1, 'en', 'core/acl/permissions', 'role_permission', 'Roles and Permissions', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(208, 1, 'en', 'core/acl/permissions', 'user_management', 'User Management', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(209, 1, 'en', 'core/acl/permissions', 'super_user_management', 'Super User Management', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(210, 1, 'en', 'core/acl/permissions', 'action_unauthorized', 'This action is unauthorized.', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(211, 1, 'en', 'core/acl/reminders', 'password', 'Passwords must be at least six characters and match the confirmation.', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(212, 1, 'en', 'core/acl/reminders', 'user', 'We can\'t find a user with that e-mail address.', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(213, 1, 'en', 'core/acl/reminders', 'token', 'This password reset token is invalid.', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(214, 1, 'en', 'core/acl/reminders', 'sent', 'Password reminder sent!', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(215, 1, 'en', 'core/acl/reminders', 'reset', 'Password has been reset!', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(216, 1, 'en', 'core/acl/users', 'delete_user_logged_in', 'Can\'t delete this user. This user is logged on!', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(217, 1, 'en', 'core/acl/users', 'no_select', 'Please select at least one record to take this action!', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(218, 1, 'en', 'core/acl/users', 'lock_user_logged_in', 'Can\'t lock this user. This user is logged on!', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(219, 1, 'en', 'core/acl/users', 'update_success', 'Update status successfully!', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(220, 1, 'en', 'core/acl/users', 'save_setting_failed', 'Something went wrong when save your setting', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(221, 1, 'en', 'core/acl/users', 'not_found', 'User not found', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(222, 1, 'en', 'core/acl/users', 'email_exist', 'That email address already belongs to an existing account', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(223, 1, 'en', 'core/acl/users', 'username_exist', 'That username address already belongs to an existing account', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(224, 1, 'en', 'core/acl/users', 'update_profile_success', 'Your profile changes were successfully saved', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(225, 1, 'en', 'core/acl/users', 'password_update_success', 'Password successfully changed', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(226, 1, 'en', 'core/acl/users', 'current_password_not_valid', 'Current password is not valid', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(227, 1, 'en', 'core/acl/users', 'user_exist_in', 'User is already a member', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(228, 1, 'en', 'core/acl/users', 'email', 'Email', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(229, 1, 'en', 'core/acl/users', 'role', 'Role', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(230, 1, 'en', 'core/acl/users', 'username', 'Username', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(231, 1, 'en', 'core/acl/users', 'last_name', 'Last Name', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(232, 1, 'en', 'core/acl/users', 'first_name', 'First Name', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(233, 1, 'en', 'core/acl/users', 'message', 'Message', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(234, 1, 'en', 'core/acl/users', 'cancel_btn', 'Cancel', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(235, 1, 'en', 'core/acl/users', 'change_password', 'Change password', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(236, 1, 'en', 'core/acl/users', 'current_password', 'Current password', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(237, 1, 'en', 'core/acl/users', 'new_password', 'New Password', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(238, 1, 'en', 'core/acl/users', 'confirm_new_password', 'Confirm New Password', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(239, 1, 'en', 'core/acl/users', 'password', 'Password', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(240, 1, 'en', 'core/acl/users', 'save', 'Save', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(241, 1, 'en', 'core/acl/users', 'cannot_delete', 'User could not be deleted', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(242, 1, 'en', 'core/acl/users', 'deleted', 'User deleted', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(243, 1, 'en', 'core/acl/users', 'last_login', 'Last Login', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(244, 1, 'en', 'core/acl/users', 'error_update_profile_image', 'Error when update profile image', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(245, 1, 'en', 'core/acl/users', 'email_reminder_template', '<h3>Hello :name</h3><p>The system has received a request to restore the password for your account, to complete this task please click the link below.</p><p><a href=\":link\">Reset password now</a></p><p>If not you ask recover password, please ignore this email.</p><p>This email is valid for 60 minutes after receiving the email.</p>', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(246, 1, 'en', 'core/acl/users', 'change_profile_image', 'Change Profile Image', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(247, 1, 'en', 'core/acl/users', 'new_image', 'New Image', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(248, 1, 'en', 'core/acl/users', 'loading', 'Loading', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(249, 1, 'en', 'core/acl/users', 'close', 'Close', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(250, 1, 'en', 'core/acl/users', 'update', 'Update', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(251, 1, 'en', 'core/acl/users', 'read_image_failed', 'Failed to read the image file', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(252, 1, 'en', 'core/acl/users', 'users', 'Users', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(253, 1, 'en', 'core/acl/users', 'update_avatar_success', 'Update profile image successfully!', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(254, 1, 'en', 'core/acl/users', 'info.title', 'User profile', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(255, 1, 'en', 'core/acl/users', 'info.first_name', 'First Name', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(256, 1, 'en', 'core/acl/users', 'info.last_name', 'Last Name', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(257, 1, 'en', 'core/acl/users', 'info.email', 'Email', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(258, 1, 'en', 'core/acl/users', 'info.second_email', 'Secondary Email', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(259, 1, 'en', 'core/acl/users', 'info.address', 'Address', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(260, 1, 'en', 'core/acl/users', 'info.second_address', 'Secondary Address', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(261, 1, 'en', 'core/acl/users', 'info.birth_day', 'Date of birth', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(262, 1, 'en', 'core/acl/users', 'info.job', 'Job Position', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(263, 1, 'en', 'core/acl/users', 'info.mobile_number', 'Mobile Number', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(264, 1, 'en', 'core/acl/users', 'info.second_mobile_number', 'Secondary Phone', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(265, 1, 'en', 'core/acl/users', 'info.interes', 'Interests', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(266, 1, 'en', 'core/acl/users', 'info.about', 'About', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(267, 1, 'en', 'core/acl/users', 'gender.title', 'Gender', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(268, 1, 'en', 'core/acl/users', 'gender.male', 'Male', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(269, 1, 'en', 'core/acl/users', 'gender.female', 'Female', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(270, 1, 'en', 'core/acl/users', 'total_users', 'Total users', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(271, 1, 'en', 'core/acl/users', 'statuses.activated', 'Activated', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(272, 1, 'en', 'core/acl/users', 'statuses.deactivated', 'Deactivated', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(273, 1, 'en', 'core/acl/users', 'make_super', 'Make super', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(274, 1, 'en', 'core/acl/users', 'remove_super', 'Remove super', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(275, 1, 'en', 'core/acl/users', 'is_super', 'Is super?', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(276, 1, 'en', 'core/acl/users', 'email_placeholder', 'Ex: example@gmail.com', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(277, 1, 'en', 'core/acl/users', 'password_confirmation', 'Re-type password', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(278, 1, 'en', 'core/acl/users', 'select_role', 'Select role', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(279, 1, 'en', 'core/acl/users', 'create_new_user', 'Create a new user', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(280, 1, 'en', 'core/acl/users', 'cannot_delete_super_user', 'Permission denied. Cannot delete a super user!', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(281, 1, 'en', 'core/acl/users', 'assigned_role', 'Assigned Role', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(282, 1, 'en', 'core/acl/users', 'no_role_assigned', 'No role assigned', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(283, 1, 'en', 'core/acl/users', 'view_user_profile', 'View user\'s profile', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(284, 1, 'vi', 'core/acl/auth', 'login.username', 'Tên truy cập', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(285, 1, 'vi', 'core/acl/auth', 'login.password', 'Mật khẩu', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(286, 1, 'vi', 'core/acl/auth', 'login.title', 'Đăng nhập vào quản trị', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(287, 1, 'vi', 'core/acl/auth', 'login.remember', 'Nhớ mật khẩu?', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(288, 1, 'vi', 'core/acl/auth', 'login.login', 'Đăng nhập', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(289, 1, 'vi', 'core/acl/auth', 'login.placeholder.username', 'Vui lòng nhập tên truy cập', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(290, 1, 'vi', 'core/acl/auth', 'login.placeholder.email', 'Vui lòng nhập email', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(291, 1, 'vi', 'core/acl/auth', 'login.success', 'Đăng nhập thành công!', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(292, 1, 'vi', 'core/acl/auth', 'login.fail', 'Sai tên truy cập hoặc mật khẩu.', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(293, 1, 'vi', 'core/acl/auth', 'login.not_active', 'Tài khoản của bạn chưa được kích hoạt!', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(294, 1, 'vi', 'core/acl/auth', 'login.banned', 'Tài khoản này đã bị khóa.', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(295, 1, 'vi', 'core/acl/auth', 'login.logout_success', 'Đăng xuất thành công!', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(296, 1, 'vi', 'core/acl/auth', 'login.dont_have_account', 'Bạn không có tài khoản trong hệ thống, vui lòng liên hệ quản trị viên!', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(297, 1, 'vi', 'core/acl/auth', 'login.email', 'Email', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(298, 1, 'vi', 'core/acl/auth', 'forgot_password.title', 'Quên mật khẩu', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(299, 1, 'vi', 'core/acl/auth', 'forgot_password.message', '<p>Quên mật khẩu?</p><p>Vui lòng nhập email đăng nhập tài khoản của bạn để hệ thống gửi liên kết khôi phục mật khẩu.</p>', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(300, 1, 'vi', 'core/acl/auth', 'forgot_password.submit', 'Hoàn tất', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(301, 1, 'vi', 'core/acl/auth', 'reset.new_password', 'Mật khẩu mới', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(302, 1, 'vi', 'core/acl/auth', 'reset.title', 'Khôi phục mật khẩu', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(303, 1, 'vi', 'core/acl/auth', 'reset.update', 'Cập nhật', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(304, 1, 'vi', 'core/acl/auth', 'reset.wrong_token', 'Liên kết này không chính xác hoặc đã hết hiệu lực, vui lòng yêu cầu khôi phục mật khẩu lại!', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(305, 1, 'vi', 'core/acl/auth', 'reset.user_not_found', 'Tên đăng nhập không tồn tại.', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(306, 1, 'vi', 'core/acl/auth', 'reset.success', 'Khôi phục mật khẩu thành công!', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(307, 1, 'vi', 'core/acl/auth', 'reset.fail', 'Token không hợp lệ hoặc liên kết khôi phục mật khẩu đã hết thời gian hiệu lực!', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(308, 1, 'vi', 'core/acl/auth', 'reset.reset.title', 'Email khôi phục mật khẩu', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(309, 1, 'vi', 'core/acl/auth', 'reset.send.success', 'Một email khôi phục mật khẩu đã được gửi tới email của bạn, vui lòng kiểm tra và hoàn tất yêu cầu.', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(310, 1, 'vi', 'core/acl/auth', 'reset.send.fail', 'Không thể gửi email trong lúc này. Vui lòng thực hiện lại sau.', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(311, 1, 'vi', 'core/acl/auth', 'reset.new-password', 'Mật khẩu mới', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(312, 1, 'vi', 'core/acl/auth', 'reset.email', 'Email', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(313, 1, 'vi', 'core/acl/auth', 'email.reminder.title', 'Email khôi phục mật khẩu', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(314, 1, 'vi', 'core/acl/auth', 'failed', 'Không thành công', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(315, 1, 'vi', 'core/acl/auth', 'throttle', 'Throttle', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(316, 1, 'vi', 'core/acl/auth', 'back_to_login', 'Quay lại trang đăng nhập', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(317, 1, 'vi', 'core/acl/auth', 'login_title', 'Đăng nhập vào quản trị', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(318, 1, 'vi', 'core/acl/auth', 'login_via_social', 'Đăng nhập thông qua mạng xã hội', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(319, 1, 'vi', 'core/acl/auth', 'lost_your_password', 'Quên mật khẩu?', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(320, 1, 'vi', 'core/acl/auth', 'not_member', 'Chưa là thành viên?', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(321, 1, 'vi', 'core/acl/auth', 'register_now', 'Đăng ký ngay', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(322, 1, 'vi', 'core/acl/permissions', 'notices.role_in_use', 'Không thể xóa quyền người dùng này vì nó đang được sử dụng!', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(323, 1, 'vi', 'core/acl/permissions', 'notices.role_delete_belong_user', 'Không thể xóa quyền hạn này vì nó thuộc về người khác!', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(324, 1, 'vi', 'core/acl/permissions', 'notices.role_edit_belong_user', 'Bạn không được phép sửa quyền này vì nó thuộc về người khác', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(325, 1, 'vi', 'core/acl/permissions', 'notices.delete_global_role', 'Bạn không thể xóa quyền người dùng hệ thống!', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(326, 1, 'vi', 'core/acl/permissions', 'notices.delete_success', 'Quyền người dùng đã được xóa!', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(327, 1, 'vi', 'core/acl/permissions', 'notices.modified_success', 'Quyền người dùng đã được cập nhật thành công!', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(328, 1, 'vi', 'core/acl/permissions', 'notices.create_success', 'Quyền người dùng mới đã được tạo thành công!', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(329, 1, 'vi', 'core/acl/permissions', 'notices.duplicated_success', 'Quyền người dùng đã được sao chép thành công!', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(330, 1, 'vi', 'core/acl/permissions', 'notices.no_select', 'Hãy chọn ít nhất một quyền người dùng để thực hiện hành động này!', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(331, 1, 'vi', 'core/acl/permissions', 'notices.not_found', 'Không tìm thấy quyền người dùng này', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(332, 1, 'vi', 'core/acl/permissions', 'name', 'Tên', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(333, 1, 'vi', 'core/acl/permissions', 'current_role', 'Quyền hiện tại', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(334, 1, 'vi', 'core/acl/permissions', 'no_role_assigned', 'Không có quyền hạn nào', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(335, 1, 'vi', 'core/acl/permissions', 'role_assigned', 'Quyền đã được gán', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(336, 1, 'vi', 'core/acl/permissions', 'create_role', 'Tạo quyền mới', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(337, 1, 'vi', 'core/acl/permissions', 'role_name', 'Tên', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(338, 1, 'vi', 'core/acl/permissions', 'role_description', 'Mô tả', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(339, 1, 'vi', 'core/acl/permissions', 'permission_flags', 'Cờ đánh dấu quyền hạn', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(340, 1, 'vi', 'core/acl/permissions', 'cancel', 'Hủy bỏ', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(341, 1, 'vi', 'core/acl/permissions', 'reset', 'Làm lại', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(342, 1, 'vi', 'core/acl/permissions', 'save', 'Lưu', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(343, 1, 'vi', 'core/acl/permissions', 'global_role_msg', 'Đây là một phân quyền toàn cục và không thể thay đổi.  Bạn có thể sử dụng nút \"Nhân bản\" để tạo một bản sao chép cho phân quyền này và chỉnh sửa.', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(344, 1, 'vi', 'core/acl/permissions', 'details', 'Chi tiết', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(345, 1, 'vi', 'core/acl/permissions', 'duplicate', 'Nhân bản', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(346, 1, 'vi', 'core/acl/permissions', 'all', 'Tất cả phân quyền', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(347, 1, 'vi', 'core/acl/permissions', 'list_role', 'Danh sách quyền', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(348, 1, 'vi', 'core/acl/permissions', 'created_on', 'Ngày tạo', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(349, 1, 'vi', 'core/acl/permissions', 'created_by', 'Được tạo bởi', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(350, 1, 'vi', 'core/acl/permissions', 'actions', 'Tác vụ', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(351, 1, 'vi', 'core/acl/permissions', 'create_success', 'Tạo thành công!', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(352, 1, 'vi', 'core/acl/permissions', 'delete_global_role', 'Không thể xóa quyền hệ thống', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(353, 1, 'vi', 'core/acl/permissions', 'delete_success', 'Xóa quyền thành công', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(354, 1, 'vi', 'core/acl/permissions', 'duplicated_success', 'Nhân bản thành công', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(355, 1, 'vi', 'core/acl/permissions', 'modified_success', 'Sửa thành công', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(356, 1, 'vi', 'core/acl/permissions', 'no_select', 'Hãy chọn ít nhất một quyền để thực hiện hành động này!', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(357, 1, 'vi', 'core/acl/permissions', 'not_found', 'Không tìm thấy quyền thành viên nào!', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(358, 1, 'vi', 'core/acl/permissions', 'options', 'Tùy chọn', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(359, 1, 'vi', 'core/acl/permissions', 'role_delete_belong_user', 'Không thể xóa quyền hạn này vì nó thuộc về người khác!', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(360, 1, 'vi', 'core/acl/permissions', 'role_edit_belong_user', 'Bạn không được phép sửa quyền này vì nó thuộc về người khác', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(361, 1, 'vi', 'core/acl/permissions', 'role_in_use', 'Không thể xóa quyền người dùng này vì nó đang được sử dụng!', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(362, 1, 'vi', 'core/acl/permissions', 'access_denied_message', 'Bạn không có quyền sử dụng chức năng này!', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(363, 1, 'vi', 'core/acl/permissions', 'roles', 'Quyền', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(364, 1, 'vi', 'core/acl/permissions', 'role_permission', 'Nhóm và phân quyền', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(365, 1, 'vi', 'core/acl/permissions', 'user_management', 'Quản lý người dùng hệ thống', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(366, 1, 'vi', 'core/acl/permissions', 'super_user_management', 'Quản lý người dùng cấp cao', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(367, 1, 'vi', 'core/acl/reminders', 'password', 'Mật khẩu phải ít nhất 6 kí tự và trùng khớp với mật khẩu xác nhận.', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(368, 1, 'vi', 'core/acl/reminders', 'user', 'Hệ thống không thể tìm thấy tài khoản với email này.', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(369, 1, 'vi', 'core/acl/reminders', 'token', 'Mã khôi phục mật khẩu này không hợp lệ.', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(370, 1, 'vi', 'core/acl/reminders', 'sent', 'Liên kết khôi phục mật khẩu đã được gửi!', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(371, 1, 'vi', 'core/acl/reminders', 'reset', 'Mật khẩu đã được thay đổi!', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(372, 1, 'vi', 'core/acl/users', 'delete_user_logged_in', 'Không thể xóa người dùng đang đăng nhập hệ thống!', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(373, 1, 'vi', 'core/acl/users', 'no_select', 'Hãy chọn ít nhất một trường để thực hiện hành động này!', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(374, 1, 'vi', 'core/acl/users', 'lock_user_logged_in', 'Không thể khóa người dùng đang đăng nhập hệ thống!', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(375, 1, 'vi', 'core/acl/users', 'update_success', 'Cập nhật trạng thái thành công!', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(376, 1, 'vi', 'core/acl/users', 'save_setting_failed', 'Có lỗi xảy ra trong quá trình lưu cài đặt của người dùng', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(377, 1, 'vi', 'core/acl/users', 'not_found', 'Không tìm thấy người dùng', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(378, 1, 'vi', 'core/acl/users', 'email_exist', 'Email này đã được sử dụng bởi người dùng khác trong hệ thống', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(379, 1, 'vi', 'core/acl/users', 'username_exist', 'Tên đăng nhập này đã được sử dụng bởi người dùng khác trong hệ thống', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(380, 1, 'vi', 'core/acl/users', 'update_profile_success', 'Thông tin tài khoản của bạn đã được cập nhật thành công', '2021-07-12 22:42:22', '2021-07-12 22:42:22');
INSERT INTO `translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(381, 1, 'vi', 'core/acl/users', 'password_update_success', 'Cập nhật mật khẩu thành công', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(382, 1, 'vi', 'core/acl/users', 'current_password_not_valid', 'Mật khẩu hiện tại không chính xác', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(383, 1, 'vi', 'core/acl/users', 'user_exist_in', 'Người dùng đã là thành viên', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(384, 1, 'vi', 'core/acl/users', 'email', 'Email', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(385, 1, 'vi', 'core/acl/users', 'username', 'Tên đăng nhập', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(386, 1, 'vi', 'core/acl/users', 'role', 'Phân quyền', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(387, 1, 'vi', 'core/acl/users', 'first_name', 'Họ', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(388, 1, 'vi', 'core/acl/users', 'last_name', 'Tên', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(389, 1, 'vi', 'core/acl/users', 'message', 'Thông điệp', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(390, 1, 'vi', 'core/acl/users', 'cancel_btn', 'Hủy bỏ', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(391, 1, 'vi', 'core/acl/users', 'password', 'Mật khẩu', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(392, 1, 'vi', 'core/acl/users', 'new_password', 'Mật khẩu mới', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(393, 1, 'vi', 'core/acl/users', 'save', 'Lưu', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(394, 1, 'vi', 'core/acl/users', 'confirm_new_password', 'Xác nhận mật khẩu mới', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(395, 1, 'vi', 'core/acl/users', 'deleted', 'Xóa thành viên thành công', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(396, 1, 'vi', 'core/acl/users', 'cannot_delete', 'Không thể xóa thành viên', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(397, 1, 'vi', 'core/acl/users', 'last_login', 'Lần cuối đăng nhập', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(398, 1, 'vi', 'core/acl/users', 'error_update_profile_image', 'Có lỗi trong quá trình đổi ảnh đại diện', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(399, 1, 'vi', 'core/acl/users', 'email_reminder_template', '<h3>Xin chào :name</h3><p>Hệ thống vừa nhận được yêu cầu khôi phục mật khẩu cho tài khoản của bạn, để hoàn tất tác vụ này vui lòng click vào đường link bên dưới.</p><p><a href=\":link\">Khôi phục mật khẩu</a></p><p>Nếu không phải bạn yêu cầu khôi phục mật khẩu, vui lòng bỏ qua email này.</p><p>Email này có giá trị trong vòng 60 phút kể từ lúc nhận được email.</p>', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(400, 1, 'vi', 'core/acl/users', 'change_profile_image', 'Thay đổi ảnh đại diện', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(401, 1, 'vi', 'core/acl/users', 'new_image', 'Ảnh mới', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(402, 1, 'vi', 'core/acl/users', 'loading', 'Đang tải', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(403, 1, 'vi', 'core/acl/users', 'close', 'Đóng', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(404, 1, 'vi', 'core/acl/users', 'update', 'Cập nhật', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(405, 1, 'vi', 'core/acl/users', 'read_image_failed', 'Không đọc được nội dung của hình ảnh', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(406, 1, 'vi', 'core/acl/users', 'update_avatar_success', 'Cập nhật ảnh đại diện thành công!', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(407, 1, 'vi', 'core/acl/users', 'users', 'Quản trị viên', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(408, 1, 'vi', 'core/acl/users', 'info.title', 'Thông tin người dùng', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(409, 1, 'vi', 'core/acl/users', 'info.first_name', 'Họ', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(410, 1, 'vi', 'core/acl/users', 'info.last_name', 'Tên', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(411, 1, 'vi', 'core/acl/users', 'info.email', 'Email', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(412, 1, 'vi', 'core/acl/users', 'info.second_email', 'Email dự phòng', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(413, 1, 'vi', 'core/acl/users', 'info.address', 'Địa chỉ', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(414, 1, 'vi', 'core/acl/users', 'info.second_address', 'Địa chỉ dự phòng', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(415, 1, 'vi', 'core/acl/users', 'info.birth_day', 'Ngày sinh', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(416, 1, 'vi', 'core/acl/users', 'info.job', 'Nghề nghiệp', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(417, 1, 'vi', 'core/acl/users', 'info.mobile_number', 'Số điện thoại di động', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(418, 1, 'vi', 'core/acl/users', 'info.second_mobile_number', 'Số điện thoại dự phòng', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(419, 1, 'vi', 'core/acl/users', 'info.interes', 'Sở thích', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(420, 1, 'vi', 'core/acl/users', 'info.about', 'Giới thiệu', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(421, 1, 'vi', 'core/acl/users', 'gender.title', 'Giới tính', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(422, 1, 'vi', 'core/acl/users', 'gender.male', 'nam', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(423, 1, 'vi', 'core/acl/users', 'gender.female', 'nữ', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(424, 1, 'vi', 'core/acl/users', 'change_password', 'Thay đổi mật khẩu', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(425, 1, 'vi', 'core/acl/users', 'current_password', 'Mật khẩu hiện tại', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(426, 1, 'en', 'core/base/base', 'yes', 'Yes', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(427, 1, 'en', 'core/base/base', 'no', 'No', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(428, 1, 'en', 'core/base/base', 'is_default', 'Is default?', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(429, 1, 'en', 'core/base/base', 'proc_close_disabled_error', 'Function proc_close() is disabled. Please contact your hosting provider to enable\n    it. Or you can add to .env: CAN_EXECUTE_COMMAND=false to disable this feature.', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(430, 1, 'en', 'core/base/base', 'email_template.header', 'Email template header', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(431, 1, 'en', 'core/base/base', 'email_template.footer', 'Email template footer', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(432, 1, 'en', 'core/base/base', 'email_template.site_title', 'Site title', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(433, 1, 'en', 'core/base/base', 'email_template.site_url', 'Site URL', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(434, 1, 'en', 'core/base/base', 'email_template.site_logo', 'Site Logo', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(435, 1, 'en', 'core/base/base', 'email_template.date_time', 'Current date time', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(436, 1, 'en', 'core/base/base', 'email_template.date_year', 'Current year', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(437, 1, 'en', 'core/base/base', 'email_template.site_admin_email', 'Site admin email', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(438, 1, 'en', 'core/base/base', 'change_image', 'Change image', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(439, 1, 'en', 'core/base/base', 'delete_image', 'Delete image', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(440, 1, 'en', 'core/base/base', 'preview_image', 'Preview image', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(441, 1, 'en', 'core/base/base', 'image', 'Image', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(442, 1, 'en', 'core/base/base', 'using_button', 'Using button', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(443, 1, 'en', 'core/base/base', 'select_image', 'Select image', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(444, 1, 'en', 'core/base/base', 'to_add_more_image', 'to add more images', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(445, 1, 'en', 'core/base/base', 'add_image', 'Add image', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(446, 1, 'en', 'core/base/cache', 'cache_management', 'Cache management', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(447, 1, 'en', 'core/base/cache', 'cache_commands', 'Clear cache commands', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(448, 1, 'en', 'core/base/cache', 'commands.clear_cms_cache.title', 'Clear all CMS cache', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(449, 1, 'en', 'core/base/cache', 'commands.clear_cms_cache.description', 'Clear CMS caching: database caching, static blocks... Run this command when you don\'t see the changes after updating data.', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(450, 1, 'en', 'core/base/cache', 'commands.clear_cms_cache.success_msg', 'Cache cleaned', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(451, 1, 'en', 'core/base/cache', 'commands.refresh_compiled_views.title', 'Refresh compiled views', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(452, 1, 'en', 'core/base/cache', 'commands.refresh_compiled_views.description', 'Clear compiled views to make views up to date.', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(453, 1, 'en', 'core/base/cache', 'commands.refresh_compiled_views.success_msg', 'Cache view refreshed', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(454, 1, 'en', 'core/base/cache', 'commands.clear_config_cache.title', 'Clear config cache', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(455, 1, 'en', 'core/base/cache', 'commands.clear_config_cache.description', 'You might need to refresh the config caching when you change something on production environment.', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(456, 1, 'en', 'core/base/cache', 'commands.clear_config_cache.success_msg', 'Config cache cleaned', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(457, 1, 'en', 'core/base/cache', 'commands.clear_route_cache.title', 'Clear route cache', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(458, 1, 'en', 'core/base/cache', 'commands.clear_route_cache.description', 'Clear cache routing.', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(459, 1, 'en', 'core/base/cache', 'commands.clear_route_cache.success_msg', 'The route cache has been cleaned', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(460, 1, 'en', 'core/base/cache', 'commands.clear_log.title', 'Clear log', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(461, 1, 'en', 'core/base/cache', 'commands.clear_log.description', 'Clear system log files', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(462, 1, 'en', 'core/base/cache', 'commands.clear_log.success_msg', 'The system log has been cleaned', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(463, 1, 'en', 'core/base/enums', 'statuses.draft', 'Draft', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(464, 1, 'en', 'core/base/enums', 'statuses.pending', 'Pending', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(465, 1, 'en', 'core/base/enums', 'statuses.published', 'Published', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(466, 1, 'en', 'core/base/errors', '401_title', 'Permission Denied', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(467, 1, 'en', 'core/base/errors', '401_msg', '<li>You have not been granted access to the section by the administrator.</li>\n	                <li>You may have the wrong account type.</li>\n	                <li>You are not authorized to view the requested resource.</li>\n	                <li>Your subscription may have expired.</li>', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(468, 1, 'en', 'core/base/errors', '404_title', 'Page could not be found', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(469, 1, 'en', 'core/base/errors', '404_msg', '<li>The page you requested does not exist.</li>\n	                <li>The link you clicked is no longer.</li>\n	                <li>The page may have moved to a new location.</li>\n	                <li>An error may have occurred.</li>\n	                <li>You are not authorized to view the requested resource.</li>', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(470, 1, 'en', 'core/base/errors', '500_title', 'Page could not be loaded', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(471, 1, 'en', 'core/base/errors', '500_msg', '<li>The page you requested does not exist.</li>\n	                <li>The link you clicked is no longer.</li>\n	                <li>The page may have moved to a new location.</li>\n	                <li>An error may have occurred.</li>\n	                <li>You are not authorized to view the requested resource.</li>', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(472, 1, 'en', 'core/base/errors', 'reasons', 'This may have occurred because of several reasons', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(473, 1, 'en', 'core/base/errors', 'try_again', 'Please try again in a few minutes, or alternatively return to the homepage by <a href=\"http://martfury.local/admin\">clicking here</a>.', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(474, 1, 'en', 'core/base/errors', 'not_found', 'Not Found', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(475, 1, 'en', 'core/base/forms', 'choose_image', 'Choose image', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(476, 1, 'en', 'core/base/forms', 'actions', 'Actions', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(477, 1, 'en', 'core/base/forms', 'save', 'Save', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(478, 1, 'en', 'core/base/forms', 'save_and_continue', 'Save & Edit', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(479, 1, 'en', 'core/base/forms', 'image', 'Image', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(480, 1, 'en', 'core/base/forms', 'image_placeholder', 'Insert path of image or click upload button', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(481, 1, 'en', 'core/base/forms', 'create', 'Create', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(482, 1, 'en', 'core/base/forms', 'edit', 'Edit', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(483, 1, 'en', 'core/base/forms', 'permalink', 'Permalink', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(484, 1, 'en', 'core/base/forms', 'ok', 'OK', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(485, 1, 'en', 'core/base/forms', 'cancel', 'Cancel', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(486, 1, 'en', 'core/base/forms', 'character_remain', 'character(s) remain', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(487, 1, 'en', 'core/base/forms', 'template', 'Template', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(488, 1, 'en', 'core/base/forms', 'choose_file', 'Choose file', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(489, 1, 'en', 'core/base/forms', 'file', 'File', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(490, 1, 'en', 'core/base/forms', 'content', 'Content', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(491, 1, 'en', 'core/base/forms', 'description', 'Description', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(492, 1, 'en', 'core/base/forms', 'name', 'Name', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(493, 1, 'en', 'core/base/forms', 'slug', 'Slug', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(494, 1, 'en', 'core/base/forms', 'title', 'Title', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(495, 1, 'en', 'core/base/forms', 'value', 'Value', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(496, 1, 'en', 'core/base/forms', 'name_placeholder', 'Name', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(497, 1, 'en', 'core/base/forms', 'alias_placeholder', 'Alias', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(498, 1, 'en', 'core/base/forms', 'description_placeholder', 'Short description', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(499, 1, 'en', 'core/base/forms', 'parent', 'Parent', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(500, 1, 'en', 'core/base/forms', 'icon', 'Icon', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(501, 1, 'en', 'core/base/forms', 'icon_placeholder', 'Ex: fa fa-home', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(502, 1, 'en', 'core/base/forms', 'order_by', 'Order by', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(503, 1, 'en', 'core/base/forms', 'order_by_placeholder', 'Order by', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(504, 1, 'en', 'core/base/forms', 'is_featured', 'Is featured?', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(505, 1, 'en', 'core/base/forms', 'is_default', 'Is default?', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(506, 1, 'en', 'core/base/forms', 'update', 'Update', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(507, 1, 'en', 'core/base/forms', 'publish', 'Publish', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(508, 1, 'en', 'core/base/forms', 'remove_image', 'Remove image', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(509, 1, 'en', 'core/base/forms', 'remove_file', 'Remove file', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(510, 1, 'en', 'core/base/forms', 'order', 'Order', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(511, 1, 'en', 'core/base/forms', 'alias', 'Alias', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(512, 1, 'en', 'core/base/forms', 'basic_information', 'Basic information', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(513, 1, 'en', 'core/base/forms', 'short_code', 'Shortcode', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(514, 1, 'en', 'core/base/forms', 'add_short_code', 'Add a shortcode', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(515, 1, 'en', 'core/base/forms', 'add', 'Add', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(516, 1, 'en', 'core/base/forms', 'link', 'Link', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(517, 1, 'en', 'core/base/forms', 'show_hide_editor', 'Show/Hide Editor', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(518, 1, 'en', 'core/base/forms', 'basic_info_title', 'Basic information', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(519, 1, 'en', 'core/base/layouts', 'platform_admin', 'Platform Administration', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(520, 1, 'en', 'core/base/layouts', 'dashboard', 'Dashboard', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(521, 1, 'en', 'core/base/layouts', 'widgets', 'Widgets', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(522, 1, 'en', 'core/base/layouts', 'plugins', 'Plugins', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(523, 1, 'en', 'core/base/layouts', 'settings', 'Settings', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(524, 1, 'en', 'core/base/layouts', 'setting_general', 'General', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(525, 1, 'en', 'core/base/layouts', 'setting_email', 'Email', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(526, 1, 'en', 'core/base/layouts', 'system_information', 'System information', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(527, 1, 'en', 'core/base/layouts', 'theme', 'Theme', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(528, 1, 'en', 'core/base/layouts', 'copyright', 'Copyright :year &copy; :company. Version: <span>:version</span>', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(529, 1, 'en', 'core/base/layouts', 'profile', 'Profile', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(530, 1, 'en', 'core/base/layouts', 'logout', 'Logout', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(531, 1, 'en', 'core/base/layouts', 'no_search_result', 'No results found, please try with different keywords.', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(532, 1, 'en', 'core/base/layouts', 'home', 'Home', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(533, 1, 'en', 'core/base/layouts', 'search', 'Search', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(534, 1, 'en', 'core/base/layouts', 'add_new', 'Add new', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(535, 1, 'en', 'core/base/layouts', 'n_a', 'N/A', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(536, 1, 'en', 'core/base/layouts', 'page_loaded_time', 'Page loaded in', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(537, 1, 'en', 'core/base/layouts', 'view_website', 'View website', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(538, 1, 'en', 'core/base/mail', 'send-fail', 'Send email failed', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(539, 1, 'en', 'core/base/notices', 'create_success_message', 'Created successfully', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(540, 1, 'en', 'core/base/notices', 'update_success_message', 'Updated successfully', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(541, 1, 'en', 'core/base/notices', 'delete_success_message', 'Deleted successfully', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(542, 1, 'en', 'core/base/notices', 'success_header', 'Success!', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(543, 1, 'en', 'core/base/notices', 'error_header', 'Error!', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(544, 1, 'en', 'core/base/notices', 'no_select', 'Please select at least one record to perform this action!', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(545, 1, 'en', 'core/base/notices', 'processing_request', 'We are processing your request.', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(546, 1, 'en', 'core/base/notices', 'error', 'Error!', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(547, 1, 'en', 'core/base/notices', 'success', 'Success!', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(548, 1, 'en', 'core/base/notices', 'info', 'Info!', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(549, 1, 'en', 'core/base/notices', 'enum.validate_message', 'The :attribute value you have entered is invalid.', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(550, 1, 'en', 'core/base/system', 'no_select', 'Please select at least one record to take this action!', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(551, 1, 'en', 'core/base/system', 'cannot_find_user', 'Unable to find specified user', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(552, 1, 'en', 'core/base/system', 'supper_revoked', 'Super user access revoked', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(553, 1, 'en', 'core/base/system', 'cannot_revoke_yourself', 'Can not revoke supper user access permission yourself!', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(554, 1, 'en', 'core/base/system', 'cant_remove_supper', 'You don\'t has permission to remove this super user', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(555, 1, 'en', 'core/base/system', 'cant_find_user_with_email', 'Unable to find user with specified email address', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(556, 1, 'en', 'core/base/system', 'supper_granted', 'Super user access granted', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(557, 1, 'en', 'core/base/system', 'delete_log_success', 'Delete log file successfully!', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(558, 1, 'en', 'core/base/system', 'get_member_success', 'Member list retrieved successfully', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(559, 1, 'en', 'core/base/system', 'error_occur', 'The following errors occurred', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(560, 1, 'en', 'core/base/system', 'user_management', 'User Management', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(561, 1, 'en', 'core/base/system', 'user_management_description', 'Manage users.', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(562, 1, 'en', 'core/base/system', 'role_and_permission', 'Roles and Permissions', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(563, 1, 'en', 'core/base/system', 'role_and_permission_description', 'Manage the available roles.', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(564, 1, 'en', 'core/base/system', 'user.list_super', 'List Super Users', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(565, 1, 'en', 'core/base/system', 'user.email', 'Email', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(566, 1, 'en', 'core/base/system', 'user.last_login', 'Last Login', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(567, 1, 'en', 'core/base/system', 'user.username', 'Username', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(568, 1, 'en', 'core/base/system', 'user.add_user', 'Add Super User', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(569, 1, 'en', 'core/base/system', 'user.cancel', 'Cancel', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(570, 1, 'en', 'core/base/system', 'user.create', 'Create', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(571, 1, 'en', 'core/base/system', 'options.features', 'Feature Access Control', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(572, 1, 'en', 'core/base/system', 'options.feature_description', 'Manage the available.', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(573, 1, 'en', 'core/base/system', 'options.manage_super', 'Super User Management', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(574, 1, 'en', 'core/base/system', 'options.manage_super_description', 'Add/remove super users.', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(575, 1, 'en', 'core/base/system', 'options.info', 'System information', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(576, 1, 'en', 'core/base/system', 'options.info_description', 'All information about current system configuration.', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(577, 1, 'en', 'core/base/system', 'info.title', 'System information', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(578, 1, 'en', 'core/base/system', 'info.cache', 'Cache', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(579, 1, 'en', 'core/base/system', 'info.locale', 'Active locale', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(580, 1, 'en', 'core/base/system', 'info.environment', 'Environment', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(581, 1, 'en', 'core/base/system', 'disabled_in_demo_mode', 'You cannot do it in demo mode!', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(582, 1, 'en', 'core/base/system', 'report_description', 'Please share this information for troubleshooting', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(583, 1, 'en', 'core/base/system', 'get_system_report', 'Get System Report', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(584, 1, 'en', 'core/base/system', 'system_environment', 'System Environment', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(585, 1, 'en', 'core/base/system', 'framework_version', 'Framework Version', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(586, 1, 'en', 'core/base/system', 'timezone', 'Timezone', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(587, 1, 'en', 'core/base/system', 'debug_mode', 'Debug Mode', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(588, 1, 'en', 'core/base/system', 'storage_dir_writable', 'Storage Dir Writable', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(589, 1, 'en', 'core/base/system', 'cache_dir_writable', 'Cache Dir Writable', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(590, 1, 'en', 'core/base/system', 'app_size', 'App Size', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(591, 1, 'en', 'core/base/system', 'server_environment', 'Server Environment', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(592, 1, 'en', 'core/base/system', 'php_version', 'PHP Version', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(593, 1, 'en', 'core/base/system', 'php_version_error', 'PHP must be >= :version', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(594, 1, 'en', 'core/base/system', 'server_software', 'Server Software', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(595, 1, 'en', 'core/base/system', 'server_os', 'Server OS', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(596, 1, 'en', 'core/base/system', 'database', 'Database', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(597, 1, 'en', 'core/base/system', 'ssl_installed', 'SSL Installed', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(598, 1, 'en', 'core/base/system', 'cache_driver', 'Cache Driver', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(599, 1, 'en', 'core/base/system', 'session_driver', 'Session Driver', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(600, 1, 'en', 'core/base/system', 'queue_connection', 'Queue Connection', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(601, 1, 'en', 'core/base/system', 'mbstring_ext', 'Mbstring Ext', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(602, 1, 'en', 'core/base/system', 'openssl_ext', 'OpenSSL Ext', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(603, 1, 'en', 'core/base/system', 'pdo_ext', 'PDO Ext', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(604, 1, 'en', 'core/base/system', 'curl_ext', 'CURL Ext', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(605, 1, 'en', 'core/base/system', 'exif_ext', 'Exif Ext', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(606, 1, 'en', 'core/base/system', 'file_info_ext', 'File info Ext', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(607, 1, 'en', 'core/base/system', 'tokenizer_ext', 'Tokenizer Ext', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(608, 1, 'en', 'core/base/system', 'extra_stats', 'Extra Stats', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(609, 1, 'en', 'core/base/system', 'installed_packages', 'Installed packages and their version numbers', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(610, 1, 'en', 'core/base/system', 'extra_information', 'Extra Information', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(611, 1, 'en', 'core/base/system', 'copy_report', 'Copy Report', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(612, 1, 'en', 'core/base/system', 'package_name', 'Package Name', '2021-07-12 22:42:22', '2021-07-12 22:42:22'),
(613, 1, 'en', 'core/base/system', 'dependency_name', 'Dependency Name', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(614, 1, 'en', 'core/base/system', 'version', 'Version', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(615, 1, 'en', 'core/base/system', 'cms_version', 'CMS Version', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(616, 1, 'en', 'core/base/system', 'imagick_or_gd_ext', 'Imagick/GD Ext', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(617, 1, 'en', 'core/base/tables', 'id', 'ID', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(618, 1, 'en', 'core/base/tables', 'name', 'Name', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(619, 1, 'en', 'core/base/tables', 'slug', 'Slug', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(620, 1, 'en', 'core/base/tables', 'title', 'Title', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(621, 1, 'en', 'core/base/tables', 'order_by', 'Order By', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(622, 1, 'en', 'core/base/tables', 'order', 'Order', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(623, 1, 'en', 'core/base/tables', 'status', 'Status', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(624, 1, 'en', 'core/base/tables', 'created_at', 'Created At', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(625, 1, 'en', 'core/base/tables', 'updated_at', 'Updated At', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(626, 1, 'en', 'core/base/tables', 'description', 'Description', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(627, 1, 'en', 'core/base/tables', 'operations', 'Operations', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(628, 1, 'en', 'core/base/tables', 'url', 'URL', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(629, 1, 'en', 'core/base/tables', 'author', 'Author', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(630, 1, 'en', 'core/base/tables', 'notes', 'Notes', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(631, 1, 'en', 'core/base/tables', 'column', 'Column', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(632, 1, 'en', 'core/base/tables', 'origin', 'Origin', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(633, 1, 'en', 'core/base/tables', 'after_change', 'After changes', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(634, 1, 'en', 'core/base/tables', 'views', 'Views', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(635, 1, 'en', 'core/base/tables', 'browser', 'Browser', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(636, 1, 'en', 'core/base/tables', 'session', 'Session', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(637, 1, 'en', 'core/base/tables', 'activated', 'activated', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(638, 1, 'en', 'core/base/tables', 'deactivated', 'deactivated', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(639, 1, 'en', 'core/base/tables', 'is_featured', 'Is featured', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(640, 1, 'en', 'core/base/tables', 'edit', 'Edit', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(641, 1, 'en', 'core/base/tables', 'delete', 'Delete', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(642, 1, 'en', 'core/base/tables', 'restore', 'Restore', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(643, 1, 'en', 'core/base/tables', 'activate', 'Activate', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(644, 1, 'en', 'core/base/tables', 'deactivate', 'Deactivate', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(645, 1, 'en', 'core/base/tables', 'excel', 'Excel', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(646, 1, 'en', 'core/base/tables', 'export', 'Export', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(647, 1, 'en', 'core/base/tables', 'csv', 'CSV', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(648, 1, 'en', 'core/base/tables', 'pdf', 'PDF', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(649, 1, 'en', 'core/base/tables', 'print', 'Print', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(650, 1, 'en', 'core/base/tables', 'reset', 'Reset', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(651, 1, 'en', 'core/base/tables', 'reload', 'Reload', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(652, 1, 'en', 'core/base/tables', 'display', 'Display', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(653, 1, 'en', 'core/base/tables', 'all', 'All', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(654, 1, 'en', 'core/base/tables', 'add_new', 'Add New', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(655, 1, 'en', 'core/base/tables', 'action', 'Actions', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(656, 1, 'en', 'core/base/tables', 'delete_entry', 'Delete', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(657, 1, 'en', 'core/base/tables', 'view', 'View Detail', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(658, 1, 'en', 'core/base/tables', 'save', 'Save', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(659, 1, 'en', 'core/base/tables', 'show_from', 'Show from', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(660, 1, 'en', 'core/base/tables', 'to', 'to', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(661, 1, 'en', 'core/base/tables', 'in', 'in', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(662, 1, 'en', 'core/base/tables', 'records', 'records', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(663, 1, 'en', 'core/base/tables', 'no_data', 'No data to display', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(664, 1, 'en', 'core/base/tables', 'no_record', 'No record', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(665, 1, 'en', 'core/base/tables', 'confirm_delete', 'Confirm delete', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(666, 1, 'en', 'core/base/tables', 'confirm_delete_msg', 'Do you really want to delete this record?', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(667, 1, 'en', 'core/base/tables', 'confirm_delete_many_msg', 'Do you really want to delete selected record(s)?', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(668, 1, 'en', 'core/base/tables', 'cancel', 'Cancel', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(669, 1, 'en', 'core/base/tables', 'template', 'Template', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(670, 1, 'en', 'core/base/tables', 'email', 'Email', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(671, 1, 'en', 'core/base/tables', 'last_login', 'Last login', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(672, 1, 'en', 'core/base/tables', 'shortcode', 'Shortcode', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(673, 1, 'en', 'core/base/tables', 'image', 'Image', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(674, 1, 'en', 'core/base/tables', 'bulk_changes', 'Bulk changes', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(675, 1, 'en', 'core/base/tables', 'submit', 'Submit', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(676, 1, 'en', 'core/base/tables', 'please_select_record', 'Please select at least one record to perform this action!', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(677, 1, 'en', 'core/base/tabs', 'detail', 'Detail', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(678, 1, 'en', 'core/base/tabs', 'file', 'Files', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(679, 1, 'en', 'core/base/tabs', 'record_note', 'Record Note', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(680, 1, 'en', 'core/base/tabs', 'revision', 'Revision History', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(681, 1, 'vi', 'core/base/cache', 'cache_management', 'Quản lý bộ nhớ đệm', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(682, 1, 'vi', 'core/base/cache', 'cache_commands', 'Các lệnh xoá bộ nhớ đệm cơ bản', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(683, 1, 'vi', 'core/base/cache', 'commands.clear_cms_cache.title', 'Xóa tất cả bộ đệm hiện có của ứng dụng', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(684, 1, 'vi', 'core/base/cache', 'commands.clear_cms_cache.description', 'Xóa các bộ nhớ đệm của ứng dụng: cơ sở dữ liệu, nội dung tĩnh... Chạy lệnh này khi bạn thử cập nhật dữ liệu nhưng giao diện không thay đổi', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(685, 1, 'vi', 'core/base/cache', 'commands.clear_cms_cache.success_msg', 'Bộ đệm đã được xóa', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(686, 1, 'vi', 'core/base/cache', 'commands.refresh_compiled_views.title', 'Làm mới bộ đệm giao diện', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(687, 1, 'vi', 'core/base/cache', 'commands.refresh_compiled_views.description', 'Làm mới bộ đệm giao diện giúp phần giao diện luôn mới nhất', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(688, 1, 'vi', 'core/base/cache', 'commands.refresh_compiled_views.success_msg', 'Bộ đệm giao diện đã được làm mới', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(689, 1, 'vi', 'core/base/cache', 'commands.clear_config_cache.title', 'Xóa bộ nhớ đệm của phần cấu hình', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(690, 1, 'vi', 'core/base/cache', 'commands.clear_config_cache.description', 'Bạn cần làm mới bộ đệm cấu hình khi bạn tạo ra sự thay đổi nào đó ở môi trường thành phẩm.', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(691, 1, 'vi', 'core/base/cache', 'commands.clear_config_cache.success_msg', 'Bộ đệm cấu hình đã được xóa', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(692, 1, 'vi', 'core/base/cache', 'commands.clear_route_cache.title', 'Xoá cache đường dẫn', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(693, 1, 'vi', 'core/base/cache', 'commands.clear_route_cache.description', 'Cần thực hiện thao tác này khi thấy không xuất hiện đường dẫn mới.', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(694, 1, 'vi', 'core/base/cache', 'commands.clear_route_cache.success_msg', 'Bộ đệm điều hướng đã bị xóa', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(695, 1, 'vi', 'core/base/cache', 'commands.clear_log.description', 'Xoá lịch sử lỗi', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(696, 1, 'vi', 'core/base/cache', 'commands.clear_log.success_msg', 'Lịch sử lỗi đã được làm sạch', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(697, 1, 'vi', 'core/base/cache', 'commands.clear_log.title', 'Xoá lịch sử lỗi', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(698, 1, 'vi', 'core/base/enums', 'statuses.draft', 'Bản nháp', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(699, 1, 'vi', 'core/base/enums', 'statuses.pending', 'Đang chờ xử lý', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(700, 1, 'vi', 'core/base/errors', '401_title', 'Bạn không có quyền truy cập trang này', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(701, 1, 'vi', 'core/base/errors', '401_msg', '<li>Bạn không được cấp quyền truy cập bởi quản trị viên.</li>\n	                <li>Bạn sử dụng sai loại tài khoản.</li>\n	                <li>Bạn không được cấp quyền để có thể truy cập trang này</li>', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(702, 1, 'vi', 'core/base/errors', '404_title', 'Không tìm thấy trang yêu cầu', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(703, 1, 'vi', 'core/base/errors', '404_msg', '<li>Trang bạn yêu cầu không tồn tại.</li>\n	                <li>Liên kết bạn vừa nhấn không còn được sử dụng.</li>\n	                <li>Trang này có thể đã được chuyển sang vị trí khác.</li>\n	                <li>Có thể có lỗi xảy ra.</li>\n	                <li>Bạn không được cấp quyền để có thể truy cập trang này</li>', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(704, 1, 'vi', 'core/base/errors', '500_title', 'Không thể tải trang', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(705, 1, 'vi', 'core/base/errors', '500_msg', '<li>Trang bạn yêu cầu không tồn tại.</li>\n	                <li>Liên kết bạn vừa nhấn không còn được sử dụng.</li>\n	                <li>Trang này có thể đã được chuyển sang vị trí khác.</li>\n	                <li>Có thể có lỗi xảy ra.</li>\n	                <li>Bạn không được cấp quyền để có thể truy cập trang này</li>', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(706, 1, 'vi', 'core/base/errors', 'reasons', 'Điều này có thể xảy ra vì nhiều lý do.', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(707, 1, 'vi', 'core/base/errors', 'try_again', 'Vui lòng thử lại trong vài phút, hoặc quay trở lại trang chủ bằng cách <a href=\"http://cms.local/admin\"> nhấn vào đây </a>.', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(708, 1, 'vi', 'core/base/forms', 'choose_image', 'Chọn ảnh', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(709, 1, 'vi', 'core/base/forms', 'actions', 'Tác vụ', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(710, 1, 'vi', 'core/base/forms', 'save', 'Lưu', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(711, 1, 'vi', 'core/base/forms', 'save_and_continue', 'Lưu & chỉnh sửa', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(712, 1, 'vi', 'core/base/forms', 'image', 'Hình ảnh', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(713, 1, 'vi', 'core/base/forms', 'image_placeholder', 'Chèn đường dẫn hình ảnh hoặc nhấn nút để chọn hình', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(714, 1, 'vi', 'core/base/forms', 'create', 'Tạo mới', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(715, 1, 'vi', 'core/base/forms', 'edit', 'Sửa', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(716, 1, 'vi', 'core/base/forms', 'permalink', 'Đường dẫn', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(717, 1, 'vi', 'core/base/forms', 'ok', 'OK', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(718, 1, 'vi', 'core/base/forms', 'cancel', 'Hủy bỏ', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(719, 1, 'vi', 'core/base/forms', 'character_remain', 'kí tự còn lại', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(720, 1, 'vi', 'core/base/forms', 'template', 'Template', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(721, 1, 'vi', 'core/base/forms', 'choose_file', 'Chọn tập tin', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(722, 1, 'vi', 'core/base/forms', 'file', 'Tập tin', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(723, 1, 'vi', 'core/base/forms', 'content', 'Nội dung', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(724, 1, 'vi', 'core/base/forms', 'description', 'Mô tả', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(725, 1, 'vi', 'core/base/forms', 'name', 'Tên', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(726, 1, 'vi', 'core/base/forms', 'name_placeholder', 'Nhập tên', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(727, 1, 'vi', 'core/base/forms', 'description_placeholder', 'Mô tả ngắn', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(728, 1, 'vi', 'core/base/forms', 'parent', 'Cha', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(729, 1, 'vi', 'core/base/forms', 'icon', 'Biểu tượng', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(730, 1, 'vi', 'core/base/forms', 'order_by', 'Sắp xếp', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(731, 1, 'vi', 'core/base/forms', 'order_by_placeholder', 'Sắp xếp', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(732, 1, 'vi', 'core/base/forms', 'slug', 'Slug', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(733, 1, 'vi', 'core/base/forms', 'is_featured', 'Nổi bật?', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(734, 1, 'vi', 'core/base/forms', 'is_default', 'Mặc định?', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(735, 1, 'vi', 'core/base/forms', 'icon_placeholder', 'Ví dụ: fa fa-home', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(736, 1, 'vi', 'core/base/forms', 'update', 'Cập nhật', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(737, 1, 'vi', 'core/base/forms', 'publish', 'Xuất bản', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(738, 1, 'vi', 'core/base/forms', 'remove_image', 'Xoá ảnh', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(739, 1, 'vi', 'core/base/forms', 'add', 'Thêm', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(740, 1, 'vi', 'core/base/forms', 'add_short_code', 'Thêm shortcode', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(741, 1, 'vi', 'core/base/forms', 'alias', 'Mã thay thế', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(742, 1, 'vi', 'core/base/forms', 'alias_placeholder', 'Mã thay thế', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(743, 1, 'vi', 'core/base/forms', 'basic_information', 'Thông tin cơ bản', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(744, 1, 'vi', 'core/base/forms', 'link', 'Liên kết', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(745, 1, 'vi', 'core/base/forms', 'order', 'Thứ tự', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(746, 1, 'vi', 'core/base/forms', 'short_code', 'Shortcode', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(747, 1, 'vi', 'core/base/forms', 'title', 'Tiêu đề', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(748, 1, 'vi', 'core/base/forms', 'value', 'Giá trị', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(749, 1, 'vi', 'core/base/forms', 'show_hide_editor', 'Ẩn/Hiện trình soạn thảo', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(750, 1, 'vi', 'core/base/forms', 'basic_info_title', 'Thông tin cơ bản', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(751, 1, 'vi', 'core/base/layouts', 'platform_admin', 'Quản trị hệ thống', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(752, 1, 'vi', 'core/base/layouts', 'dashboard', 'Bảng điều khiển', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(753, 1, 'vi', 'core/base/layouts', 'widgets', 'Tiện ích', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(754, 1, 'vi', 'core/base/layouts', 'plugins', 'Tiện ích mở rộng', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(755, 1, 'vi', 'core/base/layouts', 'settings', 'Cài đặt', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(756, 1, 'vi', 'core/base/layouts', 'setting_general', 'Cơ bản', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(757, 1, 'vi', 'core/base/layouts', 'system_information', 'Thông tin hệ thống', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(758, 1, 'vi', 'core/base/layouts', 'theme', 'Giao diện', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(759, 1, 'vi', 'core/base/layouts', 'copyright', 'Bản quyền :year &copy; :company. Phiên bản: <span>:version</span>', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(760, 1, 'vi', 'core/base/layouts', 'profile', 'Thông tin cá nhân', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(761, 1, 'vi', 'core/base/layouts', 'logout', 'Đăng xuất', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(762, 1, 'vi', 'core/base/layouts', 'no_search_result', 'Không có kết quả tìm kiếm, hãy thử lại với từ khóa khác.', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(763, 1, 'vi', 'core/base/layouts', 'home', 'Trang chủ', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(764, 1, 'vi', 'core/base/layouts', 'search', 'Tìm kiếm', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(765, 1, 'vi', 'core/base/layouts', 'add_new', 'Thêm mới', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(766, 1, 'vi', 'core/base/layouts', 'n_a', 'N/A', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(767, 1, 'vi', 'core/base/layouts', 'page_loaded_time', 'Trang tải xong trong', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(768, 1, 'vi', 'core/base/layouts', 'view_website', 'Xem trang ngoài', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(769, 1, 'vi', 'core/base/layouts', 'setting_email', 'Email', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(770, 1, 'vi', 'core/base/mail', 'send-fail', 'Gửi email không thành công', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(771, 1, 'vi', 'core/base/notices', 'create_success_message', 'Tạo thành công', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(772, 1, 'vi', 'core/base/notices', 'update_success_message', 'Cập nhật thành công', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(773, 1, 'vi', 'core/base/notices', 'delete_success_message', 'Xóa thành công', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(774, 1, 'vi', 'core/base/notices', 'success_header', 'Thành công!', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(775, 1, 'vi', 'core/base/notices', 'error_header', 'Lỗi!', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(776, 1, 'vi', 'core/base/notices', 'no_select', 'Chọn ít nhất 1 trường để thực hiện hành động này!', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(777, 1, 'vi', 'core/base/notices', 'processing_request', 'Hệ thống đang xử lý yêu cầu.', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(778, 1, 'vi', 'core/base/notices', 'error', 'Lỗi!', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(779, 1, 'vi', 'core/base/notices', 'success', 'Thành công!', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(780, 1, 'vi', 'core/base/notices', 'info', 'Thông tin!', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(781, 1, 'vi', 'core/base/system', 'no_select', 'Hãy chọn ít nhất 1 trường để thực hiện hành động này!', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(782, 1, 'vi', 'core/base/system', 'cannot_find_user', 'Không thể tải được thông tin người dùng', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(783, 1, 'vi', 'core/base/system', 'supper_revoked', 'Quyền quản trị viên cao nhất đã được gỡ bỏ', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(784, 1, 'vi', 'core/base/system', 'cannot_revoke_yourself', 'Không thể gỡ bỏ quyền quản trị cấp cao của chính bạn!', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(785, 1, 'vi', 'core/base/system', 'cant_remove_supper', 'Bạn không có quyền xóa quản trị viên cấp cao', '2021-07-12 22:42:23', '2021-07-12 22:42:23');
INSERT INTO `translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(786, 1, 'vi', 'core/base/system', 'cant_find_user_with_email', 'Không thể tìm thấy người dùng với email này', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(787, 1, 'vi', 'core/base/system', 'supper_granted', 'Quyền quản trị cao nhất đã được gán', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(788, 1, 'vi', 'core/base/system', 'delete_log_success', 'Xóa tập tin log thành công!', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(789, 1, 'vi', 'core/base/system', 'get_member_success', 'Hiển thị danh sách thành viên thành công', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(790, 1, 'vi', 'core/base/system', 'error_occur', 'Có lỗi dưới đây', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(791, 1, 'vi', 'core/base/system', 'role_and_permission', 'Phân quyền hệ thống', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(792, 1, 'vi', 'core/base/system', 'role_and_permission_description', 'Quản lý những phân quyền trong hệ thống', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(793, 1, 'vi', 'core/base/system', 'user.list_super', 'Danh sách quản trị viên cấp cao', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(794, 1, 'vi', 'core/base/system', 'user.username', 'Tên đăng nhập', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(795, 1, 'vi', 'core/base/system', 'user.email', 'Email', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(796, 1, 'vi', 'core/base/system', 'user.last_login', 'Đăng nhập lần cuối	', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(797, 1, 'vi', 'core/base/system', 'user.add_user', 'Thêm quản trị viên cấp cao', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(798, 1, 'vi', 'core/base/system', 'user.cancel', 'Hủy bỏ', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(799, 1, 'vi', 'core/base/system', 'user.create', 'Thêm', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(800, 1, 'vi', 'core/base/system', 'options.features', 'Kiểm soát truy cập các tính năng', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(801, 1, 'vi', 'core/base/system', 'options.feature_description', 'Bật/tắt các tính năng.', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(802, 1, 'vi', 'core/base/system', 'options.manage_super', 'Quản lý quản trị viên cấp cao', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(803, 1, 'vi', 'core/base/system', 'options.manage_super_description', 'Thêm/xóa quản trị viên cấp cao', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(804, 1, 'vi', 'core/base/system', 'options.info', 'Thông tin hệ thống', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(805, 1, 'vi', 'core/base/system', 'options.info_description', 'Những thông tin về cấu hình hiện tại của hệ thống.', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(806, 1, 'vi', 'core/base/system', 'info.title', 'Thông tin hệ thống', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(807, 1, 'vi', 'core/base/system', 'info.cache', 'Bộ nhớ đệm', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(808, 1, 'vi', 'core/base/system', 'info.environment', 'Môi trường', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(809, 1, 'vi', 'core/base/system', 'info.locale', 'Ngôn ngữ hệ thống', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(810, 1, 'vi', 'core/base/system', 'user_management', 'Quản lý thành viên', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(811, 1, 'vi', 'core/base/system', 'user_management_description', 'Quản lý người dùng trong hệ thống', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(812, 1, 'vi', 'core/base/system', 'app_size', 'Kích thước ứng dụng', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(813, 1, 'vi', 'core/base/system', 'cache_dir_writable', 'Có thể ghi bộ nhớ đệm', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(814, 1, 'vi', 'core/base/system', 'cache_driver', 'Loại lưu trữ bộ nhớ đệm', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(815, 1, 'vi', 'core/base/system', 'copy_report', 'Sao chép báo cáo', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(816, 1, 'vi', 'core/base/system', 'curl_ext', 'CURL Ext', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(817, 1, 'vi', 'core/base/system', 'database', 'Hệ thống dữ liệu', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(818, 1, 'vi', 'core/base/system', 'debug_mode', 'Chế độ sửa lỗi', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(819, 1, 'vi', 'core/base/system', 'dependency_name', 'Tên gói', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(820, 1, 'vi', 'core/base/system', 'exif_ext', 'Exif Ext', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(821, 1, 'vi', 'core/base/system', 'extra_information', 'Thông tin mở rộng', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(822, 1, 'vi', 'core/base/system', 'extra_stats', 'Thống kê thêm', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(823, 1, 'vi', 'core/base/system', 'file_info_ext', 'File info Ext', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(824, 1, 'vi', 'core/base/system', 'framework_version', 'Phiên bản framework', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(825, 1, 'vi', 'core/base/system', 'get_system_report', 'Lấy thông tin hệ thống', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(826, 1, 'vi', 'core/base/system', 'installed_packages', 'Các gói đã cài đặt và phiên bản', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(827, 1, 'vi', 'core/base/system', 'mbstring_ext', 'Mbstring Ext', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(828, 1, 'vi', 'core/base/system', 'openssl_ext', 'OpenSSL Ext', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(829, 1, 'vi', 'core/base/system', 'package_name', 'Tên gói', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(830, 1, 'vi', 'core/base/system', 'pdo_ext', 'PDO Ext', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(831, 1, 'vi', 'core/base/system', 'php_version', 'Phiên bản PHP', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(832, 1, 'vi', 'core/base/system', 'report_description', 'Vui lòng chia sẻ thông tin này nhằm mục đích điều tra nguyên nhân gây lỗi', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(833, 1, 'vi', 'core/base/system', 'server_environment', 'Môi trường máy chủ', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(834, 1, 'vi', 'core/base/system', 'server_os', 'Hệ điều hành của máy chủ', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(835, 1, 'vi', 'core/base/system', 'server_software', 'Phần mềm', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(836, 1, 'vi', 'core/base/system', 'session_driver', 'Loại lưu trữ phiên làm việc', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(837, 1, 'vi', 'core/base/system', 'ssl_installed', 'Đã cài đặt chứng chỉ SSL', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(838, 1, 'vi', 'core/base/system', 'storage_dir_writable', 'Có thể lưu trữ dữ liệu tạm', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(839, 1, 'vi', 'core/base/system', 'system_environment', 'Môi trường hệ thống', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(840, 1, 'vi', 'core/base/system', 'timezone', 'Múi giờ', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(841, 1, 'vi', 'core/base/system', 'tokenizer_ext', 'Tokenizer Ext', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(842, 1, 'vi', 'core/base/system', 'version', 'Phiên bản', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(843, 1, 'vi', 'core/base/system', 'cms_version', 'Phiên bản CMS', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(844, 1, 'vi', 'core/base/tables', 'id', 'ID', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(845, 1, 'vi', 'core/base/tables', 'name', 'Tên', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(846, 1, 'vi', 'core/base/tables', 'order_by', 'Thứ tự', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(847, 1, 'vi', 'core/base/tables', 'status', 'Trạng thái', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(848, 1, 'vi', 'core/base/tables', 'created_at', 'Ngày tạo', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(849, 1, 'vi', 'core/base/tables', 'updated_at', 'Ngày cập nhật', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(850, 1, 'vi', 'core/base/tables', 'operations', 'Tác vụ', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(851, 1, 'vi', 'core/base/tables', 'url', 'URL', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(852, 1, 'vi', 'core/base/tables', 'author', 'Người tạo', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(853, 1, 'vi', 'core/base/tables', 'column', 'Cột', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(854, 1, 'vi', 'core/base/tables', 'origin', 'Bản cũ', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(855, 1, 'vi', 'core/base/tables', 'after_change', 'Sau khi thay đổi', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(856, 1, 'vi', 'core/base/tables', 'notes', 'Ghi chú', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(857, 1, 'vi', 'core/base/tables', 'activated', 'kích hoạt', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(858, 1, 'vi', 'core/base/tables', 'browser', 'Trình duyệt', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(859, 1, 'vi', 'core/base/tables', 'deactivated', 'hủy kích hoạt', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(860, 1, 'vi', 'core/base/tables', 'description', 'Mô tả', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(861, 1, 'vi', 'core/base/tables', 'session', 'Phiên', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(862, 1, 'vi', 'core/base/tables', 'views', 'Lượt xem', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(863, 1, 'vi', 'core/base/tables', 'restore', 'Khôi phục', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(864, 1, 'vi', 'core/base/tables', 'edit', 'Sửa', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(865, 1, 'vi', 'core/base/tables', 'delete', 'Xóa', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(866, 1, 'vi', 'core/base/tables', 'action', 'Hành động', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(867, 1, 'vi', 'core/base/tables', 'activate', 'Kích hoạt', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(868, 1, 'vi', 'core/base/tables', 'add_new', 'Thêm mới', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(869, 1, 'vi', 'core/base/tables', 'all', 'Tất cả', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(870, 1, 'vi', 'core/base/tables', 'cancel', 'Hủy bỏ', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(871, 1, 'vi', 'core/base/tables', 'confirm_delete', 'Xác nhận xóa', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(872, 1, 'vi', 'core/base/tables', 'confirm_delete_msg', 'Bạn có chắc chắn muốn xóa bản ghi này?', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(873, 1, 'vi', 'core/base/tables', 'csv', 'CSV', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(874, 1, 'vi', 'core/base/tables', 'deactivate', 'Hủy kích hoạt', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(875, 1, 'vi', 'core/base/tables', 'delete_entry', 'Xóa bản ghi', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(876, 1, 'vi', 'core/base/tables', 'display', 'Hiển thị', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(877, 1, 'vi', 'core/base/tables', 'excel', 'Excel', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(878, 1, 'vi', 'core/base/tables', 'export', 'Xuất bản', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(879, 1, 'vi', 'core/base/tables', 'in', 'trong tổng số', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(880, 1, 'vi', 'core/base/tables', 'no_data', 'Không có dữ liệu để hiển thị', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(881, 1, 'vi', 'core/base/tables', 'no_record', 'Không có dữ liệu', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(882, 1, 'vi', 'core/base/tables', 'pdf', 'PDF', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(883, 1, 'vi', 'core/base/tables', 'print', 'In', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(884, 1, 'vi', 'core/base/tables', 'records', 'bản ghi', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(885, 1, 'vi', 'core/base/tables', 'reload', 'Tải lại', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(886, 1, 'vi', 'core/base/tables', 'reset', 'Làm mới', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(887, 1, 'vi', 'core/base/tables', 'save', 'Lưu', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(888, 1, 'vi', 'core/base/tables', 'show_from', 'Hiển thị từ', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(889, 1, 'vi', 'core/base/tables', 'template', 'Giao diện', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(890, 1, 'vi', 'core/base/tables', 'to', 'đến', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(891, 1, 'vi', 'core/base/tables', 'view', 'Xem chi tiết', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(892, 1, 'vi', 'core/base/tables', 'email', 'Email', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(893, 1, 'vi', 'core/base/tables', 'image', 'Hình ảnh', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(894, 1, 'vi', 'core/base/tables', 'is_featured', 'Nổi bật', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(895, 1, 'vi', 'core/base/tables', 'last_login', 'Lần cuối đăng nhập', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(896, 1, 'vi', 'core/base/tables', 'order', 'Thứ tự', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(897, 1, 'vi', 'core/base/tables', 'shortcode', 'Shortcode', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(898, 1, 'vi', 'core/base/tables', 'slug', 'Slug', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(899, 1, 'vi', 'core/base/tables', 'title', 'Tiêu đề', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(900, 1, 'vi', 'core/base/tabs', 'detail', 'Chi tiết', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(901, 1, 'vi', 'core/base/tabs', 'file', 'Tập tin', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(902, 1, 'vi', 'core/base/tabs', 'record_note', 'Ghi chú', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(903, 1, 'vi', 'core/base/tabs', 'revision', 'Lịch sử thay đổi', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(904, 1, 'en', 'core/dashboard/dashboard', 'update_position_success', 'Update widget position successfully!', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(905, 1, 'en', 'core/dashboard/dashboard', 'hide_success', 'Update widget successfully!', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(906, 1, 'en', 'core/dashboard/dashboard', 'confirm_hide', 'Are you sure?', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(907, 1, 'en', 'core/dashboard/dashboard', 'hide_message', 'Do you really want to hide this widget? It will be disappear on Dashboard!', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(908, 1, 'en', 'core/dashboard/dashboard', 'confirm_hide_btn', 'Yes, hide this widget', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(909, 1, 'en', 'core/dashboard/dashboard', 'cancel_hide_btn', 'Cancel', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(910, 1, 'en', 'core/dashboard/dashboard', 'collapse_expand', 'Collapse/Expand', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(911, 1, 'en', 'core/dashboard/dashboard', 'hide', 'Hide', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(912, 1, 'en', 'core/dashboard/dashboard', 'reload', 'Reload', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(913, 1, 'en', 'core/dashboard/dashboard', 'save_setting_success', 'Save widget settings successfully!', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(914, 1, 'en', 'core/dashboard/dashboard', 'widget_not_exists', 'Widget is not exits!', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(915, 1, 'en', 'core/dashboard/dashboard', 'manage_widgets', 'Manage Widgets', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(916, 1, 'en', 'core/dashboard/dashboard', 'fullscreen', 'Full screen', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(917, 1, 'en', 'core/dashboard/dashboard', 'title', 'Dashboard', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(918, 1, 'vi', 'core/dashboard/dashboard', 'cancel_hide_btn', 'Hủy bỏ', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(919, 1, 'vi', 'core/dashboard/dashboard', 'collapse_expand', 'Mở rộng', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(920, 1, 'vi', 'core/dashboard/dashboard', 'confirm_hide', 'Bạn có chắc?', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(921, 1, 'vi', 'core/dashboard/dashboard', 'confirm_hide_btn', 'Vâng, ẩn tiện ích này', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(922, 1, 'vi', 'core/dashboard/dashboard', 'hide', 'Ẩn', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(923, 1, 'vi', 'core/dashboard/dashboard', 'hide_message', 'Bạn có chắc chắn muốn ẩn tiện ích này? Nó sẽ không được hiển thị trên trang chủ nữa!', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(924, 1, 'vi', 'core/dashboard/dashboard', 'hide_success', 'Ẩn tiện ích thành công!', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(925, 1, 'vi', 'core/dashboard/dashboard', 'manage_widgets', 'Quản lý tiện ích', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(926, 1, 'vi', 'core/dashboard/dashboard', 'reload', 'Làm mới', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(927, 1, 'vi', 'core/dashboard/dashboard', 'save_setting_success', 'Lưu tiện ích thành công', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(928, 1, 'vi', 'core/dashboard/dashboard', 'update_position_success', 'Cập nhật vị trí tiện ích thành công!', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(929, 1, 'vi', 'core/dashboard/dashboard', 'widget_not_exists', 'Tiện ích này không tồn tại!', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(930, 1, 'vi', 'core/dashboard/dashboard', 'fullscreen', 'Toàn màn hình', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(931, 1, 'vi', 'core/dashboard/dashboard', 'title', 'Trang quản trị', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(932, 1, 'en', 'core/media/media', 'filter', 'Filter', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(933, 1, 'en', 'core/media/media', 'everything', 'Everything', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(934, 1, 'en', 'core/media/media', 'image', 'Image', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(935, 1, 'en', 'core/media/media', 'video', 'Video', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(936, 1, 'en', 'core/media/media', 'document', 'Document', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(937, 1, 'en', 'core/media/media', 'view_in', 'View in', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(938, 1, 'en', 'core/media/media', 'all_media', 'All media', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(939, 1, 'en', 'core/media/media', 'trash', 'Trash', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(940, 1, 'en', 'core/media/media', 'recent', 'Recent', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(941, 1, 'en', 'core/media/media', 'favorites', 'Favorites', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(942, 1, 'en', 'core/media/media', 'upload', 'Upload', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(943, 1, 'en', 'core/media/media', 'create_folder', 'Create folder', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(944, 1, 'en', 'core/media/media', 'refresh', 'Refresh', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(945, 1, 'en', 'core/media/media', 'empty_trash', 'Empty trash', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(946, 1, 'en', 'core/media/media', 'search_file_and_folder', 'Search file and folder', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(947, 1, 'en', 'core/media/media', 'sort', 'Sort', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(948, 1, 'en', 'core/media/media', 'file_name_asc', 'File name - ASC', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(949, 1, 'en', 'core/media/media', 'file_name_desc', 'File name - DESC', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(950, 1, 'en', 'core/media/media', 'uploaded_date_asc', 'Uploaded date - ASC', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(951, 1, 'en', 'core/media/media', 'uploaded_date_desc', 'Uploaded date - DESC', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(952, 1, 'en', 'core/media/media', 'size_asc', 'Size - ASC', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(953, 1, 'en', 'core/media/media', 'size_desc', 'Size - DESC', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(954, 1, 'en', 'core/media/media', 'actions', 'Actions', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(955, 1, 'en', 'core/media/media', 'nothing_is_selected', 'Nothing is selected', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(956, 1, 'en', 'core/media/media', 'insert', 'Insert', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(957, 1, 'en', 'core/media/media', 'folder_name', 'Folder name', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(958, 1, 'en', 'core/media/media', 'create', 'Create', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(959, 1, 'en', 'core/media/media', 'rename', 'Rename', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(960, 1, 'en', 'core/media/media', 'close', 'Close', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(961, 1, 'en', 'core/media/media', 'save_changes', 'Save changes', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(962, 1, 'en', 'core/media/media', 'move_to_trash', 'Move items to trash', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(963, 1, 'en', 'core/media/media', 'confirm_trash', 'Are you sure you want to move these items to trash?', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(964, 1, 'en', 'core/media/media', 'confirm', 'Confirm', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(965, 1, 'en', 'core/media/media', 'confirm_delete', 'Delete item(s)', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(966, 1, 'en', 'core/media/media', 'confirm_delete_description', 'Your request cannot rollback. Are you sure you wanna delete these items?', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(967, 1, 'en', 'core/media/media', 'empty_trash_title', 'Empty trash', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(968, 1, 'en', 'core/media/media', 'empty_trash_description', 'Your request cannot rollback. Are you sure you wanna remove all items in trash?', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(969, 1, 'en', 'core/media/media', 'up_level', 'Up one level', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(970, 1, 'en', 'core/media/media', 'upload_progress', 'Upload progress', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(971, 1, 'en', 'core/media/media', 'folder_created', 'Folder is created successfully!', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(972, 1, 'en', 'core/media/media', 'gallery', 'Media gallery', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(973, 1, 'en', 'core/media/media', 'trash_error', 'Error when delete selected item(s)', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(974, 1, 'en', 'core/media/media', 'trash_success', 'Moved selected item(s) to trash successfully!', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(975, 1, 'en', 'core/media/media', 'restore_error', 'Error when restore selected item(s)', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(976, 1, 'en', 'core/media/media', 'restore_success', 'Restore selected item(s) successfully!', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(977, 1, 'en', 'core/media/media', 'copy_success', 'Copied selected item(s) successfully!', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(978, 1, 'en', 'core/media/media', 'delete_success', 'Deleted selected item(s) successfully!', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(979, 1, 'en', 'core/media/media', 'favorite_success', 'Favorite selected item(s) successfully!', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(980, 1, 'en', 'core/media/media', 'remove_favorite_success', 'Remove selected item(s) from favorites successfully!', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(981, 1, 'en', 'core/media/media', 'rename_error', 'Error when rename item(s)', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(982, 1, 'en', 'core/media/media', 'rename_success', 'Rename selected item(s) successfully!', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(983, 1, 'en', 'core/media/media', 'empty_trash_success', 'Empty trash successfully!', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(984, 1, 'en', 'core/media/media', 'invalid_action', 'Invalid action!', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(985, 1, 'en', 'core/media/media', 'file_not_exists', 'File is not exists!', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(986, 1, 'en', 'core/media/media', 'download_file_error', 'Error when downloading files!', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(987, 1, 'en', 'core/media/media', 'missing_zip_archive_extension', 'Please enable ZipArchive extension to download file!', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(988, 1, 'en', 'core/media/media', 'can_not_download_file', 'Can not download this file!', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(989, 1, 'en', 'core/media/media', 'invalid_request', 'Invalid request!', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(990, 1, 'en', 'core/media/media', 'add_success', 'Add item successfully!', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(991, 1, 'en', 'core/media/media', 'file_too_big', 'File too big. Max file upload is :size bytes', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(992, 1, 'en', 'core/media/media', 'can_not_detect_file_type', 'File type is not allowed or can not detect file type!', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(993, 1, 'en', 'core/media/media', 'upload_failed', 'The file is NOT uploaded completely. The server allows max upload file size is :size . Please check your file size OR try to upload again in case of having network errors', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(994, 1, 'en', 'core/media/media', 'menu_name', 'Media', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(995, 1, 'en', 'core/media/media', 'add', 'Add media', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(996, 1, 'en', 'core/media/media', 'javascript.name', 'Name', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(997, 1, 'en', 'core/media/media', 'javascript.url', 'URL', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(998, 1, 'en', 'core/media/media', 'javascript.full_url', 'Full URL', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(999, 1, 'en', 'core/media/media', 'javascript.size', 'Size', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(1000, 1, 'en', 'core/media/media', 'javascript.mime_type', 'Type', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(1001, 1, 'en', 'core/media/media', 'javascript.created_at', 'Uploaded at', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(1002, 1, 'en', 'core/media/media', 'javascript.updated_at', 'Modified at', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(1003, 1, 'en', 'core/media/media', 'javascript.nothing_selected', 'Nothing is selected', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(1004, 1, 'en', 'core/media/media', 'javascript.visit_link', 'Open link', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(1005, 1, 'en', 'core/media/media', 'javascript.no_item.all_media.icon', 'fas fa-cloud-upload-alt', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(1006, 1, 'en', 'core/media/media', 'javascript.no_item.all_media.title', 'Drop files and folders here', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(1007, 1, 'en', 'core/media/media', 'javascript.no_item.all_media.message', 'Or use the upload button above', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(1008, 1, 'en', 'core/media/media', 'javascript.no_item.trash.icon', 'fas fa-trash-alt', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(1009, 1, 'en', 'core/media/media', 'javascript.no_item.trash.title', 'There is nothing in your trash currently', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(1010, 1, 'en', 'core/media/media', 'javascript.no_item.trash.message', 'Delete files to move them to trash automatically. Delete files from trash to remove them permanently', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(1011, 1, 'en', 'core/media/media', 'javascript.no_item.favorites.icon', 'fas fa-star', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(1012, 1, 'en', 'core/media/media', 'javascript.no_item.favorites.title', 'You have not added anything to your favorites yet', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(1013, 1, 'en', 'core/media/media', 'javascript.no_item.favorites.message', 'Add files to favorites to easily find them later', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(1014, 1, 'en', 'core/media/media', 'javascript.no_item.recent.icon', 'far fa-clock', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(1015, 1, 'en', 'core/media/media', 'javascript.no_item.recent.title', 'You did not opened anything yet', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(1016, 1, 'en', 'core/media/media', 'javascript.no_item.recent.message', 'All recent files that you opened will be appeared here', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(1017, 1, 'en', 'core/media/media', 'javascript.no_item.default.icon', 'fas fa-sync', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(1018, 1, 'en', 'core/media/media', 'javascript.no_item.default.title', 'No items', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(1019, 1, 'en', 'core/media/media', 'javascript.no_item.default.message', 'This directory has no item', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(1020, 1, 'en', 'core/media/media', 'javascript.clipboard.success', 'These file links has been copied to clipboard', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(1021, 1, 'en', 'core/media/media', 'javascript.message.error_header', 'Error', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(1022, 1, 'en', 'core/media/media', 'javascript.message.success_header', 'Success', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(1023, 1, 'en', 'core/media/media', 'javascript.download.error', 'No files selected or cannot download these files', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(1024, 1, 'en', 'core/media/media', 'javascript.actions_list.basic.preview', 'Preview', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(1025, 1, 'en', 'core/media/media', 'javascript.actions_list.file.copy_link', 'Copy link', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(1026, 1, 'en', 'core/media/media', 'javascript.actions_list.file.rename', 'Rename', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(1027, 1, 'en', 'core/media/media', 'javascript.actions_list.file.make_copy', 'Make a copy', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(1028, 1, 'en', 'core/media/media', 'javascript.actions_list.user.favorite', 'Add to favorite', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(1029, 1, 'en', 'core/media/media', 'javascript.actions_list.user.remove_favorite', 'Remove favorite', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(1030, 1, 'en', 'core/media/media', 'javascript.actions_list.other.download', 'Download', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(1031, 1, 'en', 'core/media/media', 'javascript.actions_list.other.trash', 'Move to trash', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(1032, 1, 'en', 'core/media/media', 'javascript.actions_list.other.delete', 'Delete permanently', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(1033, 1, 'en', 'core/media/media', 'javascript.actions_list.other.restore', 'Restore', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(1034, 1, 'en', 'core/media/media', 'name_invalid', 'The folder name has invalid character(s).', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(1035, 1, 'en', 'core/media/media', 'url_invalid', 'Please provide a valid URL', '2021-07-12 22:42:23', '2021-07-12 22:42:23'),
(1036, 1, 'en', 'core/media/media', 'path_invalid', 'Please provide a valid path', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1037, 1, 'vi', 'core/media/media', 'filter', 'Lọc', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1038, 1, 'vi', 'core/media/media', 'everything', 'Tất cả', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1039, 1, 'vi', 'core/media/media', 'image', 'Hình ảnh', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1040, 1, 'vi', 'core/media/media', 'video', 'Phim', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1041, 1, 'vi', 'core/media/media', 'document', 'Tài liệu', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1042, 1, 'vi', 'core/media/media', 'view_in', 'Chế độ xem', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1043, 1, 'vi', 'core/media/media', 'all_media', 'Tất cả tập tin', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1044, 1, 'vi', 'core/media/media', 'trash', 'Thùng rác', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1045, 1, 'vi', 'core/media/media', 'recent', 'Gần đây', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1046, 1, 'vi', 'core/media/media', 'favorites', 'Được gắn dấu sao', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1047, 1, 'vi', 'core/media/media', 'upload', 'Tải lên', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1048, 1, 'vi', 'core/media/media', 'create_folder', 'Tạo thư mục', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1049, 1, 'vi', 'core/media/media', 'refresh', 'Làm mới', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1050, 1, 'vi', 'core/media/media', 'empty_trash', 'Dọn thùng rác', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1051, 1, 'vi', 'core/media/media', 'search_file_and_folder', 'Tìm kiếm tập tin và thư mục', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1052, 1, 'vi', 'core/media/media', 'sort', 'Sắp xếp', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1053, 1, 'vi', 'core/media/media', 'file_name_asc', 'Tên tập tin - ASC', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1054, 1, 'vi', 'core/media/media', 'file_name_desc', 'Tên tập tin - DESC', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1055, 1, 'vi', 'core/media/media', 'uploaded_date_asc', 'Ngày tải lên - ASC', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1056, 1, 'vi', 'core/media/media', 'uploaded_date_desc', 'Ngày tải lên - DESC', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1057, 1, 'vi', 'core/media/media', 'size_asc', 'Kích thước - ASC', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1058, 1, 'vi', 'core/media/media', 'size_desc', 'Kích thước - DESC', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1059, 1, 'vi', 'core/media/media', 'actions', 'Hành động', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1060, 1, 'vi', 'core/media/media', 'nothing_is_selected', 'Không có tập tin nào được chọn', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1061, 1, 'vi', 'core/media/media', 'insert', 'Chèn', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1062, 1, 'vi', 'core/media/media', 'folder_name', 'Tên thư mục', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1063, 1, 'vi', 'core/media/media', 'create', 'Tạo', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1064, 1, 'vi', 'core/media/media', 'rename', 'Đổi tên', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1065, 1, 'vi', 'core/media/media', 'close', 'Đóng', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1066, 1, 'vi', 'core/media/media', 'save_changes', 'Lưu thay đổi', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1067, 1, 'vi', 'core/media/media', 'move_to_trash', 'Đưa vào thùng rác', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1068, 1, 'vi', 'core/media/media', 'confirm_trash', 'Bạn có chắc chắn muốn bỏ những tập tin này vào thùng rác?', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1069, 1, 'vi', 'core/media/media', 'confirm', 'Xác nhận', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1070, 1, 'vi', 'core/media/media', 'confirm_delete', 'Xóa tập tin', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1071, 1, 'vi', 'core/media/media', 'confirm_delete_description', 'Hành động này không thể khôi phục. Bạn có chắc chắn muốn xóa các tập tin này?', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1072, 1, 'vi', 'core/media/media', 'empty_trash_title', 'Dọn sạch thùng rác', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1073, 1, 'vi', 'core/media/media', 'empty_trash_description', 'Hành động này không thể khôi phục. Bạn có chắc chắn muốn dọn sạch thùng rác?', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1074, 1, 'vi', 'core/media/media', 'up_level', 'Quay lại một cấp', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1075, 1, 'vi', 'core/media/media', 'upload_progress', 'Tiến trình tải lên', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1076, 1, 'vi', 'core/media/media', 'folder_created', 'Tạo thư mục thành công!', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1077, 1, 'vi', 'core/media/media', 'gallery', 'Thư viện tập tin', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1078, 1, 'vi', 'core/media/media', 'trash_error', 'Có lỗi khi xóa tập tin/thư mục', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1079, 1, 'vi', 'core/media/media', 'trash_success', 'Xóa tập tin/thư mục thành công!', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1080, 1, 'vi', 'core/media/media', 'restore_error', 'Có lỗi trong quá trình khôi phục', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1081, 1, 'vi', 'core/media/media', 'restore_success', 'Khôi phục thành công!', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1082, 1, 'vi', 'core/media/media', 'copy_success', 'Sao chép thành công!', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1083, 1, 'vi', 'core/media/media', 'delete_success', 'Xóa thành công!', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1084, 1, 'vi', 'core/media/media', 'favorite_success', 'Thêm dấu sao thành công!', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1085, 1, 'vi', 'core/media/media', 'remove_favorite_success', 'Bỏ dấu sao thành công!', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1086, 1, 'vi', 'core/media/media', 'rename_error', 'Có lỗi trong quá trình đổi tên', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1087, 1, 'vi', 'core/media/media', 'rename_success', 'Đổi tên thành công!', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1088, 1, 'vi', 'core/media/media', 'invalid_action', 'Hành động không hợp lệ!', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1089, 1, 'vi', 'core/media/media', 'file_not_exists', 'Tập tin không tồn tại!', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1090, 1, 'vi', 'core/media/media', 'download_file_error', 'Có lỗi trong quá trình tải xuống tập tin!', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1091, 1, 'vi', 'core/media/media', 'missing_zip_archive_extension', 'Hãy bật ZipArchive extension để tải tập tin!', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1092, 1, 'vi', 'core/media/media', 'can_not_download_file', 'Không thể tải tập tin!', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1093, 1, 'vi', 'core/media/media', 'invalid_request', 'Yêu cầu không hợp lệ!', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1094, 1, 'vi', 'core/media/media', 'add_success', 'Thêm thành công!', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1095, 1, 'vi', 'core/media/media', 'file_too_big', 'Tập tin quá lớn. Giới hạn tải lên là :size bytes', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1096, 1, 'vi', 'core/media/media', 'can_not_detect_file_type', 'Loại tập tin không hợp lệ hoặc không thể xác định loại tập tin!', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1097, 1, 'vi', 'core/media/media', 'upload_failed', 'The file is NOT uploaded completely. The server allows max upload file size is :size . Please check your file size OR try to upload again in case of having network errors', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1098, 1, 'vi', 'core/media/media', 'menu_name', 'Quản lý tập tin', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1099, 1, 'vi', 'core/media/media', 'add', 'Thêm tập tin', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1100, 1, 'vi', 'core/media/media', 'javascript.name', 'Tên', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1101, 1, 'vi', 'core/media/media', 'javascript.url', 'Đường dẫn', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1102, 1, 'vi', 'core/media/media', 'javascript.full_url', 'Đường dẫn tuyệt đối', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1103, 1, 'vi', 'core/media/media', 'javascript.size', 'Kích thước', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1104, 1, 'vi', 'core/media/media', 'javascript.mime_type', 'Loại', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1105, 1, 'vi', 'core/media/media', 'javascript.created_at', 'Được tải lên lúc', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1106, 1, 'vi', 'core/media/media', 'javascript.updated_at', 'Được chỉnh sửa lúc', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1107, 1, 'vi', 'core/media/media', 'javascript.nothing_selected', 'Bạn chưa chọn tập tin nào', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1108, 1, 'vi', 'core/media/media', 'javascript.visit_link', 'Mở liên kết', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1109, 1, 'vi', 'core/media/media', 'javascript.no_item.all_media.icon', 'fas fa-cloud-upload-alt', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1110, 1, 'vi', 'core/media/media', 'javascript.no_item.all_media.title', 'Bạn có thể kéo thả tập tin vào đây để tải lên', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1111, 1, 'vi', 'core/media/media', 'javascript.no_item.all_media.message', 'Hoặc có thể bấm nút Tải lên ở phía trên', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1112, 1, 'vi', 'core/media/media', 'javascript.no_item.trash.icon', 'fas fa-trash-alt', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1113, 1, 'vi', 'core/media/media', 'javascript.no_item.trash.title', 'Hiện tại không có tập tin nào trong thùng rác', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1114, 1, 'vi', 'core/media/media', 'javascript.no_item.trash.message', 'Xóa tập tin sẽ đem tập tin lưu vào thùng rác. Xóa tập tin trong thùng rác sẽ xóa vĩnh viễn.', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1115, 1, 'vi', 'core/media/media', 'javascript.no_item.favorites.icon', 'fas fa-star', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1116, 1, 'vi', 'core/media/media', 'javascript.no_item.favorites.title', 'Bạn chưa đặt tập tin nào vào mục yêu thích', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1117, 1, 'vi', 'core/media/media', 'javascript.no_item.favorites.message', 'Thêm tập tin vào mục yêu thích để tìm kiếm chúng dễ dàng sau này.', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1118, 1, 'vi', 'core/media/media', 'javascript.no_item.recent.icon', 'far fa-clock', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1119, 1, 'vi', 'core/media/media', 'javascript.no_item.recent.title', 'Bạn chưa mở tập tin nào.', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1120, 1, 'vi', 'core/media/media', 'javascript.no_item.recent.message', 'Mục này hiển thị các tập tin bạn đã xem gần đây.', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1121, 1, 'vi', 'core/media/media', 'javascript.no_item.default.icon', 'fas fa-sync', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1122, 1, 'vi', 'core/media/media', 'javascript.no_item.default.title', 'Thư mục trống', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1123, 1, 'vi', 'core/media/media', 'javascript.no_item.default.message', 'Thư mục này chưa có tập tin nào', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1124, 1, 'vi', 'core/media/media', 'javascript.clipboard.success', 'Đường dẫn của các tập tin đã được sao chép vào clipboard', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1125, 1, 'vi', 'core/media/media', 'javascript.message.error_header', 'Lỗi', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1126, 1, 'vi', 'core/media/media', 'javascript.message.success_header', 'Thành công', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1127, 1, 'vi', 'core/media/media', 'javascript.download.error', 'Bạn chưa chọn tập tin nào hoặc tập tin này không cho phép tải về', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1128, 1, 'vi', 'core/media/media', 'javascript.actions_list.basic.preview', 'Xem trước', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1129, 1, 'vi', 'core/media/media', 'javascript.actions_list.file.copy_link', 'Sao chép đường dẫn', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1130, 1, 'vi', 'core/media/media', 'javascript.actions_list.file.rename', 'Đổi tên', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1131, 1, 'vi', 'core/media/media', 'javascript.actions_list.file.make_copy', 'Nhân bản', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1132, 1, 'vi', 'core/media/media', 'javascript.actions_list.user.favorite', 'Yêu thích', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1133, 1, 'vi', 'core/media/media', 'javascript.actions_list.user.remove_favorite', 'Xóa khỏi mục yêu thích', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1134, 1, 'vi', 'core/media/media', 'javascript.actions_list.other.download', 'Tải xuống', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1135, 1, 'vi', 'core/media/media', 'javascript.actions_list.other.trash', 'Chuyển vào thùng rác', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1136, 1, 'vi', 'core/media/media', 'javascript.actions_list.other.delete', 'Xóa hoàn toàn', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1137, 1, 'vi', 'core/media/media', 'javascript.actions_list.other.restore', 'Khôi phục', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1138, 1, 'vi', 'core/media/media', 'empty_trash_success', 'Dọn sạch thùng rác thành công', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1139, 1, 'vi', 'core/media/media', 'name_invalid', 'Tên thư mục chứa ký tự không hợp lệ', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1140, 1, 'en', 'core/setting/setting', 'title', 'Settings', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1141, 1, 'en', 'core/setting/setting', 'email_setting_title', 'Email settings', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1142, 1, 'en', 'core/setting/setting', 'general.theme', 'Theme', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1143, 1, 'en', 'core/setting/setting', 'general.description', 'Setting site information', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1144, 1, 'en', 'core/setting/setting', 'general.title', 'General', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1145, 1, 'en', 'core/setting/setting', 'general.general_block', 'General Information', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1146, 1, 'en', 'core/setting/setting', 'general.rich_editor', 'Rich Editor', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1147, 1, 'en', 'core/setting/setting', 'general.site_title', 'Site title', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1148, 1, 'en', 'core/setting/setting', 'general.admin_email', 'Admin Email', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1149, 1, 'en', 'core/setting/setting', 'general.seo_block', 'SEO Configuration', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1150, 1, 'en', 'core/setting/setting', 'general.seo_title', 'SEO Title', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1151, 1, 'en', 'core/setting/setting', 'general.seo_description', 'SEO Description', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1152, 1, 'en', 'core/setting/setting', 'general.webmaster_tools_block', 'Google Webmaster Tools', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1153, 1, 'en', 'core/setting/setting', 'general.google_site_verification', 'Google site verification', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1154, 1, 'en', 'core/setting/setting', 'general.placeholder.site_title', 'Site Title (maximum 120 characters)', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1155, 1, 'en', 'core/setting/setting', 'general.placeholder.admin_email', 'Admin Email', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1156, 1, 'en', 'core/setting/setting', 'general.placeholder.seo_title', 'SEO Title (maximum 120 characters)', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1157, 1, 'en', 'core/setting/setting', 'general.placeholder.seo_description', 'SEO Description (maximum 120 characters)', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1158, 1, 'en', 'core/setting/setting', 'general.placeholder.google_analytics', 'Google Analytics', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1159, 1, 'en', 'core/setting/setting', 'general.placeholder.google_site_verification', 'Google Site Verification', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1160, 1, 'en', 'core/setting/setting', 'general.cache_admin_menu', 'Cache admin menu?', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1161, 1, 'en', 'core/setting/setting', 'general.enable_send_error_reporting_via_email', 'Enable to send error reporting via email?', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1162, 1, 'en', 'core/setting/setting', 'general.time_zone', 'Timezone', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1163, 1, 'en', 'core/setting/setting', 'general.default_admin_theme', 'Default admin theme', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1164, 1, 'en', 'core/setting/setting', 'general.enable_change_admin_theme', 'Enable change admin theme?', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1165, 1, 'en', 'core/setting/setting', 'general.enable', 'Enable', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1166, 1, 'en', 'core/setting/setting', 'general.disable', 'Disable', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1167, 1, 'en', 'core/setting/setting', 'general.enable_cache', 'Enable cache?', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1168, 1, 'en', 'core/setting/setting', 'general.cache_time', 'Cache time (minutes)', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1169, 1, 'en', 'core/setting/setting', 'general.cache_time_site_map', 'Cache Time Site map', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1170, 1, 'en', 'core/setting/setting', 'general.admin_logo', 'Admin logo', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1171, 1, 'en', 'core/setting/setting', 'general.admin_favicon', 'Admin favicon', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1172, 1, 'en', 'core/setting/setting', 'general.admin_title', 'Admin title', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1173, 1, 'en', 'core/setting/setting', 'general.admin_title_placeholder', 'Title show to tab of browser', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1174, 1, 'en', 'core/setting/setting', 'general.cache_block', 'Cache', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1175, 1, 'en', 'core/setting/setting', 'general.admin_appearance_title', 'Admin appearance', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1176, 1, 'en', 'core/setting/setting', 'general.admin_appearance_description', 'Setting admin appearance such as editor, language...', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1177, 1, 'en', 'core/setting/setting', 'general.seo_block_description', 'Setting site title, site meta description, site keyword for optimize SEO', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1178, 1, 'en', 'core/setting/setting', 'general.webmaster_tools_description', 'Google Webmaster Tools (GWT) is free software that helps you manage the technical side of your website', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1179, 1, 'en', 'core/setting/setting', 'general.cache_description', 'Config cache for system for optimize speed', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1180, 1, 'en', 'core/setting/setting', 'general.yes', 'Yes', '2021-07-12 22:42:24', '2021-07-12 22:42:24');
INSERT INTO `translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1181, 1, 'en', 'core/setting/setting', 'general.no', 'No', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1182, 1, 'en', 'core/setting/setting', 'general.show_on_front', 'Your homepage displays', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1183, 1, 'en', 'core/setting/setting', 'general.select', '— Select —', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1184, 1, 'en', 'core/setting/setting', 'general.show_site_name', 'Show site name after page title, separate with \"-\"?', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1185, 1, 'en', 'core/setting/setting', 'general.locale', 'Site language', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1186, 1, 'en', 'core/setting/setting', 'general.locale_direction', 'Front site language direction', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1187, 1, 'en', 'core/setting/setting', 'general.admin_locale_direction', 'Admin language direction', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1188, 1, 'en', 'core/setting/setting', 'general.admin_login_screen_backgrounds', 'Login screen backgrounds (~1366x768)', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1189, 1, 'en', 'core/setting/setting', 'email.subject', 'Subject', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1190, 1, 'en', 'core/setting/setting', 'email.content', 'Content', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1191, 1, 'en', 'core/setting/setting', 'email.title', 'Setting for email template', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1192, 1, 'en', 'core/setting/setting', 'email.description', 'Email template using HTML & system variables.', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1193, 1, 'en', 'core/setting/setting', 'email.reset_to_default', 'Reset to default', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1194, 1, 'en', 'core/setting/setting', 'email.back', 'Back to settings', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1195, 1, 'en', 'core/setting/setting', 'email.reset_success', 'Reset back to default successfully', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1196, 1, 'en', 'core/setting/setting', 'email.confirm_reset', 'Confirm reset email template?', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1197, 1, 'en', 'core/setting/setting', 'email.confirm_message', 'Do you really want to reset this email template to default?', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1198, 1, 'en', 'core/setting/setting', 'email.continue', 'Continue', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1199, 1, 'en', 'core/setting/setting', 'email.sender_name', 'Sender name', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1200, 1, 'en', 'core/setting/setting', 'email.sender_name_placeholder', 'Name', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1201, 1, 'en', 'core/setting/setting', 'email.sender_email', 'Sender email', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1202, 1, 'en', 'core/setting/setting', 'email.mailer', 'Mailer', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1203, 1, 'en', 'core/setting/setting', 'email.port', 'Port', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1204, 1, 'en', 'core/setting/setting', 'email.port_placeholder', 'Ex: 587', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1205, 1, 'en', 'core/setting/setting', 'email.host', 'Host', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1206, 1, 'en', 'core/setting/setting', 'email.host_placeholder', 'Ex: smtp.gmail.com', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1207, 1, 'en', 'core/setting/setting', 'email.username', 'Username', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1208, 1, 'en', 'core/setting/setting', 'email.username_placeholder', 'Username to login to mail server', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1209, 1, 'en', 'core/setting/setting', 'email.password', 'Password', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1210, 1, 'en', 'core/setting/setting', 'email.password_placeholder', 'Password to login to mail server', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1211, 1, 'en', 'core/setting/setting', 'email.encryption', 'Encryption', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1212, 1, 'en', 'core/setting/setting', 'email.mail_gun_domain', 'Domain', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1213, 1, 'en', 'core/setting/setting', 'email.mail_gun_domain_placeholder', 'Domain', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1214, 1, 'en', 'core/setting/setting', 'email.mail_gun_secret', 'Secret', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1215, 1, 'en', 'core/setting/setting', 'email.mail_gun_secret_placeholder', 'Secret', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1216, 1, 'en', 'core/setting/setting', 'email.mail_gun_endpoint', 'Endpoint', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1217, 1, 'en', 'core/setting/setting', 'email.mail_gun_endpoint_placeholder', 'Endpoint', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1218, 1, 'en', 'core/setting/setting', 'email.log_channel', 'Log channel', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1219, 1, 'en', 'core/setting/setting', 'email.sendmail_path', 'Sendmail Path', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1220, 1, 'en', 'core/setting/setting', 'email.encryption_placeholder', 'Encryption: ssl or tls', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1221, 1, 'en', 'core/setting/setting', 'email.ses_key', 'Key', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1222, 1, 'en', 'core/setting/setting', 'email.ses_key_placeholder', 'Key', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1223, 1, 'en', 'core/setting/setting', 'email.ses_secret', 'Secret', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1224, 1, 'en', 'core/setting/setting', 'email.ses_secret_placeholder', 'Secret', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1225, 1, 'en', 'core/setting/setting', 'email.ses_region', 'Region', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1226, 1, 'en', 'core/setting/setting', 'email.ses_region_placeholder', 'Region', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1227, 1, 'en', 'core/setting/setting', 'email.postmark_token', 'Token', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1228, 1, 'en', 'core/setting/setting', 'email.postmark_token_placeholder', 'Token', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1229, 1, 'en', 'core/setting/setting', 'email.template_title', 'Email templates', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1230, 1, 'en', 'core/setting/setting', 'email.template_description', 'Base templates for all emails', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1231, 1, 'en', 'core/setting/setting', 'email.template_header', 'Email template header', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1232, 1, 'en', 'core/setting/setting', 'email.template_header_description', 'Template for header of emails', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1233, 1, 'en', 'core/setting/setting', 'email.template_footer', 'Email template footer', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1234, 1, 'en', 'core/setting/setting', 'email.template_footer_description', 'Template for footer of emails', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1235, 1, 'en', 'core/setting/setting', 'email.default', 'Default', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1236, 1, 'en', 'core/setting/setting', 'email.using_queue_to_send_mail', 'Using queue job to send emails (Must to setup Queue first https://laravel.com/docs/queues#supervisor-configuration)', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1237, 1, 'en', 'core/setting/setting', 'media.title', 'Media', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1238, 1, 'en', 'core/setting/setting', 'media.driver', 'Driver', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1239, 1, 'en', 'core/setting/setting', 'media.description', 'Settings for media', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1240, 1, 'en', 'core/setting/setting', 'media.aws_access_key_id', 'AWS Access Key ID', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1241, 1, 'en', 'core/setting/setting', 'media.aws_secret_key', 'AWS Secret Key', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1242, 1, 'en', 'core/setting/setting', 'media.aws_default_region', 'AWS Default Region', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1243, 1, 'en', 'core/setting/setting', 'media.aws_bucket', 'AWS Bucket', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1244, 1, 'en', 'core/setting/setting', 'media.aws_url', 'AWS URL', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1245, 1, 'en', 'core/setting/setting', 'media.do_spaces_access_key_id', 'DO Spaces Access Key ID', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1246, 1, 'en', 'core/setting/setting', 'media.do_spaces_secret_key', 'DO Spaces Secret Key', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1247, 1, 'en', 'core/setting/setting', 'media.do_spaces_default_region', 'DO Spaces Default Region', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1248, 1, 'en', 'core/setting/setting', 'media.do_spaces_bucket', 'DO Spaces Bucket', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1249, 1, 'en', 'core/setting/setting', 'media.do_spaces_endpoint', 'DO Spaces Endpoint', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1250, 1, 'en', 'core/setting/setting', 'media.do_spaces_cdn_enabled', 'Is DO Spaces CDN enabled?', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1251, 1, 'en', 'core/setting/setting', 'media.media_do_spaces_cdn_custom_domain', 'Do Spaces CDN custom domain', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1252, 1, 'en', 'core/setting/setting', 'media.media_do_spaces_cdn_custom_domain_placeholder', 'https://your-custom-domain.com', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1253, 1, 'en', 'core/setting/setting', 'media.enable_chunk', 'Enable chunk size upload?', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1254, 1, 'en', 'core/setting/setting', 'media.chunk_size', 'Chunk size (Bytes)', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1255, 1, 'en', 'core/setting/setting', 'media.chunk_size_placeholder', 'Default: 1048576 ~ 1MB', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1256, 1, 'en', 'core/setting/setting', 'media.max_file_size', 'Chunk max file size (MB)', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1257, 1, 'en', 'core/setting/setting', 'media.max_file_size_placeholder', 'Default: 1048576 ~ 1GB', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1258, 1, 'en', 'core/setting/setting', 'media.enable_watermark', 'Enable watermark?', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1259, 1, 'en', 'core/setting/setting', 'media.watermark_source', 'Watermark image', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1260, 1, 'en', 'core/setting/setting', 'media.watermark_size', 'Size of watermark (%)', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1261, 1, 'en', 'core/setting/setting', 'media.watermark_size_placeholder', 'Default: 10 (%)', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1262, 1, 'en', 'core/setting/setting', 'media.watermark_opacity', 'Watermark Opacity (%)', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1263, 1, 'en', 'core/setting/setting', 'media.watermark_opacity_placeholder', 'Default: 70 (%)', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1264, 1, 'en', 'core/setting/setting', 'media.watermark_position', 'Watermark position', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1265, 1, 'en', 'core/setting/setting', 'media.watermark_position_x', 'Watermark position X', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1266, 1, 'en', 'core/setting/setting', 'media.watermark_position_y', 'Watermark position Y', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1267, 1, 'en', 'core/setting/setting', 'media.watermark_position_top_left', 'Top left', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1268, 1, 'en', 'core/setting/setting', 'media.watermark_position_top_right', 'Top right', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1269, 1, 'en', 'core/setting/setting', 'media.watermark_position_bottom_left', 'Bottom left', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1270, 1, 'en', 'core/setting/setting', 'media.watermark_position_bottom_right', 'Bottom right', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1271, 1, 'en', 'core/setting/setting', 'media.watermark_position_center', 'Center', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1272, 1, 'en', 'core/setting/setting', 'license.purchase_code', 'Purchase code', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1273, 1, 'en', 'core/setting/setting', 'license.buyer', 'Buyer', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1274, 1, 'en', 'core/setting/setting', 'field_type_not_exists', 'This field type does not exist', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1275, 1, 'en', 'core/setting/setting', 'save_settings', 'Save settings', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1276, 1, 'en', 'core/setting/setting', 'template', 'Template', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1277, 1, 'en', 'core/setting/setting', 'description', 'Description', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1278, 1, 'en', 'core/setting/setting', 'enable', 'Enable', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1279, 1, 'en', 'core/setting/setting', 'send', 'Send', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1280, 1, 'en', 'core/setting/setting', 'test_email_description', 'To send test email, please make sure you are updated configuration to send mail!', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1281, 1, 'en', 'core/setting/setting', 'test_email_input_placeholder', 'Enter the email which you want to send test email.', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1282, 1, 'en', 'core/setting/setting', 'test_email_modal_title', 'Send a test email', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1283, 1, 'en', 'core/setting/setting', 'test_send_mail', 'Send test mail', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1284, 1, 'en', 'core/setting/setting', 'test_email_send_success', 'Send email successfully!', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1285, 1, 'en', 'core/setting/setting', 'locale_direction_ltr', 'Left to Right', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1286, 1, 'en', 'core/setting/setting', 'locale_direction_rtl', 'Right to Left', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1287, 1, 'en', 'core/setting/setting', 'saving', 'Saving...', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1288, 1, 'vi', 'core/setting/setting', 'title', 'Cài đặt', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1289, 1, 'vi', 'core/setting/setting', 'general.theme', 'Giao diện', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1290, 1, 'vi', 'core/setting/setting', 'general.description', 'Cấu hình những thông tin cài đặt website.', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1291, 1, 'vi', 'core/setting/setting', 'general.title', 'Thông tin chung', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1292, 1, 'vi', 'core/setting/setting', 'general.general_block', 'Thông tin chung', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1293, 1, 'vi', 'core/setting/setting', 'general.site_title', 'Tên trang', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1294, 1, 'vi', 'core/setting/setting', 'general.admin_email', 'Email quản trị viên', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1295, 1, 'vi', 'core/setting/setting', 'general.seo_block', 'Cấu hình SEO', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1296, 1, 'vi', 'core/setting/setting', 'general.seo_title', 'Tiêu đề SEO', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1297, 1, 'vi', 'core/setting/setting', 'general.seo_description', 'Mô tả SEO', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1298, 1, 'vi', 'core/setting/setting', 'general.webmaster_tools_block', 'Google Webmaster Tools', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1299, 1, 'vi', 'core/setting/setting', 'general.google_site_verification', 'Google site verification', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1300, 1, 'vi', 'core/setting/setting', 'general.placeholder.site_title', 'Tên trang (tối đa 120 kí tự)', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1301, 1, 'vi', 'core/setting/setting', 'general.placeholder.admin_email', 'Admin Email', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1302, 1, 'vi', 'core/setting/setting', 'general.placeholder.google_analytics', 'Ví dụ: UA-42767940-2', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1303, 1, 'vi', 'core/setting/setting', 'general.placeholder.google_site_verification', 'Mã xác nhận trang web dùng cho Google Webmaster Tool', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1304, 1, 'vi', 'core/setting/setting', 'general.placeholder.seo_title', 'Tiêu đề SEO (tối đa 120 kí tự)', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1305, 1, 'vi', 'core/setting/setting', 'general.placeholder.seo_description', 'Mô tả SEO (tối đa 120 kí tự)', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1306, 1, 'vi', 'core/setting/setting', 'general.enable_change_admin_theme', 'Cho phép thay đổi giao diện quản trị?', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1307, 1, 'vi', 'core/setting/setting', 'general.enable', 'Bật', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1308, 1, 'vi', 'core/setting/setting', 'general.disable', 'Tắt', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1309, 1, 'vi', 'core/setting/setting', 'general.enable_cache', 'Bật bộ nhớ đệm?', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1310, 1, 'vi', 'core/setting/setting', 'general.cache_time', 'Thời gian lưu bộ nhớ đệm (phút)', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1311, 1, 'vi', 'core/setting/setting', 'general.cache_time_site_map', 'Thời gian lưu sơ đồ trang trong bộ nhớ đệm', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1312, 1, 'vi', 'core/setting/setting', 'general.admin_logo', 'Logo trang quản trị', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1313, 1, 'vi', 'core/setting/setting', 'general.admin_title', 'Tiêu đề trang quản trị', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1314, 1, 'vi', 'core/setting/setting', 'general.admin_title_placeholder', 'Tiêu đề hiển thị trên thẻ trình duyệt', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1315, 1, 'vi', 'core/setting/setting', 'general.rich_editor', 'Bộ soạn thảo văn bản', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1316, 1, 'vi', 'core/setting/setting', 'general.cache_block', 'Bộ nhớ đệm', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1317, 1, 'vi', 'core/setting/setting', 'general.yes', 'Bật', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1318, 1, 'vi', 'core/setting/setting', 'general.no', 'Tắt', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1319, 1, 'vi', 'core/setting/setting', 'email.subject', 'Tiêu đề', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1320, 1, 'vi', 'core/setting/setting', 'email.content', 'Nội dung', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1321, 1, 'vi', 'core/setting/setting', 'email.title', 'Cấu hình email template', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1322, 1, 'vi', 'core/setting/setting', 'email.description', 'Cấu trúc file template sử dụng HTML và các biến trong hệ thống.', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1323, 1, 'vi', 'core/setting/setting', 'email.reset_to_default', 'Khôi phục về mặc định', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1324, 1, 'vi', 'core/setting/setting', 'email.back', 'Trở lại trang cài đặt', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1325, 1, 'vi', 'core/setting/setting', 'email.reset_success', 'Khôi phục mặc định thành công', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1326, 1, 'vi', 'core/setting/setting', 'email.confirm_reset', 'Xác nhận khôi phục mặc định?', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1327, 1, 'vi', 'core/setting/setting', 'email.confirm_message', 'Bạn có chắc chắn muốn khôi phục về bản mặc định?', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1328, 1, 'vi', 'core/setting/setting', 'email.continue', 'Tiếp tục', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1329, 1, 'vi', 'core/setting/setting', 'email.sender_name', 'Tên người gửi', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1330, 1, 'vi', 'core/setting/setting', 'email.sender_name_placeholder', 'Tên', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1331, 1, 'vi', 'core/setting/setting', 'email.sender_email', 'Email của người gửi', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1332, 1, 'vi', 'core/setting/setting', 'email.port', 'Cổng', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1333, 1, 'vi', 'core/setting/setting', 'email.port_placeholder', 'Ví dụ: 587', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1334, 1, 'vi', 'core/setting/setting', 'email.host', 'Máy chủ', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1335, 1, 'vi', 'core/setting/setting', 'email.host_placeholder', 'Ví dụ: smtp.gmail.com', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1336, 1, 'vi', 'core/setting/setting', 'email.username', 'Tên đăng nhập', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1337, 1, 'vi', 'core/setting/setting', 'email.username_placeholder', 'Tên đăng nhập vào máy chủ mail', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1338, 1, 'vi', 'core/setting/setting', 'email.password', 'Mật khẩu', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1339, 1, 'vi', 'core/setting/setting', 'email.password_placeholder', 'Mật khẩu đăng nhập vào máy chủ mail', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1340, 1, 'vi', 'core/setting/setting', 'email.encryption', 'Mã hoá', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1341, 1, 'vi', 'core/setting/setting', 'email.mail_gun_domain', 'Tên miền', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1342, 1, 'vi', 'core/setting/setting', 'email.mail_gun_domain_placeholder', 'Tên miền', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1343, 1, 'vi', 'core/setting/setting', 'email.mail_gun_secret', 'Chuỗi bí mật', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1344, 1, 'vi', 'core/setting/setting', 'email.mail_gun_secret_placeholder', 'Chuỗi bí mật', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1345, 1, 'vi', 'core/setting/setting', 'email.template_title', 'Mẫu giao diện email', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1346, 1, 'vi', 'core/setting/setting', 'email.template_description', 'Giao diện mặc định cho tất cả email', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1347, 1, 'vi', 'core/setting/setting', 'email.template_header', 'Mẫu cho phần trên của email', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1348, 1, 'vi', 'core/setting/setting', 'email.template_header_description', 'Phần trên của tất cả email', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1349, 1, 'vi', 'core/setting/setting', 'email.template_footer', 'Mẫu cho phần dưới của email', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1350, 1, 'vi', 'core/setting/setting', 'email.template_footer_description', 'Phần dưới của tất cả email', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1351, 1, 'vi', 'core/setting/setting', 'save_settings', 'Lưu cài đặt', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1352, 1, 'vi', 'core/setting/setting', 'template', 'Mẫu', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1353, 1, 'vi', 'core/setting/setting', 'description', 'Mô tả', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1354, 1, 'vi', 'core/setting/setting', 'enable', 'Bật', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1355, 1, 'vi', 'core/setting/setting', 'test_send_mail', 'Gửi thử nghiệm', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1356, 1, 'en', 'core/table/general', 'operations', 'Operations', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1357, 1, 'en', 'core/table/general', 'loading_data', 'Loading data from server', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1358, 1, 'en', 'core/table/general', 'display', 'Display', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1359, 1, 'en', 'core/table/general', 'all', 'All', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1360, 1, 'en', 'core/table/general', 'edit_entry', 'Edit', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1361, 1, 'en', 'core/table/general', 'delete_entry', 'Delete', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1362, 1, 'en', 'core/table/general', 'show_from', 'Showing from', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1363, 1, 'en', 'core/table/general', 'to', 'to', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1364, 1, 'en', 'core/table/general', 'in', 'in', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1365, 1, 'en', 'core/table/general', 'records', 'records', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1366, 1, 'en', 'core/table/general', 'no_data', 'No data to display', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1367, 1, 'en', 'core/table/general', 'no_record', 'No record', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1368, 1, 'en', 'core/table/general', 'loading', 'Loading data from server', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1369, 1, 'en', 'core/table/general', 'confirm_delete', 'Confirm delete', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1370, 1, 'en', 'core/table/general', 'confirm_delete_msg', 'Do you really want to delete this record?', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1371, 1, 'en', 'core/table/general', 'cancel', 'Cancel', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1372, 1, 'en', 'core/table/general', 'delete', 'Delete', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1373, 1, 'en', 'core/table/general', 'close', 'Close', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1374, 1, 'en', 'core/table/general', 'contains', 'Contains', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1375, 1, 'en', 'core/table/general', 'is_equal_to', 'Is equal to', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1376, 1, 'en', 'core/table/general', 'greater_than', 'Greater than', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1377, 1, 'en', 'core/table/general', 'less_than', 'Less than', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1378, 1, 'en', 'core/table/general', 'value', 'Value', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1379, 1, 'en', 'core/table/general', 'select_field', 'Select field', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1380, 1, 'en', 'core/table/general', 'reset', 'Reset', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1381, 1, 'en', 'core/table/general', 'add_additional_filter', 'Add additional filter', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1382, 1, 'en', 'core/table/general', 'apply', 'Apply', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1383, 1, 'en', 'core/table/general', 'filters', 'Filters', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1384, 1, 'en', 'core/table/general', 'bulk_change', 'Bulk changes', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1385, 1, 'en', 'core/table/general', 'select_option', 'Select option', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1386, 1, 'en', 'core/table/general', 'bulk_actions', 'Bulk Actions', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1387, 1, 'en', 'core/table/general', 'save_bulk_change_success', 'Update data for selected record(s) successfully!', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1388, 1, 'en', 'core/table/general', 'please_select_record', 'Please select at least one record to perform this action!', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1389, 1, 'en', 'core/table/general', 'filtered', '(filtered from _MAX_ total records)', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1390, 1, 'en', 'core/table/general', 'search', 'Search...', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1391, 1, 'en', 'core/table/table', 'operations', 'Operations', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1392, 1, 'en', 'core/table/table', 'loading_data', 'Loading data from server', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1393, 1, 'en', 'core/table/table', 'display', 'Display', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1394, 1, 'en', 'core/table/table', 'all', 'All', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1395, 1, 'en', 'core/table/table', 'edit_entry', 'Edit', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1396, 1, 'en', 'core/table/table', 'delete_entry', 'Delete', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1397, 1, 'en', 'core/table/table', 'show_from', 'Showing from', '2021-07-12 22:42:24', '2021-07-12 22:42:24'),
(1398, 1, 'en', 'core/table/table', 'to', 'to', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1399, 1, 'en', 'core/table/table', 'in', 'in', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1400, 1, 'en', 'core/table/table', 'records', 'records', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1401, 1, 'en', 'core/table/table', 'no_data', 'No data to display', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1402, 1, 'en', 'core/table/table', 'no_record', 'No record', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1403, 1, 'en', 'core/table/table', 'loading', 'Loading data from server', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1404, 1, 'en', 'core/table/table', 'confirm_delete', 'Confirm delete', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1405, 1, 'en', 'core/table/table', 'confirm_delete_msg', 'Do you really want to delete this record?', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1406, 1, 'en', 'core/table/table', 'cancel', 'Cancel', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1407, 1, 'en', 'core/table/table', 'delete', 'Delete', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1408, 1, 'en', 'core/table/table', 'close', 'Close', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1409, 1, 'en', 'core/table/table', 'contains', 'Contains', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1410, 1, 'en', 'core/table/table', 'is_equal_to', 'Is equal to', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1411, 1, 'en', 'core/table/table', 'greater_than', 'Greater than', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1412, 1, 'en', 'core/table/table', 'less_than', 'Less than', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1413, 1, 'en', 'core/table/table', 'value', 'Value', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1414, 1, 'en', 'core/table/table', 'select_field', 'Select field', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1415, 1, 'en', 'core/table/table', 'reset', 'Reset', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1416, 1, 'en', 'core/table/table', 'add_additional_filter', 'Add additional filter', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1417, 1, 'en', 'core/table/table', 'apply', 'Apply', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1418, 1, 'en', 'core/table/table', 'filters', 'Filters', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1419, 1, 'en', 'core/table/table', 'bulk_change', 'Bulk changes', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1420, 1, 'en', 'core/table/table', 'select_option', 'Select option', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1421, 1, 'en', 'core/table/table', 'bulk_actions', 'Bulk Actions', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1422, 1, 'en', 'core/table/table', 'save_bulk_change_success', 'Update data for selected record(s) successfully!', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1423, 1, 'en', 'core/table/table', 'please_select_record', 'Please select at least one record to perform this action!', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1424, 1, 'en', 'core/table/table', 'filtered', '(filtered from _MAX_ total records)', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1425, 1, 'en', 'core/table/table', 'search', 'Search...', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1426, 1, 'vi', 'core/table/general', 'operations', 'Hành động', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1427, 1, 'vi', 'core/table/general', 'loading_data', 'Đang tải dữ liệu từ hệ thống', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1428, 1, 'vi', 'core/table/general', 'display', 'Hiển thị', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1429, 1, 'vi', 'core/table/general', 'all', 'Tất cả', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1430, 1, 'vi', 'core/table/general', 'edit_entry', 'Sửa', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1431, 1, 'vi', 'core/table/general', 'delete_entry', 'Xoá', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1432, 1, 'vi', 'core/table/general', 'show_from', 'Hiển thị từ', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1433, 1, 'vi', 'core/table/general', 'to', 'đến', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1434, 1, 'vi', 'core/table/general', 'in', 'trong tổng số', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1435, 1, 'vi', 'core/table/general', 'records', 'bản ghi', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1436, 1, 'vi', 'core/table/general', 'no_data', 'Không có dữ liệu để hiển thị', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1437, 1, 'vi', 'core/table/general', 'no_record', 'không có bản ghi nào', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1438, 1, 'vi', 'core/table/general', 'loading', 'Đang tải dữ liệu từ hệ thống', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1439, 1, 'vi', 'core/table/general', 'confirm_delete', 'Xác nhận xoá', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1440, 1, 'vi', 'core/table/general', 'confirm_delete_msg', 'Bạn có chắc chắn muốn xoá bản ghi này?', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1441, 1, 'vi', 'core/table/general', 'cancel', 'Huỷ bỏ', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1442, 1, 'vi', 'core/table/general', 'delete', 'Xoá', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1443, 1, 'vi', 'core/table/general', 'close', 'Đóng', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1444, 1, 'vi', 'core/table/general', 'is_equal_to', 'Bằng với', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1445, 1, 'vi', 'core/table/general', 'greater_than', 'Lớn hơn', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1446, 1, 'vi', 'core/table/general', 'less_than', 'Nhỏ hơn', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1447, 1, 'vi', 'core/table/general', 'value', 'Giá trị', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1448, 1, 'vi', 'core/table/general', 'select_field', 'Chọn trường', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1449, 1, 'vi', 'core/table/general', 'reset', 'Làm mới', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1450, 1, 'vi', 'core/table/general', 'add_additional_filter', 'Thêm bộ lọc', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1451, 1, 'vi', 'core/table/general', 'apply', 'Áp dụng', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1452, 1, 'vi', 'core/table/general', 'select_option', 'Lựa chọn', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1453, 1, 'vi', 'core/table/general', 'filters', 'Lọc dữ liệu', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1454, 1, 'vi', 'core/table/general', 'bulk_change', 'Thay đổi hàng loạt', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1455, 1, 'vi', 'core/table/general', 'bulk_actions', 'Hành động', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1456, 1, 'vi', 'core/table/general', 'contains', 'Bao gồm', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1457, 1, 'vi', 'core/table/general', 'filtered', '(đã được lọc từ _MAX_ bản ghi)', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1458, 1, 'en', 'packages/menu/menu', 'name', 'Menus', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1459, 1, 'en', 'packages/menu/menu', 'key_name', 'Menu name (key: :key)', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1460, 1, 'en', 'packages/menu/menu', 'basic_info', 'Basic information', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1461, 1, 'en', 'packages/menu/menu', 'add_to_menu', 'Add to menu', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1462, 1, 'en', 'packages/menu/menu', 'custom_link', 'Custom link', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1463, 1, 'en', 'packages/menu/menu', 'add_link', 'Add link', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1464, 1, 'en', 'packages/menu/menu', 'structure', 'Menu structure', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1465, 1, 'en', 'packages/menu/menu', 'remove', 'Remove', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1466, 1, 'en', 'packages/menu/menu', 'cancel', 'Cancel', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1467, 1, 'en', 'packages/menu/menu', 'title', 'Title', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1468, 1, 'en', 'packages/menu/menu', 'icon', 'Icon', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1469, 1, 'en', 'packages/menu/menu', 'url', 'URL', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1470, 1, 'en', 'packages/menu/menu', 'target', 'Target', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1471, 1, 'en', 'packages/menu/menu', 'css_class', 'CSS class', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1472, 1, 'en', 'packages/menu/menu', 'self_open_link', 'Open link directly', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1473, 1, 'en', 'packages/menu/menu', 'blank_open_link', 'Open link in new tab', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1474, 1, 'en', 'packages/menu/menu', 'create', 'Create menu', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1475, 1, 'en', 'packages/menu/menu', 'edit', 'Edit menu', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1476, 1, 'en', 'packages/menu/menu', 'menu_settings', 'Menu settings', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1477, 1, 'en', 'packages/menu/menu', 'display_location', 'Display location', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1478, 1, 'vi', 'packages/menu/menu', 'name', 'Menu', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1479, 1, 'vi', 'packages/menu/menu', 'cancel', 'Hủy bỏ', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1480, 1, 'vi', 'packages/menu/menu', 'add_link', 'Thêm liên kết', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1481, 1, 'vi', 'packages/menu/menu', 'add_to_menu', 'Thêm vào trình đơn', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1482, 1, 'vi', 'packages/menu/menu', 'basic_info', 'Thông tin cơ bản', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1483, 1, 'vi', 'packages/menu/menu', 'blank_open_link', 'Mở liên kết trong tab mới', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1484, 1, 'vi', 'packages/menu/menu', 'css_class', 'CSS class', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1485, 1, 'vi', 'packages/menu/menu', 'custom_link', 'Liên kết tùy chọn', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1486, 1, 'vi', 'packages/menu/menu', 'icon', 'Biểu tượng', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1487, 1, 'vi', 'packages/menu/menu', 'key_name', 'Tên menu (key::key)', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1488, 1, 'vi', 'packages/menu/menu', 'remove', 'Xóa', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1489, 1, 'vi', 'packages/menu/menu', 'self_open_link', 'Mở liên kết trong tab hiện tại', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1490, 1, 'vi', 'packages/menu/menu', 'structure', 'Cấu trúc trình đơn', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1491, 1, 'vi', 'packages/menu/menu', 'target', 'Target', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1492, 1, 'vi', 'packages/menu/menu', 'title', 'Tiêu đề', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1493, 1, 'vi', 'packages/menu/menu', 'url', 'URL', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1494, 1, 'vi', 'packages/menu/menu', 'create', 'Tạo trình đơn', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1495, 1, 'vi', 'packages/menu/menu', 'edit', 'Sửa trình đơn', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1496, 1, 'en', 'packages/optimize/optimize', 'settings.title', 'Optimize page speed', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1497, 1, 'en', 'packages/optimize/optimize', 'settings.description', 'Minify HTML output, inline CSS, remove comments...', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1498, 1, 'en', 'packages/optimize/optimize', 'settings.enable', 'Enable optimize page speed?', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1499, 1, 'en', 'packages/page/pages', 'create', 'Create new page', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1500, 1, 'en', 'packages/page/pages', 'edit', 'Edit page', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1501, 1, 'en', 'packages/page/pages', 'form.name', 'Name', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1502, 1, 'en', 'packages/page/pages', 'form.name_placeholder', 'Page\'s name (Maximum 120 characters)', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1503, 1, 'en', 'packages/page/pages', 'form.content', 'Content', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1504, 1, 'en', 'packages/page/pages', 'form.note', 'Note content', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1505, 1, 'en', 'packages/page/pages', 'notices.no_select', 'Please select at least one record to take this action!', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1506, 1, 'en', 'packages/page/pages', 'notices.update_success_message', 'Update successfully', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1507, 1, 'en', 'packages/page/pages', 'cannot_delete', 'Page could not be deleted', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1508, 1, 'en', 'packages/page/pages', 'deleted', 'Page deleted', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1509, 1, 'en', 'packages/page/pages', 'pages', 'Pages', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1510, 1, 'en', 'packages/page/pages', 'menu', 'Pages', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1511, 1, 'en', 'packages/page/pages', 'menu_name', 'Pages', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1512, 1, 'en', 'packages/page/pages', 'edit_this_page', 'Edit this page', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1513, 1, 'en', 'packages/page/pages', 'total_pages', 'Total pages', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1514, 1, 'en', 'packages/page/pages', 'settings.show_on_front', 'Your homepage displays', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1515, 1, 'en', 'packages/page/pages', 'settings.select', '— Select —', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1516, 1, 'en', 'packages/page/pages', 'front_page', 'Front Page', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1517, 1, 'vi', 'packages/page/pages', 'create', 'Thêm trang', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1518, 1, 'vi', 'packages/page/pages', 'edit', 'Sửa trang', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1519, 1, 'vi', 'packages/page/pages', 'form.name', 'Tiêu đề trang', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1520, 1, 'vi', 'packages/page/pages', 'form.note', 'Nội dung ghi chú', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1521, 1, 'vi', 'packages/page/pages', 'form.name_placeholder', 'Tên trang (tối đa 120 kí tự)', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1522, 1, 'vi', 'packages/page/pages', 'form.content', 'Nội dung', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1523, 1, 'vi', 'packages/page/pages', 'notices.no_select', 'Chọn ít nhất 1 trang để thực hiện hành động này!', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1524, 1, 'vi', 'packages/page/pages', 'notices.update_success_message', 'Cập nhật thành công', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1525, 1, 'vi', 'packages/page/pages', 'deleted', 'Xóa trang thành công', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1526, 1, 'vi', 'packages/page/pages', 'cannot_delete', 'Không thể xóa trang', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1527, 1, 'vi', 'packages/page/pages', 'menu', 'Trang', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1528, 1, 'vi', 'packages/page/pages', 'menu_name', 'Trang', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1529, 1, 'vi', 'packages/page/pages', 'edit_this_page', 'Sửa trang này', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1530, 1, 'vi', 'packages/page/pages', 'pages', 'Trang', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1531, 1, 'en', 'packages/plugin-management/plugin', 'enabled', 'Enabled', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1532, 1, 'en', 'packages/plugin-management/plugin', 'deactivated', 'Deactivated', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1533, 1, 'en', 'packages/plugin-management/plugin', 'activated', 'Activated', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1534, 1, 'en', 'packages/plugin-management/plugin', 'activate', 'Activate', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1535, 1, 'en', 'packages/plugin-management/plugin', 'deactivate', 'Deactivate', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1536, 1, 'en', 'packages/plugin-management/plugin', 'author', 'By', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1537, 1, 'en', 'packages/plugin-management/plugin', 'update_plugin_status_success', 'Update plugin successfully', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1538, 1, 'en', 'packages/plugin-management/plugin', 'plugins', 'Plugins', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1539, 1, 'en', 'packages/plugin-management/plugin', 'missing_required_plugins', 'Please activate plugin(s): :plugins before activate this plugin!', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1540, 1, 'en', 'packages/plugin-management/plugin', 'remove', 'Remove', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1541, 1, 'en', 'packages/plugin-management/plugin', 'remove_plugin_success', 'Remove plugin successfully!', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1542, 1, 'en', 'packages/plugin-management/plugin', 'remove_plugin', 'Remove plugin', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1543, 1, 'en', 'packages/plugin-management/plugin', 'remove_plugin_confirm_message', 'Do you really want to remove this plugin?', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1544, 1, 'en', 'packages/plugin-management/plugin', 'remove_plugin_confirm_yes', 'Yes, remove it!', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1545, 1, 'en', 'packages/plugin-management/plugin', 'total_plugins', 'Total plugins', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1546, 1, 'en', 'packages/plugin-management/plugin', 'invalid_plugin', 'This plugin is not a valid plugin, please check it again!', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1547, 1, 'en', 'packages/plugin-management/plugin', 'version', 'Version', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1548, 1, 'en', 'packages/plugin-management/plugin', 'invalid_json', 'Invalid plugin.json!', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1549, 1, 'en', 'packages/plugin-management/plugin', 'activate_success', 'Activate plugin successfully!', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1550, 1, 'en', 'packages/plugin-management/plugin', 'activated_already', 'This plugin is activated already!', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1551, 1, 'en', 'packages/plugin-management/plugin', 'plugin_not_exist', 'This plugin is not exists.', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1552, 1, 'en', 'packages/plugin-management/plugin', 'missing_json_file', 'Missing file plugin.json!', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1553, 1, 'en', 'packages/plugin-management/plugin', 'plugin_invalid', 'Plugin is valid!', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1554, 1, 'en', 'packages/plugin-management/plugin', 'published_assets_success', 'Publish assets for plugin :name successfully!', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1555, 1, 'en', 'packages/plugin-management/plugin', 'plugin_removed', 'Plugin has been removed!', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1556, 1, 'en', 'packages/plugin-management/plugin', 'deactivated_success', 'Deactivate plugin successfully!', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1557, 1, 'en', 'packages/plugin-management/plugin', 'deactivated_already', 'This plugin is deactivated already!', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1558, 1, 'en', 'packages/plugin-management/plugin', 'folder_is_not_writeable', 'Cannot write files! Folder :name is not writable. Please chmod to make it writable!', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1559, 1, 'en', 'packages/plugin-management/plugin', 'plugin_is_not_ready', 'Plugin :name is not ready to use', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1560, 1, 'vi', 'packages/plugin-management/plugin', 'activate', 'Kích hoạt', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1561, 1, 'vi', 'packages/plugin-management/plugin', 'author', 'Tác giả', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1562, 1, 'vi', 'packages/plugin-management/plugin', 'version', 'Phiên bản', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1563, 1, 'vi', 'packages/plugin-management/plugin', 'activated', 'Đã kích hoạt', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1564, 1, 'vi', 'packages/plugin-management/plugin', 'deactivate', 'Hủy kích hoạt', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1565, 1, 'vi', 'packages/plugin-management/plugin', 'deactivated', 'Đã vô hiệu', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1566, 1, 'vi', 'packages/plugin-management/plugin', 'enabled', 'Kích hoạt', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1567, 1, 'vi', 'packages/plugin-management/plugin', 'invalid_plugin', 'Gói mở rộng không hợp lệ', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1568, 1, 'vi', 'packages/plugin-management/plugin', 'update_plugin_status_success', 'Cập nhật trạng thái gói mở rộng thành công', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1569, 1, 'vi', 'packages/plugin-management/plugin', 'missing_required_plugins', 'Vui lòng kích hoạt các tiện ích mở rộng :plugins trước khi kích hoạt tiện ích này', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1570, 1, 'vi', 'packages/plugin-management/plugin', 'plugins', 'Tiện ích mở rộng', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1571, 1, 'en', 'packages/seo-helper/seo-helper', 'meta_box_header', 'Search Engine Optimize', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1572, 1, 'en', 'packages/seo-helper/seo-helper', 'edit_seo_meta', 'Edit SEO meta', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1573, 1, 'en', 'packages/seo-helper/seo-helper', 'default_description', 'Setup meta title & description to make your site easy to discovered on search engines such as Google', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1574, 1, 'en', 'packages/seo-helper/seo-helper', 'seo_title', 'SEO Title', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1575, 1, 'en', 'packages/seo-helper/seo-helper', 'seo_description', 'SEO description', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1576, 1, 'vi', 'packages/seo-helper/seo-helper', 'meta_box_header', 'Tối ưu hoá bộ máy tìm kiếm (SEO)', '2021-07-12 22:42:25', '2021-07-12 22:42:25');
INSERT INTO `translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1577, 1, 'vi', 'packages/seo-helper/seo-helper', 'edit_seo_meta', 'Chỉnh sửa SEO', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1578, 1, 'vi', 'packages/seo-helper/seo-helper', 'default_description', 'Thiết lập các thẻ mô tả giúp người dùng dễ dàng tìm thấy trên công cụ tìm kiếm như Google.', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1579, 1, 'vi', 'packages/seo-helper/seo-helper', 'seo_title', 'Tiêu đề trang', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1580, 1, 'vi', 'packages/seo-helper/seo-helper', 'seo_description', 'Mô tả trang', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1581, 1, 'en', 'packages/slug/slug', 'permalink_settings', 'Permalink', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1582, 1, 'en', 'packages/slug/slug', 'settings.title', 'Permalink settings', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1583, 1, 'en', 'packages/slug/slug', 'settings.description', 'Manage permalink for all modules.', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1584, 1, 'en', 'packages/slug/slug', 'settings.preview', 'Preview', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1585, 1, 'en', 'packages/slug/slug', 'settings.turn_off_automatic_url_translation_into_latin', 'Turn off automatic URL translation into Latin?', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1586, 1, 'en', 'packages/slug/slug', 'preview', 'Preview', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1587, 1, 'en', 'packages/theme/theme', 'name', 'Themes', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1588, 1, 'en', 'packages/theme/theme', 'theme', 'Theme', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1589, 1, 'en', 'packages/theme/theme', 'author', 'Author', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1590, 1, 'en', 'packages/theme/theme', 'version', 'Version', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1591, 1, 'en', 'packages/theme/theme', 'description', 'Description', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1592, 1, 'en', 'packages/theme/theme', 'active_success', 'Activate theme :name successfully!', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1593, 1, 'en', 'packages/theme/theme', 'active', 'Active', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1594, 1, 'en', 'packages/theme/theme', 'activated', 'Activated', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1595, 1, 'en', 'packages/theme/theme', 'appearance', 'Appearance', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1596, 1, 'en', 'packages/theme/theme', 'theme_options', 'Theme options', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1597, 1, 'en', 'packages/theme/theme', 'save_changes', 'Save Changes', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1598, 1, 'en', 'packages/theme/theme', 'developer_mode', 'Developer Mode Enabled', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1599, 1, 'en', 'packages/theme/theme', 'custom_css', 'Custom CSS', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1600, 1, 'en', 'packages/theme/theme', 'custom_js', 'Custom JS', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1601, 1, 'en', 'packages/theme/theme', 'custom_header_js', 'Header JS', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1602, 1, 'en', 'packages/theme/theme', 'custom_header_js_placeholder', 'JS in header of page, wrap it inside &#x3C;script&#x3E;&#x3C;/script&#x3E;', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1603, 1, 'en', 'packages/theme/theme', 'custom_body_js', 'Body JS', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1604, 1, 'en', 'packages/theme/theme', 'custom_body_js_placeholder', 'JS in body of page, wrap it inside &#x3C;script&#x3E;&#x3C;/script&#x3E;', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1605, 1, 'en', 'packages/theme/theme', 'custom_footer_js', 'Footer JS', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1606, 1, 'en', 'packages/theme/theme', 'custom_footer_js_placeholder', 'JS in footer of page, wrap it inside &#x3C;script&#x3E;&#x3C;/script&#x3E;', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1607, 1, 'en', 'packages/theme/theme', 'remove_theme_success', 'Remove theme successfully!', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1608, 1, 'en', 'packages/theme/theme', 'theme_is_not_existed', 'This theme is not existed!', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1609, 1, 'en', 'packages/theme/theme', 'remove', 'Remove', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1610, 1, 'en', 'packages/theme/theme', 'remove_theme', 'Remove theme', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1611, 1, 'en', 'packages/theme/theme', 'remove_theme_confirm_message', 'Do you really want to remove this theme?', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1612, 1, 'en', 'packages/theme/theme', 'remove_theme_confirm_yes', 'Yes, remove it!', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1613, 1, 'en', 'packages/theme/theme', 'total_themes', 'Total themes', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1614, 1, 'en', 'packages/theme/theme', 'show_admin_bar', 'Show admin bar (When admin logged in, still show admin bar in website)?', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1615, 1, 'en', 'packages/theme/theme', 'settings.title', 'Theme', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1616, 1, 'en', 'packages/theme/theme', 'settings.description', 'Setting for theme', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1617, 1, 'en', 'packages/theme/theme', 'add_new', 'Add new', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1618, 1, 'en', 'packages/theme/theme', 'theme_activated_already', 'Theme \":name\" is activated already!', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1619, 1, 'en', 'packages/theme/theme', 'missing_json_file', 'Missing file theme.json!', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1620, 1, 'en', 'packages/theme/theme', 'theme_invalid', 'Theme is valid!', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1621, 1, 'en', 'packages/theme/theme', 'published_assets_success', 'Publish assets for :themes successfully!', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1622, 1, 'en', 'packages/theme/theme', 'cannot_remove_theme', 'Cannot remove activated theme, please activate another theme before removing \":name\"!', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1623, 1, 'en', 'packages/theme/theme', 'theme_deleted', 'Theme \":name\" has been destroyed.', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1624, 1, 'en', 'packages/theme/theme', 'removed_assets', 'Remove assets of a theme :name successfully!', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1625, 1, 'en', 'packages/theme/theme', 'update_custom_css_success', 'Update custom CSS successfully!', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1626, 1, 'en', 'packages/theme/theme', 'update_custom_js_success', 'Update custom JS successfully!', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1627, 1, 'en', 'packages/theme/theme', 'go_to_dashboard', 'Go to dashboard', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1628, 1, 'en', 'packages/theme/theme', 'custom_css_placeholder', 'Using Ctrl + Space to autocomplete.', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1629, 1, 'en', 'packages/theme/theme', 'theme_option_general', 'General', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1630, 1, 'en', 'packages/theme/theme', 'theme_option_general_description', 'General settings', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1631, 1, 'en', 'packages/theme/theme', 'theme_option_seo_open_graph_image', 'SEO default Open Graph image', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1632, 1, 'en', 'packages/theme/theme', 'theme_option_logo', 'Logo', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1633, 1, 'en', 'packages/theme/theme', 'theme_option_favicon', 'Favicon', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1634, 1, 'en', 'packages/theme/theme', 'folder_is_not_writeable', 'Cannot write files! Folder :name is not writable. Please chmod to make it writable!', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1635, 1, 'vi', 'packages/theme/theme', 'activated', 'Đã kích hoạt', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1636, 1, 'vi', 'packages/theme/theme', 'active', 'Kích hoạt', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1637, 1, 'vi', 'packages/theme/theme', 'active_success', 'Kích hoạt giao diện thành công!', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1638, 1, 'vi', 'packages/theme/theme', 'author', 'Tác giả', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1639, 1, 'vi', 'packages/theme/theme', 'description', 'Mô tả', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1640, 1, 'vi', 'packages/theme/theme', 'theme', 'Giao diện', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1641, 1, 'vi', 'packages/theme/theme', 'theme_options', 'Tuỳ chọn giao diện', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1642, 1, 'vi', 'packages/theme/theme', 'version', 'Phiên bản', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1643, 1, 'vi', 'packages/theme/theme', 'save_changes', 'Lưu thay đổi', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1644, 1, 'vi', 'packages/theme/theme', 'developer_mode', 'Đang kích hoạt chế độ thử nghiệm', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1645, 1, 'vi', 'packages/theme/theme', 'custom_css', 'Tuỳ chỉnh CSS', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1646, 1, 'en', 'packages/widget/global', 'name', 'Widgets', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1647, 1, 'en', 'packages/widget/global', 'create', 'New widget', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1648, 1, 'en', 'packages/widget/global', 'edit', 'Edit widget', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1649, 1, 'en', 'packages/widget/global', 'delete', 'Delete', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1650, 1, 'en', 'packages/widget/global', 'available', 'Available Widgets', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1651, 1, 'en', 'packages/widget/global', 'instruction', 'To activate a widget drag it to a sidebar or click on it. To deactivate a widget and delete its settings, drag it back.', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1652, 1, 'en', 'packages/widget/global', 'number_tag_display', 'Number tags will be display', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1653, 1, 'en', 'packages/widget/global', 'number_post_display', 'Number posts will be display', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1654, 1, 'en', 'packages/widget/global', 'select_menu', 'Select Menu', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1655, 1, 'en', 'packages/widget/global', 'widget_text', 'Text', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1656, 1, 'en', 'packages/widget/global', 'widget_text_description', 'Arbitrary text or HTML.', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1657, 1, 'en', 'packages/widget/global', 'widget_recent_post', 'Recent Posts', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1658, 1, 'en', 'packages/widget/global', 'widget_recent_post_description', 'Recent posts widget.', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1659, 1, 'en', 'packages/widget/global', 'widget_custom_menu', 'Custom Menu', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1660, 1, 'en', 'packages/widget/global', 'widget_custom_menu_description', 'Add a custom menu to your widget area.', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1661, 1, 'en', 'packages/widget/global', 'widget_tag', 'Tags', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1662, 1, 'en', 'packages/widget/global', 'widget_tag_description', 'Popular tags', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1663, 1, 'en', 'packages/widget/global', 'save_success', 'Save widget successfully!', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1664, 1, 'en', 'packages/widget/global', 'delete_success', 'Delete widget successfully!', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1665, 1, 'en', 'packages/widget/widget', 'name', 'Widgets', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1666, 1, 'en', 'packages/widget/widget', 'create', 'New widget', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1667, 1, 'en', 'packages/widget/widget', 'edit', 'Edit widget', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1668, 1, 'en', 'packages/widget/widget', 'delete', 'Delete', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1669, 1, 'en', 'packages/widget/widget', 'available', 'Available Widgets', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1670, 1, 'en', 'packages/widget/widget', 'instruction', 'To activate a widget drag it to a sidebar or click on it. To deactivate a widget and delete its settings, drag it back.', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1671, 1, 'en', 'packages/widget/widget', 'number_tag_display', 'Number tags will be display', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1672, 1, 'en', 'packages/widget/widget', 'number_post_display', 'Number posts will be display', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1673, 1, 'en', 'packages/widget/widget', 'select_menu', 'Select Menu', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1674, 1, 'en', 'packages/widget/widget', 'widget_text', 'Text', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1675, 1, 'en', 'packages/widget/widget', 'widget_text_description', 'Arbitrary text or HTML.', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1676, 1, 'en', 'packages/widget/widget', 'widget_recent_post', 'Recent Posts', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1677, 1, 'en', 'packages/widget/widget', 'widget_recent_post_description', 'Recent posts widget.', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1678, 1, 'en', 'packages/widget/widget', 'widget_custom_menu', 'Custom Menu', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1679, 1, 'en', 'packages/widget/widget', 'widget_custom_menu_description', 'Add a custom menu to your widget area.', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1680, 1, 'en', 'packages/widget/widget', 'widget_tag', 'Tags', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1681, 1, 'en', 'packages/widget/widget', 'widget_tag_description', 'Popular tags', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1682, 1, 'en', 'packages/widget/widget', 'save_success', 'Save widget successfully!', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1683, 1, 'en', 'packages/widget/widget', 'delete_success', 'Delete widget successfully!', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1684, 1, 'en', 'packages/widget/widget', 'primary_sidebar_name', 'Primary sidebar', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1685, 1, 'en', 'packages/widget/widget', 'primary_sidebar_description', 'Primary sidebar section', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1686, 1, 'vi', 'packages/widget/global', 'name', 'Widgets', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1687, 1, 'vi', 'packages/widget/global', 'create', 'New widget', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1688, 1, 'vi', 'packages/widget/global', 'edit', 'Edit widget', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1689, 1, 'vi', 'packages/widget/global', 'available', 'Tiện ích có sẵn', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1690, 1, 'vi', 'packages/widget/global', 'delete', 'Xóa', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1691, 1, 'vi', 'packages/widget/global', 'instruction', 'Để kích hoạt tiện ích, hãy kéo nó vào sidebar hoặc nhấn vào nó. Để hủy kích hoạt tiện ích và xóa các thiết lập của tiện ích, kéo nó quay trở lại.', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1692, 1, 'vi', 'packages/widget/global', 'number_post_display', 'Số bài viết sẽ hiển thị', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1693, 1, 'vi', 'packages/widget/global', 'number_tag_display', 'Số thẻ sẽ hiển thị', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1694, 1, 'vi', 'packages/widget/global', 'select_menu', 'Lựa chọn trình đơn', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1695, 1, 'vi', 'packages/widget/global', 'widget_custom_menu', 'Menu tùy chỉnh', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1696, 1, 'vi', 'packages/widget/global', 'widget_custom_menu_description', 'Thêm menu tùy chỉnh vào khu vực tiện ích của bạn', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1697, 1, 'vi', 'packages/widget/global', 'widget_recent_post', 'Bài viết gần đây', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1698, 1, 'vi', 'packages/widget/global', 'widget_recent_post_description', 'Tiện ích bài viết gần đây', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1699, 1, 'vi', 'packages/widget/global', 'widget_tag', 'Thẻ', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1700, 1, 'vi', 'packages/widget/global', 'widget_tag_description', 'Thẻ phổ biến, sử dụng nhiều', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1701, 1, 'vi', 'packages/widget/global', 'widget_text', 'Văn bản', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1702, 1, 'vi', 'packages/widget/global', 'widget_text_description', 'Văn bản tùy ý hoặc HTML.', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1703, 1, 'vi', 'packages/widget/global', 'delete_success', 'Xoá tiện ích thành công', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1704, 1, 'vi', 'packages/widget/global', 'save_success', 'Lưu tiện ích thành công!', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1705, 1, 'en', 'plugins/ads/ads', 'name', 'Ads', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1706, 1, 'en', 'plugins/ads/ads', 'create', 'New ads', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1707, 1, 'en', 'plugins/ads/ads', 'edit', 'Edit ads', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1708, 1, 'en', 'plugins/ads/ads', 'location', 'Location', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1709, 1, 'en', 'plugins/ads/ads', 'url', 'URL', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1710, 1, 'en', 'plugins/ads/ads', 'expired_at', 'Expired at', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1711, 1, 'en', 'plugins/ads/ads', 'key', 'Key', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1712, 1, 'en', 'plugins/ads/ads', 'shortcode', 'Shortcode', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1713, 1, 'en', 'plugins/ads/ads', 'clicked', 'Clicked', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1714, 1, 'en', 'plugins/ads/ads', 'not_set', 'Not set', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1715, 1, 'en', 'plugins/analytics/analytics', 'sessions', 'Sessions', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1716, 1, 'en', 'plugins/analytics/analytics', 'visitors', 'Visitors', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1717, 1, 'en', 'plugins/analytics/analytics', 'pageviews', 'Pageviews', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1718, 1, 'en', 'plugins/analytics/analytics', 'bounce_rate', 'Bounce Rate', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1719, 1, 'en', 'plugins/analytics/analytics', 'page_session', 'Pages/Session', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1720, 1, 'en', 'plugins/analytics/analytics', 'avg_duration', 'Avg. Duration', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1721, 1, 'en', 'plugins/analytics/analytics', 'percent_new_session', 'Percent new session', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1722, 1, 'en', 'plugins/analytics/analytics', 'new_users', 'New visitors', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1723, 1, 'en', 'plugins/analytics/analytics', 'visits', 'visits', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1724, 1, 'en', 'plugins/analytics/analytics', 'views', 'views', '2021-07-12 22:42:25', '2021-07-12 22:42:25'),
(1725, 1, 'en', 'plugins/analytics/analytics', 'view_id_not_specified', 'You must provide a valid view id. The document here: <a href=\"https://docs.botble.com/cms/:version/plugin-analytics\" target=\"_blank\">https://docs.botble.com/cms/:version/plugin-analytics</a>', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1726, 1, 'en', 'plugins/analytics/analytics', 'credential_is_not_valid', 'Analytics credentials is not valid. The document here: <a href=\"https://docs.botble.com/cms/:version/plugin-analytics\" target=\"_blank\">https://docs.botble.com/cms/:version/plugin-analytics</a>', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1727, 1, 'en', 'plugins/analytics/analytics', 'start_date_can_not_before_end_date', 'Start date :start_date cannot be after end date :end_date', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1728, 1, 'en', 'plugins/analytics/analytics', 'wrong_configuration', 'To view analytics you\'ll need to get a google analytics client id and add it to your settings. <br /> You also need JSON credential data. <br /> The document here: <a href=\"https://docs.botble.com/cms/:version/plugin-analytics\" target=\"_blank\">https://docs.botble.com/cms/:version/plugin-analytics</a>', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1729, 1, 'en', 'plugins/analytics/analytics', 'settings.title', 'Google Analytics', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1730, 1, 'en', 'plugins/analytics/analytics', 'settings.description', 'Config Credentials for Google Analytics', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1731, 1, 'en', 'plugins/analytics/analytics', 'settings.tracking_code', 'Tracking ID', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1732, 1, 'en', 'plugins/analytics/analytics', 'settings.tracking_code_placeholder', 'Example: GA-12586526-8', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1733, 1, 'en', 'plugins/analytics/analytics', 'settings.view_id', 'View ID', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1734, 1, 'en', 'plugins/analytics/analytics', 'settings.view_id_description', 'Google Analytics View ID', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1735, 1, 'en', 'plugins/analytics/analytics', 'settings.json_credential', 'Service Account Credentials', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1736, 1, 'en', 'plugins/analytics/analytics', 'settings.json_credential_description', 'Service Account Credentials', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1737, 1, 'en', 'plugins/analytics/analytics', 'widget_analytics_page', 'Top Most Visit Pages', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1738, 1, 'en', 'plugins/analytics/analytics', 'widget_analytics_browser', 'Top Browsers', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1739, 1, 'en', 'plugins/analytics/analytics', 'widget_analytics_referrer', 'Top Referrers', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1740, 1, 'en', 'plugins/analytics/analytics', 'widget_analytics_general', 'Site Analytics', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1741, 1, 'vi', 'plugins/analytics/analytics', 'avg_duration', 'Trung bình', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1742, 1, 'vi', 'plugins/analytics/analytics', 'bounce_rate', 'Tỉ lệ thoát', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1743, 1, 'vi', 'plugins/analytics/analytics', 'page_session', 'Trang/Phiên', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1744, 1, 'vi', 'plugins/analytics/analytics', 'pageviews', 'Lượt xem', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1745, 1, 'vi', 'plugins/analytics/analytics', 'sessions', 'Phiên', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1746, 1, 'vi', 'plugins/analytics/analytics', 'views', 'lượt xem', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1747, 1, 'vi', 'plugins/analytics/analytics', 'visitors', 'Người truy cập', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1748, 1, 'vi', 'plugins/analytics/analytics', 'visits', 'lượt ghé thăm', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1749, 1, 'vi', 'plugins/analytics/analytics', 'credential_is_not_valid', 'Thông tin cài đặt không hợp lệ. Tài liệu hướng dẫn tại đây: <a href=\"http://docs.botble.com/cms/:version/analytics\" target=\"_blank\">http://docs.botble.com/cms/:version/analytics</a>', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1750, 1, 'vi', 'plugins/analytics/analytics', 'new_users', 'Lượt khách mới', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1751, 1, 'vi', 'plugins/analytics/analytics', 'percent_new_session', 'Tỉ lệ khách mới', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1752, 1, 'vi', 'plugins/analytics/analytics', 'start_date_can_not_before_end_date', 'Ngày bắt đầu :start_date không thể sau ngày kết thúc :end_date', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1753, 1, 'vi', 'plugins/analytics/analytics', 'view_id_not_specified', 'Bạn phải cung cấp View ID hợp lê. Tài liệu hướng dẫn tại đây: <a href=\"http://docs.botble.com/cms/:version/analytics\" target=\"_blank\">http://docs.botble.com/cms/:version/analytics</a>', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1754, 1, 'vi', 'plugins/analytics/analytics', 'wrong_configuration', 'Để xem dữ liệu thống kê Google Analytics, bạn cần lấy thông tin Client ID và thêm nó vào trong phần cài đặt. Bạn cũng cần thông tin xác thực dạng JSON. Tài liệu hướng dẫn tại đây: <a href=\"http://docs.botble.com/cms/:version/analytics\" target=\"_blank\">http://docs.botble.com/cms/:version/analytics</a>', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1755, 1, 'vi', 'plugins/analytics/analytics', 'settings.title', 'Google Analytics', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1756, 1, 'vi', 'plugins/analytics/analytics', 'settings.description', 'Config Credentials for Google Analytics', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1757, 1, 'vi', 'plugins/analytics/analytics', 'settings.tracking_code', 'Tracking Code', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1758, 1, 'vi', 'plugins/analytics/analytics', 'settings.tracking_code_placeholder', 'Example: GA-12586526-8', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1759, 1, 'vi', 'plugins/analytics/analytics', 'settings.view_id', 'View ID', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1760, 1, 'vi', 'plugins/analytics/analytics', 'settings.view_id_description', 'Google Analytics View ID', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1761, 1, 'vi', 'plugins/analytics/analytics', 'settings.json_credential', 'Service Account Credentials', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1762, 1, 'vi', 'plugins/analytics/analytics', 'settings.json_credential_description', 'Service Account Credentials', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1763, 1, 'vi', 'plugins/analytics/analytics', 'widget_analytics_browser', 'Trình duyệt truy cập nhiều', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1764, 1, 'vi', 'plugins/analytics/analytics', 'widget_analytics_general', 'Thống kê truy cập', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1765, 1, 'vi', 'plugins/analytics/analytics', 'widget_analytics_page', 'Trang được xem nhiều nhất', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1766, 1, 'vi', 'plugins/analytics/analytics', 'widget_analytics_referrer', 'Trang giới thiệu nhiều', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1767, 1, 'en', 'plugins/audit-log/history', 'name', 'Activities Logs', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1768, 1, 'en', 'plugins/audit-log/history', 'created', 'created', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1769, 1, 'en', 'plugins/audit-log/history', 'updated', 'updated', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1770, 1, 'en', 'plugins/audit-log/history', 'deleted', 'deleted', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1771, 1, 'en', 'plugins/audit-log/history', 'logged in', 'logged in', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1772, 1, 'en', 'plugins/audit-log/history', 'logged out', 'logged out', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1773, 1, 'en', 'plugins/audit-log/history', 'changed password', 'changed password', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1774, 1, 'en', 'plugins/audit-log/history', 'updated profile', 'updated profile', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1775, 1, 'en', 'plugins/audit-log/history', 'attached', 'attached', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1776, 1, 'en', 'plugins/audit-log/history', 'shared', 'shared', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1777, 1, 'en', 'plugins/audit-log/history', 'to the system', 'to the system', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1778, 1, 'en', 'plugins/audit-log/history', 'of the system', 'of the system', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1779, 1, 'en', 'plugins/audit-log/history', 'menu', 'menu', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1780, 1, 'en', 'plugins/audit-log/history', 'post', 'post', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1781, 1, 'en', 'plugins/audit-log/history', 'page', 'page', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1782, 1, 'en', 'plugins/audit-log/history', 'category', 'category', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1783, 1, 'en', 'plugins/audit-log/history', 'tag', 'tag', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1784, 1, 'en', 'plugins/audit-log/history', 'user', 'user', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1785, 1, 'en', 'plugins/audit-log/history', 'contact', 'contact', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1786, 1, 'en', 'plugins/audit-log/history', 'backup', 'backup', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1787, 1, 'en', 'plugins/audit-log/history', 'custom-field', 'custom field', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1788, 1, 'en', 'plugins/audit-log/history', 'widget_audit_logs', 'Activities Logs', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1789, 1, 'en', 'plugins/audit-log/history', 'action', 'Action', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1790, 1, 'en', 'plugins/audit-log/history', 'user_agent', 'User Agent', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1791, 1, 'en', 'plugins/audit-log/history', 'system', 'System', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1792, 1, 'en', 'plugins/audit-log/history', 'delete_all', 'Delete all records', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1793, 1, 'vi', 'plugins/audit-log/history', 'name', 'Lịch sử hoạt động', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1794, 1, 'vi', 'plugins/audit-log/history', 'created', ' đã tạo', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1795, 1, 'vi', 'plugins/audit-log/history', 'updated', ' đã cập nhật', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1796, 1, 'vi', 'plugins/audit-log/history', 'deleted', ' đã xóa', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1797, 1, 'vi', 'plugins/audit-log/history', 'attached', 'đính kèm', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1798, 1, 'vi', 'plugins/audit-log/history', 'backup', 'sao lưu', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1799, 1, 'vi', 'plugins/audit-log/history', 'category', 'danh mục', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1800, 1, 'vi', 'plugins/audit-log/history', 'changed password', 'thay đổi mật khẩu', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1801, 1, 'vi', 'plugins/audit-log/history', 'contact', 'liên hệ', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1802, 1, 'vi', 'plugins/audit-log/history', 'custom-field', 'khung mở rộng', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1803, 1, 'vi', 'plugins/audit-log/history', 'logged in', 'đăng nhập', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1804, 1, 'vi', 'plugins/audit-log/history', 'logged out', 'đăng xuất', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1805, 1, 'vi', 'plugins/audit-log/history', 'menu', 'trình đơn', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1806, 1, 'vi', 'plugins/audit-log/history', 'of the system', 'khỏi hệ thống', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1807, 1, 'vi', 'plugins/audit-log/history', 'page', 'trang', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1808, 1, 'vi', 'plugins/audit-log/history', 'post', 'bài viết', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1809, 1, 'vi', 'plugins/audit-log/history', 'shared', 'đã chia sẻ', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1810, 1, 'vi', 'plugins/audit-log/history', 'tag', 'thẻ', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1811, 1, 'vi', 'plugins/audit-log/history', 'to the system', 'vào hệ thống', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1812, 1, 'vi', 'plugins/audit-log/history', 'updated profile', 'cập nhật tài khoản', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1813, 1, 'vi', 'plugins/audit-log/history', 'user', 'thành viên', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1814, 1, 'vi', 'plugins/audit-log/history', 'widget_audit_logs', 'Lịch sử hoạt động', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1815, 1, 'en', 'plugins/backup/backup', 'name', 'Backup', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1816, 1, 'en', 'plugins/backup/backup', 'backup_description', 'Backup database and uploads folder.', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1817, 1, 'en', 'plugins/backup/backup', 'create_backup_success', 'Created backup successfully!', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1818, 1, 'en', 'plugins/backup/backup', 'delete_backup_success', 'Delete backup successfully!', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1819, 1, 'en', 'plugins/backup/backup', 'restore_backup_success', 'Restore backup successfully!', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1820, 1, 'en', 'plugins/backup/backup', 'generate_btn', 'Generate backup', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1821, 1, 'en', 'plugins/backup/backup', 'create', 'Create a backup', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1822, 1, 'en', 'plugins/backup/backup', 'restore', 'Restore a backup', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1823, 1, 'en', 'plugins/backup/backup', 'create_btn', 'Create', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1824, 1, 'en', 'plugins/backup/backup', 'restore_btn', 'Restore', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1825, 1, 'en', 'plugins/backup/backup', 'restore_confirm_msg', 'Do you really want to restore this revision?', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1826, 1, 'en', 'plugins/backup/backup', 'download_uploads_folder', 'Download backup of uploads folder', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1827, 1, 'en', 'plugins/backup/backup', 'download_database', 'Download backup of database', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1828, 1, 'en', 'plugins/backup/backup', 'restore_tooltip', 'Restore this backup', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1829, 1, 'en', 'plugins/backup/backup', 'demo_alert', 'Hi guest, if you see demo site is destroyed, please help me <a href=\":link\">go here</a> and restore demo site to the latest revision! Thank you so much!', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1830, 1, 'en', 'plugins/backup/backup', 'menu_name', 'Backups', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1831, 1, 'en', 'plugins/backup/backup', 'size', 'Size', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1832, 1, 'en', 'plugins/backup/backup', 'no_backups', 'There is no backup now!', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1833, 1, 'en', 'plugins/backup/backup', 'proc_open_disabled_error', 'Function <strong>proc_open()</strong> has been disabled so the system cannot backup the database. Please contact your hosting provider to enable it.', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1834, 1, 'en', 'plugins/backup/backup', 'database_backup_not_existed', 'Backup database is not existed!', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1835, 1, 'en', 'plugins/backup/backup', 'uploads_folder_backup_not_existed', 'Backup uploads folder is not existed!', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1836, 1, 'vi', 'plugins/backup/backup', 'backup_description', 'Sao lưu cơ sở dữ liệu và thư mục /uploads', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1837, 1, 'vi', 'plugins/backup/backup', 'create', 'Tạo bản sao lưu', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1838, 1, 'vi', 'plugins/backup/backup', 'create_backup_success', 'Tạo bản sao lưu thành công!', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1839, 1, 'vi', 'plugins/backup/backup', 'create_btn', 'Tạo', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1840, 1, 'vi', 'plugins/backup/backup', 'delete_backup_success', 'Xóa bản sao lưu thành công!', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1841, 1, 'vi', 'plugins/backup/backup', 'generate_btn', 'Tạo sao lưu', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1842, 1, 'vi', 'plugins/backup/backup', 'name', 'Sao lưu', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1843, 1, 'vi', 'plugins/backup/backup', 'restore', 'Khôi phục bản sao lưu', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1844, 1, 'vi', 'plugins/backup/backup', 'restore_backup_success', 'Khôi phục bản sao lưu thành công', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1845, 1, 'vi', 'plugins/backup/backup', 'restore_btn', 'Khôi phục', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1846, 1, 'vi', 'plugins/backup/backup', 'restore_confirm_msg', 'Bạn có chắc chắn muốn khôi phục hệ thống về thời điểm tạo bản sao lưu này?', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1847, 1, 'vi', 'plugins/backup/backup', 'restore_tooltip', 'Khôi phục bản sao lưu này', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1848, 1, 'vi', 'plugins/backup/backup', 'download_database', 'Tải về bản sao lưu CSDL', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1849, 1, 'vi', 'plugins/backup/backup', 'download_uploads_folder', 'Tải về bản sao lưu thư mục uploads', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1850, 1, 'vi', 'plugins/backup/backup', 'menu_name', 'Sao lưu', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1851, 1, 'vi', 'plugins/backup/backup', 'demo_alert', 'Chào khách, nếu bạn thấy trang demo bị phá hoại, hãy tới <a href=\":link\">trang sao lưu</a> và khôi phục bản sao lưu cuối cùng. Cảm ơn bạn nhiều!', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1852, 1, 'en', 'plugins/blog/base', 'menu_name', 'Blog', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1853, 1, 'en', 'plugins/blog/base', 'blog_page', 'Blog Page', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1854, 1, 'en', 'plugins/blog/base', 'select', '-- Select --', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1855, 1, 'en', 'plugins/blog/base', 'blog_page_id', 'Blog page', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1856, 1, 'en', 'plugins/blog/base', 'number_posts_per_page', 'Number posts per page', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1857, 1, 'en', 'plugins/blog/base', 'write_some_tags', 'Write some tags', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1858, 1, 'en', 'plugins/blog/base', 'short_code_name', 'Blog posts', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1859, 1, 'en', 'plugins/blog/base', 'short_code_description', 'Add blog posts', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1860, 1, 'en', 'plugins/blog/base', 'number_posts_per_page_in_category', 'Number of posts per page in a category', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1861, 1, 'en', 'plugins/blog/base', 'number_posts_per_page_in_tag', 'Number of posts per page in a tag', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1862, 1, 'en', 'plugins/blog/categories', 'create', 'Create new category', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1863, 1, 'en', 'plugins/blog/categories', 'edit', 'Edit category', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1864, 1, 'en', 'plugins/blog/categories', 'menu', 'Categories', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1865, 1, 'en', 'plugins/blog/categories', 'edit_this_category', 'Edit this category', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1866, 1, 'en', 'plugins/blog/categories', 'menu_name', 'Categories', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1867, 1, 'en', 'plugins/blog/categories', 'none', 'None', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1868, 1, 'en', 'plugins/blog/member', 'dob', 'Born :date', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1869, 1, 'en', 'plugins/blog/member', 'draft_posts', 'Draft Posts', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1870, 1, 'en', 'plugins/blog/member', 'pending_posts', 'Pending Posts', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1871, 1, 'en', 'plugins/blog/member', 'published_posts', 'Published Posts', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1872, 1, 'en', 'plugins/blog/member', 'posts', 'Posts', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1873, 1, 'en', 'plugins/blog/member', 'write_post', 'Write a post', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1874, 1, 'en', 'plugins/blog/posts', 'create', 'Create new post', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1875, 1, 'en', 'plugins/blog/posts', 'edit', 'Edit post', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1876, 1, 'en', 'plugins/blog/posts', 'form.name', 'Name', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1877, 1, 'en', 'plugins/blog/posts', 'form.name_placeholder', 'Post\'s name (Maximum :c characters)', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1878, 1, 'en', 'plugins/blog/posts', 'form.description', 'Description', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1879, 1, 'en', 'plugins/blog/posts', 'form.description_placeholder', 'Short description for post (Maximum :c characters)', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1880, 1, 'en', 'plugins/blog/posts', 'form.categories', 'Categories', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1881, 1, 'en', 'plugins/blog/posts', 'form.tags', 'Tags', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1882, 1, 'en', 'plugins/blog/posts', 'form.tags_placeholder', 'Tags', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1883, 1, 'en', 'plugins/blog/posts', 'form.content', 'Content', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1884, 1, 'en', 'plugins/blog/posts', 'form.is_featured', 'Is featured?', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1885, 1, 'en', 'plugins/blog/posts', 'form.note', 'Note content', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1886, 1, 'en', 'plugins/blog/posts', 'form.format_type', 'Format', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1887, 1, 'en', 'plugins/blog/posts', 'cannot_delete', 'Post could not be deleted', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1888, 1, 'en', 'plugins/blog/posts', 'post_deleted', 'Post deleted', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1889, 1, 'en', 'plugins/blog/posts', 'posts', 'Posts', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1890, 1, 'en', 'plugins/blog/posts', 'post', 'Post', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1891, 1, 'en', 'plugins/blog/posts', 'edit_this_post', 'Edit this post', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1892, 1, 'en', 'plugins/blog/posts', 'no_new_post_now', 'There is no new post now!', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1893, 1, 'en', 'plugins/blog/posts', 'menu_name', 'Posts', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1894, 1, 'en', 'plugins/blog/posts', 'widget_posts_recent', 'Recent Posts', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1895, 1, 'en', 'plugins/blog/posts', 'categories', 'Categories', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1896, 1, 'en', 'plugins/blog/posts', 'category', 'Category', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1897, 1, 'en', 'plugins/blog/posts', 'author', 'Author', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1898, 1, 'en', 'plugins/blog/settings', 'select', '-- Select --', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1899, 1, 'en', 'plugins/blog/settings', 'blog_page_id', 'Blog page', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1900, 1, 'en', 'plugins/blog/tags', 'form.name', 'Name', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1901, 1, 'en', 'plugins/blog/tags', 'form.name_placeholder', 'Tag\'s name (Maximum 120 characters)', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1902, 1, 'en', 'plugins/blog/tags', 'form.description', 'Description', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1903, 1, 'en', 'plugins/blog/tags', 'form.description_placeholder', 'Short description for tag (Maximum 400 characters)', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1904, 1, 'en', 'plugins/blog/tags', 'form.categories', 'Categories', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1905, 1, 'en', 'plugins/blog/tags', 'notices.no_select', 'Please select at least one tag to take this action!', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1906, 1, 'en', 'plugins/blog/tags', 'create', 'Create new tag', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1907, 1, 'en', 'plugins/blog/tags', 'edit', 'Edit tag', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1908, 1, 'en', 'plugins/blog/tags', 'cannot_delete', 'Tag could not be deleted', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1909, 1, 'en', 'plugins/blog/tags', 'deleted', 'Tag deleted', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1910, 1, 'en', 'plugins/blog/tags', 'menu', 'Tags', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1911, 1, 'en', 'plugins/blog/tags', 'edit_this_tag', 'Edit this tag', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1912, 1, 'en', 'plugins/blog/tags', 'menu_name', 'Tags', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1913, 1, 'vi', 'plugins/blog/base', 'menu_name', 'Blog', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1914, 1, 'vi', 'plugins/blog/categories', 'create', 'Thêm danh mục mới', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1915, 1, 'vi', 'plugins/blog/categories', 'edit', 'Sửa danh mục', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1916, 1, 'vi', 'plugins/blog/categories', 'menu_name', 'Danh mục', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1917, 1, 'vi', 'plugins/blog/categories', 'edit_this_category', 'Sửa danh mục này', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1918, 1, 'vi', 'plugins/blog/categories', 'menu', 'Danh mục', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1919, 1, 'vi', 'plugins/blog/posts', 'create', 'Thêm bài viết', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1920, 1, 'vi', 'plugins/blog/posts', 'edit', 'Sửa bài viết', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1921, 1, 'vi', 'plugins/blog/posts', 'form.name', 'Tên', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1922, 1, 'vi', 'plugins/blog/posts', 'form.name_placeholder', 'Tên bài viết (Tối đa 120 kí tự)', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1923, 1, 'vi', 'plugins/blog/posts', 'form.description', 'Mô tả', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1924, 1, 'vi', 'plugins/blog/posts', 'form.description_placeholder', 'Mô tả ngắn cho bài viết (Tối đa 400 kí tự)', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1925, 1, 'vi', 'plugins/blog/posts', 'form.categories', 'Chuyên mục', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1926, 1, 'vi', 'plugins/blog/posts', 'form.tags', 'Từ khóa', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1927, 1, 'vi', 'plugins/blog/posts', 'form.tags_placeholder', 'Thêm từ khóa', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1928, 1, 'vi', 'plugins/blog/posts', 'form.content', 'Nội dung', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1929, 1, 'vi', 'plugins/blog/posts', 'form.note', 'Nội dung ghi chú', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1930, 1, 'vi', 'plugins/blog/posts', 'form.format_type', 'Định dạng', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1931, 1, 'vi', 'plugins/blog/posts', 'post_deleted', 'Xóa bài viết thành công', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1932, 1, 'vi', 'plugins/blog/posts', 'cannot_delete', 'Không thể xóa bài viết', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1933, 1, 'vi', 'plugins/blog/posts', 'menu_name', 'Bài viết', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1934, 1, 'vi', 'plugins/blog/posts', 'edit_this_post', 'Sửa bài viết này', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1935, 1, 'vi', 'plugins/blog/posts', 'no_new_post_now', 'Hiện tại không có bài viết mới!', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1936, 1, 'vi', 'plugins/blog/posts', 'posts', 'Bài viết', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1937, 1, 'vi', 'plugins/blog/posts', 'widget_posts_recent', 'Bài viết gần đây', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1938, 1, 'vi', 'plugins/blog/posts', 'author', 'Tác giả', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1939, 1, 'vi', 'plugins/blog/tags', 'create', 'Thêm thẻ mới', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1940, 1, 'vi', 'plugins/blog/tags', 'edit', 'Sửa thẻ', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1941, 1, 'vi', 'plugins/blog/tags', 'form.name', 'Tên', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1942, 1, 'vi', 'plugins/blog/tags', 'form.name_placeholder', 'Tên thẻ (Tối đa 120 kí tự)', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1943, 1, 'vi', 'plugins/blog/tags', 'form.description', 'Mô tả', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1944, 1, 'vi', 'plugins/blog/tags', 'form.description_placeholder', 'Mô tả ngắn cho tag (Tối đa 400 kí tự)', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1945, 1, 'vi', 'plugins/blog/tags', 'form.categories', 'Chuyên mục', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1946, 1, 'vi', 'plugins/blog/tags', 'notices.no_select', 'Chọn ít nhất 1 bài viết để thực hiện hành động này!', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1947, 1, 'vi', 'plugins/blog/tags', 'cannot_delete', 'Không thể xóa thẻ', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1948, 1, 'vi', 'plugins/blog/tags', 'deleted', 'Xóa thẻ thành công', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1949, 1, 'vi', 'plugins/blog/tags', 'menu_name', 'Thẻ', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1950, 1, 'vi', 'plugins/blog/tags', 'edit_this_tag', 'Sửa thẻ này', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1951, 1, 'vi', 'plugins/blog/tags', 'menu', 'Thẻ', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1952, 1, 'en', 'plugins/captcha/captcha', 'settings.title', 'Captcha', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1953, 1, 'en', 'plugins/captcha/captcha', 'settings.description', 'Settings for Google Captcha', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1954, 1, 'en', 'plugins/captcha/captcha', 'settings.captcha_site_key', 'Captcha Site Key', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1955, 1, 'en', 'plugins/captcha/captcha', 'settings.captcha_secret', 'Captcha Secret', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1956, 1, 'en', 'plugins/captcha/captcha', 'settings.enable_captcha', 'Enable Captcha?', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1957, 1, 'en', 'plugins/captcha/captcha', 'settings.helper', 'Go here to get credentials https://www.google.com/recaptcha/admin#list.', '2021-07-12 22:42:26', '2021-07-12 22:42:26');
INSERT INTO `translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1958, 1, 'en', 'plugins/captcha/captcha', 'settings.hide_badge', 'Hide recaptcha badge (for v3)', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1959, 1, 'en', 'plugins/captcha/captcha', 'settings.type', 'Type', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1960, 1, 'en', 'plugins/captcha/captcha', 'settings.v2_description', 'V2 (Verify requests with a challenge)', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1961, 1, 'en', 'plugins/captcha/captcha', 'settings.v3_description', 'V3 (Verify requests with a score)', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1962, 1, 'en', 'plugins/captcha/captcha', 'failed_validate', 'Failed to validate the captcha.', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1963, 1, 'en', 'plugins/contact/contact', 'menu', 'Contact', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1964, 1, 'en', 'plugins/contact/contact', 'edit', 'View contact', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1965, 1, 'en', 'plugins/contact/contact', 'tables.phone', 'Phone', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1966, 1, 'en', 'plugins/contact/contact', 'tables.email', 'Email', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1967, 1, 'en', 'plugins/contact/contact', 'tables.full_name', 'Full Name', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1968, 1, 'en', 'plugins/contact/contact', 'tables.time', 'Time', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1969, 1, 'en', 'plugins/contact/contact', 'tables.address', 'Address', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1970, 1, 'en', 'plugins/contact/contact', 'tables.subject', 'Subject', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1971, 1, 'en', 'plugins/contact/contact', 'tables.content', 'Content', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1972, 1, 'en', 'plugins/contact/contact', 'contact_information', 'Contact information', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1973, 1, 'en', 'plugins/contact/contact', 'replies', 'Replies', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1974, 1, 'en', 'plugins/contact/contact', 'email.header', 'Email', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1975, 1, 'en', 'plugins/contact/contact', 'email.title', 'New contact from your site', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1976, 1, 'en', 'plugins/contact/contact', 'form.name.required', 'Name is required', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1977, 1, 'en', 'plugins/contact/contact', 'form.email.required', 'Email is required', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1978, 1, 'en', 'plugins/contact/contact', 'form.email.email', 'The email address is not valid', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1979, 1, 'en', 'plugins/contact/contact', 'form.content.required', 'Content is required', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1980, 1, 'en', 'plugins/contact/contact', 'contact_sent_from', 'This contact information sent from', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1981, 1, 'en', 'plugins/contact/contact', 'sender', 'Sender', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1982, 1, 'en', 'plugins/contact/contact', 'sender_email', 'Email', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1983, 1, 'en', 'plugins/contact/contact', 'sender_address', 'Address', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1984, 1, 'en', 'plugins/contact/contact', 'sender_phone', 'Phone', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1985, 1, 'en', 'plugins/contact/contact', 'message_content', 'Message content', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1986, 1, 'en', 'plugins/contact/contact', 'sent_from', 'Email sent from', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1987, 1, 'en', 'plugins/contact/contact', 'form_name', 'Name', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1988, 1, 'en', 'plugins/contact/contact', 'form_email', 'Email', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1989, 1, 'en', 'plugins/contact/contact', 'form_address', 'Address', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1990, 1, 'en', 'plugins/contact/contact', 'form_subject', 'Subject', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1991, 1, 'en', 'plugins/contact/contact', 'form_phone', 'Phone', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1992, 1, 'en', 'plugins/contact/contact', 'form_message', 'Message', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1993, 1, 'en', 'plugins/contact/contact', 'required_field', 'The field with (<span style=\"color: red\">*</span>) is required.', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1994, 1, 'en', 'plugins/contact/contact', 'send_btn', 'Send message', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1995, 1, 'en', 'plugins/contact/contact', 'new_msg_notice', 'You have <span class=\"bold\">:count</span> New Messages', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1996, 1, 'en', 'plugins/contact/contact', 'view_all', 'View all', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1997, 1, 'en', 'plugins/contact/contact', 'statuses.read', 'Read', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1998, 1, 'en', 'plugins/contact/contact', 'statuses.unread', 'Unread', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(1999, 1, 'en', 'plugins/contact/contact', 'phone', 'Phone', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(2000, 1, 'en', 'plugins/contact/contact', 'address', 'Address', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(2001, 1, 'en', 'plugins/contact/contact', 'message', 'Message', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(2002, 1, 'en', 'plugins/contact/contact', 'settings.email.title', 'Contact', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(2003, 1, 'en', 'plugins/contact/contact', 'settings.email.description', 'Contact email configuration', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(2004, 1, 'en', 'plugins/contact/contact', 'settings.email.templates.notice_title', 'Send notice to administrator', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(2005, 1, 'en', 'plugins/contact/contact', 'settings.email.templates.notice_description', 'Email template to send notice to administrator when system get new contact', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(2006, 1, 'en', 'plugins/contact/contact', 'no_reply', 'No reply yet!', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(2007, 1, 'en', 'plugins/contact/contact', 'reply', 'Reply', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(2008, 1, 'en', 'plugins/contact/contact', 'send', 'Send', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(2009, 1, 'en', 'plugins/contact/contact', 'shortcode_name', 'Contact form', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(2010, 1, 'en', 'plugins/contact/contact', 'shortcode_description', 'Add a contact form', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(2011, 1, 'en', 'plugins/contact/contact', 'shortcode_content_description', 'Add shortcode [contact-form][/contact-form] to editor?', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(2012, 1, 'en', 'plugins/contact/contact', 'message_sent_success', 'Message sent successfully!', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(2013, 1, 'vi', 'plugins/contact/contact', 'menu', 'Liên hệ', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(2014, 1, 'vi', 'plugins/contact/contact', 'edit', 'Xem liên hệ', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(2015, 1, 'vi', 'plugins/contact/contact', 'tables.phone', 'Điện thoại', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(2016, 1, 'vi', 'plugins/contact/contact', 'tables.email', 'Email', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(2017, 1, 'vi', 'plugins/contact/contact', 'tables.full_name', 'Họ tên', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(2018, 1, 'vi', 'plugins/contact/contact', 'tables.time', 'Thời gian', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(2019, 1, 'vi', 'plugins/contact/contact', 'tables.address', 'Địa địa chỉ', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(2020, 1, 'vi', 'plugins/contact/contact', 'tables.subject', 'Tiêu đề', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(2021, 1, 'vi', 'plugins/contact/contact', 'tables.content', 'Nội dung', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(2022, 1, 'vi', 'plugins/contact/contact', 'contact_information', 'Thông tin liên hệ', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(2023, 1, 'vi', 'plugins/contact/contact', 'email.title', 'Thông tin liên hệ mới', '2021-07-12 22:42:26', '2021-07-12 22:42:26'),
(2024, 1, 'vi', 'plugins/contact/contact', 'email.header', 'Email', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2025, 1, 'vi', 'plugins/contact/contact', 'contact_sent_from', 'Liên hệ này được gửi từ', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2026, 1, 'vi', 'plugins/contact/contact', 'form_address', 'Địa chỉ', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2027, 1, 'vi', 'plugins/contact/contact', 'form_email', 'Thư điện tử', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2028, 1, 'vi', 'plugins/contact/contact', 'form_message', 'Thông điệp', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2029, 1, 'vi', 'plugins/contact/contact', 'form_name', 'Họ tên', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2030, 1, 'vi', 'plugins/contact/contact', 'form_phone', 'Số điện thoại', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2031, 1, 'vi', 'plugins/contact/contact', 'message_content', 'Nội dung thông điệp', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2032, 1, 'vi', 'plugins/contact/contact', 'required_field', 'Những trường có dấu (<span style=\"color: red\">*</span>) là bắt buộc.', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2033, 1, 'vi', 'plugins/contact/contact', 'send_btn', 'Gửi tin nhắn', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2034, 1, 'vi', 'plugins/contact/contact', 'sender', 'Người gửi', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2035, 1, 'vi', 'plugins/contact/contact', 'sender_address', 'Địa chỉ', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2036, 1, 'vi', 'plugins/contact/contact', 'sender_email', 'Thư điện tử', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2037, 1, 'vi', 'plugins/contact/contact', 'sender_phone', 'Số điện thoại', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2038, 1, 'vi', 'plugins/contact/contact', 'sent_from', 'Thư được gửi từ', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2039, 1, 'vi', 'plugins/contact/contact', 'address', 'Địa chỉ', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2040, 1, 'vi', 'plugins/contact/contact', 'message', 'Liên hệ', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2041, 1, 'vi', 'plugins/contact/contact', 'new_msg_notice', 'Bạn có <span class=\"bold\">:count</span> tin nhắn mới', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2042, 1, 'vi', 'plugins/contact/contact', 'phone', 'Điện thoại', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2043, 1, 'vi', 'plugins/contact/contact', 'statuses.read', 'Đã đọc', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2044, 1, 'vi', 'plugins/contact/contact', 'statuses.unread', 'Chưa đọc', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2045, 1, 'vi', 'plugins/contact/contact', 'view_all', 'Xem tất cả', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2046, 1, 'vi', 'plugins/contact/contact', 'settings.email.title', 'Liên hệ', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2047, 1, 'vi', 'plugins/contact/contact', 'settings.email.description', 'Cấu hình thông tin cho mục liên hệ', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2048, 1, 'vi', 'plugins/contact/contact', 'settings.email.templates.notice_title', 'Thông báo tới admin', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2049, 1, 'vi', 'plugins/contact/contact', 'settings.email.templates.notice_description', 'Mẫu nội dung email gửi tới admin khi có liên hệ mới', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2050, 1, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.name', 'Cookie Consent', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2051, 1, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.description', 'Cookie consent settings', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2052, 1, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.enable', 'Enable cookie consent?', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2053, 1, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.message', 'Message', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2054, 1, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.button_text', 'Button text', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2055, 1, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.max_width', 'Max width (px)', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2056, 1, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.background_color', 'Background color', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2057, 1, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.text_color', 'Text color', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2058, 1, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.learn_more_url', 'Learn more URL', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2059, 1, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.learn_more_text', 'Learn more text', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2060, 1, 'en', 'plugins/cookie-consent/cookie-consent', 'message', 'Your experience on this site will be improved by allowing cookies.', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2061, 1, 'en', 'plugins/cookie-consent/cookie-consent', 'button_text', 'Allow cookies', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2062, 1, 'en', 'plugins/ecommerce/brands', 'name', 'Brands', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2063, 1, 'en', 'plugins/ecommerce/brands', 'create', 'New brand', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2064, 1, 'en', 'plugins/ecommerce/brands', 'edit', 'Edit brand', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2065, 1, 'en', 'plugins/ecommerce/brands', 'form.name', 'Name', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2066, 1, 'en', 'plugins/ecommerce/brands', 'form.name_placeholder', 'Brand\'s name (Maximum 255 characters)', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2067, 1, 'en', 'plugins/ecommerce/brands', 'form.description', 'Description', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2068, 1, 'en', 'plugins/ecommerce/brands', 'form.description_placeholder', 'Short description for brand (Maximum 400 characters)', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2069, 1, 'en', 'plugins/ecommerce/brands', 'form.website', 'Website', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2070, 1, 'en', 'plugins/ecommerce/brands', 'form.logo', 'Logo', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2071, 1, 'en', 'plugins/ecommerce/brands', 'form.is_featured', 'Is featured', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2072, 1, 'en', 'plugins/ecommerce/brands', 'logo', 'Logo', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2073, 1, 'en', 'plugins/ecommerce/brands', 'website', 'Website', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2074, 1, 'en', 'plugins/ecommerce/brands', 'notices.no_select', 'Please select at least one record to take this action!', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2075, 1, 'en', 'plugins/ecommerce/brands', 'notices.update_success_message', 'Update successfully', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2076, 1, 'en', 'plugins/ecommerce/brands', 'cannot_delete', 'Brand could not be deleted', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2077, 1, 'en', 'plugins/ecommerce/brands', 'brand_deleted', 'Brand deleted', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2078, 1, 'en', 'plugins/ecommerce/brands', 'menu', 'Brands', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2079, 1, 'en', 'plugins/ecommerce/brands', 'no_brand', 'No brand', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2080, 1, 'en', 'plugins/ecommerce/brands', 'intro.title', 'Manage brands', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2081, 1, 'en', 'plugins/ecommerce/brands', 'intro.description', 'Manage product brands such as Nike, Adidas, Bitis ...', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2082, 1, 'en', 'plugins/ecommerce/brands', 'intro.button_text', 'Create brand', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2083, 1, 'en', 'plugins/ecommerce/currency', 'currencies', 'Currencies', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2084, 1, 'en', 'plugins/ecommerce/currency', 'setting_description', 'List of currencies using on website', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2085, 1, 'en', 'plugins/ecommerce/currency', 'name', 'Name', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2086, 1, 'en', 'plugins/ecommerce/currency', 'symbol', 'Symbol', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2087, 1, 'en', 'plugins/ecommerce/currency', 'number_of_decimals', 'Number of decimals', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2088, 1, 'en', 'plugins/ecommerce/currency', 'exchange_rate', 'Exchange rate', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2089, 1, 'en', 'plugins/ecommerce/currency', 'is_prefix_symbol', 'Position of symbol', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2090, 1, 'en', 'plugins/ecommerce/currency', 'is_default', 'Is default?', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2091, 1, 'en', 'plugins/ecommerce/currency', 'remove', 'Remove', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2092, 1, 'en', 'plugins/ecommerce/currency', 'new_currency', 'Add a new currency', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2093, 1, 'en', 'plugins/ecommerce/currency', 'save_settings', 'Save settings', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2094, 1, 'en', 'plugins/ecommerce/currency', 'before_number', 'Before number', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2095, 1, 'en', 'plugins/ecommerce/currency', 'after_number', 'After number', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2096, 1, 'en', 'plugins/ecommerce/customer', 'name', 'Customers', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2097, 1, 'en', 'plugins/ecommerce/customer', 'create', 'Create a customer', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2098, 1, 'en', 'plugins/ecommerce/customer', 'edit', 'Edit customer \":name\"', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2099, 1, 'en', 'plugins/ecommerce/customer', 'email', 'Email', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2100, 1, 'en', 'plugins/ecommerce/customer', 'email_placeholder', 'Ex: example@gmail.com', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2101, 1, 'en', 'plugins/ecommerce/customer', 'password', 'Password', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2102, 1, 'en', 'plugins/ecommerce/customer', 'change_password', 'Change password?', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2103, 1, 'en', 'plugins/ecommerce/customer', 'password_confirmation', 'Password confirmation', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2104, 1, 'en', 'plugins/ecommerce/customer', 'intro.title', 'Manage customers', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2105, 1, 'en', 'plugins/ecommerce/customer', 'intro.description', 'When a customer buy your product(s), you will know their order histories.', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2106, 1, 'en', 'plugins/ecommerce/customer', 'intro.button_text', 'Create customer', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2107, 1, 'en', 'plugins/ecommerce/discount', 'name', 'Discounts', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2108, 1, 'en', 'plugins/ecommerce/discount', 'create', 'Create discount', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2109, 1, 'en', 'plugins/ecommerce/discount', 'invalid_coupon', 'This coupon is invalid or expired!', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2110, 1, 'en', 'plugins/ecommerce/discount', 'cannot_use_same_time_with_other_discount_program', 'Cannot use this coupon in the same time with other discount program!', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2111, 1, 'en', 'plugins/ecommerce/discount', 'not_used', 'This coupon is not used yet!', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2112, 1, 'en', 'plugins/ecommerce/discount', 'detail', 'Detail', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2113, 1, 'en', 'plugins/ecommerce/discount', 'used', 'Used', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2114, 1, 'en', 'plugins/ecommerce/discount', 'start_date', 'Start date', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2115, 1, 'en', 'plugins/ecommerce/discount', 'end_date', 'End date', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2116, 1, 'en', 'plugins/ecommerce/discount', 'intro.title', 'Manage discount/coupon code', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2117, 1, 'en', 'plugins/ecommerce/discount', 'intro.description', 'Create coupon code or promotion for your products.', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2118, 1, 'en', 'plugins/ecommerce/discount', 'intro.button_text', 'Create discount', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2119, 1, 'en', 'plugins/ecommerce/discount', 'discount', 'Discount', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2120, 1, 'en', 'plugins/ecommerce/discount', 'expired', 'Expired', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2121, 1, 'en', 'plugins/ecommerce/discount', 'coupon_code', 'Coupon code', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2122, 1, 'en', 'plugins/ecommerce/discount', 'discount_promotion', 'Discount promotion', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2123, 1, 'en', 'plugins/ecommerce/discount', 'can', 'can', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2124, 1, 'en', 'plugins/ecommerce/discount', 'cannot', 'cannot', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2125, 1, 'en', 'plugins/ecommerce/discount', 'use_with_promotion', 'be used with promotion', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2126, 1, 'en', 'plugins/ecommerce/discount', 'create_discount_validate_title_required_if', 'Please enter the name of the promotion', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2127, 1, 'en', 'plugins/ecommerce/discount', 'create_discount_validate_code_required_if', 'Please enter the promotion code', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2128, 1, 'en', 'plugins/ecommerce/discount', 'create_discount_validate_value_required', 'Amount must be greater than 0', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2129, 1, 'en', 'plugins/ecommerce/discount', 'create_discount_validate_target_required', 'No object selected for promotion', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2130, 1, 'en', 'plugins/ecommerce/discount', 'enums.type-options.amount', 'Amount - Fixed', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2131, 1, 'en', 'plugins/ecommerce/discount', 'enums.type-options.percentage', 'Discount %', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2132, 1, 'en', 'plugins/ecommerce/discount', 'enums.type-options.shipping', 'Free shipping', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2133, 1, 'en', 'plugins/ecommerce/discount', 'enums.type-options.same-price', 'Same price', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2134, 1, 'en', 'plugins/ecommerce/ecommerce', 'settings', 'Settings', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2135, 1, 'en', 'plugins/ecommerce/ecommerce', 'name', 'Ecommerce', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2136, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.email.title', 'E-commerce', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2137, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.email.description', 'Ecommerce email config', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2138, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.email.order_confirm_subject', 'Subject of order confirmation email', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2139, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.email.order_confirm_subject_placeholder', 'The subject of email confirmation send to the customer', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2140, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.email.order_confirm_content', 'Content of order confirmation email', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2141, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.email.order_status_change_subject', 'Subject of email when changing order\'s status', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2142, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.email.order_status_change_subject_placeholder', 'Subject of email when changing order\'s status send to customer', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2143, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.email.order_status_change_content', 'Content of email when changing order\'s status', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2144, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.email.from_email', 'Email from', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2145, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.email.from_email_placeholder', 'Email from address to display in mail. Ex: example@gmail.com', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2146, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.title', 'Basic information', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2147, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.state', 'State', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2148, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.city', 'City', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2149, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.country', 'Country', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2150, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.select country', 'Select a country...', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2151, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.weight_unit_gram', 'Gram (g)', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2152, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.weight_unit_kilogram', 'Kilogram (kg)', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2153, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.height_unit_cm', 'Centimeter (cm)', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2154, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.height_unit_m', 'Meter (m)', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2155, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.store_locator_title', 'Store locators', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2156, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.store_locator_description', 'All the lists of your chains, main stores, branches, etc. The locations can be used to track sales and to help us configure tax rates to charge when selling products.', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2157, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.phone', 'Phone', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2158, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.address', 'Address', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2159, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.is_primary', 'Primary?', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2160, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.add_new', 'Add new', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2161, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.or', 'Or', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2162, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.change_primary_store', 'change default store locator', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2163, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.other_settings', 'Other settings', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2164, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.other_settings_description', 'Settings for cart, review...', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2165, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.enable_cart', 'Enable shopping cart?', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2166, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.enable_tax', 'Enable tax?', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2167, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.display_product_price_including_taxes', 'Display product price including taxes?', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2168, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.enable_review', 'Enable review?', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2169, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.enable_quick_buy_button', 'Enable quick buy button?', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2170, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.quick_buy_target', 'Quick buy target page?', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2171, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.checkout_page', 'Checkout page', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2172, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.cart_page', 'Cart page', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2173, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.add_location', 'Add location', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2174, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.edit_location', 'Edit location', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2175, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.delete_location', 'Delete location', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2176, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.change_primary_location', 'Change primary location', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2177, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.delete_location_confirmation', 'Are you sure you want to delete this location? This action cannot be undo.', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2178, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.save_location', 'Save location', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2179, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.accept', 'Accept', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2180, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.select_country', 'Select country', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2181, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.zip_code_enabled', 'Enable Zip Code?', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2182, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.thousands_separator', 'Thousands separator', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2183, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.decimal_separator', 'Decimal separator', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2184, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.separator_period', 'Period (.)', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2185, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.separator_comma', 'Comma (,)', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2186, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.separator_space', 'Space ( )', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2187, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.available_countries', 'Available countries', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2188, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.all', 'All', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2189, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.verify_customer_email', 'Verify customer\'s email?', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2190, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.minimum_order_amount', 'Minimum order amount to place an order (:currency).', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2191, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.enable_guest_checkout', 'Enable guest checkout?', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2192, 1, 'en', 'plugins/ecommerce/ecommerce', 'store_address', 'Store address', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2193, 1, 'en', 'plugins/ecommerce/ecommerce', 'store_phone', 'Store phone', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2194, 1, 'en', 'plugins/ecommerce/ecommerce', 'order_id', 'Order ID', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2195, 1, 'en', 'plugins/ecommerce/ecommerce', 'order_token', 'Order token', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2196, 1, 'en', 'plugins/ecommerce/ecommerce', 'customer_name', 'Customer name', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2197, 1, 'en', 'plugins/ecommerce/ecommerce', 'customer_email', 'Customer email', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2198, 1, 'en', 'plugins/ecommerce/ecommerce', 'customer_phone', 'Customer phone', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2199, 1, 'en', 'plugins/ecommerce/ecommerce', 'customer_address', 'Customer address', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2200, 1, 'en', 'plugins/ecommerce/ecommerce', 'product_list', 'List products in order', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2201, 1, 'en', 'plugins/ecommerce/ecommerce', 'payment_detail', 'Payment detail', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2202, 1, 'en', 'plugins/ecommerce/ecommerce', 'shipping_method', 'Shipping method', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2203, 1, 'en', 'plugins/ecommerce/ecommerce', 'payment_method', 'Payment method', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2204, 1, 'en', 'plugins/ecommerce/ecommerce', 'standard_and_format', 'Standard & Format', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2205, 1, 'en', 'plugins/ecommerce/ecommerce', 'standard_and_format_description', 'Standards and formats are used to calculate things like product prices, shipping weights, and order times.', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2206, 1, 'en', 'plugins/ecommerce/ecommerce', 'change_order_format', 'Edit order code format (optional)', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2207, 1, 'en', 'plugins/ecommerce/ecommerce', 'change_order_format_description', 'The default order code starts at: number. You can change the start or end string to create the order code you want, for example \"DH-: number\" or \": number-A\"', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2208, 1, 'en', 'plugins/ecommerce/ecommerce', 'start_with', 'Start with', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2209, 1, 'en', 'plugins/ecommerce/ecommerce', 'end_with', 'End with', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2210, 1, 'en', 'plugins/ecommerce/ecommerce', 'order_will_be_shown', 'Your order code will be shown', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2211, 1, 'en', 'plugins/ecommerce/ecommerce', 'weight_unit', 'Unit of weight', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2212, 1, 'en', 'plugins/ecommerce/ecommerce', 'height_unit', 'Unit length / height', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2213, 1, 'en', 'plugins/ecommerce/ecommerce', 'theme_options.name', 'Ecommerce', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2214, 1, 'en', 'plugins/ecommerce/ecommerce', 'theme_options.description', 'Theme options for Ecommerce', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2215, 1, 'en', 'plugins/ecommerce/ecommerce', 'theme_options.number_products_per_page', 'Number of products per page', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2216, 1, 'en', 'plugins/ecommerce/ecommerce', 'theme_options.number_of_cross_sale_product', 'Number of cross sale products in product detail page', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2217, 1, 'en', 'plugins/ecommerce/ecommerce', 'theme_options.max_price_filter', 'Maximum price to filter', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2218, 1, 'en', 'plugins/ecommerce/ecommerce', 'theme_options.logo_in_the_checkout_page', 'Logo in the checkout page (Default is the main logo)', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2219, 1, 'en', 'plugins/ecommerce/ecommerce', 'theme_options.logo_in_invoices', 'Logo in invoices (Default is the main logo)', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2220, 1, 'en', 'plugins/ecommerce/email', 'customer_new_order_title', 'Order confirmation', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2221, 1, 'en', 'plugins/ecommerce/email', 'customer_new_order_description', 'Send email confirmation to customer when an order placed', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2222, 1, 'en', 'plugins/ecommerce/email', 'order_cancellation_title', 'Order cancellation', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2223, 1, 'en', 'plugins/ecommerce/email', 'order_cancellation_description', 'Send to custom when they cancelled order', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2224, 1, 'en', 'plugins/ecommerce/email', 'delivery_confirmation_title', 'Delivering confirmation', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2225, 1, 'en', 'plugins/ecommerce/email', 'delivery_confirmation_description', 'Send to customer when order is delivering', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2226, 1, 'en', 'plugins/ecommerce/email', 'admin_new_order_title', 'Notice about new order', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2227, 1, 'en', 'plugins/ecommerce/email', 'admin_new_order_description', 'Send to administrators when an order placed', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2228, 1, 'en', 'plugins/ecommerce/email', 'order_confirmation_title', 'Order confirmation', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2229, 1, 'en', 'plugins/ecommerce/email', 'order_confirmation_description', 'Send to customer when they order was confirmed by admins', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2230, 1, 'en', 'plugins/ecommerce/email', 'payment_confirmation_title', 'Payment confirmation', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2231, 1, 'en', 'plugins/ecommerce/email', 'payment_confirmation_description', 'Send to customer when their payment was confirmed', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2232, 1, 'en', 'plugins/ecommerce/email', 'order_recover_title', 'Incomplete order', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2233, 1, 'en', 'plugins/ecommerce/email', 'order_recover_description', 'Send to custom to remind them about incomplete orders', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2234, 1, 'en', 'plugins/ecommerce/email', 'view_order', 'View order', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2235, 1, 'en', 'plugins/ecommerce/email', 'link_go_to_our_shop', 'or <a href=\":link\">Go to our shop</a>', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2236, 1, 'en', 'plugins/ecommerce/email', 'order_number', 'Order number: <strong>:order_id</strong>', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2237, 1, 'en', 'plugins/ecommerce/email', 'order_information', 'Order information:', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2238, 1, 'en', 'plugins/ecommerce/flash-sale', 'name', 'Flash sales', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2239, 1, 'en', 'plugins/ecommerce/flash-sale', 'create', 'New flash sale', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2240, 1, 'en', 'plugins/ecommerce/flash-sale', 'edit', 'Edit flash sale', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2241, 1, 'en', 'plugins/ecommerce/flash-sale', 'products', 'Products', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2242, 1, 'en', 'plugins/ecommerce/messages', 'cart.add_product_success', 'Add product :product to cart successfully!', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2243, 1, 'en', 'plugins/ecommerce/messages', 'cart.update_cart_success', 'Update cart successfully!', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2244, 1, 'en', 'plugins/ecommerce/messages', 'cart.remove_cart_success', 'Remove item from cart successfully!', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2245, 1, 'en', 'plugins/ecommerce/messages', 'cart.empty_cart_success', 'Empty cart successfully!', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2246, 1, 'en', 'plugins/ecommerce/messages', 'cart.product_not_found', 'This product is out of stock or not exists!', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2247, 1, 'en', 'plugins/ecommerce/messages', 'cart.product_is_out_of_stock', 'Product :product is out of stock!', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2248, 1, 'en', 'plugins/ecommerce/messages', 'order.customer_cancel_error', 'The order is delivering or completed', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2249, 1, 'en', 'plugins/ecommerce/messages', 'order.customer_cancel_success', 'You do cancel the order successful', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2250, 1, 'en', 'plugins/ecommerce/order', 'statuses.pending', 'Pending', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2251, 1, 'en', 'plugins/ecommerce/order', 'statuses.processing', 'Processing', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2252, 1, 'en', 'plugins/ecommerce/order', 'statuses.delivering', 'Delivering', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2253, 1, 'en', 'plugins/ecommerce/order', 'statuses.delivered', 'Delivered', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2254, 1, 'en', 'plugins/ecommerce/order', 'statuses.completed', 'Completed', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2255, 1, 'en', 'plugins/ecommerce/order', 'statuses.canceled', 'Canceled', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2256, 1, 'en', 'plugins/ecommerce/order', 'name', 'Orders', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2257, 1, 'en', 'plugins/ecommerce/order', 'create', 'Create an order', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2258, 1, 'en', 'plugins/ecommerce/order', 'customer.messages.cancel_error', 'The order is delivering or completed', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2259, 1, 'en', 'plugins/ecommerce/order', 'customer.messages.cancel_success', 'You do cancel the order successful', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2260, 1, 'en', 'plugins/ecommerce/order', 'incomplete_order', 'Incomplete orders', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2261, 1, 'en', 'plugins/ecommerce/order', 'order_id', 'Order ID', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2262, 1, 'en', 'plugins/ecommerce/order', 'product_id', 'Product ID', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2263, 1, 'en', 'plugins/ecommerce/order', 'customer_label', 'Customer', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2264, 1, 'en', 'plugins/ecommerce/order', 'amount', 'Amount', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2265, 1, 'en', 'plugins/ecommerce/order', 'tax_amount', 'Tax Amount', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2266, 1, 'en', 'plugins/ecommerce/order', 'shipping_amount', 'Shipping amount', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2267, 1, 'en', 'plugins/ecommerce/order', 'payment_method', 'Payment method', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2268, 1, 'en', 'plugins/ecommerce/order', 'payment_status_label', 'Payment status', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2269, 1, 'en', 'plugins/ecommerce/order', 'manage_orders', 'Manage orders', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2270, 1, 'en', 'plugins/ecommerce/order', 'order_intro_description', 'Once your store has orders, this is where you will process and track those orders.', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2271, 1, 'en', 'plugins/ecommerce/order', 'create_new_order', 'Create a new order', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2272, 1, 'en', 'plugins/ecommerce/order', 'manage_incomplete_orders', 'Manage incomplete orders', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2273, 1, 'en', 'plugins/ecommerce/order', 'incomplete_orders_intro_description', 'Incomplete order is an order created when a customer adds a product to the cart, proceeds to fill out the purchase information but does not complete the checkout process.', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2274, 1, 'en', 'plugins/ecommerce/order', 'invoice_for_order', 'Invoice for order', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2275, 1, 'en', 'plugins/ecommerce/order', 'created', 'Created', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2276, 1, 'en', 'plugins/ecommerce/order', 'invoice', 'Invoice', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2277, 1, 'en', 'plugins/ecommerce/order', 'return', 'Return', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2278, 1, 'en', 'plugins/ecommerce/order', 'total_refund_amount', 'Total refund amount', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2279, 1, 'en', 'plugins/ecommerce/order', 'total_amount_can_be_refunded', 'Total amount can be refunded', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2280, 1, 'en', 'plugins/ecommerce/order', 'refund_reason', 'Refund reason (optional)', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2281, 1, 'en', 'plugins/ecommerce/order', 'products', 'product(s)', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2282, 1, 'en', 'plugins/ecommerce/order', 'see_on_maps', 'See on maps', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2283, 1, 'en', 'plugins/ecommerce/order', 'order', 'Order', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2284, 1, 'en', 'plugins/ecommerce/order', 'order_information', 'Order information', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2285, 1, 'en', 'plugins/ecommerce/order', 'create_new_product', 'Create a new product', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2286, 1, 'en', 'plugins/ecommerce/order', 'out_of_stock', 'Out of stock', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2287, 1, 'en', 'plugins/ecommerce/order', 'products_available', 'product(s) available', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2288, 1, 'en', 'plugins/ecommerce/order', 'no_products_found', 'No products found!', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2289, 1, 'en', 'plugins/ecommerce/order', 'default', 'Default', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2290, 1, 'en', 'plugins/ecommerce/order', 'system', 'System', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2291, 1, 'en', 'plugins/ecommerce/order', 'new_order_from', 'New order :order_id from :customer', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2292, 1, 'en', 'plugins/ecommerce/order', 'confirmation_email_was_sent_to_customer', 'The email confirmation was sent to customer', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2293, 1, 'en', 'plugins/ecommerce/order', 'address_name_required', 'The name field is required.', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2294, 1, 'en', 'plugins/ecommerce/order', 'address_phone_required', 'The phone field is required.', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2295, 1, 'en', 'plugins/ecommerce/order', 'address_email_required', 'The email field is required.', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2296, 1, 'en', 'plugins/ecommerce/order', 'address_email_unique', 'The customer with that email is existed, please choose other email or login with this email!', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2297, 1, 'en', 'plugins/ecommerce/order', 'address_state_required', 'The state field is required.', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2298, 1, 'en', 'plugins/ecommerce/order', 'address_city_required', 'The city field is required.', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2299, 1, 'en', 'plugins/ecommerce/order', 'address_address_required', 'The address field is required.', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2300, 1, 'en', 'plugins/ecommerce/order', 'create_order_from_payment_page', 'Order was created from checkout page', '2021-07-12 22:42:27', '2021-07-12 22:42:27'),
(2301, 1, 'en', 'plugins/ecommerce/order', 'order_was_verified_by', 'Order was verified by %user_name%', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2302, 1, 'en', 'plugins/ecommerce/order', 'new_order', 'New order :order_id', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2303, 1, 'en', 'plugins/ecommerce/order', 'payment_was_confirmed_by', 'Payment was confirmed (amount :money) by %user_name%', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2304, 1, 'en', 'plugins/ecommerce/order', 'edit_order', 'Edit order :code', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2305, 1, 'en', 'plugins/ecommerce/order', 'confirm_order_success', 'Confirm order successfully!', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2306, 1, 'en', 'plugins/ecommerce/order', 'error_when_sending_email', 'There is an error when sending email', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2307, 1, 'en', 'plugins/ecommerce/order', 'sent_confirmation_email_success', 'Sent confirmation email successfully!', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2308, 1, 'en', 'plugins/ecommerce/order', 'order_was_sent_to_shipping_team', 'Order was sent to shipping team', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2309, 1, 'en', 'plugins/ecommerce/order', 'by_username', 'by %user_name%', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2310, 1, 'en', 'plugins/ecommerce/order', 'shipping_was_created_from', 'Shipping was created from order %order_id%', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2311, 1, 'en', 'plugins/ecommerce/order', 'shipping_was_canceled_success', 'Shipping was cancelled successfully!', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2312, 1, 'en', 'plugins/ecommerce/order', 'shipping_was_canceled_by', 'Shipping was cancelled by %user_name%', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2313, 1, 'en', 'plugins/ecommerce/order', 'update_shipping_address_success', 'Update shipping address successfully!', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2314, 1, 'en', 'plugins/ecommerce/order', 'order_was_canceled_by', 'Order was cancelled by %user_name%', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2315, 1, 'en', 'plugins/ecommerce/order', 'confirm_payment_success', 'Confirm payment successfully!', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2316, 1, 'en', 'plugins/ecommerce/order', 'refund_amount_invalid', 'Refund amount must be lower or equal :price', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2317, 1, 'en', 'plugins/ecommerce/order', 'number_of_products_invalid', 'Number of products refund is not valid!', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2318, 1, 'en', 'plugins/ecommerce/order', 'cannot_found_payment_for_this_order', 'Cannot found payment for this order!', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2319, 1, 'en', 'plugins/ecommerce/order', 'refund_success_with_price', 'Refund success :price', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2320, 1, 'en', 'plugins/ecommerce/order', 'refund_success', 'Refund successfully!', '2021-07-12 22:42:28', '2021-07-12 22:42:28');
INSERT INTO `translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(2321, 1, 'en', 'plugins/ecommerce/order', 'order_is_not_existed', 'Order is not existed!', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2322, 1, 'en', 'plugins/ecommerce/order', 'reorder', 'Reorder', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2323, 1, 'en', 'plugins/ecommerce/order', 'sent_email_incomplete_order_success', 'Sent email to remind about incomplete order successfully!', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2324, 1, 'en', 'plugins/ecommerce/order', 'applied_coupon_success', 'Applied coupon \":code\" successfully!', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2325, 1, 'en', 'plugins/ecommerce/order', 'new_order_notice', 'You have <span class=\"bold\">:count</span> New Order(s)', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2326, 1, 'en', 'plugins/ecommerce/order', 'view_all', 'View all', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2327, 1, 'en', 'plugins/ecommerce/order', 'cancel_order', 'Cancel order', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2328, 1, 'en', 'plugins/ecommerce/order', 'order_canceled', 'Order canceled', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2329, 1, 'en', 'plugins/ecommerce/order', 'order_was_canceled_at', 'Order was canceled at', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2330, 1, 'en', 'plugins/ecommerce/order', 'completed', 'Completed', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2331, 1, 'en', 'plugins/ecommerce/order', 'uncompleted', 'Uncompleted', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2332, 1, 'en', 'plugins/ecommerce/order', 'sku', 'SKU', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2333, 1, 'en', 'plugins/ecommerce/order', 'shipping', 'Shipping', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2334, 1, 'en', 'plugins/ecommerce/order', 'warehouse', 'Warehouse', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2335, 1, 'en', 'plugins/ecommerce/order', 'sub_amount', 'Sub amount', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2336, 1, 'en', 'plugins/ecommerce/order', 'discount', 'Discount', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2337, 1, 'en', 'plugins/ecommerce/order', 'coupon_code', 'Coupon code: \":code\"', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2338, 1, 'en', 'plugins/ecommerce/order', 'shipping_fee', 'Shipping fee', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2339, 1, 'en', 'plugins/ecommerce/order', 'tax', 'Tax', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2340, 1, 'en', 'plugins/ecommerce/order', 'total_amount', 'Total amount', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2341, 1, 'en', 'plugins/ecommerce/order', 'paid_amount', 'Paid amount', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2342, 1, 'en', 'plugins/ecommerce/order', 'refunded_amount', 'Refunded amount', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2343, 1, 'en', 'plugins/ecommerce/order', 'amount_received', 'The amount actually received', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2344, 1, 'en', 'plugins/ecommerce/order', 'download_invoice', 'Download invoice', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2345, 1, 'en', 'plugins/ecommerce/order', 'note', 'Note', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2346, 1, 'en', 'plugins/ecommerce/order', 'add_note', 'Add note...', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2347, 1, 'en', 'plugins/ecommerce/order', 'save', 'Save', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2348, 1, 'en', 'plugins/ecommerce/order', 'order_was_confirmed', 'Order was confirmed', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2349, 1, 'en', 'plugins/ecommerce/order', 'confirm_order', 'Confirm order', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2350, 1, 'en', 'plugins/ecommerce/order', 'confirm', 'Confirm', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2351, 1, 'en', 'plugins/ecommerce/order', 'order_was_canceled', 'Order was canceled', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2352, 1, 'en', 'plugins/ecommerce/order', 'pending_payment', 'Pending payment', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2353, 1, 'en', 'plugins/ecommerce/order', 'payment_was_accepted', 'Payment :money was accepted', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2354, 1, 'en', 'plugins/ecommerce/order', 'payment_was_refunded', 'Payment was refunded', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2355, 1, 'en', 'plugins/ecommerce/order', 'confirm_payment', 'Confirm payment', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2356, 1, 'en', 'plugins/ecommerce/order', 'refund', 'Refund', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2357, 1, 'en', 'plugins/ecommerce/order', 'all_products_are_not_delivered', 'All products are not delivered', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2358, 1, 'en', 'plugins/ecommerce/order', 'delivery', 'Delivery', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2359, 1, 'en', 'plugins/ecommerce/order', 'history', 'History', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2360, 1, 'en', 'plugins/ecommerce/order', 'order_number', 'Order number', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2361, 1, 'en', 'plugins/ecommerce/order', 'description', 'Description', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2362, 1, 'en', 'plugins/ecommerce/order', 'from', 'from', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2363, 1, 'en', 'plugins/ecommerce/order', 'status', 'Status', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2364, 1, 'en', 'plugins/ecommerce/order', 'successfully', 'Successfully', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2365, 1, 'en', 'plugins/ecommerce/order', 'transaction_type', 'Transaction\'s type', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2366, 1, 'en', 'plugins/ecommerce/order', 'staff', 'Staff', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2367, 1, 'en', 'plugins/ecommerce/order', 'refund_date', 'Refund date', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2368, 1, 'en', 'plugins/ecommerce/order', 'n_a', 'N\\A', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2369, 1, 'en', 'plugins/ecommerce/order', 'payment_date', 'Payment date', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2370, 1, 'en', 'plugins/ecommerce/order', 'payment_gateway', 'Payment gateway', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2371, 1, 'en', 'plugins/ecommerce/order', 'transaction_amount', 'Transaction amount', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2372, 1, 'en', 'plugins/ecommerce/order', 'resend', 'Resend', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2373, 1, 'en', 'plugins/ecommerce/order', 'orders', 'Orders', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2374, 1, 'en', 'plugins/ecommerce/order', 'shipping_address', 'Shipping address', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2375, 1, 'en', 'plugins/ecommerce/order', 'default_store', 'Default store', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2376, 1, 'en', 'plugins/ecommerce/order', 'update_address', 'Update address', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2377, 1, 'en', 'plugins/ecommerce/order', 'cancel', 'Cancel', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2378, 1, 'en', 'plugins/ecommerce/order', 'have_an_account_already', 'Have an account already', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2379, 1, 'en', 'plugins/ecommerce/order', 'dont_have_an_account_yet', 'Don\'t have an account yet', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2380, 1, 'en', 'plugins/ecommerce/order', 'mark_payment_as_confirmed', 'Mark <span>:method</span> as confirmed', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2381, 1, 'en', 'plugins/ecommerce/order', 'resend_order_confirmation', 'Resend order confirmation', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2382, 1, 'en', 'plugins/ecommerce/order', 'resend_order_confirmation_description', 'Confirmation email will be sent to <strong>:email</strong>?', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2383, 1, 'en', 'plugins/ecommerce/order', 'send', 'Send', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2384, 1, 'en', 'plugins/ecommerce/order', 'update', 'Update', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2385, 1, 'en', 'plugins/ecommerce/order', 'cancel_shipping_confirmation', 'Cancel shipping confirmation?', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2386, 1, 'en', 'plugins/ecommerce/order', 'cancel_shipping_confirmation_description', 'Cancel shipping confirmation?', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2387, 1, 'en', 'plugins/ecommerce/order', 'cancel_order_confirmation', 'Cancel order confirmation?', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2388, 1, 'en', 'plugins/ecommerce/order', 'cancel_order_confirmation_description', 'Are you sure you want to cancel this order? This action cannot rollback', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2389, 1, 'en', 'plugins/ecommerce/order', 'confirm_payment_confirmation_description', 'Processed by <strong>:method</strong>. Did you receive payment outside the system? This payment won\'t be saved into system and cannot be refunded', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2390, 1, 'en', 'plugins/ecommerce/order', 'save_note', 'Save note', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2391, 1, 'en', 'plugins/ecommerce/order', 'order_note', 'Order note', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2392, 1, 'en', 'plugins/ecommerce/order', 'order_note_placeholder', 'Note about order, ex: time or shipping instruction.', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2393, 1, 'en', 'plugins/ecommerce/order', 'order_amount', 'Order amount', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2394, 1, 'en', 'plugins/ecommerce/order', 'additional_information', 'Additional information', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2395, 1, 'en', 'plugins/ecommerce/order', 'notice_about_incomplete_order', 'Notice about incomplete order', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2396, 1, 'en', 'plugins/ecommerce/order', 'notice_about_incomplete_order_description', 'Remind email about uncompleted order will be send to <strong>:email</strong>?', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2397, 1, 'en', 'plugins/ecommerce/order', 'incomplete_order_description_1', 'An incomplete order is when a potential customer places items in their shopping cart, and goes all the way through to the payment page, but then doesn\'t complete the transaction.', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2398, 1, 'en', 'plugins/ecommerce/order', 'incomplete_order_description_2', 'If you have contacted customers and they want to continue buying, you can help them complete their order by following the link:', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2399, 1, 'en', 'plugins/ecommerce/order', 'send_an_email_to_recover_this_order', 'Send an email to customer to recover this order', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2400, 1, 'en', 'plugins/ecommerce/order', 'see_maps', 'See maps', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2401, 1, 'en', 'plugins/ecommerce/order', 'one_or_more_products_dont_have_enough_quantity', 'One or more products don\'t have enough quantity!', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2402, 1, 'en', 'plugins/ecommerce/order', 'cannot_send_order_recover_to_mail', 'The email could not be found so it can\'t send a recovery email to the customer.', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2403, 1, 'en', 'plugins/ecommerce/order', 'payment_info', 'Payment Info', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2404, 1, 'en', 'plugins/ecommerce/payment', 'name', 'Payments', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2405, 1, 'en', 'plugins/ecommerce/payment', 'payment_method', 'Payment methods', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2406, 1, 'en', 'plugins/ecommerce/payment', 'view_payment', 'View payment #', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2407, 1, 'en', 'plugins/ecommerce/payment', 'charge_id', 'Charge ID', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2408, 1, 'en', 'plugins/ecommerce/payment', 'amount', 'Amount', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2409, 1, 'en', 'plugins/ecommerce/payment', 'currency', 'Currency', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2410, 1, 'en', 'plugins/ecommerce/payment', 'user', 'User', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2411, 1, 'en', 'plugins/ecommerce/payment', 'paypal_name_required', 'PayPal\'s name is required!', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2412, 1, 'en', 'plugins/ecommerce/payment', 'paypal_name_max', 'PayPal\'s name is too long!', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2413, 1, 'en', 'plugins/ecommerce/payment', 'stripe_name_required', 'Stripe\'s name is required!', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2414, 1, 'en', 'plugins/ecommerce/payment', 'stripe_name_max', 'Stripe\'s name is too long!', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2415, 1, 'en', 'plugins/ecommerce/payment', 'status', 'Status', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2416, 1, 'en', 'plugins/ecommerce/payment', 'enabled', 'Enabled', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2417, 1, 'en', 'plugins/ecommerce/payment', 'disabled', 'Disabled', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2418, 1, 'en', 'plugins/ecommerce/payment', 'client_id', 'Client ID', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2419, 1, 'en', 'plugins/ecommerce/payment', 'client_secret', 'Client Secret', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2420, 1, 'en', 'plugins/ecommerce/payment', 'mode', 'Mode', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2421, 1, 'en', 'plugins/ecommerce/payment', 'sandbox', 'Sandbox', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2422, 1, 'en', 'plugins/ecommerce/payment', 'live', 'Live', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2423, 1, 'en', 'plugins/ecommerce/payment', 'enable_payment_log', 'Enable Payment Log', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2424, 1, 'en', 'plugins/ecommerce/payment', 'yes', 'Yes', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2425, 1, 'en', 'plugins/ecommerce/payment', 'no', 'No', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2426, 1, 'en', 'plugins/ecommerce/payment', 'client_key', 'Client Key', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2427, 1, 'en', 'plugins/ecommerce/payment', 'stripe', 'Stripe', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2428, 1, 'en', 'plugins/ecommerce/payment', 'paypal', 'PayPal', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2429, 1, 'en', 'plugins/ecommerce/payment', 'action', 'Action', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2430, 1, 'en', 'plugins/ecommerce/payment', 'go_back', 'Go back', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2431, 1, 'en', 'plugins/ecommerce/payment', 'view', 'View', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2432, 1, 'en', 'plugins/ecommerce/payment', 'cash_on_delivery', 'Cash on delivery (COD)', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2433, 1, 'en', 'plugins/ecommerce/payment', 'via_bank_transfer', 'Via bank transfer', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2434, 1, 'en', 'plugins/ecommerce/payment', 'payment_via_cart', 'Payment via card', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2435, 1, 'en', 'plugins/ecommerce/payment', 'card_number', 'Card number', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2436, 1, 'en', 'plugins/ecommerce/payment', 'full_name', 'Full name', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2437, 1, 'en', 'plugins/ecommerce/payment', 'payment_via_paypal', 'Payment via PayPal', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2438, 1, 'en', 'plugins/ecommerce/payment', 'mm_yy', 'MM/YY', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2439, 1, 'en', 'plugins/ecommerce/payment', 'cvc', 'CVC', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2440, 1, 'en', 'plugins/ecommerce/payment', 'details', 'Details', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2441, 1, 'en', 'plugins/ecommerce/payment', 'payer_name', 'Payer Name', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2442, 1, 'en', 'plugins/ecommerce/payment', 'email', 'Email', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2443, 1, 'en', 'plugins/ecommerce/payment', 'phone', 'Phone', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2444, 1, 'en', 'plugins/ecommerce/payment', 'country', 'Country', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2445, 1, 'en', 'plugins/ecommerce/payment', 'shipping_address', 'Shipping Address', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2446, 1, 'en', 'plugins/ecommerce/payment', 'payment_details', 'Payment Details', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2447, 1, 'en', 'plugins/ecommerce/payment', 'card', 'Card', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2448, 1, 'en', 'plugins/ecommerce/payment', 'address', 'Address', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2449, 1, 'en', 'plugins/ecommerce/payment', 'could_not_get_stripe_token', 'Could not get Stripe token to make a charge.', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2450, 1, 'en', 'plugins/ecommerce/payment', 'new_payment', 'Payment for order :id', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2451, 1, 'en', 'plugins/ecommerce/payment', 'payment_id', 'Payment ID', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2452, 1, 'en', 'plugins/ecommerce/prices', 'name', 'Price', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2453, 1, 'en', 'plugins/ecommerce/prices', 'create', 'New price', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2454, 1, 'en', 'plugins/ecommerce/prices', 'edit', 'Edit price', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2455, 1, 'en', 'plugins/ecommerce/prices', 'list', 'List price', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2456, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'name', 'Product attribute sets', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2457, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'create', 'New product attribute set', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2458, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'edit', 'Edit product attribute set', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2459, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'visible_in_categories', 'Visible in categories', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2460, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'product_with_more_version', 'Product with more version', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2461, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'create_a_version', 'Create a version', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2462, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'enabled', 'Enabled', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2463, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'attributes', 'Attributes', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2464, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'price', 'Price', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2465, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'edit_btn', 'Edit', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2466, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'remove_btn', 'Remove', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2467, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'product', 'Product', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2468, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'back_to_product', 'Back to product', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2469, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'save', 'Save', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2470, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'other_existing_versions', 'Other existing versions', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2471, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'version_information', 'Version information', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2472, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'add_rule', 'Add rule', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2473, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'rules', 'Rules', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2474, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'pricing', 'Pricing', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2475, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'sale_price', 'Sale price', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2476, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'sale_type', 'Sale type', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2477, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'no_sale_price', 'No sale price', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2478, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'always_on_sale', 'Always on sale', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2479, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'limited_time', 'Limited time', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2480, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'from', 'From', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2481, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'to', 'To', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2482, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'storehouse', 'Storehouse', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2483, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'no_storehouse_management', 'No storehouse management', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2484, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'with_storehouse_management', 'With storehouse management', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2485, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'quantity', 'Quantity', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2486, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'allow_customer_checkout_out_of_stock', 'Allow customer checkout when this product out of stock', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2487, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'shipping', 'Shipping', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2488, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'length', 'Length', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2489, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'wide', 'Wide', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2490, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'height', 'Height', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2491, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'weight', 'Weight', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2492, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'version_images', 'Version images', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2493, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'add_new_image', 'Add new image', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2494, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'attribute_set', 'Attribute set', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2495, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'value', 'Value', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2496, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'dropdown_swatch', 'Dropdown Swatch', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2497, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'visual_swatch', 'Visual Swatch', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2498, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'text_swatch', 'Text Swatch', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2499, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'display_layout', 'Display Layout', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2500, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'searchable', 'Searchable', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2501, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'comparable', 'Comparable', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2502, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'use_in_product_listing', 'Used in product listing', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2503, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'attributes_list', 'Attributes list', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2504, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'is_default', 'Is default?', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2505, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'title', 'Title', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2506, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'slug', 'Slug', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2507, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'color', 'Color', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2508, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'image', 'Image', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2509, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'remove', 'Remove', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2510, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'add_new_attribute', 'Add new attribute', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2511, 1, 'en', 'plugins/ecommerce/product-attributes', 'name', 'Product attributes', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2512, 1, 'en', 'plugins/ecommerce/product-attributes', 'create', 'New product attribute', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2513, 1, 'en', 'plugins/ecommerce/product-attributes', 'edit', 'Edit product attribute', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2514, 1, 'en', 'plugins/ecommerce/product-attributes', 'intro.title', 'Manage product attributes', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2515, 1, 'en', 'plugins/ecommerce/product-attributes', 'intro.description', 'Product attribute such as color, width, height ...', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2516, 1, 'en', 'plugins/ecommerce/product-attributes', 'intro.button_text', 'Create product attribute', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2517, 1, 'en', 'plugins/ecommerce/product-categories', 'name', 'Product categories', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2518, 1, 'en', 'plugins/ecommerce/product-categories', 'create', 'Create new product category', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2519, 1, 'en', 'plugins/ecommerce/product-categories', 'edit', 'Edit product category', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2520, 1, 'en', 'plugins/ecommerce/product-categories', 'list', 'List product categories', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2521, 1, 'en', 'plugins/ecommerce/product-categories', 'none', 'None', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2522, 1, 'en', 'plugins/ecommerce/product-categories', 'menu', 'Product categories', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2523, 1, 'en', 'plugins/ecommerce/product-categories', 'intro.title', 'Manage product categories', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2524, 1, 'en', 'plugins/ecommerce/product-categories', 'intro.description', 'Such as clothes, shoes, bags, jewelry ...', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2525, 1, 'en', 'plugins/ecommerce/product-categories', 'intro.button_text', 'Create product category', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2526, 1, 'en', 'plugins/ecommerce/product-collections', 'name', 'Product collections', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2527, 1, 'en', 'plugins/ecommerce/product-collections', 'create', 'New product collection', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2528, 1, 'en', 'plugins/ecommerce/product-collections', 'edit', 'Edit product collection', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2529, 1, 'en', 'plugins/ecommerce/product-collections', 'slug_help_block', 'Label key: <code>:slug</code>. We will use this key for filter.', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2530, 1, 'en', 'plugins/ecommerce/product-collections', 'intro.title', 'Manage product collections', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2531, 1, 'en', 'plugins/ecommerce/product-collections', 'intro.description', 'Group your products into collections to make it easier for customers to find them by category.', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2532, 1, 'en', 'plugins/ecommerce/product-collections', 'intro.button_text', 'Create product collection', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2533, 1, 'en', 'plugins/ecommerce/product-label', 'name', 'Product labels', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2534, 1, 'en', 'plugins/ecommerce/product-label', 'create', 'New product label', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2535, 1, 'en', 'plugins/ecommerce/product-label', 'edit', 'Edit product label', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2536, 1, 'en', 'plugins/ecommerce/product-label', 'color', 'Color', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2537, 1, 'en', 'plugins/ecommerce/product-label', 'color_placeholder', 'Example: #f0f0f0', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2538, 1, 'en', 'plugins/ecommerce/product-tag', 'name', 'Product tags', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2539, 1, 'en', 'plugins/ecommerce/product-tag', 'create', 'New product tag', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2540, 1, 'en', 'plugins/ecommerce/product-tag', 'edit', 'Edit product tag', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2541, 1, 'en', 'plugins/ecommerce/products', 'name', 'Products', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2542, 1, 'en', 'plugins/ecommerce/products', 'create', 'New product', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2543, 1, 'en', 'plugins/ecommerce/products', 'edit', 'Edit product - :name', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2544, 1, 'en', 'plugins/ecommerce/products', 'form.name', 'Name', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2545, 1, 'en', 'plugins/ecommerce/products', 'form.name_placeholder', 'Product\'s name (Maximum 120 characters)', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2546, 1, 'en', 'plugins/ecommerce/products', 'form.description', 'Description', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2547, 1, 'en', 'plugins/ecommerce/products', 'form.description_placeholder', 'Short description for product (Maximum 400 characters)', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2548, 1, 'en', 'plugins/ecommerce/products', 'form.categories', 'Categories', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2549, 1, 'en', 'plugins/ecommerce/products', 'form.content', 'Content', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2550, 1, 'en', 'plugins/ecommerce/products', 'form.price', 'Price', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2551, 1, 'en', 'plugins/ecommerce/products', 'form.quantity', 'Quantity', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2552, 1, 'en', 'plugins/ecommerce/products', 'form.brand', 'Brand', '2021-07-12 22:42:28', '2021-07-12 22:42:28'),
(2553, 1, 'en', 'plugins/ecommerce/products', 'form.width', 'Width', '2021-07-12 22:42:29', '2021-07-12 22:42:29'),
(2554, 1, 'en', 'plugins/ecommerce/products', 'form.height', 'Height', '2021-07-12 22:42:29', '2021-07-12 22:42:29'),
(2555, 1, 'en', 'plugins/ecommerce/products', 'form.weight', 'Weight', '2021-07-12 22:42:29', '2021-07-12 22:42:29'),
(2556, 1, 'en', 'plugins/ecommerce/products', 'form.date.end', 'From date', '2021-07-12 22:42:29', '2021-07-12 22:42:29'),
(2557, 1, 'en', 'plugins/ecommerce/products', 'form.date.start', 'To date', '2021-07-12 22:42:29', '2021-07-12 22:42:29'),
(2558, 1, 'en', 'plugins/ecommerce/products', 'form.image', 'Images', '2021-07-12 22:42:29', '2021-07-12 22:42:29'),
(2559, 1, 'en', 'plugins/ecommerce/products', 'form.collections', 'Product collections', '2021-07-12 22:42:29', '2021-07-12 22:42:29'),
(2560, 1, 'en', 'plugins/ecommerce/products', 'form.labels', 'Labels', '2021-07-12 22:42:29', '2021-07-12 22:42:29'),
(2561, 1, 'en', 'plugins/ecommerce/products', 'form.price_sale', 'Price sale', '2021-07-12 22:42:29', '2021-07-12 22:42:29'),
(2562, 1, 'en', 'plugins/ecommerce/products', 'form.product_type.title', 'Product type', '2021-07-12 22:42:29', '2021-07-12 22:42:29'),
(2563, 1, 'en', 'plugins/ecommerce/products', 'form.product', 'Product', '2021-07-12 22:42:29', '2021-07-12 22:42:29'),
(2564, 1, 'en', 'plugins/ecommerce/products', 'form.total', 'Total', '2021-07-12 22:42:29', '2021-07-12 22:42:29'),
(2565, 1, 'en', 'plugins/ecommerce/products', 'form.sub_total', 'Subtotal', '2021-07-12 22:42:29', '2021-07-12 22:42:29'),
(2566, 1, 'en', 'plugins/ecommerce/products', 'form.shipping_fee', 'Shipping fee', '2021-07-12 22:42:29', '2021-07-12 22:42:29'),
(2567, 1, 'en', 'plugins/ecommerce/products', 'form.discount', 'Discount', '2021-07-12 22:42:29', '2021-07-12 22:42:29'),
(2568, 1, 'en', 'plugins/ecommerce/products', 'form.options', 'Options', '2021-07-12 22:42:29', '2021-07-12 22:42:29'),
(2569, 1, 'en', 'plugins/ecommerce/products', 'form.shipping.height', 'Height', '2021-07-12 22:42:29', '2021-07-12 22:42:29'),
(2570, 1, 'en', 'plugins/ecommerce/products', 'form.shipping.length', 'Length', '2021-07-12 22:42:29', '2021-07-12 22:42:29'),
(2571, 1, 'en', 'plugins/ecommerce/products', 'form.shipping.title', 'Shipping', '2021-07-12 22:42:29', '2021-07-12 22:42:29'),
(2572, 1, 'en', 'plugins/ecommerce/products', 'form.shipping.weight', 'Weight', '2021-07-12 22:42:29', '2021-07-12 22:42:29'),
(2573, 1, 'en', 'plugins/ecommerce/products', 'form.shipping.wide', 'Wide', '2021-07-12 22:42:29', '2021-07-12 22:42:29'),
(2574, 1, 'en', 'plugins/ecommerce/products', 'form.stock.allow_order_when_out', 'Allow customer checkout when this product out of stock', '2021-07-12 22:42:29', '2021-07-12 22:42:29'),
(2575, 1, 'en', 'plugins/ecommerce/products', 'form.stock.in_stock', 'In stock', '2021-07-12 22:42:29', '2021-07-12 22:42:29'),
(2576, 1, 'en', 'plugins/ecommerce/products', 'form.stock.out_stock', 'Out stock', '2021-07-12 22:42:29', '2021-07-12 22:42:29'),
(2577, 1, 'en', 'plugins/ecommerce/products', 'form.stock.title', 'Stock status', '2021-07-12 22:42:29', '2021-07-12 22:42:29'),
(2578, 1, 'en', 'plugins/ecommerce/products', 'form.storehouse.no_storehouse', 'No storehouse management', '2021-07-12 22:42:29', '2021-07-12 22:42:29'),
(2579, 1, 'en', 'plugins/ecommerce/products', 'form.storehouse.storehouse', 'With storehouse management', '2021-07-12 22:42:29', '2021-07-12 22:42:29'),
(2580, 1, 'en', 'plugins/ecommerce/products', 'form.storehouse.title', 'Storehouse', '2021-07-12 22:42:29', '2021-07-12 22:42:29'),
(2581, 1, 'en', 'plugins/ecommerce/products', 'form.storehouse.quantity', 'Quantity', '2021-07-12 22:42:29', '2021-07-12 22:42:29'),
(2582, 1, 'en', 'plugins/ecommerce/products', 'form.tax', 'Tax', '2021-07-12 22:42:29', '2021-07-12 22:42:29'),
(2583, 1, 'en', 'plugins/ecommerce/products', 'form.is_default', 'Is default', '2021-07-12 22:42:29', '2021-07-12 22:42:29'),
(2584, 1, 'en', 'plugins/ecommerce/products', 'form.action', 'Action', '2021-07-12 22:42:29', '2021-07-12 22:42:29'),
(2585, 1, 'en', 'plugins/ecommerce/products', 'form.restock_quantity', 'Restock quantity', '2021-07-12 22:42:29', '2021-07-12 22:42:29'),
(2586, 1, 'en', 'plugins/ecommerce/products', 'form.remain', 'Remain', '2021-07-12 22:42:29', '2021-07-12 22:42:29'),
(2587, 1, 'en', 'plugins/ecommerce/products', 'form.choose_discount_period', 'Choose Discount Period', '2021-07-12 22:42:29', '2021-07-12 22:42:29'),
(2588, 1, 'en', 'plugins/ecommerce/products', 'form.cancel', 'Cancel', '2021-07-12 22:42:29', '2021-07-12 22:42:29'),
(2589, 1, 'en', 'plugins/ecommerce/products', 'form.no_results', 'No results!', '2021-07-12 22:42:29', '2021-07-12 22:42:29'),
(2590, 1, 'en', 'plugins/ecommerce/products', 'form.value', 'Value', '2021-07-12 22:42:29', '2021-07-12 22:42:29'),
(2591, 1, 'en', 'plugins/ecommerce/products', 'form.attribute_name', 'Attribute name', '2021-07-12 22:42:29', '2021-07-12 22:42:29'),
(2592, 1, 'en', 'plugins/ecommerce/products', 'form.add_more_attribute', 'Add more attribute', '2021-07-12 22:42:29', '2021-07-12 22:42:29'),
(2593, 1, 'en', 'plugins/ecommerce/products', 'form.continue', 'Continue', '2021-07-12 22:42:29', '2021-07-12 22:42:29'),
(2594, 1, 'en', 'plugins/ecommerce/products', 'form.add_new_attributes', 'Add new attributes', '2021-07-12 22:42:29', '2021-07-12 22:42:29'),
(2595, 1, 'en', 'plugins/ecommerce/products', 'form.add_new_attributes_description', 'Adding new attributes helps the product to have many options, such as size or color.', '2021-07-12 22:42:29', '2021-07-12 22:42:29'),
(2596, 1, 'en', 'plugins/ecommerce/products', 'form.create_product_variations', ':link to create product variations!', '2021-07-12 22:42:29', '2021-07-12 22:42:29'),
(2597, 1, 'en', 'plugins/ecommerce/products', 'form.tags', 'Tags', '2021-07-12 22:42:29', '2021-07-12 22:42:29'),
(2598, 1, 'en', 'plugins/ecommerce/products', 'form.write_some_tags', 'Write some tags', '2021-07-12 22:42:29', '2021-07-12 22:42:29'),
(2599, 1, 'en', 'plugins/ecommerce/products', 'form.variation_existed', 'This variation is existed.', '2021-07-12 22:42:29', '2021-07-12 22:42:29'),
(2600, 1, 'en', 'plugins/ecommerce/products', 'form.no_attributes_selected', 'No attributes selected!', '2021-07-12 22:42:29', '2021-07-12 22:42:29'),
(2601, 1, 'en', 'plugins/ecommerce/products', 'form.added_variation_success', 'Added variation successfully!', '2021-07-12 22:42:29', '2021-07-12 22:42:29'),
(2602, 1, 'en', 'plugins/ecommerce/products', 'form.updated_variation_success', 'Updated variation successfully!', '2021-07-12 22:42:29', '2021-07-12 22:42:29'),
(2603, 1, 'en', 'plugins/ecommerce/products', 'form.created_all_variation_success', 'Created all variations successfully!', '2021-07-12 22:42:29', '2021-07-12 22:42:29'),
(2604, 1, 'en', 'plugins/ecommerce/products', 'form.updated_product_attributes_success', 'Updated product attributes successfully!', '2021-07-12 22:42:29', '2021-07-12 22:42:29'),
(2605, 1, 'en', 'plugins/ecommerce/products', 'form.stock_status', 'Stock status', '2021-07-12 22:42:29', '2021-07-12 22:42:29'),
(2606, 1, 'en', 'plugins/ecommerce/products', 'form.auto_generate_sku', 'Auto generate SKU?', '2021-07-12 22:42:29', '2021-07-12 22:42:29'),
(2607, 1, 'en', 'plugins/ecommerce/products', 'price', 'Price', '2021-07-12 22:42:29', '2021-07-12 22:42:29'),
(2608, 1, 'en', 'plugins/ecommerce/products', 'quantity', 'Quantity', '2021-07-12 22:42:29', '2021-07-12 22:42:29'),
(2609, 1, 'en', 'plugins/ecommerce/products', 'type', 'Type', '2021-07-12 22:42:29', '2021-07-12 22:42:29'),
(2610, 1, 'en', 'plugins/ecommerce/products', 'image', 'Thumbnail', '2021-07-12 22:42:29', '2021-07-12 22:42:29'),
(2611, 1, 'en', 'plugins/ecommerce/products', 'sku', 'SKU', '2021-07-12 22:42:29', '2021-07-12 22:42:29'),
(2612, 1, 'en', 'plugins/ecommerce/products', 'brand', 'Brand', '2021-07-12 22:42:29', '2021-07-12 22:42:29'),
(2613, 1, 'en', 'plugins/ecommerce/products', 'cannot_delete', 'Product could not be deleted', '2021-07-12 22:42:29', '2021-07-12 22:42:29'),
(2614, 1, 'en', 'plugins/ecommerce/products', 'product_deleted', 'Product deleted', '2021-07-12 22:42:29', '2021-07-12 22:42:29'),
(2615, 1, 'en', 'plugins/ecommerce/products', 'product_collections', 'Product collections', '2021-07-12 22:42:29', '2021-07-12 22:42:29'),
(2616, 1, 'en', 'plugins/ecommerce/products', 'products', 'Products', '2021-07-12 22:42:29', '2021-07-12 22:42:29'),
(2617, 1, 'en', 'plugins/ecommerce/products', 'menu', 'Products', '2021-07-12 22:42:29', '2021-07-12 22:42:29'),
(2618, 1, 'en', 'plugins/ecommerce/products', 'control.button_add_image', 'Add image', '2021-07-12 22:42:29', '2021-07-12 22:42:29'),
(2619, 1, 'en', 'plugins/ecommerce/products', 'price_sale', 'Sale price', '2021-07-12 22:42:29', '2021-07-12 22:42:29'),
(2620, 1, 'en', 'plugins/ecommerce/products', 'price_group_title', 'Manager product price', '2021-07-12 22:42:29', '2021-07-12 22:42:29'),
(2621, 1, 'en', 'plugins/ecommerce/products', 'store_house_group_title', 'Manager store house', '2021-07-12 22:42:29', '2021-07-12 22:42:29'),
(2622, 1, 'en', 'plugins/ecommerce/products', 'shipping_group_title', 'Manager shipping', '2021-07-12 22:42:29', '2021-07-12 22:42:29'),
(2623, 1, 'en', 'plugins/ecommerce/products', 'overview', 'Overview', '2021-07-12 22:42:29', '2021-07-12 22:42:29'),
(2624, 1, 'en', 'plugins/ecommerce/products', 'attributes', 'Attributes', '2021-07-12 22:42:29', '2021-07-12 22:42:29'),
(2625, 1, 'en', 'plugins/ecommerce/products', 'product_has_variations', 'Product has variations', '2021-07-12 22:42:29', '2021-07-12 22:42:29'),
(2626, 1, 'en', 'plugins/ecommerce/products', 'manage_products', 'Manage products', '2021-07-12 22:42:29', '2021-07-12 22:42:29'),
(2627, 1, 'en', 'plugins/ecommerce/products', 'add_new_product', 'Add a new product', '2021-07-12 22:42:29', '2021-07-12 22:42:29'),
(2628, 1, 'en', 'plugins/ecommerce/products', 'start_by_adding_new_product', 'Start by adding new products.', '2021-07-12 22:42:29', '2021-07-12 22:42:29'),
(2629, 1, 'en', 'plugins/ecommerce/products', 'edit_this_product', 'Edit this product', '2021-07-12 22:42:29', '2021-07-12 22:42:29'),
(2630, 1, 'en', 'plugins/ecommerce/products', 'delete', 'Delete', '2021-07-12 22:42:29', '2021-07-12 22:42:29'),
(2631, 1, 'en', 'plugins/ecommerce/products', 'related_products', 'Related products', '2021-07-12 22:42:29', '2021-07-12 22:42:29'),
(2632, 1, 'en', 'plugins/ecommerce/products', 'cross_selling_products', 'Cross-selling products', '2021-07-12 22:42:29', '2021-07-12 22:42:29'),
(2633, 1, 'en', 'plugins/ecommerce/products', 'up_selling_products', 'Up-selling products', '2021-07-12 22:42:29', '2021-07-12 22:42:29'),
(2634, 1, 'en', 'plugins/ecommerce/products', 'grouped_products', 'Grouped products', '2021-07-12 22:42:29', '2021-07-12 22:42:29'),
(2635, 1, 'en', 'plugins/ecommerce/products', 'search_products', 'Search products', '2021-07-12 22:42:29', '2021-07-12 22:42:29'),
(2636, 1, 'en', 'plugins/ecommerce/products', 'selected_products', 'Selected products', '2021-07-12 22:42:29', '2021-07-12 22:42:29'),
(2637, 1, 'en', 'plugins/ecommerce/products', 'edit_variation_item', 'Edit', '2021-07-12 22:42:29', '2021-07-12 22:42:29'),
(2638, 1, 'en', 'plugins/ecommerce/products', 'variations_box_description', 'Click on \"Edit attribute\" to add/remove attributes of variation or click on \"Add new variation\" to add variation.', '2021-07-12 22:42:29', '2021-07-12 22:42:29'),
(2639, 1, 'en', 'plugins/ecommerce/products', 'save_changes', 'Save changes', '2021-07-12 22:42:29', '2021-07-12 22:42:29'),
(2640, 1, 'en', 'plugins/ecommerce/products', 'continue', 'Continue', '2021-07-12 22:42:29', '2021-07-12 22:42:29'),
(2641, 1, 'en', 'plugins/ecommerce/products', 'edit_attribute', 'Edit attribute', '2021-07-12 22:42:29', '2021-07-12 22:42:29'),
(2642, 1, 'en', 'plugins/ecommerce/products', 'select_attribute', 'Select attribute', '2021-07-12 22:42:29', '2021-07-12 22:42:29'),
(2643, 1, 'en', 'plugins/ecommerce/products', 'add_new_variation', 'Add new variation', '2021-07-12 22:42:29', '2021-07-12 22:42:29'),
(2644, 1, 'en', 'plugins/ecommerce/products', 'edit_variation', 'Edit variation', '2021-07-12 22:42:29', '2021-07-12 22:42:29'),
(2645, 1, 'en', 'plugins/ecommerce/products', 'generate_all_variations', 'Generate all variations', '2021-07-12 22:42:29', '2021-07-12 22:42:29'),
(2646, 1, 'en', 'plugins/ecommerce/products', 'generate_all_variations_confirmation', 'Are you sure you want to generate all variations for this product?', '2021-07-12 22:42:29', '2021-07-12 22:42:29'),
(2647, 1, 'en', 'plugins/ecommerce/products', 'delete_variation', 'Delete variation?', '2021-07-12 22:42:29', '2021-07-12 22:42:29'),
(2648, 1, 'en', 'plugins/ecommerce/products', 'delete_variation_confirmation', 'Are you sure you want to delete this variation? This action cannot be undo.', '2021-07-12 22:42:29', '2021-07-12 22:42:29'),
(2649, 1, 'en', 'plugins/ecommerce/products', 'delete_variations_confirmation', 'Are you sure you want to delete those variations? This action cannot be undo.', '2021-07-12 22:42:29', '2021-07-12 22:42:29'),
(2650, 1, 'en', 'plugins/ecommerce/products', 'product_create_validate_name_required', 'Please enter product\'s name', '2021-07-12 22:42:29', '2021-07-12 22:42:29'),
(2651, 1, 'en', 'plugins/ecommerce/products', 'product_create_validate_sale_price_max', 'The discount must be less than the original price', '2021-07-12 22:42:29', '2021-07-12 22:42:29'),
(2652, 1, 'en', 'plugins/ecommerce/products', 'product_create_validate_sale_price_required_if', 'Must enter a discount when you want to schedule a promotion', '2021-07-12 22:42:29', '2021-07-12 22:42:29'),
(2653, 1, 'en', 'plugins/ecommerce/products', 'product_create_validate_end_date_after', 'End date must be after start date', '2021-07-12 22:42:29', '2021-07-12 22:42:29'),
(2654, 1, 'en', 'plugins/ecommerce/products', 'product_create_validate_start_date_required_if', 'Discount start date cannot be left blank when scheduling is selected', '2021-07-12 22:42:29', '2021-07-12 22:42:29'),
(2655, 1, 'en', 'plugins/ecommerce/products', 'product_create_validate_sale_price', 'Discounts cannot be left blank when scheduling is selected', '2021-07-12 22:42:29', '2021-07-12 22:42:29'),
(2656, 1, 'en', 'plugins/ecommerce/products', 'stock_statuses.in_stock', 'In stock', '2021-07-12 22:42:29', '2021-07-12 22:42:29'),
(2657, 1, 'en', 'plugins/ecommerce/products', 'stock_statuses.out_of_stock', 'Out of stock', '2021-07-12 22:42:29', '2021-07-12 22:42:29'),
(2658, 1, 'en', 'plugins/ecommerce/products', 'stock_statuses.on_backorder', 'On backorder', '2021-07-12 22:42:29', '2021-07-12 22:42:29'),
(2659, 1, 'en', 'plugins/ecommerce/products', 'stock_status', 'Stock status', '2021-07-12 22:42:29', '2021-07-12 22:42:29'),
(2660, 1, 'en', 'plugins/ecommerce/products', 'processing', 'Processing...', '2021-07-12 22:42:29', '2021-07-12 22:42:29'),
(2661, 1, 'en', 'plugins/ecommerce/products', 'delete_selected_variations', 'Delete selected variations', '2021-07-12 22:42:29', '2021-07-12 22:42:29'),
(2662, 1, 'en', 'plugins/ecommerce/products', 'delete_variations', 'Delete variations', '2021-07-12 22:42:29', '2021-07-12 22:42:29'),
(2663, 1, 'en', 'plugins/ecommerce/reports', 'name', 'Report', '2021-07-12 22:42:29', '2021-07-12 22:42:29'),
(2664, 1, 'en', 'plugins/ecommerce/reports', 'widget.order.title', 'Orders', '2021-07-12 22:42:29', '2021-07-12 22:42:29'),
(2665, 1, 'en', 'plugins/ecommerce/reports', 'count.revenue', 'Today revenue', '2021-07-12 22:42:29', '2021-07-12 22:42:29'),
(2666, 1, 'en', 'plugins/ecommerce/reports', 'count.orders', 'Today orders', '2021-07-12 22:42:29', '2021-07-12 22:42:29'),
(2667, 1, 'en', 'plugins/ecommerce/reports', 'count.products', 'Total products', '2021-07-12 22:42:29', '2021-07-12 22:42:29'),
(2668, 1, 'en', 'plugins/ecommerce/reports', 'count.customers', 'Total customers', '2021-07-12 22:42:29', '2021-07-12 22:42:29'),
(2669, 1, 'en', 'plugins/ecommerce/reports', 'product_name', 'Product name', '2021-07-12 22:42:29', '2021-07-12 22:42:29'),
(2670, 1, 'en', 'plugins/ecommerce/reports', 'quantity', 'Quantity', '2021-07-12 22:42:29', '2021-07-12 22:42:29'),
(2671, 1, 'en', 'plugins/ecommerce/reports', 'revenue_statistics', 'Revenue statistics', '2021-07-12 22:42:29', '2021-07-12 22:42:29'),
(2672, 1, 'en', 'plugins/ecommerce/reports', 'top_selling_products', 'Top selling products in this month', '2021-07-12 22:42:29', '2021-07-12 22:42:29'),
(2673, 1, 'en', 'plugins/ecommerce/reports', 'today', 'Today', '2021-07-12 22:42:29', '2021-07-12 22:42:29'),
(2674, 1, 'en', 'plugins/ecommerce/reports', 'this_week', 'This week', '2021-07-12 22:42:29', '2021-07-12 22:42:29'),
(2675, 1, 'en', 'plugins/ecommerce/reports', 'this_month', 'This month', '2021-07-12 22:42:29', '2021-07-12 22:42:29'),
(2676, 1, 'en', 'plugins/ecommerce/reports', 'this_year', 'This year', '2021-07-12 22:42:29', '2021-07-12 22:42:29'),
(2677, 1, 'en', 'plugins/ecommerce/reports', 'revenue_this_month', 'Revenue this month', '2021-07-12 22:42:29', '2021-07-12 22:42:29'),
(2678, 1, 'en', 'plugins/ecommerce/reports', 'order_processing_this_month', 'order(s) processing in this month', '2021-07-12 22:42:29', '2021-07-12 22:42:29'),
(2679, 1, 'en', 'plugins/ecommerce/reports', 'order_completed_this_month', 'order(s) completed in this month', '2021-07-12 22:42:29', '2021-07-12 22:42:29'),
(2680, 1, 'en', 'plugins/ecommerce/reports', 'product_will_be_out_of_stock', 'product(s) will be out of stock soon', '2021-07-12 22:42:29', '2021-07-12 22:42:29'),
(2681, 1, 'en', 'plugins/ecommerce/reports', 'product_out_of_stock', 'product(s) out of stock', '2021-07-12 22:42:29', '2021-07-12 22:42:29'),
(2682, 1, 'en', 'plugins/ecommerce/review', 'name', 'Reviews', '2021-07-12 22:42:29', '2021-07-12 22:42:29'),
(2683, 1, 'en', 'plugins/ecommerce/review', 'add_review', 'Add review', '2021-07-12 22:42:29', '2021-07-12 22:42:29'),
(2684, 1, 'en', 'plugins/ecommerce/review', 'delete_review', 'Delete review', '2021-07-12 22:42:29', '2021-07-12 22:42:29'),
(2685, 1, 'en', 'plugins/ecommerce/review', 'create_review', 'Create Review', '2021-07-12 22:42:29', '2021-07-12 22:42:29'),
(2686, 1, 'en', 'plugins/ecommerce/review', 'please_select_rating', 'Please select rating', '2021-07-12 22:42:29', '2021-07-12 22:42:29'),
(2687, 1, 'en', 'plugins/ecommerce/review', 'comment', 'Comment', '2021-07-12 22:42:29', '2021-07-12 22:42:29'),
(2688, 1, 'en', 'plugins/ecommerce/review', 'approve', 'Approve', '2021-07-12 22:42:29', '2021-07-12 22:42:29'),
(2689, 1, 'en', 'plugins/ecommerce/review', 'approved', 'Approved', '2021-07-12 22:42:29', '2021-07-12 22:42:29'),
(2690, 1, 'en', 'plugins/ecommerce/review', 'disapprove', 'Disapprove', '2021-07-12 22:42:29', '2021-07-12 22:42:29'),
(2691, 1, 'en', 'plugins/ecommerce/review', 'disapproved', 'Disapproved', '2021-07-12 22:42:29', '2021-07-12 22:42:29'),
(2692, 1, 'en', 'plugins/ecommerce/review', 'product', 'Product', '2021-07-12 22:42:29', '2021-07-12 22:42:29'),
(2693, 1, 'en', 'plugins/ecommerce/review', 'user', 'User', '2021-07-12 22:42:29', '2021-07-12 22:42:29'),
(2694, 1, 'en', 'plugins/ecommerce/review', 'star', 'Star', '2021-07-12 22:42:29', '2021-07-12 22:42:29'),
(2695, 1, 'en', 'plugins/ecommerce/review', 'status', 'Status', '2021-07-12 22:42:29', '2021-07-12 22:42:29');
INSERT INTO `translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(2696, 1, 'en', 'plugins/ecommerce/review', 'list_review', 'Customer reviews', '2021-07-12 22:42:29', '2021-07-12 22:42:29'),
(2697, 1, 'en', 'plugins/ecommerce/review', 'intro.title', 'Manage customer reviews', '2021-07-12 22:42:29', '2021-07-12 22:42:29'),
(2698, 1, 'en', 'plugins/ecommerce/review', 'intro.description', 'Customer reviews will be shown here and you can manage it to show/hide in product detail page.', '2021-07-12 22:42:29', '2021-07-12 22:42:29'),
(2699, 1, 'en', 'plugins/ecommerce/shipping', 'name', 'Shipping Rules', '2021-07-12 22:42:29', '2021-07-12 22:42:29'),
(2700, 1, 'en', 'plugins/ecommerce/shipping', 'shipping', 'Shipping', '2021-07-12 22:42:29', '2021-07-12 22:42:29'),
(2701, 1, 'en', 'plugins/ecommerce/shipping', 'title', 'Title', '2021-07-12 22:42:29', '2021-07-12 22:42:29'),
(2702, 1, 'en', 'plugins/ecommerce/shipping', 'amount', 'Amount', '2021-07-12 22:42:29', '2021-07-12 22:42:29'),
(2703, 1, 'en', 'plugins/ecommerce/shipping', 'currency', 'Currency', '2021-07-12 22:42:29', '2021-07-12 22:42:29'),
(2704, 1, 'en', 'plugins/ecommerce/shipping', 'enable', 'Enable', '2021-07-12 22:42:29', '2021-07-12 22:42:29'),
(2705, 1, 'en', 'plugins/ecommerce/shipping', 'enabled', 'Enabled', '2021-07-12 22:42:29', '2021-07-12 22:42:29'),
(2706, 1, 'en', 'plugins/ecommerce/shipping', 'disable', 'Disable', '2021-07-12 22:42:29', '2021-07-12 22:42:29'),
(2707, 1, 'en', 'plugins/ecommerce/shipping', 'disabled', 'Disabled', '2021-07-12 22:42:29', '2021-07-12 22:42:29'),
(2708, 1, 'en', 'plugins/ecommerce/shipping', 'create_shipping', 'Create a shipping', '2021-07-12 22:42:29', '2021-07-12 22:42:29'),
(2709, 1, 'en', 'plugins/ecommerce/shipping', 'edit_shipping', 'Edit shipping :code', '2021-07-12 22:42:29', '2021-07-12 22:42:29'),
(2710, 1, 'en', 'plugins/ecommerce/shipping', 'status', 'Status', '2021-07-12 22:42:29', '2021-07-12 22:42:29'),
(2711, 1, 'en', 'plugins/ecommerce/shipping', 'shipping_methods', 'Shipping methods', '2021-07-12 22:42:29', '2021-07-12 22:42:29'),
(2712, 1, 'en', 'plugins/ecommerce/shipping', 'create_shipping_method', 'Create shipping method', '2021-07-12 22:42:29', '2021-07-12 22:42:29'),
(2713, 1, 'en', 'plugins/ecommerce/shipping', 'edit_shipping_method', 'Edit shipping method', '2021-07-12 22:42:29', '2021-07-12 22:42:29'),
(2714, 1, 'en', 'plugins/ecommerce/shipping', 'add_shipping_region', 'Add shipping region', '2021-07-12 22:42:29', '2021-07-12 22:42:29'),
(2715, 1, 'en', 'plugins/ecommerce/shipping', 'country', 'Country', '2021-07-12 22:42:29', '2021-07-12 22:42:29'),
(2716, 1, 'en', 'plugins/ecommerce/shipping', 'state', 'State', '2021-07-12 22:42:29', '2021-07-12 22:42:29'),
(2717, 1, 'en', 'plugins/ecommerce/shipping', 'city', 'City', '2021-07-12 22:42:29', '2021-07-12 22:42:29'),
(2718, 1, 'en', 'plugins/ecommerce/shipping', 'address', 'Address', '2021-07-12 22:42:29', '2021-07-12 22:42:29'),
(2719, 1, 'en', 'plugins/ecommerce/shipping', 'phone', 'Phone', '2021-07-12 22:42:29', '2021-07-12 22:42:29'),
(2720, 1, 'en', 'plugins/ecommerce/shipping', 'email', 'Email', '2021-07-12 22:42:29', '2021-07-12 22:42:29'),
(2721, 1, 'en', 'plugins/ecommerce/shipping', 'zip_code', 'Zip code', '2021-07-12 22:42:29', '2021-07-12 22:42:29'),
(2722, 1, 'en', 'plugins/ecommerce/shipping', 'methods.default', 'Default', '2021-07-12 22:42:29', '2021-07-12 22:42:29'),
(2723, 1, 'en', 'plugins/ecommerce/shipping', 'statuses.not_approved', 'Not approved', '2021-07-12 22:42:29', '2021-07-12 22:42:29'),
(2724, 1, 'en', 'plugins/ecommerce/shipping', 'statuses.approved', 'Approved', '2021-07-12 22:42:29', '2021-07-12 22:42:29'),
(2725, 1, 'en', 'plugins/ecommerce/shipping', 'statuses.picking', 'Picking', '2021-07-12 22:42:29', '2021-07-12 22:42:29'),
(2726, 1, 'en', 'plugins/ecommerce/shipping', 'statuses.delay_picking', 'Delay picking', '2021-07-12 22:42:29', '2021-07-12 22:42:29'),
(2727, 1, 'en', 'plugins/ecommerce/shipping', 'statuses.picked', 'Picked', '2021-07-12 22:42:29', '2021-07-12 22:42:29'),
(2728, 1, 'en', 'plugins/ecommerce/shipping', 'statuses.not_picked', 'Not picked', '2021-07-12 22:42:29', '2021-07-12 22:42:29'),
(2729, 1, 'en', 'plugins/ecommerce/shipping', 'statuses.delivering', 'Delivering', '2021-07-12 22:42:29', '2021-07-12 22:42:29'),
(2730, 1, 'en', 'plugins/ecommerce/shipping', 'statuses.delivered', 'Delivered', '2021-07-12 22:42:29', '2021-07-12 22:42:29'),
(2731, 1, 'en', 'plugins/ecommerce/shipping', 'statuses.not_delivered', 'Not delivered', '2021-07-12 22:42:29', '2021-07-12 22:42:29'),
(2732, 1, 'en', 'plugins/ecommerce/shipping', 'statuses.audited', 'Audited', '2021-07-12 22:42:29', '2021-07-12 22:42:29'),
(2733, 1, 'en', 'plugins/ecommerce/shipping', 'statuses.canceled', 'Canceled', '2021-07-12 22:42:29', '2021-07-12 22:42:29'),
(2734, 1, 'en', 'plugins/ecommerce/shipping', 'cod_statuses.pending', 'Pending', '2021-07-12 22:42:29', '2021-07-12 22:42:29'),
(2735, 1, 'en', 'plugins/ecommerce/shipping', 'cod_statuses.completed', 'Completed', '2021-07-12 22:42:29', '2021-07-12 22:42:29'),
(2736, 1, 'en', 'plugins/ecommerce/shipping', 'delete', 'Delete', '2021-07-12 22:42:29', '2021-07-12 22:42:29'),
(2737, 1, 'en', 'plugins/ecommerce/shipping', 'shipping_rules', 'Shipping Rules', '2021-07-12 22:42:29', '2021-07-12 22:42:29'),
(2738, 1, 'en', 'plugins/ecommerce/shipping', 'shipping_rules_description', 'Rules to calculate shipping fee.', '2021-07-12 22:42:29', '2021-07-12 22:42:29'),
(2739, 1, 'en', 'plugins/ecommerce/shipping', 'select_country', 'Select country', '2021-07-12 22:42:29', '2021-07-12 22:42:29'),
(2740, 1, 'en', 'plugins/ecommerce/shipping', 'add_shipping_rule', 'Add shipping rule', '2021-07-12 22:42:29', '2021-07-12 22:42:29'),
(2741, 1, 'en', 'plugins/ecommerce/shipping', 'delete_shipping_rate', 'Delete shipping rate for area', '2021-07-12 22:42:29', '2021-07-12 22:42:29'),
(2742, 1, 'en', 'plugins/ecommerce/shipping', 'delete_shipping_rate_confirmation', 'Are you sure you want to delete <strong class=\"region-price-item-label\"></strong> from this shipping area?', '2021-07-12 22:42:29', '2021-07-12 22:42:29'),
(2743, 1, 'en', 'plugins/ecommerce/shipping', 'delete_shipping_area', 'Delete shipping area', '2021-07-12 22:42:29', '2021-07-12 22:42:29'),
(2744, 1, 'en', 'plugins/ecommerce/shipping', 'delete_shipping_area_confirmation', 'Are you sure you want to delete shipping area <strong class=\"region-item-label\"></strong>?', '2021-07-12 22:42:29', '2021-07-12 22:42:29'),
(2745, 1, 'en', 'plugins/ecommerce/shipping', 'add_shipping_fee_for_area', 'Add shipping fee for area', '2021-07-12 22:42:29', '2021-07-12 22:42:29'),
(2746, 1, 'en', 'plugins/ecommerce/shipping', 'confirm', 'Confirm', '2021-07-12 22:42:29', '2021-07-12 22:42:29'),
(2747, 1, 'en', 'plugins/ecommerce/shipping', 'save', 'Save', '2021-07-12 22:42:29', '2021-07-12 22:42:29'),
(2748, 1, 'en', 'plugins/ecommerce/shipping', 'greater_than', 'Greater than', '2021-07-12 22:42:29', '2021-07-12 22:42:29'),
(2749, 1, 'en', 'plugins/ecommerce/shipping', 'type', 'Type', '2021-07-12 22:42:29', '2021-07-12 22:42:29'),
(2750, 1, 'en', 'plugins/ecommerce/shipping', 'shipping_rule_name', 'Name of shipping rule', '2021-07-12 22:42:29', '2021-07-12 22:42:29'),
(2751, 1, 'en', 'plugins/ecommerce/shipping', 'shipping_fee', 'Shipping fee', '2021-07-12 22:42:29', '2021-07-12 22:42:29'),
(2752, 1, 'en', 'plugins/ecommerce/shipping', 'cancel', 'Cancel', '2021-07-12 22:42:29', '2021-07-12 22:42:29'),
(2753, 1, 'en', 'plugins/ecommerce/shipping', 'base_on_weight', 'Based on product\'s weight (:unit)', '2021-07-12 22:42:29', '2021-07-12 22:42:29'),
(2754, 1, 'en', 'plugins/ecommerce/shipping', 'base_on_price', 'Based on product\'s price', '2021-07-12 22:42:29', '2021-07-12 22:42:29'),
(2755, 1, 'en', 'plugins/ecommerce/shipping', 'shipment_canceled', 'Shipment was canceled', '2021-07-12 22:42:29', '2021-07-12 22:42:29'),
(2756, 1, 'en', 'plugins/ecommerce/shipping', 'at', 'At', '2021-07-12 22:42:29', '2021-07-12 22:42:29'),
(2757, 1, 'en', 'plugins/ecommerce/shipping', 'cash_on_delivery', 'Cash on delivery (COD)', '2021-07-12 22:42:29', '2021-07-12 22:42:29'),
(2758, 1, 'en', 'plugins/ecommerce/shipping', 'update_shipping_status', 'Update shipping status', '2021-07-12 22:42:29', '2021-07-12 22:42:29'),
(2759, 1, 'en', 'plugins/ecommerce/shipping', 'update_cod_status', 'Update COD status', '2021-07-12 22:42:29', '2021-07-12 22:42:29'),
(2760, 1, 'en', 'plugins/ecommerce/shipping', 'history', 'History', '2021-07-12 22:42:29', '2021-07-12 22:42:29'),
(2761, 1, 'en', 'plugins/ecommerce/shipping', 'shipment_information', 'Shipment information', '2021-07-12 22:42:29', '2021-07-12 22:42:29'),
(2762, 1, 'en', 'plugins/ecommerce/shipping', 'order_number', 'Order number', '2021-07-12 22:42:29', '2021-07-12 22:42:29'),
(2763, 1, 'en', 'plugins/ecommerce/shipping', 'shipping_method', 'Shipping method', '2021-07-12 22:42:29', '2021-07-12 22:42:29'),
(2764, 1, 'en', 'plugins/ecommerce/shipping', 'select_shipping_method', 'Select shipping method', '2021-07-12 22:42:29', '2021-07-12 22:42:29'),
(2765, 1, 'en', 'plugins/ecommerce/shipping', 'cod_status', 'COD status', '2021-07-12 22:42:29', '2021-07-12 22:42:29'),
(2766, 1, 'en', 'plugins/ecommerce/shipping', 'shipping_status', 'Shipping status', '2021-07-12 22:42:29', '2021-07-12 22:42:29'),
(2767, 1, 'en', 'plugins/ecommerce/shipping', 'customer_information', 'Customer information', '2021-07-12 22:42:29', '2021-07-12 22:42:29'),
(2768, 1, 'en', 'plugins/ecommerce/shipping', 'sku', 'SKU', '2021-07-12 22:42:29', '2021-07-12 22:42:29'),
(2769, 1, 'en', 'plugins/ecommerce/shipping', 'change_status_confirm_title', 'Confirm <span class=\"shipment-status-label\"></span> ?', '2021-07-12 22:42:29', '2021-07-12 22:42:29'),
(2770, 1, 'en', 'plugins/ecommerce/shipping', 'change_status_confirm_description', 'Are you sure you want to confirm <span class=\"shipment-status-label\"></span> for this shipment?', '2021-07-12 22:42:29', '2021-07-12 22:42:29'),
(2771, 1, 'en', 'plugins/ecommerce/shipping', 'accept', 'Accept', '2021-07-12 22:42:29', '2021-07-12 22:42:29'),
(2772, 1, 'en', 'plugins/ecommerce/shipping', 'weight_unit', 'Weight (:unit)', '2021-07-12 22:42:29', '2021-07-12 22:42:29'),
(2773, 1, 'en', 'plugins/ecommerce/shipping', 'updated_at', 'Last Update', '2021-07-12 22:42:29', '2021-07-12 22:42:29'),
(2774, 1, 'en', 'plugins/ecommerce/shipping', 'cod_amount', 'Cash on delivery amount (COD)', '2021-07-12 22:42:29', '2021-07-12 22:42:29'),
(2775, 1, 'en', 'plugins/ecommerce/shipping', 'cancel_shipping', 'Cancel shipping', '2021-07-12 22:42:29', '2021-07-12 22:42:29'),
(2776, 1, 'en', 'plugins/ecommerce/shipping', 'shipping_address', 'Shipping address', '2021-07-12 22:42:29', '2021-07-12 22:42:29'),
(2777, 1, 'en', 'plugins/ecommerce/shipping', 'packages', 'Packages', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(2778, 1, 'en', 'plugins/ecommerce/shipping', 'edit', 'Edit', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(2779, 1, 'en', 'plugins/ecommerce/shipping', 'fee', 'Fee', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(2780, 1, 'en', 'plugins/ecommerce/shipping', 'note', 'Note', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(2781, 1, 'en', 'plugins/ecommerce/shipping', 'finish', 'Finish', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(2782, 1, 'en', 'plugins/ecommerce/shipping', 'shipping_fee_cod', 'Shipping fee/COD', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(2783, 1, 'en', 'plugins/ecommerce/shipping', 'send_confirmation_email_to_customer', 'Send confirmation email to customer', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(2784, 1, 'en', 'plugins/ecommerce/shipping', 'form_name', 'Name', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(2785, 1, 'en', 'plugins/ecommerce/shipping', 'changed_shipping_status', 'Changed status of shipping to : :status . Updated by: %user_name%', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(2786, 1, 'en', 'plugins/ecommerce/shipping', 'order_confirmed_by', 'Order confirmed by %user_name%', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(2787, 1, 'en', 'plugins/ecommerce/shipping', 'shipping_canceled_by', 'Shipping is cancelled by %user_name%', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(2788, 1, 'en', 'plugins/ecommerce/shipping', 'update_shipping_status_success', 'Update shipping status successfully!', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(2789, 1, 'en', 'plugins/ecommerce/shipping', 'update_cod_status_success', 'Updated COD status of shipping successfully!', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(2790, 1, 'en', 'plugins/ecommerce/shipping', 'updated_cod_status_by', 'Updated COD status to :status . Updated by: %user_name%', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(2791, 1, 'en', 'plugins/ecommerce/shipping', 'all', 'All', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(2792, 1, 'en', 'plugins/ecommerce/shipping', 'error_when_adding_new_region', 'There is an error when adding new region!', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(2793, 1, 'en', 'plugins/ecommerce/shipping', 'delivery', 'Delivery', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(2794, 1, 'en', 'plugins/ecommerce/shipping', 'adjustment_price_of', 'Adjustment price of :key', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(2795, 1, 'en', 'plugins/ecommerce/store-locator', 'name', 'Store locators', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(2796, 1, 'en', 'plugins/ecommerce/store-locator', 'description', 'This address will appear on your invoice and will be used to calculate your shipping price.', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(2797, 1, 'en', 'plugins/ecommerce/store-locator', 'shop_name', 'Shop name', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(2798, 1, 'en', 'plugins/ecommerce/store-locator', 'phone', 'Phone', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(2799, 1, 'en', 'plugins/ecommerce/store-locator', 'email', 'Email', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(2800, 1, 'en', 'plugins/ecommerce/store-locator', 'state', 'State', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(2801, 1, 'en', 'plugins/ecommerce/store-locator', 'city', 'City', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(2802, 1, 'en', 'plugins/ecommerce/store-locator', 'country', 'Country', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(2803, 1, 'en', 'plugins/ecommerce/store-locator', 'address', 'Address', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(2804, 1, 'en', 'plugins/ecommerce/store-locator', 'primary_store_is', 'Primary store is', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(2805, 1, 'en', 'plugins/ecommerce/store-locator', 'store_name', 'Store name', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(2806, 1, 'en', 'plugins/ecommerce/store-locator', 'select_country', 'Select country...', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(2807, 1, 'en', 'plugins/ecommerce/store-locator', 'default_shipping_location', 'Default shipping location', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(2808, 1, 'en', 'plugins/ecommerce/store-locator', 'default_store', 'Default store', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(2809, 1, 'en', 'plugins/ecommerce/tax', 'name', 'Taxes', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(2810, 1, 'en', 'plugins/ecommerce/tax', 'create', 'Create a tax', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(2811, 1, 'en', 'plugins/ecommerce/tax', 'edit', 'Edit tax :title', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(2812, 1, 'en', 'plugins/ecommerce/tax', 'title', 'Title', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(2813, 1, 'en', 'plugins/ecommerce/tax', 'percentage', 'Percentage %', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(2814, 1, 'en', 'plugins/ecommerce/tax', 'priority', 'Priority', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(2815, 1, 'en', 'plugins/ecommerce/tax', 'select_tax', '-- select --', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(2816, 1, 'vi', 'plugins/ecommerce/brands', 'name', 'Thương hiệu', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(2817, 1, 'vi', 'plugins/ecommerce/brands', 'create', 'Thêm thương hiệu mới', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(2818, 1, 'vi', 'plugins/ecommerce/brands', 'edit', 'Sửa thương hiệu', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(2819, 1, 'vi', 'plugins/ecommerce/brands', 'form.name', 'Tên', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(2820, 1, 'vi', 'plugins/ecommerce/brands', 'form.name_placeholder', 'Tên thương hiệu (tối đa 255 kí tự)', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(2821, 1, 'vi', 'plugins/ecommerce/brands', 'form.description', 'Mô tả', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(2822, 1, 'vi', 'plugins/ecommerce/brands', 'form.description_placeholder', 'Mô tả ngắn cho thương hiệu này (tối đa 400 kí tự)', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(2823, 1, 'vi', 'plugins/ecommerce/brands', 'form.website', 'Website', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(2824, 1, 'vi', 'plugins/ecommerce/brands', 'form.logo', 'Logo', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(2825, 1, 'vi', 'plugins/ecommerce/brands', 'form.is_featured', 'Nổi bật?', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(2826, 1, 'vi', 'plugins/ecommerce/brands', 'logo', 'Logo', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(2827, 1, 'vi', 'plugins/ecommerce/brands', 'website', 'Website', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(2828, 1, 'vi', 'plugins/ecommerce/brands', 'notices.no_select', 'Không có bản ghi nào được chọn!', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(2829, 1, 'vi', 'plugins/ecommerce/brands', 'notices.update_success_message', 'Cập nhật thành công', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(2830, 1, 'vi', 'plugins/ecommerce/brands', 'cannot_delete', 'Xoá không thành công', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(2831, 1, 'vi', 'plugins/ecommerce/brands', 'brand_deleted', 'Xoá thương hiệu thành công', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(2832, 1, 'vi', 'plugins/ecommerce/brands', 'menu', 'Thương hiệu', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(2833, 1, 'vi', 'plugins/ecommerce/brands', 'intro.title', 'Quản lý danh sách thương hiệu', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(2834, 1, 'vi', 'plugins/ecommerce/brands', 'intro.description', 'Các thương hiệu của sản phẩm như Nike, Adidas, Bitis ...', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(2835, 1, 'vi', 'plugins/ecommerce/brands', 'intro.button_text', 'Tạo thương hiệu', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(2836, 1, 'vi', 'plugins/ecommerce/currencies', 'name', 'Tiền tệ', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(2837, 1, 'vi', 'plugins/ecommerce/currencies', 'create', 'Thêm loại tiền tệ mới', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(2838, 1, 'vi', 'plugins/ecommerce/currencies', 'edit', 'Sửa tiền tệ', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(2839, 1, 'vi', 'plugins/ecommerce/currencies', 'list', 'Danh sách tiền tệ', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(2840, 1, 'vi', 'plugins/ecommerce/currencies', 'tables.title', 'Tên', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(2841, 1, 'vi', 'plugins/ecommerce/currencies', 'tables.code', 'Mã', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(2842, 1, 'vi', 'plugins/ecommerce/currencies', 'tables.symbol', 'Kí hiệu', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(2843, 1, 'vi', 'plugins/ecommerce/currencies', 'tables.is_prefix_symbol', 'Sử dụng ký hiệu trước số tiền', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(2844, 1, 'vi', 'plugins/ecommerce/currencies', 'tables.status', 'Trạng thái', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(2845, 1, 'vi', 'plugins/ecommerce/currencies', 'tables.order', 'Sắp xếp', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(2846, 1, 'vi', 'plugins/ecommerce/currencies', 'forms.title', 'Tiêu đề', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(2847, 1, 'vi', 'plugins/ecommerce/currencies', 'forms.code', 'Mã', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(2848, 1, 'vi', 'plugins/ecommerce/currencies', 'forms.symbol', 'Kí hiệu', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(2849, 1, 'vi', 'plugins/ecommerce/currencies', 'forms.is_prefix_symbol', 'Sử dụng ký hiệu trước số tiền', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(2850, 1, 'vi', 'plugins/ecommerce/currencies', 'forms.status', 'Trạng thái', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(2851, 1, 'vi', 'plugins/ecommerce/currencies', 'forms.order', 'Sắp xếp', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(2852, 1, 'vi', 'plugins/ecommerce/currencies', 'forms.decimals', 'Số kí tự sau dấu phân cách', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(2853, 1, 'vi', 'plugins/ecommerce/currencies', 'forms.activated', 'Đã kích hoạt', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(2854, 1, 'vi', 'plugins/ecommerce/currencies', 'forms.deactivated', 'Đã bị huỷ kích hoạt', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(2855, 1, 'vi', 'plugins/ecommerce/currencies', 'forms.yes', 'Có', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(2856, 1, 'vi', 'plugins/ecommerce/currencies', 'forms.no', 'Không', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(2857, 1, 'vi', 'plugins/ecommerce/currency', 'currencies', 'Tiền tệ', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(2858, 1, 'vi', 'plugins/ecommerce/currency', 'setting_description', 'Các loại tiền tệ được sử dụng trên website.', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(2859, 1, 'vi', 'plugins/ecommerce/currency', 'name', 'Tên', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(2860, 1, 'vi', 'plugins/ecommerce/currency', 'symbol', 'Ký hiệu', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(2861, 1, 'vi', 'plugins/ecommerce/currency', 'number_of_decimals', 'Số thập phân', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(2862, 1, 'vi', 'plugins/ecommerce/currency', 'exchange_rate', 'Tỷ giá', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(2863, 1, 'vi', 'plugins/ecommerce/currency', 'is_prefix_symbol', 'Vị trí ký hiệu', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(2864, 1, 'vi', 'plugins/ecommerce/currency', 'is_default', 'Mặc định?', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(2865, 1, 'vi', 'plugins/ecommerce/currency', 'remove', 'Xoá', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(2866, 1, 'vi', 'plugins/ecommerce/currency', 'new_currency', 'Thêm tiền tệ mới', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(2867, 1, 'vi', 'plugins/ecommerce/currency', 'save_settings', 'Lưu cài đặt', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(2868, 1, 'vi', 'plugins/ecommerce/currency', 'before_number', 'Trước số', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(2869, 1, 'vi', 'plugins/ecommerce/currency', 'after_number', 'Sau số', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(2870, 1, 'vi', 'plugins/ecommerce/customer', 'name', 'Khách hàng', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(2871, 1, 'vi', 'plugins/ecommerce/customer', 'create', 'Create a customer', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(2872, 1, 'vi', 'plugins/ecommerce/customer', 'edit', 'Edit customer \":name\"', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(2873, 1, 'vi', 'plugins/ecommerce/customer', 'email', 'Email', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(2874, 1, 'vi', 'plugins/ecommerce/customer', 'email_placeholder', 'Ex: example@gmail.com', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(2875, 1, 'vi', 'plugins/ecommerce/customer', 'password', 'Password', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(2876, 1, 'vi', 'plugins/ecommerce/customer', 'change_password', 'Change password?', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(2877, 1, 'vi', 'plugins/ecommerce/customer', 'password_confirmation', 'Password confirmation', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(2878, 1, 'vi', 'plugins/ecommerce/customer', 'intro.title', 'Quản lý danh sách khách hàng', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(2879, 1, 'vi', 'plugins/ecommerce/customer', 'intro.description', 'Khi khách hàng đặt hàng, bạn sẽ biết được thông tin và lịch sử mua hàng của khách hàng.', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(2880, 1, 'vi', 'plugins/ecommerce/customer', 'intro.button_text', 'Tạo khách hàng', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(2881, 1, 'vi', 'plugins/ecommerce/discount', 'name', 'Khuyến mãi', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(2882, 1, 'vi', 'plugins/ecommerce/discount', 'invalid_coupon', 'Mã khuyến mãi không hợp lệ hoặc đã hết hạn!', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(2883, 1, 'vi', 'plugins/ecommerce/discount', 'cannot_use_same_time_with_other_discount_program', 'Mã khuyến mãi này không thể sử dụng chung với chương trình khuyến mãi!', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(2884, 1, 'vi', 'plugins/ecommerce/discount', 'not_used', 'Chưa sử dụng mã giảm giá này', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(2885, 1, 'vi', 'plugins/ecommerce/discount', 'detail', 'Detail', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(2886, 1, 'vi', 'plugins/ecommerce/discount', 'used', 'Used', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(2887, 1, 'vi', 'plugins/ecommerce/discount', 'start_date', 'Start date', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(2888, 1, 'vi', 'plugins/ecommerce/discount', 'end_date', 'End date', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(2889, 1, 'vi', 'plugins/ecommerce/discount', 'intro.title', 'Chương trình khuyến mãi', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(2890, 1, 'vi', 'plugins/ecommerce/discount', 'intro.description', 'Tạo ra các mã coupon, cài đặt một sản phẩm, hoặc một nhóm sản phẩm khuyến mãi dành cho các khách hàng thân thiết của bạn.', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(2891, 1, 'vi', 'plugins/ecommerce/discount', 'intro.button_text', 'Tạo khuyến mãi', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(2892, 1, 'vi', 'plugins/ecommerce/ecommerce', 'settings', 'Cài đặt', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(2893, 1, 'vi', 'plugins/ecommerce/ecommerce', 'name', 'Thương mại điện tử', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(2894, 1, 'vi', 'plugins/ecommerce/ecommerce', 'setting.email.title', 'E-commerce', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(2895, 1, 'vi', 'plugins/ecommerce/ecommerce', 'setting.email.description', 'Ecommerce email config', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(2896, 1, 'vi', 'plugins/ecommerce/ecommerce', 'setting.email.order_confirm_subject', 'Subject of order confirmation email', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(2897, 1, 'vi', 'plugins/ecommerce/ecommerce', 'setting.email.order_confirm_subject_placeholder', 'The subject of email confirmation send to the customer', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(2898, 1, 'vi', 'plugins/ecommerce/ecommerce', 'setting.email.order_confirm_content', 'Content of order confirmation email', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(2899, 1, 'vi', 'plugins/ecommerce/ecommerce', 'setting.email.order_status_change_subject', 'Subject of email when changing order\'s status', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(2900, 1, 'vi', 'plugins/ecommerce/ecommerce', 'setting.email.order_status_change_subject_placeholder', 'Subject of email when changing order\'s status send to customer', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(2901, 1, 'vi', 'plugins/ecommerce/ecommerce', 'setting.email.order_status_change_content', 'Content of email when changing order\'s status', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(2902, 1, 'vi', 'plugins/ecommerce/ecommerce', 'setting.email.from_email', 'Email from', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(2903, 1, 'vi', 'plugins/ecommerce/ecommerce', 'setting.email.from_email_placeholder', 'Email from address to display in mail. Ex: example@gmail.com', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(2904, 1, 'vi', 'plugins/ecommerce/ecommerce', 'store_address', 'Địa chỉ cửa hàng', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(2905, 1, 'vi', 'plugins/ecommerce/ecommerce', 'store_phone', 'Số điện thoại cửa hàng', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(2906, 1, 'vi', 'plugins/ecommerce/ecommerce', 'order_id', 'Mã đơn hàng', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(2907, 1, 'vi', 'plugins/ecommerce/ecommerce', 'order_token', 'Chuỗi mã hoá đơn hàng', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(2908, 1, 'vi', 'plugins/ecommerce/ecommerce', 'customer_name', 'Tên khách hàng', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(2909, 1, 'vi', 'plugins/ecommerce/ecommerce', 'customer_email', 'Email khách hàng', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(2910, 1, 'vi', 'plugins/ecommerce/ecommerce', 'customer_phone', 'Số điện thoại khách hàng', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(2911, 1, 'vi', 'plugins/ecommerce/ecommerce', 'customer_address', 'Địa chỉ khách hàng', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(2912, 1, 'vi', 'plugins/ecommerce/ecommerce', 'product_list', 'Danh sách sản phẩm trong đơn hàng', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(2913, 1, 'vi', 'plugins/ecommerce/ecommerce', 'payment_detail', 'Chi tiết thanh toán', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(2914, 1, 'vi', 'plugins/ecommerce/ecommerce', 'shipping_method', 'Phương thức vận chuyển', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(2915, 1, 'vi', 'plugins/ecommerce/ecommerce', 'payment_method', 'Phương thức thanh toán', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(2916, 1, 'vi', 'plugins/ecommerce/ecommerce', 'standard_and_format', 'Tiêu chuẩn & Định dạng', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(2917, 1, 'vi', 'plugins/ecommerce/ecommerce', 'standard_and_format_description', 'Các tiêu chuẩn và các định dạng được sử dụng để tính toán những thứ như giá cả sản phẩm, trọng lượng vận chuyển và thời gian đơn hàng được đặt.', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(2918, 1, 'vi', 'plugins/ecommerce/ecommerce', 'change_order_format', 'Chỉnh sửa định dạng mã đơn hàng (tùy chọn)', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(2919, 1, 'vi', 'plugins/ecommerce/ecommerce', 'change_order_format_description', 'Mã đơn hàng mặc định bắt đầu từ :number. Bạn có thể thay đổi chuỗi bắt đầu hoặc kết thúc để tạo mã đơn hàng theo ý bạn, ví dụ \"DH-:number\" hoặc \":number-A\"', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(2920, 1, 'vi', 'plugins/ecommerce/ecommerce', 'start_with', 'Bắt đầu bằng', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(2921, 1, 'vi', 'plugins/ecommerce/ecommerce', 'end_with', 'Kết thúc bằng', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(2922, 1, 'vi', 'plugins/ecommerce/ecommerce', 'order_will_be_shown', 'Mã đơn hàng của bạn sẽ hiển thị theo mẫu', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(2923, 1, 'vi', 'plugins/ecommerce/ecommerce', 'weight_unit', 'Đơn vị cân nặng', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(2924, 1, 'vi', 'plugins/ecommerce/ecommerce', 'height_unit', 'Đơn vị chiều dài/chiều cao', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(2925, 1, 'vi', 'plugins/ecommerce/email', 'customer_new_order_title', 'Xác nhận đơn hàng', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(2926, 1, 'vi', 'plugins/ecommerce/email', 'customer_new_order_description', 'Được gửi khi khách hàng tạo đơn hàng', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(2927, 1, 'vi', 'plugins/ecommerce/email', 'order_cancellation_title', 'Hủy đơn hàng', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(2928, 1, 'vi', 'plugins/ecommerce/email', 'order_cancellation_description', 'Được gửi khi khách hàng hủy đơn hàng', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(2929, 1, 'vi', 'plugins/ecommerce/email', 'delivery_confirmation_title', 'Xác nhận giao hàng', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(2930, 1, 'vi', 'plugins/ecommerce/email', 'delivery_confirmation_description', 'Được gửi đến khách hàng khi bắt đầu giao hàng', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(2931, 1, 'vi', 'plugins/ecommerce/email', 'admin_new_order_title', 'Thông báo có đơn hàng mới', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(2932, 1, 'vi', 'plugins/ecommerce/email', 'admin_new_order_description', 'Được gửi cho quản trị viên khi có khách mua hàng', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(2933, 1, 'vi', 'plugins/ecommerce/email', 'order_confirmation_title', 'Xác nhận đơn hàng', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(2934, 1, 'vi', 'plugins/ecommerce/email', 'order_confirmation_description', 'Email được gửi đến khách hàng khi đơn hàng xác nhận', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(2935, 1, 'vi', 'plugins/ecommerce/email', 'payment_confirmation_title', 'Xác nhận thanh toán', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(2936, 1, 'vi', 'plugins/ecommerce/email', 'payment_confirmation_description', 'Email được gửi đến khách hàng khi đơn hàng xác nhận thanh toán', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(2937, 1, 'vi', 'plugins/ecommerce/email', 'order_recover_title', 'Đơn hàng đang chờ hoàn tất', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(2938, 1, 'vi', 'plugins/ecommerce/email', 'order_recover_description', 'Email nhắc nhở khách hàng hoàn tất đơn hàng', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(2939, 1, 'vi', 'plugins/ecommerce/email', 'link_go_to_our_shop', 'hoặc <a href=\":link\">Truy cập website</a>', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(2940, 1, 'vi', 'plugins/ecommerce/email', 'order_information', 'Thông tin đơn hàng', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(2941, 1, 'vi', 'plugins/ecommerce/email', 'order_number', 'Mã đơn hàng: <strong>:order_id</strong>', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(2942, 1, 'vi', 'plugins/ecommerce/email', 'view_order', 'Xem đơn hàng', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(2943, 1, 'vi', 'plugins/ecommerce/order', 'statuses.pending', 'Chưa xử lý', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(2944, 1, 'vi', 'plugins/ecommerce/order', 'statuses.processing', 'Đang xử lý', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(2945, 1, 'vi', 'plugins/ecommerce/order', 'statuses.delivering', 'Đang giao hàng', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(2946, 1, 'vi', 'plugins/ecommerce/order', 'statuses.delivered', 'Đã giao hàng', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(2947, 1, 'vi', 'plugins/ecommerce/order', 'statuses.completed', 'Hoàn thành', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(2948, 1, 'vi', 'plugins/ecommerce/order', 'statuses.canceled', 'Bị huỷ', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(2949, 1, 'vi', 'plugins/ecommerce/order', 'name', 'Đơn hàng', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(2950, 1, 'vi', 'plugins/ecommerce/order', 'customer.messages.cancel_error', 'Đơn hàng đang được giao hoặc đã hoàn thành', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(2951, 1, 'vi', 'plugins/ecommerce/order', 'customer.messages.cancel_success', 'Huỷ đơn hàng thành công', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(2952, 1, 'vi', 'plugins/ecommerce/order', 'incomplete_order', 'Đơn hàng chưa hoàn tất', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(2953, 1, 'vi', 'plugins/ecommerce/order', 'order_id', 'Mã đơn hàng', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(2954, 1, 'vi', 'plugins/ecommerce/order', 'customer_label', 'Khách hàng', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(2955, 1, 'vi', 'plugins/ecommerce/order', 'amount', 'Tổng cộng', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(2956, 1, 'vi', 'plugins/ecommerce/order', 'shipping_amount', 'Phí vận chuyển', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(2957, 1, 'vi', 'plugins/ecommerce/order', 'payment_method', 'Phương thức thanh toán', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(2958, 1, 'vi', 'plugins/ecommerce/order', 'payment_status_label', 'Trạng thái thanh toán', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(2959, 1, 'vi', 'plugins/ecommerce/order', 'manage_orders', 'Quản lý đơn hàng', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(2960, 1, 'vi', 'plugins/ecommerce/order', 'order_intro_description', 'Một khi cửa hàng của bạn có đơn đặt hàng, đây sẽ là nơi bạn xử lý và theo dõi những đơn đặt hàng đó.', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(2961, 1, 'vi', 'plugins/ecommerce/order', 'create_new_order', 'Tạo đơn hàng', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(2962, 1, 'vi', 'plugins/ecommerce/order', 'manage_incomplete_orders', 'Quản lý đơn hàng chưa hoàn tất', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(2963, 1, 'vi', 'plugins/ecommerce/order', 'incomplete_orders_intro_description', 'Đơn hàng chưa hoàn tất là đơn hàng được tạo khi khách hàng thêm sản phẩm vào giỏ hàng, tiến hành điền thông tin mua hàng nhưng không hoàn tất quá trình thanh toán.', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(2964, 1, 'vi', 'plugins/ecommerce/order', 'cannot_send_order_recover_to_mail', 'Không tìm thấy email nên không thể gửi email khôi phục cho khách hàng.', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(2965, 1, 'vi', 'plugins/ecommerce/payment', 'name', 'Thanh toán', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(2966, 1, 'vi', 'plugins/ecommerce/payment', 'payment_method', 'Phương thức thanh toán', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(2967, 1, 'vi', 'plugins/ecommerce/payment', 'view_payment', 'Xem thanh toán #', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(2968, 1, 'vi', 'plugins/ecommerce/payment', 'charge_id', 'Mã giao dịch', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(2969, 1, 'vi', 'plugins/ecommerce/payment', 'amount', 'Số tiền', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(2970, 1, 'vi', 'plugins/ecommerce/payment', 'currency', 'Đơn vị tiền tệ', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(2971, 1, 'vi', 'plugins/ecommerce/payment', 'user', 'Người dùng', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(2972, 1, 'vi', 'plugins/ecommerce/payment', 'paypal_name_required', 'Tên của phương thức PayPal là bắt buộc!', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(2973, 1, 'vi', 'plugins/ecommerce/payment', 'paypal_name_max', 'Tên của phương thức PayPal quá dài!', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(2974, 1, 'vi', 'plugins/ecommerce/payment', 'stripe_name_required', 'Tên của phương thức Stripe là bắt buộc!', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(2975, 1, 'vi', 'plugins/ecommerce/payment', 'stripe_name_max', 'Tên của phương thức Stripe quá dài!', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(2976, 1, 'vi', 'plugins/ecommerce/payment', 'status', 'Trạng thái', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(2977, 1, 'vi', 'plugins/ecommerce/payment', 'enabled', 'Bật', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(2978, 1, 'vi', 'plugins/ecommerce/payment', 'disabled', 'Tắt', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(2979, 1, 'vi', 'plugins/ecommerce/payment', 'client_id', 'Client ID', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(2980, 1, 'vi', 'plugins/ecommerce/payment', 'client_secret', 'Client Secret', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(2981, 1, 'vi', 'plugins/ecommerce/payment', 'mode', 'Chế độ', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(2982, 1, 'vi', 'plugins/ecommerce/payment', 'sandbox', 'Sandbox', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(2983, 1, 'vi', 'plugins/ecommerce/payment', 'live', 'Live', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(2984, 1, 'vi', 'plugins/ecommerce/payment', 'enable_payment_log', 'Bật lưu nhật ký thanh toán', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(2985, 1, 'vi', 'plugins/ecommerce/payment', 'yes', 'Có', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(2986, 1, 'vi', 'plugins/ecommerce/payment', 'no', 'Không', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(2987, 1, 'vi', 'plugins/ecommerce/payment', 'client_key', 'Client Key', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(2988, 1, 'vi', 'plugins/ecommerce/payment', 'stripe', 'Stripe', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(2989, 1, 'vi', 'plugins/ecommerce/payment', 'paypal', 'PayPal', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(2990, 1, 'vi', 'plugins/ecommerce/payment', 'action', 'Hành động', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(2991, 1, 'vi', 'plugins/ecommerce/payment', 'go_back', 'Quay lại', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(2992, 1, 'vi', 'plugins/ecommerce/payment', 'view', 'Xem', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(2993, 1, 'vi', 'plugins/ecommerce/payment', 'cash_on_delivery', 'Thanh toán khi nhận hàng (COD)', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(2994, 1, 'vi', 'plugins/ecommerce/payment', 'via_bank_transfer', 'Thông qua chuyển khoản ngân hàng', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(2995, 1, 'vi', 'plugins/ecommerce/payment', 'payment_via_cart', 'Thanh toán bằng thẻ', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(2996, 1, 'vi', 'plugins/ecommerce/payment', 'card_number', 'Số thẻ', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(2997, 1, 'vi', 'plugins/ecommerce/payment', 'full_name', 'Tên trên thẻ', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(2998, 1, 'vi', 'plugins/ecommerce/payment', 'payment_via_paypal', 'Thanh toán thông qua PayPal', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(2999, 1, 'vi', 'plugins/ecommerce/payment', 'mm_yy', 'MM/YY', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(3000, 1, 'vi', 'plugins/ecommerce/payment', 'cvc', 'CVC', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(3001, 1, 'vi', 'plugins/ecommerce/payment', 'details', 'Chi tiết', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(3002, 1, 'vi', 'plugins/ecommerce/payment', 'payer_name', 'Người thanh toán', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(3003, 1, 'vi', 'plugins/ecommerce/payment', 'email', 'Địa chỉ email', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(3004, 1, 'vi', 'plugins/ecommerce/payment', 'phone', 'Điện thoại', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(3005, 1, 'vi', 'plugins/ecommerce/payment', 'country', 'Quốc gia', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(3006, 1, 'vi', 'plugins/ecommerce/payment', 'shipping_address', 'Địa chỉ giao hàng', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(3007, 1, 'vi', 'plugins/ecommerce/payment', 'payment_details', 'Chi tiết giao dịch', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(3008, 1, 'vi', 'plugins/ecommerce/payment', 'card', 'Thẻ', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(3009, 1, 'vi', 'plugins/ecommerce/payment', 'address', 'Địa chỉ', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(3010, 1, 'vi', 'plugins/ecommerce/payment', 'could_not_get_stripe_token', 'Không thể lấy mã Stripe để thanh toán', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(3011, 1, 'vi', 'plugins/ecommerce/payment', 'new_payment', 'Thanh toán cho đơn hàng :id', '2021-07-12 22:42:30', '2021-07-12 22:42:30'),
(3012, 1, 'vi', 'plugins/ecommerce/payment', 'payment_id', 'Mã thanh toán', '2021-07-12 22:42:31', '2021-07-12 22:42:31'),
(3013, 1, 'vi', 'plugins/ecommerce/prices', 'name', 'Price', '2021-07-12 22:42:31', '2021-07-12 22:42:31'),
(3014, 1, 'vi', 'plugins/ecommerce/prices', 'create', 'New price', '2021-07-12 22:42:31', '2021-07-12 22:42:31'),
(3015, 1, 'vi', 'plugins/ecommerce/prices', 'edit', 'Edit price', '2021-07-12 22:42:31', '2021-07-12 22:42:31'),
(3016, 1, 'vi', 'plugins/ecommerce/prices', 'list', 'List price', '2021-07-12 22:42:31', '2021-07-12 22:42:31'),
(3017, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'name', 'Product attribute sets', '2021-07-12 22:42:31', '2021-07-12 22:42:31'),
(3018, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'create', 'New product attribute set', '2021-07-12 22:42:31', '2021-07-12 22:42:31'),
(3019, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'edit', 'Edit product attribute set', '2021-07-12 22:42:31', '2021-07-12 22:42:31'),
(3020, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'visible_in_categories', 'Visible in categories', '2021-07-12 22:42:31', '2021-07-12 22:42:31'),
(3021, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'product_with_more_version', 'Product with more version', '2021-07-12 22:42:31', '2021-07-12 22:42:31'),
(3022, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'create_a_version', 'Create a version', '2021-07-12 22:42:31', '2021-07-12 22:42:31'),
(3023, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'enabled', 'Enabled', '2021-07-12 22:42:31', '2021-07-12 22:42:31'),
(3024, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'attributes', 'Attributes', '2021-07-12 22:42:31', '2021-07-12 22:42:31'),
(3025, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'price', 'Price', '2021-07-12 22:42:31', '2021-07-12 22:42:31'),
(3026, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'edit_btn', 'Edit', '2021-07-12 22:42:31', '2021-07-12 22:42:31'),
(3027, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'remove_btn', 'Remove', '2021-07-12 22:42:31', '2021-07-12 22:42:31'),
(3028, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'product', 'Product', '2021-07-12 22:42:31', '2021-07-12 22:42:31'),
(3029, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'back_to_product', 'Back to product', '2021-07-12 22:42:31', '2021-07-12 22:42:31'),
(3030, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'save', 'Save', '2021-07-12 22:42:31', '2021-07-12 22:42:31'),
(3031, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'other_existing_versions', 'Other existing versions', '2021-07-12 22:42:31', '2021-07-12 22:42:31'),
(3032, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'version_information', 'Version information', '2021-07-12 22:42:31', '2021-07-12 22:42:31'),
(3033, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'add_rule', 'Add rule', '2021-07-12 22:42:31', '2021-07-12 22:42:31'),
(3034, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'rules', 'Rules', '2021-07-12 22:42:31', '2021-07-12 22:42:31'),
(3035, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'pricing', 'Pricing', '2021-07-12 22:42:31', '2021-07-12 22:42:31'),
(3036, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'sale_price', 'Sale price', '2021-07-12 22:42:31', '2021-07-12 22:42:31'),
(3037, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'sale_type', 'Sale type', '2021-07-12 22:42:31', '2021-07-12 22:42:31'),
(3038, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'no_sale_price', 'No sale price', '2021-07-12 22:42:31', '2021-07-12 22:42:31'),
(3039, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'always_on_sale', 'Always on sale', '2021-07-12 22:42:31', '2021-07-12 22:42:31'),
(3040, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'limited_time', 'Limited time', '2021-07-12 22:42:31', '2021-07-12 22:42:31'),
(3041, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'from', 'From', '2021-07-12 22:42:31', '2021-07-12 22:42:31'),
(3042, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'to', 'To', '2021-07-12 22:42:31', '2021-07-12 22:42:31'),
(3043, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'storehouse', 'Storehouse', '2021-07-12 22:42:31', '2021-07-12 22:42:31'),
(3044, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'no_storehouse_management', 'No storehouse management', '2021-07-12 22:42:31', '2021-07-12 22:42:31'),
(3045, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'with_storehouse_management', 'With storehouse management', '2021-07-12 22:42:31', '2021-07-12 22:42:31'),
(3046, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'quantity', 'Quantity', '2021-07-12 22:42:31', '2021-07-12 22:42:31'),
(3047, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'allow_customer_checkout_out_of_stock', 'Allow customer checkout when this product out of stock', '2021-07-12 22:42:31', '2021-07-12 22:42:31'),
(3048, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'shipping', 'Shipping', '2021-07-12 22:42:31', '2021-07-12 22:42:31'),
(3049, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'length', 'Length', '2021-07-12 22:42:31', '2021-07-12 22:42:31'),
(3050, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'wide', 'Wide', '2021-07-12 22:42:31', '2021-07-12 22:42:31'),
(3051, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'height', 'Height', '2021-07-12 22:42:31', '2021-07-12 22:42:31'),
(3052, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'weight', 'Weight', '2021-07-12 22:42:31', '2021-07-12 22:42:31'),
(3053, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'version_images', 'Version images', '2021-07-12 22:42:31', '2021-07-12 22:42:31'),
(3054, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'add_new_image', 'Add new image', '2021-07-12 22:42:31', '2021-07-12 22:42:31'),
(3055, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'attribute_set', 'Attribute set', '2021-07-12 22:42:31', '2021-07-12 22:42:31'),
(3056, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'value', 'Value', '2021-07-12 22:42:31', '2021-07-12 22:42:31'),
(3057, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'dropdown_swatch', 'Dropdown Swatch', '2021-07-12 22:42:31', '2021-07-12 22:42:31'),
(3058, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'visual_swatch', 'Visual Swatch', '2021-07-12 22:42:31', '2021-07-12 22:42:31'),
(3059, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'text_swatch', 'Text Swatch', '2021-07-12 22:42:31', '2021-07-12 22:42:31'),
(3060, 1, 'vi', 'plugins/ecommerce/product-attributes', 'name', 'Thuộc tính sản phẩm', '2021-07-12 22:42:31', '2021-07-12 22:42:31'),
(3061, 1, 'vi', 'plugins/ecommerce/product-attributes', 'create', 'Tạo', '2021-07-12 22:42:31', '2021-07-12 22:42:31'),
(3062, 1, 'vi', 'plugins/ecommerce/product-attributes', 'edit', 'Sửa', '2021-07-12 22:42:31', '2021-07-12 22:42:31'),
(3063, 1, 'vi', 'plugins/ecommerce/product-attributes', 'intro.title', 'Quản lý danh sách thuộc tính sản phẩm', '2021-07-12 22:42:31', '2021-07-12 22:42:31'),
(3064, 1, 'vi', 'plugins/ecommerce/product-attributes', 'intro.description', 'Các thuộc tính của sản phẩm như màu sắc, kích thước ...', '2021-07-12 22:42:31', '2021-07-12 22:42:31'),
(3065, 1, 'vi', 'plugins/ecommerce/product-attributes', 'intro.button_text', 'Tạo thuộc tính sản phẩm', '2021-07-12 22:42:31', '2021-07-12 22:42:31'),
(3066, 1, 'vi', 'plugins/ecommerce/product-categories', 'create', 'Create new product category', '2021-07-12 22:42:31', '2021-07-12 22:42:31'),
(3067, 1, 'vi', 'plugins/ecommerce/product-categories', 'edit', 'Edit product category', '2021-07-12 22:42:31', '2021-07-12 22:42:31'),
(3068, 1, 'vi', 'plugins/ecommerce/product-categories', 'name', 'Danh mục sản phẩm', '2021-07-12 22:42:31', '2021-07-12 22:42:31');
INSERT INTO `translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(3069, 1, 'vi', 'plugins/ecommerce/product-categories', 'none', 'Không có', '2021-07-12 22:42:31', '2021-07-12 22:42:31'),
(3070, 1, 'vi', 'plugins/ecommerce/product-categories', 'menu', 'Danh mục sản phẩm', '2021-07-12 22:42:31', '2021-07-12 22:42:31'),
(3071, 1, 'vi', 'plugins/ecommerce/product-categories', 'intro.title', 'Quản lý danh sách danh mục sản phẩm', '2021-07-12 22:42:31', '2021-07-12 22:42:31'),
(3072, 1, 'vi', 'plugins/ecommerce/product-categories', 'intro.description', 'Danh mục sản phẩm như quần áo, giày dép, linh kiện điện tử ...', '2021-07-12 22:42:31', '2021-07-12 22:42:31'),
(3073, 1, 'vi', 'plugins/ecommerce/product-categories', 'intro.button_text', 'Tạo danh mục sản phẩm', '2021-07-12 22:42:31', '2021-07-12 22:42:31'),
(3074, 1, 'vi', 'plugins/ecommerce/product-collections', 'name', 'Nhóm sản phẩm', '2021-07-12 22:42:31', '2021-07-12 22:42:31'),
(3075, 1, 'vi', 'plugins/ecommerce/product-collections', 'create', 'Thêm nhóm sản phẩm', '2021-07-12 22:42:31', '2021-07-12 22:42:31'),
(3076, 1, 'vi', 'plugins/ecommerce/product-collections', 'edit', 'Sửa nhóm sản phẩm', '2021-07-12 22:42:31', '2021-07-12 22:42:31'),
(3077, 1, 'vi', 'plugins/ecommerce/product-collections', 'slug_help_block', 'Label key: <code>:slug</code>. We will use this key for filter.', '2021-07-12 22:42:31', '2021-07-12 22:42:31'),
(3078, 1, 'vi', 'plugins/ecommerce/product-collections', 'intro.title', 'Quản lý nhóm sản phẩm', '2021-07-12 22:42:31', '2021-07-12 22:42:31'),
(3079, 1, 'vi', 'plugins/ecommerce/product-collections', 'intro.description', 'Nhóm sản phẩm giúp quản lý sản phẩm và khách hàng tìm kiếm sản phẩm một cách dễ dàng.', '2021-07-12 22:42:31', '2021-07-12 22:42:31'),
(3080, 1, 'vi', 'plugins/ecommerce/product-collections', 'intro.button_text', 'Tạo nhóm sản phẩm', '2021-07-12 22:42:31', '2021-07-12 22:42:31'),
(3081, 1, 'vi', 'plugins/ecommerce/products', 'name', 'Sản phẩm', '2021-07-12 22:42:31', '2021-07-12 22:42:31'),
(3082, 1, 'vi', 'plugins/ecommerce/products', 'create', 'Thêm sản phẩm mới', '2021-07-12 22:42:31', '2021-07-12 22:42:31'),
(3083, 1, 'vi', 'plugins/ecommerce/products', 'edit', 'Sửa sản phẩm - :name', '2021-07-12 22:42:31', '2021-07-12 22:42:31'),
(3084, 1, 'vi', 'plugins/ecommerce/products', 'form.name', 'Tên sản phẩm', '2021-07-12 22:42:31', '2021-07-12 22:42:31'),
(3085, 1, 'vi', 'plugins/ecommerce/products', 'form.name_placeholder', 'Tên sản phẩm (Tối đa 120 chữ cái)', '2021-07-12 22:42:31', '2021-07-12 22:42:31'),
(3086, 1, 'vi', 'plugins/ecommerce/products', 'form.description', 'Mô tả ngắn', '2021-07-12 22:42:31', '2021-07-12 22:42:31'),
(3087, 1, 'vi', 'plugins/ecommerce/products', 'form.description_placeholder', 'Mô tả ngắn gọn cho sản phẩm (Tối đa 400 chữ cái)', '2021-07-12 22:42:31', '2021-07-12 22:42:31'),
(3088, 1, 'vi', 'plugins/ecommerce/products', 'form.categories', 'Danh mục', '2021-07-12 22:42:31', '2021-07-12 22:42:31'),
(3089, 1, 'vi', 'plugins/ecommerce/products', 'form.content', 'Chi tiết sản phẩm', '2021-07-12 22:42:31', '2021-07-12 22:42:31'),
(3090, 1, 'vi', 'plugins/ecommerce/products', 'form.price', 'Giá cơ bản', '2021-07-12 22:42:31', '2021-07-12 22:42:31'),
(3091, 1, 'vi', 'plugins/ecommerce/products', 'form.price_sale', 'Giá giảm', '2021-07-12 22:42:31', '2021-07-12 22:42:31'),
(3092, 1, 'vi', 'plugins/ecommerce/products', 'form.quantity', 'Số lượng', '2021-07-12 22:42:31', '2021-07-12 22:42:31'),
(3093, 1, 'vi', 'plugins/ecommerce/products', 'form.brand', 'Thương hiệu', '2021-07-12 22:42:31', '2021-07-12 22:42:31'),
(3094, 1, 'vi', 'plugins/ecommerce/products', 'form.width', 'Rộng', '2021-07-12 22:42:31', '2021-07-12 22:42:31'),
(3095, 1, 'vi', 'plugins/ecommerce/products', 'form.height', 'Cao', '2021-07-12 22:42:31', '2021-07-12 22:42:31'),
(3096, 1, 'vi', 'plugins/ecommerce/products', 'form.weight', 'Cân nặng', '2021-07-12 22:42:31', '2021-07-12 22:42:31'),
(3097, 1, 'vi', 'plugins/ecommerce/products', 'form.image', 'Hình ảnh', '2021-07-12 22:42:31', '2021-07-12 22:42:31'),
(3098, 1, 'vi', 'plugins/ecommerce/products', 'form.product_type.title', 'Loại sản phẩm', '2021-07-12 22:42:31', '2021-07-12 22:42:31'),
(3099, 1, 'vi', 'plugins/ecommerce/products', 'form.stock.title', 'Tình trạng kho', '2021-07-12 22:42:31', '2021-07-12 22:42:31'),
(3100, 1, 'vi', 'plugins/ecommerce/products', 'form.stock.in_stock', 'Còn hàng', '2021-07-12 22:42:31', '2021-07-12 22:42:31'),
(3101, 1, 'vi', 'plugins/ecommerce/products', 'form.stock.out_stock', 'Hết hàng', '2021-07-12 22:42:31', '2021-07-12 22:42:31'),
(3102, 1, 'vi', 'plugins/ecommerce/products', 'form.stock.allow_order_when_out', 'Cho phép đặt hàng khi hết', '2021-07-12 22:42:31', '2021-07-12 22:42:31'),
(3103, 1, 'vi', 'plugins/ecommerce/products', 'form.storehouse.title', 'Quản lý kho', '2021-07-12 22:42:31', '2021-07-12 22:42:31'),
(3104, 1, 'vi', 'plugins/ecommerce/products', 'form.storehouse.no_storehouse', 'Không quản lý kho', '2021-07-12 22:42:31', '2021-07-12 22:42:31'),
(3105, 1, 'vi', 'plugins/ecommerce/products', 'form.storehouse.storehouse', 'Quản lý kho', '2021-07-12 22:42:31', '2021-07-12 22:42:31'),
(3106, 1, 'vi', 'plugins/ecommerce/products', 'form.storehouse.quantity', 'Số lượng', '2021-07-12 22:42:31', '2021-07-12 22:42:31'),
(3107, 1, 'vi', 'plugins/ecommerce/products', 'form.shipping.title', 'Giao hàng', '2021-07-12 22:42:31', '2021-07-12 22:42:31'),
(3108, 1, 'vi', 'plugins/ecommerce/products', 'form.shipping.length', 'Chiều dài', '2021-07-12 22:42:31', '2021-07-12 22:42:31'),
(3109, 1, 'vi', 'plugins/ecommerce/products', 'form.shipping.wide', 'Chiều rộng', '2021-07-12 22:42:31', '2021-07-12 22:42:31'),
(3110, 1, 'vi', 'plugins/ecommerce/products', 'form.shipping.height', 'Chiều cao', '2021-07-12 22:42:31', '2021-07-12 22:42:31'),
(3111, 1, 'vi', 'plugins/ecommerce/products', 'form.shipping.weight', 'Cân nặng', '2021-07-12 22:42:31', '2021-07-12 22:42:31'),
(3112, 1, 'vi', 'plugins/ecommerce/products', 'form.date.start', 'Ngày bắt đầu', '2021-07-12 22:42:31', '2021-07-12 22:42:31'),
(3113, 1, 'vi', 'plugins/ecommerce/products', 'form.date.end', 'Ngày kết thúc', '2021-07-12 22:42:31', '2021-07-12 22:42:31'),
(3114, 1, 'vi', 'plugins/ecommerce/products', 'form.tags', 'Nhãn', '2021-07-12 22:42:31', '2021-07-12 22:42:31'),
(3115, 1, 'vi', 'plugins/ecommerce/products', 'form.tax', 'Thuế', '2021-07-12 22:42:31', '2021-07-12 22:42:31'),
(3116, 1, 'vi', 'plugins/ecommerce/products', 'price', 'Giá cơ bản', '2021-07-12 22:42:31', '2021-07-12 22:42:31'),
(3117, 1, 'vi', 'plugins/ecommerce/products', 'price_sale', 'Giá giảm', '2021-07-12 22:42:31', '2021-07-12 22:42:31'),
(3118, 1, 'vi', 'plugins/ecommerce/products', 'quantity', 'Số lượng', '2021-07-12 22:42:31', '2021-07-12 22:42:31'),
(3119, 1, 'vi', 'plugins/ecommerce/products', 'type', 'Loại sản phẩm', '2021-07-12 22:42:31', '2021-07-12 22:42:31'),
(3120, 1, 'vi', 'plugins/ecommerce/products', 'image', 'Ảnh', '2021-07-12 22:42:31', '2021-07-12 22:42:31'),
(3121, 1, 'vi', 'plugins/ecommerce/products', 'sku', 'Mã sản phẩm', '2021-07-12 22:42:31', '2021-07-12 22:42:31'),
(3122, 1, 'vi', 'plugins/ecommerce/products', 'brand', 'Thương hiệu', '2021-07-12 22:42:31', '2021-07-12 22:42:31'),
(3123, 1, 'vi', 'plugins/ecommerce/products', 'cannot_delete', 'Product could not be deleted', '2021-07-12 22:42:31', '2021-07-12 22:42:31'),
(3124, 1, 'vi', 'plugins/ecommerce/products', 'product_deleted', 'Product deleted', '2021-07-12 22:42:31', '2021-07-12 22:42:31'),
(3125, 1, 'vi', 'plugins/ecommerce/products', 'products', 'Sản phẩm', '2021-07-12 22:42:31', '2021-07-12 22:42:31'),
(3126, 1, 'vi', 'plugins/ecommerce/products', 'menu', 'Sản phẩm', '2021-07-12 22:42:31', '2021-07-12 22:42:31'),
(3127, 1, 'vi', 'plugins/ecommerce/products', 'control.button_add_image', 'Thêm hình ảnh', '2021-07-12 22:42:31', '2021-07-12 22:42:31'),
(3128, 1, 'vi', 'plugins/ecommerce/products', 'overview', 'Tổng quan', '2021-07-12 22:42:31', '2021-07-12 22:42:31'),
(3129, 1, 'vi', 'plugins/ecommerce/products', 'attributes', 'Thuộc tính', '2021-07-12 22:42:31', '2021-07-12 22:42:31'),
(3130, 1, 'vi', 'plugins/ecommerce/products', 'product_has_variations', 'Sản phẩm có nhiều phiên bản', '2021-07-12 22:42:31', '2021-07-12 22:42:31'),
(3131, 1, 'vi', 'plugins/ecommerce/products', 'manage_products', 'Quản lý danh sách sản phẩm', '2021-07-12 22:42:31', '2021-07-12 22:42:31'),
(3132, 1, 'vi', 'plugins/ecommerce/products', 'add_new_product', 'Tạo sản phẩm', '2021-07-12 22:42:31', '2021-07-12 22:42:31'),
(3133, 1, 'vi', 'plugins/ecommerce/products', 'start_by_adding_new_product', 'Bắt đầu bán hàng bằng việc thêm sản phẩm.', '2021-07-12 22:42:31', '2021-07-12 22:42:31'),
(3134, 1, 'vi', 'plugins/ecommerce/reports', 'name', 'Báo cáo', '2021-07-12 22:42:31', '2021-07-12 22:42:31'),
(3135, 1, 'vi', 'plugins/ecommerce/reports', 'widget.order.title', 'Đơn hàng', '2021-07-12 22:42:31', '2021-07-12 22:42:31'),
(3136, 1, 'vi', 'plugins/ecommerce/reports', 'count.revenue', 'Doanh thu hôm nay', '2021-07-12 22:42:31', '2021-07-12 22:42:31'),
(3137, 1, 'vi', 'plugins/ecommerce/reports', 'count.orders', 'Đơn hàng hôm nay', '2021-07-12 22:42:31', '2021-07-12 22:42:31'),
(3138, 1, 'vi', 'plugins/ecommerce/reports', 'count.products', 'Sản phẩm', '2021-07-12 22:42:31', '2021-07-12 22:42:31'),
(3139, 1, 'vi', 'plugins/ecommerce/reports', 'count.customers', 'Khách hàng', '2021-07-12 22:42:31', '2021-07-12 22:42:31'),
(3140, 1, 'vi', 'plugins/ecommerce/reports', 'product_name', 'Tên sản phẩm', '2021-07-12 22:42:31', '2021-07-12 22:42:31'),
(3141, 1, 'vi', 'plugins/ecommerce/reports', 'quantity', 'Số lượng', '2021-07-12 22:42:31', '2021-07-12 22:42:31'),
(3142, 1, 'vi', 'plugins/ecommerce/reports', 'revenue_statistics', 'Thống kê doanh thu', '2021-07-12 22:42:31', '2021-07-12 22:42:31'),
(3143, 1, 'vi', 'plugins/ecommerce/reports', 'top_selling_products', 'Sản phẩm bán chạy trong tháng', '2021-07-12 22:42:31', '2021-07-12 22:42:31'),
(3144, 1, 'vi', 'plugins/ecommerce/review', 'name', 'Đánh giá', '2021-07-12 22:42:31', '2021-07-12 22:42:31'),
(3145, 1, 'vi', 'plugins/ecommerce/review', 'list_review', 'Khách hàng đánh giá', '2021-07-12 22:42:31', '2021-07-12 22:42:31'),
(3146, 1, 'vi', 'plugins/ecommerce/review', 'add_review', 'Thêm đánh giá', '2021-07-12 22:42:31', '2021-07-12 22:42:31'),
(3147, 1, 'vi', 'plugins/ecommerce/review', 'delete_review', 'Xóa đánh giá', '2021-07-12 22:42:31', '2021-07-12 22:42:31'),
(3148, 1, 'vi', 'plugins/ecommerce/review', 'create_review', 'Tạo đánh giá', '2021-07-12 22:42:31', '2021-07-12 22:42:31'),
(3149, 1, 'vi', 'plugins/ecommerce/review', 'please_select_rating', 'Chọn đánh giá', '2021-07-12 22:42:31', '2021-07-12 22:42:31'),
(3150, 1, 'vi', 'plugins/ecommerce/review', 'comment', 'Bình luận', '2021-07-12 22:42:31', '2021-07-12 22:42:31'),
(3151, 1, 'vi', 'plugins/ecommerce/review', 'approve', 'Chấp thuận', '2021-07-12 22:42:31', '2021-07-12 22:42:31'),
(3152, 1, 'vi', 'plugins/ecommerce/review', 'approved', 'Đã chấp thuận', '2021-07-12 22:42:31', '2021-07-12 22:42:31'),
(3153, 1, 'vi', 'plugins/ecommerce/review', 'disapprove', 'Không chấp thuận', '2021-07-12 22:42:31', '2021-07-12 22:42:31'),
(3154, 1, 'vi', 'plugins/ecommerce/review', 'disapproved', 'Đã không chấp thuận', '2021-07-12 22:42:31', '2021-07-12 22:42:31'),
(3155, 1, 'vi', 'plugins/ecommerce/review', 'product', 'Sản phẩm', '2021-07-12 22:42:31', '2021-07-12 22:42:31'),
(3156, 1, 'vi', 'plugins/ecommerce/review', 'user', 'Người dùng', '2021-07-12 22:42:31', '2021-07-12 22:42:31'),
(3157, 1, 'vi', 'plugins/ecommerce/review', 'star', 'Sao', '2021-07-12 22:42:31', '2021-07-12 22:42:31'),
(3158, 1, 'vi', 'plugins/ecommerce/review', 'status', 'Trạng thái', '2021-07-12 22:42:31', '2021-07-12 22:42:31'),
(3159, 1, 'vi', 'plugins/ecommerce/review', 'intro.title', 'Quản lý danh sách nhận xét của khách hàng', '2021-07-12 22:42:31', '2021-07-12 22:42:31'),
(3160, 1, 'vi', 'plugins/ecommerce/review', 'intro.description', 'Lưu trữ các nhận xét, đánh giá của khách hàng', '2021-07-12 22:42:31', '2021-07-12 22:42:31'),
(3161, 1, 'vi', 'plugins/ecommerce/shipping', 'name', 'Phí vận chuyển', '2021-07-12 22:42:31', '2021-07-12 22:42:31'),
(3162, 1, 'vi', 'plugins/ecommerce/shipping', 'shipping', 'Vận chuyển', '2021-07-12 22:42:31', '2021-07-12 22:42:31'),
(3163, 1, 'vi', 'plugins/ecommerce/shipping', 'title', 'Title', '2021-07-12 22:42:31', '2021-07-12 22:42:31'),
(3164, 1, 'vi', 'plugins/ecommerce/shipping', 'country', 'Quốc gia', '2021-07-12 22:42:31', '2021-07-12 22:42:31'),
(3165, 1, 'vi', 'plugins/ecommerce/shipping', 'state', 'State', '2021-07-12 22:42:31', '2021-07-12 22:42:31'),
(3166, 1, 'vi', 'plugins/ecommerce/shipping', 'city', 'City', '2021-07-12 22:42:31', '2021-07-12 22:42:31'),
(3167, 1, 'vi', 'plugins/ecommerce/shipping', 'amount', 'Amount', '2021-07-12 22:42:31', '2021-07-12 22:42:31'),
(3168, 1, 'vi', 'plugins/ecommerce/shipping', 'currency', 'Currency', '2021-07-12 22:42:31', '2021-07-12 22:42:31'),
(3169, 1, 'vi', 'plugins/ecommerce/shipping', 'enable', 'Enable', '2021-07-12 22:42:31', '2021-07-12 22:42:31'),
(3170, 1, 'vi', 'plugins/ecommerce/shipping', 'enabled', 'Enabled', '2021-07-12 22:42:31', '2021-07-12 22:42:31'),
(3171, 1, 'vi', 'plugins/ecommerce/shipping', 'disable', 'Disable', '2021-07-12 22:42:31', '2021-07-12 22:42:31'),
(3172, 1, 'vi', 'plugins/ecommerce/shipping', 'disabled', 'Disabled', '2021-07-12 22:42:31', '2021-07-12 22:42:31'),
(3173, 1, 'vi', 'plugins/ecommerce/shipping', 'create_shipping', 'Create a shipping', '2021-07-12 22:42:31', '2021-07-12 22:42:31'),
(3174, 1, 'vi', 'plugins/ecommerce/shipping', 'edit_shipping', 'Edit shipping #', '2021-07-12 22:42:31', '2021-07-12 22:42:31'),
(3175, 1, 'vi', 'plugins/ecommerce/shipping', 'status', 'Status', '2021-07-12 22:42:31', '2021-07-12 22:42:31'),
(3176, 1, 'vi', 'plugins/ecommerce/shipping', 'shipping_methods', 'Phương thức vận chuyển', '2021-07-12 22:42:31', '2021-07-12 22:42:31'),
(3177, 1, 'vi', 'plugins/ecommerce/shipping', 'create_shipping_method', 'Tạo phương thức vận chuyển', '2021-07-12 22:42:31', '2021-07-12 22:42:31'),
(3178, 1, 'vi', 'plugins/ecommerce/shipping', 'edit_shipping_method', 'Sửa phương thức vận chuyển', '2021-07-12 22:42:31', '2021-07-12 22:42:31'),
(3179, 1, 'vi', 'plugins/ecommerce/shipping', 'add_shipping_region', 'Thêm khu vực vận chuyển', '2021-07-12 22:42:31', '2021-07-12 22:42:31'),
(3180, 1, 'vi', 'plugins/ecommerce/shipping', 'methods.default', 'Default', '2021-07-12 22:42:31', '2021-07-12 22:42:31'),
(3181, 1, 'vi', 'plugins/ecommerce/shipping', 'statuses.not_approved', 'Not approved', '2021-07-12 22:42:31', '2021-07-12 22:42:31'),
(3182, 1, 'vi', 'plugins/ecommerce/shipping', 'statuses.approved', 'Approved', '2021-07-12 22:42:31', '2021-07-12 22:42:31'),
(3183, 1, 'vi', 'plugins/ecommerce/shipping', 'statuses.picking', 'Picking', '2021-07-12 22:42:31', '2021-07-12 22:42:31'),
(3184, 1, 'vi', 'plugins/ecommerce/shipping', 'statuses.delay_picking', 'Delay picking', '2021-07-12 22:42:31', '2021-07-12 22:42:31'),
(3185, 1, 'vi', 'plugins/ecommerce/shipping', 'statuses.picked', 'Picked', '2021-07-12 22:42:31', '2021-07-12 22:42:31'),
(3186, 1, 'vi', 'plugins/ecommerce/shipping', 'statuses.not_picked', 'Not picked', '2021-07-12 22:42:31', '2021-07-12 22:42:31'),
(3187, 1, 'vi', 'plugins/ecommerce/shipping', 'statuses.delivering', 'Delivering', '2021-07-12 22:42:31', '2021-07-12 22:42:31'),
(3188, 1, 'vi', 'plugins/ecommerce/shipping', 'statuses.delivered', 'Delivered', '2021-07-12 22:42:31', '2021-07-12 22:42:31'),
(3189, 1, 'vi', 'plugins/ecommerce/shipping', 'statuses.not_delivered', 'Not delivered', '2021-07-12 22:42:31', '2021-07-12 22:42:31'),
(3190, 1, 'vi', 'plugins/ecommerce/shipping', 'statuses.audited', 'Audited', '2021-07-12 22:42:31', '2021-07-12 22:42:31'),
(3191, 1, 'vi', 'plugins/ecommerce/shipping', 'statuses.canceled', 'Canceled', '2021-07-12 22:42:31', '2021-07-12 22:42:31'),
(3192, 1, 'vi', 'plugins/ecommerce/shipping', 'cod_statuses.pending', 'Pending', '2021-07-12 22:42:31', '2021-07-12 22:42:31'),
(3193, 1, 'vi', 'plugins/ecommerce/shipping', 'cod_statuses.completed', 'Completed', '2021-07-12 22:42:31', '2021-07-12 22:42:31'),
(3194, 1, 'vi', 'plugins/ecommerce/store-locator', 'name', 'Địa chỉ cửa hàng', '2021-07-12 22:42:31', '2021-07-12 22:42:31'),
(3195, 1, 'vi', 'plugins/ecommerce/store-locator', 'description', 'Địa chỉ này sẽ xuất hiện trên hoá đơn của bạn và sẽ được sử dụng để tính toán mức giá vận chuyển của bạn.', '2021-07-12 22:42:31', '2021-07-12 22:42:31'),
(3196, 1, 'vi', 'plugins/ecommerce/store-locator', 'shop_name', 'Tên cửa hàng', '2021-07-12 22:42:31', '2021-07-12 22:42:31'),
(3197, 1, 'vi', 'plugins/ecommerce/store-locator', 'phone', 'Điện thoại', '2021-07-12 22:42:31', '2021-07-12 22:42:31'),
(3198, 1, 'vi', 'plugins/ecommerce/store-locator', 'address', 'Địa chỉ', '2021-07-12 22:42:31', '2021-07-12 22:42:31'),
(3199, 1, 'vi', 'plugins/ecommerce/tax', 'name', 'Thuế', '2021-07-12 22:42:31', '2021-07-12 22:42:31'),
(3200, 1, 'vi', 'plugins/ecommerce/tax', 'create', 'Create a tax', '2021-07-12 22:42:31', '2021-07-12 22:42:31'),
(3201, 1, 'vi', 'plugins/ecommerce/tax', 'edit', 'Edit tax :title', '2021-07-12 22:42:31', '2021-07-12 22:42:31'),
(3202, 1, 'vi', 'plugins/ecommerce/tax', 'title', 'Title', '2021-07-12 22:42:31', '2021-07-12 22:42:31'),
(3203, 1, 'vi', 'plugins/ecommerce/tax', 'percentage', 'Percentage %', '2021-07-12 22:42:31', '2021-07-12 22:42:31'),
(3204, 1, 'vi', 'plugins/ecommerce/tax', 'priority', 'Priority', '2021-07-12 22:42:31', '2021-07-12 22:42:31'),
(3205, 1, 'vi', 'plugins/ecommerce/tax', 'select_tax', '-- select --', '2021-07-12 22:42:31', '2021-07-12 22:42:31'),
(3206, 1, 'en', 'plugins/faq/faq-category', 'name', 'Categories', '2021-07-12 22:42:31', '2021-07-12 22:42:31'),
(3207, 1, 'en', 'plugins/faq/faq-category', 'create', 'New category', '2021-07-12 22:42:31', '2021-07-12 22:42:31'),
(3208, 1, 'en', 'plugins/faq/faq-category', 'edit', 'Edit category', '2021-07-12 22:42:31', '2021-07-12 22:42:31'),
(3209, 1, 'en', 'plugins/faq/faq', 'name', 'FAQ', '2021-07-12 22:42:31', '2021-07-12 22:42:31'),
(3210, 1, 'en', 'plugins/faq/faq', 'create', 'New faq', '2021-07-12 22:42:31', '2021-07-12 22:42:31'),
(3211, 1, 'en', 'plugins/faq/faq', 'edit', 'Edit faq', '2021-07-12 22:42:31', '2021-07-12 22:42:31'),
(3212, 1, 'en', 'plugins/faq/faq', 'question', 'Question', '2021-07-12 22:42:31', '2021-07-12 22:42:31'),
(3213, 1, 'en', 'plugins/faq/faq', 'answer', 'Answer', '2021-07-12 22:42:31', '2021-07-12 22:42:31'),
(3214, 1, 'en', 'plugins/faq/faq', 'category', 'Category', '2021-07-12 22:42:31', '2021-07-12 22:42:31'),
(3215, 1, 'en', 'plugins/faq/faq', 'all', 'All', '2021-07-12 22:42:31', '2021-07-12 22:42:31'),
(3216, 1, 'en', 'plugins/faq/faq', 'faq_schema_config', 'FAQ schema configuration (:link)', '2021-07-12 22:42:31', '2021-07-12 22:42:31'),
(3217, 1, 'en', 'plugins/faq/faq', 'learn_more', 'Learn more', '2021-07-12 22:42:31', '2021-07-12 22:42:31'),
(3218, 1, 'en', 'plugins/faq/faq', 'settings.title', 'FAQ', '2021-07-12 22:42:31', '2021-07-12 22:42:31'),
(3219, 1, 'en', 'plugins/faq/faq', 'settings.description', 'Settings for FAQ', '2021-07-12 22:42:31', '2021-07-12 22:42:31'),
(3220, 1, 'en', 'plugins/faq/faq', 'settings.enable_faq_schema', 'Enable FAQ Schema?', '2021-07-12 22:42:31', '2021-07-12 22:42:31'),
(3221, 1, 'en', 'plugins/faq/faq', 'settings.enable_faq_schema_description', 'Learn more: https://developers.google.com/search/docs/data-types/faqpage', '2021-07-12 22:42:31', '2021-07-12 22:42:31'),
(3222, 1, 'vi', 'plugins/faq/faq', 'name', 'Câu hỏi thường gặp', '2021-07-12 22:42:31', '2021-07-12 22:42:31'),
(3223, 1, 'vi', 'plugins/faq/faq', 'create', 'Thêm câu hỏi', '2021-07-12 22:42:31', '2021-07-12 22:42:31'),
(3224, 1, 'vi', 'plugins/faq/faq', 'edit', 'Sửa câu hỏi', '2021-07-12 22:42:31', '2021-07-12 22:42:31'),
(3225, 1, 'vi', 'plugins/faq/faq', 'question', 'Câu hỏi', '2021-07-12 22:42:31', '2021-07-12 22:42:31'),
(3226, 1, 'vi', 'plugins/faq/faq', 'answer', 'Trả lời', '2021-07-12 22:42:31', '2021-07-12 22:42:31'),
(3227, 1, 'en', 'plugins/marketplace/marketplace', 'name', 'Marketplace', '2021-07-12 22:42:31', '2021-07-12 22:42:31'),
(3228, 1, 'en', 'plugins/marketplace/marketplace', 'email.store_name', 'Store name', '2021-07-12 22:42:31', '2021-07-12 22:42:31'),
(3229, 1, 'en', 'plugins/marketplace/marketplace', 'email.store_new_order_title', 'Send order to store', '2021-07-12 22:42:31', '2021-07-12 22:42:31'),
(3230, 1, 'en', 'plugins/marketplace/marketplace', 'email.store_new_order_description', 'Send email to store when a customer an order placed', '2021-07-12 22:42:31', '2021-07-12 22:42:31'),
(3231, 1, 'en', 'plugins/marketplace/marketplace', 'current_balance', 'Current balance', '2021-07-12 22:42:31', '2021-07-12 22:42:31'),
(3232, 1, 'en', 'plugins/marketplace/marketplace', 'settings.name', 'Settings', '2021-07-12 22:42:31', '2021-07-12 22:42:31'),
(3233, 1, 'en', 'plugins/marketplace/marketplace', 'settings.title', 'Settings for marketplace', '2021-07-12 22:42:32', '2021-07-12 22:42:32'),
(3234, 1, 'en', 'plugins/marketplace/marketplace', 'settings.description', '...', '2021-07-12 22:42:32', '2021-07-12 22:42:32'),
(3235, 1, 'en', 'plugins/marketplace/marketplace', 'settings.fee_per_order', 'Fee per order (%), suggest: 2 or 3', '2021-07-12 22:42:32', '2021-07-12 22:42:32'),
(3236, 1, 'en', 'plugins/marketplace/marketplace', 'settings.fee_withdrawal', 'Fee withdrawal (Fixed amount)', '2021-07-12 22:42:32', '2021-07-12 22:42:32'),
(3237, 1, 'en', 'plugins/marketplace/marketplace', 'settings.check_valid_signature', 'Check valid signature in vendor\'s earnings', '2021-07-12 22:42:32', '2021-07-12 22:42:32'),
(3238, 1, 'en', 'plugins/marketplace/marketplace', 'theme_options.name', 'Marketplace', '2021-07-12 22:42:32', '2021-07-12 22:42:32'),
(3239, 1, 'en', 'plugins/marketplace/marketplace', 'theme_options.description', 'Theme options for Marketplace', '2021-07-12 22:42:32', '2021-07-12 22:42:32'),
(3240, 1, 'en', 'plugins/marketplace/marketplace', 'theme_options.logo_vendor_dashboard', 'Logo in the vendor dashboard (Default is the main logo)', '2021-07-12 22:42:32', '2021-07-12 22:42:32'),
(3241, 1, 'en', 'plugins/marketplace/order', 'shipping_method_required', 'Shipping method for \":name\" store order is required.', '2021-07-12 22:42:32', '2021-07-12 22:42:32'),
(3242, 1, 'en', 'plugins/marketplace/order', 'shipping_method_in', 'Shipping method for \":name\" store order is invalid.', '2021-07-12 22:42:32', '2021-07-12 22:42:32'),
(3243, 1, 'en', 'plugins/marketplace/order', 'shipping_option_required', 'Shipping option for \":name\" store order is required.', '2021-07-12 22:42:32', '2021-07-12 22:42:32'),
(3244, 1, 'en', 'plugins/marketplace/store', 'name', 'Stores', '2021-07-12 22:42:32', '2021-07-12 22:42:32'),
(3245, 1, 'en', 'plugins/marketplace/store', 'create', 'New store', '2021-07-12 22:42:32', '2021-07-12 22:42:32'),
(3246, 1, 'en', 'plugins/marketplace/store', 'edit', 'Edit store', '2021-07-12 22:42:32', '2021-07-12 22:42:32'),
(3247, 1, 'en', 'plugins/marketplace/store', 'forms.logo', 'Logo', '2021-07-12 22:42:32', '2021-07-12 22:42:32'),
(3248, 1, 'en', 'plugins/marketplace/store', 'forms.email', 'Email', '2021-07-12 22:42:32', '2021-07-12 22:42:32'),
(3249, 1, 'en', 'plugins/marketplace/store', 'forms.email_placeholder', 'Ex: name@store.com', '2021-07-12 22:42:32', '2021-07-12 22:42:32'),
(3250, 1, 'en', 'plugins/marketplace/store', 'forms.phone', 'Phone', '2021-07-12 22:42:32', '2021-07-12 22:42:32'),
(3251, 1, 'en', 'plugins/marketplace/store', 'forms.phone_placeholder', 'Phone', '2021-07-12 22:42:32', '2021-07-12 22:42:32'),
(3252, 1, 'en', 'plugins/marketplace/store', 'forms.address', 'Address', '2021-07-12 22:42:32', '2021-07-12 22:42:32'),
(3253, 1, 'en', 'plugins/marketplace/store', 'forms.address_placeholder', 'Address', '2021-07-12 22:42:32', '2021-07-12 22:42:32'),
(3254, 1, 'en', 'plugins/marketplace/store', 'forms.city', 'City', '2021-07-12 22:42:32', '2021-07-12 22:42:32'),
(3255, 1, 'en', 'plugins/marketplace/store', 'forms.city_placeholder', 'City', '2021-07-12 22:42:32', '2021-07-12 22:42:32'),
(3256, 1, 'en', 'plugins/marketplace/store', 'forms.state', 'State', '2021-07-12 22:42:32', '2021-07-12 22:42:32'),
(3257, 1, 'en', 'plugins/marketplace/store', 'forms.state_placeholder', 'State', '2021-07-12 22:42:32', '2021-07-12 22:42:32'),
(3258, 1, 'en', 'plugins/marketplace/store', 'forms.country', 'Country', '2021-07-12 22:42:32', '2021-07-12 22:42:32'),
(3259, 1, 'en', 'plugins/marketplace/store', 'forms.country_placeholder', 'Country', '2021-07-12 22:42:32', '2021-07-12 22:42:32'),
(3260, 1, 'en', 'plugins/marketplace/store', 'forms.store_owner', 'Store owner', '2021-07-12 22:42:32', '2021-07-12 22:42:32'),
(3261, 1, 'en', 'plugins/marketplace/store', 'forms.select_store_owner', 'Select a store owner...', '2021-07-12 22:42:32', '2021-07-12 22:42:32'),
(3262, 1, 'en', 'plugins/marketplace/store', 'forms.store', 'Store', '2021-07-12 22:42:32', '2021-07-12 22:42:32'),
(3263, 1, 'en', 'plugins/marketplace/store', 'forms.select_store', 'Select a store...', '2021-07-12 22:42:32', '2021-07-12 22:42:32'),
(3264, 1, 'en', 'plugins/marketplace/store', 'forms.is_vendor', 'Is vendor?', '2021-07-12 22:42:32', '2021-07-12 22:42:32'),
(3265, 1, 'en', 'plugins/marketplace/store', 'store', 'Store', '2021-07-12 22:42:32', '2021-07-12 22:42:32'),
(3266, 1, 'en', 'plugins/marketplace/withdrawal', 'name', 'Withdrawals', '2021-07-12 22:42:32', '2021-07-12 22:42:32'),
(3267, 1, 'en', 'plugins/marketplace/withdrawal', 'edit', 'Edit withdrawal', '2021-07-12 22:42:32', '2021-07-12 22:42:32'),
(3268, 1, 'en', 'plugins/marketplace/withdrawal', 'statuses.pending', 'Pending', '2021-07-12 22:42:32', '2021-07-12 22:42:32'),
(3269, 1, 'en', 'plugins/marketplace/withdrawal', 'statuses.processing', 'Processing', '2021-07-12 22:42:32', '2021-07-12 22:42:32'),
(3270, 1, 'en', 'plugins/marketplace/withdrawal', 'statuses.completed', 'Completed', '2021-07-12 22:42:32', '2021-07-12 22:42:32'),
(3271, 1, 'en', 'plugins/marketplace/withdrawal', 'statuses.canceled', 'Canceled', '2021-07-12 22:42:32', '2021-07-12 22:42:32'),
(3272, 1, 'en', 'plugins/marketplace/withdrawal', 'statuses.refused', 'Refused', '2021-07-12 22:42:32', '2021-07-12 22:42:32'),
(3273, 1, 'en', 'plugins/marketplace/withdrawal', 'amount', 'Amount', '2021-07-12 22:42:32', '2021-07-12 22:42:32'),
(3274, 1, 'en', 'plugins/marketplace/withdrawal', 'customer', 'Customer', '2021-07-12 22:42:32', '2021-07-12 22:42:32'),
(3275, 1, 'en', 'plugins/marketplace/withdrawal', 'vendor', 'Vendor', '2021-07-12 22:42:32', '2021-07-12 22:42:32'),
(3276, 1, 'en', 'plugins/marketplace/withdrawal', 'currency', 'Currency', '2021-07-12 22:42:32', '2021-07-12 22:42:32'),
(3277, 1, 'en', 'plugins/marketplace/withdrawal', 'forms.amount', 'Amount', '2021-07-12 22:42:32', '2021-07-12 22:42:32'),
(3278, 1, 'en', 'plugins/marketplace/withdrawal', 'forms.amount_placeholder', 'Amount you want to withdrawal', '2021-07-12 22:42:32', '2021-07-12 22:42:32'),
(3279, 1, 'en', 'plugins/marketplace/withdrawal', 'forms.fee', 'Fee', '2021-07-12 22:42:32', '2021-07-12 22:42:32'),
(3280, 1, 'en', 'plugins/marketplace/withdrawal', 'forms.fee_helper', 'You have to pay a fee when withdrawing: :fee', '2021-07-12 22:42:32', '2021-07-12 22:42:32'),
(3281, 1, 'en', 'plugins/newsletter/newsletter', 'name', 'Newsletters', '2021-07-12 22:42:32', '2021-07-12 22:42:32'),
(3282, 1, 'en', 'plugins/newsletter/newsletter', 'settings.email.templates.title', 'Newsletter', '2021-07-12 22:42:32', '2021-07-12 22:42:32'),
(3283, 1, 'en', 'plugins/newsletter/newsletter', 'settings.email.templates.description', 'Config newsletter email templates', '2021-07-12 22:42:32', '2021-07-12 22:42:32'),
(3284, 1, 'en', 'plugins/newsletter/newsletter', 'settings.email.templates.to_admin.title', 'Email send to admin', '2021-07-12 22:42:32', '2021-07-12 22:42:32'),
(3285, 1, 'en', 'plugins/newsletter/newsletter', 'settings.email.templates.to_admin.description', 'Template for sending email to admin', '2021-07-12 22:42:32', '2021-07-12 22:42:32'),
(3286, 1, 'en', 'plugins/newsletter/newsletter', 'settings.email.templates.to_user.title', 'Email send to user', '2021-07-12 22:42:32', '2021-07-12 22:42:32'),
(3287, 1, 'en', 'plugins/newsletter/newsletter', 'settings.email.templates.to_user.description', 'Template for sending email to subscriber', '2021-07-12 22:42:32', '2021-07-12 22:42:32'),
(3288, 1, 'en', 'plugins/newsletter/newsletter', 'settings.title', 'Newsletter', '2021-07-12 22:42:32', '2021-07-12 22:42:32'),
(3289, 1, 'en', 'plugins/newsletter/newsletter', 'settings.description', 'Settings for newsletter', '2021-07-12 22:42:32', '2021-07-12 22:42:32'),
(3290, 1, 'en', 'plugins/newsletter/newsletter', 'settings.mailchimp_api_key', 'Mailchimp API Key', '2021-07-12 22:42:32', '2021-07-12 22:42:32'),
(3291, 1, 'en', 'plugins/newsletter/newsletter', 'settings.mailchimp_list_id', 'Mailchimp List ID', '2021-07-12 22:42:32', '2021-07-12 22:42:32'),
(3292, 1, 'en', 'plugins/newsletter/newsletter', 'settings.sendgrid_api_key', 'Sendgrid API Key', '2021-07-12 22:42:32', '2021-07-12 22:42:32'),
(3293, 1, 'en', 'plugins/newsletter/newsletter', 'settings.sendgrid_list_id', 'Sendgrid List ID', '2021-07-12 22:42:32', '2021-07-12 22:42:32'),
(3294, 1, 'en', 'plugins/newsletter/newsletter', 'statuses.subscribed', 'Subscribed', '2021-07-12 22:42:32', '2021-07-12 22:42:32'),
(3295, 1, 'en', 'plugins/newsletter/newsletter', 'statuses.unsubscribed', 'Unsubscribed', '2021-07-12 22:42:32', '2021-07-12 22:42:32'),
(3296, 1, 'en', 'plugins/payment/payment', 'payments', 'Payments', '2021-07-12 22:42:32', '2021-07-12 22:42:32'),
(3297, 1, 'en', 'plugins/payment/payment', 'checkout_success', 'Checkout successfully!', '2021-07-12 22:42:32', '2021-07-12 22:42:32'),
(3298, 1, 'en', 'plugins/payment/payment', 'view_payment', 'View payment #', '2021-07-12 22:42:32', '2021-07-12 22:42:32'),
(3299, 1, 'en', 'plugins/payment/payment', 'charge_id', 'Charge ID', '2021-07-12 22:42:32', '2021-07-12 22:42:32'),
(3300, 1, 'en', 'plugins/payment/payment', 'amount', 'Amount', '2021-07-12 22:42:32', '2021-07-12 22:42:32'),
(3301, 1, 'en', 'plugins/payment/payment', 'currency', 'Currency', '2021-07-12 22:42:32', '2021-07-12 22:42:32'),
(3302, 1, 'en', 'plugins/payment/payment', 'user', 'User', '2021-07-12 22:42:32', '2021-07-12 22:42:32'),
(3303, 1, 'en', 'plugins/payment/payment', 'stripe', 'Stripe', '2021-07-12 22:42:32', '2021-07-12 22:42:32'),
(3304, 1, 'en', 'plugins/payment/payment', 'paypal', 'PayPal', '2021-07-12 22:42:32', '2021-07-12 22:42:32'),
(3305, 1, 'en', 'plugins/payment/payment', 'action', 'Action', '2021-07-12 22:42:32', '2021-07-12 22:42:32'),
(3306, 1, 'en', 'plugins/payment/payment', 'payment_via_card', 'Payment via card', '2021-07-12 22:42:32', '2021-07-12 22:42:32'),
(3307, 1, 'en', 'plugins/payment/payment', 'card_number', 'Card number', '2021-07-12 22:42:32', '2021-07-12 22:42:32'),
(3308, 1, 'en', 'plugins/payment/payment', 'full_name', 'Full name', '2021-07-12 22:42:32', '2021-07-12 22:42:32'),
(3309, 1, 'en', 'plugins/payment/payment', 'payment_via_paypal', 'Payment via PayPal', '2021-07-12 22:42:32', '2021-07-12 22:42:32'),
(3310, 1, 'en', 'plugins/payment/payment', 'mm_yy', 'MM/YY', '2021-07-12 22:42:32', '2021-07-12 22:42:32'),
(3311, 1, 'en', 'plugins/payment/payment', 'cvc', 'CVC', '2021-07-12 22:42:32', '2021-07-12 22:42:32'),
(3312, 1, 'en', 'plugins/payment/payment', 'details', 'Details', '2021-07-12 22:42:32', '2021-07-12 22:42:32'),
(3313, 1, 'en', 'plugins/payment/payment', 'payer_name', 'Payer Name', '2021-07-12 22:42:32', '2021-07-12 22:42:32'),
(3314, 1, 'en', 'plugins/payment/payment', 'email', 'Email', '2021-07-12 22:42:32', '2021-07-12 22:42:32'),
(3315, 1, 'en', 'plugins/payment/payment', 'phone', 'Phone', '2021-07-12 22:42:32', '2021-07-12 22:42:32'),
(3316, 1, 'en', 'plugins/payment/payment', 'country', 'Country', '2021-07-12 22:42:32', '2021-07-12 22:42:32'),
(3317, 1, 'en', 'plugins/payment/payment', 'shipping_address', 'Shipping Address', '2021-07-12 22:42:32', '2021-07-12 22:42:32'),
(3318, 1, 'en', 'plugins/payment/payment', 'payment_details', 'Payment Details', '2021-07-12 22:42:32', '2021-07-12 22:42:32'),
(3319, 1, 'en', 'plugins/payment/payment', 'card', 'Card', '2021-07-12 22:42:32', '2021-07-12 22:42:32'),
(3320, 1, 'en', 'plugins/payment/payment', 'address', 'Address', '2021-07-12 22:42:32', '2021-07-12 22:42:32'),
(3321, 1, 'en', 'plugins/payment/payment', 'could_not_get_stripe_token', 'Could not get Stripe token to make a charge.', '2021-07-12 22:42:32', '2021-07-12 22:42:32'),
(3322, 1, 'en', 'plugins/payment/payment', 'payment_id', 'Payment ID', '2021-07-12 22:42:32', '2021-07-12 22:42:32'),
(3323, 1, 'en', 'plugins/payment/payment', 'payment_methods', 'Payment methods', '2021-07-12 22:42:32', '2021-07-12 22:42:32'),
(3324, 1, 'en', 'plugins/payment/payment', 'transactions', 'Transactions', '2021-07-12 22:42:32', '2021-07-12 22:42:32'),
(3325, 1, 'en', 'plugins/payment/payment', 'payment_methods_description', 'Setup payment methods for website', '2021-07-12 22:42:32', '2021-07-12 22:42:32'),
(3326, 1, 'en', 'plugins/payment/payment', 'paypal_description', 'Customer can buy product and pay directly via PayPal', '2021-07-12 22:42:32', '2021-07-12 22:42:32'),
(3327, 1, 'en', 'plugins/payment/payment', 'use', 'Use', '2021-07-12 22:42:32', '2021-07-12 22:42:32'),
(3328, 1, 'en', 'plugins/payment/payment', 'stripe_description', 'Customer can buy product and pay directly using Visa, Credit card via Stripe', '2021-07-12 22:42:32', '2021-07-12 22:42:32'),
(3329, 1, 'en', 'plugins/payment/payment', 'edit', 'Edit', '2021-07-12 22:42:32', '2021-07-12 22:42:32'),
(3330, 1, 'en', 'plugins/payment/payment', 'settings', 'Settings', '2021-07-12 22:42:32', '2021-07-12 22:42:32'),
(3331, 1, 'en', 'plugins/payment/payment', 'activate', 'Activate', '2021-07-12 22:42:32', '2021-07-12 22:42:32'),
(3332, 1, 'en', 'plugins/payment/payment', 'deactivate', 'Deactivate', '2021-07-12 22:42:32', '2021-07-12 22:42:32'),
(3333, 1, 'en', 'plugins/payment/payment', 'update', 'Update', '2021-07-12 22:42:32', '2021-07-12 22:42:32'),
(3334, 1, 'en', 'plugins/payment/payment', 'configuration_instruction', 'Configuration instruction for :name', '2021-07-12 22:42:32', '2021-07-12 22:42:32'),
(3335, 1, 'en', 'plugins/payment/payment', 'configuration_requirement', 'To use :name, you need', '2021-07-12 22:42:32', '2021-07-12 22:42:32'),
(3336, 1, 'en', 'plugins/payment/payment', 'service_registration', 'Register with :name', '2021-07-12 22:42:32', '2021-07-12 22:42:32'),
(3337, 1, 'en', 'plugins/payment/payment', 'after_service_registration_msg', 'After registration at :name, you will have Client ID, Client Secret', '2021-07-12 22:42:32', '2021-07-12 22:42:32'),
(3338, 1, 'en', 'plugins/payment/payment', 'enter_client_id_and_secret', 'Enter Client ID, Secret into the box in right hand', '2021-07-12 22:42:32', '2021-07-12 22:42:32'),
(3339, 1, 'en', 'plugins/payment/payment', 'method_name', 'Method name', '2021-07-12 22:42:32', '2021-07-12 22:42:32'),
(3340, 1, 'en', 'plugins/payment/payment', 'please_provide_information', 'Please provide information', '2021-07-12 22:42:32', '2021-07-12 22:42:32'),
(3341, 1, 'en', 'plugins/payment/payment', 'client_id', 'Client ID', '2021-07-12 22:42:32', '2021-07-12 22:42:32'),
(3342, 1, 'en', 'plugins/payment/payment', 'client_secret', 'Client Secret', '2021-07-12 22:42:32', '2021-07-12 22:42:32'),
(3343, 1, 'en', 'plugins/payment/payment', 'secret', 'Secret', '2021-07-12 22:42:32', '2021-07-12 22:42:32'),
(3344, 1, 'en', 'plugins/payment/payment', 'stripe_key', 'Stripe Public Key', '2021-07-12 22:42:32', '2021-07-12 22:42:32'),
(3345, 1, 'en', 'plugins/payment/payment', 'stripe_secret', 'Stripe Private Key', '2021-07-12 22:42:32', '2021-07-12 22:42:32'),
(3346, 1, 'en', 'plugins/payment/payment', 'stripe_after_service_registration_msg', 'After registration at :name, you will have Public, Secret keys', '2021-07-12 22:42:32', '2021-07-12 22:42:32'),
(3347, 1, 'en', 'plugins/payment/payment', 'stripe_enter_client_id_and_secret', 'Enter Public, Secret keys into the box in right hand', '2021-07-12 22:42:32', '2021-07-12 22:42:32'),
(3348, 1, 'en', 'plugins/payment/payment', 'pay_online_via', 'Pay online via :name', '2021-07-12 22:42:32', '2021-07-12 22:42:32'),
(3349, 1, 'en', 'plugins/payment/payment', 'sandbox_mode', 'Sandbox mode', '2021-07-12 22:42:32', '2021-07-12 22:42:32'),
(3350, 1, 'en', 'plugins/payment/payment', 'deactivate_payment_method', 'Deactivate payment method', '2021-07-12 22:42:32', '2021-07-12 22:42:32'),
(3351, 1, 'en', 'plugins/payment/payment', 'deactivate_payment_method_description', 'Do you really want to deactivate this payment method?', '2021-07-12 22:42:32', '2021-07-12 22:42:32'),
(3352, 1, 'en', 'plugins/payment/payment', 'agree', 'Agree', '2021-07-12 22:42:32', '2021-07-12 22:42:32'),
(3353, 1, 'en', 'plugins/payment/payment', 'name', 'Payments', '2021-07-12 22:42:32', '2021-07-12 22:42:32'),
(3354, 1, 'en', 'plugins/payment/payment', 'create', 'New payment', '2021-07-12 22:42:32', '2021-07-12 22:42:32'),
(3355, 1, 'en', 'plugins/payment/payment', 'go_back', 'Go back', '2021-07-12 22:42:32', '2021-07-12 22:42:32'),
(3356, 1, 'en', 'plugins/payment/payment', 'information', 'Information', '2021-07-12 22:42:32', '2021-07-12 22:42:32'),
(3357, 1, 'en', 'plugins/payment/payment', 'methods.paypal', 'PayPal', '2021-07-12 22:42:32', '2021-07-12 22:42:32'),
(3358, 1, 'en', 'plugins/payment/payment', 'methods.stripe', 'Stripe', '2021-07-12 22:42:32', '2021-07-12 22:42:32'),
(3359, 1, 'en', 'plugins/payment/payment', 'methods.cod', 'Cash on delivery (COD)', '2021-07-12 22:42:32', '2021-07-12 22:42:32'),
(3360, 1, 'en', 'plugins/payment/payment', 'methods.bank_transfer', 'Bank transfer', '2021-07-12 22:42:32', '2021-07-12 22:42:32'),
(3361, 1, 'en', 'plugins/payment/payment', 'statuses.pending', 'Pending', '2021-07-12 22:42:32', '2021-07-12 22:42:32'),
(3362, 1, 'en', 'plugins/payment/payment', 'statuses.completed', 'Completed', '2021-07-12 22:42:32', '2021-07-12 22:42:32'),
(3363, 1, 'en', 'plugins/payment/payment', 'statuses.refunding', 'Refunding', '2021-07-12 22:42:32', '2021-07-12 22:42:32'),
(3364, 1, 'en', 'plugins/payment/payment', 'statuses.refunded', 'Refunded', '2021-07-12 22:42:32', '2021-07-12 22:42:32'),
(3365, 1, 'en', 'plugins/payment/payment', 'statuses.fraud', 'Fraud', '2021-07-12 22:42:32', '2021-07-12 22:42:32'),
(3366, 1, 'en', 'plugins/payment/payment', 'statuses.failed', 'Failed', '2021-07-12 22:42:32', '2021-07-12 22:42:32'),
(3367, 1, 'en', 'plugins/payment/payment', 'payment_methods_instruction', 'Guide customers to pay directly. You can choose to pay by delivery or bank transfer', '2021-07-12 22:42:32', '2021-07-12 22:42:32'),
(3368, 1, 'en', 'plugins/payment/payment', 'payment_method_description', 'Payment guide - (Displayed on the notice of successful purchase and payment page)', '2021-07-12 22:42:32', '2021-07-12 22:42:32'),
(3369, 1, 'en', 'plugins/payment/payment', 'payment_via_cod', 'Cash on delivery (COD)', '2021-07-12 22:42:32', '2021-07-12 22:42:32'),
(3370, 1, 'en', 'plugins/payment/payment', 'payment_via_bank_transfer', 'Bank transfer', '2021-07-12 22:42:32', '2021-07-12 22:42:32'),
(3371, 1, 'en', 'plugins/payment/payment', 'payment_pending', 'Checkout successfully. Your payment is pending and will be checked by our staff.', '2021-07-12 22:42:32', '2021-07-12 22:42:32'),
(3372, 1, 'en', 'plugins/payment/payment', 'created_at', 'Created At', '2021-07-12 22:42:32', '2021-07-12 22:42:32'),
(3373, 1, 'en', 'plugins/payment/payment', 'payment_channel', 'Payment Channel', '2021-07-12 22:42:32', '2021-07-12 22:42:32'),
(3374, 1, 'en', 'plugins/payment/payment', 'total', 'Total', '2021-07-12 22:42:32', '2021-07-12 22:42:32'),
(3375, 1, 'en', 'plugins/payment/payment', 'status', 'Status', '2021-07-12 22:42:32', '2021-07-12 22:42:32'),
(3376, 1, 'en', 'plugins/payment/payment', 'default_payment_method', 'Default payment method', '2021-07-12 22:42:32', '2021-07-12 22:42:32'),
(3377, 1, 'en', 'plugins/payment/payment', 'turn_off_success', 'Turn off payment method successfully!', '2021-07-12 22:42:32', '2021-07-12 22:42:32'),
(3378, 1, 'en', 'plugins/payment/payment', 'saved_payment_method_success', 'Saved payment method successfully!', '2021-07-12 22:42:32', '2021-07-12 22:42:32'),
(3379, 1, 'en', 'plugins/payment/payment', 'saved_payment_settings_success', 'Saved payment settings successfully!', '2021-07-12 22:42:32', '2021-07-12 22:42:32'),
(3380, 1, 'en', 'plugins/payment/payment', 'payment_name', 'Name', '2021-07-12 22:42:32', '2021-07-12 22:42:32'),
(3381, 1, 'en', 'plugins/payment/payment', 'callback_url', 'Callback URL', '2021-07-12 22:42:32', '2021-07-12 22:42:32'),
(3382, 1, 'en', 'plugins/payment/payment', 'return_url', 'Return URL', '2021-07-12 22:42:32', '2021-07-12 22:42:32'),
(3383, 1, 'en', 'plugins/payment/payment', 'payment_not_found', 'Payment not found!', '2021-07-12 22:42:32', '2021-07-12 22:42:32'),
(3384, 1, 'vi', 'plugins/payment/payment', 'payments', 'Thanh toán', '2021-07-12 22:42:32', '2021-07-12 22:42:32'),
(3385, 1, 'vi', 'plugins/payment/payment', 'checkout_success', 'Thanh toán thành công!', '2021-07-12 22:42:32', '2021-07-12 22:42:32'),
(3386, 1, 'vi', 'plugins/payment/payment', 'view_payment', 'Xem thanh toán #', '2021-07-12 22:42:32', '2021-07-12 22:42:32'),
(3387, 1, 'vi', 'plugins/payment/payment', 'charge_id', 'Mã thanh toán', '2021-07-12 22:42:32', '2021-07-12 22:42:32'),
(3388, 1, 'vi', 'plugins/payment/payment', 'amount', 'Số tiền', '2021-07-12 22:42:32', '2021-07-12 22:42:32'),
(3389, 1, 'vi', 'plugins/payment/payment', 'currency', 'Loại tiền tệ', '2021-07-12 22:42:32', '2021-07-12 22:42:32'),
(3390, 1, 'vi', 'plugins/payment/payment', 'user', 'Người dùng', '2021-07-12 22:42:32', '2021-07-12 22:42:32'),
(3391, 1, 'vi', 'plugins/payment/payment', 'stripe', 'Stripe', '2021-07-12 22:42:32', '2021-07-12 22:42:32'),
(3392, 1, 'vi', 'plugins/payment/payment', 'paypal', 'PayPal', '2021-07-12 22:42:32', '2021-07-12 22:42:32'),
(3393, 1, 'vi', 'plugins/payment/payment', 'action', 'Hành động', '2021-07-12 22:42:32', '2021-07-12 22:42:32'),
(3394, 1, 'vi', 'plugins/payment/payment', 'payment_via_card', 'Thanh toán qua thẻ', '2021-07-12 22:42:32', '2021-07-12 22:42:32'),
(3395, 1, 'vi', 'plugins/payment/payment', 'card_number', 'Số thẻ', '2021-07-12 22:42:32', '2021-07-12 22:42:32'),
(3396, 1, 'vi', 'plugins/payment/payment', 'full_name', 'Họ tên', '2021-07-12 22:42:32', '2021-07-12 22:42:32'),
(3397, 1, 'vi', 'plugins/payment/payment', 'payment_via_paypal', 'Thanh toán qua PayPal', '2021-07-12 22:42:32', '2021-07-12 22:42:32'),
(3398, 1, 'vi', 'plugins/payment/payment', 'mm_yy', 'MM/YY', '2021-07-12 22:42:32', '2021-07-12 22:42:32'),
(3399, 1, 'vi', 'plugins/payment/payment', 'cvc', 'CVC', '2021-07-12 22:42:32', '2021-07-12 22:42:32'),
(3400, 1, 'vi', 'plugins/payment/payment', 'details', 'Chi tiết', '2021-07-12 22:42:32', '2021-07-12 22:42:32'),
(3401, 1, 'vi', 'plugins/payment/payment', 'payer_name', 'Tên người mua', '2021-07-12 22:42:32', '2021-07-12 22:42:32'),
(3402, 1, 'vi', 'plugins/payment/payment', 'email', 'Email', '2021-07-12 22:42:32', '2021-07-12 22:42:32'),
(3403, 1, 'vi', 'plugins/payment/payment', 'phone', 'Điện thoại', '2021-07-12 22:42:32', '2021-07-12 22:42:32'),
(3404, 1, 'vi', 'plugins/payment/payment', 'country', 'Quốc gia', '2021-07-12 22:42:32', '2021-07-12 22:42:32'),
(3405, 1, 'vi', 'plugins/payment/payment', 'shipping_address', 'Địa chỉ giao hàng', '2021-07-12 22:42:32', '2021-07-12 22:42:32'),
(3406, 1, 'vi', 'plugins/payment/payment', 'payment_details', 'Chi tiết thanh toán', '2021-07-12 22:42:32', '2021-07-12 22:42:32'),
(3407, 1, 'vi', 'plugins/payment/payment', 'card', 'Thẻ', '2021-07-12 22:42:32', '2021-07-12 22:42:32'),
(3408, 1, 'vi', 'plugins/payment/payment', 'address', 'Địa chỉ', '2021-07-12 22:42:32', '2021-07-12 22:42:32'),
(3409, 1, 'vi', 'plugins/payment/payment', 'could_not_get_stripe_token', 'Không thể lấy mã Stripe để thanh toán.', '2021-07-12 22:42:32', '2021-07-12 22:42:32'),
(3410, 1, 'vi', 'plugins/payment/payment', 'payment_id', 'Mã thanh toán', '2021-07-12 22:42:32', '2021-07-12 22:42:32'),
(3411, 1, 'vi', 'plugins/payment/payment', 'payment_methods', 'Phương thức thanh toán', '2021-07-12 22:42:32', '2021-07-12 22:42:32'),
(3412, 1, 'vi', 'plugins/payment/payment', 'transactions', 'Lịch sử giao dịch', '2021-07-12 22:42:32', '2021-07-12 22:42:32'),
(3413, 1, 'vi', 'plugins/payment/payment', 'payment_methods_description', 'Cài đặt các phương thức thanh toán cho website', '2021-07-12 22:42:32', '2021-07-12 22:42:32'),
(3414, 1, 'vi', 'plugins/payment/payment', 'paypal_description', 'Khách hàng có thể mua hàng và thanh toán trực tiếp thông qua cổng thanh toán PayPal', '2021-07-12 22:42:32', '2021-07-12 22:42:32'),
(3415, 1, 'vi', 'plugins/payment/payment', 'use', 'Dùng', '2021-07-12 22:42:32', '2021-07-12 22:42:32'),
(3416, 1, 'vi', 'plugins/payment/payment', 'stripe_description', 'Khách hàng có thể mua hàng và thanh toán bằng Visa, Credit card thông qua cổng thanh toán Stripe', '2021-07-12 22:42:32', '2021-07-12 22:42:32'),
(3417, 1, 'vi', 'plugins/payment/payment', 'edit', 'Chỉnh sửa', '2021-07-12 22:42:32', '2021-07-12 22:42:32'),
(3418, 1, 'vi', 'plugins/payment/payment', 'settings', 'Cài đặt', '2021-07-12 22:42:32', '2021-07-12 22:42:32'),
(3419, 1, 'vi', 'plugins/payment/payment', 'activate', 'Kích hoạt', '2021-07-12 22:42:32', '2021-07-12 22:42:32'),
(3420, 1, 'vi', 'plugins/payment/payment', 'deactivate', 'Huỷ kích hoạt', '2021-07-12 22:42:32', '2021-07-12 22:42:32'),
(3421, 1, 'vi', 'plugins/payment/payment', 'update', 'Cập nhật', '2021-07-12 22:42:32', '2021-07-12 22:42:32'),
(3422, 1, 'vi', 'plugins/payment/payment', 'configuration_instruction', 'Hướng dẫn cấu hình :name', '2021-07-12 22:42:32', '2021-07-12 22:42:32'),
(3423, 1, 'vi', 'plugins/payment/payment', 'configuration_requirement', 'Để sử dụng :name bạn cần', '2021-07-12 22:42:32', '2021-07-12 22:42:32'),
(3424, 1, 'vi', 'plugins/payment/payment', 'service_registration', 'Đăng ký dịch vụ với :name', '2021-07-12 22:42:32', '2021-07-12 22:42:32'),
(3425, 1, 'vi', 'plugins/payment/payment', 'after_service_registration_msg', 'Sau khi hoàn tất các bước đăng ký tại :name, bạn sẽ có các thông số Client ID, Client Secret', '2021-07-12 22:42:32', '2021-07-12 22:42:32'),
(3426, 1, 'vi', 'plugins/payment/payment', 'enter_client_id_and_secret', 'Nhập các thông số Client ID, Secret vào ô bên phải', '2021-07-12 22:42:32', '2021-07-12 22:42:32'),
(3427, 1, 'vi', 'plugins/payment/payment', 'method_name', 'Tên phương thức', '2021-07-12 22:42:32', '2021-07-12 22:42:32'),
(3428, 1, 'vi', 'plugins/payment/payment', 'please_provide_information', 'Xin vui lòng cung cấp thông tin', '2021-07-12 22:42:32', '2021-07-12 22:42:32'),
(3429, 1, 'vi', 'plugins/payment/payment', 'client_id', 'Client ID', '2021-07-12 22:42:32', '2021-07-12 22:42:32'),
(3430, 1, 'vi', 'plugins/payment/payment', 'client_secret', 'Client Secret', '2021-07-12 22:42:32', '2021-07-12 22:42:32'),
(3431, 1, 'vi', 'plugins/payment/payment', 'stripe_key', 'Stripe Key', '2021-07-12 22:42:32', '2021-07-12 22:42:32'),
(3432, 1, 'vi', 'plugins/payment/payment', 'stripe_secret', 'Stripe Secret', '2021-07-12 22:42:32', '2021-07-12 22:42:32'),
(3433, 1, 'vi', 'plugins/payment/payment', 'stripe_after_service_registration_msg', 'After registration at :name, you will have Public, Secret keys', '2021-07-12 22:42:32', '2021-07-12 22:42:32'),
(3434, 1, 'vi', 'plugins/payment/payment', 'stripe_enter_client_id_and_secret', 'Enter Public, Secret keys into the box in right hand', '2021-07-12 22:42:32', '2021-07-12 22:42:32'),
(3435, 1, 'vi', 'plugins/payment/payment', 'secret', 'Secret', '2021-07-12 22:42:32', '2021-07-12 22:42:32'),
(3436, 1, 'vi', 'plugins/payment/payment', 'pay_online_via', 'Thanh toán online qua :name', '2021-07-12 22:42:32', '2021-07-12 22:42:32'),
(3437, 1, 'vi', 'plugins/payment/payment', 'sandbox_mode', 'Chế độ thử nghiệm', '2021-07-12 22:42:32', '2021-07-12 22:42:32'),
(3438, 1, 'vi', 'plugins/payment/payment', 'deactivate_payment_method', 'Huỷ kích hoạt phương thức', '2021-07-12 22:42:32', '2021-07-12 22:42:32'),
(3439, 1, 'vi', 'plugins/payment/payment', 'deactivate_payment_method_description', 'Bạn có chắc chắn muốn huỷ phương thức thành toán này?', '2021-07-12 22:42:32', '2021-07-12 22:42:32'),
(3440, 1, 'vi', 'plugins/payment/payment', 'agree', 'Đồng ý', '2021-07-12 22:42:32', '2021-07-12 22:42:32'),
(3441, 1, 'vi', 'plugins/payment/payment', 'name', 'Thanh toán', '2021-07-12 22:42:32', '2021-07-12 22:42:32'),
(3442, 1, 'vi', 'plugins/payment/payment', 'create', 'Thêm thanh toán mới', '2021-07-12 22:42:32', '2021-07-12 22:42:32'),
(3443, 1, 'vi', 'plugins/payment/payment', 'go_back', 'Trở lại', '2021-07-12 22:42:32', '2021-07-12 22:42:32'),
(3444, 1, 'vi', 'plugins/payment/payment', 'information', 'Thông tin', '2021-07-12 22:42:33', '2021-07-12 22:42:33'),
(3445, 1, 'vi', 'plugins/payment/payment', 'methods.paypal', 'PayPal', '2021-07-12 22:42:33', '2021-07-12 22:42:33'),
(3446, 1, 'vi', 'plugins/payment/payment', 'methods.stripe', 'Stripe', '2021-07-12 22:42:33', '2021-07-12 22:42:33'),
(3447, 1, 'vi', 'plugins/payment/payment', 'methods.cod', 'Thanh toán khi giao hàng (COD)', '2021-07-12 22:42:33', '2021-07-12 22:42:33'),
(3448, 1, 'vi', 'plugins/payment/payment', 'methods.bank_transfer', 'Chuyển khoản qua ngân hàng', '2021-07-12 22:42:33', '2021-07-12 22:42:33'),
(3449, 1, 'vi', 'plugins/payment/payment', 'statuses.pending', 'Chưa hoàn tất', '2021-07-12 22:42:33', '2021-07-12 22:42:33'),
(3450, 1, 'vi', 'plugins/payment/payment', 'statuses.completed', 'Đã hoàn thành', '2021-07-12 22:42:33', '2021-07-12 22:42:33'),
(3451, 1, 'vi', 'plugins/payment/payment', 'statuses.refunding', 'Đang hoàn tiền', '2021-07-12 22:42:33', '2021-07-12 22:42:33'),
(3452, 1, 'vi', 'plugins/payment/payment', 'statuses.refunded', 'Đã hoàn tiền', '2021-07-12 22:42:33', '2021-07-12 22:42:33'),
(3453, 1, 'vi', 'plugins/payment/payment', 'statuses.fraud', 'Gian lận', '2021-07-12 22:42:33', '2021-07-12 22:42:33'),
(3454, 1, 'vi', 'plugins/payment/payment', 'statuses.failed', 'Thất bại', '2021-07-12 22:42:33', '2021-07-12 22:42:33'),
(3455, 1, 'vi', 'plugins/payment/payment', 'payment_methods_instruction', 'Hướng dẫn khách hàng thanh toán trực tiếp. Có thể chọn thanh toán khi giao hàng hoặc chuyển khoản', '2021-07-12 22:42:33', '2021-07-12 22:42:33');
INSERT INTO `translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(3456, 1, 'vi', 'plugins/payment/payment', 'payment_method_description', 'Hướng dẫn thanh toán – (Hiển thị ở trang thông báo mua hàng thành công và trang thanh toán)', '2021-07-12 22:42:33', '2021-07-12 22:42:33'),
(3457, 1, 'vi', 'plugins/payment/payment', 'payment_via_cod', 'Thanh toán khi nhận hàng (COD)', '2021-07-12 22:42:33', '2021-07-12 22:42:33'),
(3458, 1, 'vi', 'plugins/payment/payment', 'payment_via_bank_transfer', 'Chuyển khoản qua ngân hàng', '2021-07-12 22:42:33', '2021-07-12 22:42:33'),
(3459, 1, 'vi', 'plugins/payment/payment', 'payment_pending', 'Thực hiện thành công. Thanh toán của bạn đang được xử lý và sẽ được xác nhận bởi nhân viên.', '2021-07-12 22:42:33', '2021-07-12 22:42:33'),
(3460, 1, 'vi', 'plugins/payment/payment', 'created_at', 'Ngày tạo', '2021-07-12 22:42:33', '2021-07-12 22:42:33'),
(3461, 1, 'vi', 'plugins/payment/payment', 'payment_channel', 'Phương thức thanh toán', '2021-07-12 22:42:33', '2021-07-12 22:42:33'),
(3462, 1, 'vi', 'plugins/payment/payment', 'total', 'Tổng cộng', '2021-07-12 22:42:33', '2021-07-12 22:42:33'),
(3463, 1, 'vi', 'plugins/payment/payment', 'status', 'Trạng thái', '2021-07-12 22:42:33', '2021-07-12 22:42:33'),
(3464, 1, 'vi', 'plugins/payment/payment', 'default_payment_method', 'Phương thức thanh toán mặc định', '2021-07-12 22:42:33', '2021-07-12 22:42:33'),
(3465, 1, 'en', 'plugins/simple-slider/simple-slider', 'create', 'New slider', '2021-07-12 22:42:33', '2021-07-12 22:42:33'),
(3466, 1, 'en', 'plugins/simple-slider/simple-slider', 'edit', 'Edit slider', '2021-07-12 22:42:33', '2021-07-12 22:42:33'),
(3467, 1, 'en', 'plugins/simple-slider/simple-slider', 'menu', 'Simple sliders', '2021-07-12 22:42:33', '2021-07-12 22:42:33'),
(3468, 1, 'en', 'plugins/simple-slider/simple-slider', 'settings.title', 'Simple sliders', '2021-07-12 22:42:33', '2021-07-12 22:42:33'),
(3469, 1, 'en', 'plugins/simple-slider/simple-slider', 'settings.description', 'Settings for Simple sliders', '2021-07-12 22:42:33', '2021-07-12 22:42:33'),
(3470, 1, 'en', 'plugins/simple-slider/simple-slider', 'settings.using_assets', 'Using default assets?', '2021-07-12 22:42:33', '2021-07-12 22:42:33'),
(3471, 1, 'en', 'plugins/simple-slider/simple-slider', 'settings.using_assets_description', 'If using assets option is enabled then below scripts will be auto added to front site.', '2021-07-12 22:42:33', '2021-07-12 22:42:33'),
(3472, 1, 'en', 'plugins/simple-slider/simple-slider', 'add_new', 'Add new', '2021-07-12 22:42:33', '2021-07-12 22:42:33'),
(3473, 1, 'en', 'plugins/simple-slider/simple-slider', 'save_sorting', 'Save sorting', '2021-07-12 22:42:33', '2021-07-12 22:42:33'),
(3474, 1, 'en', 'plugins/simple-slider/simple-slider', 'key', 'Key', '2021-07-12 22:42:33', '2021-07-12 22:42:33'),
(3475, 1, 'en', 'plugins/simple-slider/simple-slider', 'slide_items', 'Slide Items', '2021-07-12 22:42:33', '2021-07-12 22:42:33'),
(3476, 1, 'en', 'plugins/simple-slider/simple-slider', 'update_slide_position_success', 'Updated slide position successfully!', '2021-07-12 22:42:33', '2021-07-12 22:42:33'),
(3477, 1, 'en', 'plugins/simple-slider/simple-slider', 'create_new_slide', 'Create a new slide', '2021-07-12 22:42:33', '2021-07-12 22:42:33'),
(3478, 1, 'en', 'plugins/simple-slider/simple-slider', 'edit_slide', 'Edit slide #:id', '2021-07-12 22:42:33', '2021-07-12 22:42:33'),
(3479, 1, 'en', 'plugins/simple-slider/simple-slider', 'simple_slider_shortcode_name', 'Simple Slider', '2021-07-12 22:42:33', '2021-07-12 22:42:33'),
(3480, 1, 'en', 'plugins/simple-slider/simple-slider', 'simple_slider_shortcode_description', 'Add a simple slider', '2021-07-12 22:42:33', '2021-07-12 22:42:33'),
(3481, 1, 'en', 'plugins/simple-slider/simple-slider', 'select_slider', 'Select a slider', '2021-07-12 22:42:33', '2021-07-12 22:42:33'),
(3482, 1, 'en', 'plugins/social-login/social-login', 'settings.title', 'Social Login settings', '2021-07-12 22:42:33', '2021-07-12 22:42:33'),
(3483, 1, 'en', 'plugins/social-login/social-login', 'settings.description', 'Configure social login options', '2021-07-12 22:42:33', '2021-07-12 22:42:33'),
(3484, 1, 'en', 'plugins/social-login/social-login', 'settings.facebook.title', 'Facebook login settings', '2021-07-12 22:42:33', '2021-07-12 22:42:33'),
(3485, 1, 'en', 'plugins/social-login/social-login', 'settings.facebook.description', 'Enable/disable & configure app credentials for Facebook login', '2021-07-12 22:42:33', '2021-07-12 22:42:33'),
(3486, 1, 'en', 'plugins/social-login/social-login', 'settings.facebook.app_id', 'App ID', '2021-07-12 22:42:33', '2021-07-12 22:42:33'),
(3487, 1, 'en', 'plugins/social-login/social-login', 'settings.facebook.app_secret', 'App Secret', '2021-07-12 22:42:33', '2021-07-12 22:42:33'),
(3488, 1, 'en', 'plugins/social-login/social-login', 'settings.facebook.helper', 'Please go to https://developers.facebook.com to create new app update App ID, App Secret. Callback URL is :callback', '2021-07-12 22:42:33', '2021-07-12 22:42:33'),
(3489, 1, 'en', 'plugins/social-login/social-login', 'settings.google.title', 'Google login settings', '2021-07-12 22:42:33', '2021-07-12 22:42:33'),
(3490, 1, 'en', 'plugins/social-login/social-login', 'settings.google.description', 'Enable/disable & configure app credentials for Google login', '2021-07-12 22:42:33', '2021-07-12 22:42:33'),
(3491, 1, 'en', 'plugins/social-login/social-login', 'settings.google.app_id', 'App ID', '2021-07-12 22:42:33', '2021-07-12 22:42:33'),
(3492, 1, 'en', 'plugins/social-login/social-login', 'settings.google.app_secret', 'App Secret', '2021-07-12 22:42:33', '2021-07-12 22:42:33'),
(3493, 1, 'en', 'plugins/social-login/social-login', 'settings.google.helper', 'Please go to https://console.developers.google.com/apis/dashboard to create new app update App ID, App Secret. Callback URL is :callback', '2021-07-12 22:42:33', '2021-07-12 22:42:33'),
(3494, 1, 'en', 'plugins/social-login/social-login', 'settings.github.title', 'Github login settings', '2021-07-12 22:42:33', '2021-07-12 22:42:33'),
(3495, 1, 'en', 'plugins/social-login/social-login', 'settings.github.description', 'Enable/disable & configure app credentials for Github login', '2021-07-12 22:42:33', '2021-07-12 22:42:33'),
(3496, 1, 'en', 'plugins/social-login/social-login', 'settings.github.app_id', 'App ID', '2021-07-12 22:42:33', '2021-07-12 22:42:33'),
(3497, 1, 'en', 'plugins/social-login/social-login', 'settings.github.app_secret', 'App Secret', '2021-07-12 22:42:33', '2021-07-12 22:42:33'),
(3498, 1, 'en', 'plugins/social-login/social-login', 'settings.github.helper', 'Please go to https://github.com/settings/developers to create new app update App ID, App Secret. Callback URL is :callback', '2021-07-12 22:42:33', '2021-07-12 22:42:33'),
(3499, 1, 'en', 'plugins/social-login/social-login', 'settings.linkedin.title', 'Linkedin login settings', '2021-07-12 22:42:33', '2021-07-12 22:42:33'),
(3500, 1, 'en', 'plugins/social-login/social-login', 'settings.linkedin.description', 'Enable/disable & configure app credentials for Linkedin login', '2021-07-12 22:42:33', '2021-07-12 22:42:33'),
(3501, 1, 'en', 'plugins/social-login/social-login', 'settings.linkedin.app_id', 'App ID', '2021-07-12 22:42:33', '2021-07-12 22:42:33'),
(3502, 1, 'en', 'plugins/social-login/social-login', 'settings.linkedin.app_secret', 'App Secret', '2021-07-12 22:42:33', '2021-07-12 22:42:33'),
(3503, 1, 'en', 'plugins/social-login/social-login', 'settings.linkedin.helper', 'Please go to https://www.linkedin.com/developers/apps/new to create new app update App ID, App Secret. Callback URL is :callback', '2021-07-12 22:42:33', '2021-07-12 22:42:33'),
(3504, 1, 'en', 'plugins/social-login/social-login', 'settings.enable', 'Enable?', '2021-07-12 22:42:33', '2021-07-12 22:42:33'),
(3505, 1, 'en', 'plugins/social-login/social-login', 'menu', 'Social Login', '2021-07-12 22:42:33', '2021-07-12 22:42:33'),
(3506, 1, 'en', 'plugins/testimonials/forms', 'name', 'Customer name', '2021-07-12 22:42:33', '2021-07-12 22:42:33'),
(3507, 1, 'en', 'plugins/testimonials/forms', 'company', 'Company/Working place', '2021-07-12 22:42:33', '2021-07-12 22:42:33'),
(3508, 1, 'en', 'plugins/testimonials/forms', 'avatar', 'Avatar', '2021-07-12 22:42:33', '2021-07-12 22:42:33'),
(3509, 1, 'en', 'plugins/testimonials/forms', 'title', 'Title', '2021-07-12 22:42:33', '2021-07-12 22:42:33'),
(3510, 1, 'en', 'plugins/testimonials/forms', 'content', 'Content', '2021-07-12 22:42:33', '2021-07-12 22:42:33'),
(3511, 1, 'en', 'plugins/testimonials/forms', 'publish', 'Publish', '2021-07-12 22:42:33', '2021-07-12 22:42:33'),
(3512, 1, 'en', 'plugins/testimonials/forms', 'unpublish', 'Unpublish', '2021-07-12 22:42:33', '2021-07-12 22:42:33'),
(3513, 1, 'en', 'plugins/testimonials/testimonials', 'name', 'Testimonials', '2021-07-12 22:42:33', '2021-07-12 22:42:33'),
(3514, 1, 'en', 'plugins/testimonials/testimonials', 'create', 'New testimonials', '2021-07-12 22:42:33', '2021-07-12 22:42:33'),
(3515, 1, 'en', 'plugins/testimonials/testimonials', 'edit', 'Edit testimonials', '2021-07-12 22:42:33', '2021-07-12 22:42:33'),
(3516, 1, 'vi', 'plugins/testimonials/forms', 'name', 'Tên khách hàng', '2021-07-12 22:42:33', '2021-07-12 22:42:33'),
(3517, 1, 'vi', 'plugins/testimonials/forms', 'company', 'Công ty/Nơi làm việc', '2021-07-12 22:42:33', '2021-07-12 22:42:33'),
(3518, 1, 'vi', 'plugins/testimonials/forms', 'avatar', 'Avatar', '2021-07-12 22:42:33', '2021-07-12 22:42:33'),
(3519, 1, 'vi', 'plugins/testimonials/forms', 'title', 'Tiêu đề', '2021-07-12 22:42:33', '2021-07-12 22:42:33'),
(3520, 1, 'vi', 'plugins/testimonials/forms', 'content', 'Nội dung', '2021-07-12 22:42:33', '2021-07-12 22:42:33'),
(3521, 1, 'vi', 'plugins/testimonials/forms', 'publish', 'Xuất bản', '2021-07-12 22:42:33', '2021-07-12 22:42:33'),
(3522, 1, 'vi', 'plugins/testimonials/forms', 'unpublish', 'Không xuất bản', '2021-07-12 22:42:33', '2021-07-12 22:42:33'),
(3523, 1, 'vi', 'plugins/testimonials/testimonials', 'name', 'Nhận xét khách hàng', '2021-07-12 22:42:33', '2021-07-12 22:42:33'),
(3524, 1, 'vi', 'plugins/testimonials/testimonials', 'create', 'Tạo mới', '2021-07-12 22:42:33', '2021-07-12 22:42:33'),
(3525, 1, 'vi', 'plugins/testimonials/testimonials', 'edit', 'Sửa nhận xét', '2021-07-12 22:42:33', '2021-07-12 22:42:33'),
(3526, 1, 'en', 'plugins/translation/translation', 'translations', 'Translations', '2021-07-12 22:42:33', '2021-07-12 22:42:33'),
(3527, 1, 'en', 'plugins/translation/translation', 'translations_description', 'Translate all words in system.', '2021-07-12 22:42:33', '2021-07-12 22:42:33'),
(3528, 1, 'en', 'plugins/translation/translation', 'export_warning', 'Warning, translations are not visible until they are exported back to the resources/lang file, using \'php artisan cms:translations:export\' command or publish button.', '2021-07-12 22:42:33', '2021-07-12 22:42:33'),
(3529, 1, 'en', 'plugins/translation/translation', 'import_done', 'Done importing, processed :counter items! Reload this page to refresh the groups!', '2021-07-12 22:42:33', '2021-07-12 22:42:33'),
(3530, 1, 'en', 'plugins/translation/translation', 'translation_manager', 'Translations Manager', '2021-07-12 22:42:33', '2021-07-12 22:42:33'),
(3531, 1, 'en', 'plugins/translation/translation', 'done_publishing', 'Done publishing the translations for group', '2021-07-12 22:42:33', '2021-07-12 22:42:33'),
(3532, 1, 'en', 'plugins/translation/translation', 'append_translation', 'Append new translations', '2021-07-12 22:42:33', '2021-07-12 22:42:33'),
(3533, 1, 'en', 'plugins/translation/translation', 'replace_translation', 'Replace existing translations', '2021-07-12 22:42:33', '2021-07-12 22:42:33'),
(3534, 1, 'en', 'plugins/translation/translation', 'import_group', 'Import group', '2021-07-12 22:42:33', '2021-07-12 22:42:33'),
(3535, 1, 'en', 'plugins/translation/translation', 'confirm_publish_group', 'Are you sure you want to publish the translations group \":group\"? This will overwrite existing language files.', '2021-07-12 22:42:33', '2021-07-12 22:42:33'),
(3536, 1, 'en', 'plugins/translation/translation', 'publish_translations', 'Publish translations', '2021-07-12 22:42:33', '2021-07-12 22:42:33'),
(3537, 1, 'en', 'plugins/translation/translation', 'back', 'Back', '2021-07-12 22:42:33', '2021-07-12 22:42:33'),
(3538, 1, 'en', 'plugins/translation/translation', 'edit_title', 'Enter translation', '2021-07-12 22:42:33', '2021-07-12 22:42:33'),
(3539, 1, 'en', 'plugins/translation/translation', 'choose_group_msg', 'Choose a group to display the group translations. If no groups are visible, make sure you have imported the translations.', '2021-07-12 22:42:33', '2021-07-12 22:42:33'),
(3540, 1, 'en', 'plugins/translation/translation', 'choose_a_group', 'Choose a group', '2021-07-12 22:42:33', '2021-07-12 22:42:33'),
(3541, 1, 'en', 'plugins/translation/translation', 'locales', 'Locales', '2021-07-12 22:42:33', '2021-07-12 22:42:33'),
(3542, 1, 'en', 'plugins/translation/translation', 'theme-translations', 'Theme translations', '2021-07-12 22:42:33', '2021-07-12 22:42:33'),
(3543, 1, 'en', 'plugins/translation/translation', 'admin-translations', 'Other translations', '2021-07-12 22:42:33', '2021-07-12 22:42:33'),
(3544, 1, 'en', 'plugins/translation/translation', 'translate_from', 'Translate from', '2021-07-12 22:42:33', '2021-07-12 22:42:33'),
(3545, 1, 'en', 'plugins/translation/translation', 'to', 'to', '2021-07-12 22:42:33', '2021-07-12 22:42:33'),
(3546, 1, 'en', 'plugins/translation/translation', 'no_other_languages', 'No other language to translate!', '2021-07-12 22:42:33', '2021-07-12 22:42:33'),
(3547, 1, 'en', 'plugins/translation/translation', 'edit', 'Edit', '2021-07-12 22:42:33', '2021-07-12 22:42:33'),
(3548, 1, 'en', 'plugins/translation/translation', 'locale', 'Locale', '2021-07-12 22:42:33', '2021-07-12 22:42:33'),
(3549, 1, 'en', 'plugins/translation/translation', 'locale_placeholder', 'Ex: en', '2021-07-12 22:42:33', '2021-07-12 22:42:33'),
(3550, 1, 'en', 'plugins/translation/translation', 'name', 'Name', '2021-07-12 22:42:33', '2021-07-12 22:42:33'),
(3551, 1, 'en', 'plugins/translation/translation', 'default_locale', 'Default locale?', '2021-07-12 22:42:33', '2021-07-12 22:42:33'),
(3552, 1, 'en', 'plugins/translation/translation', 'actions', 'Actions', '2021-07-12 22:42:33', '2021-07-12 22:42:33'),
(3553, 1, 'en', 'plugins/translation/translation', 'choose_language', 'Choose language', '2021-07-12 22:42:33', '2021-07-12 22:42:33'),
(3554, 1, 'en', 'plugins/translation/translation', 'add_new_language', 'Add new language', '2021-07-12 22:42:33', '2021-07-12 22:42:33'),
(3555, 1, 'en', 'plugins/translation/translation', 'select_language', 'Select language', '2021-07-12 22:42:33', '2021-07-12 22:42:33'),
(3556, 1, 'en', 'plugins/translation/translation', 'flag', 'Flag', '2021-07-12 22:42:33', '2021-07-12 22:42:33'),
(3557, 1, 'en', 'plugins/translation/translation', 'folder_is_not_writeable', 'Cannot write files! Folder /resources/lang is not writable. Please chmod to make it writable!', '2021-07-12 22:42:33', '2021-07-12 22:42:33'),
(3558, 1, 'en', 'plugins/translation/translation', 'delete', 'Delete', '2021-07-12 22:42:33', '2021-07-12 22:42:33'),
(3559, 1, 'vi', 'auth', 'failed', 'Không tìm thấy thông tin đăng nhập hợp lệ.', '2021-07-12 22:42:33', '2021-07-12 22:42:33'),
(3560, 1, 'vi', 'auth', 'throttle', 'Đăng nhập không đúng quá nhiều lần. Vui lòng thử lại sau :seconds giây.', '2021-07-12 22:42:33', '2021-07-12 22:42:33'),
(3561, 1, 'vi', 'auth', 'password', 'Mật khẩu không chính xác', '2021-07-12 22:42:33', '2021-07-12 22:42:33'),
(3562, 1, 'vi', 'pagination', 'previous', '&laquo; Trước', '2021-07-12 22:42:33', '2021-07-12 22:42:33'),
(3563, 1, 'vi', 'pagination', 'next', 'Sau &raquo;', '2021-07-12 22:42:33', '2021-07-12 22:42:33'),
(3564, 1, 'vi', 'passwords', 'reset', 'Mật khẩu đã được cập nhật!', '2021-07-12 22:42:33', '2021-07-12 22:42:33'),
(3565, 1, 'vi', 'passwords', 'sent', 'Chúng tôi đã gửi cho bạn đường dẫn thay đổi mật khẩu!', '2021-07-12 22:42:33', '2021-07-12 22:42:33'),
(3566, 1, 'vi', 'passwords', 'token', 'Mã xác nhận mật khẩu không hợp lệ.', '2021-07-12 22:42:33', '2021-07-12 22:42:33'),
(3567, 1, 'vi', 'passwords', 'user', 'Không tìm thấy thành viên với địa chỉ email này.', '2021-07-12 22:42:33', '2021-07-12 22:42:33'),
(3568, 1, 'vi', 'validation', 'accepted', 'Trường :attribute phải được chấp nhận.', '2021-07-12 22:42:33', '2021-07-12 22:42:33'),
(3569, 1, 'vi', 'validation', 'active_url', 'Trường :attribute không phải là một URL hợp lệ.', '2021-07-12 22:42:33', '2021-07-12 22:42:33'),
(3570, 1, 'vi', 'validation', 'after', 'Trường :attribute phải là một ngày sau ngày :date.', '2021-07-12 22:42:33', '2021-07-12 22:42:33'),
(3571, 1, 'vi', 'validation', 'after_or_equal', 'Trường :attribute phải là thời gian bắt đầu sau hoặc đúng bằng :date.', '2021-07-12 22:42:33', '2021-07-12 22:42:33'),
(3572, 1, 'vi', 'validation', 'alpha', 'Trường :attribute chỉ có thể chứa các chữ cái.', '2021-07-12 22:42:33', '2021-07-12 22:42:33'),
(3573, 1, 'vi', 'validation', 'alpha_dash', 'Trường :attribute chỉ có thể chứa chữ cái, số và dấu gạch ngang.', '2021-07-12 22:42:33', '2021-07-12 22:42:33'),
(3574, 1, 'vi', 'validation', 'alpha_num', 'Trường :attribute chỉ có thể chứa chữ cái và số.', '2021-07-12 22:42:33', '2021-07-12 22:42:33'),
(3575, 1, 'vi', 'validation', 'array', 'Trường :attribute phải là dạng mảng.', '2021-07-12 22:42:33', '2021-07-12 22:42:33'),
(3576, 1, 'vi', 'validation', 'before', 'Trường :attribute phải là một ngày trước ngày :date.', '2021-07-12 22:42:33', '2021-07-12 22:42:33'),
(3577, 1, 'vi', 'validation', 'before_or_equal', 'Trường :attribute phải là thời gian bắt đầu trước hoặc đúng bằng :date.', '2021-07-12 22:42:33', '2021-07-12 22:42:33'),
(3578, 1, 'vi', 'validation', 'between.array', 'Trường :attribute phải có từ :min - :max phần tử.', '2021-07-12 22:42:33', '2021-07-12 22:42:33'),
(3579, 1, 'vi', 'validation', 'between.file', 'Dung lượng tập tin trong trường :attribute phải từ :min - :max kB.', '2021-07-12 22:42:33', '2021-07-12 22:42:33'),
(3580, 1, 'vi', 'validation', 'between.numeric', 'Trường :attribute phải nằm trong khoảng :min - :max.', '2021-07-12 22:42:33', '2021-07-12 22:42:33'),
(3581, 1, 'vi', 'validation', 'between.string', 'Trường :attribute phải từ :min - :max kí tự.', '2021-07-12 22:42:33', '2021-07-12 22:42:33'),
(3582, 1, 'vi', 'validation', 'boolean', 'Trường :attribute phải là true hoặc false.', '2021-07-12 22:42:33', '2021-07-12 22:42:33'),
(3583, 1, 'vi', 'validation', 'confirmed', 'Giá trị xác nhận trong trường :attribute không khớp.', '2021-07-12 22:42:33', '2021-07-12 22:42:33'),
(3584, 1, 'vi', 'validation', 'date', 'Trường :attribute không phải là định dạng của ngày-tháng.', '2021-07-12 22:42:33', '2021-07-12 22:42:33'),
(3585, 1, 'vi', 'validation', 'date_equals', 'Trường :attribute phải là một ngày bằng với :date.', '2021-07-12 22:42:33', '2021-07-12 22:42:33'),
(3586, 1, 'vi', 'validation', 'date_format', 'Trường :attribute không giống với định dạng :format.', '2021-07-12 22:42:33', '2021-07-12 22:42:33'),
(3587, 1, 'vi', 'validation', 'different', 'Trường :attribute và :other phải khác nhau.', '2021-07-12 22:42:33', '2021-07-12 22:42:33'),
(3588, 1, 'vi', 'validation', 'digits', 'Độ dài của trường :attribute phải gồm :digits chữ số.', '2021-07-12 22:42:33', '2021-07-12 22:42:33'),
(3589, 1, 'vi', 'validation', 'digits_between', 'Độ dài của trường :attribute phải nằm trong khoảng :min and :max chữ số.', '2021-07-12 22:42:33', '2021-07-12 22:42:33'),
(3590, 1, 'vi', 'validation', 'dimensions', 'Trường :attribute có kích thước không hợp lệ.', '2021-07-12 22:42:33', '2021-07-12 22:42:33'),
(3591, 1, 'vi', 'validation', 'distinct', 'Trường :attribute có giá trị trùng lặp.', '2021-07-12 22:42:33', '2021-07-12 22:42:33'),
(3592, 1, 'vi', 'validation', 'email', 'Trường :attribute phải là một địa chỉ email hợp lệ.', '2021-07-12 22:42:33', '2021-07-12 22:42:33'),
(3593, 1, 'vi', 'validation', 'ends_with', 'Trường :attribute phải kết thúc bằng một trong những giá trị sau: :values', '2021-07-12 22:42:33', '2021-07-12 22:42:33'),
(3594, 1, 'vi', 'validation', 'exists', 'Giá trị đã chọn trong trường :attribute không hợp lệ.', '2021-07-12 22:42:33', '2021-07-12 22:42:33'),
(3595, 1, 'vi', 'validation', 'file', 'Trường :attribute phải là một tệp tin.', '2021-07-12 22:42:33', '2021-07-12 22:42:33'),
(3596, 1, 'vi', 'validation', 'filled', 'Trường :attribute không được bỏ trống.', '2021-07-12 22:42:33', '2021-07-12 22:42:33'),
(3597, 1, 'vi', 'validation', 'gt.array', 'Mảng :attribute phải có nhiều hơn :value phần tử.', '2021-07-12 22:42:33', '2021-07-12 22:42:33'),
(3598, 1, 'vi', 'validation', 'gt.file', 'Dung lượng trường :attribute phải lớn hơn :value kilobytes.', '2021-07-12 22:42:33', '2021-07-12 22:42:33'),
(3599, 1, 'vi', 'validation', 'gt.numeric', 'Giá trị trường :attribute phải lớn hơn :value.', '2021-07-12 22:42:33', '2021-07-12 22:42:33'),
(3600, 1, 'vi', 'validation', 'gt.string', 'Độ dài trường :attribute phải nhiều hơn :value kí tự.', '2021-07-12 22:42:33', '2021-07-12 22:42:33'),
(3601, 1, 'vi', 'validation', 'gte.array', 'Mảng :attribute phải có ít nhất :value phần tử.', '2021-07-12 22:42:33', '2021-07-12 22:42:33'),
(3602, 1, 'vi', 'validation', 'gte.file', 'Dung lượng trường :attribute phải lớn hơn hoặc bằng :value kilobytes.', '2021-07-12 22:42:33', '2021-07-12 22:42:33'),
(3603, 1, 'vi', 'validation', 'gte.numeric', 'Giá trị trường :attribute phải lớn hơn hoặc bằng :value.', '2021-07-12 22:42:33', '2021-07-12 22:42:33'),
(3604, 1, 'vi', 'validation', 'gte.string', 'Độ dài trường :attribute phải lớn hơn hoặc bằng :value kí tự.', '2021-07-12 22:42:33', '2021-07-12 22:42:33'),
(3605, 1, 'vi', 'validation', 'image', 'Trường :attribute phải là định dạng hình ảnh.', '2021-07-12 22:42:33', '2021-07-12 22:42:33'),
(3606, 1, 'vi', 'validation', 'in', 'Giá trị đã chọn trong trường :attribute không hợp lệ.', '2021-07-12 22:42:33', '2021-07-12 22:42:33'),
(3607, 1, 'vi', 'validation', 'in_array', 'Trường :attribute phải thuộc tập cho phép: :other.', '2021-07-12 22:42:33', '2021-07-12 22:42:33'),
(3608, 1, 'vi', 'validation', 'integer', 'Trường :attribute phải là một số nguyên.', '2021-07-12 22:42:33', '2021-07-12 22:42:33'),
(3609, 1, 'vi', 'validation', 'ip', 'Trường :attribute phải là một địa chỉ IP.', '2021-07-12 22:42:33', '2021-07-12 22:42:33'),
(3610, 1, 'vi', 'validation', 'ipv4', 'Trường :attribute phải là một địa chỉ IPv4.', '2021-07-12 22:42:33', '2021-07-12 22:42:33'),
(3611, 1, 'vi', 'validation', 'ipv6', 'Trường :attribute phải là một địa chỉ IPv6.', '2021-07-12 22:42:33', '2021-07-12 22:42:33'),
(3612, 1, 'vi', 'validation', 'json', 'Trường :attribute phải là một chuỗi JSON.', '2021-07-12 22:42:33', '2021-07-12 22:42:33'),
(3613, 1, 'vi', 'validation', 'lt.array', 'Mảng :attribute phải có ít hơn :value phần tử.', '2021-07-12 22:42:33', '2021-07-12 22:42:33'),
(3614, 1, 'vi', 'validation', 'lt.file', 'Dung lượng trường :attribute phải nhỏ hơn :value kilobytes.', '2021-07-12 22:42:33', '2021-07-12 22:42:33'),
(3615, 1, 'vi', 'validation', 'lt.numeric', 'Giá trị trường :attribute phải nhỏ hơn :value.', '2021-07-12 22:42:33', '2021-07-12 22:42:33'),
(3616, 1, 'vi', 'validation', 'lt.string', 'Độ dài trường :attribute phải nhỏ hơn :value kí tự.', '2021-07-12 22:42:33', '2021-07-12 22:42:33'),
(3617, 1, 'vi', 'validation', 'lte.array', 'Mảng :attribute không được có nhiều hơn :value phần tử.', '2021-07-12 22:42:33', '2021-07-12 22:42:33'),
(3618, 1, 'vi', 'validation', 'lte.file', 'Dung lượng trường :attribute phải nhỏ hơn hoặc bằng :value kilobytes.', '2021-07-12 22:42:33', '2021-07-12 22:42:33'),
(3619, 1, 'vi', 'validation', 'lte.numeric', 'Giá trị trường :attribute phải nhỏ hơn hoặc bằng :value.', '2021-07-12 22:42:33', '2021-07-12 22:42:33'),
(3620, 1, 'vi', 'validation', 'lte.string', 'Độ dài trường :attribute phải nhỏ hơn hoặc bằng :value kí tự.', '2021-07-12 22:42:34', '2021-07-12 22:42:34'),
(3621, 1, 'vi', 'validation', 'max.array', 'Trường :attribute không được lớn hơn :max phần tử.', '2021-07-12 22:42:34', '2021-07-12 22:42:34'),
(3622, 1, 'vi', 'validation', 'max.file', 'Dung lượng tập tin trong trường :attribute không được lớn hơn :max kB.', '2021-07-12 22:42:34', '2021-07-12 22:42:34'),
(3623, 1, 'vi', 'validation', 'max.numeric', 'Trường :attribute không được lớn hơn :max.', '2021-07-12 22:42:34', '2021-07-12 22:42:34'),
(3624, 1, 'vi', 'validation', 'max.string', 'Trường :attribute không được lớn hơn :max kí tự.', '2021-07-12 22:42:34', '2021-07-12 22:42:34'),
(3625, 1, 'vi', 'validation', 'mimes', 'Trường :attribute phải là một tập tin có định dạng: :values.', '2021-07-12 22:42:34', '2021-07-12 22:42:34'),
(3626, 1, 'vi', 'validation', 'mimetypes', 'Trường :attribute phải là một tập tin có định dạng: :values.', '2021-07-12 22:42:34', '2021-07-12 22:42:34'),
(3627, 1, 'vi', 'validation', 'min.array', 'Trường :attribute phải có tối thiểu :min phần tử.', '2021-07-12 22:42:34', '2021-07-12 22:42:34'),
(3628, 1, 'vi', 'validation', 'min.file', 'Dung lượng tập tin trong trường :attribute phải tối thiểu :min kB.', '2021-07-12 22:42:34', '2021-07-12 22:42:34'),
(3629, 1, 'vi', 'validation', 'min.numeric', 'Trường :attribute phải tối thiểu là :min.', '2021-07-12 22:42:34', '2021-07-12 22:42:34'),
(3630, 1, 'vi', 'validation', 'min.string', 'Trường :attribute phải có tối thiểu :min kí tự.', '2021-07-12 22:42:34', '2021-07-12 22:42:34'),
(3631, 1, 'vi', 'validation', 'multiple_of', 'Trường :attribute phải là bội số của :value', '2021-07-12 22:42:34', '2021-07-12 22:42:34'),
(3632, 1, 'vi', 'validation', 'not_in', 'Giá trị đã chọn trong trường :attribute không hợp lệ.', '2021-07-12 22:42:34', '2021-07-12 22:42:34'),
(3633, 1, 'vi', 'validation', 'not_regex', 'Trường :attribute có định dạng không hợp lệ.', '2021-07-12 22:42:34', '2021-07-12 22:42:34'),
(3634, 1, 'vi', 'validation', 'numeric', 'Trường :attribute phải là một số.', '2021-07-12 22:42:34', '2021-07-12 22:42:34'),
(3635, 1, 'vi', 'validation', 'password', 'Mật khẩu không đúng.', '2021-07-12 22:42:34', '2021-07-12 22:42:34'),
(3636, 1, 'vi', 'validation', 'present', 'Trường :attribute phải được cung cấp.', '2021-07-12 22:42:34', '2021-07-12 22:42:34'),
(3637, 1, 'vi', 'validation', 'prohibited', 'Trường :attribute bị cấm.', '2021-07-12 22:42:34', '2021-07-12 22:42:34'),
(3638, 1, 'vi', 'validation', 'prohibited_if', 'Trường :attribute bị cấm khi :other là :value.', '2021-07-12 22:42:34', '2021-07-12 22:42:34'),
(3639, 1, 'vi', 'validation', 'prohibited_unless', 'Trường :attribute bị cấm trừ khi :other là một trong :values.', '2021-07-12 22:42:34', '2021-07-12 22:42:34'),
(3640, 1, 'vi', 'validation', 'regex', 'Trường :attribute có định dạng không hợp lệ.', '2021-07-12 22:42:34', '2021-07-12 22:42:34'),
(3641, 1, 'vi', 'validation', 'required', 'Trường :attribute không được bỏ trống.', '2021-07-12 22:42:34', '2021-07-12 22:42:34'),
(3642, 1, 'vi', 'validation', 'required_if', 'Trường :attribute không được bỏ trống khi trường :other là :value.', '2021-07-12 22:42:34', '2021-07-12 22:42:34'),
(3643, 1, 'vi', 'validation', 'required_unless', 'Trường :attribute không được bỏ trống trừ khi :other là :values.', '2021-07-12 22:42:34', '2021-07-12 22:42:34'),
(3644, 1, 'vi', 'validation', 'required_with', 'Trường :attribute không được bỏ trống khi một trong :values có giá trị.', '2021-07-12 22:42:34', '2021-07-12 22:42:34'),
(3645, 1, 'vi', 'validation', 'required_with_all', 'Trường :attribute không được bỏ trống khi tất cả :values có giá trị.', '2021-07-12 22:42:34', '2021-07-12 22:42:34'),
(3646, 1, 'vi', 'validation', 'required_without', 'Trường :attribute không được bỏ trống khi một trong :values không có giá trị.', '2021-07-12 22:42:34', '2021-07-12 22:42:34'),
(3647, 1, 'vi', 'validation', 'required_without_all', 'Trường :attribute không được bỏ trống khi tất cả :values không có giá trị.', '2021-07-12 22:42:34', '2021-07-12 22:42:34'),
(3648, 1, 'vi', 'validation', 'same', 'Trường :attribute và :other phải giống nhau.', '2021-07-12 22:42:34', '2021-07-12 22:42:34'),
(3649, 1, 'vi', 'validation', 'size.array', 'Trường :attribute phải chứa :size phần tử.', '2021-07-12 22:42:34', '2021-07-12 22:42:34'),
(3650, 1, 'vi', 'validation', 'size.file', 'Dung lượng tập tin trong trường :attribute phải bằng :size kB.', '2021-07-12 22:42:34', '2021-07-12 22:42:34'),
(3651, 1, 'vi', 'validation', 'size.numeric', 'Trường :attribute phải bằng :size.', '2021-07-12 22:42:34', '2021-07-12 22:42:34'),
(3652, 1, 'vi', 'validation', 'size.string', 'Trường :attribute phải chứa :size kí tự.', '2021-07-12 22:42:34', '2021-07-12 22:42:34'),
(3653, 1, 'vi', 'validation', 'starts_with', 'Trường :attribute phải được bắt đầu bằng một trong những giá trị sau: :values', '2021-07-12 22:42:34', '2021-07-12 22:42:34'),
(3654, 1, 'vi', 'validation', 'string', 'Trường :attribute phải là một chuỗi kí tự.', '2021-07-12 22:42:34', '2021-07-12 22:42:34'),
(3655, 1, 'vi', 'validation', 'timezone', 'Trường :attribute phải là một múi giờ hợp lệ.', '2021-07-12 22:42:34', '2021-07-12 22:42:34'),
(3656, 1, 'vi', 'validation', 'unique', 'Trường :attribute đã có trong cơ sở dữ liệu.', '2021-07-12 22:42:34', '2021-07-12 22:42:34'),
(3657, 1, 'vi', 'validation', 'uploaded', 'Trường :attribute tải lên thất bại.', '2021-07-12 22:42:34', '2021-07-12 22:42:34'),
(3658, 1, 'vi', 'validation', 'url', 'Trường :attribute không giống với định dạng một URL.', '2021-07-12 22:42:34', '2021-07-12 22:42:34'),
(3659, 1, 'vi', 'validation', 'uuid', 'Trường :attribute phải là một chuỗi UUID hợp lệ.', '2021-07-12 22:42:34', '2021-07-12 22:42:34'),
(3660, 1, 'vi', 'validation', 'custom.attribute-name.rule-name', 'custom-message', '2021-07-12 22:42:34', '2021-07-12 22:42:34');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar_id` int(10) UNSIGNED DEFAULT NULL,
  `super_user` tinyint(1) NOT NULL DEFAULT '0',
  `manage_supers` tinyint(1) NOT NULL DEFAULT '0',
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `last_login` timestamp NULL DEFAULT NULL,
  `stripe_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pm_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pm_last_four` varchar(4) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trial_ends_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `first_name`, `last_name`, `username`, `avatar_id`, `super_user`, `manage_supers`, `permissions`, `last_login`, `stripe_id`, `pm_type`, `pm_last_four`, `trial_ends_at`) VALUES
(1, 'admin@botble.com', NULL, '$2y$10$VhmPDikigsM/PDfb6glDSesHk0/jHRh981DT4ZPTTJPlp4RbDWYjy', NULL, '2021-07-12 22:41:42', '2021-07-12 22:41:42', 'System', 'Admin', 'botble', NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_meta`
--

CREATE TABLE `user_meta` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `widgets`
--

CREATE TABLE `widgets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `widget_id` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sidebar_id` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `theme` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `data` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `widgets`
--

INSERT INTO `widgets` (`id`, `widget_id`, `sidebar_id`, `theme`, `position`, `data`, `created_at`, `updated_at`) VALUES
(1, 'CustomMenuWidget', 'footer_sidebar', 'martfury', 1, '{\"id\":\"CustomMenuWidget\",\"name\":\"Quick links\",\"menu_id\":\"quick-links\"}', '2021-07-12 22:41:45', '2021-07-12 22:41:45'),
(2, 'CustomMenuWidget', 'footer_sidebar', 'martfury', 2, '{\"id\":\"CustomMenuWidget\",\"name\":\"Company\",\"menu_id\":\"company\"}', '2021-07-12 22:41:45', '2021-07-12 22:41:45'),
(3, 'CustomMenuWidget', 'footer_sidebar', 'martfury', 3, '{\"id\":\"CustomMenuWidget\",\"name\":\"Business\",\"menu_id\":\"business\"}', '2021-07-12 22:41:45', '2021-07-12 22:41:45'),
(4, 'BlogSearchWidget', 'primary_sidebar', 'martfury', 1, '{\"id\":\"BlogSearchWidget\",\"name\":\"Search\"}', '2021-07-12 22:41:45', '2021-07-12 22:41:45'),
(5, 'BlogCategoriesWidget', 'primary_sidebar', 'martfury', 2, '{\"id\":\"BlogCategoriesWidget\",\"name\":\"Categories\"}', '2021-07-12 22:41:45', '2021-07-12 22:41:45'),
(6, 'RecentPostsWidget', 'primary_sidebar', 'martfury', 3, '{\"id\":\"RecentPostsWidget\",\"name\":\"Recent Posts\"}', '2021-07-12 22:41:45', '2021-07-12 22:41:45'),
(7, 'TagsWidget', 'primary_sidebar', 'martfury', 4, '{\"id\":\"TagsWidget\",\"name\":\"Popular Tags\"}', '2021-07-12 22:41:45', '2021-07-12 22:41:45'),
(8, 'ProductCategoriesWidget', 'bottom_footer_sidebar', 'martfury', 1, '{\"id\":\"ProductCategoriesWidget\",\"name\":\"Consumer Electric\",\"categories\":[18,2,3,4,5,6,7]}', '2021-07-12 22:41:45', '2021-07-12 22:41:45'),
(9, 'ProductCategoriesWidget', 'bottom_footer_sidebar', 'martfury', 2, '{\"id\":\"ProductCategoriesWidget\",\"name\":\"Clothing & Apparel\",\"categories\":[8,9,10,11,12]}', '2021-07-12 22:41:45', '2021-07-12 22:41:45'),
(10, 'ProductCategoriesWidget', 'bottom_footer_sidebar', 'martfury', 3, '{\"id\":\"ProductCategoriesWidget\",\"name\":\"Home, Garden & Kitchen\",\"categories\":[13,14,15,16,17]}', '2021-07-12 22:41:45', '2021-07-12 22:41:45'),
(11, 'ProductCategoriesWidget', 'bottom_footer_sidebar', 'martfury', 4, '{\"id\":\"ProductCategoriesWidget\",\"name\":\"Health & Beauty\",\"categories\":[20,21,22,23,24]}', '2021-07-12 22:41:45', '2021-07-12 22:41:45'),
(12, 'ProductCategoriesWidget', 'bottom_footer_sidebar', 'martfury', 5, '{\"id\":\"ProductCategoriesWidget\",\"name\":\"Computer & Technologies\",\"categories\":[25,26,27,28,29,19]}', '2021-07-12 22:41:45', '2021-07-12 22:41:45');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activations`
--
ALTER TABLE `activations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `activations_user_id_index` (`user_id`);

--
-- Indexes for table `ads`
--
ALTER TABLE `ads`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ads_key_unique` (`key`);

--
-- Indexes for table `audit_histories`
--
ALTER TABLE `audit_histories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `audit_histories_user_id_index` (`user_id`),
  ADD KEY `audit_histories_module_index` (`module`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_replies`
--
ALTER TABLE `contact_replies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dashboard_widgets`
--
ALTER TABLE `dashboard_widgets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dashboard_widget_settings`
--
ALTER TABLE `dashboard_widget_settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dashboard_widget_settings_user_id_index` (`user_id`),
  ADD KEY `dashboard_widget_settings_widget_id_index` (`widget_id`);

--
-- Indexes for table `ec_brands`
--
ALTER TABLE `ec_brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_cart`
--
ALTER TABLE `ec_cart`
  ADD PRIMARY KEY (`identifier`,`instance`);

--
-- Indexes for table `ec_currencies`
--
ALTER TABLE `ec_currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_customers`
--
ALTER TABLE `ec_customers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ec_customers_email_unique` (`email`);

--
-- Indexes for table `ec_customer_addresses`
--
ALTER TABLE `ec_customer_addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_customer_password_resets`
--
ALTER TABLE `ec_customer_password_resets`
  ADD KEY `ec_customer_password_resets_email_index` (`email`),
  ADD KEY `ec_customer_password_resets_token_index` (`token`);

--
-- Indexes for table `ec_discounts`
--
ALTER TABLE `ec_discounts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ec_discounts_code_unique` (`code`);

--
-- Indexes for table `ec_discount_customers`
--
ALTER TABLE `ec_discount_customers`
  ADD PRIMARY KEY (`discount_id`,`customer_id`);

--
-- Indexes for table `ec_discount_products`
--
ALTER TABLE `ec_discount_products`
  ADD PRIMARY KEY (`discount_id`,`product_id`);

--
-- Indexes for table `ec_discount_product_collections`
--
ALTER TABLE `ec_discount_product_collections`
  ADD PRIMARY KEY (`discount_id`,`product_collection_id`);

--
-- Indexes for table `ec_flash_sales`
--
ALTER TABLE `ec_flash_sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_grouped_products`
--
ALTER TABLE `ec_grouped_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_orders`
--
ALTER TABLE `ec_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_order_addresses`
--
ALTER TABLE `ec_order_addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_order_histories`
--
ALTER TABLE `ec_order_histories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_order_product`
--
ALTER TABLE `ec_order_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_products`
--
ALTER TABLE `ec_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_product_attributes`
--
ALTER TABLE `ec_product_attributes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_product_attribute_sets`
--
ALTER TABLE `ec_product_attribute_sets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_product_categories`
--
ALTER TABLE `ec_product_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_product_category_product`
--
ALTER TABLE `ec_product_category_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ec_product_category_product_category_id_index` (`category_id`),
  ADD KEY `ec_product_category_product_product_id_index` (`product_id`);

--
-- Indexes for table `ec_product_collections`
--
ALTER TABLE `ec_product_collections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_product_collection_products`
--
ALTER TABLE `ec_product_collection_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ec_product_collection_products_product_collection_id_index` (`product_collection_id`),
  ADD KEY `ec_product_collection_products_product_id_index` (`product_id`);

--
-- Indexes for table `ec_product_cross_sale_relations`
--
ALTER TABLE `ec_product_cross_sale_relations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ec_product_cross_sale_relations_from_product_id_index` (`from_product_id`),
  ADD KEY `ec_product_cross_sale_relations_to_product_id_index` (`to_product_id`);

--
-- Indexes for table `ec_product_labels`
--
ALTER TABLE `ec_product_labels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_product_label_products`
--
ALTER TABLE `ec_product_label_products`
  ADD PRIMARY KEY (`product_label_id`,`product_id`),
  ADD KEY `ec_product_label_products_product_label_id_index` (`product_label_id`),
  ADD KEY `ec_product_label_products_product_id_index` (`product_id`);

--
-- Indexes for table `ec_product_related_relations`
--
ALTER TABLE `ec_product_related_relations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ec_product_related_relations_from_product_id_index` (`from_product_id`),
  ADD KEY `ec_product_related_relations_to_product_id_index` (`to_product_id`);

--
-- Indexes for table `ec_product_tags`
--
ALTER TABLE `ec_product_tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_product_tag_product`
--
ALTER TABLE `ec_product_tag_product`
  ADD PRIMARY KEY (`product_id`,`tag_id`),
  ADD KEY `ec_product_tag_product_product_id_index` (`product_id`),
  ADD KEY `ec_product_tag_product_tag_id_index` (`tag_id`);

--
-- Indexes for table `ec_product_up_sale_relations`
--
ALTER TABLE `ec_product_up_sale_relations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ec_product_up_sale_relations_from_product_id_index` (`from_product_id`),
  ADD KEY `ec_product_up_sale_relations_to_product_id_index` (`to_product_id`);

--
-- Indexes for table `ec_product_variations`
--
ALTER TABLE `ec_product_variations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_product_variation_items`
--
ALTER TABLE `ec_product_variation_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_product_with_attribute`
--
ALTER TABLE `ec_product_with_attribute`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_product_with_attribute_set`
--
ALTER TABLE `ec_product_with_attribute_set`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_reviews`
--
ALTER TABLE `ec_reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_shipments`
--
ALTER TABLE `ec_shipments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_shipment_histories`
--
ALTER TABLE `ec_shipment_histories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_shipping`
--
ALTER TABLE `ec_shipping`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_shipping_rules`
--
ALTER TABLE `ec_shipping_rules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_shipping_rule_items`
--
ALTER TABLE `ec_shipping_rule_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_store_locators`
--
ALTER TABLE `ec_store_locators`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_taxes`
--
ALTER TABLE `ec_taxes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_wish_lists`
--
ALTER TABLE `ec_wish_lists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faq_categories`
--
ALTER TABLE `faq_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `media_files`
--
ALTER TABLE `media_files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `media_files_user_id_index` (`user_id`);

--
-- Indexes for table `media_folders`
--
ALTER TABLE `media_folders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `media_folders_user_id_index` (`user_id`);

--
-- Indexes for table `media_settings`
--
ALTER TABLE `media_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_slug_unique` (`slug`);

--
-- Indexes for table `menu_locations`
--
ALTER TABLE `menu_locations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu_nodes`
--
ALTER TABLE `menu_nodes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_nodes_menu_id_index` (`menu_id`),
  ADD KEY `menu_nodes_parent_id_index` (`parent_id`);

--
-- Indexes for table `meta_boxes`
--
ALTER TABLE `meta_boxes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `meta_boxes_reference_id_index` (`reference_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mp_customer_revenues`
--
ALTER TABLE `mp_customer_revenues`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mp_customer_withdrawals`
--
ALTER TABLE `mp_customer_withdrawals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mp_stores`
--
ALTER TABLE `mp_stores`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mp_vendor_info`
--
ALTER TABLE `mp_vendor_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newsletters`
--
ALTER TABLE `newsletters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_categories`
--
ALTER TABLE `post_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_tags`
--
ALTER TABLE `post_tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `revisions`
--
ALTER TABLE `revisions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `revisions_revisionable_id_revisionable_type_index` (`revisionable_id`,`revisionable_type`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_slug_unique` (`slug`),
  ADD KEY `roles_created_by_index` (`created_by`),
  ADD KEY `roles_updated_by_index` (`updated_by`);

--
-- Indexes for table `role_users`
--
ALTER TABLE `role_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_users_user_id_index` (`user_id`),
  ADD KEY `role_users_role_id_index` (`role_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indexes for table `simple_sliders`
--
ALTER TABLE `simple_sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `simple_slider_items`
--
ALTER TABLE `simple_slider_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slugs`
--
ALTER TABLE `slugs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD KEY `users_stripe_id_index` (`stripe_id`);

--
-- Indexes for table `user_meta`
--
ALTER TABLE `user_meta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_meta_user_id_index` (`user_id`);

--
-- Indexes for table `widgets`
--
ALTER TABLE `widgets`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activations`
--
ALTER TABLE `activations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ads`
--
ALTER TABLE `ads`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `audit_histories`
--
ALTER TABLE `audit_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `contact_replies`
--
ALTER TABLE `contact_replies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dashboard_widgets`
--
ALTER TABLE `dashboard_widgets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dashboard_widget_settings`
--
ALTER TABLE `dashboard_widget_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ec_brands`
--
ALTER TABLE `ec_brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `ec_currencies`
--
ALTER TABLE `ec_currencies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `ec_customers`
--
ALTER TABLE `ec_customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `ec_customer_addresses`
--
ALTER TABLE `ec_customer_addresses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `ec_discounts`
--
ALTER TABLE `ec_discounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ec_flash_sales`
--
ALTER TABLE `ec_flash_sales`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ec_grouped_products`
--
ALTER TABLE `ec_grouped_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ec_orders`
--
ALTER TABLE `ec_orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `ec_order_addresses`
--
ALTER TABLE `ec_order_addresses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `ec_order_histories`
--
ALTER TABLE `ec_order_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=246;

--
-- AUTO_INCREMENT for table `ec_order_product`
--
ALTER TABLE `ec_order_product`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `ec_products`
--
ALTER TABLE `ec_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT for table `ec_product_attributes`
--
ALTER TABLE `ec_product_attributes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `ec_product_attribute_sets`
--
ALTER TABLE `ec_product_attribute_sets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ec_product_categories`
--
ALTER TABLE `ec_product_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `ec_product_category_product`
--
ALTER TABLE `ec_product_category_product`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT for table `ec_product_collections`
--
ALTER TABLE `ec_product_collections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `ec_product_collection_products`
--
ALTER TABLE `ec_product_collection_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `ec_product_cross_sale_relations`
--
ALTER TABLE `ec_product_cross_sale_relations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=141;

--
-- AUTO_INCREMENT for table `ec_product_labels`
--
ALTER TABLE `ec_product_labels`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `ec_product_related_relations`
--
ALTER TABLE `ec_product_related_relations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ec_product_tags`
--
ALTER TABLE `ec_product_tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `ec_product_up_sale_relations`
--
ALTER TABLE `ec_product_up_sale_relations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ec_product_variations`
--
ALTER TABLE `ec_product_variations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `ec_product_variation_items`
--
ALTER TABLE `ec_product_variation_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- AUTO_INCREMENT for table `ec_product_with_attribute`
--
ALTER TABLE `ec_product_with_attribute`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `ec_product_with_attribute_set`
--
ALTER TABLE `ec_product_with_attribute_set`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `ec_reviews`
--
ALTER TABLE `ec_reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `ec_shipments`
--
ALTER TABLE `ec_shipments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `ec_shipment_histories`
--
ALTER TABLE `ec_shipment_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=140;

--
-- AUTO_INCREMENT for table `ec_shipping`
--
ALTER TABLE `ec_shipping`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ec_shipping_rules`
--
ALTER TABLE `ec_shipping_rules`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ec_shipping_rule_items`
--
ALTER TABLE `ec_shipping_rule_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ec_store_locators`
--
ALTER TABLE `ec_store_locators`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ec_taxes`
--
ALTER TABLE `ec_taxes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ec_wish_lists`
--
ALTER TABLE `ec_wish_lists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `faq_categories`
--
ALTER TABLE `faq_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `media_files`
--
ALTER TABLE `media_files`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;

--
-- AUTO_INCREMENT for table `media_folders`
--
ALTER TABLE `media_folders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `media_settings`
--
ALTER TABLE `media_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `menu_locations`
--
ALTER TABLE `menu_locations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `menu_nodes`
--
ALTER TABLE `menu_nodes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `meta_boxes`
--
ALTER TABLE `meta_boxes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `mp_customer_revenues`
--
ALTER TABLE `mp_customer_revenues`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `mp_customer_withdrawals`
--
ALTER TABLE `mp_customer_withdrawals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `mp_stores`
--
ALTER TABLE `mp_stores`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `mp_vendor_info`
--
ALTER TABLE `mp_vendor_info`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `newsletters`
--
ALTER TABLE `newsletters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `post_categories`
--
ALTER TABLE `post_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `post_tags`
--
ALTER TABLE `post_tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `revisions`
--
ALTER TABLE `revisions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `role_users`
--
ALTER TABLE `role_users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- AUTO_INCREMENT for table `simple_sliders`
--
ALTER TABLE `simple_sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `simple_slider_items`
--
ALTER TABLE `simple_slider_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `slugs`
--
ALTER TABLE `slugs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3661;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user_meta`
--
ALTER TABLE `user_meta`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `widgets`
--
ALTER TABLE `widgets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
