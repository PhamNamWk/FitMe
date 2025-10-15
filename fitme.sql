-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 02, 2025 at 10:06 PM
-- Server version: 8.0.40
-- PHP Version: 8.2.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fitme`
--

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `direct_link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `url_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `title`, `direct_link`, `url_image`, `created_at`, `updated_at`) VALUES
(1, 'Khám phá danh mục', '/category/ao-thun', 'uploads-banner/z46ownxdludah7tojjl1', '2025-08-23 09:21:12', '2025-08-24 00:01:01'),
(2, 'Khuyến mãi lớn', '/category/ao-thun', 'uploads-banner/tpo2mbogt7xcr0z6nznt', '2025-08-23 09:21:12', '2025-08-24 00:01:22'),
(3, 'Sản phẩm mới', '/category/ao-so-mi', 'uploads-banner/dl0nxdrtruavxvxtued5', '2025-08-23 09:21:12', '2025-08-24 00:01:45'),
(4, 'Tin tức mới nhất', '/category/ao-polo', 'uploads-banner/z9yqpfgbadibzgyjes0l', '2025-08-23 09:21:12', '2025-08-24 00:01:31');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('laravel_cache_2VgkIm17m5hpccWQ', 's:7:\"forever\";', 2072208867);

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cart_items`
--

CREATE TABLE `cart_items` (
  `id` bigint UNSIGNED NOT NULL,
  `quantity` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `product_item_id` bigint UNSIGNED NOT NULL,
  `is_choose` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `parent_id`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Đồ nam', 'do-nam', NULL, 'https://via.placeholder.com/640x480.png/00ccff?text=categories+eveniet', '2025-08-23 09:21:12', '2025-08-23 09:21:12'),
(2, 'Áo thun', 'ao-thun', 1, 'uploads-category/h7mmcrgudufmp6lu2j6h', '2025-08-23 09:21:12', '2025-08-23 09:56:11'),
(3, 'Áo polo', 'ao-polo', 1, 'uploads-category/rofn2q8wpe5jab8yhqix', '2025-08-23 09:21:12', '2025-08-23 09:56:19'),
(4, 'Áo khoác', 'ao-khoac', 1, 'uploads-category/qqydt9mlmjxd6ht0odmx', '2025-08-23 09:21:12', '2025-08-23 09:56:30'),
(5, 'Áo sơ mi', 'ao-so-mi', 1, 'uploads-category/wkqr6sbv7zkyikxg1hbs', '2025-08-23 09:21:12', '2025-08-23 09:56:42'),
(6, 'Quần tây', 'quan-tay', 1, 'uploads-category/iwwgud4nk9kqhurhlket', '2025-08-23 09:21:12', '2025-08-23 09:56:55'),
(7, 'Đồ nữ', 'do-nu', NULL, 'https://via.placeholder.com/640x480.png/0000ee?text=categories+placeat', '2025-08-23 09:21:12', '2025-08-23 09:21:12'),
(8, 'Áo thun nữ', 'ao-thun-nu', 7, 'uploads-category/cnwzzup3seov7d9hhadn', '2025-08-23 09:21:12', '2025-08-23 10:03:55'),
(9, 'Áo sơ mi nữ', 'ao-so-mi-nu', 7, 'uploads-category/kzetro0wjxk0yrme4tkd', '2025-08-23 09:21:12', '2025-08-23 10:04:17'),
(11, 'Đầm', 'dam', 7, 'uploads-category/tcpahp8kc8ynl4h4rd5a', '2025-08-23 09:21:12', '2025-08-23 10:04:45'),
(12, 'Chân váy', 'chan-vay', 7, 'uploads-category/dtauv6kzfbzbpqhm6iip', '2025-08-23 09:21:12', '2025-08-23 10:07:39'),
(18, 'Quần Kaki', 'quan-kaki', 1, 'uploads-category/iygwtwpunweh3ewdkf3i', '2025-08-23 09:44:07', '2025-08-23 09:44:07'),
(19, 'Quần jean', 'quan-jean', 1, 'uploads-category/whsslejzmll8109jh0p3', '2025-08-23 09:51:28', '2025-08-23 09:51:28'),
(20, 'Quần tây nữ', 'quan-tay-nu', 7, 'uploads-category/aubjxohwocabibavqb4m', '2025-08-23 09:53:50', '2025-08-23 09:53:50'),
(21, 'Quần kaki nữ', 'quan-kaki-nu', 7, 'uploads-category/dsnjo5etc94koftnqh7l', '2025-08-23 09:54:07', '2025-08-23 09:54:07'),
(22, 'Quần jean nữ', 'quan-jean-nu', 7, 'uploads-category/whvaay4i9x9dmvhxu4sc', '2025-08-23 09:54:53', '2025-08-23 09:54:53');

-- --------------------------------------------------------

--
-- Table structure for table `colors`
--

CREATE TABLE `colors` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `colors`
--

INSERT INTO `colors` (`id`, `name`, `code`, `is_active`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Đen', '#000000', 1, '2025-08-23 09:21:12', '2025-08-23 09:28:16', NULL),
(2, 'Đỏ', '#a61c2c', 1, '2025-08-23 09:21:12', '2025-08-23 09:29:25', NULL),
(3, 'Trắng', '#e5e2dc', 1, '2025-08-23 09:21:12', '2025-08-23 09:30:31', NULL),
(4, 'Vàng', '#edb45a', 1, '2025-08-23 09:21:12', '2025-08-23 09:31:55', NULL),
(5, 'Cam', '#eec6ad', 1, '2025-08-23 09:21:12', '2025-08-23 09:31:25', NULL),
(6, 'Xanh lá cây', '#0d684d', 1, '2025-08-23 09:21:12', '2025-08-23 09:32:47', NULL),
(7, 'Xanh da trời', '#9eb6d6', 1, '2025-08-23 09:21:12', '2025-08-23 09:33:11', NULL),
(8, 'Hồng', '#e8cfd3', 1, '2025-08-23 09:21:12', '2025-08-23 09:33:31', NULL),
(9, 'Xám', '#d4d4d4', 1, '2025-08-23 09:21:12', '2025-08-23 09:34:03', NULL),
(11, 'Be', '#c6ad8d', 1, '2025-08-23 11:40:21', '2025-08-23 11:40:21', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint UNSIGNED NOT NULL,
  `content` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `product_id` bigint UNSIGNED NOT NULL,
  `is_active` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_read` tinyint NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `phone`, `content`, `title`, `is_read`, `created_at`) VALUES
(1, 'Trịnh Văn A', 'jacquelyn.carroll@example.com', '0990331219', 'Tôi muốn biết thêm chi tiết về sản phẩm A.', 'Hỏi về sản phẩm', 1, '2025-08-23 09:21:12'),
(2, 'Trịnh Văn A', 'fannie81@example.net', '0490176568', 'Tôi muốn biết thêm chi tiết về sản phẩm A.', 'Hỏi về sản phẩm', 0, '2025-08-23 09:21:12'),
(3, 'Hoàng Thái Giám', 'kathleen64@example.org', '0782551326', 'Tôi hài lòng với dịch vụ, nhưng có thể cải thiện thêm ở bước thanh toán.', 'Góp ý dịch vụ', 0, '2025-08-23 09:21:12'),
(4, 'Trịnh Văn A', 'dfunk@example.net', '0035146634', 'Tôi muốn biết thêm chi tiết về sản phẩm A.', 'Hỏi về sản phẩm', 0, '2025-08-23 09:21:12'),
(5, 'Trịnh Văn A', 'stanton.clemens@example.com', '0484440825', 'Tôi muốn biết thêm chi tiết về sản phẩm A.', 'Hỏi về sản phẩm', 0, '2025-08-23 09:21:12'),
(6, 'Trịnh Văn A', 'hettinger.bennett@example.org', '0101675624', 'Tôi muốn biết thêm chi tiết về sản phẩm A.', 'Hỏi về sản phẩm', 0, '2025-08-23 09:21:12'),
(7, 'Trịnh Đăng Bảo', 'anya.morissette@example.net', '0263065554', 'Đơn hàng của tôi chưa được giao sau 5 ngày.', 'Vấn đề giao hàng', 0, '2025-08-23 09:21:12'),
(8, 'Trịnh Đăng Bảo', 'windler.vicky@example.org', '0190097307', 'Đơn hàng của tôi chưa được giao sau 5 ngày.', 'Vấn đề giao hàng', 0, '2025-08-23 09:21:12'),
(9, 'Trịnh Đăng Bảo', 'julianne65@example.net', '0172437611', 'Đơn hàng của tôi chưa được giao sau 5 ngày.', 'Vấn đề giao hàng', 0, '2025-08-23 09:21:12'),
(10, 'Hoàng Thái Giám', 'vivian89@example.org', '0456207853', 'Tôi hài lòng với dịch vụ, nhưng có thể cải thiện thêm ở bước thanh toán.', 'Góp ý dịch vụ', 0, '2025-08-23 09:21:12'),
(11, 'Pham Hoang', 'vokiet123@gmail.com', '0392848282', 'adsada', 'avsd', 1, '2025-08-24 00:37:25');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` int NOT NULL,
  `time_start` datetime NOT NULL,
  `time_end` datetime DEFAULT NULL,
  `min_price_order` int UNSIGNED NOT NULL,
  `max_price_discount` int UNSIGNED DEFAULT NULL,
  `limit_use` int NOT NULL,
  `is_active` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `type` enum('percentage','fixed','free_shipping') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'percentage'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `name`, `code`, `value`, `time_start`, `time_end`, `min_price_order`, `max_price_discount`, `limit_use`, `is_active`, `created_at`, `updated_at`, `deleted_at`, `type`) VALUES
(1, 'Giảm giá consequatur', 'O79NNRAR', 20, '2025-08-25 23:21:12', '2025-09-10 23:21:12', 400000, 300000, 46, 1, '2025-08-23 09:21:12', '2025-08-23 09:21:12', NULL, 'percentage'),
(2, 'Giảm giá voluptatum', 'KOELBJXZ', 30, '2025-08-27 23:21:12', '2025-09-25 23:21:12', 0, 200000, 78, 1, '2025-08-23 09:21:12', '2025-08-23 09:21:12', NULL, 'percentage'),
(3, 'Giảm giá qui', 'R3PV7HCY', 40, '2025-08-24 23:21:12', '2025-09-09 23:21:12', 300000, 400000, 25, 1, '2025-08-23 09:21:12', '2025-08-23 09:21:12', NULL, 'percentage'),
(4, 'Giảm giá iure', 'T6XEFANC', 20, '2025-08-25 23:21:12', '2025-09-15 23:21:12', 0, 500000, 57, 1, '2025-08-23 09:21:12', '2025-08-23 09:21:12', NULL, 'fixed'),
(5, 'Giảm giá rerum', 'VUZTP8DJ', 30, '2025-08-24 23:21:12', '2025-09-09 23:21:12', 100000, 500000, 39, 1, '2025-08-23 09:21:12', '2025-08-23 09:21:12', NULL, 'percentage'),
(6, 'Giảm giá commodi', 'ZRUQUFW3', 20, '2025-08-26 23:21:12', '2025-09-12 23:21:12', 0, 500000, 33, 1, '2025-08-23 09:21:12', '2025-08-23 09:21:12', NULL, 'percentage'),
(7, 'Giảm giá et', 'NYBUDLNF', 50, '2025-08-27 23:21:12', '2025-09-12 23:21:12', 500000, 400000, 98, 1, '2025-08-23 09:21:12', '2025-08-23 09:21:12', NULL, 'fixed'),
(8, 'Giảm giá illum', 'APW902SK', 50, '2025-08-25 23:21:12', '2025-09-12 23:21:12', 100000, 200000, 46, 1, '2025-08-23 09:21:12', '2025-08-23 09:21:12', NULL, 'fixed'),
(9, 'Giảm giá dolorem', 'AGNVRK8N', 30, '2025-08-26 23:21:12', '2025-09-06 23:21:12', 400000, 200000, 25, 1, '2025-08-23 09:21:12', '2025-08-23 09:21:12', NULL, 'percentage'),
(10, 'Giảm giá accusamus', 'GRJJZOEQ', 30, '2025-08-26 23:21:12', '2025-09-19 23:21:12', 200000, 400000, 16, 1, '2025-08-23 09:21:12', '2025-08-23 09:21:12', NULL, 'fixed'),
(11, 'khuyến mãi 5k', 'KM5k', 5000, '2025-08-24 15:12:00', '2025-09-27 00:00:00', 60000, NULL, 97, 1, '2025-08-24 01:10:32', '2025-08-25 07:45:46', NULL, 'fixed'),
(12, 'Giảm giá ngay 5%', 'GGN5', 5, '2025-08-24 15:14:00', '2025-09-20 00:00:00', 90000, 20000, 100, 1, '2025-08-24 01:12:13', '2025-08-24 01:12:13', NULL, 'percentage'),
(13, 'PC', 'ADB123', 5, '2025-08-28 00:00:00', '2025-09-05 00:00:00', 10000, 2000, 10, 1, '2025-08-25 10:32:13', '2025-08-25 10:32:13', NULL, 'percentage');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `member_points`
--

CREATE TABLE `member_points` (
  `id` bigint UNSIGNED NOT NULL,
  `point` bigint UNSIGNED NOT NULL DEFAULT '0',
  `rank` enum('bronze','silver','gold','diamond') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'bronze',
  `user_id` bigint UNSIGNED NOT NULL,
  `value` tinyint NOT NULL DEFAULT '0',
  `last_order_date` timestamp NULL DEFAULT NULL,
  `last_rank_deduction_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `member_points`
--

INSERT INTO `member_points` (`id`, `point`, `rank`, `user_id`, `value`, `last_order_date`, `last_rank_deduction_at`, `created_at`, `updated_at`) VALUES
(1, 0, 'bronze', 2, 0, NULL, NULL, '2025-08-23 09:21:12', '2025-08-23 09:21:12'),
(2, 0, 'bronze', 3, 0, NULL, NULL, '2025-08-23 09:21:12', '2025-08-23 09:21:12'),
(3, 0, 'bronze', 4, 0, NULL, NULL, '2025-08-23 09:21:12', '2025-08-23 09:21:12'),
(4, 0, 'bronze', 5, 0, NULL, NULL, '2025-08-23 09:21:12', '2025-08-23 09:21:12'),
(5, 0, 'bronze', 6, 0, NULL, NULL, '2025-08-23 09:21:12', '2025-08-23 09:21:12'),
(6, 0, 'bronze', 7, 0, NULL, NULL, '2025-08-23 09:21:12', '2025-08-23 09:21:12'),
(7, 0, 'bronze', 8, 0, NULL, NULL, '2025-08-23 09:21:12', '2025-08-23 09:21:12'),
(8, 0, 'bronze', 9, 0, NULL, NULL, '2025-08-23 09:21:12', '2025-08-23 09:21:12'),
(9, 0, 'bronze', 10, 0, NULL, NULL, '2025-08-23 09:21:12', '2025-08-23 09:21:12'),
(10, 0, 'bronze', 11, 0, NULL, NULL, '2025-08-23 09:21:12', '2025-08-23 09:21:12'),
(11, 0, 'bronze', 12, 0, NULL, NULL, '2025-08-23 09:21:12', '2025-08-23 09:21:12'),
(12, 0, 'bronze', 13, 0, NULL, NULL, '2025-08-23 09:21:12', '2025-08-23 09:21:12'),
(13, 0, 'bronze', 14, 0, NULL, NULL, '2025-08-23 09:21:12', '2025-08-23 09:21:12'),
(14, 0, 'bronze', 15, 0, NULL, NULL, '2025-08-23 09:21:12', '2025-08-23 09:21:12'),
(15, 0, 'bronze', 16, 0, NULL, NULL, '2025-08-23 09:21:12', '2025-08-23 09:21:12'),
(16, 0, 'bronze', 17, 0, NULL, NULL, '2025-08-23 09:21:12', '2025-08-23 09:21:12'),
(17, 0, 'bronze', 18, 0, NULL, NULL, '2025-08-23 09:21:12', '2025-08-23 09:21:12'),
(18, 0, 'bronze', 19, 0, NULL, NULL, '2025-08-23 09:21:12', '2025-08-23 09:21:12'),
(19, 0, 'bronze', 20, 0, NULL, NULL, '2025-08-23 09:21:12', '2025-08-23 09:21:12'),
(20, 0, 'bronze', 21, 0, NULL, NULL, '2025-08-23 09:21:12', '2025-08-23 09:21:12'),
(21, 0, 'bronze', 22, 0, NULL, NULL, '2025-08-23 09:22:16', '2025-08-23 09:22:16'),
(22, 722, 'gold', 23, 5, '2025-08-25 11:29:14', NULL, '2025-08-23 09:34:26', '2025-08-23 09:34:26'),
(23, 166, 'bronze', 24, 0, '2025-08-23 22:58:29', NULL, '2025-08-23 22:47:17', '2025-08-23 22:47:17'),
(24, 141, 'bronze', 25, 0, '2025-08-23 23:07:00', NULL, '2025-08-23 23:03:11', '2025-08-23 23:03:11'),
(25, 262, 'silver', 26, 3, '2025-08-23 23:16:30', NULL, '2025-08-23 23:11:05', '2025-08-23 23:11:05'),
(26, 166, 'bronze', 27, 0, '2025-08-23 23:29:25', NULL, '2025-08-23 23:20:13', '2025-08-23 23:20:13'),
(27, 320, 'silver', 28, 3, '2025-08-23 23:38:49', NULL, '2025-08-23 23:31:53', '2025-08-23 23:31:53'),
(28, 274, 'silver', 29, 3, '2025-08-23 23:41:59', NULL, '2025-08-23 23:40:56', '2025-08-23 23:40:56'),
(29, 356, 'silver', 30, 3, '2025-08-24 00:06:57', NULL, '2025-08-23 23:58:55', '2025-08-23 23:58:55'),
(30, 518, 'gold', 31, 5, '2025-08-24 00:15:10', NULL, '2025-08-24 00:13:57', '2025-08-24 00:13:57'),
(31, 508, 'gold', 32, 5, '2025-08-24 00:23:24', NULL, '2025-08-24 00:22:04', '2025-08-24 00:22:04'),
(32, 565, 'gold', 33, 5, '2025-08-24 00:32:07', NULL, '2025-08-24 00:31:09', '2025-08-24 00:31:09'),
(33, 588, 'gold', 34, 5, '2025-08-24 00:44:03', NULL, '2025-08-24 00:43:12', '2025-08-24 00:43:12'),
(34, 625, 'gold', 35, 5, '2025-08-24 00:59:43', NULL, '2025-08-24 00:58:49', '2025-08-24 00:58:49'),
(35, 603, 'gold', 36, 5, '2025-08-24 01:13:10', NULL, '2025-08-24 01:08:33', '2025-08-24 01:08:33'),
(36, 503, 'gold', 37, 5, '2025-08-24 01:25:03', NULL, '2025-08-24 01:23:47', '2025-08-24 01:23:47'),
(37, 459, 'silver', 38, 3, '2025-08-24 01:33:13', NULL, '2025-08-24 01:32:05', '2025-08-24 01:32:05'),
(38, 234, 'silver', 39, 3, '2025-08-24 02:07:30', NULL, '2025-08-24 02:06:31', '2025-08-24 02:06:31'),
(39, 318, 'silver', 40, 3, '2025-08-24 02:12:48', NULL, '2025-08-24 02:12:07', '2025-08-24 02:12:07'),
(40, 89, 'bronze', 41, 0, '2025-08-25 07:45:46', NULL, '2025-08-24 05:10:46', '2025-08-24 05:10:46'),
(41, 71, 'bronze', 42, 0, '2025-08-25 12:00:13', NULL, '2025-08-25 11:32:30', '2025-08-25 11:32:30'),
(42, 0, 'bronze', 43, 0, NULL, NULL, '2025-09-02 21:34:41', '2025-09-02 21:34:41');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_04_28_135901_create_personal_access_tokens_table', 1),
(5, '2025_05_10_164606_create_shipping_address_table', 1),
(6, '2025_05_10_164711_create_status_orders_table', 1),
(7, '2025_05_10_164808_create_categories_table', 1),
(8, '2025_05_10_164829_create_products_table', 1),
(9, '2025_05_10_164903_create_product_items_table', 1),
(10, '2025_05_12_144000_create_sessions_table', 1),
(11, '2025_05_12_145149_create_carts_table', 1),
(12, '2025_05_12_151346_create_orders_table', 1),
(13, '2025_05_12_152659_create_orders_detail_table', 1),
(14, '2025_05_12_155759_create_comments_table', 1),
(15, '2025_05_12_160343_create_reviews_table', 1),
(16, '2025_05_16_210746_create_wishlists_table', 1),
(17, '2025_05_16_211103_create_banners_table', 1),
(18, '2025_05_16_211408_create_coupons_table', 1),
(19, '2025_05_16_211615_create_contacts_table', 1),
(20, '2025_05_17_145904_create_trigger_update_order_total_amount', 1),
(21, '2025_05_19_160811_create_posts_table', 1),
(22, '2025_05_23_225818_create_colors_table', 1),
(23, '2025_05_23_230417_create_sizes_table', 1),
(24, '2025_05_24_094045_update_product_items_table', 1),
(25, '2025_05_24_101052_create_product_images_table', 1),
(26, '2025_05_24_110438_update_foreign_key_in_reviews_table', 1),
(27, '2025_05_24_112346_create_review_images_table', 1),
(28, '2025_05_24_114132_rename_carts_table_and_quantity_cart_column', 1),
(29, '2025_05_24_115309_add_columns_to_orders_detail_table', 1),
(30, '2025_05_28_145250_delete_row_shipping_address_id_in_order_table', 1),
(31, '2025_05_28_150141_add_column_receiving_address_recipient_name_and_recipient_phone_in_orders_table', 1),
(32, '2025_06_02_143258_add_total_inventory_to_products', 1),
(33, '2025_06_10_152818_add_is_choose_to_cart_items_table', 1),
(34, '2025_06_12_001856_add_sale_percent_to_product_items_table', 1),
(35, '2025_06_12_004833_add_price_fields_to_orders_table', 1),
(36, '2025_06_12_145050_create_event_auto_deactive', 1),
(37, '2025_06_12_150728_create_event_auto_clean_inactive_coupons', 1),
(38, '2025_06_13_205309_delete_trigger_update_order_total_amount', 1),
(39, '2025_06_18_190402_add_sale_fields_to_order_details_table', 1),
(40, '2025_06_26_235920_create_update_success_at_on_status_change_trigger', 1),
(41, '2025_06_27_000342_create_auto_update_order_status_event', 1),
(42, '2025_07_01_003535_add_type_to_coupons_table', 1),
(43, '2025_07_01_153333_create_review_replies_table', 1),
(44, '2025_07_31_151131_create_password_resets_table', 1),
(45, '2025_08_05_144119_create_wallets_table', 1),
(46, '2025_08_05_154750_create_wallet_transactions_table', 1),
(47, '2025_08_11_220359_create_notifications_table', 1),
(48, '2025_08_17_230443_create_cancel_unpaid_vnpay_orders_event', 1),
(49, '2025_08_18_155328_create_order_proof_images_table', 1),
(50, '2025_08_19_094731_create_order_delivery_failures_table', 1),
(51, '2025_08_21_230702_create_member_points_table', 1),
(52, '2025_08_22_021640_create_order_status_trigger', 1),
(53, '2025_08_26_232255_create_return_requests_table', 1),
(54, '2025_08_26_232317_create_return_files_table', 1),
(55, '2025_08_26_232327_create_return_items_table', 1),
(56, '2025_08_26_232407_create_event_cancel_expired_return_requests_table', 1),
(57, '2025_09_01_195518_create_trigger_update_order_when_return_cancel', 1),
(58, '2025_09_01_210125_create_auto_update_failed_return_orders_event', 1),
(59, '2025_09_02_193051_create_trigger_before_update_order_status_success', 2),
(60, '2025_09_03_003124_create_trigger_after_update_return_request_status', 2),
(61, '2025_09_03_004637_create_trigger_after_update_order_status', 2),
(62, '2025_09_03_004841_add_from_order_code_to_wallet_transactions_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint UNSIGNED NOT NULL,
  `data` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('2b10ca38-2fc1-4bba-8464-1e0e0dd8fb3e', 'App\\Notifications\\CreateOrderNotification', 'App\\Models\\User', 22, '{\"user_id\":23,\"order_id\":\"OD250902DYSAAE\",\"message\":\"<span>\\n                            Kh\\u00e1ch h\\u00e0ng\\n                            <span style=\\\"color:red;font-weight:bold;\\\">Pham Cuong\\n                            <\\/span>\\n                            t\\u1ea1o th\\u00e0nh c\\u00f4ng \\u0111\\u01a1n h\\u00e0ng \\n                            <span style=\\\"color:red;font-weight:bold;\\\">\\n                              #OD250902DYSAAE\\n                            <\\/span>\\n                          <\\/span>\",\"icon\":\"\\ud83d\\udce6\"}', '2025-09-02 16:21:04', '2025-09-02 14:51:34', '2025-09-02 16:21:04'),
('5d2d632d-b96b-4902-b372-e4d069fd46b2', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\User', 23, '{\"user_id\":23,\"order_id\":\"OD250902DYSAAE\",\"status\":7,\"message\":\"<span>\\n                            \\u0110\\u01a1n h\\u00e0ng\\n                            <span style=\\\"color:red;font-weight:bold;\\\">#OD250902DYSAAE\\n                            <\\/span>\\n                            \\u0111\\u00e3 \\u0111\\u01b0\\u1ee3c h\\u1ee7y th\\u00e0nh c\\u00f4ng\\n                          <\\/span>\",\"icon\":\"\\ud83d\\udce6\"}', '2025-09-02 16:47:05', '2025-09-02 15:21:02', '2025-09-02 16:47:05'),
('5d9615bc-5169-4a88-b2ed-967d4e53be88', 'App\\Notifications\\CreateOrderNotification', 'App\\Models\\User', 22, '{\"user_id\":23,\"order_id\":\"OD250902JCJGAM\",\"message\":\"<span>\\n                            Kh\\u00e1ch h\\u00e0ng\\n                            <span style=\\\"color:red;font-weight:bold;\\\">Pham Cuong\\n                            <\\/span>\\n                            t\\u1ea1o th\\u00e0nh c\\u00f4ng \\u0111\\u01a1n h\\u00e0ng \\n                            <span style=\\\"color:red;font-weight:bold;\\\">\\n                              #OD250902JCJGAM\\n                            <\\/span>\\n                          <\\/span>\",\"icon\":\"\\ud83d\\udce6\"}', '2025-09-02 16:21:04', '2025-09-02 14:46:46', '2025-09-02 16:21:04'),
('61b371d9-7ed4-4e8a-af4a-0a6331899c8f', 'App\\Notifications\\RefundVnpayNotification', 'App\\Models\\User', 23, '{\"user_id\":23,\"order_id\":\"OD250902DYSAAE\",\"message\":\"<span>\\n                            \\u0110\\u01a1n h\\u00e0ng\\n                            <span style=\\\"color:red;font-weight:bold;\\\">#OD250902DYSAAE\\n                            <\\/span>\\n                            \\u0111\\u00e3 \\u0111\\u01b0\\u1ee3c ho\\u00e0n ti\\u1ec1n\\n                          <\\/span>\",\"icon\":\"\\ud83d\\udcb5\"}', '2025-09-02 16:47:05', '2025-09-02 15:21:11', '2025-09-02 16:47:05'),
('7072762f-8ee1-4410-8830-2d25cc5c9e87', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\User', 1, '{\"user_id\":23,\"order_id\":\"OD250902DYSAAE\",\"status\":7,\"message\":\"<span>\\n                            Kh\\u00e1ch h\\u00e0ng\\n                            <span style=\\\"color:red;font-weight:bold;\\\">Pham Cuong\\n                            <\\/span>\\n                            \\u0111\\u00e3 h\\u1ee7y \\u0111\\u01a1n\\n                            <span style=\\\"color:red;font-weight:bold;\\\">\\n                              #OD250902DYSAAE\\n                            <\\/span>\\n                          <\\/span>\",\"icon\":\"\\ud83d\\udce6\"}', NULL, '2025-09-02 15:21:02', '2025-09-02 15:21:02'),
('756069f3-0049-4b91-ac2d-aaa7c5f502d3', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\User', 22, '{\"user_id\":23,\"order_id\":\"OD250902DYSAAE\",\"status\":7,\"message\":\"<span>\\n                            Kh\\u00e1ch h\\u00e0ng\\n                            <span style=\\\"color:red;font-weight:bold;\\\">Pham Cuong\\n                            <\\/span>\\n                            \\u0111\\u00e3 h\\u1ee7y \\u0111\\u01a1n\\n                            <span style=\\\"color:red;font-weight:bold;\\\">\\n                              #OD250902DYSAAE\\n                            <\\/span>\\n                          <\\/span>\",\"icon\":\"\\ud83d\\udce6\"}', '2025-09-02 16:21:04', '2025-09-02 15:21:02', '2025-09-02 16:21:04'),
('7578a021-2704-41f4-b64f-2709b56b2eee', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\User', 22, '{\"user_id\":23,\"order_id\":\"OD250902JCJGAM\",\"status\":7,\"message\":\"<span>\\n                            Kh\\u00e1ch h\\u00e0ng\\n                            <span style=\\\"color:red;font-weight:bold;\\\">Pham Cuong\\n                            <\\/span>\\n                            \\u0111\\u00e3 h\\u1ee7y \\u0111\\u01a1n\\n                            <span style=\\\"color:red;font-weight:bold;\\\">\\n                              #OD250902JCJGAM\\n                            <\\/span>\\n                          <\\/span>\",\"icon\":\"\\ud83d\\udce6\"}', '2025-09-02 16:21:04', '2025-09-02 14:49:39', '2025-09-02 16:21:04'),
('b9229f73-e348-4040-a99c-c72c07097045', 'App\\Notifications\\CreateOrderNotification', 'App\\Models\\User', 1, '{\"user_id\":23,\"order_id\":\"OD250902JCJGAM\",\"message\":\"<span>\\n                            Kh\\u00e1ch h\\u00e0ng\\n                            <span style=\\\"color:red;font-weight:bold;\\\">Pham Cuong\\n                            <\\/span>\\n                            t\\u1ea1o th\\u00e0nh c\\u00f4ng \\u0111\\u01a1n h\\u00e0ng \\n                            <span style=\\\"color:red;font-weight:bold;\\\">\\n                              #OD250902JCJGAM\\n                            <\\/span>\\n                          <\\/span>\",\"icon\":\"\\ud83d\\udce6\"}', NULL, '2025-09-02 14:46:45', '2025-09-02 14:46:45'),
('bd2c3793-b719-42a6-ad10-effcb4ac3d4d', 'App\\Notifications\\CreateOrderNotification', 'App\\Models\\User', 1, '{\"user_id\":23,\"order_id\":\"OD250902DYSAAE\",\"message\":\"<span>\\n                            Kh\\u00e1ch h\\u00e0ng\\n                            <span style=\\\"color:red;font-weight:bold;\\\">Pham Cuong\\n                            <\\/span>\\n                            t\\u1ea1o th\\u00e0nh c\\u00f4ng \\u0111\\u01a1n h\\u00e0ng \\n                            <span style=\\\"color:red;font-weight:bold;\\\">\\n                              #OD250902DYSAAE\\n                            <\\/span>\\n                          <\\/span>\",\"icon\":\"\\ud83d\\udce6\"}', NULL, '2025-09-02 14:51:34', '2025-09-02 14:51:34'),
('bfeff602-430b-4f9f-b273-8bd0d2f24607', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\User', 23, '{\"user_id\":23,\"order_id\":\"OD250902JCJGAM\",\"status\":7,\"message\":\"<span>\\n                            \\u0110\\u01a1n h\\u00e0ng\\n                            <span style=\\\"color:red;font-weight:bold;\\\">#OD250902JCJGAM\\n                            <\\/span>\\n                            \\u0111\\u00e3 \\u0111\\u01b0\\u1ee3c h\\u1ee7y th\\u00e0nh c\\u00f4ng\\n                          <\\/span>\",\"icon\":\"\\ud83d\\udce6\"}', '2025-09-02 15:20:43', '2025-09-02 14:49:39', '2025-09-02 15:20:43'),
('ffb3f3c2-3e2f-46a0-81ff-86f47e371826', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\User', 1, '{\"user_id\":23,\"order_id\":\"OD250902JCJGAM\",\"status\":7,\"message\":\"<span>\\n                            Kh\\u00e1ch h\\u00e0ng\\n                            <span style=\\\"color:red;font-weight:bold;\\\">Pham Cuong\\n                            <\\/span>\\n                            \\u0111\\u00e3 h\\u1ee7y \\u0111\\u01a1n\\n                            <span style=\\\"color:red;font-weight:bold;\\\">\\n                              #OD250902JCJGAM\\n                            <\\/span>\\n                          <\\/span>\",\"icon\":\"\\ud83d\\udce6\"}', NULL, '2025-09-02 14:49:39', '2025-09-02 14:49:39');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint UNSIGNED NOT NULL,
  `orders_code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_price_item` int UNSIGNED NOT NULL DEFAULT '0',
  `shipping_price` int UNSIGNED NOT NULL DEFAULT '0',
  `discount` int UNSIGNED NOT NULL DEFAULT '0',
  `total_amount` int UNSIGNED NOT NULL,
  `status_payment` tinyint NOT NULL DEFAULT '0',
  `payment_method` enum('cod','banking','vnpay') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `receiving_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `recipient_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `recipient_phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_order_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `bank_code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vnp_txnref` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `paid_at` timestamp NULL DEFAULT NULL,
  `success_at` timestamp NULL DEFAULT NULL,
  `transaction_at` timestamp NULL DEFAULT NULL,
  `refunded_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `orders_code`, `total_price_item`, `shipping_price`, `discount`, `total_amount`, `status_payment`, `payment_method`, `receiving_address`, `recipient_name`, `recipient_phone`, `status_order_id`, `user_id`, `bank_code`, `bank_name`, `vnp_txnref`, `created_at`, `updated_at`, `paid_at`, `success_at`, `transaction_at`, `refunded_at`) VALUES
(1, 'OD250824RX7T5D', 640000, 20000, 0, 660000, 1, 'cod', 'Nhà số 5, Phường Minh Khai, Thành phố Hà Giang, Tỉnh Hà Giang', 'Pham Hoang', '0392848282', 6, 24, NULL, NULL, NULL, '2024-03-22 05:31:43', '2025-08-23 22:54:21', '2025-08-23 22:52:08', '2025-08-23 22:54:21', NULL, NULL),
(2, 'OD250824UULNI3', 300000, 20000, 0, 320000, 1, 'cod', 'Nhà số 5, Phường Minh Khai, Thành phố Hà Giang, Tỉnh Hà Giang', 'Pham Hoang', '0392848282', 6, 24, NULL, NULL, NULL, '2024-08-18 00:49:31', '2025-08-23 22:56:23', '2025-08-23 22:56:18', '2025-08-23 22:56:23', NULL, NULL),
(3, 'OD250824RS4TDN', 300000, 20000, 0, 320000, 1, 'cod', 'Nhà số 7, Xã Đức Vân, Huyện Ngân Sơn, Tỉnh Bắc Kạn', 'Pham Hoang', '0392848282', 6, 24, NULL, NULL, NULL, '2024-11-01 01:32:28', '2025-08-23 22:57:42', '2025-08-23 22:57:32', '2025-08-23 22:57:42', NULL, NULL),
(4, 'OD250824REMUS8', 340000, 20000, 0, 360000, 1, 'cod', 'Nhà số 5, Xã An Bình, Huyện Nam Sách, Tỉnh Hải Dương', 'Pham Hoang', '0392848282', 6, 24, NULL, NULL, NULL, '2024-08-21 19:13:51', '2025-08-23 22:58:58', '2025-08-23 22:58:50', '2025-08-23 22:58:58', NULL, NULL),
(5, 'OD250824MGET9S', 150000, 20000, 0, 170000, 1, 'cod', 'Nhà số 5, Phường Minh Khai, Thành phố Hà Giang, Tỉnh Hà Giang', 'Pham Hoang', '0392848282', 4, 24, NULL, NULL, NULL, '2024-09-11 09:31:53', '2025-08-23 23:02:02', '2025-08-23 23:02:02', NULL, NULL, NULL),
(6, 'OD250824NL2UC2', 420000, 20000, 0, 440000, 1, 'cod', 'Nhà số 5, Xã Ngọc Thanh, Thành phố Phúc Yên, Tỉnh Vĩnh Phúc', 'Pham Hoang', '0392848282', 4, 24, NULL, NULL, NULL, '2025-07-25 03:57:52', '2025-08-23 23:09:22', '2025-08-23 23:09:22', NULL, NULL, NULL),
(7, 'OD25082416O290', 500000, 20000, 0, 520000, 1, 'cod', 'Nhà số 5, Phường Bằng An, Thị xã Quế Võ, Tỉnh Bắc Ninh', 'Pham Hoang', '0384727274', 6, 25, NULL, NULL, NULL, '2024-10-14 05:13:46', '2025-08-23 23:05:19', '2025-08-23 23:05:15', '2025-08-23 23:05:19', NULL, NULL),
(8, 'OD250824Q8HWW4', 300000, 20000, 0, 320000, 0, 'cod', 'Nhà số 5, Xã Đại Đồng, Huyện Đại Lộc, Tỉnh Quảng Nam', 'Pham Hoang', '0392848282', 7, 25, NULL, NULL, NULL, '2024-11-21 04:15:13', '2025-08-23 23:06:14', NULL, NULL, NULL, NULL),
(9, 'OD250824D9PQZ0', 870000, 20000, 0, 890000, 1, 'cod', 'Nhà số 5, Phường Bằng An, Thị xã Quế Võ, Tỉnh Bắc Ninh', 'Pham Hoang', '0384727274', 6, 25, NULL, NULL, NULL, '2024-06-11 19:34:51', '2025-08-23 23:07:36', '2025-08-23 23:07:30', '2025-08-23 23:07:36', NULL, NULL),
(10, 'OD250824GOLYBT', 520000, 20000, 0, 540000, 1, 'cod', 'Nhà số 5, Phường Bằng An, Thị xã Quế Võ, Tỉnh Bắc Ninh', 'Pham Hoang', '0384727274', 4, 25, NULL, NULL, NULL, '2025-03-17 03:08:37', '2025-08-23 23:12:35', '2025-08-23 23:12:35', NULL, NULL, NULL),
(11, 'OD250824POY3BL', 420000, 20000, 0, 440000, 1, 'cod', 'Nhà số 5, Phường Cẩm Tây, Thành phố Cẩm Phả, Tỉnh Quảng Ninh', 'Dinh Minh', '0392848282', 4, 25, NULL, NULL, NULL, '2025-05-28 18:58:36', '2025-08-23 23:09:39', '2025-08-23 23:09:39', NULL, NULL, NULL),
(12, 'OD250824MONCLL', 660000, 20000, 0, 680000, 1, 'cod', 'Nhà số 5, Phường Hàng Buồm, Quận Hoàn Kiếm, Thành phố Hà Nội', 'Hoang Anh', '0394837385', 6, 26, NULL, NULL, NULL, '2024-02-12 03:27:11', '2025-08-23 23:12:39', '2025-08-23 23:12:24', '2025-08-23 23:12:39', NULL, NULL),
(13, 'OD250824BHX47C', 300000, 20000, 0, 320000, 1, 'cod', 'Nhà số 5, Phường Đông Khê, Quận Ngô Quyền, Thành phố Hải Phòng', 'Hoang Anh', '0393834756', 6, 26, NULL, NULL, NULL, '2025-04-20 22:20:08', '2025-08-23 23:13:49', '2025-08-23 23:13:41', '2025-08-23 23:13:49', NULL, NULL),
(14, 'OD250824BE2FTK', 700000, 20000, 0, 720000, 1, 'cod', 'Nhà số 5, Phường Nam Thành, Thành phố Hoa Lư, Tỉnh Ninh Bình', 'Hoang Anh', '0394837385', 6, 26, NULL, NULL, NULL, '2025-03-23 19:19:10', '2025-08-23 23:15:21', '2025-08-23 23:15:15', '2025-08-23 23:15:21', NULL, NULL),
(15, 'OD250824D3SO5U', 640000, 20000, 0, 660000, 1, 'cod', 'Nhà số 5, Phường Đông Khê, Quận Ngô Quyền, Thành phố Hải Phòng', 'Hoang Anh', '0393834756', 6, 26, NULL, NULL, NULL, '2024-07-28 19:35:29', '2025-08-23 23:18:38', '2025-08-23 23:18:14', '2025-08-23 23:18:38', NULL, NULL),
(16, 'OD2508248Y7BQQ', 220000, 20000, 0, 240000, 1, 'cod', 'Nhà số 5, Xã Tả Gia Khâu, Huyện Mường Khương, Tỉnh Lào Cai', 'Hoang Anh', '0392848282', 6, 26, NULL, NULL, NULL, '2024-11-04 05:59:57', '2025-08-23 23:18:33', '2025-08-23 23:17:52', '2025-08-23 23:18:33', NULL, NULL),
(17, 'OD250824FN3WQW', 640000, 20000, 0, 660000, 1, 'cod', 'Nhà số 5, Xã Tân Lập, Huyện Yên Mỹ, Tỉnh Hưng Yên', 'Vo Kiet', '0394837385', 6, 27, NULL, NULL, NULL, '2024-11-06 09:13:19', '2025-08-23 23:27:42', '2025-08-23 23:25:57', '2025-08-23 23:27:42', NULL, NULL),
(18, 'OD250824ZPHMHQ', 300000, 20000, 0, 320000, 1, 'cod', 'Nhà số 5, Xã Đa Thông, Huyện Hà Quảng, Tỉnh Cao Bằng', 'Pham Hoang', '0394837583', 6, 27, NULL, NULL, NULL, '2024-01-26 18:06:45', '2025-08-23 23:27:39', '2025-08-23 23:27:28', '2025-08-23 23:27:39', NULL, NULL),
(19, 'OD2508249AUOKZ', 220000, 20000, 0, 240000, 1, 'cod', 'Nhà số 5, Xã Mường Nhé, Huyện Mường Nhé, Tỉnh Điện Biên', 'Vo kiet', '0394838573', 6, 27, NULL, NULL, NULL, '2025-02-06 04:53:50', '2025-08-23 23:28:50', '2025-08-23 23:28:44', '2025-08-23 23:28:50', NULL, NULL),
(20, 'OD250824U1WNIS', 420000, 20000, 0, 440000, 1, 'cod', 'Nhà số 5, Xã Khao Mang, Huyện Mù Căng Chải, Tỉnh Yên Bái', 'Vo Kiet', '0384727274', 6, 27, NULL, NULL, NULL, '2024-05-08 08:08:57', '2025-08-23 23:29:52', '2025-08-23 23:29:46', '2025-08-23 23:29:52', NULL, NULL),
(21, 'OD2508242GHTMV', 660000, 20000, 0, 680000, 1, 'cod', 'Nhà số 5, Xã Pù Nhi, Huyện Mường Lát, Tỉnh Thanh Hóa', 'Tran Han', '0394857385', 6, 28, NULL, NULL, NULL, '2024-02-07 16:03:19', '2025-08-23 23:33:49', '2025-08-23 23:33:38', '2025-08-23 23:33:49', NULL, NULL),
(22, 'OD250824LVSZMW', 710000, 20000, 0, 730000, 1, 'cod', 'Nhà số 5, Xã Yên Hoa, Huyện Na Hang, Tỉnh Tuyên Quang', 'Tran Han', '0384727274', 6, 28, NULL, NULL, NULL, '2025-02-09 21:49:45', '2025-08-23 23:35:10', '2025-08-23 23:34:56', '2025-08-23 23:35:10', NULL, NULL),
(23, 'OD250824XC7UFT', 300000, 20000, 0, 320000, 1, 'cod', 'Nhà số 5, Xã Liên Sơn, Huyện Tân Yên, Tỉnh Bắc Giang', 'Tran Han', '0394837385', 6, 28, NULL, NULL, NULL, '2024-04-21 02:58:50', '2025-08-23 23:36:17', '2025-08-23 23:36:10', '2025-08-23 23:36:17', NULL, NULL),
(24, 'OD2508247V9EMN', 620000, 20000, 0, 640000, 1, 'cod', 'Nhà số 5, Phường Phố Cò, Thành phố Sông Công, Tỉnh Thái Nguyên', 'Tran Han', '0394837583', 6, 28, NULL, NULL, NULL, '2025-06-26 11:24:56', '2025-08-23 23:38:02', '2025-08-23 23:37:53', '2025-08-23 23:38:02', NULL, NULL),
(25, 'OD250824WM15CL', 840000, 20000, 25200, 834800, 1, 'cod', 'Nhà số 5, Xã Long Hưng, Huyện Văn Giang, Tỉnh Hưng Yên', 'Tran Han', '0394837583', 6, 28, NULL, NULL, NULL, '2025-07-27 14:08:13', '2025-08-23 23:39:17', '2025-08-23 23:39:09', '2025-08-23 23:39:17', NULL, NULL),
(26, 'OD250824WJOIEJ', 500000, 20000, 0, 520000, 1, 'cod', 'Nhà số 5, Xã Hoàng Nam, Huyện Nghĩa Hưng, Tỉnh Nam Định', 'Dang Pham', '0394837547', 6, 29, NULL, NULL, NULL, '2024-02-07 02:26:19', '2025-08-23 23:47:40', '2025-08-23 23:47:17', '2025-08-23 23:47:40', NULL, NULL),
(27, 'OD250824VUAYZ9', 370000, 20000, 0, 390000, 1, 'cod', 'Nhà số 5, Xã Minh Dân, Huyện Hàm Yên, Tỉnh Tuyên Quang', 'Dang Pham', '0394837583', 6, 29, NULL, NULL, NULL, '2024-09-28 07:46:58', '2025-08-23 23:47:37', '2025-08-23 23:47:00', '2025-08-23 23:47:37', NULL, NULL),
(28, 'OD250824J8MMPD', 750000, 20000, 0, 770000, 1, 'cod', 'Nhà số 5, Xã Hòa Tiến, Huyện Hưng Hà, Tỉnh Thái Bình', 'Dang Pham', '0384727274', 6, 29, NULL, NULL, NULL, '2024-02-11 21:35:56', '2025-08-23 23:47:33', '2025-08-23 23:46:40', '2025-08-23 23:47:33', NULL, NULL),
(29, 'OD250824AIKW5P', 600000, 20000, 0, 620000, 1, 'cod', 'Nhà số 5, Xã Nghĩa Mỹ, Thị xã Thái Hoà, Tỉnh Nghệ An', 'Dang Pham', '0394838573', 6, 29, NULL, NULL, NULL, '2025-08-23 02:38:49', '2025-08-23 23:47:30', '2025-08-23 23:46:25', '2025-08-23 23:47:30', NULL, NULL),
(30, 'OD250824VZ9U39', 420000, 20000, 0, 440000, 1, 'cod', 'Nhà số 5, Phường Trung Lương, Thị xã Hồng Lĩnh, Tỉnh Hà Tĩnh', 'Dang Pham', '0394837583', 6, 29, NULL, NULL, NULL, '2025-04-12 10:26:18', '2025-08-23 23:47:26', '2025-08-23 23:46:00', '2025-08-23 23:47:26', NULL, NULL),
(31, 'OD250824QOAU8V', 500000, 20000, 0, 520000, 0, 'cod', 'Nhà số 5, Xã Chí Đám, Huyện Đoan Hùng, Tỉnh Phú Thọ', 'Hong Ha', '0384727274', 3, 30, NULL, NULL, NULL, '2025-06-21 10:15:06', '2025-08-24 00:12:15', NULL, NULL, NULL, NULL),
(32, 'OD250824C6L4BH', 450000, 20000, 0, 470000, 1, 'cod', 'Nhà số 5, Xã Lũng Táo, Huyện Đồng Văn, Tỉnh Hà Giang', 'Hong Ha', '0394837385', 6, 30, NULL, NULL, NULL, '2024-03-22 09:56:35', '2025-08-24 00:12:33', '2025-08-24 00:12:06', '2025-08-24 00:12:33', NULL, NULL),
(33, 'OD2508248HESSV', 850000, 20000, 0, 870000, 1, 'cod', 'Nhà số 5, Xã Chiềng Ngàm, Huyện Thuận Châu, Tỉnh Sơn La', 'Hong Ha', '0394837583', 6, 30, NULL, NULL, NULL, '2025-08-24 08:57:43', '2025-08-24 00:12:30', '2025-08-24 00:11:47', '2025-08-24 00:12:30', NULL, NULL),
(34, 'OD250824LAM4HV', 700000, 20000, 0, 720000, 1, 'cod', 'Nhà số 5, Xã Khang Ninh, Huyện Ba Bể, Tỉnh Bắc Kạn', 'Hong Ha', '0394838573', 6, 30, NULL, NULL, NULL, '2024-12-21 04:58:49', '2025-08-24 00:12:27', '2025-08-24 00:11:27', '2025-08-24 00:12:27', NULL, NULL),
(35, 'OD250824WTDSBG', 720000, 20000, 0, 740000, 1, 'cod', 'Nhà số 5, Phường Na Lay, Thị Xã Mường Lay, Tỉnh Điện Biên', 'Hong Ha', '0384727274', 6, 30, NULL, NULL, NULL, '2025-07-28 12:01:00', '2025-08-24 00:12:24', '2025-08-24 00:11:05', '2025-08-24 00:12:24', NULL, NULL),
(36, 'OD250824U9QYH6', 740000, 20000, 0, 760000, 1, 'cod', 'Nhà số 5, Xã Cư Yên, Huyện Lương Sơn, Tỉnh Hoà Bình', 'Hong Ha', '0394837583', 6, 30, NULL, NULL, NULL, '2024-01-02 11:08:36', '2025-08-24 00:12:21', '2025-08-24 00:10:46', '2025-08-24 00:12:21', NULL, NULL),
(37, 'OD2508243M23IE', 1140000, 20000, 0, 1160000, 1, 'cod', 'Nhà số 5, Xã Thuận Hóa, Huyện Tuyên Hóa, Tỉnh Quảng Bình', 'Hoang An', '0384727274', 6, 31, NULL, NULL, NULL, '2024-03-31 09:40:01', '2025-08-24 00:20:53', '2025-08-24 00:20:28', '2025-08-24 00:20:53', NULL, NULL),
(38, 'OD250824UD0YZN', 750000, 20000, 0, 770000, 1, 'cod', 'Nhà số 5, Xã Trung Nam, Huyện Vĩnh Linh, Tỉnh Quảng Trị', 'Hoang An', '0394837583', 6, 31, NULL, NULL, NULL, '2025-03-24 04:54:18', '2025-08-24 00:20:50', '2025-08-24 00:20:18', '2025-08-24 00:20:50', NULL, NULL),
(39, 'OD250824HPSXLJ', 800000, 20000, 0, 820000, 1, 'cod', 'Nhà số 5, Xã Rô Men, Huyện Đam Rông, Tỉnh Lâm Đồng', 'Hoa An', '0394837385', 6, 31, NULL, NULL, NULL, '2024-06-13 09:31:30', '2025-08-24 00:20:46', '2025-08-24 00:20:07', '2025-08-24 00:20:46', NULL, NULL),
(40, 'OD250824RS2ZZ5', 800000, 20000, 0, 820000, 1, 'cod', 'Nhà số 5, Phường Xuân Hà, Quận Thanh Khê, Thành phố Đà Nẵng', 'Hoang An', '0394837385', 6, 31, NULL, NULL, NULL, '2024-03-20 22:54:36', '2025-08-24 00:20:43', '2025-08-24 00:19:41', '2025-08-24 00:20:43', NULL, NULL),
(41, 'OD250824PYMJOE', 850000, 20000, 0, 870000, 1, 'cod', 'Nhà số 5, Phường Phong Hải, Thị xã Phong Điền, Thành phố Huế', 'Hoa an', '0394837583', 6, 31, NULL, NULL, NULL, '2025-05-24 03:58:36', '2025-08-24 00:20:39', '2025-08-24 00:18:50', '2025-08-24 00:20:39', NULL, NULL),
(42, 'OD250824ACHY4R', 720000, 20000, 0, 740000, 1, 'cod', 'Nhà số 5, Xã Ba, Huyện Đông Giang, Tỉnh Quảng Nam', 'Hoang An', '0384727274', 6, 31, NULL, NULL, NULL, '2025-05-15 13:09:11', '2025-08-24 00:20:36', '2025-08-24 00:19:55', '2025-08-24 00:20:36', NULL, NULL),
(43, 'OD250824UVCYEF', 700000, 20000, 0, 720000, 1, 'cod', 'Nhà số 5, Xã Đắk Kan, Huyện Ngọc Hồi, Tỉnh Kon Tum', 'Tuan kiet', '0394837583', 6, 32, NULL, NULL, NULL, '2025-01-08 19:50:09', '2025-08-24 00:29:49', '2025-08-24 00:29:24', '2025-08-24 00:29:49', NULL, NULL),
(44, 'OD250824ZXTCKA', 860000, 20000, 0, 880000, 1, 'cod', 'Nhà số 5, Phường An Hoà, Thành phố Sa Đéc, Tỉnh Đồng Tháp', 'Tuan kiet', '0392848282', 6, 32, NULL, NULL, NULL, '2025-01-03 01:43:16', '2025-08-24 00:29:45', '2025-08-24 00:29:08', '2025-08-24 00:29:45', NULL, NULL),
(45, 'OD250824W8QI0H', 680000, 20000, 0, 700000, 1, 'cod', 'Nhà số 5, Xã Tâm Thắng, Huyện Cư Jút, Tỉnh Đắk Nông', 'Tuan kiet', '0394837385', 6, 32, NULL, NULL, NULL, '2024-04-27 11:05:54', '2025-08-24 00:29:42', '2025-08-24 00:28:50', '2025-08-24 00:29:42', NULL, NULL),
(46, 'OD250824KDUPDR', 700000, 20000, 0, 720000, 1, 'cod', 'Nhà số 5, Xã Phi Liêng, Huyện Đam Rông, Tỉnh Lâm Đồng', 'Pham Hoang', '0394837583', 6, 32, NULL, NULL, NULL, '2024-03-26 16:19:46', '2025-08-24 00:29:39', '2025-08-24 00:28:34', '2025-08-24 00:29:39', NULL, NULL),
(47, 'OD250824LV52NC', 910000, 20000, 0, 930000, 1, 'cod', 'Nhà số 5, Phường Tam Quan Bắc, Thị xã Hoài Nhơn, Tỉnh Bình Định', 'Tuan Kiet', '0394837583', 6, 32, NULL, NULL, NULL, '2024-03-17 14:21:08', '2025-08-24 00:29:35', '2025-08-24 00:28:17', '2025-08-24 00:29:35', NULL, NULL),
(48, 'OD250824SNEWO5', 1110000, 20000, 0, 1130000, 1, 'cod', 'Nhà số 5, Thị trấn Rạch Gòi, Huyện Châu Thành A, Tỉnh Hậu Giang', 'tuan kiet', '0392848282', 6, 32, NULL, NULL, NULL, '2024-05-06 12:46:23', '2025-08-24 00:29:31', '2025-08-24 00:28:00', '2025-08-24 00:29:31', NULL, NULL),
(49, 'OD250824CNLYOG', 770000, 20000, 0, 790000, 1, 'cod', 'Nhà số 5, Xã Long Mỹ, Huyện Mang Thít, Tỉnh Vĩnh Long', 'Thi Ha', '0392848282', 6, 33, NULL, NULL, NULL, '2025-02-07 10:48:36', '2025-08-24 00:41:00', '2025-08-24 00:40:27', '2025-08-24 00:41:00', NULL, NULL),
(50, 'OD250824K4CPJO', 850000, 20000, 0, 870000, 1, 'cod', 'Nhà số 5, Xã Xuân Quang 1, Huyện Đồng Xuân, Tỉnh Phú Yên', 'Thi ha', '0392848282', 6, 33, NULL, NULL, NULL, '2025-03-10 05:43:51', '2025-08-24 00:40:56', '2025-08-24 00:40:13', '2025-08-24 00:40:56', NULL, NULL),
(51, 'OD250824VOBMHF', 1050000, 20000, 0, 1070000, 1, 'cod', 'Nhà số 5, Xã Sơn Bình, Huyện Châu Đức, Tỉnh Bà Rịa - Vũng Tàu', 'Thi ha', '0394838573', 6, 33, NULL, NULL, NULL, '2024-12-25 10:13:28', '2025-08-24 00:40:51', '2025-08-24 00:39:57', '2025-08-24 00:40:51', NULL, NULL),
(52, 'OD250824NZTJ7H', 940000, 20000, 0, 960000, 1, 'cod', 'Nhà số 5, Xã Trinh Phú, Huyện Kế Sách, Tỉnh Sóc Trăng', 'Thi ha', '0384727274', 6, 33, NULL, NULL, NULL, '2025-05-09 23:55:51', '2025-08-24 00:40:47', '2025-08-24 00:39:43', '2025-08-24 00:40:47', NULL, NULL),
(53, 'OD25082496FHCH', 870000, 20000, 0, 890000, 1, 'cod', 'Nhà số 5, Xã Tân Khánh Đông, Thành phố Sa Đéc, Tỉnh Đồng Tháp', 'Thi ha', '0384727274', 6, 33, NULL, NULL, NULL, '2024-07-12 06:58:54', '2025-08-24 00:40:44', '2025-08-24 00:39:26', '2025-08-24 00:40:44', NULL, NULL),
(54, 'OD2508247ROEB2', 1050000, 20000, 0, 1070000, 1, 'cod', 'Nhà số 5, Xã Lương Hòa, Huyện Châu Thành, Tỉnh Trà Vinh', 'Thi ha', '0394857463', 6, 33, NULL, NULL, NULL, '2024-03-25 01:06:58', '2025-08-24 00:40:39', '2025-08-24 00:39:12', '2025-08-24 00:40:39', NULL, NULL),
(55, 'OD250824ROONSX', 900000, 20000, 0, 920000, 1, 'cod', 'Nhà số 5, Xã Khánh An, Huyện U Minh, Tỉnh Cà Mau', 'Pham lien', '0384727274', 6, 34, NULL, NULL, NULL, '2025-03-18 22:38:11', '2025-08-24 00:57:21', '2025-08-24 00:56:26', '2025-08-24 00:57:21', NULL, NULL),
(56, 'OD250824TOWINQ', 660000, 20000, 0, 680000, 1, 'cod', 'Nhà số 5, Xã Đạ Nhim, Huyện Lạc Dương, Tỉnh Lâm Đồng', 'Pham lien', '0384727274', 6, 34, NULL, NULL, NULL, '2024-06-06 03:50:01', '2025-08-24 00:57:16', '2025-08-24 00:56:09', '2025-08-24 00:57:16', NULL, NULL),
(57, 'OD250824BRTILL', 1250000, 20000, 0, 1270000, 1, 'cod', 'Nhà số 5, Xã Vạn Thọ, Huyện Vạn Ninh, Tỉnh Khánh Hòa', 'Pham lien', '0384727274', 6, 34, NULL, NULL, NULL, '2024-02-29 13:15:34', '2025-08-24 00:57:12', '2025-08-24 00:55:54', '2025-08-24 00:57:12', NULL, NULL),
(58, 'OD250824HRPELI', 890000, 20000, 0, 910000, 1, 'cod', 'Nhà số 5, Xã Kon Gang, Huyện Đăk Đoa, Tỉnh Gia Lai', 'Pham lien', '0394837583', 6, 34, NULL, NULL, NULL, '2025-03-04 20:47:52', '2025-08-24 00:57:08', '2025-08-24 00:55:39', '2025-08-24 00:57:08', NULL, NULL),
(59, 'OD250824QSQUQ1', 1190000, 20000, 0, 1210000, 1, 'cod', 'Nhà số 5, Xã Long Thới, Huyện Chợ Lách, Tỉnh Bến Tre', 'Pham lien', '0394837385', 6, 34, NULL, NULL, NULL, '2024-06-09 06:12:38', '2025-08-24 00:57:05', '2025-08-24 00:55:25', '2025-08-24 00:57:05', NULL, NULL),
(60, 'OD250824OMBDCE', 870000, 20000, 0, 890000, 1, 'cod', 'Nhà số 5, Phường Hưng Phú, Quận Cái Răng, Thành phố Cần Thơ', 'Pham lien', '0392848282', 6, 34, NULL, NULL, NULL, '2024-04-27 06:39:35', '2025-08-24 00:57:00', '2025-08-24 00:55:08', '2025-08-24 00:57:00', NULL, NULL),
(61, 'OD250824BIRDEZ', 1150000, 20000, 0, 1170000, 1, 'cod', 'Nhà số 5, Phường 14, Quận Gò Vấp, Thành phố Hồ Chí Minh', 'Dinh Thinh', '0384727274', 6, 35, NULL, NULL, NULL, '2024-04-16 04:40:04', '2025-08-24 01:07:07', '2025-08-24 01:06:34', '2025-08-24 01:07:07', NULL, NULL),
(62, 'OD250824GILAEX', 950000, 20000, 0, 970000, 1, 'cod', 'Nhà số 5, Xã Phong Thạnh Tây A, Huyện Phước Long, Tỉnh Bạc Liêu', 'Dinh Thinh', '0394837583', 6, 35, NULL, NULL, NULL, '2024-06-28 17:21:38', '2025-08-24 01:07:03', '2025-08-24 01:06:16', '2025-08-24 01:07:03', NULL, NULL),
(63, 'OD250824SVKJYD', 940000, 20000, 0, 960000, 1, 'cod', 'Nhà số 5, Xã Vĩnh Thạnh, Huyện Tân Hưng, Tỉnh Long An', 'Dinh Thinh', '0394847545', 6, 35, NULL, NULL, NULL, '2025-08-03 14:48:00', '2025-08-24 01:07:00', '2025-08-24 01:05:55', '2025-08-24 01:07:00', NULL, NULL),
(64, 'OD250824V6E38S', 870000, 20000, 0, 890000, 1, 'cod', 'Nhà số 7, Xã Phú Hội, Huyện An Phú, Tỉnh An Giang', 'Dinh Thinh', '0384727274', 6, 35, NULL, NULL, NULL, '2025-07-12 11:55:07', '2025-08-24 01:06:56', '2025-08-24 01:05:39', '2025-08-24 01:06:56', NULL, NULL),
(65, 'OD2508245EKIZ5', 1220000, 20000, 0, 1240000, 1, 'cod', 'Nhà số 5, Phường Suối Tre, Thành phố Long Khánh, Tỉnh Đồng Nai', 'Dinh Thinh', '0384727274', 6, 35, NULL, NULL, NULL, '2025-03-25 05:11:36', '2025-08-24 01:06:52', '2025-08-24 01:05:22', '2025-08-24 01:06:52', NULL, NULL),
(66, 'OD250824P8F1M5', 1000000, 20000, 0, 1020000, 1, 'cod', 'Nhà số 5, Xã Tân Thành, Thành phố Đồng Xoài, Tỉnh Bình Phước', 'Dinh Thinh', '0384727274', 6, 35, NULL, NULL, NULL, '2025-07-25 04:12:44', '2025-08-24 01:06:48', '2025-08-24 01:05:03', '2025-08-24 01:06:48', NULL, NULL),
(67, 'OD250824IDRMLV', 842000, 20000, 0, 862000, 1, 'cod', 'Nhà số 5, Xã Cao Sơn, Huyện Lương Sơn, Tỉnh Hoà Bình', 'linh nam', '0394837583', 6, 36, NULL, NULL, NULL, '2024-10-31 19:28:54', '2025-08-24 01:22:44', '2025-08-24 01:22:16', '2025-08-24 01:22:44', NULL, NULL),
(68, 'OD250824SPFT1K', 820000, 20000, 0, 840000, 1, 'cod', 'Nhà số 5, Xã Cao Sơn, Huyện Lương Sơn, Tỉnh Hoà Bình', 'linh nam', '0394837583', 6, 36, NULL, NULL, NULL, '2025-02-17 02:46:21', '2025-08-24 01:22:40', '2025-08-24 01:21:57', '2025-08-24 01:22:40', NULL, NULL),
(69, 'OD250824IZLOZZ', 890000, 20000, 0, 910000, 1, 'cod', 'Nhà số 5, Xã Minh Chuẩn, Huyện Lục Yên, Tỉnh Yên Bái', 'linh nam', '0392848282', 6, 36, NULL, NULL, NULL, '2025-07-03 17:25:05', '2025-08-24 01:22:36', '2025-08-24 01:21:36', '2025-08-24 01:22:36', NULL, NULL),
(70, 'OD250824BEK5XX', 1220000, 20000, 0, 1240000, 1, 'cod', 'Nhà số 5, Thị trấn Vân Tùng, Huyện Ngân Sơn, Tỉnh Bắc Kạn', 'linh nam', '0394847454', 6, 36, NULL, NULL, NULL, '2024-11-01 20:46:24', '2025-08-24 01:22:32', '2025-08-24 01:21:17', '2025-08-24 01:22:32', NULL, NULL),
(71, 'OD250824X608K0', 1150000, 20000, 0, 1170000, 1, 'cod', 'Nhà số 5, Xã Nậm Giải, Huyện Quế Phong, Tỉnh Nghệ An', 'linh nam', '0384727274', 6, 36, NULL, NULL, NULL, '2025-04-27 17:36:48', '2025-08-24 01:22:27', '2025-08-24 01:20:57', '2025-08-24 01:22:27', NULL, NULL),
(72, 'OD250824K0YNOI', 990000, 20000, 0, 1010000, 1, 'cod', 'Nhà số 7, Xã Đồng Tâm, Huyện Yên Thế, Tỉnh Bắc Giang', 'linh nam', '0392848282', 6, 36, NULL, NULL, NULL, '2024-10-19 15:44:51', '2025-08-24 01:22:24', '2025-08-24 01:20:40', '2025-08-24 01:22:24', NULL, NULL),
(73, 'OD250824JF7KGE', 690000, 20000, 0, 710000, 1, 'cod', 'Nhà số 5, Xã Hòa Tiến, Huyện Hưng Hà, Tỉnh Thái Bình', 'hong bang', '0384727274', 6, 37, NULL, NULL, NULL, '2024-01-16 15:53:52', '2025-08-24 01:30:52', '2025-08-24 01:30:27', '2025-08-24 01:30:52', NULL, NULL),
(74, 'OD250824XATNCB', 740000, 20000, 0, 760000, 1, 'cod', 'Nhà số 5, Xã Gia Phú, Huyện Gia Viễn, Tỉnh Ninh Bình', 'hong bang', '0384727274', 6, 37, NULL, NULL, NULL, '2025-02-08 22:14:49', '2025-08-24 01:30:49', '2025-08-24 01:30:09', '2025-08-24 01:30:49', NULL, NULL),
(75, 'OD250824EPDRBQ', 820000, 20000, 0, 840000, 1, 'cod', 'Nhà số 5, Phường Hàng Kênh, Quận Lê Chân, Thành phố Hải Phòng', 'hong bang', '0384727274', 6, 37, NULL, NULL, NULL, '2024-06-21 05:32:30', '2025-08-24 01:30:46', '2025-08-24 01:29:49', '2025-08-24 01:30:46', NULL, NULL),
(76, 'OD250824VOTNSC', 970000, 20000, 0, 990000, 1, 'cod', 'Nhà số 5, Xã Tri Phương, Huyện Tràng Định, Tỉnh Lạng Sơn', 'hong bang', '0392848282', 6, 37, NULL, NULL, NULL, '2024-09-05 22:58:06', '2025-08-24 01:30:42', '2025-08-24 01:29:28', '2025-08-24 01:30:42', NULL, NULL),
(77, 'OD250824E30QHE', 940000, 20000, 0, 960000, 1, 'cod', 'Nhà số 5, Xã Nam Mẫu, Huyện Ba Bể, Tỉnh Bắc Kạn', 'hong bang', '0384727274', 6, 37, NULL, NULL, NULL, '2024-05-06 16:13:00', '2025-08-24 01:30:39', '2025-08-24 01:29:09', '2025-08-24 01:30:39', NULL, NULL),
(78, 'OD250824EZGI5G', 750000, 20000, 0, 770000, 1, 'cod', 'Nhà số 5, Xã Hóa Hợp, Huyện Minh Hóa, Tỉnh Quảng Bình', 'hong bang', '0392848282', 6, 37, NULL, NULL, NULL, '2025-05-04 02:10:45', '2025-08-24 01:30:35', '2025-08-24 01:28:50', '2025-08-24 01:30:35', NULL, NULL),
(79, 'OD250824COYPMH', 1140000, 20000, 0, 1160000, 1, 'cod', 'Nhà số 5, Xã Pa Vệ Sử, Huyện Mường Tè, Tỉnh Lai Châu', 'thien linh', '0392848282', 6, 38, NULL, NULL, NULL, '2024-09-17 00:14:47', '2025-08-24 01:39:08', '2025-08-24 01:38:38', '2025-08-24 01:39:08', NULL, NULL),
(80, 'OD250824Z8OLOQ', 640000, 20000, 0, 660000, 1, 'cod', 'Nhà số 5, Phường Phong Hòa, Thị xã Phong Điền, Thành phố Huế', 'thien linh', '0394837385', 6, 38, NULL, NULL, NULL, '2025-03-11 08:41:44', '2025-08-24 01:39:04', '2025-08-24 01:38:24', '2025-08-24 01:39:04', NULL, NULL),
(81, 'OD2508249DSFHI', 700000, 20000, 0, 720000, 1, 'cod', 'Nhà số 5, Phường Bắc Hồng, Thị xã Hồng Lĩnh, Tỉnh Hà Tĩnh', 'thien linh', '0384727274', 6, 38, NULL, NULL, NULL, '2024-07-12 08:44:19', '2025-08-24 01:39:00', '2025-08-24 01:38:04', '2025-08-24 01:39:00', NULL, NULL),
(82, 'OD250824VLD1YQ', 750000, 20000, 0, 770000, 1, 'cod', 'Nhà số 5, Xã Phúc Hòa, Huyện Tân Yên, Tỉnh Bắc Giang', 'thien linh', '0394838573', 6, 38, NULL, NULL, NULL, '2024-09-20 07:36:26', '2025-08-24 01:38:55', '2025-08-24 01:37:49', '2025-08-24 01:38:55', NULL, NULL),
(83, 'OD250824UXU2YX', 840000, 20000, 0, 860000, 1, 'cod', 'Nhà số 5, Xã Cao Minh, Thành phố Phúc Yên, Tỉnh Vĩnh Phúc', 'thien linh', '0394837385', 6, 38, NULL, NULL, NULL, '2024-05-15 01:49:14', '2025-08-24 01:38:51', '2025-08-24 01:37:36', '2025-08-24 01:38:51', NULL, NULL),
(84, 'OD250824B5T5NC', 400000, 20000, 0, 420000, 1, 'cod', 'Nhà số 5, Xã Pa Vệ Sử, Huyện Mường Tè, Tỉnh Lai Châu', 'thien linh', '0392848282', 6, 38, NULL, NULL, NULL, '2025-05-03 00:16:54', '2025-08-24 01:38:48', '2025-08-24 01:37:21', '2025-08-24 01:38:48', NULL, NULL),
(85, 'OD25082488RY7U', 200000, 20000, 0, 220000, 1, 'cod', 'Nhà số 5, Xã Minh Chuẩn, Huyện Lục Yên, Tỉnh Yên Bái', 'Pham dat', '0394837583', 6, 39, NULL, NULL, NULL, '2024-08-17 09:56:51', '2025-08-24 02:11:19', '2025-08-24 02:10:48', '2025-08-24 02:11:19', NULL, NULL),
(86, 'OD250824FZQMNW', 450000, 20000, 0, 470000, 1, 'cod', 'Nhà số 5, Xã Minh Chuẩn, Huyện Lục Yên, Tỉnh Yên Bái', 'Pham dat', '0394837583', 6, 39, NULL, NULL, NULL, '2024-10-12 14:53:34', '2025-08-24 02:11:15', '2025-08-24 02:10:34', '2025-08-24 02:11:15', NULL, NULL),
(87, 'OD250824BJQRDU', 200000, 20000, 0, 220000, 1, 'cod', 'Nhà số 5, Xã Minh Chuẩn, Huyện Lục Yên, Tỉnh Yên Bái', 'Pham dat', '0394837583', 6, 39, NULL, NULL, NULL, '2024-05-18 10:37:18', '2025-08-24 02:11:12', '2025-08-24 02:10:18', '2025-08-24 02:11:12', NULL, NULL),
(88, 'OD250824GHKV9R', 400000, 20000, 0, 420000, 1, 'cod', 'Nhà số 5, Xã Minh Chuẩn, Huyện Lục Yên, Tỉnh Yên Bái', 'Pham dat', '0394837583', 6, 39, NULL, NULL, NULL, '2025-03-13 22:25:53', '2025-08-24 02:11:09', '2025-08-24 02:10:04', '2025-08-24 02:11:09', NULL, NULL),
(89, 'OD250824KLEGS2', 200000, 20000, 0, 220000, 1, 'cod', 'Nhà số 5, Xã Minh Chuẩn, Huyện Lục Yên, Tỉnh Yên Bái', 'Pham dat', '0394837583', 6, 39, NULL, NULL, NULL, '2025-07-24 22:17:31', '2025-08-24 02:11:05', '2025-08-24 02:09:50', '2025-08-24 02:11:05', NULL, NULL),
(90, 'OD250824JXG1GM', 400000, 20000, 0, 420000, 1, 'cod', 'Nhà số 5, Xã Minh Chuẩn, Huyện Lục Yên, Tỉnh Yên Bái', 'Pham dat', '0394837583', 6, 39, NULL, NULL, NULL, '2024-12-03 10:09:59', '2025-08-24 02:11:02', '2025-08-24 02:09:37', '2025-08-24 02:11:02', NULL, NULL),
(91, 'OD2508243YLBI1', 350000, 20000, 0, 370000, 1, 'cod', 'Nhà số 5, Xã Minh Chuẩn, Huyện Lục Yên, Tỉnh Yên Bái', 'Pham dat', '0394837583', 6, 39, NULL, NULL, NULL, '2025-07-30 21:57:25', '2025-08-24 02:10:59', '2025-08-24 02:09:24', '2025-08-24 02:10:59', NULL, NULL),
(92, 'OD250824XKGOPN', 200000, 20000, 0, 220000, 1, 'cod', 'Nhà số 5, Phường Xuân La, Quận Tây Hồ, Thành phố Hà Nội', 'tuan', '0384727274', 6, 40, NULL, NULL, NULL, '2024-03-07 21:17:11', '2025-08-24 02:30:34', '2025-08-24 02:17:35', '2025-08-24 02:30:34', NULL, NULL),
(93, 'OD250824Q0I2EH', 250000, 20000, 0, 270000, 1, 'cod', 'Nhà số 5, Phường Xuân La, Quận Tây Hồ, Thành phố Hà Nội', 'tuan', '0384727274', 6, 40, NULL, NULL, NULL, '2025-02-14 06:33:40', '2025-08-24 02:30:30', '2025-08-24 02:17:23', '2025-08-24 02:30:30', NULL, NULL),
(94, 'OD2508249OJJYI', 200000, 20000, 0, 220000, 1, 'cod', 'Nhà số 5, Phường Xuân La, Quận Tây Hồ, Thành phố Hà Nội', 'tuan', '0384727274', 6, 40, NULL, NULL, NULL, '2024-02-15 06:56:48', '2025-08-24 02:30:27', '2025-08-24 02:16:59', '2025-08-24 02:30:27', NULL, NULL),
(95, 'OD250824OC8HA3', 200000, 20000, 0, 220000, 1, 'cod', 'Nhà số 5, Phường Xuân La, Quận Tây Hồ, Thành phố Hà Nội', 'tuan', '0384727274', 6, 40, NULL, NULL, NULL, '2024-07-19 05:03:05', '2025-08-24 02:30:25', '2025-08-24 02:16:44', '2025-08-24 02:30:25', NULL, NULL),
(96, 'OD250824YVRCL6', 450000, 20000, 0, 470000, 1, 'cod', 'Nhà số 5, Phường Xuân La, Quận Tây Hồ, Thành phố Hà Nội', 'tuan', '0384727274', 6, 40, NULL, NULL, NULL, '2024-09-20 18:25:02', '2025-08-24 02:30:22', '2025-08-24 02:16:30', '2025-08-24 02:30:22', NULL, NULL),
(97, 'OD250824DX6DJE', 340000, 20000, 0, 360000, 1, 'cod', 'Nhà số 5, Phường Xuân La, Quận Tây Hồ, Thành phố Hà Nội', 'tuan', '0384727274', 6, 40, NULL, NULL, NULL, '2024-04-26 18:55:56', '2025-08-24 02:30:19', '2025-08-24 02:16:16', '2025-08-24 02:30:19', NULL, NULL),
(98, 'OD250824X066RC', 450000, 20000, 0, 470000, 1, 'cod', 'Nhà số 5, Phường Xuân La, Quận Tây Hồ, Thành phố Hà Nội', 'tuan', '0384727274', 6, 40, NULL, NULL, NULL, '2025-01-30 05:24:38', '2025-08-24 02:30:16', '2025-08-24 02:15:59', '2025-08-24 02:30:16', NULL, NULL),
(99, 'OD250824JQYJHD', 340000, 20000, 0, 360000, 1, 'cod', 'Nhà số 5, Phường Xuân La, Quận Tây Hồ, Thành phố Hà Nội', 'tuan', '0384727274', 6, 40, NULL, NULL, NULL, '2025-02-26 08:15:24', '2025-08-24 02:30:13', '2025-08-24 02:15:45', '2025-08-24 02:30:13', NULL, NULL),
(100, 'OD250824N9DC7N', 350000, 20000, 0, 370000, 1, 'cod', 'Nhà số 5, Phường Xuân La, Quận Tây Hồ, Thành phố Hà Nội', 'tuan', '0384727274', 6, 40, NULL, NULL, NULL, '2024-11-20 15:03:08', '2025-08-24 02:30:10', '2025-08-24 02:15:30', '2025-08-24 02:30:10', NULL, NULL),
(101, 'OD250824OB4OHK', 200000, 20000, 0, 220000, 1, 'cod', 'Nhà số 5, Phường Xuân La, Quận Tây Hồ, Thành phố Hà Nội', 'tuan', '0384727274', 6, 40, NULL, NULL, NULL, '2024-12-22 16:29:32', '2025-08-24 02:30:07', '2025-07-16 02:15:11', '2025-08-24 02:30:07', NULL, NULL),
(102, 'OD250825ISJFWD', 200000, 20000, 0, 220000, 1, 'vnpay', '`112sada, Xã Vĩnh Quang, Huyện Bảo Lâm, Tỉnh Cao Bằng', 'Nam Dinh Phạm', '0396036363', 4, 41, '15147881', 'NCB', 'OD250825ISJFWD-VNPPFSKFII9T', '2025-08-25 06:57:48', '2025-08-25 07:01:17', '2025-08-25 07:01:17', NULL, '2025-08-25 06:57:50', NULL),
(103, 'OD250825BCAHNJ', 300000, 20000, 0, 320000, 0, 'vnpay', '`112sada, Xã Vĩnh Quang, Huyện Bảo Lâm, Tỉnh Cao Bằng', 'Nam Dinh Phạm', '0396036363', 7, 41, NULL, NULL, NULL, '2025-08-25 07:01:40', '2025-08-25 07:01:40', NULL, NULL, NULL, NULL),
(104, 'OD250825Q5UWSJ', 250000, 20000, 0, 270000, 3, 'vnpay', '`112sada, Xã Vĩnh Quang, Huyện Bảo Lâm, Tỉnh Cao Bằng', 'Nam Dinh Phạm', '0396036363', 7, 41, '15147893', 'NCB', 'OD250825Q5UWSJ-VNPP9RNE3BUA', '2025-08-25 07:02:00', '2025-08-25 07:03:54', '2025-08-25 07:03:43', NULL, '2025-08-25 07:02:11', '2025-08-25 07:03:54'),
(105, 'OD2508253XJA6S', 440000, 20000, 5000, 455000, 1, 'cod', '`112sada, Xã Vĩnh Quang, Huyện Bảo Lâm, Tỉnh Cao Bằng', 'Nam Dinh Phạm', '0396036363', 6, 41, NULL, NULL, NULL, '2025-08-25 07:21:16', '2025-08-25 07:23:27', '2025-08-25 07:23:17', '2025-08-25 07:23:27', NULL, NULL),
(106, 'OD250825UUW5MX', 200000, 20000, 5000, 215000, 1, 'cod', '`112sada, Xã Vĩnh Quang, Huyện Bảo Lâm, Tỉnh Cao Bằng', 'Nam Dinh Phạm', '0396036363', 6, 41, NULL, NULL, NULL, '2025-08-25 07:28:00', '2025-08-25 07:29:17', '2025-08-25 07:29:00', '2025-08-25 07:29:17', NULL, NULL),
(107, 'OD250825ZJWHUQ', 220000, 20000, 5000, 235000, 1, 'cod', '`112sada, Xã Vĩnh Quang, Huyện Bảo Lâm, Tỉnh Cao Bằng', 'Nam Dinh Phạm', '0396036363', 6, 41, NULL, NULL, NULL, '2025-08-25 07:45:46', '2025-08-25 07:47:08', '2025-08-25 07:46:54', '2025-08-25 07:47:08', NULL, NULL),
(108, 'OD250826NTE67V', 600000, 20000, 0, 620000, 1, 'vnpay', '`112sada, Xã Vĩnh Quang, Huyện Bảo Lâm, Tỉnh Cao Bằng', 'Nam Dinh Phạm', '0396036363', 1, 41, '15148309', 'NCB', 'OD250826NTE67V-VNPNHPAWNOBR', '2025-08-25 10:22:21', '2025-08-25 10:23:31', '2025-08-25 10:24:24', NULL, '2025-08-25 10:22:36', NULL),
(109, 'OD250826CBYYUM', 440000, 20000, 0, 460000, 3, 'vnpay', '`112sada, Xã Vĩnh Quang, Huyện Bảo Lâm, Tỉnh Cao Bằng', 'Nam Dinh Phạm', '0396036363', 7, 41, '15148314', 'NCB', 'OD250826CBYYUM-VNPLKAHBLUNK', '2025-08-25 10:24:26', '2025-08-25 10:26:37', '2025-08-25 10:26:00', NULL, '2025-08-25 10:24:30', '2025-08-25 10:26:37'),
(110, 'OD250826QJUVZJ', 220000, 20000, 0, 240000, 1, 'cod', '234 Phạm Văn Đồng, Xã Má Lé, Huyện Đồng Văn, Tỉnh Hà Giang', 'Cuong Pham', '0898645512', 6, 23, NULL, NULL, NULL, '2025-07-29 10:55:55', '2025-08-25 10:56:37', '2025-08-25 10:56:33', '2025-08-25 10:56:37', NULL, NULL),
(111, 'OD250826AMVIRQ', 280000, 20000, 0, 300000, 1, 'cod', '234 Phạm Văn Đồng, Xã Má Lé, Huyện Đồng Văn, Tỉnh Hà Giang', 'Cuong Pham', '0898645512', 6, 23, NULL, NULL, NULL, '2025-07-31 10:58:33', '2025-08-25 10:59:00', '2025-08-25 10:58:56', '2025-08-25 10:59:00', NULL, NULL),
(112, 'OD2508267GLES9', 320000, 20000, 0, 340000, 1, 'cod', '234 Phạm Văn Đồng, Xã Má Lé, Huyện Đồng Văn, Tỉnh Hà Giang', 'Cuong Pham', '0898645512', 6, 23, NULL, NULL, NULL, '2025-08-01 10:59:19', '2025-08-25 11:00:41', '2025-08-25 11:00:37', '2025-08-25 11:00:41', NULL, NULL),
(113, 'OD250826WWTZRV', 200000, 20000, 0, 220000, 1, 'cod', '27A1-A, Phường Phường Đúc, Quận Thuận Hóa, Thành phố Huế', 'Cuong Pham', '0898645512', 6, 23, NULL, NULL, NULL, '2025-08-02 11:01:31', '2025-08-25 11:01:58', '2025-08-25 11:01:52', '2025-08-25 11:01:58', NULL, NULL),
(114, 'OD250826KUS4VP', 600000, 20000, 0, 620000, 1, 'cod', '27A1-A, Phường Phường Đúc, Quận Thuận Hóa, Thành phố Huế', 'Cuong Pham', '0898645512', 6, 23, NULL, NULL, NULL, '2025-08-04 11:03:25', '2025-08-25 11:03:50', '2025-08-25 11:03:47', '2025-08-25 11:03:50', NULL, NULL),
(115, 'OD2508264JUOYT', 420000, 20000, 0, 440000, 1, 'cod', '27A1-A, Phường Phường Đúc, Quận Thuận Hóa, Thành phố Huế', 'Cuong Pham', '0898645512', 6, 23, NULL, NULL, NULL, '2025-08-05 11:04:09', '2025-08-25 11:04:33', '2025-08-25 11:04:29', '2025-08-25 11:04:33', NULL, NULL),
(116, 'OD25082649RDUX', 600000, 20000, 18000, 602000, 1, 'cod', '27A1-A, Phường Phường Đúc, Quận Thuận Hóa, Thành phố Huế', 'Cuong Pham', '0898645512', 6, 23, NULL, NULL, NULL, '2025-08-06 11:05:56', '2025-08-25 11:06:30', '2025-08-25 11:06:27', '2025-08-25 11:06:30', NULL, NULL),
(117, 'OD250826EUAGDT', 450000, 20000, 13500, 456500, 1, 'cod', '27A1-A, Phường Phường Đúc, Quận Thuận Hóa, Thành phố Huế', 'Cuong Pham', '0898645512', 6, 23, NULL, NULL, NULL, '2025-08-07 11:07:06', '2025-08-25 11:07:51', '2025-08-25 11:07:28', '2025-08-25 11:07:51', NULL, NULL),
(118, 'OD250826YWV03E', 400000, 20000, 12000, 408000, 1, 'cod', '27A1-A, Phường Phường Đúc, Quận Thuận Hóa, Thành phố Huế', 'Cuong Pham', '0898645512', 6, 23, NULL, NULL, NULL, '2025-08-08 11:07:46', '2025-08-25 11:08:17', '2025-08-25 11:08:13', '2025-08-25 11:08:17', NULL, NULL),
(119, 'OD250826FPQSRX', 220000, 20000, 6600, 233400, 1, 'cod', '27A1-A, Phường Phường Đúc, Quận Thuận Hóa, Thành phố Huế', 'Cuong Pham', '0898645512', 6, 23, NULL, NULL, NULL, '2025-08-09 11:08:42', '2025-08-25 11:11:20', '2025-08-25 11:10:49', '2025-08-25 11:11:20', NULL, NULL),
(120, 'OD250826NGJGB0', 280000, 20000, 8400, 291600, 1, 'cod', '27A1-A, Phường Phường Đúc, Quận Thuận Hóa, Thành phố Huế', 'Cuong Pham', '0898645512', 6, 23, NULL, NULL, NULL, '2025-08-10 11:10:17', '2025-08-25 11:11:13', '2025-08-25 11:11:06', '2025-08-25 11:11:13', NULL, NULL),
(121, 'OD250826DFWNWV', 400000, 20000, 12000, 408000, 1, 'cod', '27A1-A, Phường Phường Đúc, Quận Thuận Hóa, Thành phố Huế', 'Cuong Pham', '0898645512', 6, 23, NULL, NULL, NULL, '2025-08-11 11:14:37', '2025-08-25 11:26:58', '2025-08-25 11:15:00', '2025-08-25 11:26:58', NULL, NULL),
(122, 'OD250826FMRVO5', 220000, 20000, 6600, 233400, 1, 'cod', '27A1-A, Phường Phường Đúc, Quận Thuận Hóa, Thành phố Huế', 'Cuong Pham', '0898645512', 6, 23, NULL, NULL, NULL, '2025-08-12 11:15:16', '2025-08-25 11:27:04', '2025-08-25 11:15:37', '2025-08-25 11:27:04', NULL, NULL),
(123, 'OD250826MXOOJ8', 400000, 20000, 12000, 408000, 1, 'cod', '27A1-A, Phường Phường Đúc, Quận Thuận Hóa, Thành phố Huế', 'Cuong Pham', '0898645512', 6, 23, NULL, NULL, NULL, '2025-08-13 11:15:47', '2025-08-25 11:27:09', '2025-08-25 11:16:17', '2025-08-25 11:27:09', NULL, NULL),
(124, 'OD2508261XHXGA', 200000, 20000, 6000, 214000, 1, 'cod', '27A1-A, Phường Phường Đúc, Quận Thuận Hóa, Thành phố Huế', 'Cuong Pham', '0898645512', 6, 23, NULL, NULL, NULL, '2025-08-14 11:22:02', '2025-08-25 11:27:14', '2025-08-25 11:22:46', '2025-08-25 11:27:14', NULL, NULL),
(125, 'OD250826UREA0N', 510000, 20000, 15300, 514700, 1, 'cod', '27A1-A, Phường Phường Đúc, Quận Thuận Hóa, Thành phố Huế', 'Cuong Pham', '0898645512', 6, 23, NULL, NULL, NULL, '2025-08-15 11:23:12', '2025-08-25 11:27:21', '2025-08-25 11:26:17', '2025-08-25 11:27:21', NULL, NULL),
(126, 'OD250826O8W0SL', 200000, 20000, 6000, 214000, 1, 'cod', '27A1-A, Phường Phường Đúc, Quận Thuận Hóa, Thành phố Huế', 'Cuong Pham', '0898645512', 6, 23, NULL, NULL, NULL, '2025-08-16 11:24:02', '2025-08-25 11:27:27', '2025-08-25 11:26:41', '2025-08-25 11:27:27', NULL, NULL),
(127, 'OD250826VC0GEP', 220000, 20000, 6600, 233400, 1, 'cod', '27A1-A, Phường Phường Đúc, Quận Thuận Hóa, Thành phố Huế', 'Cuong Pham', '0898645512', 6, 23, NULL, NULL, NULL, '2025-08-17 11:26:03', '2025-08-25 11:27:36', '2025-08-25 11:26:50', '2025-08-25 11:27:36', NULL, NULL),
(128, 'OD250826FUMXLK', 200000, 20000, 10000, 210000, 1, 'cod', '27A1-A, Phường Phường Đúc, Quận Thuận Hóa, Thành phố Huế', 'Cuong Pham', '0898645512', 6, 23, NULL, NULL, NULL, '2025-08-18 11:28:44', '2025-08-25 11:31:12', '2025-08-25 11:29:59', '2025-08-25 11:31:12', NULL, NULL),
(129, 'OD250826CFMP8G', 420000, 20000, 21000, 419000, 1, 'cod', '27A1-A, Phường Phường Đúc, Quận Thuận Hóa, Thành phố Huế', 'Cuong Pham', '0898645512', 6, 23, NULL, NULL, NULL, '2025-08-19 11:29:02', '2025-08-25 11:31:16', '2025-08-25 11:30:39', '2025-08-25 11:31:16', NULL, NULL),
(130, 'OD250826C1QNFC', 280000, 20000, 14000, 286000, 1, 'cod', '27A1-A, Phường Phường Đúc, Quận Thuận Hóa, Thành phố Huế', 'Cuong Pham', '0898645512', 6, 23, NULL, NULL, NULL, '2025-08-20 11:29:14', '2025-08-25 11:31:23', '2025-08-25 11:30:24', '2025-08-25 11:31:23', NULL, NULL),
(131, 'OD250826BAFCRK', 200000, 20000, 0, 220000, 1, 'cod', '234 rừng thông, Xã Mường Lý, Huyện Mường Lát, Tỉnh Thanh Hóa', 'Cuong Pham', '0898645512', 6, 42, NULL, NULL, NULL, '2025-08-21 11:47:23', '2025-08-25 11:47:56', '2025-08-25 11:47:51', '2025-08-25 11:47:56', NULL, NULL),
(132, 'OD250826OSA7EZ', 250000, 20000, 0, 270000, 1, 'cod', '234 rừng thông, Xã Mường Lý, Huyện Mường Lát, Tỉnh Thanh Hóa', 'Cuong Pham', '0898645512', 6, 42, NULL, NULL, NULL, '2025-08-21 11:58:49', '2025-08-25 11:59:43', '2025-08-25 11:59:16', '2025-08-25 11:59:43', NULL, NULL),
(133, 'OD2508262DXIFD', 200000, 20000, 0, 220000, 1, 'cod', '234 rừng thông, Xã Mường Lý, Huyện Mường Lát, Tỉnh Thanh Hóa', 'Cuong Pham', '0898645512', 6, 42, NULL, NULL, NULL, '2025-08-21 12:00:13', '2025-08-25 12:00:40', '2025-08-25 12:00:34', '2025-08-25 12:00:40', NULL, NULL),
(134, 'OD250902JCJGAM', 290000, 20000, 14500, 295500, 0, 'vnpay', '27A1-A, Phường Phường Đúc, Quận Thuận Hóa, Thành phố Huế', 'Cuong Pham', '0898645512', 7, 23, NULL, NULL, NULL, '2025-09-02 14:46:43', '2025-09-02 14:49:39', NULL, NULL, NULL, NULL),
(135, 'OD250902DYSAAE', 250000, 20000, 12500, 257500, 3, 'vnpay', '27A1-A, Phường Phường Đúc, Quận Thuận Hóa, Thành phố Huế', 'Cuong Pham', '0898645512', 7, 23, '15155981', 'NCB', 'OD250902DYSAAE-VNPVQC5VFQIJ', '2025-09-02 14:51:34', '2025-09-02 15:21:11', '2025-09-02 15:06:33', NULL, '2025-09-02 15:04:26', '2025-09-02 15:21:11');

--
-- Triggers `orders`
--
DELIMITER $$
CREATE TRIGGER `after_update_order_status` AFTER UPDATE ON `orders` FOR EACH ROW BEGIN
                DECLARE earned_point INT DEFAULT 0;

                -- Chỉ cộng điểm khi đơn hàng chuyển sang trạng thái hoàn tất (6) 
                IF (NEW.status_order_id = 6 AND OLD.status_order_id <> NEW.status_order_id) THEN
                    SET earned_point =  FLOOR((NEW.total_amount - NEW.shipping_price) / 10000);

                    UPDATE member_points mp
                    SET 
                        mp.point = @new_point := mp.point + earned_point,
                        mp.last_order_date = NEW.created_at,
                        mp.rank = CASE
                            WHEN @new_point >= 1000 THEN "diamond"
                            WHEN @new_point >= 500 THEN "gold"
                            WHEN @new_point >= 200 THEN "silver"
                            ELSE "bronze"
                        END,
                        mp.value = CASE
                            WHEN @new_point >= 1000 THEN 10
                            WHEN @new_point >= 500 THEN 5
                            WHEN @new_point >= 200 THEN 3
                            ELSE 0
                        END
                    WHERE mp.user_id = NEW.user_id;
                END IF;
            END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `before_update_order_status_success` BEFORE UPDATE ON `orders` FOR EACH ROW BEGIN
                IF NEW.status_order_id = 6 AND OLD.status_order_id <> 6 THEN
                    SET NEW.success_at = NOW();
                END IF;
            END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `update_success_at_on_status_change` BEFORE UPDATE ON `orders` FOR EACH ROW BEGIN
            IF OLD.status_order_id = 4 AND NEW.status_order_id = 6 THEN
                SET NEW.success_at = NOW();
            END IF;
        END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `orders_detail`
--

CREATE TABLE `orders_detail` (
  `id` bigint UNSIGNED NOT NULL,
  `quantity` int UNSIGNED NOT NULL,
  `price` int UNSIGNED NOT NULL,
  `sale_price` int UNSIGNED NOT NULL,
  `sale_percent` tinyint UNSIGNED NOT NULL,
  `image_product` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_product` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_item_id` bigint UNSIGNED DEFAULT NULL,
  `order_id` bigint UNSIGNED NOT NULL,
  `restocked` tinyint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders_detail`
--

INSERT INTO `orders_detail` (`id`, `quantity`, `price`, `sale_price`, `sale_percent`, `image_product`, `color`, `size`, `name_product`, `product_item_id`, `order_id`, `restocked`, `created_at`, `updated_at`) VALUES
(1, 1, 450000, 390000, 13, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/94/yle3x5svmvfn3pbzcqsu', 'Trắng', 'S', 'Đầm thun nữ sọc ngang dáng suông túi 2 bên regular', 411, 1, 0, '2025-08-23 22:49:07', '2025-08-23 22:49:07'),
(2, 1, 300000, 250000, 17, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/91/z57oxgmpfwt17slr6suc', 'Đen', 'S', 'Đầm nữ cộc tay cotton xẻ tà form a line', 401, 1, 0, '2025-08-23 22:49:07', '2025-08-23 22:49:07'),
(3, 1, 300000, 300000, 0, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/4/dffpzl434dii9qlztqne', 'Trắng', 'M', 'Áo polo nam sợi Cafe phối cổ. Fitted', 19, 2, 0, '2025-08-23 22:55:48', '2025-08-23 22:55:48'),
(4, 1, 500000, 300000, 40, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/25/wh8wtuuo5bwhrztnmvl4', 'Đen', 'L', 'Áo khoác nam dài tay chần bông có túi form loose', 141, 3, 0, '2025-08-23 22:56:47', '2025-08-23 22:56:47'),
(5, 1, 400000, 340000, 15, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/63/iclbuasw0n3j1hezswrq', 'Đen', '32', 'Quần Tây Nam Dài Ủi Ly Phía Trước Form Slim', 299, 4, 0, '2025-08-23 22:58:30', '2025-08-23 22:58:30'),
(6, 1, 250000, 150000, 40, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/39/j95wr64qqwidtuhhxuvm', 'Trắng', 'L', 'Áo sơ mi nam ít nhăn thoáng khí. Fitted', 200, 5, 0, '2025-08-23 23:00:35', '2025-08-23 23:00:35'),
(7, 1, 450000, 420000, 7, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/125/g8xiu9p8k5rtjzuxxywl', 'Trắng', '29', 'Quần Jeans Nữ Trắng Thêu Nhỏ Ống Loe Form Flared', 562, 6, 0, '2025-08-23 23:01:15', '2025-08-23 23:01:15'),
(8, 1, 300000, 250000, 17, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/92/iabk419xsygcsikh2bia', 'Đen', 'M', 'Đầm nữ thun ôm tay dài lệch vai form A Line', 406, 7, 0, '2025-08-23 23:04:45', '2025-08-23 23:04:45'),
(9, 1, 300000, 250000, 17, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/92/iabk419xsygcsikh2bia', 'Đen', 'S', 'Đầm nữ thun ôm tay dài lệch vai form A Line', 405, 7, 0, '2025-08-23 23:04:45', '2025-08-23 23:04:45'),
(10, 1, 500000, 300000, 40, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/25/wh8wtuuo5bwhrztnmvl4', 'Đen', 'L', 'Áo khoác nam dài tay chần bông có túi form loose', 141, 8, 1, '2025-08-23 23:06:03', '2025-08-23 23:06:14'),
(11, 1, 500000, 450000, 10, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/135/hsqxilvqkxbutjipnnso', 'Đỏ', '29', 'Quần nỉ sweatpants nữ diễu gân trước wideleg', 592, 9, 0, '2025-08-23 23:07:00', '2025-08-23 23:07:00'),
(12, 1, 450000, 420000, 7, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/133/w9bwe2qeasymvt4jq20v', 'Xanh lá cây', '29', 'Quần short nỉ nữ có túi. Relax', 585, 9, 0, '2025-08-23 23:07:00', '2025-08-23 23:07:00'),
(13, 1, 500000, 300000, 40, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/25/wh8wtuuo5bwhrztnmvl4', 'Đen', 'L', 'Áo khoác nam dài tay chần bông có túi form loose', 141, 10, 0, '2025-08-23 23:08:34', '2025-08-23 23:08:34'),
(14, 1, 250000, 220000, 12, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/12/hwv06dor2un1bdaxrpjh', 'Đen', 'L', 'Áo Thun Nam Tay Ngắn Cotton Thêu Chữ Phối Viền Cổ', 67, 10, 0, '2025-08-23 23:08:34', '2025-08-23 23:08:34'),
(15, 1, 250000, 220000, 12, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/32/xbntnu1shg4qxxjz53rq', 'Xanh da trời', 'L', 'Áo sơ mi Denim sợi Chuối tay dài. Fitted', 170, 11, 0, '2025-08-23 23:08:58', '2025-08-23 23:08:58'),
(16, 1, 250000, 200000, 20, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/8/bl9mgvtw3cfaq0yqojbo', 'Xanh lá cây', 'L', 'Áo Polo Nam Tay Ngắn Phối Cổ \"Together in Times\"', 43, 11, 0, '2025-08-23 23:08:58', '2025-08-23 23:08:58'),
(17, 1, 450000, 420000, 7, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/125/g8xiu9p8k5rtjzuxxywl', 'Trắng', '29', 'Quần Jeans Nữ Trắng Thêu Nhỏ Ống Loe Form Flared', 562, 12, 0, '2025-08-23 23:12:04', '2025-08-23 23:12:04'),
(18, 1, 350000, 240000, 31, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/11/krotqigburbzsh1qtzpo', 'Xanh lá cây', 'L', 'Áo Thun Nam Tay Ngắn Thêu Chữ Trước Ngực Fitted', 61, 12, 0, '2025-08-23 23:12:04', '2025-08-23 23:12:04'),
(19, 1, 250000, 150000, 40, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/39/j95wr64qqwidtuhhxuvm', 'Trắng', 'XL', 'Áo sơ mi nam ít nhăn thoáng khí. Fitted', 201, 13, 0, '2025-08-23 23:13:18', '2025-08-23 23:13:18'),
(20, 1, 250000, 150000, 40, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/39/j95wr64qqwidtuhhxuvm', 'Trắng', 'L', 'Áo sơ mi nam ít nhăn thoáng khí. Fitted', 200, 13, 0, '2025-08-23 23:13:18', '2025-08-23 23:13:18'),
(21, 1, 500000, 450000, 10, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/21/mwwre7bsrrrsyiipqlzx', 'Đen', 'L', 'Áo khoác gió nam có mũ khoá kéo form regular', 121, 14, 0, '2025-08-23 23:14:38', '2025-08-23 23:14:38'),
(22, 1, 300000, 250000, 17, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/91/z57oxgmpfwt17slr6suc', 'Đen', 'S', 'Đầm nữ cộc tay cotton xẻ tà form a line', 401, 14, 0, '2025-08-23 23:14:38', '2025-08-23 23:14:38'),
(23, 1, 400000, 400000, 0, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/108/xrc36sgzt3ur9xs0ct7m', 'Xanh da trời', '30', 'Chân váy nữ Denim tái chế. Straight', 520, 15, 0, '2025-08-23 23:16:30', '2025-08-23 23:16:30'),
(24, 1, 350000, 240000, 31, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/11/krotqigburbzsh1qtzpo', 'Xanh lá cây', 'L', 'Áo Thun Nam Tay Ngắn Thêu Chữ Trước Ngực Fitted', 61, 15, 0, '2025-08-23 23:16:30', '2025-08-23 23:16:30'),
(25, 1, 250000, 220000, 12, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/32/xbntnu1shg4qxxjz53rq', 'Xanh da trời', 'L', 'Áo sơ mi Denim sợi Chuối tay dài. Fitted', 170, 16, 0, '2025-08-23 23:17:22', '2025-08-23 23:17:22'),
(26, 1, 250000, 220000, 12, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/20/hdqob8b8skn3bhkny7vz', 'Xanh da trời', 'L', 'Áo Thun Nam Tay Ngắn Cotton Phối Viền Tay Và Cổ', 115, 17, 0, '2025-08-23 23:25:28', '2025-08-23 23:25:28'),
(27, 1, 450000, 420000, 7, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/126/hdzzlzbmfkqukmlphqwp', 'Trắng', '29', 'Quần Denim Nữ Trơn Ống Đứng Form Straight', 566, 17, 0, '2025-08-23 23:25:28', '2025-08-23 23:25:28'),
(28, 1, 500000, 300000, 40, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/25/wh8wtuuo5bwhrztnmvl4', 'Đen', 'L', 'Áo khoác nam dài tay chần bông có túi form loose', 141, 18, 0, '2025-08-23 23:27:07', '2025-08-23 23:27:07'),
(29, 1, 250000, 220000, 12, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/20/hdqob8b8skn3bhkny7vz', 'Xanh da trời', 'L', 'Áo Thun Nam Tay Ngắn Cotton Phối Viền Tay Và Cổ', 115, 19, 0, '2025-08-23 23:28:26', '2025-08-23 23:28:26'),
(30, 1, 450000, 420000, 7, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/126/hdzzlzbmfkqukmlphqwp', 'Trắng', '29', 'Quần Denim Nữ Trơn Ống Đứng Form Straight', 566, 20, 0, '2025-08-23 23:29:25', '2025-08-23 23:29:25'),
(31, 3, 250000, 220000, 12, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/32/xbntnu1shg4qxxjz53rq', 'Xanh da trời', 'L', 'Áo sơ mi Denim sợi Chuối tay dài. Fitted', 170, 21, 0, '2025-08-23 23:33:12', '2025-08-23 23:33:12'),
(32, 1, 300000, 290000, 3, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/95/uahwtj4q4vqsk5ut82yn', 'Xanh lá cây', 'S', 'Đầm polo nữ tay ngắn form regular', 413, 22, 0, '2025-08-23 23:34:37', '2025-08-23 23:34:37'),
(33, 1, 450000, 420000, 7, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/133/w9bwe2qeasymvt4jq20v', 'Xanh lá cây', '29', 'Quần short nỉ nữ có túi. Relax', 585, 22, 0, '2025-08-23 23:34:37', '2025-08-23 23:34:37'),
(34, 1, 500000, 300000, 40, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/25/wh8wtuuo5bwhrztnmvl4', 'Đen', 'L', 'Áo khoác nam dài tay chần bông có túi form loose', 141, 23, 0, '2025-08-23 23:35:51', '2025-08-23 23:35:51'),
(35, 1, 250000, 220000, 12, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/12/hwv06dor2un1bdaxrpjh', 'Đen', 'L', 'Áo Thun Nam Tay Ngắn Cotton Thêu Chữ Phối Viền Cổ', 67, 24, 0, '2025-08-23 23:37:29', '2025-08-23 23:37:29'),
(36, 1, 400000, 400000, 0, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/103/kbtgxz1irhnyu9mheoid', 'Xanh da trời', '30', 'Chân Váy Denim Nữ Dài Xẻ Tà Lệch Form Straight', 506, 24, 0, '2025-08-23 23:37:29', '2025-08-23 23:37:29'),
(37, 1, 450000, 420000, 7, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/132/fmnmmcmdsu8nf79mjy5v', 'Xanh da trời', '29', 'Quần Denim Nữ Lật Gấu Ống Rộng Form Wide Leg', 583, 25, 0, '2025-08-23 23:38:49', '2025-08-23 23:38:49'),
(38, 1, 450000, 420000, 7, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/124/hhjqkzypqmv9s6hkoyea', 'Xanh da trời', '29', 'Quần Jeans Nữ Thêu Nhỏ Túi Sau Form Straight Crop', 560, 25, 0, '2025-08-23 23:38:49', '2025-08-23 23:38:49'),
(39, 1, 300000, 250000, 17, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/16/iu0avid4wexzgicstrd1', 'Xám', 'XXL', 'Áo thun nam tay ngắn cổ tròn sọc ngang form fitted', 93, 26, 0, '2025-08-23 23:41:59', '2025-08-23 23:41:59'),
(40, 1, 300000, 250000, 17, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/15/vjo57morxuxa9i37pwcw', 'Xanh lá cây', 'XL', 'Áo Thun Nam Tay Ngắn Cotton Hình In Ngực Trái', 85, 26, 0, '2025-08-23 23:41:59', '2025-08-23 23:41:59'),
(41, 1, 250000, 150000, 40, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/39/j95wr64qqwidtuhhxuvm', 'Trắng', 'L', 'Áo sơ mi nam ít nhăn thoáng khí. Fitted', 200, 27, 0, '2025-08-23 23:42:39', '2025-08-23 23:42:39'),
(42, 1, 250000, 220000, 12, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/12/hwv06dor2un1bdaxrpjh', 'Đen', 'L', 'Áo Thun Nam Tay Ngắn Cotton Thêu Chữ Phối Viền Cổ', 67, 27, 0, '2025-08-23 23:42:39', '2025-08-23 23:42:39'),
(43, 1, 400000, 400000, 0, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/103/kbtgxz1irhnyu9mheoid', 'Xanh da trời', '30', 'Chân Váy Denim Nữ Dài Xẻ Tà Lệch Form Straight', 506, 28, 0, '2025-08-23 23:43:18', '2025-08-23 23:43:18'),
(44, 1, 400000, 350000, 13, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/70/fvzh2azkile3exp4h4ez', 'Đen', '32', 'Quần Tây Nam Basic Cá Tính Form Carrot', 327, 28, 0, '2025-08-23 23:43:18', '2025-08-23 23:43:18'),
(45, 1, 400000, 400000, 0, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/103/kbtgxz1irhnyu9mheoid', 'Xanh da trời', '30', 'Chân Váy Denim Nữ Dài Xẻ Tà Lệch Form Straight', 506, 29, 0, '2025-08-23 23:44:03', '2025-08-23 23:44:03'),
(46, 1, 250000, 200000, 20, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/31/xtmovab3rqqsugrgep7b', 'Xanh da trời', 'L', 'Áo cổ trụ Denim sợi Chuối tay dài. Fitted', 164, 29, 0, '2025-08-23 23:44:03', '2025-08-23 23:44:03'),
(47, 1, 250000, 220000, 12, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/32/xbntnu1shg4qxxjz53rq', 'Xanh da trời', 'L', 'Áo sơ mi Denim sợi Chuối tay dài. Fitted', 170, 30, 0, '2025-08-23 23:45:19', '2025-08-23 23:45:19'),
(48, 1, 250000, 200000, 20, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/8/bl9mgvtw3cfaq0yqojbo', 'Xanh lá cây', 'L', 'Áo Polo Nam Tay Ngắn Phối Cổ \"Together in Times\"', 43, 30, 0, '2025-08-23 23:45:19', '2025-08-23 23:45:19'),
(49, 1, 300000, 280000, 7, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/18/lubdy08izdtbv3jx7dds', 'Trắng', 'L', 'Áo thun nam tay ngắn sọc ngang lớn jacquard loose', 103, 31, 0, '2025-08-24 00:02:58', '2025-08-24 00:02:58'),
(50, 1, 250000, 220000, 12, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/20/hdqob8b8skn3bhkny7vz', 'Xanh da trời', 'L', 'Áo Thun Nam Tay Ngắn Cotton Phối Viền Tay Và Cổ', 115, 31, 0, '2025-08-24 00:02:58', '2025-08-24 00:02:58'),
(51, 1, 300000, 250000, 17, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/99/i5mhdhkn0wtj7vuyyqh6', 'Đen', 'S', 'Đầm mini tay nhún. A line', 429, 32, 0, '2025-08-24 00:06:57', '2025-08-24 00:06:57'),
(52, 1, 250000, 200000, 20, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/3/l7ag1lujsrzgxoomiywh', 'Đen', 'M', 'Áo Polo Nam Tay Ngắn Cotton Phối Viền Cổ Fitted', 13, 32, 0, '2025-08-24 00:06:57', '2025-08-24 00:06:57'),
(53, 1, 400000, 400000, 0, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/114/xeg5ewovhqxnzbjcofpp', 'Xám', '30', 'Quần dài nữ xám ống suông form straight', 538, 33, 0, '2025-08-24 00:07:47', '2025-08-24 00:07:47'),
(54, 1, 500000, 450000, 10, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/29/tq01eulje3xty9osw2nm', 'Xám', 'L', 'Áo khoác nam có nón dây kéo form regular', 158, 33, 0, '2025-08-24 00:07:47', '2025-08-24 00:07:47'),
(55, 1, 450000, 350000, 22, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/35/uughljbetoci6i0dahav', 'Trắng', 'L', 'Áo Sơ Mi Nam Tay Dài Cotton Túi Ngực Thêu Chữ', 186, 34, 0, '2025-08-24 00:08:27', '2025-08-24 00:08:27'),
(56, 1, 400000, 350000, 13, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/37/az7pnto85y8mekqofqoe', 'Xanh da trời', 'L', 'Áo Sơ Mi Nam Ngắn Tay Cotton Kẻ Sọc Form Boxy', 193, 34, 0, '2025-08-24 00:08:27', '2025-08-24 00:08:27'),
(57, 1, 400000, 400000, 0, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/104/gxqrq66h9lfnwngelysq', 'Trắng', '30', 'Chân Váy Denim Nữ Dài Ôm Nhẹ Hông Form Flared', 508, 35, 0, '2025-08-24 00:09:03', '2025-08-24 00:09:03'),
(58, 1, 400000, 320000, 20, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/54/hdbquqirkxiymdy5wtqs', 'Đen', '32', 'Quần kaki nam dài premium dáng ôm form slim', 255, 35, 0, '2025-08-24 00:09:03', '2025-08-24 00:09:03'),
(59, 1, 400000, 400000, 0, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/44/zlbjo3xjzv584cxydfjq', 'Xanh da trời', '33', 'Quần Jeans Nam Xanh Navy Ống Ôm Form Tapered', 220, 36, 0, '2025-08-24 00:10:13', '2025-08-24 00:10:13'),
(60, 1, 400000, 340000, 15, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/63/iclbuasw0n3j1hezswrq', 'Đen', '32', 'Quần Tây Nam Dài Ủi Ly Phía Trước Form Slim', 299, 36, 0, '2025-08-24 00:10:13', '2025-08-24 00:10:13'),
(61, 1, 450000, 420000, 7, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/126/hdzzlzbmfkqukmlphqwp', 'Trắng', '29', 'Quần Denim Nữ Trơn Ống Đứng Form Straight', 566, 37, 0, '2025-08-24 00:15:10', '2025-08-24 00:15:10'),
(62, 1, 450000, 420000, 7, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/133/w9bwe2qeasymvt4jq20v', 'Xanh lá cây', '29', 'Quần short nỉ nữ có túi. Relax', 585, 37, 0, '2025-08-24 00:15:10', '2025-08-24 00:15:10'),
(63, 1, 300000, 300000, 0, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/4/dffpzl434dii9qlztqne', 'Trắng', 'M', 'Áo polo nam sợi Cafe phối cổ. Fitted', 19, 37, 0, '2025-08-24 00:15:10', '2025-08-24 00:15:10'),
(64, 1, 400000, 400000, 0, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/113/wmojwmqyzxafnjwgdpzo', 'Xám', '30', 'Quần dài nữ ống rộng phối lưng wide leg', 536, 38, 0, '2025-08-24 00:15:54', '2025-08-24 00:15:54'),
(65, 1, 400000, 350000, 13, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/37/az7pnto85y8mekqofqoe', 'Xanh da trời', 'L', 'Áo Sơ Mi Nam Ngắn Tay Cotton Kẻ Sọc Form Boxy', 193, 38, 0, '2025-08-24 00:15:54', '2025-08-24 00:15:54'),
(66, 1, 400000, 400000, 0, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/104/gxqrq66h9lfnwngelysq', 'Trắng', '30', 'Chân Váy Denim Nữ Dài Ôm Nhẹ Hông Form Flared', 508, 39, 0, '2025-08-24 00:16:36', '2025-08-24 00:16:36'),
(67, 1, 400000, 400000, 0, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/114/xeg5ewovhqxnzbjcofpp', 'Xám', '30', 'Quần dài nữ xám ống suông form straight', 538, 39, 0, '2025-08-24 00:16:36', '2025-08-24 00:16:36'),
(68, 1, 400000, 400000, 0, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/119/zvyuwewu6a8j0b1j47cp', 'Xám', '30', 'Quần Dài Nữ Lưng Thun Ly Gân Giữa Form Straight', 550, 40, 0, '2025-08-24 00:17:22', '2025-08-24 00:17:22'),
(69, 1, 400000, 400000, 0, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/117/uhi8c1tqgyepnglviqii', 'Đen', '30', 'Quần Dài Nữ Xếp Ly Cho Ống Rộng Form Wide Leg', 546, 40, 0, '2025-08-24 00:17:22', '2025-08-24 00:17:22'),
(70, 1, 300000, 250000, 17, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/99/i5mhdhkn0wtj7vuyyqh6', 'Đen', 'S', 'Đầm mini tay nhún. A line', 429, 41, 0, '2025-08-24 00:18:09', '2025-08-24 00:18:09'),
(71, 1, 250000, 200000, 20, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/134/i6bhwc6su4mn0oygwjam', 'Be', '29', 'Quần nỉ sweatpants unisex gắn tag form relax', 588, 41, 0, '2025-08-24 00:18:09', '2025-08-24 00:18:09'),
(72, 1, 400000, 400000, 0, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/108/xrc36sgzt3ur9xs0ct7m', 'Xanh da trời', '30', 'Chân váy nữ Denim tái chế. Straight', 520, 41, 0, '2025-08-24 00:18:09', '2025-08-24 00:18:09'),
(73, 1, 450000, 420000, 7, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/125/g8xiu9p8k5rtjzuxxywl', 'Trắng', '29', 'Quần Jeans Nữ Trắng Thêu Nhỏ Ống Loe Form Flared', 562, 42, 0, '2025-08-24 00:19:28', '2025-08-24 00:19:28'),
(74, 1, 300000, 300000, 0, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/4/dffpzl434dii9qlztqne', 'Trắng', 'M', 'Áo polo nam sợi Cafe phối cổ. Fitted', 19, 42, 0, '2025-08-24 00:19:28', '2025-08-24 00:19:28'),
(75, 1, 500000, 450000, 10, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/135/hsqxilvqkxbutjipnnso', 'Đỏ', '29', 'Quần nỉ sweatpants nữ diễu gân trước wideleg', 592, 43, 0, '2025-08-24 00:23:24', '2025-08-24 00:23:24'),
(76, 1, 300000, 250000, 17, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/99/i5mhdhkn0wtj7vuyyqh6', 'Đen', 'S', 'Đầm mini tay nhún. A line', 429, 43, 0, '2025-08-24 00:23:24', '2025-08-24 00:23:24'),
(77, 1, 450000, 420000, 7, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/125/g8xiu9p8k5rtjzuxxywl', 'Trắng', '29', 'Quần Jeans Nữ Trắng Thêu Nhỏ Ống Loe Form Flared', 562, 44, 0, '2025-08-24 00:24:10', '2025-08-24 00:24:10'),
(78, 1, 250000, 220000, 12, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/20/hdqob8b8skn3bhkny7vz', 'Xanh da trời', 'L', 'Áo Thun Nam Tay Ngắn Cotton Phối Viền Tay Và Cổ', 115, 44, 0, '2025-08-24 00:24:10', '2025-08-24 00:24:10'),
(79, 1, 250000, 220000, 12, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/32/xbntnu1shg4qxxjz53rq', 'Xanh da trời', 'L', 'Áo sơ mi Denim sợi Chuối tay dài. Fitted', 170, 44, 0, '2025-08-24 00:24:10', '2025-08-24 00:24:10'),
(80, 1, 400000, 400000, 0, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/115/uaehuvipyqriocsqjupe', 'Xám', '30', 'Quần dài nữ xếp ly trước straight crop', 540, 45, 0, '2025-08-24 00:24:45', '2025-08-24 00:24:45'),
(81, 1, 300000, 280000, 7, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/67/s6ce9c72pkev9fg7sbre', 'Đen', '32', 'Quần Tây Nam Dài Ly Giữa Form Slim Dáng Ôm', 313, 45, 0, '2025-08-24 00:24:45', '2025-08-24 00:24:45'),
(82, 1, 500000, 450000, 10, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/135/hsqxilvqkxbutjipnnso', 'Đỏ', '29', 'Quần nỉ sweatpants nữ diễu gân trước wideleg', 592, 46, 0, '2025-08-24 00:25:22', '2025-08-24 00:25:22'),
(83, 1, 450000, 250000, 44, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/24/mtofuyzwhgtvghsdm0su', 'Đen', 'L', 'Áo khoác không cổ chần bông mỏng form loose', 135, 46, 0, '2025-08-24 00:25:22', '2025-08-24 00:25:22'),
(84, 1, 400000, 340000, 15, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/63/iclbuasw0n3j1hezswrq', 'Đen', '32', 'Quần Tây Nam Dài Ủi Ly Phía Trước Form Slim', 299, 47, 0, '2025-08-24 00:26:16', '2025-08-24 00:26:16'),
(85, 1, 350000, 320000, 9, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/102/voq13xp2fdferusmjw8u', 'Hồng', '30', 'Chân váy nữ cotton lưng thun hai lớp Aline', 502, 47, 0, '2025-08-24 00:26:16', '2025-08-24 00:26:16'),
(86, 1, 250000, 250000, 0, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/14/rj6jmwqcstecref7lao7', 'Xám', 'L', 'Áo Thun Tanktop Nam Sát Nách Cotton Form Loose', 79, 47, 0, '2025-08-24 00:26:16', '2025-08-24 00:26:16'),
(87, 1, 300000, 290000, 3, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/96/mrmk4qbvcabjmvfmw40d', 'Đen', 'S', 'Đầm nữ tay ngắn form regular', 417, 48, 0, '2025-08-24 00:27:13', '2025-08-24 00:27:13'),
(88, 1, 450000, 420000, 7, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/130/pbegdjlqz8addngziplu', 'Trắng', '29', 'Quần Denim Nữ Ống Đứng May Rã Sườn Form Straight', 576, 48, 0, '2025-08-24 00:27:13', '2025-08-24 00:27:13'),
(89, 1, 450000, 400000, 11, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/43/eoch7bcypwe858i03bsu', 'Xanh da trời', '32', 'Quần denim nam dài nhãn vải straight', 218, 48, 0, '2025-08-24 00:27:13', '2025-08-24 00:27:13'),
(90, 1, 450000, 420000, 7, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/132/fmnmmcmdsu8nf79mjy5v', 'Xanh da trời', '29', 'Quần Denim Nữ Lật Gấu Ống Rộng Form Wide Leg', 583, 49, 0, '2025-08-24 00:32:07', '2025-08-24 00:32:07'),
(91, 1, 400000, 350000, 13, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/45/aifz8umxpxhfbgexo0kn', 'Xanh da trời', '32', 'Quần denim nam ống đứng nhãn vải', 223, 49, 0, '2025-08-24 00:32:07', '2025-08-24 00:32:07'),
(92, 1, 400000, 400000, 0, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/114/xeg5ewovhqxnzbjcofpp', 'Xám', '30', 'Quần dài nữ xám ống suông form straight', 538, 50, 0, '2025-08-24 00:32:52', '2025-08-24 00:32:52'),
(93, 1, 300000, 250000, 17, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/91/z57oxgmpfwt17slr6suc', 'Đen', 'S', 'Đầm nữ cộc tay cotton xẻ tà form a line', 401, 50, 0, '2025-08-24 00:32:52', '2025-08-24 00:32:52'),
(94, 1, 250000, 200000, 20, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/79/cbuvn7mrmvhhk9nrdqt1', 'Be', 'S', 'Áo Thun Nữ Tay Ngắn Cotton Rút Hai Bên Together', 361, 50, 0, '2025-08-24 00:32:52', '2025-08-24 00:32:52'),
(95, 1, 400000, 400000, 0, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/104/gxqrq66h9lfnwngelysq', 'Trắng', '30', 'Chân Váy Denim Nữ Dài Ôm Nhẹ Hông Form Flared', 508, 51, 0, '2025-08-24 00:33:37', '2025-08-24 00:33:37'),
(96, 1, 250000, 250000, 0, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/84/cebt0v47ogv3ht71ln9v', 'Hồng', 'S', 'Áo Sơ Mi Nữ Tay Ngắn Vạt Bầu Form Loose Rộng Rãi', 379, 51, 0, '2025-08-24 00:33:37', '2025-08-24 00:33:37'),
(97, 1, 450000, 400000, 11, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/43/eoch7bcypwe858i03bsu', 'Xanh da trời', '32', 'Quần denim nam dài nhãn vải straight', 218, 51, 0, '2025-08-24 00:33:37', '2025-08-24 00:33:37'),
(98, 1, 500000, 300000, 40, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/25/wh8wtuuo5bwhrztnmvl4', 'Đen', 'L', 'Áo khoác nam dài tay chần bông có túi form loose', 141, 52, 0, '2025-08-24 00:34:26', '2025-08-24 00:34:26'),
(99, 1, 450000, 420000, 7, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/125/g8xiu9p8k5rtjzuxxywl', 'Trắng', '29', 'Quần Jeans Nữ Trắng Thêu Nhỏ Ống Loe Form Flared', 562, 52, 0, '2025-08-24 00:34:26', '2025-08-24 00:34:26'),
(100, 1, 250000, 220000, 12, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/32/xbntnu1shg4qxxjz53rq', 'Xanh da trời', 'L', 'Áo sơ mi Denim sợi Chuối tay dài. Fitted', 170, 52, 0, '2025-08-24 00:34:26', '2025-08-24 00:34:26'),
(101, 1, 250000, 220000, 12, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/32/xbntnu1shg4qxxjz53rq', 'Xanh da trời', 'L', 'Áo sơ mi Denim sợi Chuối tay dài. Fitted', 170, 53, 0, '2025-08-24 00:35:14', '2025-08-24 00:35:14'),
(102, 1, 300000, 300000, 0, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/4/dffpzl434dii9qlztqne', 'Trắng', 'M', 'Áo polo nam sợi Cafe phối cổ. Fitted', 19, 53, 0, '2025-08-24 00:35:14', '2025-08-24 00:35:14'),
(103, 1, 400000, 350000, 13, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/106/nyudjpbwrdxn0sz5npwe', 'Xám', '30', 'Chân Váy Nữ Dài Xếp Ly 2 Lớp Mềm Mịn Form A Line', 516, 53, 0, '2025-08-24 00:35:14', '2025-08-24 00:35:14'),
(104, 1, 400000, 400000, 0, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/113/wmojwmqyzxafnjwgdpzo', 'Xám', '30', 'Quần dài nữ ống rộng phối lưng wide leg', 536, 54, 0, '2025-08-24 00:36:46', '2025-08-24 00:36:46'),
(105, 1, 400000, 400000, 0, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/104/gxqrq66h9lfnwngelysq', 'Trắng', '30', 'Chân Váy Denim Nữ Dài Ôm Nhẹ Hông Form Flared', 508, 54, 0, '2025-08-24 00:36:46', '2025-08-24 00:36:46'),
(106, 1, 300000, 250000, 17, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/91/z57oxgmpfwt17slr6suc', 'Đen', 'S', 'Đầm nữ cộc tay cotton xẻ tà form a line', 401, 54, 0, '2025-08-24 00:36:46', '2025-08-24 00:36:46'),
(107, 1, 300000, 200000, 33, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/17/dh6bsqbkj8r9uhfudhsk', 'Be', 'L', 'Áo Thun Nam Tay Ngắn Cotton \"Friend Club\" Fitted', 97, 55, 0, '2025-08-24 00:44:03', '2025-08-24 00:44:03'),
(108, 1, 400000, 400000, 0, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/114/xeg5ewovhqxnzbjcofpp', 'Xám', '30', 'Quần dài nữ xám ống suông form straight', 538, 55, 0, '2025-08-24 00:44:03', '2025-08-24 00:44:03'),
(109, 1, 500000, 300000, 40, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/25/wh8wtuuo5bwhrztnmvl4', 'Đen', 'L', 'Áo khoác nam dài tay chần bông có túi form loose', 141, 55, 0, '2025-08-24 00:44:03', '2025-08-24 00:44:03'),
(110, 1, 300000, 200000, 33, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/17/dh6bsqbkj8r9uhfudhsk', 'Be', 'L', 'Áo Thun Nam Tay Ngắn Cotton \"Friend Club\" Fitted', 97, 56, 0, '2025-08-24 00:44:44', '2025-08-24 00:44:44'),
(111, 1, 250000, 210000, 16, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/78/bh7zri373lzsicuncyo6', 'Đen', 'S', 'Áo Thun Nữ Crop Tay Ngắn Trái Tim Form Fitted', 357, 56, 0, '2025-08-24 00:44:44', '2025-08-24 00:44:44'),
(112, 1, 300000, 250000, 17, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/92/iabk419xsygcsikh2bia', 'Đen', 'S', 'Đầm nữ thun ôm tay dài lệch vai form A Line', 405, 56, 0, '2025-08-24 00:44:44', '2025-08-24 00:44:44'),
(113, 1, 400000, 400000, 0, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/104/gxqrq66h9lfnwngelysq', 'Trắng', '30', 'Chân Váy Denim Nữ Dài Ôm Nhẹ Hông Form Flared', 508, 57, 0, '2025-08-24 00:45:29', '2025-08-24 00:45:29'),
(114, 1, 500000, 450000, 10, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/135/hsqxilvqkxbutjipnnso', 'Đỏ', '29', 'Quần nỉ sweatpants nữ diễu gân trước wideleg', 592, 57, 0, '2025-08-24 00:45:29', '2025-08-24 00:45:29'),
(115, 1, 400000, 400000, 0, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/112/qya0qdeadd1oz0f2zhpf', 'Xanh lá cây', '30', 'Quần vải dài nữ xếp ly ống rộng form relax', 532, 57, 0, '2025-08-24 00:45:29', '2025-08-24 00:45:29'),
(116, 1, 150000, 120000, 20, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/72/fwa7bulca3nx1nwvks4s', 'Xanh lá cây', 'S', 'Áo thun nữ cotton thêu nhãn trang trí. Regularr', 333, 58, 0, '2025-08-24 00:46:28', '2025-08-24 00:46:28'),
(117, 1, 450000, 420000, 7, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/132/fmnmmcmdsu8nf79mjy5v', 'Xanh da trời', '29', 'Quần Denim Nữ Lật Gấu Ống Rộng Form Wide Leg', 583, 58, 0, '2025-08-24 00:46:28', '2025-08-24 00:46:28'),
(118, 1, 400000, 350000, 13, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/36/nocbx2ekcx66lzthauqh', 'Xanh da trời', 'L', 'Áo Cuban Denim Nam Tay Ngắn Form Loose', 190, 58, 0, '2025-08-24 00:46:28', '2025-08-24 00:46:28'),
(119, 1, 450000, 420000, 7, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/128/qlgze0bojvlfba6ps89b', 'Xanh da trời', '29', 'Quần Denim Nữ Xanh Navy Rã Phối Form Balloon', 572, 59, 0, '2025-08-24 00:47:08', '2025-08-24 00:47:08'),
(120, 1, 450000, 420000, 7, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/125/g8xiu9p8k5rtjzuxxywl', 'Trắng', '29', 'Quần Jeans Nữ Trắng Thêu Nhỏ Ống Loe Form Flared', 562, 59, 0, '2025-08-24 00:47:08', '2025-08-24 00:47:08'),
(121, 1, 400000, 350000, 13, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/45/aifz8umxpxhfbgexo0kn', 'Xanh da trời', '32', 'Quần denim nam ống đứng nhãn vải', 223, 59, 0, '2025-08-24 00:47:08', '2025-08-24 00:47:08'),
(122, 1, 400000, 400000, 0, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/116/qmwwcqk3uikwalqio4vf', 'Be', '30', 'Quần tây ống rộng nữ túi ngang form straight', 542, 60, 0, '2025-08-24 00:48:11', '2025-08-24 00:48:11'),
(123, 1, 300000, 250000, 17, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/92/iabk419xsygcsikh2bia', 'Đen', 'S', 'Đầm nữ thun ôm tay dài lệch vai form A Line', 405, 60, 0, '2025-08-24 00:48:11', '2025-08-24 00:48:11'),
(124, 1, 250000, 220000, 12, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/12/hwv06dor2un1bdaxrpjh', 'Đen', 'L', 'Áo Thun Nam Tay Ngắn Cotton Thêu Chữ Phối Viền Cổ', 67, 60, 0, '2025-08-24 00:48:11', '2025-08-24 00:48:11'),
(125, 1, 450000, 350000, 22, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/62/lrwwylnqjbkx7ghpq7en', 'Xanh da trời', '32', 'Quần Tây Nam Lịch Lãm Form Slim Cropped', 296, 61, 0, '2025-08-24 00:59:43', '2025-08-24 00:59:43'),
(126, 1, 500000, 450000, 10, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/135/hsqxilvqkxbutjipnnso', 'Đỏ', '29', 'Quần nỉ sweatpants nữ diễu gân trước wideleg', 592, 61, 0, '2025-08-24 00:59:43', '2025-08-24 00:59:43'),
(127, 1, 450000, 350000, 22, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/26/ijmj9pqwh7oxn3mzwfyl', 'Xám', 'XL', 'Áo khoác denim nam form regular', 147, 61, 0, '2025-08-24 00:59:43', '2025-08-24 00:59:43'),
(128, 1, 350000, 250000, 29, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/61/sfdlutllrhfqg66dlxqi', 'Đen', '30', 'Quần Tây Nam Dài Cotton Lưng Chun Ẩn Form Slim', 290, 62, 0, '2025-08-24 01:00:29', '2025-08-24 01:00:29'),
(129, 1, 400000, 400000, 0, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/104/gxqrq66h9lfnwngelysq', 'Trắng', '30', 'Chân Váy Denim Nữ Dài Ôm Nhẹ Hông Form Flared', 508, 62, 0, '2025-08-24 01:00:29', '2025-08-24 01:00:29'),
(130, 1, 450000, 300000, 33, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/41/o5svqnbonukv5izxw38b', 'Đen', '31', 'Quần Denim Nam Lưng Thun Dây Rút Form Cocoon', 208, 62, 0, '2025-08-24 01:00:29', '2025-08-24 01:00:29'),
(131, 1, 450000, 350000, 22, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/26/ijmj9pqwh7oxn3mzwfyl', 'Xám', 'XL', 'Áo khoác denim nam form regular', 147, 63, 0, '2025-08-24 01:01:19', '2025-08-24 01:01:19'),
(132, 1, 300000, 250000, 17, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/99/i5mhdhkn0wtj7vuyyqh6', 'Đen', 'S', 'Đầm mini tay nhún. A line', 429, 63, 0, '2025-08-24 01:01:19', '2025-08-24 01:01:19'),
(133, 1, 400000, 340000, 15, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/63/iclbuasw0n3j1hezswrq', 'Đen', '32', 'Quần Tây Nam Dài Ủi Ly Phía Trước Form Slim', 299, 63, 0, '2025-08-24 01:01:19', '2025-08-24 01:01:19'),
(134, 1, 400000, 400000, 0, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/113/wmojwmqyzxafnjwgdpzo', 'Xám', '30', 'Quần dài nữ ống rộng phối lưng wide leg', 536, 64, 0, '2025-08-24 01:02:08', '2025-08-24 01:02:08'),
(135, 1, 250000, 220000, 12, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/32/xbntnu1shg4qxxjz53rq', 'Xanh da trời', 'L', 'Áo sơ mi Denim sợi Chuối tay dài. Fitted', 170, 64, 0, '2025-08-24 01:02:08', '2025-08-24 01:02:08'),
(136, 1, 300000, 250000, 17, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/92/iabk419xsygcsikh2bia', 'Đen', 'S', 'Đầm nữ thun ôm tay dài lệch vai form A Line', 405, 64, 0, '2025-08-24 01:02:08', '2025-08-24 01:02:08'),
(137, 1, 500000, 450000, 10, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/21/mwwre7bsrrrsyiipqlzx', 'Đen', 'L', 'Áo khoác gió nam có mũ khoá kéo form regular', 121, 65, 0, '2025-08-24 01:03:11', '2025-08-24 01:03:11'),
(138, 1, 450000, 420000, 7, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/132/fmnmmcmdsu8nf79mjy5v', 'Xanh da trời', '29', 'Quần Denim Nữ Lật Gấu Ống Rộng Form Wide Leg', 583, 65, 0, '2025-08-24 01:03:11', '2025-08-24 01:03:11'),
(139, 1, 450000, 350000, 22, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/35/uughljbetoci6i0dahav', 'Trắng', 'L', 'Áo Sơ Mi Nam Tay Dài Cotton Túi Ngực Thêu Chữ', 186, 65, 0, '2025-08-24 01:03:11', '2025-08-24 01:03:11'),
(140, 1, 250000, 200000, 20, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/80/iu0inelmx9vb7g76uagl', 'Trắng', 'S', 'Áo Thun Nữ Tay Ngắn Cotton Thêu Ngực Trái Regular', 365, 66, 0, '2025-08-24 01:04:24', '2025-08-24 01:04:24'),
(141, 2, 400000, 400000, 0, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/103/kbtgxz1irhnyu9mheoid', 'Xanh da trời', '30', 'Chân Váy Denim Nữ Dài Xẻ Tà Lệch Form Straight', 506, 66, 0, '2025-08-24 01:04:24', '2025-08-24 01:04:24'),
(142, 1, 250000, 222000, 11, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/98/cd66s4anhopt17ys2cpq', 'Vàng', 'S', 'Đầm thun ngắn tay cotton xẻ tà 2 bên form A line', 425, 67, 0, '2025-08-24 01:13:10', '2025-08-24 01:13:10'),
(143, 1, 400000, 400000, 0, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/103/kbtgxz1irhnyu9mheoid', 'Xanh da trời', '30', 'Chân Váy Denim Nữ Dài Xẻ Tà Lệch Form Straight', 506, 67, 0, '2025-08-24 01:13:10', '2025-08-24 01:13:10'),
(144, 1, 250000, 220000, 12, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/12/hwv06dor2un1bdaxrpjh', 'Đen', 'L', 'Áo Thun Nam Tay Ngắn Cotton Thêu Chữ Phối Viền Cổ', 67, 67, 0, '2025-08-24 01:13:10', '2025-08-24 01:13:10'),
(145, 1, 250000, 220000, 12, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/20/hdqob8b8skn3bhkny7vz', 'Xanh da trời', 'L', 'Áo Thun Nam Tay Ngắn Cotton Phối Viền Tay Và Cổ', 115, 68, 0, '2025-08-24 01:17:12', '2025-08-24 01:17:12'),
(146, 1, 400000, 400000, 0, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/104/gxqrq66h9lfnwngelysq', 'Trắng', '30', 'Chân Váy Denim Nữ Dài Ôm Nhẹ Hông Form Flared', 508, 68, 0, '2025-08-24 01:17:12', '2025-08-24 01:17:12'),
(147, 1, 250000, 200000, 20, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/3/l7ag1lujsrzgxoomiywh', 'Đen', 'M', 'Áo Polo Nam Tay Ngắn Cotton Phối Viền Cổ Fitted', 13, 68, 0, '2025-08-24 01:17:12', '2025-08-24 01:17:12'),
(148, 1, 250000, 220000, 12, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/32/xbntnu1shg4qxxjz53rq', 'Xanh da trời', 'L', 'Áo sơ mi Denim sợi Chuối tay dài. Fitted', 170, 69, 0, '2025-08-24 01:17:48', '2025-08-24 01:17:48'),
(149, 1, 450000, 420000, 7, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/125/g8xiu9p8k5rtjzuxxywl', 'Trắng', '29', 'Quần Jeans Nữ Trắng Thêu Nhỏ Ống Loe Form Flared', 562, 69, 0, '2025-08-24 01:17:49', '2025-08-24 01:17:49'),
(150, 1, 300000, 250000, 17, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/91/z57oxgmpfwt17slr6suc', 'Đen', 'S', 'Đầm nữ cộc tay cotton xẻ tà form a line', 401, 69, 0, '2025-08-24 01:17:49', '2025-08-24 01:17:49'),
(151, 1, 400000, 400000, 0, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/117/uhi8c1tqgyepnglviqii', 'Đen', '30', 'Quần Dài Nữ Xếp Ly Cho Ống Rộng Form Wide Leg', 546, 70, 0, '2025-08-24 01:18:31', '2025-08-24 01:18:31'),
(152, 1, 450000, 420000, 7, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/124/hhjqkzypqmv9s6hkoyea', 'Xanh da trời', '29', 'Quần Jeans Nữ Thêu Nhỏ Túi Sau Form Straight Crop', 560, 70, 0, '2025-08-24 01:18:31', '2025-08-24 01:18:31'),
(153, 1, 400000, 400000, 0, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/112/qya0qdeadd1oz0f2zhpf', 'Xanh lá cây', '30', 'Quần vải dài nữ xếp ly ống rộng form relax', 532, 70, 0, '2025-08-24 01:18:31', '2025-08-24 01:18:31'),
(154, 1, 400000, 400000, 0, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/112/qya0qdeadd1oz0f2zhpf', 'Xanh lá cây', '30', 'Quần vải dài nữ xếp ly ống rộng form relax', 532, 71, 0, '2025-08-24 01:19:11', '2025-08-24 01:19:11'),
(155, 1, 400000, 400000, 0, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/104/gxqrq66h9lfnwngelysq', 'Trắng', '30', 'Chân Váy Denim Nữ Dài Ôm Nhẹ Hông Form Flared', 508, 71, 0, '2025-08-24 01:19:11', '2025-08-24 01:19:11'),
(156, 1, 450000, 350000, 22, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/62/lrwwylnqjbkx7ghpq7en', 'Xanh da trời', '32', 'Quần Tây Nam Lịch Lãm Form Slim Cropped', 296, 71, 0, '2025-08-24 01:19:11', '2025-08-24 01:19:11'),
(157, 1, 250000, 250000, 0, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/14/rj6jmwqcstecref7lao7', 'Xám', 'L', 'Áo Thun Tanktop Nam Sát Nách Cotton Form Loose', 79, 72, 0, '2025-08-24 01:20:13', '2025-08-24 01:20:13'),
(158, 1, 400000, 390000, 3, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/56/hzphe6xywtkeghqyb81b', 'Trắng', '32', 'Quần Dài Kaki Nam Cotton Co Giãn Form Slim Crop', 267, 72, 0, '2025-08-24 01:20:13', '2025-08-24 01:20:13'),
(159, 1, 400000, 350000, 13, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/65/jhdwbs6um6iq7lqm3qlv', 'Đen', '32', 'Quần tây nam basic nút ẩn co giãn nhẹ. Slim', 308, 72, 0, '2025-08-24 01:20:13', '2025-08-24 01:20:13'),
(160, 1, 350000, 240000, 31, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/11/krotqigburbzsh1qtzpo', 'Xanh lá cây', 'L', 'Áo Thun Nam Tay Ngắn Thêu Chữ Trước Ngực Fitted', 61, 73, 0, '2025-08-24 01:25:03', '2025-08-24 01:25:03'),
(161, 1, 300000, 250000, 17, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/92/iabk419xsygcsikh2bia', 'Đen', 'S', 'Đầm nữ thun ôm tay dài lệch vai form A Line', 405, 73, 0, '2025-08-24 01:25:03', '2025-08-24 01:25:03'),
(162, 1, 250000, 200000, 20, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/3/l7ag1lujsrzgxoomiywh', 'Đen', 'M', 'Áo Polo Nam Tay Ngắn Cotton Phối Viền Cổ Fitted', 13, 73, 0, '2025-08-24 01:25:03', '2025-08-24 01:25:03'),
(163, 1, 250000, 200000, 20, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/31/xtmovab3rqqsugrgep7b', 'Xanh da trời', 'L', 'Áo cổ trụ Denim sợi Chuối tay dài. Fitted', 164, 74, 0, '2025-08-24 01:25:49', '2025-08-24 01:25:49'),
(164, 1, 450000, 420000, 7, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/125/g8xiu9p8k5rtjzuxxywl', 'Trắng', '29', 'Quần Jeans Nữ Trắng Thêu Nhỏ Ống Loe Form Flared', 562, 74, 0, '2025-08-24 01:25:49', '2025-08-24 01:25:49'),
(165, 1, 150000, 120000, 20, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/72/fwa7bulca3nx1nwvks4s', 'Xanh lá cây', 'S', 'Áo thun nữ cotton thêu nhãn trang trí. Regularr', 333, 74, 0, '2025-08-24 01:25:49', '2025-08-24 01:25:49'),
(166, 1, 250000, 220000, 12, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/20/hdqob8b8skn3bhkny7vz', 'Xanh da trời', 'L', 'Áo Thun Nam Tay Ngắn Cotton Phối Viền Tay Và Cổ', 115, 75, 0, '2025-08-24 01:26:32', '2025-08-24 01:26:32'),
(167, 1, 400000, 350000, 13, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/106/nyudjpbwrdxn0sz5npwe', 'Xám', '30', 'Chân Váy Nữ Dài Xếp Ly 2 Lớp Mềm Mịn Form A Line', 516, 75, 0, '2025-08-24 01:26:32', '2025-08-24 01:26:32'),
(168, 1, 300000, 250000, 17, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/91/z57oxgmpfwt17slr6suc', 'Đen', 'S', 'Đầm nữ cộc tay cotton xẻ tà form a line', 401, 75, 0, '2025-08-24 01:26:32', '2025-08-24 01:26:32'),
(169, 1, 250000, 150000, 40, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/34/fkrwnvscpnkmbjltbckz', 'Xanh da trời', 'XL', 'Áo Sơ Mi Nam Tay Ngắn Oxford Kiểu Trơn Form Relax', 182, 76, 0, '2025-08-24 01:27:14', '2025-08-24 01:27:14'),
(170, 1, 450000, 420000, 7, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/125/g8xiu9p8k5rtjzuxxywl', 'Trắng', '29', 'Quần Jeans Nữ Trắng Thêu Nhỏ Ống Loe Form Flared', 562, 76, 0, '2025-08-24 01:27:14', '2025-08-24 01:27:14'),
(171, 1, 400000, 400000, 0, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/113/wmojwmqyzxafnjwgdpzo', 'Xám', '30', 'Quần dài nữ ống rộng phối lưng wide leg', 536, 76, 0, '2025-08-24 01:27:14', '2025-08-24 01:27:14'),
(172, 2, 320000, 300000, 6, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/127/xwydczlanftvbaira5uy', 'Xanh da trời', '29', 'Quần Denim Nữ Túi Hộp Trước Ống Đứng Form Straight', 570, 77, 0, '2025-08-24 01:27:48', '2025-08-24 01:27:48'),
(173, 1, 400000, 340000, 15, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/63/iclbuasw0n3j1hezswrq', 'Đen', '32', 'Quần Tây Nam Dài Ủi Ly Phía Trước Form Slim', 299, 77, 0, '2025-08-24 01:27:48', '2025-08-24 01:27:48'),
(174, 1, 400000, 400000, 0, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/109/cn970urvktrxs6mp90c4', 'Đen', '30', 'Chân váy ngắn nữ xếp ly hai lớp Aline', 522, 78, 0, '2025-08-24 01:28:23', '2025-08-24 01:28:23'),
(175, 1, 400000, 350000, 13, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/70/fvzh2azkile3exp4h4ez', 'Đen', '32', 'Quần Tây Nam Basic Cá Tính Form Carrot', 327, 78, 0, '2025-08-24 01:28:23', '2025-08-24 01:28:23'),
(176, 1, 400000, 400000, 0, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/104/gxqrq66h9lfnwngelysq', 'Trắng', '30', 'Chân Váy Denim Nữ Dài Ôm Nhẹ Hông Form Flared', 508, 79, 0, '2025-08-24 01:33:13', '2025-08-24 01:33:13'),
(177, 1, 400000, 320000, 20, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/54/hdbquqirkxiymdy5wtqs', 'Đen', '32', 'Quần kaki nam dài premium dáng ôm form slim', 255, 79, 0, '2025-08-24 01:33:13', '2025-08-24 01:33:13'),
(178, 1, 450000, 420000, 7, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/126/hdzzlzbmfkqukmlphqwp', 'Trắng', '29', 'Quần Denim Nữ Trơn Ống Đứng Form Straight', 566, 79, 0, '2025-08-24 01:33:13', '2025-08-24 01:33:13'),
(179, 1, 500000, 420000, 16, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/22/qv5bdwhvpo27bbwvd3kz', 'Đen', 'L', 'Áo khoác gile nam chần bông có túi form regular', 127, 80, 0, '2025-08-24 01:33:54', '2025-08-24 01:33:54'),
(180, 1, 260000, 220000, 15, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/87/q0ge5ccgkkjxjb7qytmd', 'Hồng', 'S', 'Áo Sơ Mi Nữ Tay Dài Kiểu Trơn Dáng Rộng', 389, 80, 0, '2025-08-24 01:33:54', '2025-08-24 01:33:54'),
(181, 1, 400000, 400000, 0, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/104/gxqrq66h9lfnwngelysq', 'Trắng', '30', 'Chân Váy Denim Nữ Dài Ôm Nhẹ Hông Form Flared', 508, 81, 0, '2025-08-24 01:34:57', '2025-08-24 01:34:57'),
(182, 1, 320000, 300000, 6, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/127/xwydczlanftvbaira5uy', 'Xanh da trời', '29', 'Quần Denim Nữ Túi Hộp Trước Ống Đứng Form Straight', 570, 81, 0, '2025-08-24 01:34:57', '2025-08-24 01:34:57'),
(183, 1, 400000, 400000, 0, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/113/wmojwmqyzxafnjwgdpzo', 'Xám', '30', 'Quần dài nữ ống rộng phối lưng wide leg', 536, 82, 0, '2025-08-24 01:35:34', '2025-08-24 01:35:34'),
(184, 1, 450000, 350000, 22, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/26/ijmj9pqwh7oxn3mzwfyl', 'Xám', 'XL', 'Áo khoác denim nam form regular', 147, 82, 0, '2025-08-24 01:35:34', '2025-08-24 01:35:34'),
(185, 1, 400000, 400000, 0, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/113/wmojwmqyzxafnjwgdpzo', 'Xám', '30', 'Quần dài nữ ống rộng phối lưng wide leg', 536, 83, 0, '2025-08-24 01:36:21', '2025-08-24 01:36:21'),
(186, 1, 250000, 220000, 12, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/32/xbntnu1shg4qxxjz53rq', 'Xanh da trời', 'L', 'Áo sơ mi Denim sợi Chuối tay dài. Fitted', 170, 83, 0, '2025-08-24 01:36:21', '2025-08-24 01:36:21'),
(187, 1, 250000, 220000, 12, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/20/hdqob8b8skn3bhkny7vz', 'Xanh da trời', 'L', 'Áo Thun Nam Tay Ngắn Cotton Phối Viền Tay Và Cổ', 115, 83, 0, '2025-08-24 01:36:21', '2025-08-24 01:36:21'),
(188, 1, 400000, 400000, 0, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/114/xeg5ewovhqxnzbjcofpp', 'Xám', '30', 'Quần dài nữ xám ống suông form straight', 538, 84, 0, '2025-08-24 01:36:40', '2025-08-24 01:36:40'),
(189, 1, 250000, 200000, 20, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/3/l7ag1lujsrzgxoomiywh', 'Đen', 'M', 'Áo Polo Nam Tay Ngắn Cotton Phối Viền Cổ Fitted', 13, 85, 0, '2025-08-24 02:07:30', '2025-08-24 02:07:30'),
(190, 1, 500000, 450000, 10, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/135/hsqxilvqkxbutjipnnso', 'Đỏ', '29', 'Quần nỉ sweatpants nữ diễu gân trước wideleg', 592, 86, 0, '2025-08-24 02:07:41', '2025-08-24 02:07:41'),
(191, 1, 250000, 200000, 20, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/31/xtmovab3rqqsugrgep7b', 'Xanh da trời', 'L', 'Áo cổ trụ Denim sợi Chuối tay dài. Fitted', 164, 87, 0, '2025-08-24 02:07:52', '2025-08-24 02:07:52'),
(192, 1, 400000, 400000, 0, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/113/wmojwmqyzxafnjwgdpzo', 'Xám', '30', 'Quần dài nữ ống rộng phối lưng wide leg', 536, 88, 0, '2025-08-24 02:08:02', '2025-08-24 02:08:02'),
(193, 1, 250000, 200000, 20, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/31/xtmovab3rqqsugrgep7b', 'Xanh da trời', 'L', 'Áo cổ trụ Denim sợi Chuối tay dài. Fitted', 164, 89, 0, '2025-08-24 02:08:14', '2025-08-24 02:08:14'),
(194, 1, 400000, 400000, 0, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/103/kbtgxz1irhnyu9mheoid', 'Xanh da trời', '30', 'Chân Váy Denim Nữ Dài Xẻ Tà Lệch Form Straight', 506, 90, 0, '2025-08-24 02:08:26', '2025-08-24 02:08:26'),
(195, 1, 400000, 350000, 13, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/47/ruhb91rkucxzk1sxptwj', 'Xanh da trời', '32', 'Quần denim nam dài dáng ôm form slim', 228, 91, 0, '2025-08-24 02:08:37', '2025-08-24 02:08:37'),
(196, 1, 250000, 200000, 20, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/8/bl9mgvtw3cfaq0yqojbo', 'Xanh lá cây', 'L', 'Áo Polo Nam Tay Ngắn Phối Cổ \"Together in Times\"', 43, 92, 0, '2025-08-24 02:12:48', '2025-08-24 02:12:48'),
(197, 1, 300000, 250000, 17, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/82/qu1kyht0kwaaa3wgkc2g', 'Đỏ', 'S', 'Áo Sơ Mi Crop Nữ Tay Dài Kẻ Sọc Caro Dây Cột Eo', 371, 93, 0, '2025-08-24 02:12:59', '2025-08-24 02:12:59'),
(198, 1, 250000, 200000, 20, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/31/xtmovab3rqqsugrgep7b', 'Xanh da trời', 'L', 'Áo cổ trụ Denim sợi Chuối tay dài. Fitted', 164, 94, 0, '2025-08-24 02:13:14', '2025-08-24 02:13:14'),
(199, 1, 250000, 200000, 20, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/31/xtmovab3rqqsugrgep7b', 'Xanh da trời', 'L', 'Áo cổ trụ Denim sợi Chuối tay dài. Fitted', 164, 95, 0, '2025-08-24 02:13:25', '2025-08-24 02:13:25'),
(200, 1, 500000, 450000, 10, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/135/hsqxilvqkxbutjipnnso', 'Đỏ', '29', 'Quần nỉ sweatpants nữ diễu gân trước wideleg', 592, 96, 0, '2025-08-24 02:13:34', '2025-08-24 02:13:34'),
(201, 1, 400000, 340000, 15, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/63/iclbuasw0n3j1hezswrq', 'Đen', '32', 'Quần Tây Nam Dài Ủi Ly Phía Trước Form Slim', 299, 97, 0, '2025-08-24 02:13:44', '2025-08-24 02:13:44'),
(202, 1, 500000, 450000, 10, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/135/hsqxilvqkxbutjipnnso', 'Đỏ', '29', 'Quần nỉ sweatpants nữ diễu gân trước wideleg', 592, 98, 0, '2025-08-24 02:13:54', '2025-08-24 02:13:54'),
(203, 1, 400000, 340000, 15, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/63/iclbuasw0n3j1hezswrq', 'Đen', '32', 'Quần Tây Nam Dài Ủi Ly Phía Trước Form Slim', 299, 99, 0, '2025-08-24 02:14:05', '2025-08-24 02:14:05'),
(204, 1, 400000, 350000, 13, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/106/nyudjpbwrdxn0sz5npwe', 'Xám', '30', 'Chân Váy Nữ Dài Xếp Ly 2 Lớp Mềm Mịn Form A Line', 516, 100, 0, '2025-08-24 02:14:14', '2025-08-24 02:14:14'),
(205, 1, 250000, 200000, 20, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/31/xtmovab3rqqsugrgep7b', 'Xanh da trời', 'L', 'Áo cổ trụ Denim sợi Chuối tay dài. Fitted', 164, 101, 0, '2025-08-24 02:14:25', '2025-08-24 02:14:25'),
(206, 1, 250000, 200000, 20, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/3/l7ag1lujsrzgxoomiywh', 'Đen', 'M', 'Áo Polo Nam Tay Ngắn Cotton Phối Viền Cổ Fitted', 13, 102, 0, '2025-08-25 06:57:48', '2025-08-25 06:57:48'),
(207, 1, 500000, 300000, 40, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/25/wh8wtuuo5bwhrztnmvl4', 'Đen', 'L', 'Áo khoác nam dài tay chần bông có túi form loose', 141, 103, 1, '2025-08-25 07:01:40', '2025-08-25 07:01:40'),
(208, 1, 300000, 250000, 17, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/91/z57oxgmpfwt17slr6suc', 'Đen', 'S', 'Đầm nữ cộc tay cotton xẻ tà form a line', 401, 104, 1, '2025-08-25 07:02:00', '2025-08-25 07:03:33'),
(209, 2, 250000, 220000, 12, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/12/hwv06dor2un1bdaxrpjh', 'Đen', 'XL', 'Áo Thun Nam Tay Ngắn Cotton Thêu Chữ Phối Viền Cổ', 68, 105, 0, '2025-08-25 07:21:16', '2025-08-25 07:21:16'),
(210, 1, 250000, 200000, 20, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/79/cbuvn7mrmvhhk9nrdqt1', 'Be', 'S', 'Áo Thun Nữ Tay Ngắn Cotton Rút Hai Bên Together', 361, 106, 0, '2025-08-25 07:28:00', '2025-08-25 07:28:00'),
(211, 1, 250000, 220000, 12, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/12/hwv06dor2un1bdaxrpjh', 'Đen', 'L', 'Áo Thun Nam Tay Ngắn Cotton Thêu Chữ Phối Viền Cổ', 67, 107, 0, '2025-08-25 07:45:46', '2025-08-25 07:45:46'),
(212, 1, 350000, 300000, 14, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/1/idqlv47v35cmon2i2epb', 'Đen', 'S', 'Áo Polo Nam Tay Ngắn Cotton Phối Màu Form Loose', 4, 108, 0, '2025-08-25 10:22:21', '2025-08-25 10:22:21');
INSERT INTO `orders_detail` (`id`, `quantity`, `price`, `sale_price`, `sale_percent`, `image_product`, `color`, `size`, `name_product`, `product_item_id`, `order_id`, `restocked`, `created_at`, `updated_at`) VALUES
(213, 1, 350000, 300000, 14, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/1/y02mbjganl1muasoeysn', 'Đỏ', 'S', 'Áo Polo Nam Tay Ngắn Cotton Phối Màu Form Loose', 1, 108, 0, '2025-08-25 10:22:21', '2025-08-25 10:22:21'),
(214, 1, 250000, 220000, 12, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/12/s03fqagpxnr9ydva1ccu', 'Trắng', 'L', 'Áo Thun Nam Tay Ngắn Cotton Thêu Chữ Phối Viền Cổ', 70, 109, 1, '2025-08-25 10:24:26', '2025-08-25 10:26:19'),
(215, 1, 250000, 220000, 12, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/12/hwv06dor2un1bdaxrpjh', 'Đen', 'L', 'Áo Thun Nam Tay Ngắn Cotton Thêu Chữ Phối Viền Cổ', 67, 109, 1, '2025-08-25 10:24:26', '2025-08-25 10:26:19'),
(216, 1, 250000, 220000, 12, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/20/hdqob8b8skn3bhkny7vz', 'Xanh da trời', 'L', 'Áo Thun Nam Tay Ngắn Cotton Phối Viền Tay Và Cổ', 115, 110, 0, '2025-08-25 10:55:55', '2025-08-25 10:55:55'),
(217, 1, 300000, 280000, 7, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/67/s6ce9c72pkev9fg7sbre', 'Đen', '32', 'Quần Tây Nam Dài Ly Giữa Form Slim Dáng Ôm', 313, 111, 0, '2025-08-25 10:58:33', '2025-08-25 10:58:33'),
(218, 1, 400000, 320000, 20, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/54/hdbquqirkxiymdy5wtqs', 'Đen', '32', 'Quần kaki nam dài premium dáng ôm form slim', 255, 112, 0, '2025-08-25 10:59:19', '2025-08-25 10:59:19'),
(219, 1, 250000, 200000, 20, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/3/l7ag1lujsrzgxoomiywh', 'Đen', 'M', 'Áo Polo Nam Tay Ngắn Cotton Phối Viền Cổ Fitted', 13, 113, 0, '2025-08-25 11:01:31', '2025-08-25 11:01:31'),
(220, 3, 250000, 200000, 20, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/79/cbuvn7mrmvhhk9nrdqt1', 'Be', 'S', 'Áo Thun Nữ Tay Ngắn Cotton Rút Hai Bên Together', 361, 114, 0, '2025-08-25 11:03:25', '2025-08-25 11:03:25'),
(221, 1, 450000, 420000, 7, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/133/w9bwe2qeasymvt4jq20v', 'Xanh lá cây', '29', 'Quần short nỉ nữ có túi. Relax', 585, 115, 0, '2025-08-25 11:04:09', '2025-08-25 11:04:09'),
(222, 3, 250000, 200000, 20, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/3/l7ag1lujsrzgxoomiywh', 'Đen', 'M', 'Áo Polo Nam Tay Ngắn Cotton Phối Viền Cổ Fitted', 13, 116, 0, '2025-08-25 11:05:56', '2025-08-25 11:05:56'),
(223, 1, 500000, 450000, 10, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/135/hsqxilvqkxbutjipnnso', 'Đỏ', '29', 'Quần nỉ sweatpants nữ diễu gân trước wideleg', 592, 117, 0, '2025-08-25 11:07:06', '2025-08-25 11:07:06'),
(224, 1, 250000, 200000, 20, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/3/l7ag1lujsrzgxoomiywh', 'Đen', 'L', 'Áo Polo Nam Tay Ngắn Cotton Phối Viền Cổ Fitted', 14, 118, 0, '2025-08-25 11:07:46', '2025-08-25 11:07:46'),
(225, 1, 250000, 200000, 20, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/3/l7ag1lujsrzgxoomiywh', 'Đen', 'M', 'Áo Polo Nam Tay Ngắn Cotton Phối Viền Cổ Fitted', 13, 118, 0, '2025-08-25 11:07:46', '2025-08-25 11:07:46'),
(226, 1, 240000, 220000, 8, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/55/lie7ow1xzjyjbub5s0be', 'Đen', '32', 'Quần Dài Kaki Nam Cotton Xếp Ly Ống Suông', 261, 119, 0, '2025-08-25 11:08:42', '2025-08-25 11:08:42'),
(227, 1, 300000, 280000, 7, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/67/s6ce9c72pkev9fg7sbre', 'Đen', '32', 'Quần Tây Nam Dài Ly Giữa Form Slim Dáng Ôm', 313, 120, 0, '2025-08-25 11:10:17', '2025-08-25 11:10:17'),
(228, 1, 400000, 400000, 0, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/114/xeg5ewovhqxnzbjcofpp', 'Xám', '30', 'Quần dài nữ xám ống suông form straight', 538, 121, 0, '2025-08-25 11:14:37', '2025-08-25 11:14:37'),
(229, 1, 250000, 220000, 12, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/12/hwv06dor2un1bdaxrpjh', 'Đen', 'L', 'Áo Thun Nam Tay Ngắn Cotton Thêu Chữ Phối Viền Cổ', 67, 122, 0, '2025-08-25 11:15:16', '2025-08-25 11:15:16'),
(230, 1, 400000, 400000, 0, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/115/uaehuvipyqriocsqjupe', 'Xám', '30', 'Quần dài nữ xếp ly trước straight crop', 540, 123, 0, '2025-08-25 11:15:47', '2025-08-25 11:15:47'),
(231, 1, 250000, 200000, 20, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/80/iu0inelmx9vb7g76uagl', 'Trắng', 'S', 'Áo Thun Nữ Tay Ngắn Cotton Thêu Ngực Trái Regular', 365, 124, 0, '2025-08-25 11:22:02', '2025-08-25 11:22:02'),
(232, 1, 260000, 220000, 15, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/87/q0ge5ccgkkjxjb7qytmd', 'Hồng', 'S', 'Áo Sơ Mi Nữ Tay Dài Kiểu Trơn Dáng Rộng', 389, 125, 0, '2025-08-25 11:23:12', '2025-08-25 11:23:12'),
(233, 1, 300000, 290000, 3, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/58/qnupl3ad2agik1gqabfe', 'Trắng', '32', 'Quần Dài Nam Kaki Cotton Ống Suông Form Loose', 276, 125, 0, '2025-08-25 11:23:12', '2025-08-25 11:23:12'),
(234, 1, 250000, 200000, 20, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/8/bl9mgvtw3cfaq0yqojbo', 'Xanh lá cây', 'L', 'Áo Polo Nam Tay Ngắn Phối Cổ \"Together in Times\"', 43, 126, 0, '2025-08-25 11:24:02', '2025-08-25 11:24:02'),
(235, 1, 260000, 220000, 15, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/87/q0ge5ccgkkjxjb7qytmd', 'Hồng', 'S', 'Áo Sơ Mi Nữ Tay Dài Kiểu Trơn Dáng Rộng', 389, 127, 0, '2025-08-25 11:26:03', '2025-08-25 11:26:03'),
(236, 1, 250000, 200000, 20, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/8/bl9mgvtw3cfaq0yqojbo', 'Xanh lá cây', 'L', 'Áo Polo Nam Tay Ngắn Phối Cổ \"Together in Times\"', 43, 128, 0, '2025-08-25 11:28:44', '2025-08-25 11:28:44'),
(237, 1, 450000, 420000, 7, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/126/hdzzlzbmfkqukmlphqwp', 'Trắng', '29', 'Quần Denim Nữ Trơn Ống Đứng Form Straight', 566, 129, 0, '2025-08-25 11:29:02', '2025-08-25 11:29:02'),
(238, 1, 300000, 280000, 7, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/67/s6ce9c72pkev9fg7sbre', 'Đen', '32', 'Quần Tây Nam Dài Ly Giữa Form Slim Dáng Ôm', 313, 130, 0, '2025-08-25 11:29:14', '2025-08-25 11:29:14'),
(239, 1, 250000, 200000, 20, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/8/bl9mgvtw3cfaq0yqojbo', 'Xanh lá cây', 'L', 'Áo Polo Nam Tay Ngắn Phối Cổ \"Together in Times\"', 43, 131, 0, '2025-08-25 11:47:23', '2025-08-25 11:47:23'),
(240, 1, 300000, 250000, 17, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/82/qu1kyht0kwaaa3wgkc2g', 'Đỏ', 'S', 'Áo Sơ Mi Crop Nữ Tay Dài Kẻ Sọc Caro Dây Cột Eo', 371, 132, 0, '2025-08-25 11:58:49', '2025-08-25 11:58:49'),
(241, 1, 250000, 200000, 20, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/8/bl9mgvtw3cfaq0yqojbo', 'Xanh lá cây', 'L', 'Áo Polo Nam Tay Ngắn Phối Cổ \"Together in Times\"', 43, 133, 0, '2025-08-25 12:00:13', '2025-08-25 12:00:13'),
(242, 1, 300000, 290000, 3, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/58/qnupl3ad2agik1gqabfe', 'Trắng', '32', 'Quần Dài Nam Kaki Cotton Ống Suông Form Loose', 276, 134, 1, '2025-09-02 14:46:43', '2025-09-02 14:49:39'),
(243, 1, 300000, 250000, 17, 'https://res.cloudinary.com/diyy6kb1n/image/upload/products/82/qu1kyht0kwaaa3wgkc2g', 'Đỏ', 'S', 'Áo Sơ Mi Crop Nữ Tay Dài Kẻ Sọc Caro Dây Cột Eo', 371, 135, 1, '2025-09-02 14:51:34', '2025-09-02 15:21:02');

-- --------------------------------------------------------

--
-- Table structure for table `order_delivery_failures`
--

CREATE TABLE `order_delivery_failures` (
  `id` bigint UNSIGNED NOT NULL,
  `order_id` bigint UNSIGNED NOT NULL,
  `attempt` bigint UNSIGNED NOT NULL DEFAULT '1',
  `reason` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_proof_images`
--

CREATE TABLE `order_proof_images` (
  `id` bigint UNSIGNED NOT NULL,
  `order_id` bigint UNSIGNED NOT NULL,
  `images` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_proof_images`
--

INSERT INTO `order_proof_images` (`id`, `order_id`, `images`, `created_at`, `updated_at`) VALUES
(1, 1, 'uploads/orders/1/proofs/t2yxzoaraoslvkandovy', '2025-08-23 22:52:08', '2025-08-23 22:52:08'),
(2, 2, 'uploads/orders/2/proofs/rgewxpkdgi3auagqdg1w', '2025-08-23 22:56:17', '2025-08-23 22:56:17'),
(3, 3, 'uploads/orders/3/proofs/lpviget3ey7ltk7mo8sd', '2025-08-23 22:57:31', '2025-08-23 22:57:31'),
(4, 4, 'uploads/orders/4/proofs/syxfnceqdvxauld4a8sy', '2025-08-23 22:58:49', '2025-08-23 22:58:49'),
(5, 5, 'uploads/orders/5/proofs/mtzy8zbepknduajauezo', '2025-08-23 23:02:01', '2025-08-23 23:02:01'),
(6, 7, 'uploads/orders/7/proofs/mlylfjz00lsi8jqffivq', '2025-08-23 23:05:14', '2025-08-23 23:05:14'),
(7, 9, 'uploads/orders/9/proofs/nj5yronukte8fvblamnx', '2025-08-23 23:07:29', '2025-08-23 23:07:29'),
(8, 6, 'uploads/orders/6/proofs/wq5x5ugf1byf4ttrwzlo', '2025-08-23 23:09:21', '2025-08-23 23:09:21'),
(9, 11, 'uploads/orders/11/proofs/ajoc0fbq9rbbtcqbbg6b', '2025-08-23 23:09:38', '2025-08-23 23:09:38'),
(10, 12, 'uploads/orders/12/proofs/erxnrkyecl5mk6wua8ni', '2025-08-23 23:12:23', '2025-08-23 23:12:23'),
(11, 10, 'uploads/orders/10/proofs/igvzywimeikpsbmay2r5', '2025-08-23 23:12:35', '2025-08-23 23:12:35'),
(12, 13, 'uploads/orders/13/proofs/icx2joweedykqhhf7so3', '2025-08-23 23:13:41', '2025-08-23 23:13:41'),
(13, 14, 'uploads/orders/14/proofs/kelbto7h0knjxjzkidqr', '2025-08-23 23:15:14', '2025-08-23 23:15:14'),
(14, 16, 'uploads/orders/16/proofs/g8zkdauwjrjyg6grnxiv', '2025-08-23 23:17:51', '2025-08-23 23:17:51'),
(15, 15, 'uploads/orders/15/proofs/nsln7ocnqaf6dfkk5svw', '2025-08-23 23:18:13', '2025-08-23 23:18:13'),
(16, 17, 'uploads/orders/17/proofs/a8fjnu1j6bn0wswnql27', '2025-08-23 23:25:56', '2025-08-23 23:25:56'),
(17, 18, 'uploads/orders/18/proofs/bvxkitxrhwjyk07dvfyb', '2025-08-23 23:27:27', '2025-08-23 23:27:27'),
(18, 19, 'uploads/orders/19/proofs/z59okevd0gwmkwn1fi67', '2025-08-23 23:28:43', '2025-08-23 23:28:43'),
(19, 20, 'uploads/orders/20/proofs/eyljvkbve6urxfiqq9yr', '2025-08-23 23:29:45', '2025-08-23 23:29:45'),
(20, 21, 'uploads/orders/21/proofs/nzpfarvvb18ppq86qetz', '2025-08-23 23:33:37', '2025-08-23 23:33:37'),
(21, 22, 'uploads/orders/22/proofs/cwhgasvfix28s35uljwb', '2025-08-23 23:34:55', '2025-08-23 23:34:55'),
(22, 23, 'uploads/orders/23/proofs/mliz1fkiippddiitvnjb', '2025-08-23 23:36:10', '2025-08-23 23:36:10'),
(23, 24, 'uploads/orders/24/proofs/i9kvcdgjza1jpq1hewwc', '2025-08-23 23:37:52', '2025-08-23 23:37:52'),
(24, 25, 'uploads/orders/25/proofs/rxkdq8rbphmzm4ftgqlj', '2025-08-23 23:39:08', '2025-08-23 23:39:08'),
(25, 30, 'uploads/orders/30/proofs/jd24d7gppxal0q7wpqlc', '2025-08-23 23:45:59', '2025-08-23 23:45:59'),
(26, 29, 'uploads/orders/29/proofs/v5rtsjzxgoveg9nkl8oz', '2025-08-23 23:46:24', '2025-08-23 23:46:24'),
(27, 28, 'uploads/orders/28/proofs/lb8wvbo8t97htkelhpmf', '2025-08-23 23:46:40', '2025-08-23 23:46:40'),
(28, 27, 'uploads/orders/27/proofs/uhrnsmqslafkmsy3bz4n', '2025-08-23 23:46:59', '2025-08-23 23:46:59'),
(29, 26, 'uploads/orders/26/proofs/yzxgopzmr7zphsforcqc', '2025-08-23 23:47:16', '2025-08-23 23:47:16'),
(30, 36, 'uploads/orders/36/proofs/hifpmnv3vepxfmettcyh', '2025-08-24 00:10:45', '2025-08-24 00:10:45'),
(31, 35, 'uploads/orders/35/proofs/acc0z8txahylzfs3b0bd', '2025-08-24 00:11:05', '2025-08-24 00:11:05'),
(32, 34, 'uploads/orders/34/proofs/mlaq2qyhwp5tbikxi2rq', '2025-08-24 00:11:27', '2025-08-24 00:11:27'),
(33, 33, 'uploads/orders/33/proofs/sf3kdmaktkdlqn9si90q', '2025-08-24 00:11:46', '2025-08-24 00:11:46'),
(34, 32, 'uploads/orders/32/proofs/esjolgxi1nvooqjcenu0', '2025-08-24 00:12:06', '2025-08-24 00:12:06'),
(35, 41, 'uploads/orders/41/proofs/auvanxijptyvhwozok5m', '2025-08-24 00:18:50', '2025-08-24 00:18:50'),
(36, 40, 'uploads/orders/40/proofs/pwsnv2somxuk6qpza8ss', '2025-08-24 00:19:40', '2025-08-24 00:19:40'),
(37, 42, 'uploads/orders/42/proofs/rn68zencalhqgqsourwn', '2025-08-24 00:19:54', '2025-08-24 00:19:54'),
(38, 39, 'uploads/orders/39/proofs/bjkfbq3h4gk4lidjthze', '2025-08-24 00:20:06', '2025-08-24 00:20:06'),
(39, 38, 'uploads/orders/38/proofs/gkkao88ddgxo59oqzwm2', '2025-08-24 00:20:17', '2025-08-24 00:20:17'),
(40, 37, 'uploads/orders/37/proofs/hfahycizdq78xg3ylrzu', '2025-08-24 00:20:27', '2025-08-24 00:20:27'),
(41, 48, 'uploads/orders/48/proofs/zaegg5bs6g18hsb2grix', '2025-08-24 00:28:00', '2025-08-24 00:28:00'),
(42, 47, 'uploads/orders/47/proofs/cc2pms2zgsu4tzwm4r1v', '2025-08-24 00:28:16', '2025-08-24 00:28:16'),
(43, 46, 'uploads/orders/46/proofs/bl165zrylzcwfhcovtyk', '2025-08-24 00:28:33', '2025-08-24 00:28:33'),
(44, 45, 'uploads/orders/45/proofs/ewgbu8xiwmgybrpti23m', '2025-08-24 00:28:49', '2025-08-24 00:28:49'),
(45, 44, 'uploads/orders/44/proofs/yifrcff2cd3xmxjpzyz8', '2025-08-24 00:29:07', '2025-08-24 00:29:07'),
(46, 43, 'uploads/orders/43/proofs/qwbah4ygixnbdsjhvje6', '2025-08-24 00:29:23', '2025-08-24 00:29:23'),
(47, 54, 'uploads/orders/54/proofs/k4qfkezcrfkwcckulopr', '2025-08-24 00:39:12', '2025-08-24 00:39:12'),
(48, 53, 'uploads/orders/53/proofs/uemkvcwwoofwy9qizjy7', '2025-08-24 00:39:25', '2025-08-24 00:39:25'),
(49, 52, 'uploads/orders/52/proofs/sgdx43paz98hx16ih0ny', '2025-08-24 00:39:43', '2025-08-24 00:39:43'),
(50, 51, 'uploads/orders/51/proofs/qz0jelxc8xygy5uvhxdj', '2025-08-24 00:39:57', '2025-08-24 00:39:57'),
(51, 50, 'uploads/orders/50/proofs/bkz6c0zrqvh3hyoo48zw', '2025-08-24 00:40:12', '2025-08-24 00:40:12'),
(52, 49, 'uploads/orders/49/proofs/rgbkigfqstsw8rxoda8p', '2025-08-24 00:40:27', '2025-08-24 00:40:27'),
(53, 60, 'uploads/orders/60/proofs/xskitezzp85kcl6qyrhd', '2025-08-24 00:55:07', '2025-08-24 00:55:07'),
(54, 59, 'uploads/orders/59/proofs/ggtnrm3ogedpedbrzx7f', '2025-08-24 00:55:25', '2025-08-24 00:55:25'),
(55, 58, 'uploads/orders/58/proofs/z8rw71l79qggf9wfr9za', '2025-08-24 00:55:39', '2025-08-24 00:55:39'),
(56, 57, 'uploads/orders/57/proofs/srsl6tnxbley6bqgcrca', '2025-08-24 00:55:53', '2025-08-24 00:55:53'),
(57, 56, 'uploads/orders/56/proofs/asj2x2xgm6zasohtcyjd', '2025-08-24 00:56:08', '2025-08-24 00:56:08'),
(58, 55, 'uploads/orders/55/proofs/bej98dydaoej36ejcnvi', '2025-08-24 00:56:25', '2025-08-24 00:56:25'),
(59, 66, 'uploads/orders/66/proofs/zrg5tttrj1fphuyxrjah', '2025-08-24 01:05:03', '2025-08-24 01:05:03'),
(60, 65, 'uploads/orders/65/proofs/eeqqzqvi9pzgdoykcfhp', '2025-08-24 01:05:22', '2025-08-24 01:05:22'),
(61, 64, 'uploads/orders/64/proofs/fvefokslv7tiu60otw9c', '2025-08-24 01:05:38', '2025-08-24 01:05:38'),
(62, 63, 'uploads/orders/63/proofs/iwwbmvisnjpo6oawrmva', '2025-08-24 01:05:54', '2025-08-24 01:05:54'),
(63, 62, 'uploads/orders/62/proofs/syyyjujtwrnrebtlyvyu', '2025-08-24 01:06:15', '2025-08-24 01:06:15'),
(64, 61, 'uploads/orders/61/proofs/f2lqac8wmxp6bdb5il1u', '2025-08-24 01:06:33', '2025-08-24 01:06:33'),
(65, 72, 'uploads/orders/72/proofs/zolf1x59beehjfw5vivr', '2025-08-24 01:20:39', '2025-08-24 01:20:39'),
(66, 71, 'uploads/orders/71/proofs/uxvgdfsl5i2ctcfqzfu4', '2025-08-24 01:20:56', '2025-08-24 01:20:56'),
(67, 70, 'uploads/orders/70/proofs/vj1s5usevhod7v5dd6hn', '2025-08-24 01:21:16', '2025-08-24 01:21:16'),
(68, 69, 'uploads/orders/69/proofs/imwngmqlrvkdndbbwpnu', '2025-08-24 01:21:36', '2025-08-24 01:21:36'),
(69, 68, 'uploads/orders/68/proofs/qxwdkov984g14vtttuex', '2025-08-24 01:21:56', '2025-08-24 01:21:56'),
(70, 67, 'uploads/orders/67/proofs/upvehz8fdw3lrfizwsgm', '2025-08-24 01:22:15', '2025-08-24 01:22:15'),
(71, 78, 'uploads/orders/78/proofs/mguxyxslwo0gfpvapfk2', '2025-08-24 01:28:50', '2025-08-24 01:28:50'),
(72, 77, 'uploads/orders/77/proofs/iazsaaumje3wkwrtyjib', '2025-08-24 01:29:08', '2025-08-24 01:29:08'),
(73, 76, 'uploads/orders/76/proofs/rzisndsb7w11nxez0jup', '2025-08-24 01:29:27', '2025-08-24 01:29:27'),
(74, 75, 'uploads/orders/75/proofs/me6a9qaphjv4exve6w7g', '2025-08-24 01:29:48', '2025-08-24 01:29:48'),
(75, 74, 'uploads/orders/74/proofs/an7bzwgcl250t3yjfozt', '2025-08-24 01:30:08', '2025-08-24 01:30:08'),
(76, 73, 'uploads/orders/73/proofs/ifwhchnj6khda3iizrmq', '2025-08-24 01:30:26', '2025-08-24 01:30:26'),
(77, 84, 'uploads/orders/84/proofs/zmvpip8uue3vrkp0m3c5', '2025-08-24 01:37:21', '2025-08-24 01:37:21'),
(78, 83, 'uploads/orders/83/proofs/el4vrdy44hkscjaf5s8q', '2025-08-24 01:37:35', '2025-08-24 01:37:35'),
(79, 82, 'uploads/orders/82/proofs/zsqpvunkcxqoswqygxz9', '2025-08-24 01:37:48', '2025-08-24 01:37:48'),
(80, 81, 'uploads/orders/81/proofs/fmz1d3lwra2rmx6nuzmy', '2025-08-24 01:38:03', '2025-08-24 01:38:03'),
(81, 80, 'uploads/orders/80/proofs/uwhe6flnnizvnebrf5us', '2025-08-24 01:38:23', '2025-08-24 01:38:23'),
(82, 79, 'uploads/orders/79/proofs/qytvf9bf2gnb06aqssuh', '2025-08-24 01:38:37', '2025-08-24 01:38:37'),
(83, 91, 'uploads/orders/91/proofs/yfnlr20h0sqaddrpcnzf', '2025-08-24 02:09:23', '2025-08-24 02:09:23'),
(84, 90, 'uploads/orders/90/proofs/g69ehwknt4rngusifsbu', '2025-08-24 02:09:36', '2025-08-24 02:09:36'),
(85, 89, 'uploads/orders/89/proofs/l28wurndfnqeznrztfgi', '2025-08-24 02:09:49', '2025-08-24 02:09:49'),
(86, 88, 'uploads/orders/88/proofs/inbtzckrwgwxrhgvozxt', '2025-08-24 02:10:03', '2025-08-24 02:10:03'),
(87, 87, 'uploads/orders/87/proofs/ulweodwhrcyhznpbyyjf', '2025-08-24 02:10:17', '2025-08-24 02:10:17'),
(88, 86, 'uploads/orders/86/proofs/xfuvpsdomvtlwspzcxw7', '2025-08-24 02:10:33', '2025-08-24 02:10:33'),
(89, 85, 'uploads/orders/85/proofs/cddxn7che5l7mfsimsha', '2025-08-24 02:10:47', '2025-08-24 02:10:47'),
(90, 101, 'uploads/orders/101/proofs/uqmab2zb5brwv0nqlwd2', '2025-08-24 02:15:11', '2025-08-24 02:15:11'),
(91, 100, 'uploads/orders/100/proofs/rpvv3shpgkcte4q9ape4', '2025-08-24 02:15:29', '2025-08-24 02:15:29'),
(92, 99, 'uploads/orders/99/proofs/zw1wjxqgmhiybeyipv8g', '2025-08-24 02:15:44', '2025-08-24 02:15:44'),
(93, 98, 'uploads/orders/98/proofs/lygrz9wpczq5hbhnptlc', '2025-08-24 02:15:58', '2025-08-24 02:15:58'),
(94, 97, 'uploads/orders/97/proofs/vndp5kxehftq2yd4pfod', '2025-08-24 02:16:15', '2025-08-24 02:16:15'),
(95, 96, 'uploads/orders/96/proofs/bhionlx9qh7jvg72cug2', '2025-08-24 02:16:29', '2025-08-24 02:16:29'),
(96, 95, 'uploads/orders/95/proofs/rjzz4pxjn90rppmjpj5o', '2025-08-24 02:16:43', '2025-08-24 02:16:43'),
(97, 94, 'uploads/orders/94/proofs/zibefpntxvqubltqokjk', '2025-08-24 02:16:58', '2025-08-24 02:16:58'),
(98, 93, 'uploads/orders/93/proofs/w0frmjghspp68xdx5fci', '2025-08-24 02:17:22', '2025-08-24 02:17:22'),
(99, 92, 'uploads/orders/92/proofs/on841cahkj2z6wfrqfam', '2025-08-24 02:17:34', '2025-08-24 02:17:34'),
(100, 102, 'uploads/orders/102/proofs/nfndxo0wthymvsvzects', '2025-08-25 07:01:16', '2025-08-25 07:01:16'),
(101, 105, 'uploads/orders/105/proofs/d7wbri2dqlf9os8sbcjr', '2025-08-25 07:23:17', '2025-08-25 07:23:17'),
(102, 106, 'uploads/orders/106/proofs/ysnrkp0fz4ppknasbe1p', '2025-08-25 07:29:00', '2025-08-25 07:29:00'),
(103, 107, 'uploads/orders/107/proofs/gyhncw3nkmsjjryycc3l', '2025-08-25 07:46:53', '2025-08-25 07:46:53'),
(104, 110, 'uploads/orders/110/proofs/yiwbykof5vjampx0jakm', '2025-08-25 10:56:31', '2025-08-25 10:56:31'),
(105, 111, 'uploads/orders/111/proofs/s8kd8bxfmn9ljlcsfw4p', '2025-08-25 10:58:55', '2025-08-25 10:58:55'),
(106, 112, 'uploads/orders/112/proofs/us51lvxbolrh2i3ttkop', '2025-08-25 11:00:36', '2025-08-25 11:00:36'),
(107, 113, 'uploads/orders/113/proofs/jogx5tvca1jfdgjve7sn', '2025-08-25 11:01:51', '2025-08-25 11:01:51'),
(108, 114, 'uploads/orders/114/proofs/s3yx7j3ivbqdjav9s7nx', '2025-08-25 11:03:46', '2025-08-25 11:03:46'),
(109, 115, 'uploads/orders/115/proofs/lqblce0rsxqdqvjp0d3l', '2025-08-25 11:04:28', '2025-08-25 11:04:28'),
(110, 116, 'uploads/orders/116/proofs/jwxyudsdzvbhimybkvby', '2025-08-25 11:06:26', '2025-08-25 11:06:26'),
(111, 117, 'uploads/orders/117/proofs/w0g9qrgp7aba9zxln0xc', '2025-08-25 11:07:27', '2025-08-25 11:07:27'),
(112, 118, 'uploads/orders/118/proofs/tbxsnsvtspazr5aopvif', '2025-08-25 11:08:13', '2025-08-25 11:08:13'),
(113, 119, 'uploads/orders/119/proofs/cz2b1cvskxr4xtedy5h4', '2025-08-25 11:10:48', '2025-08-25 11:10:48'),
(114, 120, 'uploads/orders/120/proofs/btv0mac5uvetoyhoolge', '2025-08-25 11:11:05', '2025-08-25 11:11:05'),
(115, 121, 'uploads/orders/121/proofs/eqs924tflmdftaldngck', '2025-08-25 11:14:59', '2025-08-25 11:14:59'),
(116, 122, 'uploads/orders/122/proofs/lyqiepxosigtrlkdy5e6', '2025-08-25 11:15:37', '2025-08-25 11:15:37'),
(117, 123, 'uploads/orders/123/proofs/wymrzgyc9uzomcgcqg8e', '2025-08-25 11:16:04', '2025-08-25 11:16:04'),
(118, 123, 'uploads/orders/123/proofs/r3upxafkbhtlh2d4i9qj', '2025-08-25 11:16:16', '2025-08-25 11:16:16'),
(119, 124, 'uploads/orders/124/proofs/i9usom1fzoclglj1eupt', '2025-08-25 11:22:45', '2025-08-25 11:22:45'),
(120, 125, 'uploads/orders/125/proofs/hkfqf74fdsfwboexe0p9', '2025-08-25 11:26:17', '2025-08-25 11:26:17'),
(121, 126, 'uploads/orders/126/proofs/vqam6xb5cj3tt5kph5ea', '2025-08-25 11:26:40', '2025-08-25 11:26:40'),
(122, 127, 'uploads/orders/127/proofs/ryvsretpa5wzyidu0ogq', '2025-08-25 11:26:50', '2025-08-25 11:26:50'),
(123, 128, 'uploads/orders/128/proofs/sudjlu6cr2qy7glcascy', '2025-08-25 11:29:58', '2025-08-25 11:29:58'),
(124, 130, 'uploads/orders/130/proofs/uccehzgrer7eojixi0xm', '2025-08-25 11:30:23', '2025-08-25 11:30:23'),
(125, 129, 'uploads/orders/129/proofs/taetrds2uryxlr1kstzr', '2025-08-25 11:30:38', '2025-08-25 11:30:38'),
(126, 131, 'uploads/orders/131/proofs/tlxlrct9dqjrsp2vjkd2', '2025-08-25 11:47:50', '2025-08-25 11:47:50'),
(127, 132, 'uploads/orders/132/proofs/anlkd9vvce5w3h6nbffd', '2025-08-25 11:59:15', '2025-08-25 11:59:15'),
(128, 133, 'uploads/orders/133/proofs/krmjigb95nhgnzjnruyf', '2025-08-25 12:00:33', '2025-08-25 12:00:33');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `used` tinyint(1) NOT NULL DEFAULT '0',
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`id`, `user_id`, `token`, `used`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 43, '819891a092a9e1113e4fa7da2949f526dcb00e63742cd924f965056dcee22f55', 0, '2025-09-02 21:49:41', '2025-09-02 21:34:41', '2025-09-02 21:34:41');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumbnail` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `slug`, `content`, `thumbnail`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Quidem nihil.', 'quidem-nihil', 'Quibusdam aut saepe et ipsum. Debitis asperiores suscipit sit perferendis et. Quia velit repellendus nostrum odio. Pariatur repellat consequatur unde quia voluptatem.\n\nSint et quas ut. Voluptatem ratione illo dignissimos reprehenderit. Officiis dolorem consequatur temporibus non saepe labore. Et ut dolores sed repellat. Ullam iste et odio nesciunt quo.\n\nIn occaecati eveniet omnis. Possimus laborum enim est aut provident dolore suscipit. Ex odit totam est dolore officia. Ut facilis iure consequatur saepe.', 'https://via.placeholder.com/640x480.png/00ff22?text=news+nemo', 1, '2025-08-23 09:21:12', '2025-08-23 09:21:12'),
(2, 'Et odit.', 'et-odit', 'Totam eum quos repellendus cupiditate facilis. Iure tempora vero sed consequatur dolor quod perspiciatis. Blanditiis ex unde ad et voluptates vitae. Corrupti quis reprehenderit voluptas minima aliquam ducimus qui.\n\nNecessitatibus modi vero omnis. Distinctio dolor illo architecto. Nisi ut vel voluptatem non perspiciatis dolore. Vitae nesciunt harum error.\n\nTempora ea sunt ratione voluptatum. Placeat accusamus et ut ipsam id.', 'https://via.placeholder.com/640x480.png/005599?text=news+iste', 1, '2025-08-23 09:21:12', '2025-08-23 09:21:12'),
(3, 'Itaque.', 'itaque', 'Necessitatibus qui adipisci et id voluptatem laboriosam. Beatae fugit at aut tempore. Laborum qui vel temporibus exercitationem maiores debitis non.\n\nQuia rerum provident quis molestiae amet officiis. Officia ipsa odit esse ex atque deserunt saepe. Quis suscipit et et fuga soluta.\n\nEt optio numquam quibusdam fugit voluptate dolorem qui. Quia cumque voluptatem et necessitatibus dolorem iusto totam. Aut ducimus beatae omnis quam vel voluptatibus quis. Dolore reprehenderit mollitia quibusdam.', 'https://via.placeholder.com/640x480.png/000000?text=news+cum', 1, '2025-08-23 09:21:12', '2025-08-23 09:21:12'),
(4, 'Labore.', 'labore', 'Iusto ab doloribus ipsa corrupti adipisci. Aspernatur accusantium sit similique eveniet ut et. Quisquam voluptatem voluptatem est ut.\n\nIncidunt veniam quaerat qui placeat. At quasi et dolores quis in ut. Fugit maiores sequi rerum voluptas pariatur. Iste placeat eius sint est.\n\nVoluptas enim soluta aut illum autem possimus suscipit. Provident sit magnam cupiditate natus id qui fugiat.', 'https://via.placeholder.com/640x480.png/009933?text=news+quos', 1, '2025-08-23 09:21:12', '2025-08-23 09:21:12'),
(5, 'Dolorem ut.', 'dolorem-ut', 'Eum reprehenderit itaque tempora ipsa. Nostrum odit id labore voluptates assumenda. Voluptas voluptate nihil cum alias error iste eos. Ullam enim autem culpa et modi unde quidem.\n\nBlanditiis deserunt et eum quo sed deleniti. Nulla et quibusdam culpa quae consequatur. Quaerat minima beatae sint expedita ut. Cumque voluptatum in et vitae commodi voluptatum id.\n\nEum aperiam ut eos recusandae. Quod omnis totam velit. Dolor consequuntur mollitia ut velit. Et molestias autem cupiditate qui.', 'https://via.placeholder.com/640x480.png/00dd11?text=news+assumenda', 1, '2025-08-23 09:21:12', '2025-08-23 09:21:12'),
(6, 'Voluptatem quia.', 'voluptatem-quia', 'Quo est similique itaque. Assumenda omnis vero soluta quisquam amet illum. Consequatur et rem iure perferendis velit enim. Et voluptatem recusandae quod ipsa illo repellendus.\n\nCorporis in recusandae animi eos molestiae unde provident. Eum cum eligendi maiores sit ea esse et. Dolor nemo ex neque aliquam optio molestiae libero. Eos ab et ut illum expedita.\n\nEnim libero impedit officiis voluptas necessitatibus. Possimus dignissimos accusantium autem tempora blanditiis ipsum. Tenetur asperiores molestiae asperiores eius velit officiis vitae ut. Accusantium commodi facilis eius. Delectus enim et qui possimus quo recusandae reiciendis.', 'https://via.placeholder.com/640x480.png/00ee88?text=news+officia', 1, '2025-08-23 09:21:12', '2025-08-23 09:21:12'),
(7, 'Consequatur.', 'consequatur', 'Et vitae aperiam dicta. Et architecto sunt voluptatibus et qui quas et. Sed voluptates quo qui.\n\nQuis illo voluptatem sed culpa voluptas cupiditate in sint. Assumenda et est debitis necessitatibus. Eos quasi aut expedita eveniet illo. Similique voluptatem id voluptatem sit labore.\n\nSapiente iusto soluta tenetur cupiditate ut. Quia sed aliquid est facilis ut eum. Dolore expedita modi placeat. Non ut inventore voluptates corrupti illo.', 'https://via.placeholder.com/640x480.png/006677?text=news+qui', 1, '2025-08-23 09:21:12', '2025-08-23 09:21:12'),
(8, 'Necessitatibus.', 'necessitatibus', 'Voluptate qui vel nemo numquam dolores quia velit velit. Hic qui architecto ipsam nisi dolores ut vero. Occaecati quos at saepe. Est neque ex veritatis sit sit nostrum minima.\n\nQuidem nostrum enim alias debitis expedita. Similique sint hic dolor distinctio eos. Et explicabo labore molestiae debitis amet qui.\n\nQuas aut distinctio recusandae laudantium dolores qui. Voluptatum laborum debitis voluptatem consequatur in doloribus. Reiciendis omnis sunt quia blanditiis nulla.', 'https://via.placeholder.com/640x480.png/0044bb?text=news+est', 1, '2025-08-23 09:21:12', '2025-08-23 09:21:12'),
(9, 'Perferendis qui.', 'perferendis-qui', 'Dignissimos tempore quaerat rerum tempora et. Nesciunt quo nam reiciendis. Excepturi odit id enim et minima sint.\n\nOdit atque cum similique laborum. Amet dolore minima maxime voluptas. Ab odio voluptatem ut nesciunt tempore.\n\nDolor sapiente laboriosam ut nobis consequuntur commodi odit. Iure in accusamus at commodi vel voluptatem. Quas soluta est perspiciatis veritatis voluptas corrupti id voluptatum. Velit nisi a sint voluptatem.', 'https://via.placeholder.com/640x480.png/00ee33?text=news+recusandae', 1, '2025-08-23 09:21:12', '2025-08-23 09:21:12'),
(10, 'Fugit.', 'fugit', 'Optio fugiat saepe dolorem est architecto. Reiciendis nihil est nobis est reprehenderit hic quidem modi. Veniam sed quis est harum. Consequatur culpa quis itaque dolorem voluptatem.\n\nOfficiis soluta dolor modi. Maiores ex eius ab et illo quo assumenda. Quis reiciendis perspiciatis reprehenderit. Quo magni voluptatem dolorem in sit.\n\nEst aut sunt vero est et. Error id ratione et et at rem et architecto. Animi vitae temporibus vitae ut corporis quia cum.', 'https://via.placeholder.com/640x480.png/00ffff?text=news+quia', 1, '2025-08-23 09:21:12', '2025-08-23 09:21:12'),
(11, 'Top 10 xu hướng Xuân Hè 2025 đáng chú ý nhất từ tứ đại tuần lễ thời trang', 'top-10-xu-huong-xuan-he-2025-dang-chu-y-nhat-tu-tu-dai-tuan-le-thoi-trang', '<p>Mùa thời trang Xuân Hè 2025 đánh dấu sự chuyển dịch thấy rõ cho nhiều xu hướng quen thuộc.</p><p>Có những trào lưu mới với tần suất phủ sóng tăng phi mã đến 3 chữ số phần trăm. Các xu hướng này hứa hẹn sẽ cực hot trong năm bởi không chỉ mời gọi hội tín đồ nhập cuộc khám phá mà còn cho phép họ dễ dàng mang đến các biến thể đậm dấu ấn cá nhân.</p><p>Tất nhiên, xuân về thì hoa nở, họa tiết hoa chưa bao giờ lỗi thời trong mùa nóng ấm trong năm. Tuy vậy, có một họa tiết hot hơn thế trong mùa Xuân Hè 2025. Đó là họa tiết nào? Hãy cùng Harper’s Bazaar khám phá.</p><p>Phong cách thời trang hàng hải mùa này không chỉ gói gọn trong màu xanh và trắng. Tổ hợp sọc xanh và trắng Breton còn dung nạp những màu sắc khác, ví dụ đường kẻ ngang màu phấn ở Chanel, màu rực rỡ ở Prada, và đỏ ở Tommy Hilfiger.</p><figure class=\"image\"><img style=\"aspect-ratio:1600/1200;\" src=\"https://res.cloudinary.com/diyy6kb1n/image/upload/posts/content/cdbskqupmsusdkpanqml\" width=\"1600\" height=\"1200\"></figure><p>Dự kiến, mùa hè này sẽ chứng kiến hàng loạt mẫu quần short siêu ngắn, loại mô phỏng quần đi biển, được cách tân để phù hợp với thời trang phố thị hàng ngày. Bên cạnh đó, các mẫu sandal và dép xỏ ngón hứa hẹn tiếp tục được nâng tầm bởi các nhà mốt xa xỉ.</p>', 'posts/gqljmaomjuszc0jrix6z', 1, '2025-08-24 00:49:51', '2025-08-24 00:49:51'),
(12, 'Sự trở lại của phong cách công sở trên sàn diễn thời trang Xuân Hè 2025', 'su-tro-lai-cua-phong-cach-cong-so-tren-san-dien-thoi-trang-xuan-he-2025', '<p>Song song với tinh thần của những kỳ nghỉ, đừng quên những nhiệm vụ thường trực tại nơi công sở. Vòng xoáy công việc không bao giờ ngừng lại, vậy sao không tìm kiếm niềm vui từ những lời ngợi khen cho trang phục sành điệu của mình? Tinh thần làm việc xuyên suốt mùa Xuân Hè 2025 được gợi nhắc trên đường băng bằng dàn nhân viên đóng bộ suit.</p><p>Gọi là phong cách thiết kế suit mới, vì những bộ suit của mùa Xuân Hè 2025 vô cùng mềm mại, có thể được layer nhiều lớp mà không tạo cảm giác ngột ngạt. Lý do lớn nhất vì các nhà mốt đã lược bớt lớp lót, giảm thiểu độ dày của trang phục. Bạn có thể mặc chúng đến công sở, và cũng có thể dùng cho những chuyến công du bốn bể trong mùa hè. Về phần Bottega Veneta và Saint Laurent, tuy vẫn rất yêu thích cầu vai to, song chúng chẳng làm ảnh hưởng đến sự thoải mái của trang phục.</p><p>Nếu có một chất liệu vừa phù hợp với phong cách thời trang hàng hải, tinh thần mùa hè, mà vẫn phù hợp để mặc đến nơi công sở, thì đó chính là chất liệu poplin.</p><figure class=\"image\"><img style=\"aspect-ratio:1600/1200;\" src=\"https://res.cloudinary.com/diyy6kb1n/image/upload/posts/content/d8sdb8y3ggw1dgo0npt8\" width=\"1600\" height=\"1200\"></figure><p>Kiểu dệt vải poplin thường được làm từ cotton, lụa hoặc len, hoặc pha thêm các sợi tổng hợp. Đặc tính của nó là sự sắc bén, bền bỉ nhưng vẫn thoáng khí. Cái tên “poplin” bắt nguồn từ từ tiếng Pháp “papeline”, theo truyền thống dùng để chỉ một loại vải làm từ lụa và len.</p>', 'posts/hmcg9nn7ami36aps7co5', 1, '2025-08-24 00:52:00', '2025-08-24 00:52:15'),
(13, 'Xu hướng ánh kim mùa Thu Đông 2025 đầy sự hào nhoáng', 'xu-huong-anh-kim-mua-thu-dong-2025-day-su-hao-nhoang', '<p>Tạm gác lại phong cách tiết chế tinh giản, thời trang mùa này hướng tới những thiết kế bùng nổ ánh sáng, nơi ánh kim không còn là điểm nhấn mà trở thành tuyên ngôn chính. Ánh kim lúc này tôn vinh vẻ đẹp rực rỡ, táo bạo và đầy quyền lực.</p><p>Fendi đưa công chúng lên chuyến tàu thời gian, trở về thời đại hoàng kim của nhạc Jazz những năm 1920 với váy hạ eo và họa tiết ánh kim dày đặc. Kỹ thuật đính kết trên nền chất liệu mềm rủ và tua rua, làm nên vẻ đẹp mềm mại bay bổng.</p><p>Dior, ở chiều ngược lại, mang đến hình tượng những nữ chiến binh trong trang phục ánh kim. Balmain cũng tiếp bước khai phá hình tượng nữ chiến binh tương lai, với áo corset và quần metallic ôm sát như lớp áo giáp lấp lánh.</p><p>Paco Rabanne phát huy di sản ánh kim trứ danh với các thiết kế ánh bạc, phối kết cùng chất liệu xuyên thấu, tạo nên vẻ đẹp vừa lạnh lùng vừa quyến rũ. Alexander McQueen trình làng những bộ đầm dạ tiệc ánh thép, uyển chuyển theo từng bước đi. Dolce &amp; Gabbana lại chọn vàng champagne và vàng ánh đỏ để tạo nên vẻ vương giả xa hoa cổ điển Ý.</p><figure class=\"image\"><img style=\"aspect-ratio:1600/1200;\" src=\"https://res.cloudinary.com/diyy6kb1n/image/upload/posts/content/le3e9lbgezb9xlwbqddl\" width=\"1600\" height=\"1200\"></figure><p>Những tên tuổi trên cho thấy khả năng biến hóa đa dạng của ánh kim, bạn có thể kết hợp xu hướng này từ ngày sang đêm, đến công sở và bước vào dạ tiệc.</p>', 'posts/p1yaq2fsusilyodsjb2u', 1, '2025-08-24 00:53:43', '2025-08-24 00:53:43'),
(14, 'Thập niên 1920 trở lại trên sàn diễn thời trang mùa Xuân Hè 2025', 'thap-nien-1920-tro-lai-tren-san-dien-thoi-trang-mua-xuan-he-2025', '<p>Thập niên 1920 luôn là một giai đoạn được yêu thích trong các kỷ nguyên thời trang, bởi đây là kỷ nguyên của lối sống xa hoa, phóng khoáng và phá vỡ nhiều nguyên tắc cũ. Do đó, không lạ lẫm khi phong cách thời trang thập niên 1920 luôn len lỏi vào đời sống hiện đại.</p><p>Tuy nhiên, xu hướng thời trang Xuân Hè 2025 để mắt đến một form dáng ít được quan tâm của thập niên 1920 là mẫu đầm Robe de Style. Thiết kế có thân trên ôm đến điểm hạ eo thì loe rộng. Việc tạo điểm nhấn ở phần hạ eo là một phong cách rất 1920 – cũng được thấy trong các mẫu đầm flapper hưng thịnh.</p><p>Nói đến thời trang thập niên 1920, chúng ta thường nghĩ ngay đến những chiếc đầm flapper với những chiếc đầm suôn thẳng, không ôm sát, đính tua rua. Đây là một thiết kế rất Mỹ, phản ánh sự phồn hoa của New York. Tuy nhiên, thập niên này còn có một mẫu đầm khác rất thịnh hành gọi là Robe de Style. Nó nổi lên như một lựa chọn lãng mạn hơn, duyên dáng hơn, và trên hết là rất Pháp khi so sánh với mẫu đầm flapper.</p>', 'posts/tamx8mbe535y1qajvhgx', 1, '2025-08-24 00:54:23', '2025-08-24 00:54:23');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_inventory` bigint UNSIGNED NOT NULL DEFAULT '0',
  `short_description` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(170) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` bigint UNSIGNED NOT NULL,
  `is_active` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `total_inventory`, `short_description`, `description`, `slug`, `category_id`, `is_active`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Áo Polo Nam Tay Ngắn Cotton Phối Màu Form Loose', 58, 'Mô tả', 'Mô tả dài', 'ao-polo-nam-tay-ngan-cotton-phoi-mau-form-loose', 3, 1, '2025-08-23 09:37:33', '2025-08-23 09:37:33', NULL),
(2, 'Áo Polo Nam Tay Ngắn Cotton Túi Đắp Phối Thêu', 60, 'Mô tả', 'Mô tả dài', 'ao-polo-nam-tay-ngan-cotton-tui-dap-phoi-theu', 3, 1, '2025-08-23 10:28:25', '2025-08-23 10:28:25', NULL),
(3, 'Áo Polo Nam Tay Ngắn Cotton Phối Viền Cổ Fitted', 289, 'Mô tả', 'Mô tả dài', 'ao-polo-nam-tay-ngan-cotton-phoi-vien-co-fitted', 3, 1, '2025-08-23 11:11:48', '2025-08-23 11:11:49', NULL),
(4, 'Áo polo nam sợi Cafe phối cổ. Fitted', 56, 'Mô tả', 'Mô tả dài', 'ao-polo-nam-soi-cafe-phoi-co-fitted', 3, 1, '2025-08-23 11:14:04', '2025-08-23 11:14:04', NULL),
(5, 'Áo polo nam sợi Cafe phối gân cổ. Fitted', 180, 'Mô tả', 'Mô tả dài', 'ao-polo-nam-soi-cafe-phoi-gan-co-fitted', 3, 1, '2025-08-23 11:16:37', '2025-08-23 11:16:37', NULL),
(6, 'Áo Polo Nam Tay Ngắn Patch Ngực Form Fitted', 300, 'Mô tả', 'Mô tả dài', 'ao-polo-nam-tay-ngan-patch-nguc-form-fitted', 3, 1, '2025-08-23 11:21:47', '2025-08-23 11:21:47', NULL),
(7, 'Áo polo nam tay ngắn miếng patch ngực', 60, 'Mô tả', 'Mô tả dài', 'ao-polo-nam-tay-ngan-mieng-patch-nguc', 3, 1, '2025-08-23 11:24:44', '2025-08-23 11:24:44', NULL),
(8, 'Áo Polo Nam Tay Ngắn Phối Cổ \"Together in Times\"', 53, 'Mô tả', 'Mô tả dài', 'ao-polo-nam-tay-ngan-phoi-co-together-in-times', 3, 1, '2025-08-23 11:26:45', '2025-08-23 11:26:45', NULL),
(9, 'Áo Polo Nam Dệt Kim Tay Ngắn Phối Cổ Form Fitted', 300, 'Mô tả', 'Mô tả dài', 'ao-polo-nam-det-kim-tay-ngan-phoi-co-form-fitted', 3, 1, '2025-08-23 11:34:11', '2025-08-23 11:34:11', NULL),
(10, 'Áo Polo Nam Tay Ngắn Patch Trang Trí Form Fitted', 60, 'Mô tả', 'Mô tả dài', 'ao-polo-nam-tay-ngan-patch-trang-tri-form-fitted', 3, 1, '2025-08-23 11:38:11', '2025-08-23 11:38:11', NULL),
(11, 'Áo Thun Nam Tay Ngắn Thêu Chữ Trước Ngực Fitted', 297, 'Mô tả', 'Mô tả dài', 'ao-thun-nam-tay-ngan-theu-chu-truoc-nguc-fitted', 2, 1, '2025-08-23 11:42:32', '2025-08-23 11:42:32', NULL),
(12, 'Áo Thun Nam Tay Ngắn Cotton Thêu Chữ Phối Viền Cổ', 51, 'Mô tả', 'Mô tả dài', 'ao-thun-nam-tay-ngan-cotton-theu-chu-phoi-vien-co', 2, 1, '2025-08-23 11:43:45', '2025-08-23 11:43:45', NULL),
(13, 'Áo Thun Nam Tay Ngắn Cotton Cổ V Phối Viền In Chữ', 300, 'Mô tả', 'Mô tả dài', 'ao-thun-nam-tay-ngan-cotton-co-v-phoi-vien-in-chu', 2, 1, '2025-08-23 11:45:16', '2025-08-23 11:45:16', NULL),
(14, 'Áo Thun Tanktop Nam Sát Nách Cotton Form Loose', 58, 'Mô tả', 'Mô tả dài', 'ao-thun-tanktop-nam-sat-nach-cotton-form-loose', 2, 1, '2025-08-23 11:46:58', '2025-08-23 11:46:58', NULL),
(15, 'Áo Thun Nam Tay Ngắn Cotton Hình In Ngực Trái', 299, 'Mô tả', 'Mô tả dài', 'ao-thun-nam-tay-ngan-cotton-hinh-in-nguc-trai', 2, 1, '2025-08-23 11:48:36', '2025-08-23 11:48:36', NULL),
(16, 'Áo thun nam tay ngắn cổ tròn sọc ngang form fitted', 59, 'Mô tả', 'Mô tả dài', 'ao-thun-nam-tay-ngan-co-tron-soc-ngang-form-fitted', 2, 1, '2025-08-23 11:50:21', '2025-08-23 11:50:21', NULL),
(17, 'Áo Thun Nam Tay Ngắn Cotton \"Friend Club\" Fitted', 298, 'Mô tả', 'Mô tả dài', 'ao-thun-nam-tay-ngan-cotton-friend-club-fitted', 2, 1, '2025-08-23 11:51:55', '2025-08-23 11:51:55', NULL),
(18, 'Áo thun nam tay ngắn sọc ngang lớn jacquard loose', 59, 'Mô tả', 'Mô tả dài', 'ao-thun-nam-tay-ngan-soc-ngang-lon-jacquard-loose', 2, 1, '2025-08-23 11:53:37', '2025-08-23 11:53:37', NULL),
(19, 'Áo thun nam thêu ẩn Simplicity. Regular', 300, 'Mô tả', 'Mô tả dài', 'ao-thun-nam-theu-an-simplicity-regular', 2, 1, '2025-08-23 11:55:09', '2025-08-23 11:55:09', NULL),
(20, 'Áo Thun Nam Tay Ngắn Cotton Phối Viền Tay Và Cổ', 52, 'Mô tả', 'Mô tả dài', 'ao-thun-nam-tay-ngan-cotton-phoi-vien-tay-va-co', 2, 1, '2025-08-23 11:56:41', '2025-08-23 11:56:41', NULL),
(21, 'Áo khoác gió nam có mũ khoá kéo form regular', 298, 'Mô tả', 'Mô tả dài', 'ao-khoac-gio-nam-co-mu-khoa-keo-form-regular', 4, 1, '2025-08-23 11:59:17', '2025-08-23 11:59:17', NULL),
(22, 'Áo khoác gile nam chần bông có túi form regular', 59, 'Mô tả', 'Mô tả dài', 'ao-khoac-gile-nam-chan-bong-co-tui-form-regular', 4, 1, '2025-08-23 12:00:26', '2025-08-23 12:00:26', NULL),
(23, 'Áo khoác denim nam form loose', 20, 'Mô tả', 'Mô tả dài', 'ao-khoac-denim-nam-form-loose', 4, 1, '2025-08-23 12:02:01', '2025-08-23 12:02:01', NULL),
(24, 'Áo khoác không cổ chần bông mỏng form loose', 299, 'Mô tả', 'Mô tả dài', 'ao-khoac-khong-co-chan-bong-mong-form-loose', 4, 1, '2025-08-23 12:03:45', '2025-08-23 12:03:45', NULL),
(25, 'Áo khoác nam dài tay chần bông có túi form loose', 53, 'Mô tả', 'Mô tả dài', 'ao-khoac-nam-dai-tay-chan-bong-co-tui-form-loose', 4, 1, '2025-08-23 12:05:49', '2025-08-23 12:05:49', NULL),
(26, 'Áo khoác denim nam form regular', 17, 'Mô tả', 'Mô tả dài', 'ao-khoac-denim-nam-form-regular', 4, 1, '2025-08-23 12:06:36', '2025-08-23 12:06:36', NULL),
(27, 'Áo khoác nam nylon túi kiểu form regular', 60, 'Mô tả', 'Mô tả dài', 'ao-khoac-nam-nylon-tui-kieu-form-regular', 4, 1, '2025-08-23 12:07:59', '2025-08-23 12:07:59', NULL),
(28, 'Áo khoác jean nam túi xéo kiểu form loose', 150, 'Mô tả', 'Mô tả dài', 'ao-khoac-jean-nam-tui-xeo-kieu-form-loose', 4, 1, '2025-08-23 12:09:27', '2025-08-23 12:09:27', NULL),
(29, 'Áo khoác nam có nón dây kéo form regular', 39, 'Mô tả', 'Mô tả dài', 'ao-khoac-nam-co-non-day-keo-form-regular', 4, 1, '2025-08-23 12:10:59', '2025-08-23 12:10:59', NULL),
(30, 'Áo Khoác Bomber Nam Phối Rib Friend Club Regular', 60, 'Mô tả', 'Mô tả dài', 'ao-khoac-bomber-nam-phoi-rib-friend-club-regular', 4, 1, '2025-08-23 12:12:51', '2025-08-23 12:12:51', NULL),
(31, 'Áo cổ trụ Denim sợi Chuối tay dài. Fitted', 53, 'Mô tả', 'Mô tả dài', 'ao-co-tru-denim-soi-chuoi-tay-dai-fitted', 5, 1, '2025-08-23 12:15:16', '2025-08-23 12:15:16', NULL),
(32, 'Áo sơ mi Denim sợi Chuối tay dài. Fitted', 168, 'Mô tả', 'Mô tả dài', 'ao-so-mi-denim-soi-chuoi-tay-dai-fitted', 5, 1, '2025-08-23 12:16:34', '2025-08-23 12:16:34', NULL),
(33, 'Áo sơ mi Denim sợi Chuối tay ngắn. Fitted', 60, 'Mô tả', 'Mô tả dài', 'ao-so-mi-denim-soi-chuoi-tay-ngan-fitted', 5, 1, '2025-08-23 12:18:08', '2025-08-23 12:18:08', NULL),
(34, 'Áo Sơ Mi Nam Tay Ngắn Oxford Kiểu Trơn Form Relax', 39, 'Mô tả', 'Mô tả dài', 'ao-so-mi-nam-tay-ngan-oxford-kieu-tron-form-relax', 5, 1, '2025-08-23 12:19:27', '2025-08-23 12:19:27', NULL),
(35, 'Áo Sơ Mi Nam Tay Dài Cotton Túi Ngực Thêu Chữ', 118, 'Mô tả', 'Mô tả dài', 'ao-so-mi-nam-tay-dai-cotton-tui-nguc-theu-chu', 5, 1, '2025-08-23 12:20:57', '2025-08-23 12:20:57', NULL),
(36, 'Áo Cuban Denim Nam Tay Ngắn Form Loose', 29, 'Mô tả', 'Mô tả dài', 'ao-cuban-denim-nam-tay-ngan-form-loose', 5, 1, '2025-08-23 12:21:49', '2025-08-23 12:21:49', NULL),
(37, 'Áo Sơ Mi Nam Ngắn Tay Cotton Kẻ Sọc Form Boxy', 118, 'Mô tả', 'Mô tả dài', 'ao-so-mi-nam-ngan-tay-cotton-ke-soc-form-boxy', 5, 1, '2025-08-23 12:23:03', '2025-08-23 12:23:03', NULL),
(38, 'Áo sơ mi nam tay dài ít nhăn, co giãn nhẹ. Fitted', 30, 'Mô tả', 'Mô tả dài', 'ao-so-mi-nam-tay-dai-it-nhan-co-gian-nhe-fitted', 5, 1, '2025-08-23 12:24:00', '2025-08-23 12:24:00', NULL),
(39, 'Áo sơ mi nam ít nhăn thoáng khí. Fitted', 36, 'Mô tả', 'Mô tả dài', 'ao-so-mi-nam-it-nhan-thoang-khi-fitted', 5, 1, '2025-08-23 12:25:20', '2025-08-23 12:25:20', NULL),
(40, 'Áo Sơ Mi Nam Tay Dài Vải BAMBOO Mềm Mại', 40, 'Mô tả', 'Mô tả dài', 'ao-so-mi-nam-tay-dai-vai-bamboo-mem-mai', 5, 1, '2025-08-23 12:26:36', '2025-08-23 12:26:36', NULL),
(41, 'Quần Denim Nam Lưng Thun Dây Rút Form Cocoon', 179, 'Mô tả', 'Mô tả dài', 'quan-denim-nam-lung-thun-day-rut-form-cocoon', 19, 1, '2025-08-23 12:32:03', '2025-08-23 12:32:03', NULL),
(42, 'Quần Denim Nam Dài Form Cocoon Rộng Rãi', 40, 'Mô tả', 'Mô tả dài', 'quan-denim-nam-dai-form-cocoon-rong-rai', 19, 1, '2025-08-23 12:33:28', '2025-08-23 12:33:28', NULL),
(43, 'Quần denim nam dài nhãn vải straight', 18, 'Mô tả', 'Mô tả dài', 'quan-denim-nam-dai-nhan-vai-straight', 19, 1, '2025-08-23 12:34:57', '2025-08-23 12:34:57', NULL),
(44, 'Quần Jeans Nam Xanh Navy Ống Ôm Form Tapered', 89, 'Mô tả', 'Mô tả dài', 'quan-jeans-nam-xanh-navy-ong-om-form-tapered', 19, 1, '2025-08-23 12:36:07', '2025-08-23 12:36:07', NULL),
(45, 'Quần denim nam ống đứng nhãn vải', 18, 'Mô tả', 'Mô tả dài', 'quan-denim-nam-ong-dung-nhan-vai', 19, 1, '2025-08-23 12:36:57', '2025-08-23 12:36:57', NULL),
(46, 'Quần denim nam thêu túi sau form straight', 30, 'Mô tả', 'Mô tả dài', 'quan-denim-nam-theu-tui-sau-form-straight', 19, 1, '2025-08-23 12:38:07', '2025-08-23 12:38:07', NULL),
(47, 'Quần denim nam dài dáng ôm form slim', 29, 'Mô tả', 'Mô tả dài', 'quan-denim-nam-dai-dang-om-form-slim', 19, 1, '2025-08-23 12:39:33', '2025-08-23 12:39:33', NULL),
(48, 'Quần Jeans Nam Beige Ống Rộng Xếp Ly Form Loose', 60, 'Mô tả', 'Mô tả dài', 'quan-jeans-nam-beige-ong-rong-xep-ly-form-loose', 19, 1, '2025-08-23 12:40:33', '2025-08-23 12:40:33', NULL),
(49, 'Quần Jeans Nam Xanh Nhạt Ống Ôm Form Slim Crop', 30, 'Mô tả', 'Mô tả dài', 'quan-jeans-nam-xanh-nhat-ong-om-form-slim-crop', 19, 1, '2025-08-23 12:41:31', '2025-08-23 12:41:31', NULL),
(50, 'Quần jeans nam Denim tái chế. Wige Leg', 30, 'Mô tả', 'Mô tả dài', 'quan-jeans-nam-denim-tai-che-wige-leg', 19, 1, '2025-08-23 12:42:16', '2025-08-23 12:42:16', NULL),
(51, 'Quần Kaki Nam Dài Cotton Spandex Dáng Ôm Form Slim', 180, 'Mô tả', 'Mô tả dài', 'quan-kaki-nam-dai-cotton-spandex-dang-om-form-slim', 18, 1, '2025-08-23 12:44:57', '2025-08-23 12:44:57', NULL),
(52, 'Quần dài kaki nam cotton ông rộng wide leg', 60, 'Mô tả', 'Mô tả dài', 'quan-dai-kaki-nam-cotton-ong-rong-wide-leg', 18, 1, '2025-08-23 12:46:25', '2025-08-23 12:46:25', NULL),
(53, 'Quần kaki nam dài trắng ngà cocoon', 30, 'Mô tả', 'Mô tả dài', 'quan-kaki-nam-dai-trang-nga-cocoon', 18, 1, '2025-08-23 12:47:41', '2025-08-23 12:47:41', NULL),
(54, 'Quần kaki nam dài premium dáng ôm form slim', 57, 'Mô tả', 'Mô tả dài', 'quan-kaki-nam-dai-premium-dang-om-form-slim', 18, 1, '2025-08-23 12:49:43', '2025-08-23 12:49:43', NULL),
(55, 'Quần Dài Kaki Nam Cotton Xếp Ly Ống Suông', 59, 'Mô tả', 'Mô tả dài', 'quan-dai-kaki-nam-cotton-xep-ly-ong-suong', 18, 1, '2025-08-23 12:51:09', '2025-08-23 12:51:09', NULL),
(56, 'Quần Dài Kaki Nam Cotton Co Giãn Form Slim Crop', 59, 'Mô tả', 'Mô tả dài', 'quan-dai-kaki-nam-cotton-co-gian-form-slim-crop', 18, 1, '2025-08-23 12:52:17', '2025-08-23 12:52:17', NULL),
(57, 'Quần kaki nam dài đen form slimcrop', 60, 'Mô tả', 'Mô tả dài', 'quan-kaki-nam-dai-den-form-slimcrop', 18, 1, '2025-08-23 12:53:10', '2025-08-23 12:53:10', NULL),
(58, 'Quần Dài Nam Kaki Cotton Ống Suông Form Loose', 19, 'Mô tả', 'Mô tả dài', 'quan-dai-nam-kaki-cotton-ong-suong-form-loose', 18, 1, '2025-08-23 12:54:05', '2025-08-23 12:54:05', NULL),
(59, 'Quần Kaki Nam Dài Cotton Spande Dáng Ôm Form Slim', 60, 'Mô tả', 'Mô tả dài', 'quan-kaki-nam-dai-cotton-spande-dang-om-form-slim', 18, 1, '2025-08-23 12:56:35', '2025-08-23 12:56:35', NULL),
(60, 'Quần Dài Kaki Nam Cotton Spandex Form Slim Crop', 60, 'Mô tả', 'Mô tả dài', 'quan-dai-kaki-nam-cotton-spandex-form-slim-crop', 18, 1, '2025-08-23 12:57:19', '2025-08-23 12:57:19', NULL),
(61, 'Quần Tây Nam Dài Cotton Lưng Chun Ẩn Form Slim', 119, 'Mô tả', 'Mô tả dài', 'quan-tay-nam-dai-cotton-lung-chun-an-form-slim', 6, 1, '2025-08-23 13:03:27', '2025-08-23 13:03:27', NULL),
(62, 'Quần Tây Nam Lịch Lãm Form Slim Cropped', 28, 'Mô tả', 'Mô tả dài', 'quan-tay-nam-lich-lam-form-slim-cropped', 6, 1, '2025-08-23 13:04:24', '2025-08-23 13:04:24', NULL),
(63, 'Quần Tây Nam Dài Ủi Ly Phía Trước Form Slim', 53, 'Mô tả', 'Mô tả dài', 'quan-tay-nam-dai-ui-ly-phia-truoc-form-slim', 6, 1, '2025-08-23 13:05:40', '2025-08-23 13:05:40', NULL),
(64, 'Quần Tây Nam Dài Ủi Ly Giữa Dáng Ôm Form Slim Crop', 60, 'Mô tả', 'Mô tả dài', 'quan-tay-nam-dai-ui-ly-giua-dang-om-form-slim-crop', 6, 1, '2025-08-23 13:06:46', '2025-08-23 13:06:46', NULL),
(65, 'Quần tây nam basic nút ẩn co giãn nhẹ. Slim', 29, 'Mô tả', 'Mô tả dài', 'quan-tay-nam-basic-nut-an-co-gian-nhe-slim', 6, 1, '2025-08-23 13:07:24', '2025-08-23 13:07:24', NULL),
(66, 'Quần Tây Nam Vải Mềm Mịn Tôn Dáng Form Slim', 20, 'Mô tả', 'Mô tả dài', 'quan-tay-nam-vai-mem-min-ton-dang-form-slim', 6, 1, '2025-08-23 13:08:19', '2025-08-23 13:08:19', NULL),
(67, 'Quần Tây Nam Dài Ly Giữa Form Slim Dáng Ôm', 116, 'Mô tả', 'Mô tả dài', 'quan-tay-nam-dai-ly-giua-form-slim-dang-om', 6, 1, '2025-08-23 13:09:43', '2025-08-23 13:09:43', NULL),
(68, 'Quần Tây Nam Đính Tag Kim Loại Túi Sau', 40, 'Mô tả', 'Mô tả dài', 'quan-tay-nam-dinh-tag-kim-loai-tui-sau', 6, 1, '2025-08-23 13:11:00', '2025-08-23 13:11:00', NULL),
(69, 'Quần Tây Nam Thanh Lịch Tôn Dáng Form Slim', 40, 'Mô tả', 'Mô tả dài', 'quan-tay-nam-thanh-lich-ton-dang-form-slim', 6, 1, '2025-08-23 13:12:16', '2025-08-23 13:12:16', NULL),
(70, 'Quần Tây Nam Basic Cá Tính Form Carrot', 58, 'Mô tả', 'Mô tả dài', 'quan-tay-nam-basic-ca-tinh-form-carrot', 6, 1, '2025-08-23 13:13:10', '2025-08-23 13:13:10', NULL),
(71, 'Áo thun nữ cotton thêu nhãn trang trí. Regular', 40, 'Mô tả', 'Mô tả dài', 'ao-thun-nu-cotton-theu-nhan-trang-tri-regular', 8, 1, '2025-08-23 13:31:03', '2025-08-23 13:31:03', NULL),
(72, 'Áo thun nữ cotton thêu nhãn trang trí. Regularr', 38, 'Mô tả', 'Mô tả dài', 'ao-thun-nu-cotton-theu-nhan-trang-tri-regularr', 8, 1, '2025-08-23 13:34:59', '2025-08-23 13:34:59', NULL),
(73, 'Áo Thun Nữ Tay Ngắn Vải Waffle Basic', 40, 'Mô tả', 'Mô tả dài', 'ao-thun-nu-tay-ngan-vai-waffle-basic', 8, 1, '2025-08-23 13:36:01', '2025-08-23 13:36:01', NULL),
(74, 'Áo Thun Croptop Nữ Tay Ngắn Cotton Form Fitted', 40, 'Mô tả', 'Mô tả dài', 'ao-thun-croptop-nu-tay-ngan-cotton-form-fitted', 8, 1, '2025-08-23 13:37:37', '2025-08-23 13:37:37', NULL),
(75, 'Áo thun nữ tay ngắn trang trí patch. Fitted', 40, 'Mô tả', 'Mô tả dài', 'ao-thun-nu-tay-ngan-trang-tri-patch-fitted', 8, 1, '2025-08-23 13:39:50', '2025-08-23 13:39:50', NULL),
(76, 'Áo thun nữ trơn basic giá tốt. Fitted', 40, 'Mô tả', 'Mô tả dài', 'ao-thun-nu-tron-basic-gia-tot-fitted', 8, 1, '2025-08-23 13:41:08', '2025-08-23 13:41:08', NULL),
(77, 'Áo Thun Nữ Tay Ngắn Cotton Phối Ren Tay Fitted', 40, 'Mô tả', 'Mô tả dài', 'ao-thun-nu-tay-ngan-cotton-phoi-ren-tay-fitted', 8, 1, '2025-08-23 13:42:21', '2025-08-23 13:42:21', NULL),
(78, 'Áo Thun Nữ Crop Tay Ngắn Trái Tim Form Fitted', 39, 'Mô tả', 'Mô tả dài', 'ao-thun-nu-crop-tay-ngan-trai-tim-form-fitted', 8, 1, '2025-08-23 13:43:44', '2025-08-23 13:43:44', NULL),
(79, 'Áo Thun Nữ Tay Ngắn Cotton Rút Hai Bên Together', 35, 'Mô tả', 'Mô tả dài', 'ao-thun-nu-tay-ngan-cotton-rut-hai-ben-together', 8, 1, '2025-08-23 13:45:09', '2025-08-23 13:45:09', NULL),
(80, 'Áo Thun Nữ Tay Ngắn Cotton Thêu Ngực Trái Regular', 38, 'Mô tả', 'Mô tả dài', 'ao-thun-nu-tay-ngan-cotton-theu-nguc-trai-regular', 8, 1, '2025-08-23 13:46:34', '2025-08-23 13:46:34', NULL),
(81, 'Áo Sơ Mi Nữ Ngắn Tay Cotton Vải Gân Vạt Bo Tròn', 20, 'Mô tả', 'Mô tả dài', 'ao-so-mi-nu-ngan-tay-cotton-vai-gan-vat-bo-tron', 9, 1, '2025-08-23 20:20:35', '2025-08-23 20:20:35', NULL),
(82, 'Áo Sơ Mi Crop Nữ Tay Dài Kẻ Sọc Caro Dây Cột Eo', 78, 'Mô tả', 'Mô tả dài', 'ao-so-mi-crop-nu-tay-dai-ke-soc-caro-day-cot-eo', 9, 1, '2025-08-23 20:21:59', '2025-08-23 20:21:59', NULL),
(83, 'Áo Sơ Mi Nữ Tay Dài Cotton Đứng Form Có Dây Rút', 40, 'Mô tả', 'Mô tả dài', 'ao-so-mi-nu-tay-dai-cotton-dung-form-co-day-rut', 9, 1, '2025-08-23 20:23:13', '2025-08-23 20:23:13', NULL),
(84, 'Áo Sơ Mi Nữ Tay Ngắn Vạt Bầu Form Loose Rộng Rãi', 39, 'Mô tả', 'Mô tả dài', 'ao-so-mi-nu-tay-ngan-vat-bau-form-loose-rong-rai', 9, 1, '2025-08-23 20:25:04', '2025-08-23 20:25:04', NULL),
(85, 'Áo Sơ Mi Nữ Tay Dài Kẻ Sọc Chiết Eo Dáng Ngắn', 20, 'Mô tả', 'Mô tả dài', 'ao-so-mi-nu-tay-dai-ke-soc-chiet-eo-dang-ngan', 9, 1, '2025-08-23 20:25:49', '2025-08-23 20:25:49', NULL),
(86, 'Áo Sơ Mi Crop Nữ Tay Dài Cotton Tay Áo Phối Viền', 40, 'Mô tả', 'Mô tả dài', 'ao-so-mi-crop-nu-tay-dai-cotton-tay-ao-phoi-vien', 9, 1, '2025-08-23 20:27:14', '2025-08-23 20:27:14', NULL),
(87, 'Áo Sơ Mi Nữ Tay Dài Kiểu Trơn Dáng Rộng', 37, 'Mô tả', 'Mô tả dài', 'ao-so-mi-nu-tay-dai-kieu-tron-dang-rong', 9, 1, '2025-08-23 20:28:28', '2025-08-23 20:28:28', NULL),
(88, 'Áo sơ mi nữ dài tay croptop xếp ly lai regular', 20, 'Mô tả', 'Mô tả dài', 'ao-so-mi-nu-dai-tay-croptop-xep-ly-lai-regular', 9, 1, '2025-08-23 20:30:07', '2025-08-23 20:30:07', NULL),
(89, 'Áo Sơ Mi Satin Tay Dài Cổ V Form Crop Thanh Lịch', 40, 'Mô tả', 'Mô tả dài', 'ao-so-mi-satin-tay-dai-co-v-form-crop-thanh-lich', 9, 1, '2025-08-23 20:33:02', '2025-08-23 20:33:02', NULL),
(90, 'Áo sơ mi tay ngắn nữ cotton form loose', 20, 'Mô tả', 'Mô tả dài', 'ao-so-mi-tay-ngan-nu-cotton-form-loose', 9, 1, '2025-08-23 20:34:55', '2025-08-23 20:34:55', NULL),
(91, 'Đầm nữ cộc tay cotton xẻ tà form a line', 34, 'Mô tả', 'Mô tả dài', 'dam-nu-coc-tay-cotton-xe-ta-form-a-line', 11, 1, '2025-08-23 20:39:37', '2025-08-23 20:39:37', NULL),
(92, 'Đầm nữ thun ôm tay dài lệch vai form A Line', 14, 'Mô tả', 'Mô tả dài', 'dam-nu-thun-om-tay-dai-lech-vai-form-a-line', 11, 1, '2025-08-23 20:40:36', '2025-08-23 20:40:36', NULL),
(93, 'Đầm dài nữ tay ngắn cotton có túi form a line', 40, 'Mô tả', 'Mô tả dài', 'dam-dai-nu-tay-ngan-cotton-co-tui-form-a-line', 11, 1, '2025-08-23 20:41:52', '2025-08-23 20:41:52', NULL),
(94, 'Đầm thun nữ sọc ngang dáng suông túi 2 bên regular', 19, 'Mô tả', 'Mô tả dài', 'dam-thun-nu-soc-ngang-dang-suong-tui-2-ben-regular', 11, 1, '2025-08-23 20:42:39', '2025-08-23 20:42:39', NULL),
(95, 'Đầm polo nữ tay ngắn form regular', 39, 'Mô tả', 'Mô tả dài', 'dam-polo-nu-tay-ngan-form-regular', 11, 1, '2025-08-23 20:44:02', '2025-08-23 20:44:02', NULL),
(96, 'Đầm nữ tay ngắn form regular', 39, 'Mô tả', 'Mô tả dài', 'dam-nu-tay-ngan-form-regular', 11, 1, '2025-08-23 20:45:33', '2025-08-23 20:45:33', NULL),
(97, 'Đầm nữ thun ôm điểm nhấn eo form A Line', 80, 'Mô tả', 'Mô tả dài', 'dam-nu-thun-om-diem-nhan-eo-form-a-line', 11, 1, '2025-08-23 20:47:04', '2025-08-23 20:47:04', NULL),
(98, 'Đầm thun ngắn tay cotton xẻ tà 2 bên form A line', 39, 'Mô tả', 'Mô tả dài', 'dam-thun-ngan-tay-cotton-xe-ta-2-ben-form-a-line', 11, 1, '2025-08-23 20:48:12', '2025-08-23 20:48:12', NULL),
(99, 'Đầm mini tay nhún. A line', 116, 'Mô tả', 'Mô tả dài', 'dam-mini-tay-nhun-a-line', 11, 1, '2025-08-23 20:49:26', '2025-08-23 20:49:26', NULL),
(100, 'Đầm thun slimme kiểu xẻ trước. A Line', 40, 'Mô tả', 'Mô tả dài', 'dam-thun-slimme-kieu-xe-truoc-a-line', 11, 1, '2025-08-23 20:50:35', '2025-08-23 20:50:35', NULL),
(101, 'Đầm Thun Nữ Tay Ngắn Cotton Dáng Suông', 20, 'Mô tả', 'Mô tả dài', 'dam-thun-nu-tay-ngan-cotton-dang-suong', 11, 1, '2025-08-23 20:51:39', '2025-08-23 20:51:39', NULL),
(102, 'Chân váy nữ cotton lưng thun hai lớp Aline', 39, 'Mô tả', 'Mô tả dài', 'chan-vay-nu-cotton-lung-thun-hai-lop-aline', 12, 1, '2025-08-23 20:53:25', '2025-08-23 21:24:24', NULL),
(103, 'Chân Váy Denim Nữ Dài Xẻ Tà Lệch Form Straight', 13, 'Mô tả', 'Mô tả dài', 'chan-vay-denim-nu-dai-xe-ta-lech-form-straight', 12, 1, '2025-08-23 20:55:19', '2025-08-23 21:24:52', NULL),
(104, 'Chân Váy Denim Nữ Dài Ôm Nhẹ Hông Form Flared', 30, 'Mô tả', 'Mô tả dài', 'chan-vay-denim-nu-dai-om-nhe-hong-form-flared', 12, 1, '2025-08-23 20:57:20', '2025-08-23 21:26:18', NULL),
(105, 'Chân Váy Nữ Dài Vải Dù Lưng Thun Xẻ Tà 2 Bên', 40, 'Mô tả', 'Mô tả dài', 'chan-vay-nu-dai-vai-du-lung-thun-xe-ta-2-ben', 12, 1, '2025-08-23 20:58:55', '2025-08-23 21:26:28', NULL),
(106, 'Chân Váy Nữ Dài Xếp Ly 2 Lớp Mềm Mịn Form A Line', 17, 'Mô tả', 'Mô tả dài', 'chan-vay-nu-dai-xep-ly-2-lop-mem-min-form-a-line', 12, 1, '2025-08-23 21:00:17', '2025-08-23 21:25:13', NULL),
(107, 'Chân Váy Denim Nữ Dài Tua Rua Form A Line', 20, 'Mô tả', 'Mô tả dài', 'chan-vay-denim-nu-dai-tua-rua-form-a-line', 12, 1, '2025-08-23 21:01:13', '2025-08-23 21:27:02', NULL),
(108, 'Chân váy nữ Denim tái chế. Straight', 18, 'Mô tả', 'Mô tả dài', 'chan-vay-nu-denim-tai-che-straight', 12, 1, '2025-08-23 21:02:13', '2025-08-23 21:25:25', NULL),
(109, 'Chân váy ngắn nữ xếp ly hai lớp Aline', 39, 'Mô tả', 'Mô tả dài', 'chan-vay-ngan-nu-xep-ly-hai-lop-aline', 12, 1, '2025-08-23 21:04:22', '2025-08-23 21:04:22', NULL),
(110, 'Chân Váy Nữ Dài Vải Cotton Vạt Bầu Form A Line', 100, 'Mô tả', 'Mô tả dài', 'chan-vay-nu-dai-vai-cotton-vat-bau-form-a-line', 12, 1, '2025-08-23 21:05:32', '2025-08-23 21:05:32', NULL),
(111, 'Chân váy nữ vạt bầu form A line', 80, 'Mô tả', 'Mô tả dài', 'chan-vay-nu-vat-bau-form-a-line', 12, 1, '2025-08-23 21:06:47', '2025-08-23 21:28:04', NULL),
(112, 'Quần vải dài nữ xếp ly ống rộng form relax', 37, 'Mô tả', 'Mô tả dài', 'quan-vai-dai-nu-xep-ly-ong-rong-form-relax', 20, 1, '2025-08-23 21:09:08', '2025-08-23 21:28:16', NULL),
(113, 'Quần dài nữ ống rộng phối lưng wide leg', 13, 'Mô tả', 'Mô tả dài', 'quan-dai-nu-ong-rong-phoi-lung-wide-leg', 20, 1, '2025-08-23 21:11:07', '2025-08-23 21:11:07', NULL),
(114, 'Quần dài nữ xám ống suông form straight', 14, 'Mô tả', 'Mô tả dài', 'quan-dai-nu-xam-ong-suong-form-straight', 20, 1, '2025-08-23 21:12:10', '2025-08-23 21:12:10', NULL),
(115, 'Quần dài nữ xếp ly trước straight crop', 18, 'Mô tả', 'Mô tả dài', 'quan-dai-nu-xep-ly-truoc-straight-crop', 20, 1, '2025-08-23 21:13:02', '2025-08-23 21:28:48', NULL),
(116, 'Quần tây ống rộng nữ túi ngang form straight', 39, 'Mô tả', 'Mô tả dài', 'quan-tay-ong-rong-nu-tui-ngang-form-straight', 20, 1, '2025-08-23 21:14:36', '2025-08-23 21:14:36', NULL),
(117, 'Quần Dài Nữ Xếp Ly Cho Ống Rộng Form Wide Leg', 18, 'Mô tả', 'Mô tả dài', 'quan-dai-nu-xep-ly-cho-ong-rong-form-wide-leg', 20, 1, '2025-08-23 21:15:41', '2025-08-23 21:29:13', NULL),
(118, 'Quần Dài Cocoon Nữ Cotton Spandex Gập Gấu', 20, 'Mô tả', 'Mô tả dài', 'quan-dai-cocoon-nu-cotton-spandex-gap-gau', 20, 1, '2025-08-23 21:16:51', '2025-08-23 21:16:51', NULL),
(119, 'Quần Dài Nữ Lưng Thun Ly Gân Giữa Form Straight', 19, 'Mô tả', 'Mô tả dài', 'quan-dai-nu-lung-thun-ly-gan-giua-form-straight', 20, 1, '2025-08-23 21:17:33', '2025-08-23 21:29:40', NULL),
(120, 'Quần Dài Cocoon Nữ Cotton Spandex Lưng Liền', 20, 'Mô tả', 'Mô tả dài', 'quan-dai-cocoon-nu-cotton-spandex-lung-lien', 20, 1, '2025-08-23 21:18:20', '2025-08-23 21:30:02', NULL),
(121, 'Quần dài nữ kẻ sọc ống rộng xếp ly trước', 20, 'Mô tả', 'Mô tả dài', 'quan-dai-nu-ke-soc-ong-rong-xep-ly-truoc', 20, 1, '2025-08-23 21:18:57', '2025-08-23 21:30:11', NULL),
(122, 'Quần dài ống rộng lưng thun diễu gân', 40, 'Mô tả', 'Mô tả dài', 'quan-dai-ong-rong-lung-thun-dieu-gan', 20, 1, '2025-08-23 21:20:05', '2025-08-23 21:20:05', NULL),
(123, 'Quần Jeans Nữ Form Cocoon Đường May Dọc Nổi Bật', 200, 'Mô tả', 'Mô tả dài', 'quan-jeans-nu-form-cocoon-duong-may-doc-noi-bat', 22, 1, '2025-08-23 21:22:52', '2025-08-23 21:22:52', NULL),
(124, 'Quần Jeans Nữ Thêu Nhỏ Túi Sau Form Straight Crop', 18, 'Mô tả', 'Mô tả dài', 'quan-jeans-nu-theu-nho-tui-sau-form-straight-crop', 22, 1, '2025-08-23 21:32:00', '2025-08-23 21:32:00', NULL),
(125, 'Quần Jeans Nữ Trắng Thêu Nhỏ Ống Loe Form Flared', 191, 'Mô tả', 'Mô tả dài', 'quan-jeans-nu-trang-theu-nho-ong-loe-form-flared', 22, 1, '2025-08-23 21:33:23', '2025-08-23 21:33:23', NULL),
(126, 'Quần Denim Nữ Trơn Ống Đứng Form Straight', 35, 'Mô tả', 'Mô tả dài', 'quan-denim-nu-tron-ong-dung-form-straight', 22, 1, '2025-08-23 21:34:45', '2025-08-23 21:34:45', NULL),
(127, 'Quần Denim Nữ Túi Hộp Trước Ống Đứng Form Straight', 97, 'Mô tả', 'Mô tả dài', 'quan-denim-nu-tui-hop-truoc-ong-dung-form-straight', 22, 1, '2025-08-23 21:35:53', '2025-08-23 21:35:53', NULL),
(128, 'Quần Denim Nữ Xanh Navy Rã Phối Form Balloon', 19, 'Mô tả', 'Mô tả dài', 'quan-denim-nu-xanh-navy-ra-phoi-form-balloon', 22, 1, '2025-08-23 21:37:17', '2025-08-23 21:37:17', NULL),
(129, 'Quần Jeans Nữ Ống Đứng Wash Nhẹ Straight Crop', 20, 'Mô tả', 'Mô tả dài', 'quan-jeans-nu-ong-dung-wash-nhe-straight-crop', 22, 1, '2025-08-23 21:41:53', '2025-08-23 21:41:53', NULL),
(130, 'Quần Denim Nữ Ống Đứng May Rã Sườn Form Straight', 199, 'Mô tả', 'Mô tả dài', 'quan-denim-nu-ong-dung-may-ra-suon-form-straight', 22, 1, '2025-08-23 21:43:28', '2025-08-23 21:43:28', NULL),
(131, 'Quần Jeans Nữ Ống Đứng Thêu Trái Tym Form Straight', 30, 'Mô tả', 'Mô tả dài', 'quan-jeans-nu-ong-dung-theu-trai-tym-form-straight', 22, 1, '2025-08-23 21:44:46', '2025-08-23 21:44:46', NULL),
(132, 'Quần Denim Nữ Lật Gấu Ống Rộng Form Wide Leg', 96, 'Mô tả', 'Mô tả dài', 'quan-denim-nu-lat-gau-ong-rong-form-wide-leg', 22, 1, '2025-08-23 21:45:51', '2025-08-23 21:45:51', NULL),
(133, 'Quần short nỉ nữ có túi. Relax', 26, 'Mô tả', 'Mô tả dài', 'quan-short-ni-nu-co-tui-relax', 21, 1, '2025-08-23 21:52:01', '2025-08-23 21:52:01', NULL),
(134, 'Quần nỉ sweatpants unisex gắn tag form relax', 199, 'Mô tả', 'Mô tả dài', 'quan-ni-sweatpants-unisex-gan-tag-form-relax', 21, 1, '2025-08-23 21:54:10', '2025-08-23 21:54:10', NULL),
(135, 'Quần nỉ sweatpants nữ diễu gân trước wideleg', 31, 'Mô tả', 'Mô tả dài', 'quan-ni-sweatpants-nu-dieu-gan-truoc-wideleg', 21, 1, '2025-08-23 21:55:21', '2025-08-23 21:55:21', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` bigint UNSIGNED NOT NULL,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` bigint UNSIGNED NOT NULL,
  `color_id` bigint UNSIGNED NOT NULL,
  `is_active` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_images`
--

INSERT INTO `product_images` (`id`, `url`, `product_id`, `color_id`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'products/1/idqlv47v35cmon2i2epb', 1, 1, 1, '2025-08-23 09:37:35', '2025-08-23 09:37:35'),
(2, 'products/1/ejrk4dlldarg4w2sbwvg', 1, 1, 1, '2025-08-23 09:37:36', '2025-08-23 09:37:36'),
(3, 'products/1/y02mbjganl1muasoeysn', 1, 2, 1, '2025-08-23 09:37:38', '2025-08-23 09:37:38'),
(4, 'products/1/icucdbv1cgmr93qbpi7a', 1, 2, 1, '2025-08-23 09:37:40', '2025-08-23 09:37:40'),
(5, 'products/1/sxsz1vdoooblnolcotg1', 1, 2, 1, '2025-08-23 09:37:43', '2025-08-23 09:37:43'),
(6, 'products/2/suqrl3rvnhcbovtzzaik', 2, 2, 1, '2025-08-23 10:28:28', '2025-08-23 10:28:28'),
(7, 'products/2/izwjflhgti7ddkwo8ubb', 2, 2, 1, '2025-08-23 10:28:29', '2025-08-23 10:28:29'),
(8, 'products/2/tlpe2qickvtsgfndbbpe', 2, 2, 1, '2025-08-23 10:28:31', '2025-08-23 10:28:31'),
(9, 'products/2/i9apbk1bswuzjo19s42l', 2, 5, 1, '2025-08-23 10:28:33', '2025-08-23 10:28:33'),
(10, 'products/2/ha7ib8topwxtzja7wezp', 2, 5, 1, '2025-08-23 10:28:35', '2025-08-23 10:28:35'),
(11, 'products/3/l7ag1lujsrzgxoomiywh', 3, 1, 1, '2025-08-23 11:11:59', '2025-08-23 11:11:59'),
(12, 'products/3/xlukdjsrszwmziapqily', 3, 1, 1, '2025-08-23 11:12:01', '2025-08-23 11:12:01'),
(13, 'products/3/y7w43hgqemudzeg7y0xd', 3, 3, 1, '2025-08-23 11:12:03', '2025-08-23 11:12:03'),
(14, 'products/3/wkwu1w67wuydd9szsqfs', 3, 3, 1, '2025-08-23 11:12:04', '2025-08-23 11:12:04'),
(15, 'products/4/q1ijf25gdq2ey0drirpi', 4, 1, 1, '2025-08-23 11:14:06', '2025-08-23 11:14:06'),
(16, 'products/4/bfdwa7vhm8f5acdldw2x', 4, 1, 1, '2025-08-23 11:14:08', '2025-08-23 11:14:08'),
(18, 'products/4/dffpzl434dii9qlztqne', 4, 3, 1, '2025-08-23 11:14:11', '2025-08-23 11:14:11'),
(19, 'products/5/mifa0yj5daxw4oqrw9ir', 5, 3, 1, '2025-08-23 11:16:39', '2025-08-23 11:16:39'),
(20, 'products/5/xbovgehguniq6vsontut', 5, 3, 1, '2025-08-23 11:16:40', '2025-08-23 11:16:40'),
(21, 'products/5/nvsp2rmpdmbb0wl43lvm', 5, 3, 1, '2025-08-23 11:16:42', '2025-08-23 11:16:42'),
(22, 'products/5/h4ovo7cgj1k3ynk9p26h', 5, 7, 1, '2025-08-23 11:16:44', '2025-08-23 11:16:44'),
(23, 'products/5/ryicewurhn5qiplmaffq', 5, 7, 1, '2025-08-23 11:16:47', '2025-08-23 11:16:47'),
(24, 'products/6/miqmb0ld47m9pqj1xxjm', 6, 7, 1, '2025-08-23 11:21:49', '2025-08-23 11:21:49'),
(25, 'products/6/tifbv2ixrex5proyuv3w', 6, 7, 1, '2025-08-23 11:21:50', '2025-08-23 11:21:50'),
(26, 'products/6/uv0apux1khrqjrribkxg', 6, 9, 1, '2025-08-23 11:21:52', '2025-08-23 11:21:52'),
(27, 'products/6/zbbhhq9vomrxezzaaem9', 6, 9, 1, '2025-08-23 11:21:54', '2025-08-23 11:21:54'),
(28, 'products/6/mteljcomz46wmiyewd2k', 6, 9, 1, '2025-08-23 11:21:57', '2025-08-23 11:21:57'),
(29, 'products/7/kbwdbl19z6ume4jntb1e', 7, 1, 1, '2025-08-23 11:24:46', '2025-08-23 11:24:46'),
(30, 'products/7/pwspxgw5w1qau7h3f5wt', 7, 1, 1, '2025-08-23 11:24:48', '2025-08-23 11:24:48'),
(31, 'products/7/xc4lahqpkdhlas8dnypq', 7, 3, 1, '2025-08-23 11:24:49', '2025-08-23 11:24:49'),
(32, 'products/7/tbnvvk792nqu8j5ftph1', 7, 3, 1, '2025-08-23 11:24:51', '2025-08-23 11:24:51'),
(33, 'products/8/bl9mgvtw3cfaq0yqojbo', 8, 6, 1, '2025-08-23 11:26:47', '2025-08-23 11:26:47'),
(34, 'products/8/yqhotlkrevn8vwofsqlv', 8, 6, 1, '2025-08-23 11:26:49', '2025-08-23 11:26:49'),
(35, 'products/8/z7vln8de2ocglwvrag6c', 8, 9, 1, '2025-08-23 11:26:51', '2025-08-23 11:26:51'),
(36, 'products/8/a9zgsgtf7o5fbiw36n6y', 8, 9, 1, '2025-08-23 11:26:52', '2025-08-23 11:26:52'),
(37, 'products/9/tqo4wmmyvsyzxgkz43zv', 9, 3, 1, '2025-08-23 11:34:13', '2025-08-23 11:34:13'),
(38, 'products/9/by4ds16qqhgamp7fqfqb', 9, 3, 1, '2025-08-23 11:34:15', '2025-08-23 11:34:15'),
(39, 'products/9/vkwpnurl5xsbepncbmx1', 9, 7, 1, '2025-08-23 11:34:17', '2025-08-23 11:34:17'),
(40, 'products/9/dswz4wzjkwamxvlcjrw9', 9, 7, 1, '2025-08-23 11:34:19', '2025-08-23 11:34:19'),
(41, 'products/4/jivxvml2c4s4edwoibum', 4, 3, 1, '2025-08-23 11:36:10', '2025-08-23 11:36:10'),
(42, 'products/10/px8tglj3mzawstljrana', 10, 3, 1, '2025-08-23 11:38:12', '2025-08-23 11:38:12'),
(43, 'products/10/fiiqrs2jkkxjiymrqr6o', 10, 3, 1, '2025-08-23 11:38:14', '2025-08-23 11:38:14'),
(44, 'products/10/dav7asfyralf5duyzhz2', 10, 9, 1, '2025-08-23 11:38:15', '2025-08-23 11:38:15'),
(45, 'products/10/hji0xpbfapidnuzhnyjk', 10, 9, 1, '2025-08-23 11:38:18', '2025-08-23 11:38:18'),
(46, 'products/11/krotqigburbzsh1qtzpo', 11, 6, 1, '2025-08-23 11:42:34', '2025-08-23 11:42:34'),
(47, 'products/11/klis7hhty074ytseppmw', 11, 6, 1, '2025-08-23 11:42:36', '2025-08-23 11:42:36'),
(48, 'products/11/tbklsayxeitwwpxcbmla', 11, 11, 1, '2025-08-23 11:42:38', '2025-08-23 11:42:38'),
(49, 'products/11/ehggz9c1zigisdjae3qq', 11, 11, 1, '2025-08-23 11:42:39', '2025-08-23 11:42:39'),
(50, 'products/12/hwv06dor2un1bdaxrpjh', 12, 1, 1, '2025-08-23 11:43:47', '2025-08-23 11:43:47'),
(51, 'products/12/pow2jmcb18seml41hik4', 12, 1, 1, '2025-08-23 11:43:49', '2025-08-23 11:43:49'),
(52, 'products/12/s03fqagpxnr9ydva1ccu', 12, 3, 1, '2025-08-23 11:43:51', '2025-08-23 11:43:51'),
(53, 'products/12/pfqaxvzhqdlwjnl81pon', 12, 3, 1, '2025-08-23 11:43:53', '2025-08-23 11:43:53'),
(54, 'products/13/b9yiz1aycjmqhcuaituh', 13, 3, 1, '2025-08-23 11:45:19', '2025-08-23 11:45:19'),
(55, 'products/13/mbztubbafj0lqrjpdxqz', 13, 3, 1, '2025-08-23 11:45:21', '2025-08-23 11:45:21'),
(56, 'products/13/thxveu5zmgimwbpzwgbw', 13, 7, 1, '2025-08-23 11:45:23', '2025-08-23 11:45:23'),
(57, 'products/13/nbawo5ahcg8nzlhwdlcy', 13, 7, 1, '2025-08-23 11:45:24', '2025-08-23 11:45:24'),
(58, 'products/14/vlcn8cb40xbzewvlvhc4', 14, 3, 1, '2025-08-23 11:46:59', '2025-08-23 11:46:59'),
(59, 'products/14/oqrcbbrtnvwdqsppkwum', 14, 3, 1, '2025-08-23 11:47:01', '2025-08-23 11:47:01'),
(60, 'products/14/rj6jmwqcstecref7lao7', 14, 9, 1, '2025-08-23 11:47:03', '2025-08-23 11:47:03'),
(61, 'products/14/lgjsyfvaog430zdvjs94', 14, 9, 1, '2025-08-23 11:47:05', '2025-08-23 11:47:05'),
(62, 'products/15/vjo57morxuxa9i37pwcw', 15, 6, 1, '2025-08-23 11:48:38', '2025-08-23 11:48:38'),
(63, 'products/15/mfiqsksoqvsfno496xzd', 15, 6, 1, '2025-08-23 11:48:41', '2025-08-23 11:48:41'),
(64, 'products/15/bih2rvhjpubonnpltxv7', 15, 9, 1, '2025-08-23 11:48:43', '2025-08-23 11:48:43'),
(65, 'products/15/dp2pt86jjhpslbzlumbw', 15, 9, 1, '2025-08-23 11:48:45', '2025-08-23 11:48:45'),
(66, 'products/16/shzsgkuocgpomelkpuzi', 16, 3, 1, '2025-08-23 11:50:23', '2025-08-23 11:50:23'),
(67, 'products/16/kbvd5gjhbgom45ktvaei', 16, 3, 1, '2025-08-23 11:50:25', '2025-08-23 11:50:25'),
(68, 'products/16/iu0avid4wexzgicstrd1', 16, 9, 1, '2025-08-23 11:50:27', '2025-08-23 11:50:27'),
(69, 'products/16/togi0rtv6stos8qvsyg0', 16, 9, 1, '2025-08-23 11:50:30', '2025-08-23 11:50:30'),
(70, 'products/17/r8x1qkzap1qut6t0h2uw', 17, 1, 1, '2025-08-23 11:51:56', '2025-08-23 11:51:56'),
(71, 'products/17/t7dwvrthasm9ggnpvyb3', 17, 1, 1, '2025-08-23 11:51:58', '2025-08-23 11:51:58'),
(72, 'products/17/dh6bsqbkj8r9uhfudhsk', 17, 11, 1, '2025-08-23 11:52:00', '2025-08-23 11:52:00'),
(73, 'products/17/mxf8bly4qelzpequncmd', 17, 11, 1, '2025-08-23 11:52:01', '2025-08-23 11:52:01'),
(74, 'products/18/lubdy08izdtbv3jx7dds', 18, 3, 1, '2025-08-23 11:53:40', '2025-08-23 11:53:40'),
(75, 'products/18/eazugpmaprze5kqikflj', 18, 3, 1, '2025-08-23 11:53:42', '2025-08-23 11:53:42'),
(76, 'products/18/tdbggxszweja7esw3m6p', 18, 7, 1, '2025-08-23 11:53:44', '2025-08-23 11:53:44'),
(77, 'products/18/gm7aa9nz3xpuc0iacvdp', 18, 7, 1, '2025-08-23 11:53:46', '2025-08-23 11:53:46'),
(78, 'products/19/owzqn8ulzyqjaqu3j3zc', 19, 1, 1, '2025-08-23 11:55:10', '2025-08-23 11:55:10'),
(79, 'products/19/jqhpe0mshhbnrh9xwyey', 19, 1, 1, '2025-08-23 11:55:12', '2025-08-23 11:55:12'),
(80, 'products/19/gix7vfjkmac5cf1p0kbk', 19, 11, 1, '2025-08-23 11:55:14', '2025-08-23 11:55:14'),
(81, 'products/19/frbgr0gyh9r9g8pllbrd', 19, 11, 1, '2025-08-23 11:55:16', '2025-08-23 11:55:16'),
(82, 'products/20/hdqob8b8skn3bhkny7vz', 20, 7, 1, '2025-08-23 11:56:43', '2025-08-23 11:56:43'),
(83, 'products/20/vmhgooxrbxbekurphrzq', 20, 7, 1, '2025-08-23 11:56:46', '2025-08-23 11:56:46'),
(84, 'products/20/hwpedzn2yzdnnafbr9ql', 20, 11, 1, '2025-08-23 11:56:48', '2025-08-23 11:56:48'),
(85, 'products/20/buwjuqknjyx5knxglk57', 20, 11, 1, '2025-08-23 11:56:50', '2025-08-23 11:56:50'),
(86, 'products/21/mwwre7bsrrrsyiipqlzx', 21, 1, 1, '2025-08-23 11:59:19', '2025-08-23 11:59:19'),
(87, 'products/21/pzagucm7s1mvfi8kpuro', 21, 1, 1, '2025-08-23 11:59:22', '2025-08-23 11:59:22'),
(88, 'products/21/ae59pui3sfktnrd6vurn', 21, 9, 1, '2025-08-23 11:59:23', '2025-08-23 11:59:23'),
(89, 'products/21/ainmd2ixu9r6xoyqzf7d', 21, 9, 1, '2025-08-23 11:59:25', '2025-08-23 11:59:25'),
(90, 'products/22/qv5bdwhvpo27bbwvd3kz', 22, 1, 1, '2025-08-23 12:00:28', '2025-08-23 12:00:28'),
(91, 'products/22/mptq4gl1hteiwryx0huu', 22, 1, 1, '2025-08-23 12:00:30', '2025-08-23 12:00:30'),
(92, 'products/22/sczw87fn59pj42uoengs', 22, 3, 1, '2025-08-23 12:00:32', '2025-08-23 12:00:32'),
(93, 'products/22/kqfym1wypzm3fj61uzbw', 22, 3, 1, '2025-08-23 12:00:35', '2025-08-23 12:00:35'),
(94, 'products/23/bgslrzukrkmgsvg0kofm', 23, 7, 1, '2025-08-23 12:02:03', '2025-08-23 12:02:03'),
(95, 'products/23/vxzcdtyk5xqmrlw3t8md', 23, 7, 1, '2025-08-23 12:02:08', '2025-08-23 12:02:08'),
(96, 'products/24/mtofuyzwhgtvghsdm0su', 24, 1, 1, '2025-08-23 12:03:47', '2025-08-23 12:03:47'),
(97, 'products/24/iznlcynhorrztjqwqwgp', 24, 1, 1, '2025-08-23 12:03:49', '2025-08-23 12:03:49'),
(98, 'products/24/lda0pllytfxbcfpbqv5y', 24, 9, 1, '2025-08-23 12:03:51', '2025-08-23 12:03:51'),
(99, 'products/24/lp00pltj922pa09b5evr', 24, 9, 1, '2025-08-23 12:03:53', '2025-08-23 12:03:53'),
(100, 'products/25/wh8wtuuo5bwhrztnmvl4', 25, 1, 1, '2025-08-23 12:05:51', '2025-08-23 12:05:51'),
(101, 'products/25/ohza0amol9io2njgcyh5', 25, 1, 1, '2025-08-23 12:05:53', '2025-08-23 12:05:53'),
(102, 'products/25/eyt9eqd2quqtiaxbgz8a', 25, 3, 1, '2025-08-23 12:05:54', '2025-08-23 12:05:54'),
(103, 'products/25/emvwpsommnpshq7xqqpn', 25, 3, 1, '2025-08-23 12:05:57', '2025-08-23 12:05:57'),
(104, 'products/26/ijmj9pqwh7oxn3mzwfyl', 26, 9, 1, '2025-08-23 12:06:38', '2025-08-23 12:06:38'),
(105, 'products/26/qs7hwt9zwvghlpyjbd72', 26, 9, 1, '2025-08-23 12:06:40', '2025-08-23 12:06:40'),
(106, 'products/27/elvzxytvenyzujgdbjtj', 27, 1, 1, '2025-08-23 12:08:00', '2025-08-23 12:08:00'),
(107, 'products/27/fopodof4tsktf17cbrzb', 27, 1, 1, '2025-08-23 12:08:02', '2025-08-23 12:08:02'),
(108, 'products/27/jcdnpf08hunufmxvhy6q', 27, 11, 1, '2025-08-23 12:08:04', '2025-08-23 12:08:04'),
(109, 'products/27/tyt53znaxhncegjjtwrp', 27, 11, 1, '2025-08-23 12:08:07', '2025-08-23 12:08:07'),
(110, 'products/28/lijmhvbb6cydbokiisoh', 28, 7, 1, '2025-08-23 12:09:29', '2025-08-23 12:09:29'),
(111, 'products/28/orwt9x3khbosyevjqxqu', 28, 7, 1, '2025-08-23 12:09:31', '2025-08-23 12:09:31'),
(112, 'products/29/tq01eulje3xty9osw2nm', 29, 9, 1, '2025-08-23 12:11:01', '2025-08-23 12:11:01'),
(113, 'products/29/yxpytd887ijs0ht40ejq', 29, 9, 1, '2025-08-23 12:11:03', '2025-08-23 12:11:03'),
(114, 'products/29/q3oapydjuu8qi116rxth', 29, 11, 1, '2025-08-23 12:11:05', '2025-08-23 12:11:05'),
(115, 'products/29/suo7ood66rtsjsd5lity', 29, 11, 1, '2025-08-23 12:11:07', '2025-08-23 12:11:07'),
(116, 'products/30/qg8iwvkwwwgkea1uyof0', 30, 3, 1, '2025-08-23 12:12:53', '2025-08-23 12:12:53'),
(117, 'products/30/hylplx8eufvmb4oym9qq', 30, 3, 1, '2025-08-23 12:12:55', '2025-08-23 12:12:55'),
(118, 'products/31/xtmovab3rqqsugrgep7b', 31, 7, 1, '2025-08-23 12:15:18', '2025-08-23 12:15:18'),
(119, 'products/31/dsaieg2uzfp3by6enfss', 31, 7, 1, '2025-08-23 12:15:20', '2025-08-23 12:15:20'),
(120, 'products/31/ns8rj2qj1aitdo7agpbs', 31, 9, 1, '2025-08-23 12:15:23', '2025-08-23 12:15:23'),
(121, 'products/31/vkuhqesvspofa5nf39zl', 31, 9, 1, '2025-08-23 12:15:25', '2025-08-23 12:15:25'),
(122, 'products/32/xbntnu1shg4qxxjz53rq', 32, 7, 1, '2025-08-23 12:16:36', '2025-08-23 12:16:36'),
(123, 'products/32/exfhvwhsk75p5k4bqzih', 32, 7, 1, '2025-08-23 12:16:38', '2025-08-23 12:16:38'),
(124, 'products/32/jdhkdhd47qcchb79g3mm', 32, 9, 1, '2025-08-23 12:16:41', '2025-08-23 12:16:41'),
(125, 'products/32/oqlvhnnxqne1wa2jrktv', 32, 9, 1, '2025-08-23 12:16:43', '2025-08-23 12:16:43'),
(126, 'products/33/lerb3vrtlzmuinlvycpx', 33, 7, 1, '2025-08-23 12:18:11', '2025-08-23 12:18:11'),
(127, 'products/33/kohbd6nxkrlytwdocf5n', 33, 7, 1, '2025-08-23 12:18:13', '2025-08-23 12:18:13'),
(128, 'products/33/lb7v2wun3drs9ifwbc37', 33, 9, 1, '2025-08-23 12:18:15', '2025-08-23 12:18:15'),
(129, 'products/33/e3ebvvpcw2eqkldgza2u', 33, 9, 1, '2025-08-23 12:18:18', '2025-08-23 12:18:18'),
(130, 'products/34/be1jtcsvrwgzufyspexm', 34, 3, 1, '2025-08-23 12:19:29', '2025-08-23 12:19:29'),
(131, 'products/34/f8eerfsysz3bzjvzzgda', 34, 3, 1, '2025-08-23 12:19:30', '2025-08-23 12:19:30'),
(132, 'products/34/fkrwnvscpnkmbjltbckz', 34, 7, 1, '2025-08-23 12:19:32', '2025-08-23 12:19:32'),
(133, 'products/34/zf5as06bngushiiuhhrh', 34, 7, 1, '2025-08-23 12:19:34', '2025-08-23 12:19:34'),
(134, 'products/35/uughljbetoci6i0dahav', 35, 3, 1, '2025-08-23 12:20:58', '2025-08-23 12:20:58'),
(135, 'products/35/np7ksmbo9bdjawmtojw3', 35, 3, 1, '2025-08-23 12:21:01', '2025-08-23 12:21:01'),
(136, 'products/35/jy3luqlz5r8wrtycjvsr', 35, 7, 1, '2025-08-23 12:21:03', '2025-08-23 12:21:03'),
(137, 'products/35/eqtkyv4smoljloikfrss', 35, 7, 1, '2025-08-23 12:21:05', '2025-08-23 12:21:05'),
(138, 'products/36/nocbx2ekcx66lzthauqh', 36, 7, 1, '2025-08-23 12:21:51', '2025-08-23 12:21:51'),
(139, 'products/36/vr0bhwzkcftcokbpvfvy', 36, 7, 1, '2025-08-23 12:21:54', '2025-08-23 12:21:54'),
(140, 'products/37/az7pnto85y8mekqofqoe', 37, 7, 1, '2025-08-23 12:23:05', '2025-08-23 12:23:05'),
(141, 'products/37/dtwnfzyeof5ozmqhv6gt', 37, 7, 1, '2025-08-23 12:23:08', '2025-08-23 12:23:08'),
(142, 'products/37/jntwoicusvgoaezqhuqp', 37, 9, 1, '2025-08-23 12:23:10', '2025-08-23 12:23:10'),
(143, 'products/37/oafoz710xjehw8bqvbki', 37, 9, 1, '2025-08-23 12:23:12', '2025-08-23 12:23:12'),
(144, 'products/38/kgnwqgvjv8chk8sefvlx', 38, 3, 1, '2025-08-23 12:24:02', '2025-08-23 12:24:02'),
(145, 'products/38/hwmqtccxbcnd3lqrqlda', 38, 3, 1, '2025-08-23 12:24:04', '2025-08-23 12:24:04'),
(146, 'products/39/j95wr64qqwidtuhhxuvm', 39, 3, 1, '2025-08-23 12:25:22', '2025-08-23 12:25:22'),
(147, 'products/39/cz0szki8dmmds0swpswx', 39, 3, 1, '2025-08-23 12:25:24', '2025-08-23 12:25:24'),
(148, 'products/39/aybtss1d5kynx6aenxe8', 39, 7, 1, '2025-08-23 12:25:26', '2025-08-23 12:25:26'),
(149, 'products/39/jvzfvcgrndyve2nx2aar', 39, 7, 1, '2025-08-23 12:25:28', '2025-08-23 12:25:28'),
(150, 'products/40/ohvx21k9bruccw5d8rag', 40, 3, 1, '2025-08-23 12:26:38', '2025-08-23 12:26:38'),
(151, 'products/40/dm4ok51e9oyvgndraoho', 40, 3, 1, '2025-08-23 12:26:39', '2025-08-23 12:26:39'),
(152, 'products/40/ni5jdfc8bu03kzqinklh', 40, 7, 1, '2025-08-23 12:26:41', '2025-08-23 12:26:41'),
(153, 'products/40/gzlrmrplbgytcuf44bql', 40, 7, 1, '2025-08-23 12:26:43', '2025-08-23 12:26:43'),
(154, 'products/41/o5svqnbonukv5izxw38b', 41, 1, 1, '2025-08-23 12:32:06', '2025-08-23 12:32:06'),
(155, 'products/41/t1looqhri7bwig4bnjif', 41, 1, 1, '2025-08-23 12:32:08', '2025-08-23 12:32:08'),
(156, 'products/41/aqajlqwmhk8gbnfawkzd', 41, 3, 1, '2025-08-23 12:32:11', '2025-08-23 12:32:11'),
(157, 'products/41/yonjru4xmj28ahhqxjyc', 41, 3, 1, '2025-08-23 12:32:13', '2025-08-23 12:32:13'),
(158, 'products/42/mw30fiefsqemxpt31ysa', 42, 1, 1, '2025-08-23 12:33:30', '2025-08-23 12:33:30'),
(159, 'products/42/qrevp7zpwv6uo0jmtxax', 42, 1, 1, '2025-08-23 12:33:33', '2025-08-23 12:33:33'),
(160, 'products/42/u6b1ps1hju4809aex3ym', 42, 9, 1, '2025-08-23 12:33:35', '2025-08-23 12:33:35'),
(161, 'products/42/hs1pughdqvpkgar2t797', 42, 9, 1, '2025-08-23 12:33:38', '2025-08-23 12:33:38'),
(162, 'products/43/eoch7bcypwe858i03bsu', 43, 7, 1, '2025-08-23 12:35:00', '2025-08-23 12:35:00'),
(163, 'products/43/l00bwtmkkrb1jvsdglom', 43, 7, 1, '2025-08-23 12:35:03', '2025-08-23 12:35:03'),
(164, 'products/44/zlbjo3xjzv584cxydfjq', 44, 7, 1, '2025-08-23 12:36:09', '2025-08-23 12:36:09'),
(165, 'products/44/ty87qmq3nrwonqzavdui', 44, 7, 1, '2025-08-23 12:36:11', '2025-08-23 12:36:11'),
(166, 'products/45/aifz8umxpxhfbgexo0kn', 45, 7, 1, '2025-08-23 12:37:00', '2025-08-23 12:37:00'),
(167, 'products/45/wuhhpdi9dga9trz8emtv', 45, 7, 1, '2025-08-23 12:37:02', '2025-08-23 12:37:02'),
(168, 'products/46/jljwzflvamcbgm6mglbl', 46, 9, 1, '2025-08-23 12:38:10', '2025-08-23 12:38:10'),
(169, 'products/46/hhtpla0xttdnfhh28u9z', 46, 9, 1, '2025-08-23 12:38:13', '2025-08-23 12:38:13'),
(170, 'products/47/ruhb91rkucxzk1sxptwj', 47, 7, 1, '2025-08-23 12:39:36', '2025-08-23 12:39:36'),
(171, 'products/47/apccd9vamgufmrf4onvz', 47, 7, 1, '2025-08-23 12:39:39', '2025-08-23 12:39:39'),
(172, 'products/48/yebigdq6qjm0jgsbn7vo', 48, 11, 1, '2025-08-23 12:40:35', '2025-08-23 12:40:35'),
(173, 'products/48/l4eceejgyvqwxc8qe6dx', 48, 11, 1, '2025-08-23 12:40:38', '2025-08-23 12:40:38'),
(174, 'products/49/sw0wjzmtaxlosjhrac2a', 49, 7, 1, '2025-08-23 12:41:33', '2025-08-23 12:41:33'),
(175, 'products/49/eqwysahss7lv50qmjels', 49, 7, 1, '2025-08-23 12:41:37', '2025-08-23 12:41:37'),
(176, 'products/50/ozm7wyrm1pyhmimqogrb', 50, 7, 1, '2025-08-23 12:42:19', '2025-08-23 12:42:19'),
(177, 'products/50/s1axvhcfsdt6qqwgpqse', 50, 7, 1, '2025-08-23 12:42:21', '2025-08-23 12:42:21'),
(178, 'products/51/jbshrhpc8oo0d885y4xr', 51, 1, 1, '2025-08-23 12:44:59', '2025-08-23 12:44:59'),
(179, 'products/51/gvsgwfeifdae3hy3uzij', 51, 1, 1, '2025-08-23 12:45:01', '2025-08-23 12:45:01'),
(180, 'products/51/od6cp0rbkaiswabrc7ax', 51, 11, 1, '2025-08-23 12:45:02', '2025-08-23 12:45:02'),
(181, 'products/51/h8fqqy4bfa0pevrdyyez', 51, 11, 1, '2025-08-23 12:45:04', '2025-08-23 12:45:04'),
(182, 'products/52/odnksp4t97krc4uolc2x', 52, 1, 1, '2025-08-23 12:46:27', '2025-08-23 12:46:27'),
(183, 'products/52/azdepnlgqeba804vheto', 52, 1, 1, '2025-08-23 12:46:29', '2025-08-23 12:46:29'),
(184, 'products/52/bpum04xa2znpdhsn7wdr', 52, 11, 1, '2025-08-23 12:46:30', '2025-08-23 12:46:30'),
(185, 'products/52/wfnj4upqt7zdhn4zlino', 52, 11, 1, '2025-08-23 12:46:33', '2025-08-23 12:46:33'),
(186, 'products/53/hfxfrm60m0vm6jaofrxa', 53, 11, 1, '2025-08-23 12:47:42', '2025-08-23 12:47:42'),
(187, 'products/53/itlywxas7xlgpgby0wma', 53, 11, 1, '2025-08-23 12:47:44', '2025-08-23 12:47:44'),
(188, 'products/54/hdbquqirkxiymdy5wtqs', 54, 1, 1, '2025-08-23 12:49:45', '2025-08-23 12:49:45'),
(189, 'products/54/g2sbxwthfamy94zf0cww', 54, 1, 1, '2025-08-23 12:49:46', '2025-08-23 12:49:46'),
(190, 'products/54/ci29xjekomtlnawixjmc', 54, 3, 1, '2025-08-23 12:49:48', '2025-08-23 12:49:48'),
(191, 'products/54/mkbdmpxczubogmgfwicb', 54, 3, 1, '2025-08-23 12:49:50', '2025-08-23 12:49:50'),
(192, 'products/55/lie7ow1xzjyjbub5s0be', 55, 1, 1, '2025-08-23 12:51:11', '2025-08-23 12:51:11'),
(193, 'products/55/xumcx6maj1a1mzgw7kj1', 55, 1, 1, '2025-08-23 12:51:12', '2025-08-23 12:51:12'),
(194, 'products/55/ti5fav1w70ctz86ysqrl', 55, 11, 1, '2025-08-23 12:51:14', '2025-08-23 12:51:14'),
(195, 'products/55/mxzter289nzx08cp1wos', 55, 11, 1, '2025-08-23 12:51:16', '2025-08-23 12:51:16'),
(196, 'products/56/hzphe6xywtkeghqyb81b', 56, 3, 1, '2025-08-23 12:52:19', '2025-08-23 12:52:19'),
(197, 'products/56/p6spjt2bqd5skuqygiwf', 56, 3, 1, '2025-08-23 12:52:21', '2025-08-23 12:52:21'),
(198, 'products/56/wngfzphjsaogt0jjgq5p', 56, 11, 1, '2025-08-23 12:52:22', '2025-08-23 12:52:22'),
(199, 'products/56/mempwvq3imelx1kulgjo', 56, 11, 1, '2025-08-23 12:52:24', '2025-08-23 12:52:24'),
(200, 'products/57/ehjgxnwci0duffjatnwq', 57, 1, 1, '2025-08-23 12:53:12', '2025-08-23 12:53:12'),
(201, 'products/57/a9o8iyqpnhoi7d51rz1x', 57, 1, 1, '2025-08-23 12:53:14', '2025-08-23 12:53:14'),
(202, 'products/58/qnupl3ad2agik1gqabfe', 58, 3, 1, '2025-08-23 12:54:07', '2025-08-23 12:54:07'),
(203, 'products/58/vr8agpqti43ydca1yolf', 58, 3, 1, '2025-08-23 12:54:09', '2025-08-23 12:54:09'),
(204, 'products/59/gqwcgyjjdyfc0l8owmrh', 59, 1, 1, '2025-08-23 12:56:37', '2025-08-23 12:56:37'),
(205, 'products/59/yrkdfsfis7oid4m7woiu', 59, 1, 1, '2025-08-23 12:56:38', '2025-08-23 12:56:38'),
(206, 'products/59/tk72hmyssl7wag6tcix5', 59, 11, 1, '2025-08-23 12:56:40', '2025-08-23 12:56:40'),
(207, 'products/59/xuglnprxklfqlnq71uqt', 59, 11, 1, '2025-08-23 12:56:42', '2025-08-23 12:56:42'),
(208, 'products/60/e1mpufapi8qiaie2bodc', 60, 1, 1, '2025-08-23 12:57:20', '2025-08-23 12:57:20'),
(209, 'products/60/devjmapzaluwwovchcty', 60, 1, 1, '2025-08-23 12:57:22', '2025-08-23 12:57:22'),
(210, 'products/60/iyxv2rpgbntcld1cr3il', 60, 3, 1, '2025-08-23 12:57:24', '2025-08-23 12:57:24'),
(211, 'products/60/a3ymrmorn4on7ftzmtio', 60, 3, 1, '2025-08-23 12:57:26', '2025-08-23 12:57:26'),
(212, 'products/61/sfdlutllrhfqg66dlxqi', 61, 1, 1, '2025-08-23 13:03:29', '2025-08-23 13:03:29'),
(213, 'products/61/thno4n9sjfftd9omy34e', 61, 1, 1, '2025-08-23 13:03:31', '2025-08-23 13:03:31'),
(214, 'products/61/uvqhshjx4luoryjqumkh', 61, 3, 1, '2025-08-23 13:03:32', '2025-08-23 13:03:32'),
(215, 'products/61/w7379kbttuarpjvi9c1x', 61, 3, 1, '2025-08-23 13:03:34', '2025-08-23 13:03:34'),
(216, 'products/62/lrwwylnqjbkx7ghpq7en', 62, 7, 1, '2025-08-23 13:04:26', '2025-08-23 13:04:26'),
(217, 'products/62/gsbbcgiffxmb20nvfxym', 62, 7, 1, '2025-08-23 13:04:28', '2025-08-23 13:04:28'),
(218, 'products/63/iclbuasw0n3j1hezswrq', 63, 1, 1, '2025-08-23 13:05:42', '2025-08-23 13:05:42'),
(219, 'products/63/uvvpyxej5ke8fpaepwdr', 63, 1, 1, '2025-08-23 13:05:44', '2025-08-23 13:05:44'),
(220, 'products/63/pzd1bzoewmr43xiiqwi7', 63, 9, 1, '2025-08-23 13:05:46', '2025-08-23 13:05:46'),
(221, 'products/63/ykpo8iiuhbzsk6xsfq32', 63, 9, 1, '2025-08-23 13:05:49', '2025-08-23 13:05:49'),
(222, 'products/64/gakqyhjgmmzqfibqc32z', 64, 1, 1, '2025-08-23 13:06:48', '2025-08-23 13:06:48'),
(223, 'products/64/g2f80f4ncxpbwjohvkzn', 64, 1, 1, '2025-08-23 13:06:50', '2025-08-23 13:06:50'),
(224, 'products/65/jhdwbs6um6iq7lqm3qlv', 65, 1, 1, '2025-08-23 13:07:26', '2025-08-23 13:07:26'),
(225, 'products/65/dcmeer1wnqiyncuf9w8p', 65, 1, 1, '2025-08-23 13:07:28', '2025-08-23 13:07:28'),
(226, 'products/66/hhpodcmm8clw4ekfbohv', 66, 1, 1, '2025-08-23 13:08:21', '2025-08-23 13:08:21'),
(227, 'products/66/frjmeldh7mywvwzz52zu', 66, 1, 1, '2025-08-23 13:08:23', '2025-08-23 13:08:23'),
(228, 'products/67/s6ce9c72pkev9fg7sbre', 67, 1, 1, '2025-08-23 13:09:45', '2025-08-23 13:09:45'),
(229, 'products/67/sws09husxc2qs7vnk9tr', 67, 1, 1, '2025-08-23 13:09:46', '2025-08-23 13:09:46'),
(230, 'products/67/jrycyhfkpdft0yxispig', 67, 9, 1, '2025-08-23 13:09:48', '2025-08-23 13:09:48'),
(231, 'products/67/nv0ealxyhhtuqjfgmhrt', 67, 9, 1, '2025-08-23 13:09:52', '2025-08-23 13:09:52'),
(232, 'products/68/rhy4jq6deanqla4mr2uy', 68, 1, 1, '2025-08-23 13:11:01', '2025-08-23 13:11:01'),
(233, 'products/68/yfoyej3e0v100tjcrcum', 68, 1, 1, '2025-08-23 13:11:03', '2025-08-23 13:11:03'),
(234, 'products/68/zex1czypht3vc04zer8m', 68, 9, 1, '2025-08-23 13:11:05', '2025-08-23 13:11:05'),
(235, 'products/68/pksfr46fyovt9mjcengb', 68, 9, 1, '2025-08-23 13:11:07', '2025-08-23 13:11:07'),
(236, 'products/69/fjju7wzohpiauokvlkuz', 69, 1, 1, '2025-08-23 13:12:17', '2025-08-23 13:12:17'),
(237, 'products/69/tp6pea67rwgcxcf6plab', 69, 1, 1, '2025-08-23 13:12:19', '2025-08-23 13:12:19'),
(238, 'products/69/b56qbvkdlozu8h0deis3', 69, 9, 1, '2025-08-23 13:12:21', '2025-08-23 13:12:21'),
(239, 'products/69/qdvhzc9x2xcjvdsg5xrc', 69, 9, 1, '2025-08-23 13:12:23', '2025-08-23 13:12:23'),
(240, 'products/70/fvzh2azkile3exp4h4ez', 70, 1, 1, '2025-08-23 13:13:12', '2025-08-23 13:13:12'),
(241, 'products/70/x5wvw7lxpzb1hseu1ht7', 70, 1, 1, '2025-08-23 13:13:14', '2025-08-23 13:13:14'),
(242, 'products/71/ey6dobr3xpixlcsusdx3', 71, 3, 1, '2025-08-23 13:31:08', '2025-08-23 13:31:08'),
(243, 'products/71/rynkjqbcqx2mw3j9bazh', 71, 3, 1, '2025-08-23 13:31:10', '2025-08-23 13:31:10'),
(244, 'products/71/l8xfnirjb68lvwfdaru3', 71, 8, 1, '2025-08-23 13:31:12', '2025-08-23 13:31:12'),
(245, 'products/71/tg6q9lr91dus3qe1g3g4', 71, 8, 1, '2025-08-23 13:31:15', '2025-08-23 13:31:15'),
(246, 'products/72/fwa7bulca3nx1nwvks4s', 72, 6, 1, '2025-08-23 13:35:02', '2025-08-23 13:35:02'),
(247, 'products/72/oxt28ddggrjjyfpwjbpx', 72, 6, 1, '2025-08-23 13:35:03', '2025-08-23 13:35:03'),
(248, 'products/72/yner6gfx3keld0okjlsw', 72, 8, 1, '2025-08-23 13:35:05', '2025-08-23 13:35:05'),
(249, 'products/72/bsoe0o9lfusm5vmun0lb', 72, 8, 1, '2025-08-23 13:35:07', '2025-08-23 13:35:07'),
(250, 'products/73/riiprb3luvohnz9hnaug', 73, 3, 1, '2025-08-23 13:36:03', '2025-08-23 13:36:03'),
(251, 'products/73/nkuyozjdw7lditpdw8hn', 73, 3, 1, '2025-08-23 13:36:06', '2025-08-23 13:36:06'),
(252, 'products/73/ilutqyf1ug66xqinjkm0', 73, 8, 1, '2025-08-23 13:36:08', '2025-08-23 13:36:08'),
(253, 'products/73/ye5srmmgttfrwxg6lpuy', 73, 8, 1, '2025-08-23 13:36:11', '2025-08-23 13:36:11'),
(254, 'products/74/fs5nvicpqxqojjoabvgz', 74, 1, 1, '2025-08-23 13:37:39', '2025-08-23 13:37:39'),
(255, 'products/74/rdagkrjvtau3qms5b1cx', 74, 1, 1, '2025-08-23 13:37:41', '2025-08-23 13:37:41'),
(256, 'products/74/etb2hn6y1ghwnku46hen', 74, 8, 1, '2025-08-23 13:37:43', '2025-08-23 13:37:43'),
(257, 'products/74/qpypgoipy7sjukyazygk', 74, 8, 1, '2025-08-23 13:37:45', '2025-08-23 13:37:45'),
(258, 'products/75/xaayfo9wr9v75jykbxxq', 75, 6, 1, '2025-08-23 13:39:52', '2025-08-23 13:39:52'),
(259, 'products/75/hf7jrw0p928q4kalgv6i', 75, 6, 1, '2025-08-23 13:39:54', '2025-08-23 13:39:54'),
(260, 'products/75/tsybt9lq1khkrjefkzbc', 75, 9, 1, '2025-08-23 13:39:57', '2025-08-23 13:39:57'),
(261, 'products/75/nnk7eu0n99bfynindz0l', 75, 9, 1, '2025-08-23 13:39:59', '2025-08-23 13:39:59'),
(262, 'products/76/kebppolpc8rvdlfbk99j', 76, 6, 1, '2025-08-23 13:41:10', '2025-08-23 13:41:10'),
(263, 'products/76/ctg1msa0npyfpiknajql', 76, 6, 1, '2025-08-23 13:41:11', '2025-08-23 13:41:11'),
(264, 'products/76/ejti4qbrvu1dvray3bok', 76, 8, 1, '2025-08-23 13:41:14', '2025-08-23 13:41:14'),
(265, 'products/76/knqxyqrsek8ook8lj30o', 76, 8, 1, '2025-08-23 13:41:16', '2025-08-23 13:41:16'),
(266, 'products/77/huqxfe2b4hfbdgz2g7hk', 77, 8, 1, '2025-08-23 13:42:23', '2025-08-23 13:42:23'),
(267, 'products/77/jqalshsmt7lhjp6tde8m', 77, 8, 1, '2025-08-23 13:42:25', '2025-08-23 13:42:25'),
(268, 'products/77/cw6syyb1kabpkemifh3f', 77, 9, 1, '2025-08-23 13:42:28', '2025-08-23 13:42:28'),
(269, 'products/77/dzldg7e5qxr05f76hakw', 77, 9, 1, '2025-08-23 13:42:29', '2025-08-23 13:42:29'),
(270, 'products/78/bh7zri373lzsicuncyo6', 78, 1, 1, '2025-08-23 13:43:46', '2025-08-23 13:43:46'),
(271, 'products/78/hisqjfggvderkt5wn9vd', 78, 1, 1, '2025-08-23 13:43:48', '2025-08-23 13:43:48'),
(272, 'products/78/xjsuk0zmxpkif3xvqq2f', 78, 11, 1, '2025-08-23 13:43:50', '2025-08-23 13:43:50'),
(273, 'products/78/v8gbad1i5aaxorrfhevf', 78, 11, 1, '2025-08-23 13:43:52', '2025-08-23 13:43:52'),
(274, 'products/79/duyz8l93ndkxklhfjyok', 79, 1, 1, '2025-08-23 13:45:11', '2025-08-23 13:45:11'),
(275, 'products/79/hbuhwbqblfuxfq8br9vw', 79, 1, 1, '2025-08-23 13:45:13', '2025-08-23 13:45:13'),
(276, 'products/79/cbuvn7mrmvhhk9nrdqt1', 79, 11, 1, '2025-08-23 13:45:16', '2025-08-23 13:45:16'),
(277, 'products/79/ik9ilgr34skkblbuy0qa', 79, 11, 1, '2025-08-23 13:45:18', '2025-08-23 13:45:18'),
(278, 'products/80/iu0inelmx9vb7g76uagl', 80, 3, 1, '2025-08-23 13:46:36', '2025-08-23 13:46:36'),
(279, 'products/80/tubpuwgofkpzlr8rjnj9', 80, 3, 1, '2025-08-23 13:46:38', '2025-08-23 13:46:38'),
(280, 'products/80/rdcz0eryoan474wie9hk', 80, 8, 1, '2025-08-23 13:46:40', '2025-08-23 13:46:40'),
(281, 'products/80/s1wvql0cwypijl5sjzq6', 80, 8, 1, '2025-08-23 13:46:41', '2025-08-23 13:46:41'),
(282, 'products/81/bzydbowdxuavcn5eetad', 81, 8, 1, '2025-08-23 20:20:37', '2025-08-23 20:20:37'),
(283, 'products/81/npfa4fhp2tjvtrv5pyyh', 81, 8, 1, '2025-08-23 20:20:39', '2025-08-23 20:20:39'),
(284, 'products/82/lpo9vnrs02n0keusiaer', 82, 1, 1, '2025-08-23 20:22:01', '2025-08-23 20:22:01'),
(285, 'products/82/flriufclpqgf3ua7jvcu', 82, 1, 1, '2025-08-23 20:22:04', '2025-08-23 20:22:04'),
(286, 'products/82/qu1kyht0kwaaa3wgkc2g', 82, 2, 1, '2025-08-23 20:22:07', '2025-08-23 20:22:07'),
(287, 'products/82/c8fs1a7ofck9yprujvfa', 82, 2, 1, '2025-08-23 20:22:09', '2025-08-23 20:22:09'),
(288, 'products/83/cxiwbkciym0cvhs2tjpm', 83, 3, 1, '2025-08-23 20:23:14', '2025-08-23 20:23:14'),
(289, 'products/83/uwdd2a01gtlnzwqlebzm', 83, 3, 1, '2025-08-23 20:23:16', '2025-08-23 20:23:16'),
(290, 'products/83/qszbruwtjpainxasqklw', 83, 8, 1, '2025-08-23 20:23:18', '2025-08-23 20:23:18'),
(291, 'products/83/fhvdxfzgfzegtgm7vart', 83, 8, 1, '2025-08-23 20:23:20', '2025-08-23 20:23:20'),
(292, 'products/84/n9r6l2kxpplgsvo051zn', 84, 3, 1, '2025-08-23 20:25:06', '2025-08-23 20:25:06'),
(293, 'products/84/zotenfmz0iflddumn7dk', 84, 3, 1, '2025-08-23 20:25:07', '2025-08-23 20:25:07'),
(294, 'products/84/cebt0v47ogv3ht71ln9v', 84, 8, 1, '2025-08-23 20:25:09', '2025-08-23 20:25:09'),
(295, 'products/84/yfa2b6sy3xjaokgh6f4l', 84, 8, 1, '2025-08-23 20:25:11', '2025-08-23 20:25:11'),
(296, 'products/85/lv4uvfxpv90lmrufpvv0', 85, 7, 1, '2025-08-23 20:25:51', '2025-08-23 20:25:51'),
(297, 'products/85/d3rcdptvpjbmgcuprdqo', 85, 7, 1, '2025-08-23 20:25:53', '2025-08-23 20:25:53'),
(298, 'products/86/j0crtfr6et9gwfm8bdwq', 86, 7, 1, '2025-08-23 20:27:16', '2025-08-23 20:27:16'),
(299, 'products/86/ikvu0vta708wwtiy4dlc', 86, 7, 1, '2025-08-23 20:27:17', '2025-08-23 20:27:17'),
(300, 'products/86/wl0w3xecdonxl6iekmjr', 86, 8, 1, '2025-08-23 20:27:20', '2025-08-23 20:27:20'),
(301, 'products/86/ibhktui4rzsmkfbdy41u', 86, 8, 1, '2025-08-23 20:27:22', '2025-08-23 20:27:22'),
(302, 'products/87/m9l7lzri0nfyvcyroo99', 87, 6, 1, '2025-08-23 20:28:30', '2025-08-23 20:28:30'),
(303, 'products/87/a7msnsmuh71olecf8y8k', 87, 6, 1, '2025-08-23 20:28:32', '2025-08-23 20:28:32'),
(304, 'products/87/q0ge5ccgkkjxjb7qytmd', 87, 8, 1, '2025-08-23 20:28:34', '2025-08-23 20:28:34'),
(305, 'products/87/xrxzpmtgin5ap13ek7x7', 87, 8, 1, '2025-08-23 20:28:35', '2025-08-23 20:28:35'),
(306, 'products/88/hi3xjn4b3vz4b073njiq', 88, 7, 1, '2025-08-23 20:30:10', '2025-08-23 20:30:10'),
(307, 'products/88/qaqhq6ef6ttuojqqm8m7', 88, 7, 1, '2025-08-23 20:30:12', '2025-08-23 20:30:12'),
(308, 'products/89/w5032a5yv40chx9gluk8', 89, 3, 1, '2025-08-23 20:33:04', '2025-08-23 20:33:04'),
(309, 'products/89/bgh4lxldyodnlqgq7owh', 89, 3, 1, '2025-08-23 20:33:05', '2025-08-23 20:33:05'),
(310, 'products/89/g0kkq7aho0dldapvufzx', 89, 9, 1, '2025-08-23 20:33:08', '2025-08-23 20:33:08'),
(311, 'products/89/rsho7vcwr3xgcjjrsnag', 89, 9, 1, '2025-08-23 20:33:09', '2025-08-23 20:33:09'),
(312, 'products/90/w8uxaa3dxyigb8rknnsc', 90, 6, 1, '2025-08-23 20:34:56', '2025-08-23 20:34:56'),
(313, 'products/90/jawxb9dktnjhytd1ddsu', 90, 6, 1, '2025-08-23 20:34:58', '2025-08-23 20:34:58'),
(314, 'products/91/z57oxgmpfwt17slr6suc', 91, 1, 1, '2025-08-23 20:39:39', '2025-08-23 20:39:39'),
(315, 'products/91/lsy0mncz8v3llha9u4h8', 91, 1, 1, '2025-08-23 20:39:40', '2025-08-23 20:39:40'),
(316, 'products/91/invmiriwpiehqle6gtr8', 91, 2, 1, '2025-08-23 20:39:42', '2025-08-23 20:39:42'),
(317, 'products/91/vemgdxejypcpw4vlpzt6', 91, 2, 1, '2025-08-23 20:39:44', '2025-08-23 20:39:44'),
(318, 'products/92/iabk419xsygcsikh2bia', 92, 1, 1, '2025-08-23 20:40:37', '2025-08-23 20:40:37'),
(319, 'products/92/zgqjrpuqoumko4g1iauh', 92, 1, 1, '2025-08-23 20:40:39', '2025-08-23 20:40:39'),
(320, 'products/93/hp2vh6ymsiix5y6ncwva', 93, 1, 1, '2025-08-23 20:41:54', '2025-08-23 20:41:54'),
(321, 'products/93/xrlkelgorxkb7abemzy6', 93, 1, 1, '2025-08-23 20:41:55', '2025-08-23 20:41:55'),
(322, 'products/93/qfjvgrvkdqqhytcmi7jy', 93, 11, 1, '2025-08-23 20:41:57', '2025-08-23 20:41:57'),
(323, 'products/93/xhv7w7ip7faqazyv7mrc', 93, 11, 1, '2025-08-23 20:41:58', '2025-08-23 20:41:58'),
(324, 'products/94/yle3x5svmvfn3pbzcqsu', 94, 3, 1, '2025-08-23 20:42:41', '2025-08-23 20:42:41'),
(325, 'products/94/swtznpgfs6ai0m4auxkk', 94, 3, 1, '2025-08-23 20:42:43', '2025-08-23 20:42:43'),
(326, 'products/95/hybcxkcpuynun3tsc926', 95, 1, 1, '2025-08-23 20:44:04', '2025-08-23 20:44:04'),
(327, 'products/95/sji1gpnb5pihralnjzls', 95, 1, 1, '2025-08-23 20:44:06', '2025-08-23 20:44:06'),
(328, 'products/95/uahwtj4q4vqsk5ut82yn', 95, 6, 1, '2025-08-23 20:44:08', '2025-08-23 20:44:08'),
(329, 'products/95/lkgod5tan2pieojowegg', 95, 6, 1, '2025-08-23 20:44:09', '2025-08-23 20:44:09'),
(330, 'products/96/mrmk4qbvcabjmvfmw40d', 96, 1, 1, '2025-08-23 20:45:34', '2025-08-23 20:45:34'),
(331, 'products/96/qfmefqzazjnrjiibrow9', 96, 1, 1, '2025-08-23 20:45:36', '2025-08-23 20:45:36'),
(332, 'products/96/b9cxqv5ipc1ia3vx8hqg', 96, 8, 1, '2025-08-23 20:45:38', '2025-08-23 20:45:38'),
(333, 'products/96/wfocmzr1pu5oluar19jh', 96, 8, 1, '2025-08-23 20:45:40', '2025-08-23 20:45:40'),
(334, 'products/97/ornajhilhfsizbk0x3oy', 97, 1, 1, '2025-08-23 20:47:06', '2025-08-23 20:47:06'),
(335, 'products/97/eeauxxhg88k2mnug13rj', 97, 2, 1, '2025-08-23 20:47:08', '2025-08-23 20:47:08'),
(336, 'products/97/rb7nl9jkytvn0e5pjiw8', 97, 2, 1, '2025-08-23 20:47:10', '2025-08-23 20:47:10'),
(337, 'products/98/ww9lfpdqmzylmb0s7ykf', 98, 1, 1, '2025-08-23 20:48:13', '2025-08-23 20:48:13'),
(338, 'products/98/pfcuf4rkudiw06o4zhxb', 98, 1, 1, '2025-08-23 20:48:15', '2025-08-23 20:48:15'),
(339, 'products/98/cd66s4anhopt17ys2cpq', 98, 4, 1, '2025-08-23 20:48:17', '2025-08-23 20:48:17'),
(340, 'products/98/qgzfymwjrqvmaqgtftax', 98, 4, 1, '2025-08-23 20:48:18', '2025-08-23 20:48:18'),
(341, 'products/99/i5mhdhkn0wtj7vuyyqh6', 99, 1, 1, '2025-08-23 20:49:28', '2025-08-23 20:49:28'),
(342, 'products/99/dgh4upy7ubco1gxhegzs', 99, 1, 1, '2025-08-23 20:49:30', '2025-08-23 20:49:30'),
(343, 'products/99/cm0sdoom2mc1fukotkis', 99, 11, 1, '2025-08-23 20:49:32', '2025-08-23 20:49:32'),
(344, 'products/99/ug5hpckax1l0eubosxqx', 99, 11, 1, '2025-08-23 20:49:34', '2025-08-23 20:49:34'),
(345, 'products/100/req9hho3qz9zbapdgacz', 100, 1, 1, '2025-08-23 20:50:37', '2025-08-23 20:50:37'),
(346, 'products/100/h4ieqsfbdydydv0si0jl', 100, 1, 1, '2025-08-23 20:50:39', '2025-08-23 20:50:39'),
(347, 'products/100/uk4h8iif9wduda21eaoc', 100, 9, 1, '2025-08-23 20:50:41', '2025-08-23 20:50:41'),
(348, 'products/100/jpkglncxpwayh8rg8bfe', 100, 9, 1, '2025-08-23 20:50:43', '2025-08-23 20:50:43'),
(349, 'products/101/b3hapqxmb2pzfg2gze2d', 101, 11, 1, '2025-08-23 20:51:41', '2025-08-23 20:51:41'),
(350, 'products/101/yb09kwwh5mg7sttifknv', 101, 11, 1, '2025-08-23 20:51:42', '2025-08-23 20:51:42'),
(351, 'products/102/ux9mwdmmugclcbux9ovg', 102, 1, 1, '2025-08-23 20:53:39', '2025-08-23 20:53:39'),
(352, 'products/102/v4zry5tcrcgd5raymtn5', 102, 1, 1, '2025-08-23 20:53:41', '2025-08-23 20:53:41'),
(353, 'products/102/voq13xp2fdferusmjw8u', 102, 8, 1, '2025-08-23 20:53:43', '2025-08-23 20:53:43'),
(354, 'products/102/tcht3hkzsr0y7ar8quzv', 102, 8, 1, '2025-08-23 20:53:45', '2025-08-23 20:53:45'),
(355, 'products/103/kbtgxz1irhnyu9mheoid', 103, 7, 1, '2025-08-23 20:55:21', '2025-08-23 20:55:21'),
(356, 'products/103/heuz9bmrn4wgxcuwu82o', 103, 7, 1, '2025-08-23 20:55:23', '2025-08-23 20:55:23'),
(357, 'products/104/gxqrq66h9lfnwngelysq', 104, 3, 1, '2025-08-23 20:57:23', '2025-08-23 20:57:23'),
(358, 'products/104/gyczq2dkjtqmiofn1pnb', 104, 3, 1, '2025-08-23 20:57:25', '2025-08-23 20:57:25'),
(359, 'products/104/yalugoi8ekg2exkwx21b', 104, 11, 1, '2025-08-23 20:57:27', '2025-08-23 20:57:27'),
(360, 'products/104/y0nhzumhblboqzqmxvxd', 104, 11, 1, '2025-08-23 20:57:28', '2025-08-23 20:57:28'),
(361, 'products/105/cvenlqcmpjoqtqgwaxq7', 105, 3, 1, '2025-08-23 20:58:58', '2025-08-23 20:58:58'),
(362, 'products/105/f1eyikgkkvratyfnbiyh', 105, 3, 1, '2025-08-23 20:59:00', '2025-08-23 20:59:00'),
(363, 'products/105/pbcxjbzxxpmig1astmkx', 105, 6, 1, '2025-08-23 20:59:02', '2025-08-23 20:59:02'),
(364, 'products/105/xlov5hrwzyblempgpucd', 105, 6, 1, '2025-08-23 20:59:04', '2025-08-23 20:59:04'),
(365, 'products/106/nyudjpbwrdxn0sz5npwe', 106, 9, 1, '2025-08-23 21:00:19', '2025-08-23 21:00:19'),
(366, 'products/106/tifbdwr1gklcy0jc7ohx', 106, 9, 1, '2025-08-23 21:00:21', '2025-08-23 21:00:21'),
(367, 'products/107/wginucg6pyig7wf4q6tk', 107, 7, 1, '2025-08-23 21:01:16', '2025-08-23 21:01:16'),
(368, 'products/107/bn9d7kwo482ikoa4qcgu', 107, 7, 1, '2025-08-23 21:01:18', '2025-08-23 21:01:18'),
(369, 'products/108/xrc36sgzt3ur9xs0ct7m', 108, 7, 1, '2025-08-23 21:02:16', '2025-08-23 21:02:16'),
(370, 'products/108/rpffyfqbma0ogzxl3nsz', 108, 7, 1, '2025-08-23 21:02:18', '2025-08-23 21:02:18'),
(371, 'products/109/cn970urvktrxs6mp90c4', 109, 1, 1, '2025-08-23 21:04:24', '2025-08-23 21:04:24'),
(372, 'products/109/f4mmjctastbtngfainvp', 109, 1, 1, '2025-08-23 21:04:27', '2025-08-23 21:04:27'),
(373, 'products/109/dv8fziw8lg3b5lll4ffr', 109, 3, 1, '2025-08-23 21:04:30', '2025-08-23 21:04:30'),
(374, 'products/109/bxabwtexdabqzx6pmo7g', 109, 3, 1, '2025-08-23 21:04:33', '2025-08-23 21:04:33'),
(375, 'products/110/n7itczjjuowvp7laar5h', 110, 3, 1, '2025-08-23 21:05:34', '2025-08-23 21:05:34'),
(376, 'products/110/dfptrgie9007em3qcs6q', 110, 3, 1, '2025-08-23 21:05:36', '2025-08-23 21:05:36'),
(377, 'products/111/o2kqyhfyacd7d94xgf1d', 111, 1, 1, '2025-08-23 21:06:50', '2025-08-23 21:06:50'),
(378, 'products/111/x6vewfeopwqi1p0feinn', 111, 1, 1, '2025-08-23 21:06:51', '2025-08-23 21:06:51'),
(379, 'products/111/bonky2z2ugrq50cltvey', 111, 3, 1, '2025-08-23 21:06:54', '2025-08-23 21:06:54'),
(380, 'products/112/zzblf7lvvej2quav2g97', 112, 1, 1, '2025-08-23 21:09:10', '2025-08-23 21:09:10'),
(381, 'products/112/x8cdbsuro8om6z9abdlv', 112, 1, 1, '2025-08-23 21:09:13', '2025-08-23 21:09:13'),
(382, 'products/112/qya0qdeadd1oz0f2zhpf', 112, 6, 1, '2025-08-23 21:09:15', '2025-08-23 21:09:15'),
(383, 'products/112/jdygsslu0wfotrdnbntu', 112, 6, 1, '2025-08-23 21:09:17', '2025-08-23 21:09:17'),
(384, 'products/113/wmojwmqyzxafnjwgdpzo', 113, 9, 1, '2025-08-23 21:11:09', '2025-08-23 21:11:09'),
(385, 'products/113/ji1pjld5gbvh40ob11zr', 113, 9, 1, '2025-08-23 21:11:11', '2025-08-23 21:11:11'),
(386, 'products/114/xeg5ewovhqxnzbjcofpp', 114, 9, 1, '2025-08-23 21:12:12', '2025-08-23 21:12:12'),
(387, 'products/114/z96ai6av089p7inf4n2c', 114, 9, 1, '2025-08-23 21:12:14', '2025-08-23 21:12:14'),
(388, 'products/115/uaehuvipyqriocsqjupe', 115, 9, 1, '2025-08-23 21:13:04', '2025-08-23 21:13:04'),
(389, 'products/115/wf06rmajduandimhn12x', 115, 9, 1, '2025-08-23 21:13:08', '2025-08-23 21:13:08'),
(390, 'products/116/feyx81l5k4onhgnfdrlx', 116, 1, 1, '2025-08-23 21:14:37', '2025-08-23 21:14:37'),
(391, 'products/116/t8jmxt7ujaor6sdhvvwb', 116, 1, 1, '2025-08-23 21:14:40', '2025-08-23 21:14:40'),
(392, 'products/116/qmwwcqk3uikwalqio4vf', 116, 11, 1, '2025-08-23 21:14:42', '2025-08-23 21:14:42'),
(393, 'products/116/fljjl9wuy1xmv28rac2h', 116, 11, 1, '2025-08-23 21:14:44', '2025-08-23 21:14:44'),
(394, 'products/117/uhi8c1tqgyepnglviqii', 117, 1, 1, '2025-08-23 21:15:43', '2025-08-23 21:15:43'),
(395, 'products/117/uflbwciftlqve0glhq2l', 117, 1, 1, '2025-08-23 21:15:45', '2025-08-23 21:15:45'),
(396, 'products/118/n5whltb0punbgvtp2e91', 118, 3, 1, '2025-08-23 21:16:53', '2025-08-23 21:16:53'),
(397, 'products/118/deb0jyfbc7ibri99dzxk', 118, 3, 1, '2025-08-23 21:16:56', '2025-08-23 21:16:56'),
(398, 'products/119/zvyuwewu6a8j0b1j47cp', 119, 9, 1, '2025-08-23 21:17:36', '2025-08-23 21:17:36'),
(399, 'products/119/ocxlvikrdjexijkqjksb', 119, 9, 1, '2025-08-23 21:17:40', '2025-08-23 21:17:40'),
(400, 'products/120/opqqcpa445zif56xzwjw', 120, 11, 1, '2025-08-23 21:18:22', '2025-08-23 21:18:22'),
(401, 'products/120/mcevozngb4nandvxvr91', 120, 11, 1, '2025-08-23 21:18:25', '2025-08-23 21:18:25'),
(402, 'products/121/x5mtebxc15ckglit6fao', 121, 1, 1, '2025-08-23 21:18:59', '2025-08-23 21:18:59'),
(403, 'products/121/fdyhue0rtirmvtzptygz', 121, 1, 1, '2025-08-23 21:19:02', '2025-08-23 21:19:02'),
(404, 'products/122/zkzvgcpckzaot80z3tq4', 122, 1, 1, '2025-08-23 21:20:08', '2025-08-23 21:20:08'),
(405, 'products/122/d335gpajavgusb6dzuew', 122, 8, 1, '2025-08-23 21:20:12', '2025-08-23 21:20:12'),
(406, 'products/122/an0mz1me8ibkjqehfh5q', 122, 8, 1, '2025-08-23 21:20:14', '2025-08-23 21:20:14'),
(407, 'products/123/sts5xjzmstgguofvqkua', 123, 8, 1, '2025-08-23 21:23:03', '2025-08-23 21:23:03'),
(408, 'products/123/fp18biojilvldwb7i76g', 123, 8, 1, '2025-08-23 21:23:05', '2025-08-23 21:23:05'),
(409, 'products/123/qxhobswbwq3hpvtbgg9p', 123, 11, 1, '2025-08-23 21:23:07', '2025-08-23 21:23:07'),
(410, 'products/123/cvmnpy45tydvwppvlufn', 123, 11, 1, '2025-08-23 21:23:12', '2025-08-23 21:23:12'),
(411, 'products/124/hhjqkzypqmv9s6hkoyea', 124, 7, 1, '2025-08-23 21:32:02', '2025-08-23 21:32:02'),
(412, 'products/124/uuzkihtjwdigr51udy4r', 124, 7, 1, '2025-08-23 21:32:04', '2025-08-23 21:32:04'),
(413, 'products/125/yboxv9tyht8mhpwemhag', 125, 1, 1, '2025-08-23 21:33:26', '2025-08-23 21:33:26'),
(414, 'products/125/g8xiu9p8k5rtjzuxxywl', 125, 3, 1, '2025-08-23 21:33:27', '2025-08-23 21:33:27'),
(415, 'products/125/nfjuljb0s9qr9qibdtzk', 125, 3, 1, '2025-08-23 21:33:29', '2025-08-23 21:33:29'),
(416, 'products/126/hdzzlzbmfkqukmlphqwp', 126, 3, 1, '2025-08-23 21:34:47', '2025-08-23 21:34:47'),
(417, 'products/126/zxrcpvhtqkdamufhblmg', 126, 3, 1, '2025-08-23 21:34:49', '2025-08-23 21:34:49'),
(418, 'products/126/sglnv1pkun97pg5jhqke', 126, 11, 1, '2025-08-23 21:34:51', '2025-08-23 21:34:51'),
(419, 'products/126/lgnujfuy7uu8rqg3b9a3', 126, 11, 1, '2025-08-23 21:34:52', '2025-08-23 21:34:52'),
(420, 'products/127/xwydczlanftvbaira5uy', 127, 7, 1, '2025-08-23 21:35:56', '2025-08-23 21:35:56'),
(421, 'products/127/dlnxoeu6enyxr3nitzio', 127, 7, 1, '2025-08-23 21:35:58', '2025-08-23 21:35:58'),
(422, 'products/128/qlgze0bojvlfba6ps89b', 128, 7, 1, '2025-08-23 21:37:19', '2025-08-23 21:37:19'),
(423, 'products/128/ub0cyrjjdqqruae6lpks', 128, 7, 1, '2025-08-23 21:37:21', '2025-08-23 21:37:21'),
(424, 'products/129/spxq0rp7bc5lywk1uo43', 129, 7, 1, '2025-08-23 21:41:55', '2025-08-23 21:41:55'),
(425, 'products/129/lxyml0ac0alkp2rv2u3v', 129, 7, 1, '2025-08-23 21:41:58', '2025-08-23 21:41:58'),
(426, 'products/130/pbegdjlqz8addngziplu', 130, 3, 1, '2025-08-23 21:43:30', '2025-08-23 21:43:30'),
(427, 'products/130/zhtc1tllchqwsngtuuad', 130, 3, 1, '2025-08-23 21:43:32', '2025-08-23 21:43:32'),
(428, 'products/130/lshbwczissqh7tn8hacy', 130, 8, 1, '2025-08-23 21:43:34', '2025-08-23 21:43:34'),
(429, 'products/130/pzd1wjugp4acqgo5ztpw', 130, 8, 1, '2025-08-23 21:43:37', '2025-08-23 21:43:37'),
(430, 'products/131/k9hk3ogkjrxv7fkqbngx', 131, 7, 1, '2025-08-23 21:44:48', '2025-08-23 21:44:48'),
(431, 'products/131/yvdgvbigjiwrcr8ldiu7', 131, 7, 1, '2025-08-23 21:44:50', '2025-08-23 21:44:50'),
(432, 'products/132/fmnmmcmdsu8nf79mjy5v', 132, 7, 1, '2025-08-23 21:45:53', '2025-08-23 21:45:53'),
(433, 'products/132/vt7pqhxlernxtcnbqr9c', 132, 7, 1, '2025-08-23 21:45:55', '2025-08-23 21:45:55'),
(434, 'products/133/w9bwe2qeasymvt4jq20v', 133, 6, 1, '2025-08-23 21:52:03', '2025-08-23 21:52:03'),
(435, 'products/133/p8kezsrwjimm6fflzgtm', 133, 6, 1, '2025-08-23 21:52:05', '2025-08-23 21:52:05'),
(436, 'products/134/ergtzgsgqdnl1mzhoxgo', 134, 1, 1, '2025-08-23 21:54:12', '2025-08-23 21:54:12'),
(437, 'products/134/ddlgr9dw0ifxikllwftg', 134, 1, 1, '2025-08-23 21:54:13', '2025-08-23 21:54:13'),
(438, 'products/134/i6bhwc6su4mn0oygwjam', 134, 11, 1, '2025-08-23 21:54:15', '2025-08-23 21:54:15'),
(439, 'products/134/evjql3rqvdo9tfndrzom', 134, 11, 1, '2025-08-23 21:54:17', '2025-08-23 21:54:17'),
(440, 'products/135/jzph7nnjctoswafhtqpt', 135, 1, 1, '2025-08-23 21:55:23', '2025-08-23 21:55:23'),
(441, 'products/135/ghipaafms1tjpzttftfw', 135, 1, 1, '2025-08-23 21:55:25', '2025-08-23 21:55:25'),
(442, 'products/135/hsqxilvqkxbutjipnnso', 135, 2, 1, '2025-08-23 21:55:27', '2025-08-23 21:55:27'),
(443, 'products/135/oawhht2lvtugvn99erqt', 135, 2, 1, '2025-08-23 21:55:29', '2025-08-23 21:55:29');

-- --------------------------------------------------------

--
-- Table structure for table `product_items`
--

CREATE TABLE `product_items` (
  `id` bigint UNSIGNED NOT NULL,
  `product_id` bigint UNSIGNED NOT NULL,
  `price` int UNSIGNED NOT NULL,
  `sale_price` int UNSIGNED DEFAULT NULL,
  `sale_percent` int UNSIGNED DEFAULT '0',
  `stock` int UNSIGNED NOT NULL DEFAULT '0',
  `sku` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint NOT NULL DEFAULT '1',
  `color_id` bigint UNSIGNED NOT NULL,
  `size_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_items`
--

INSERT INTO `product_items` (`id`, `product_id`, `price`, `sale_price`, `sale_percent`, `stock`, `sku`, `is_active`, `color_id`, `size_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 350000, 300000, 14, 9, '25AN1M822_C2S1', 1, 2, 1, '2025-08-23 09:37:33', '2025-08-25 10:22:21', NULL),
(2, 1, 350000, 300000, 14, 10, '25AN1M729_C2S2', 1, 2, 2, '2025-08-23 09:37:33', '2025-08-23 09:37:33', NULL),
(3, 1, 350000, 300000, 14, 10, '25AN1M931_C2S3', 1, 2, 3, '2025-08-23 09:37:33', '2025-08-23 09:37:33', NULL),
(4, 1, 350000, 300000, 14, 9, '25AN1M717_C1S1', 1, 1, 1, '2025-08-23 09:37:33', '2025-08-25 10:22:21', NULL),
(5, 1, 350000, 300000, 14, 10, '25AN1M614_C1S2', 1, 1, 2, '2025-08-23 09:37:33', '2025-08-23 09:37:33', NULL),
(6, 1, 350000, 300000, 14, 10, '25AN1M927_C1S3', 1, 1, 3, '2025-08-23 09:37:33', '2025-08-23 09:37:33', NULL),
(7, 2, 450000, 400000, 11, 10, '25AP2W457_C2S1', 1, 2, 1, '2025-08-23 10:28:25', '2025-08-23 10:28:25', NULL),
(8, 2, 450000, 400000, 11, 10, '25AP2W312_C2S2', 1, 2, 2, '2025-08-23 10:28:25', '2025-08-23 10:28:25', NULL),
(9, 2, 450000, 400000, 11, 10, '25AP2W847_C2S3', 1, 2, 3, '2025-08-23 10:28:25', '2025-08-23 10:28:25', NULL),
(10, 2, 450000, 400000, 11, 10, '25AP2W247_C5S1', 1, 5, 1, '2025-08-23 10:28:25', '2025-08-23 10:28:25', NULL),
(11, 2, 450000, 400000, 11, 10, '25AP2W294_C5S2', 1, 5, 2, '2025-08-23 10:28:25', '2025-08-23 10:28:25', NULL),
(12, 2, 450000, 400000, 11, 10, '25AP2W716_C5S3', 1, 5, 3, '2025-08-23 10:28:25', '2025-08-23 10:28:25', NULL),
(13, 3, 250000, 200000, 20, 40, '25AP3W874_C1S2', 1, 1, 2, '2025-08-23 11:11:48', '2025-08-25 11:07:46', NULL),
(14, 3, 250000, 200000, 20, 49, '25AP3W959_C1S3', 1, 1, 3, '2025-08-23 11:11:49', '2025-08-25 11:07:46', NULL),
(15, 3, 250000, 200000, 20, 50, '25AP3W246_C1S4', 1, 1, 4, '2025-08-23 11:11:49', '2025-08-23 11:11:49', NULL),
(16, 3, 250000, 200000, 20, 50, '25AP3W587_C3S2', 1, 3, 2, '2025-08-23 11:11:49', '2025-08-23 11:11:49', NULL),
(17, 3, 250000, 200000, 20, 50, '25AP3W560_C3S3', 1, 3, 3, '2025-08-23 11:11:49', '2025-08-23 11:11:49', NULL),
(18, 3, 250000, 200000, 20, 50, '25AP3W167_C3S4', 1, 3, 4, '2025-08-23 11:11:49', '2025-08-23 11:11:49', NULL),
(19, 4, 300000, 300000, 0, 6, '25AP4W542_C3S2', 1, 3, 2, '2025-08-23 11:14:04', '2025-08-24 00:35:14', NULL),
(20, 4, 300000, 300000, 0, 10, '25AP4W592_C3S3', 1, 3, 3, '2025-08-23 11:14:04', '2025-08-23 11:36:07', NULL),
(21, 4, 300000, 300000, 0, 10, '25AP4W927_C3S4', 1, 3, 4, '2025-08-23 11:14:04', '2025-08-23 11:36:07', NULL),
(22, 4, 300000, 300000, 0, 10, '25AP4W754_C1S2', 1, 1, 2, '2025-08-23 11:14:04', '2025-08-23 11:36:07', NULL),
(23, 4, 300000, 300000, 0, 10, '25AP4W839_C1S3', 1, 1, 3, '2025-08-23 11:14:04', '2025-08-23 11:36:07', NULL),
(24, 4, 300000, 300000, 0, 10, '25AP4W866_C1S4', 1, 1, 4, '2025-08-23 11:14:04', '2025-08-23 11:36:07', NULL),
(25, 5, 300000, 220000, 27, 30, '25AP5W847_C7S2', 1, 7, 2, '2025-08-23 11:16:37', '2025-08-23 11:16:37', NULL),
(26, 5, 300000, 220000, 27, 30, '25AP5W279_C7S3', 1, 7, 3, '2025-08-23 11:16:37', '2025-08-23 11:16:37', NULL),
(27, 5, 300000, 220000, 27, 30, '25AP5W748_C7S4', 1, 7, 4, '2025-08-23 11:16:37', '2025-08-23 11:16:37', NULL),
(28, 5, 300000, 220000, 27, 30, '25AP5W124_C3S2', 1, 3, 2, '2025-08-23 11:16:37', '2025-08-23 11:16:37', NULL),
(29, 5, 300000, 220000, 27, 30, '25AP5W419_C3S3', 1, 3, 3, '2025-08-23 11:16:37', '2025-08-23 11:16:37', NULL),
(30, 5, 300000, 220000, 27, 30, '25AP5W815_C3S4', 1, 3, 4, '2025-08-23 11:16:37', '2025-08-23 11:16:37', NULL),
(31, 6, 450000, 400000, 11, 50, '25AP6W308_C9S2', 1, 9, 2, '2025-08-23 11:21:47', '2025-08-23 11:21:47', NULL),
(32, 6, 450000, 400000, 11, 50, '25AP6W967_C9S3', 1, 9, 3, '2025-08-23 11:21:47', '2025-08-23 11:21:47', NULL),
(33, 6, 450000, 400000, 11, 50, '25AP6W851_C9S4', 1, 9, 4, '2025-08-23 11:21:47', '2025-08-23 11:21:47', NULL),
(34, 6, 450000, 400000, 11, 50, '25AP6W981_C7S2', 1, 7, 2, '2025-08-23 11:21:47', '2025-08-23 11:21:47', NULL),
(35, 6, 450000, 400000, 11, 50, '25AP6W364_C7S3', 1, 7, 3, '2025-08-23 11:21:47', '2025-08-23 11:21:47', NULL),
(36, 6, 450000, 400000, 11, 50, '25AP6W990_C7S4', 1, 7, 4, '2025-08-23 11:21:47', '2025-08-23 11:21:47', NULL),
(37, 7, 500000, 350000, 30, 10, '25AP7W398_C1S3', 1, 1, 3, '2025-08-23 11:24:44', '2025-08-23 11:24:44', NULL),
(38, 7, 500000, 350000, 30, 10, '25AP7W238_C1S4', 1, 1, 4, '2025-08-23 11:24:44', '2025-08-23 11:24:44', NULL),
(39, 7, 500000, 350000, 30, 10, '25AP7W305_C1S5', 1, 1, 5, '2025-08-23 11:24:44', '2025-08-23 11:24:44', NULL),
(40, 7, 500000, 350000, 30, 10, '25AP7W503_C3S3', 1, 3, 3, '2025-08-23 11:24:44', '2025-08-23 11:24:44', NULL),
(41, 7, 500000, 350000, 30, 10, '25AP7W219_C3S4', 1, 3, 4, '2025-08-23 11:24:44', '2025-08-23 11:24:44', NULL),
(42, 7, 500000, 350000, 30, 10, '25AP7W528_C3S5', 1, 3, 5, '2025-08-23 11:24:44', '2025-08-23 11:24:44', NULL),
(43, 8, 250000, 200000, 20, 3, '25AP8W752_C6S3', 1, 6, 3, '2025-08-23 11:26:45', '2025-08-25 12:00:13', NULL),
(44, 8, 250000, 200000, 20, 10, '25AP8W607_C6S4', 1, 6, 4, '2025-08-23 11:26:45', '2025-08-23 11:26:45', NULL),
(45, 8, 250000, 200000, 20, 10, '25AP8W624_C6S5', 1, 6, 5, '2025-08-23 11:26:45', '2025-08-23 11:26:45', NULL),
(46, 8, 250000, 200000, 20, 10, '25AP8W914_C9S3', 1, 9, 3, '2025-08-23 11:26:45', '2025-08-23 11:26:45', NULL),
(47, 8, 250000, 200000, 20, 10, '25AP8W619_C9S4', 1, 9, 4, '2025-08-23 11:26:45', '2025-08-23 11:26:45', NULL),
(48, 8, 250000, 200000, 20, 10, '25AP8W803_C9S5', 1, 9, 5, '2025-08-23 11:26:45', '2025-08-23 11:26:45', NULL),
(49, 9, 300000, 210000, 30, 50, '25AP9W654_C7S3', 1, 7, 3, '2025-08-23 11:34:11', '2025-08-23 11:34:11', NULL),
(50, 9, 300000, 210000, 30, 50, '25AP9W429_C7S4', 1, 7, 4, '2025-08-23 11:34:11', '2025-08-23 11:34:11', NULL),
(51, 9, 300000, 210000, 30, 50, '25AP9W478_C7S5', 1, 7, 5, '2025-08-23 11:34:11', '2025-08-23 11:34:11', NULL),
(52, 9, 300000, 210000, 30, 50, '25AP9W676_C3S3', 1, 3, 3, '2025-08-23 11:34:11', '2025-08-23 11:34:11', NULL),
(53, 9, 300000, 210000, 30, 50, '25AP9W294_C3S4', 1, 3, 4, '2025-08-23 11:34:11', '2025-08-23 11:34:11', NULL),
(54, 9, 300000, 210000, 30, 50, '25AP9W256_C3S5', 1, 3, 5, '2025-08-23 11:34:11', '2025-08-23 11:34:11', NULL),
(55, 10, 250000, 120000, 52, 10, '25AP10W786_C3S3', 1, 3, 3, '2025-08-23 11:38:11', '2025-08-23 11:38:11', NULL),
(56, 10, 250000, 120000, 52, 10, '25AP10W589_C3S4', 1, 3, 4, '2025-08-23 11:38:11', '2025-08-23 11:38:11', NULL),
(57, 10, 250000, 120000, 52, 10, '25AP10W665_C3S5', 1, 3, 5, '2025-08-23 11:38:11', '2025-08-23 11:38:11', NULL),
(58, 10, 250000, 120000, 52, 10, '25AP10W429_C9S3', 1, 9, 3, '2025-08-23 11:38:11', '2025-08-23 11:38:11', NULL),
(59, 10, 250000, 120000, 52, 10, '25AP10W798_C9S4', 1, 9, 4, '2025-08-23 11:38:11', '2025-08-23 11:38:11', NULL),
(60, 10, 250000, 120000, 52, 10, '25AP10W827_C9S5', 1, 9, 5, '2025-08-23 11:38:11', '2025-08-23 11:38:11', NULL),
(61, 11, 350000, 240000, 31, 47, '25AT11W824_C6S3', 1, 6, 3, '2025-08-23 11:42:32', '2025-08-24 01:25:03', NULL),
(62, 11, 350000, 240000, 31, 50, '25AT11W630_C6S2', 1, 6, 2, '2025-08-23 11:42:32', '2025-08-23 11:42:32', NULL),
(63, 11, 350000, 240000, 31, 50, '25AT11W344_C6S4', 1, 6, 4, '2025-08-23 11:42:32', '2025-08-23 11:42:32', NULL),
(64, 11, 350000, 240000, 31, 50, '25AT11W123_C11S3', 1, 11, 3, '2025-08-23 11:42:32', '2025-08-23 11:42:32', NULL),
(65, 11, 350000, 240000, 31, 50, '25AT11W935_C11S2', 1, 11, 2, '2025-08-23 11:42:32', '2025-08-23 11:42:32', NULL),
(66, 11, 350000, 240000, 31, 50, '25AT11W960_C11S4', 1, 11, 4, '2025-08-23 11:42:32', '2025-08-23 11:42:32', NULL),
(67, 12, 250000, 220000, 12, 3, '25AT12W187_C1S3', 1, 1, 3, '2025-08-23 11:43:45', '2025-08-25 11:15:16', NULL),
(68, 12, 250000, 220000, 12, 8, '25AT12W982_C1S4', 1, 1, 4, '2025-08-23 11:43:45', '2025-08-25 07:21:16', NULL),
(69, 12, 250000, 220000, 12, 10, '25AT12W515_C1S5', 1, 1, 5, '2025-08-23 11:43:45', '2025-08-23 11:43:45', NULL),
(70, 12, 250000, 220000, 12, 10, '25AT12W733_C3S3', 1, 3, 3, '2025-08-23 11:43:45', '2025-08-25 10:26:19', NULL),
(71, 12, 250000, 220000, 12, 10, '25AT12W924_C3S4', 1, 3, 4, '2025-08-23 11:43:45', '2025-08-23 11:43:45', NULL),
(72, 12, 250000, 220000, 12, 10, '25AT12W361_C3S5', 1, 3, 5, '2025-08-23 11:43:45', '2025-08-23 11:43:45', NULL),
(73, 13, 500000, 450000, 10, 50, '25AT13W467_C7S3', 1, 7, 3, '2025-08-23 11:45:16', '2025-08-23 11:45:16', NULL),
(74, 13, 500000, 450000, 10, 50, '25AT13W132_C7S4', 1, 7, 4, '2025-08-23 11:45:16', '2025-08-23 11:45:16', NULL),
(75, 13, 500000, 450000, 10, 50, '25AT13W760_C7S5', 1, 7, 5, '2025-08-23 11:45:16', '2025-08-23 11:45:16', NULL),
(76, 13, 500000, 450000, 10, 50, '25AT13W311_C3S3', 1, 3, 3, '2025-08-23 11:45:16', '2025-08-23 11:45:16', NULL),
(77, 13, 500000, 450000, 10, 50, '25AT13W216_C3S4', 1, 3, 4, '2025-08-23 11:45:16', '2025-08-23 11:45:16', NULL),
(78, 13, 500000, 450000, 10, 50, '25AT13W384_C3S5', 1, 3, 5, '2025-08-23 11:45:16', '2025-08-23 11:45:16', NULL),
(79, 14, 250000, 250000, 0, 8, '25AT14W769_C9S3', 1, 9, 3, '2025-08-23 11:46:58', '2025-08-24 01:20:13', NULL),
(80, 14, 250000, 250000, 0, 10, '25AT14W243_C9S4', 1, 9, 4, '2025-08-23 11:46:58', '2025-08-23 11:46:58', NULL),
(81, 14, 250000, 250000, 0, 10, '25AT14W874_C9S5', 1, 9, 5, '2025-08-23 11:46:58', '2025-08-23 11:46:58', NULL),
(82, 14, 250000, 250000, 0, 10, '25AT14W861_C3S3', 1, 3, 3, '2025-08-23 11:46:58', '2025-08-23 11:46:58', NULL),
(83, 14, 250000, 250000, 0, 10, '25AT14W431_C3S4', 1, 3, 4, '2025-08-23 11:46:58', '2025-08-23 11:46:58', NULL),
(84, 14, 250000, 250000, 0, 10, '25AT14W359_C3S5', 1, 3, 5, '2025-08-23 11:46:58', '2025-08-23 11:46:58', NULL),
(85, 15, 300000, 250000, 17, 49, '25AT15W273_C6S4', 1, 6, 4, '2025-08-23 11:48:36', '2025-08-23 23:41:59', NULL),
(86, 15, 300000, 250000, 17, 50, '25AT15W871_C6S5', 1, 6, 5, '2025-08-23 11:48:36', '2025-08-23 11:48:36', NULL),
(87, 15, 300000, 250000, 17, 50, '25AT15W633_C6S3', 1, 6, 3, '2025-08-23 11:48:36', '2025-08-23 11:48:36', NULL),
(88, 15, 300000, 250000, 17, 50, '25AT15W758_C9S4', 1, 9, 4, '2025-08-23 11:48:36', '2025-08-23 11:48:36', NULL),
(89, 15, 300000, 250000, 17, 50, '25AT15W702_C9S5', 1, 9, 5, '2025-08-23 11:48:36', '2025-08-23 11:48:36', NULL),
(90, 15, 300000, 250000, 17, 50, '25AT15W529_C9S3', 1, 9, 3, '2025-08-23 11:48:36', '2025-08-23 11:48:36', NULL),
(91, 16, 300000, 250000, 17, 10, '25AT16W153_C9S3', 1, 9, 3, '2025-08-23 11:50:21', '2025-08-23 11:50:21', NULL),
(92, 16, 300000, 250000, 17, 10, '25AT16W478_C9S4', 1, 9, 4, '2025-08-23 11:50:21', '2025-08-23 11:50:21', NULL),
(93, 16, 300000, 250000, 17, 9, '25AT16W699_C9S5', 1, 9, 5, '2025-08-23 11:50:21', '2025-08-23 23:41:59', NULL),
(94, 16, 300000, 250000, 17, 10, '25AT16W213_C3S3', 1, 3, 3, '2025-08-23 11:50:21', '2025-08-23 11:50:21', NULL),
(95, 16, 300000, 250000, 17, 10, '25AT16W388_C3S4', 1, 3, 4, '2025-08-23 11:50:21', '2025-08-23 11:50:21', NULL),
(96, 16, 300000, 250000, 17, 10, '25AT16W223_C3S5', 1, 3, 5, '2025-08-23 11:50:21', '2025-08-23 11:50:21', NULL),
(97, 17, 300000, 200000, 33, 48, '25AT17W303_C11S3', 1, 11, 3, '2025-08-23 11:51:55', '2025-08-24 00:44:44', NULL),
(98, 17, 300000, 200000, 33, 50, '25AT17W726_C11S4', 1, 11, 4, '2025-08-23 11:51:55', '2025-08-23 11:51:55', NULL),
(99, 17, 300000, 200000, 33, 50, '25AT17W794_C11S5', 1, 11, 5, '2025-08-23 11:51:55', '2025-08-23 11:51:55', NULL),
(100, 17, 300000, 200000, 33, 50, '25AT17W924_C1S3', 1, 1, 3, '2025-08-23 11:51:55', '2025-08-23 11:51:55', NULL),
(101, 17, 300000, 200000, 33, 50, '25AT17W139_C1S4', 1, 1, 4, '2025-08-23 11:51:55', '2025-08-23 11:51:55', NULL),
(102, 17, 300000, 200000, 33, 50, '25AT17W810_C1S5', 1, 1, 5, '2025-08-23 11:51:55', '2025-08-23 11:51:55', NULL),
(103, 18, 300000, 280000, 7, 9, '25AT18W911_C3S3', 1, 3, 3, '2025-08-23 11:53:37', '2025-08-24 00:02:58', NULL),
(104, 18, 300000, 280000, 7, 10, '25AT18W283_C3S4', 1, 3, 4, '2025-08-23 11:53:37', '2025-08-23 11:53:37', NULL),
(105, 18, 300000, 280000, 7, 10, '25AT18W190_C3S2', 1, 3, 2, '2025-08-23 11:53:37', '2025-08-23 11:53:37', NULL),
(106, 18, 300000, 280000, 7, 10, '25AT18W874_C7S3', 1, 7, 3, '2025-08-23 11:53:37', '2025-08-23 11:53:37', NULL),
(107, 18, 300000, 280000, 7, 10, '25AT18W736_C7S4', 1, 7, 4, '2025-08-23 11:53:37', '2025-08-23 11:53:37', NULL),
(108, 18, 300000, 280000, 7, 10, '25AT18W876_C7S2', 1, 7, 2, '2025-08-23 11:53:37', '2025-08-23 11:53:37', NULL),
(109, 19, 500000, 350000, 30, 50, '25AT19W694_C1S4', 1, 1, 4, '2025-08-23 11:55:09', '2025-08-23 11:55:09', NULL),
(110, 19, 500000, 350000, 30, 50, '25AT19W588_C1S2', 1, 1, 2, '2025-08-23 11:55:09', '2025-08-23 11:55:09', NULL),
(111, 19, 500000, 350000, 30, 50, '25AT19W418_C1S3', 1, 1, 3, '2025-08-23 11:55:09', '2025-08-23 11:55:09', NULL),
(112, 19, 500000, 350000, 30, 50, '25AT19W753_C11S4', 1, 11, 4, '2025-08-23 11:55:09', '2025-08-23 11:55:09', NULL),
(113, 19, 500000, 350000, 30, 50, '25AT19W470_C11S2', 1, 11, 2, '2025-08-23 11:55:09', '2025-08-23 11:55:09', NULL),
(114, 19, 500000, 350000, 30, 50, '25AT19W166_C11S3', 1, 11, 3, '2025-08-23 11:55:09', '2025-08-23 11:55:09', NULL),
(115, 20, 250000, 220000, 12, 2, '25AT20W148_C7S3', 1, 7, 3, '2025-08-23 11:56:41', '2025-08-25 10:55:55', NULL),
(116, 20, 250000, 220000, 12, 10, '25AT20W947_C7S4', 1, 7, 4, '2025-08-23 11:56:41', '2025-08-23 11:56:41', NULL),
(117, 20, 250000, 220000, 12, 10, '25AT20W218_C7S5', 1, 7, 5, '2025-08-23 11:56:41', '2025-08-23 11:56:41', NULL),
(118, 20, 250000, 220000, 12, 10, '25AT20W528_C11S3', 1, 11, 3, '2025-08-23 11:56:41', '2025-08-23 11:56:41', NULL),
(119, 20, 250000, 220000, 12, 10, '25AT20W384_C11S4', 1, 11, 4, '2025-08-23 11:56:41', '2025-08-23 11:56:41', NULL),
(120, 20, 250000, 220000, 12, 10, '25AT20W741_C11S5', 1, 11, 5, '2025-08-23 11:56:41', '2025-08-23 11:56:41', NULL),
(121, 21, 500000, 450000, 10, 48, '25AK21W322_C1S3', 1, 1, 3, '2025-08-23 11:59:17', '2025-08-24 01:03:11', NULL),
(122, 21, 500000, 450000, 10, 50, '25AK21W121_C1S4', 1, 1, 4, '2025-08-23 11:59:17', '2025-08-23 11:59:17', NULL),
(123, 21, 500000, 450000, 10, 50, '25AK21W121_C1S5', 1, 1, 5, '2025-08-23 11:59:17', '2025-08-23 11:59:17', NULL),
(124, 21, 500000, 450000, 10, 50, '25AK21W707_C9S3', 1, 9, 3, '2025-08-23 11:59:17', '2025-08-23 11:59:17', NULL),
(125, 21, 500000, 450000, 10, 50, '25AK21W223_C9S4', 1, 9, 4, '2025-08-23 11:59:17', '2025-08-23 11:59:17', NULL),
(126, 21, 500000, 450000, 10, 50, '25AK21W761_C9S5', 1, 9, 5, '2025-08-23 11:59:17', '2025-08-23 11:59:17', NULL),
(127, 22, 500000, 420000, 16, 9, '25AK22W921_C1S3', 1, 1, 3, '2025-08-23 12:00:26', '2025-08-24 01:33:54', NULL),
(128, 22, 500000, 420000, 16, 10, '25AK22W143_C1S4', 1, 1, 4, '2025-08-23 12:00:26', '2025-08-23 12:00:26', NULL),
(129, 22, 500000, 420000, 16, 10, '25AK22W736_C1S5', 1, 1, 5, '2025-08-23 12:00:26', '2025-08-23 12:00:26', NULL),
(130, 22, 500000, 420000, 16, 10, '25AK22W648_C3S3', 1, 3, 3, '2025-08-23 12:00:26', '2025-08-23 12:00:26', NULL),
(131, 22, 500000, 420000, 16, 10, '25AK22W811_C3S4', 1, 3, 4, '2025-08-23 12:00:26', '2025-08-23 12:00:26', NULL),
(132, 22, 500000, 420000, 16, 10, '25AK22W667_C3S5', 1, 3, 5, '2025-08-23 12:00:26', '2025-08-23 12:00:26', NULL),
(133, 23, 600000, 550000, 8, 10, '25AK23W943_C7S4', 1, 7, 4, '2025-08-23 12:02:01', '2025-08-23 12:02:01', NULL),
(134, 23, 600000, 550000, 8, 10, '25AK23W112_C7S5', 1, 7, 5, '2025-08-23 12:02:01', '2025-08-23 12:02:01', NULL),
(135, 24, 450000, 250000, 44, 49, '25AK24W872_C1S3', 1, 1, 3, '2025-08-23 12:03:45', '2025-08-24 00:25:22', NULL),
(136, 24, 450000, 250000, 44, 50, '25AK24W764_C1S4', 1, 1, 4, '2025-08-23 12:03:45', '2025-08-23 12:03:45', NULL),
(137, 24, 450000, 250000, 44, 50, '25AK24W959_C1S5', 1, 1, 5, '2025-08-23 12:03:45', '2025-08-23 12:03:45', NULL),
(138, 24, 450000, 250000, 44, 50, '25AK24W646_C9S3', 1, 9, 3, '2025-08-23 12:03:45', '2025-08-23 12:03:45', NULL),
(139, 24, 450000, 250000, 44, 50, '25AK24W772_C9S4', 1, 9, 4, '2025-08-23 12:03:45', '2025-08-23 12:03:45', NULL),
(140, 24, 450000, 250000, 44, 50, '25AK24W383_C9S5', 1, 9, 5, '2025-08-23 12:03:45', '2025-08-23 12:03:45', NULL),
(141, 25, 500000, 300000, 40, 3, '25AK25W162_C1S3', 1, 1, 3, '2025-08-23 12:05:49', '2025-08-25 07:01:40', NULL),
(142, 25, 500000, 300000, 40, 10, '25AK25W492_C1S4', 1, 1, 4, '2025-08-23 12:05:49', '2025-08-23 12:05:49', NULL),
(143, 25, 500000, 300000, 40, 10, '25AK25W851_C1S5', 1, 1, 5, '2025-08-23 12:05:49', '2025-08-23 12:05:49', NULL),
(144, 25, 500000, 300000, 40, 10, '25AK25W932_C3S3', 1, 3, 3, '2025-08-23 12:05:49', '2025-08-23 12:05:49', NULL),
(145, 25, 500000, 300000, 40, 10, '25AK25W250_C3S4', 1, 3, 4, '2025-08-23 12:05:49', '2025-08-23 12:05:49', NULL),
(146, 25, 500000, 300000, 40, 10, '25AK25W562_C3S5', 1, 3, 5, '2025-08-23 12:05:49', '2025-08-23 12:05:49', NULL),
(147, 26, 450000, 350000, 22, 7, '25AK26W860_C9S4', 1, 9, 4, '2025-08-23 12:06:36', '2025-08-24 01:35:34', NULL),
(148, 26, 450000, 350000, 22, 10, '25AK26W787_C9S5', 1, 9, 5, '2025-08-23 12:06:36', '2025-08-23 12:06:36', NULL),
(149, 27, 450000, 350000, 22, 10, '25AK27W361_C1S3', 1, 1, 3, '2025-08-23 12:07:59', '2025-08-23 12:07:59', NULL),
(150, 27, 450000, 350000, 22, 10, '25AK27W123_C1S4', 1, 1, 4, '2025-08-23 12:07:59', '2025-08-23 12:07:59', NULL),
(151, 27, 450000, 350000, 22, 10, '25AK27W290_C1S5', 1, 1, 5, '2025-08-23 12:07:59', '2025-08-23 12:07:59', NULL),
(152, 27, 450000, 350000, 22, 10, '25AK27W585_C11S3', 1, 11, 3, '2025-08-23 12:07:59', '2025-08-23 12:07:59', NULL),
(153, 27, 450000, 350000, 22, 10, '25AK27W630_C11S4', 1, 11, 4, '2025-08-23 12:07:59', '2025-08-23 12:07:59', NULL),
(154, 27, 450000, 350000, 22, 10, '25AK27W815_C11S5', 1, 11, 5, '2025-08-23 12:07:59', '2025-08-23 12:07:59', NULL),
(155, 28, 500000, 500000, 0, 50, '25AK28W752_C7S3', 1, 7, 3, '2025-08-23 12:09:27', '2025-08-23 12:09:27', NULL),
(156, 28, 500000, 500000, 0, 50, '25AK28W807_C7S4', 1, 7, 4, '2025-08-23 12:09:27', '2025-08-23 12:09:27', NULL),
(157, 28, 500000, 500000, 0, 50, '25AK28W887_C7S5', 1, 7, 5, '2025-08-23 12:09:27', '2025-08-23 12:09:27', NULL),
(158, 29, 500000, 450000, 10, 9, '25AK29W266_C9S3', 1, 9, 3, '2025-08-23 12:10:59', '2025-08-24 00:07:47', NULL),
(159, 29, 500000, 450000, 10, 10, '25AK29W897_C9S4', 1, 9, 4, '2025-08-23 12:10:59', '2025-08-23 12:10:59', NULL),
(160, 29, 500000, 450000, 10, 10, '25AK29W471_C11S3', 1, 11, 3, '2025-08-23 12:10:59', '2025-08-23 12:10:59', NULL),
(161, 29, 500000, 450000, 10, 10, '25AK29W139_C11S4', 1, 11, 4, '2025-08-23 12:10:59', '2025-08-23 12:10:59', NULL),
(162, 30, 250000, 150000, 40, 30, '25AK30W648_C3S3', 1, 3, 3, '2025-08-23 12:12:51', '2025-08-23 12:12:51', NULL),
(163, 30, 250000, 150000, 40, 30, '25AK30W546_C3S4', 1, 3, 4, '2025-08-23 12:12:51', '2025-08-23 12:12:51', NULL),
(164, 31, 250000, 200000, 20, 3, '25ASM31W566_C7S3', 1, 7, 3, '2025-08-23 12:15:16', '2025-08-24 02:14:25', NULL),
(165, 31, 250000, 200000, 20, 10, '25ASM31W312_C7S4', 1, 7, 4, '2025-08-23 12:15:16', '2025-08-23 12:15:16', NULL),
(166, 31, 250000, 200000, 20, 10, '25ASM31W207_C7S5', 1, 7, 5, '2025-08-23 12:15:16', '2025-08-23 12:15:16', NULL),
(167, 31, 250000, 200000, 20, 10, '25ASM31W189_C9S3', 1, 9, 3, '2025-08-23 12:15:16', '2025-08-23 12:15:16', NULL),
(168, 31, 250000, 200000, 20, 10, '25ASM31W376_C9S4', 1, 9, 4, '2025-08-23 12:15:16', '2025-08-23 12:15:16', NULL),
(169, 31, 250000, 200000, 20, 10, '25ASM31W273_C9S5', 1, 9, 5, '2025-08-23 12:15:16', '2025-08-23 12:15:16', NULL),
(170, 32, 250000, 220000, 12, 18, '25ASM32W313_C7S3', 1, 7, 3, '2025-08-23 12:16:34', '2025-08-24 01:36:21', NULL),
(171, 32, 250000, 220000, 12, 30, '25ASM32W527_C7S4', 1, 7, 4, '2025-08-23 12:16:34', '2025-08-23 12:16:34', NULL),
(172, 32, 250000, 220000, 12, 30, '25ASM32W642_C7S5', 1, 7, 5, '2025-08-23 12:16:34', '2025-08-23 12:16:34', NULL),
(173, 32, 250000, 220000, 12, 30, '25ASM32W250_C9S3', 1, 9, 3, '2025-08-23 12:16:34', '2025-08-23 12:16:34', NULL),
(174, 32, 250000, 220000, 12, 30, '25ASM32W214_C9S4', 1, 9, 4, '2025-08-23 12:16:34', '2025-08-23 12:16:34', NULL),
(175, 32, 250000, 220000, 12, 30, '25ASM32W379_C9S5', 1, 9, 5, '2025-08-23 12:16:34', '2025-08-23 12:16:34', NULL),
(176, 33, 350000, 250000, 29, 10, '25ASM33W686_C7S3', 1, 7, 3, '2025-08-23 12:18:08', '2025-08-23 12:18:08', NULL),
(177, 33, 350000, 250000, 29, 10, '25ASM33W883_C7S4', 1, 7, 4, '2025-08-23 12:18:08', '2025-08-23 12:18:08', NULL),
(178, 33, 350000, 250000, 29, 10, '25ASM33W720_C7S5', 1, 7, 5, '2025-08-23 12:18:08', '2025-08-23 12:18:08', NULL),
(179, 33, 350000, 250000, 29, 10, '25ASM33W337_C9S3', 1, 9, 3, '2025-08-23 12:18:08', '2025-08-23 12:18:08', NULL),
(180, 33, 350000, 250000, 29, 10, '25ASM33W262_C9S4', 1, 9, 4, '2025-08-23 12:18:08', '2025-08-23 12:18:08', NULL),
(181, 33, 350000, 250000, 29, 10, '25ASM33W580_C9S5', 1, 9, 5, '2025-08-23 12:18:08', '2025-08-23 12:18:08', NULL),
(182, 34, 250000, 150000, 40, 9, '25ASM34W473_C7S4', 1, 7, 4, '2025-08-23 12:19:27', '2025-08-24 01:27:14', NULL),
(183, 34, 250000, 150000, 40, 10, '25ASM34W939_C7S3', 1, 7, 3, '2025-08-23 12:19:27', '2025-08-23 12:19:27', NULL),
(184, 34, 250000, 150000, 40, 10, '25ASM34W414_C3S4', 1, 3, 4, '2025-08-23 12:19:27', '2025-08-23 12:19:27', NULL),
(185, 34, 250000, 150000, 40, 10, '25ASM34W204_C3S3', 1, 3, 3, '2025-08-23 12:19:27', '2025-08-23 12:19:27', NULL),
(186, 35, 450000, 350000, 22, 28, '25ASM35W452_C3S3', 1, 3, 3, '2025-08-23 12:20:57', '2025-08-24 01:03:11', NULL),
(187, 35, 450000, 350000, 22, 30, '25ASM35W109_C3S4', 1, 3, 4, '2025-08-23 12:20:57', '2025-08-23 12:20:57', NULL),
(188, 35, 450000, 350000, 22, 30, '25ASM35W529_C7S3', 1, 7, 3, '2025-08-23 12:20:57', '2025-08-23 12:20:57', NULL),
(189, 35, 450000, 350000, 22, 30, '25ASM35W634_C7S4', 1, 7, 4, '2025-08-23 12:20:57', '2025-08-23 12:20:57', NULL),
(190, 36, 400000, 350000, 13, 9, '25ASM36W531_C7S3', 1, 7, 3, '2025-08-23 12:21:49', '2025-08-24 00:46:28', NULL),
(191, 36, 400000, 350000, 13, 10, '25ASM36W761_C7S4', 1, 7, 4, '2025-08-23 12:21:49', '2025-08-23 12:21:49', NULL),
(192, 36, 400000, 350000, 13, 10, '25ASM36W117_C7S5', 1, 7, 5, '2025-08-23 12:21:49', '2025-08-23 12:21:49', NULL),
(193, 37, 400000, 350000, 13, 28, '25ASM37W170_C7S3', 1, 7, 3, '2025-08-23 12:23:03', '2025-08-24 00:15:54', NULL),
(194, 37, 400000, 350000, 13, 30, '25ASM37W682_C7S4', 1, 7, 4, '2025-08-23 12:23:03', '2025-08-23 12:23:03', NULL),
(195, 37, 400000, 350000, 13, 30, '25ASM37W512_C9S3', 1, 9, 3, '2025-08-23 12:23:03', '2025-08-23 12:23:03', NULL),
(196, 37, 400000, 350000, 13, 30, '25ASM37W551_C9S4', 1, 9, 4, '2025-08-23 12:23:03', '2025-08-23 12:23:03', NULL),
(197, 38, 450000, 350000, 22, 10, '25ASM38W576_C3S3', 1, 3, 3, '2025-08-23 12:24:00', '2025-08-23 12:24:00', NULL),
(198, 38, 450000, 350000, 22, 10, '25ASM38W796_C3S4', 1, 3, 4, '2025-08-23 12:24:00', '2025-08-23 12:24:00', NULL),
(199, 38, 450000, 350000, 22, 10, '25ASM38W997_C3S5', 1, 3, 5, '2025-08-23 12:24:00', '2025-08-23 12:24:00', NULL),
(200, 39, 250000, 150000, 40, 7, '25ASM39W850_C3S3', 1, 3, 3, '2025-08-23 12:25:20', '2025-08-23 23:42:39', NULL),
(201, 39, 250000, 150000, 40, 9, '25ASM39W402_C3S4', 1, 3, 4, '2025-08-23 12:25:20', '2025-08-23 23:13:18', NULL),
(202, 39, 250000, 150000, 40, 10, '25ASM39W988_C7S3', 1, 7, 3, '2025-08-23 12:25:20', '2025-08-23 12:25:20', NULL),
(203, 39, 250000, 150000, 40, 10, '25ASM39W225_C7S4', 1, 7, 4, '2025-08-23 12:25:20', '2025-08-23 12:25:20', NULL),
(204, 40, 400000, 390000, 3, 10, '25ASM40W480_C3S3', 1, 3, 3, '2025-08-23 12:26:36', '2025-08-23 12:26:36', NULL),
(205, 40, 400000, 390000, 3, 10, '25ASM40W189_C3S4', 1, 3, 4, '2025-08-23 12:26:36', '2025-08-23 12:26:36', NULL),
(206, 40, 400000, 390000, 3, 10, '25ASM40W588_C7S3', 1, 7, 3, '2025-08-23 12:26:36', '2025-08-23 12:26:36', NULL),
(207, 40, 400000, 390000, 3, 10, '25ASM40W777_C7S4', 1, 7, 4, '2025-08-23 12:26:36', '2025-08-23 12:26:36', NULL),
(208, 41, 450000, 300000, 33, 29, '25QJ41W753_C1S8', 1, 1, 8, '2025-08-23 12:32:03', '2025-08-24 01:00:29', NULL),
(209, 41, 450000, 300000, 33, 30, '25QJ41W378_C1S9', 1, 1, 9, '2025-08-23 12:32:03', '2025-08-23 12:32:03', NULL),
(210, 41, 450000, 300000, 33, 30, '25QJ41W316_C1S10', 1, 1, 10, '2025-08-23 12:32:03', '2025-08-23 12:32:03', NULL),
(211, 41, 450000, 300000, 33, 30, '25QJ41W722_C3S8', 1, 3, 8, '2025-08-23 12:32:03', '2025-08-23 12:32:03', NULL),
(212, 41, 450000, 300000, 33, 30, '25QJ41W416_C3S9', 1, 3, 9, '2025-08-23 12:32:03', '2025-08-23 12:32:03', NULL),
(213, 41, 450000, 300000, 33, 30, '25QJ41W562_C3S10', 1, 3, 10, '2025-08-23 12:32:03', '2025-08-23 12:32:03', NULL),
(214, 42, 500000, 500000, 0, 10, '25QJ42W924_C1S9', 1, 1, 9, '2025-08-23 12:33:28', '2025-08-23 12:33:28', NULL),
(215, 42, 500000, 500000, 0, 10, '25QJ42W421_C1S10', 1, 1, 10, '2025-08-23 12:33:28', '2025-08-23 12:33:28', NULL),
(216, 42, 500000, 500000, 0, 10, '25QJ42W774_C9S9', 1, 9, 9, '2025-08-23 12:33:28', '2025-08-23 12:33:28', NULL),
(217, 42, 500000, 500000, 0, 10, '25QJ42W859_C9S10', 1, 9, 10, '2025-08-23 12:33:28', '2025-08-23 12:33:28', NULL),
(218, 43, 450000, 400000, 11, 8, '25QJ43W669_C7S9', 1, 7, 9, '2025-08-23 12:34:57', '2025-08-24 00:33:37', NULL),
(219, 43, 450000, 400000, 11, 10, '25QJ43W808_C7S10', 1, 7, 10, '2025-08-23 12:34:57', '2025-08-23 12:34:57', NULL),
(220, 44, 400000, 400000, 0, 29, '25QJ44W189_C7S10', 1, 7, 10, '2025-08-23 12:36:07', '2025-08-24 00:10:13', NULL),
(221, 44, 400000, 400000, 0, 30, '25QJ44W397_C7S9', 1, 7, 9, '2025-08-23 12:36:07', '2025-08-23 12:36:07', NULL),
(222, 44, 400000, 400000, 0, 30, '25QJ44W486_C7S11', 1, 7, 11, '2025-08-23 12:36:07', '2025-08-23 12:36:07', NULL),
(223, 45, 400000, 350000, 13, 8, '25QJ45W721_C7S9', 1, 7, 9, '2025-08-23 12:36:57', '2025-08-24 00:47:08', NULL),
(224, 45, 400000, 350000, 13, 10, '25QJ45W587_C7S10', 1, 7, 10, '2025-08-23 12:36:57', '2025-08-23 12:36:57', NULL),
(225, 46, 450000, 300000, 33, 10, '25QJ46W818_C9S10', 1, 9, 10, '2025-08-23 12:38:07', '2025-08-23 12:38:07', NULL),
(226, 46, 450000, 300000, 33, 10, '25QJ46W144_C9S9', 1, 9, 9, '2025-08-23 12:38:07', '2025-08-23 12:38:07', NULL),
(227, 46, 450000, 300000, 33, 10, '25QJ46W918_C9S11', 1, 9, 11, '2025-08-23 12:38:07', '2025-08-23 12:38:07', NULL),
(228, 47, 400000, 350000, 13, 9, '25QJ47W804_C7S9', 1, 7, 9, '2025-08-23 12:39:33', '2025-08-24 02:08:37', NULL),
(229, 47, 400000, 350000, 13, 10, '25QJ47W502_C7S10', 1, 7, 10, '2025-08-23 12:39:33', '2025-08-23 12:39:33', NULL),
(230, 47, 400000, 350000, 13, 10, '25QJ47W661_C7S11', 1, 7, 11, '2025-08-23 12:39:33', '2025-08-23 12:39:33', NULL),
(231, 48, 600000, 550000, 8, 20, '25QJ48W704_C11S9', 1, 11, 9, '2025-08-23 12:40:33', '2025-08-23 12:40:33', NULL),
(232, 48, 600000, 550000, 8, 20, '25QJ48W555_C11S10', 1, 11, 10, '2025-08-23 12:40:33', '2025-08-23 12:40:33', NULL),
(233, 48, 600000, 550000, 8, 20, '25QJ48W300_C11S11', 1, 11, 11, '2025-08-23 12:40:33', '2025-08-23 12:40:33', NULL),
(234, 49, 500000, 450000, 10, 10, '25QJ49W337_C7S7', 1, 7, 7, '2025-08-23 12:41:31', '2025-08-23 12:41:31', NULL),
(235, 49, 500000, 450000, 10, 10, '25QJ49W387_C7S8', 1, 7, 8, '2025-08-23 12:41:31', '2025-08-23 12:41:31', NULL),
(236, 49, 500000, 450000, 10, 10, '25QJ49W257_C7S9', 1, 7, 9, '2025-08-23 12:41:31', '2025-08-23 12:41:31', NULL),
(237, 50, 500000, 450000, 10, 10, '25QJ50W629_C7S9', 1, 7, 9, '2025-08-23 12:42:16', '2025-08-23 12:42:16', NULL),
(238, 50, 500000, 450000, 10, 10, '25QJ50W390_C7S10', 1, 7, 10, '2025-08-23 12:42:16', '2025-08-23 12:42:16', NULL),
(239, 50, 500000, 450000, 10, 10, '25QJ50W587_C7S11', 1, 7, 11, '2025-08-23 12:42:16', '2025-08-23 12:42:16', NULL),
(240, 51, 400000, 400000, 0, 30, '25QK51W607_C1S9', 1, 1, 9, '2025-08-23 12:44:57', '2025-08-23 12:44:57', NULL),
(241, 51, 400000, 400000, 0, 30, '25QK51W589_C1S10', 1, 1, 10, '2025-08-23 12:44:57', '2025-08-23 12:44:57', NULL),
(242, 51, 400000, 400000, 0, 30, '25QK51W453_C1S11', 1, 1, 11, '2025-08-23 12:44:57', '2025-08-23 12:44:57', NULL),
(243, 51, 400000, 400000, 0, 30, '25QK51W554_C11S9', 1, 11, 9, '2025-08-23 12:44:57', '2025-08-23 12:44:57', NULL),
(244, 51, 400000, 400000, 0, 30, '25QK51W904_C11S10', 1, 11, 10, '2025-08-23 12:44:57', '2025-08-23 12:44:57', NULL),
(245, 51, 400000, 400000, 0, 30, '25QK51W761_C11S11', 1, 11, 11, '2025-08-23 12:44:57', '2025-08-23 12:44:57', NULL),
(246, 52, 400000, 350000, 13, 10, '25QK52W897_C1S9', 1, 1, 9, '2025-08-23 12:46:25', '2025-08-23 12:46:25', NULL),
(247, 52, 400000, 350000, 13, 10, '25QK52W624_C1S10', 1, 1, 10, '2025-08-23 12:46:25', '2025-08-23 12:46:25', NULL),
(248, 52, 400000, 350000, 13, 10, '25QK52W518_C1S11', 1, 1, 11, '2025-08-23 12:46:25', '2025-08-23 12:46:25', NULL),
(249, 52, 400000, 350000, 13, 10, '25QK52W973_C11S9', 1, 11, 9, '2025-08-23 12:46:25', '2025-08-23 12:46:25', NULL),
(250, 52, 400000, 350000, 13, 10, '25QK52W480_C11S10', 1, 11, 10, '2025-08-23 12:46:25', '2025-08-23 12:46:25', NULL),
(251, 52, 400000, 350000, 13, 10, '25QK52W397_C11S11', 1, 11, 11, '2025-08-23 12:46:25', '2025-08-23 12:46:25', NULL),
(252, 53, 400000, 350000, 13, 10, '25QK53W191_C11S9', 1, 11, 9, '2025-08-23 12:47:41', '2025-08-23 12:47:41', NULL),
(253, 53, 400000, 350000, 13, 10, '25QK53W532_C11S10', 1, 11, 10, '2025-08-23 12:47:41', '2025-08-23 12:47:41', NULL),
(254, 53, 400000, 350000, 13, 10, '25QK53W103_C11S11', 1, 11, 11, '2025-08-23 12:47:41', '2025-08-23 12:47:41', NULL),
(255, 54, 400000, 320000, 20, 7, '25QK54W393_C1S9', 1, 1, 9, '2025-08-23 12:49:43', '2025-08-25 10:59:19', NULL),
(256, 54, 400000, 320000, 20, 10, '25QK54W342_C1S10', 1, 1, 10, '2025-08-23 12:49:43', '2025-08-23 12:49:43', NULL),
(257, 54, 400000, 320000, 20, 10, '25QK54W159_C1S11', 1, 1, 11, '2025-08-23 12:49:43', '2025-08-23 12:49:43', NULL),
(258, 54, 400000, 320000, 20, 10, '25QK54W219_C3S9', 1, 3, 9, '2025-08-23 12:49:43', '2025-08-23 12:49:43', NULL),
(259, 54, 400000, 320000, 20, 10, '25QK54W651_C3S10', 1, 3, 10, '2025-08-23 12:49:43', '2025-08-23 12:49:43', NULL),
(260, 54, 400000, 320000, 20, 10, '25QK54W209_C3S11', 1, 3, 11, '2025-08-23 12:49:43', '2025-08-23 12:49:43', NULL),
(261, 55, 240000, 220000, 8, 9, '25QK55W838_C1S9', 1, 1, 9, '2025-08-23 12:51:09', '2025-08-25 11:08:42', NULL),
(262, 55, 240000, 220000, 8, 10, '25QK55W615_C1S10', 1, 1, 10, '2025-08-23 12:51:09', '2025-08-23 12:51:09', NULL),
(263, 55, 240000, 220000, 8, 10, '25QK55W593_C1S11', 1, 1, 11, '2025-08-23 12:51:09', '2025-08-23 12:51:09', NULL),
(264, 55, 240000, 220000, 8, 10, '25QK55W452_C11S9', 1, 11, 9, '2025-08-23 12:51:09', '2025-08-23 12:51:09', NULL),
(265, 55, 240000, 220000, 8, 10, '25QK55W779_C11S10', 1, 11, 10, '2025-08-23 12:51:09', '2025-08-23 12:51:09', NULL),
(266, 55, 240000, 220000, 8, 10, '25QK55W380_C11S11', 1, 11, 11, '2025-08-23 12:51:09', '2025-08-23 12:51:09', NULL),
(267, 56, 400000, 390000, 3, 9, '25QK56W651_C3S9', 1, 3, 9, '2025-08-23 12:52:17', '2025-08-24 01:20:13', NULL),
(268, 56, 400000, 390000, 3, 10, '25QK56W183_C3S10', 1, 3, 10, '2025-08-23 12:52:17', '2025-08-23 12:52:17', NULL),
(269, 56, 400000, 390000, 3, 10, '25QK56W604_C3S11', 1, 3, 11, '2025-08-23 12:52:17', '2025-08-23 12:52:17', NULL),
(270, 56, 400000, 390000, 3, 10, '25QK56W419_C11S9', 1, 11, 9, '2025-08-23 12:52:17', '2025-08-23 12:52:17', NULL),
(271, 56, 400000, 390000, 3, 10, '25QK56W181_C11S10', 1, 11, 10, '2025-08-23 12:52:17', '2025-08-23 12:52:17', NULL),
(272, 56, 400000, 390000, 3, 10, '25QK56W449_C11S11', 1, 11, 11, '2025-08-23 12:52:17', '2025-08-23 12:52:17', NULL),
(273, 57, 400000, 360000, 10, 20, '25QK57W124_C1S9', 1, 1, 9, '2025-08-23 12:53:10', '2025-08-23 12:53:10', NULL),
(274, 57, 400000, 360000, 10, 20, '25QK57W855_C1S10', 1, 1, 10, '2025-08-23 12:53:10', '2025-08-23 12:53:10', NULL),
(275, 57, 400000, 360000, 10, 20, '25QK57W614_C1S11', 1, 1, 11, '2025-08-23 12:53:10', '2025-08-23 12:53:10', NULL),
(276, 58, 300000, 290000, 3, 9, '25QK58W453_C3S9', 1, 3, 9, '2025-08-23 12:54:05', '2025-09-02 14:49:39', NULL),
(277, 58, 300000, 290000, 3, 10, '25QK58W526_C3S10', 1, 3, 10, '2025-08-23 12:54:05', '2025-08-23 12:54:05', NULL),
(278, 59, 400000, 350000, 13, 10, '25QK59W331_C1S9', 1, 1, 9, '2025-08-23 12:56:35', '2025-08-23 12:56:35', NULL),
(279, 59, 400000, 350000, 13, 10, '25QK59W179_C1S10', 1, 1, 10, '2025-08-23 12:56:35', '2025-08-23 12:56:35', NULL),
(280, 59, 400000, 350000, 13, 10, '25QK59W677_C1S11', 1, 1, 11, '2025-08-23 12:56:35', '2025-08-23 12:56:35', NULL),
(281, 59, 400000, 350000, 13, 10, '25QK59W997_C11S9', 1, 11, 9, '2025-08-23 12:56:35', '2025-08-23 12:56:35', NULL),
(282, 59, 400000, 350000, 13, 10, '25QK59W192_C11S10', 1, 11, 10, '2025-08-23 12:56:35', '2025-08-23 12:56:35', NULL),
(283, 59, 400000, 350000, 13, 10, '25QK59W910_C11S11', 1, 11, 11, '2025-08-23 12:56:35', '2025-08-23 12:56:35', NULL),
(284, 60, 500000, 480000, 4, 10, '25QK60W387_C1S9', 1, 1, 9, '2025-08-23 12:57:19', '2025-08-23 12:57:19', NULL),
(285, 60, 500000, 480000, 4, 10, '25QK60W922_C1S10', 1, 1, 10, '2025-08-23 12:57:19', '2025-08-23 12:57:19', NULL),
(286, 60, 500000, 480000, 4, 10, '25QK60W651_C1S11', 1, 1, 11, '2025-08-23 12:57:19', '2025-08-23 12:57:19', NULL),
(287, 60, 500000, 480000, 4, 10, '25QK60W732_C3S9', 1, 3, 9, '2025-08-23 12:57:19', '2025-08-23 12:57:19', NULL),
(288, 60, 500000, 480000, 4, 10, '25QK60W419_C3S10', 1, 3, 10, '2025-08-23 12:57:19', '2025-08-23 12:57:19', NULL),
(289, 60, 500000, 480000, 4, 10, '25QK60W673_C3S11', 1, 3, 11, '2025-08-23 12:57:19', '2025-08-23 12:57:19', NULL),
(290, 61, 350000, 250000, 29, 19, '25QT61W304_C1S7', 1, 1, 7, '2025-08-23 13:03:27', '2025-08-24 01:00:29', NULL),
(291, 61, 350000, 250000, 29, 20, '25QT61W501_C1S8', 1, 1, 8, '2025-08-23 13:03:27', '2025-08-23 13:03:27', NULL),
(292, 61, 350000, 250000, 29, 20, '25QT61W174_C1S9', 1, 1, 9, '2025-08-23 13:03:27', '2025-08-23 13:03:27', NULL),
(293, 61, 350000, 250000, 29, 20, '25QT61W667_C3S7', 1, 3, 7, '2025-08-23 13:03:27', '2025-08-23 13:03:27', NULL),
(294, 61, 350000, 250000, 29, 20, '25QT61W793_C3S8', 1, 3, 8, '2025-08-23 13:03:27', '2025-08-23 13:03:27', NULL),
(295, 61, 350000, 250000, 29, 20, '25QT61W861_C3S9', 1, 3, 9, '2025-08-23 13:03:27', '2025-08-23 13:03:27', NULL),
(296, 62, 450000, 350000, 22, 8, '25QT62W544_C7S9', 1, 7, 9, '2025-08-23 13:04:24', '2025-08-24 01:19:11', NULL),
(297, 62, 450000, 350000, 22, 10, '25QT62W708_C7S10', 1, 7, 10, '2025-08-23 13:04:24', '2025-08-23 13:04:24', NULL),
(298, 62, 450000, 350000, 22, 10, '25QT62W793_C7S11', 1, 7, 11, '2025-08-23 13:04:24', '2025-08-23 13:04:24', NULL),
(299, 63, 400000, 340000, 15, 3, '25QT63W852_C1S9', 1, 1, 9, '2025-08-23 13:05:40', '2025-08-24 02:14:05', NULL),
(300, 63, 400000, 340000, 15, 10, '25QT63W411_C1S10', 1, 1, 10, '2025-08-23 13:05:40', '2025-08-23 13:05:40', NULL),
(301, 63, 400000, 340000, 15, 10, '25QT63W831_C1S11', 1, 1, 11, '2025-08-23 13:05:40', '2025-08-23 13:05:40', NULL),
(302, 63, 400000, 340000, 15, 10, '25QT63W989_C9S9', 1, 9, 9, '2025-08-23 13:05:40', '2025-08-23 13:05:40', NULL),
(303, 63, 400000, 340000, 15, 10, '25QT63W914_C9S10', 1, 9, 10, '2025-08-23 13:05:40', '2025-08-23 13:05:40', NULL),
(304, 63, 400000, 340000, 15, 10, '25QT63W763_C9S11', 1, 9, 11, '2025-08-23 13:05:40', '2025-08-23 13:05:40', NULL),
(305, 64, 400000, 350000, 13, 20, '25QT64W348_C1S9', 1, 1, 9, '2025-08-23 13:06:46', '2025-08-23 13:06:46', NULL),
(306, 64, 400000, 350000, 13, 20, '25QT64W710_C1S10', 1, 1, 10, '2025-08-23 13:06:46', '2025-08-23 13:06:46', NULL),
(307, 64, 400000, 350000, 13, 20, '25QT64W516_C1S11', 1, 1, 11, '2025-08-23 13:06:46', '2025-08-23 13:06:46', NULL),
(308, 65, 400000, 350000, 13, 9, '25QT65W555_C1S9', 1, 1, 9, '2025-08-23 13:07:24', '2025-08-24 01:20:13', NULL),
(309, 65, 400000, 350000, 13, 10, '25QT65W204_C1S10', 1, 1, 10, '2025-08-23 13:07:24', '2025-08-23 13:07:24', NULL),
(310, 65, 400000, 350000, 13, 10, '25QT65W686_C1S11', 1, 1, 11, '2025-08-23 13:07:24', '2025-08-23 13:07:24', NULL),
(311, 66, 400000, 350000, 13, 10, '25QT66W599_C1S10', 1, 1, 10, '2025-08-23 13:08:19', '2025-08-23 13:08:19', NULL),
(312, 66, 400000, 350000, 13, 10, '25QT66W476_C1S9', 1, 1, 9, '2025-08-23 13:08:19', '2025-08-23 13:08:19', NULL),
(313, 67, 300000, 280000, 7, 16, '25QT67W611_C1S9', 1, 1, 9, '2025-08-23 13:09:43', '2025-08-25 11:29:14', NULL),
(314, 67, 300000, 280000, 7, 20, '25QT67W401_C1S10', 1, 1, 10, '2025-08-23 13:09:43', '2025-08-23 13:09:43', NULL),
(315, 67, 300000, 280000, 7, 20, '25QT67W368_C1S11', 1, 1, 11, '2025-08-23 13:09:43', '2025-08-23 13:09:43', NULL),
(316, 67, 300000, 280000, 7, 20, '25QT67W561_C9S9', 1, 9, 9, '2025-08-23 13:09:43', '2025-08-23 13:09:43', NULL),
(317, 67, 300000, 280000, 7, 20, '25QT67W909_C9S10', 1, 9, 10, '2025-08-23 13:09:43', '2025-08-23 13:09:43', NULL),
(318, 67, 300000, 280000, 7, 20, '25QT67W264_C9S11', 1, 9, 11, '2025-08-23 13:09:43', '2025-08-23 13:09:43', NULL),
(319, 68, 500000, 450000, 10, 10, '25QT68W995_C1S9', 1, 1, 9, '2025-08-23 13:11:00', '2025-08-23 13:11:00', NULL),
(320, 68, 500000, 450000, 10, 10, '25QT68W669_C1S10', 1, 1, 10, '2025-08-23 13:11:00', '2025-08-23 13:11:00', NULL),
(321, 68, 500000, 450000, 10, 10, '25QT68W726_C9S9', 1, 9, 9, '2025-08-23 13:11:00', '2025-08-23 13:11:00', NULL),
(322, 68, 500000, 450000, 10, 10, '25QT68W965_C9S10', 1, 9, 10, '2025-08-23 13:11:00', '2025-08-23 13:11:00', NULL),
(323, 69, 500000, 450000, 10, 10, '25QT69W422_C1S9', 1, 1, 9, '2025-08-23 13:12:16', '2025-08-23 13:12:16', NULL),
(324, 69, 500000, 450000, 10, 10, '25QT69W665_C1S10', 1, 1, 10, '2025-08-23 13:12:16', '2025-08-23 13:12:16', NULL),
(325, 69, 500000, 450000, 10, 10, '25QT69W160_C9S9', 1, 9, 9, '2025-08-23 13:12:16', '2025-08-23 13:12:16', NULL),
(326, 69, 500000, 450000, 10, 10, '25QT69W604_C9S10', 1, 9, 10, '2025-08-23 13:12:16', '2025-08-23 13:12:16', NULL),
(327, 70, 400000, 350000, 13, 28, '25QT70W937_C1S9', 1, 1, 9, '2025-08-23 13:13:10', '2025-08-24 01:28:23', NULL),
(328, 70, 400000, 350000, 13, 30, '25QT70W340_C1S10', 1, 1, 10, '2025-08-23 13:13:10', '2025-08-23 13:13:10', NULL),
(329, 71, 250000, 220000, 12, 10, '25ATN71W930_C3S3', 1, 3, 3, '2025-08-23 13:31:03', '2025-08-23 13:31:03', NULL),
(330, 71, 250000, 220000, 12, 10, '25ATN71W196_C3S2', 1, 3, 2, '2025-08-23 13:31:03', '2025-08-23 13:31:03', NULL),
(331, 71, 250000, 220000, 12, 10, '25ATN71W955_C8S3', 1, 8, 3, '2025-08-23 13:31:03', '2025-08-23 13:31:03', NULL),
(332, 71, 250000, 220000, 12, 10, '25ATN71W601_C8S2', 1, 8, 2, '2025-08-23 13:31:03', '2025-08-23 13:31:03', NULL),
(333, 72, 150000, 120000, 20, 8, '25ATN72W745_C6S1', 1, 6, 1, '2025-08-23 13:34:59', '2025-08-24 01:25:49', NULL),
(334, 72, 150000, 120000, 20, 10, '25ATN72W237_C6S2', 1, 6, 2, '2025-08-23 13:34:59', '2025-08-23 13:34:59', NULL),
(335, 72, 150000, 120000, 20, 10, '25ATN72W770_C8S1', 1, 8, 1, '2025-08-23 13:34:59', '2025-08-23 13:34:59', NULL),
(336, 72, 150000, 120000, 20, 10, '25ATN72W509_C8S2', 1, 8, 2, '2025-08-23 13:34:59', '2025-08-23 13:34:59', NULL),
(337, 73, 250000, 220000, 12, 10, '25ATN73W218_C3S1', 1, 3, 1, '2025-08-23 13:36:01', '2025-08-23 13:36:01', NULL),
(338, 73, 250000, 220000, 12, 10, '25ATN73W342_C3S2', 1, 3, 2, '2025-08-23 13:36:01', '2025-08-23 13:36:01', NULL),
(339, 73, 250000, 220000, 12, 10, '25ATN73W334_C8S1', 1, 8, 1, '2025-08-23 13:36:01', '2025-08-23 13:36:01', NULL),
(340, 73, 250000, 220000, 12, 10, '25ATN73W318_C8S2', 1, 8, 2, '2025-08-23 13:36:01', '2025-08-23 13:36:01', NULL),
(341, 74, 400000, 300000, 25, 10, '25ATN74W341_C8S2', 1, 8, 2, '2025-08-23 13:37:37', '2025-08-23 13:37:37', NULL),
(342, 74, 400000, 300000, 25, 10, '25ATN74W123_C8S1', 1, 8, 1, '2025-08-23 13:37:37', '2025-08-23 13:37:37', NULL),
(343, 74, 400000, 300000, 25, 10, '25ATN74W937_C1S2', 1, 1, 2, '2025-08-23 13:37:37', '2025-08-23 13:37:37', NULL),
(344, 74, 400000, 300000, 25, 10, '25ATN74W714_C1S1', 1, 1, 1, '2025-08-23 13:37:37', '2025-08-23 13:37:37', NULL),
(345, 75, 250000, 250000, 0, 10, '25ATN75W318_C6S1', 1, 6, 1, '2025-08-23 13:39:50', '2025-08-23 13:39:50', NULL),
(346, 75, 250000, 250000, 0, 10, '25ATN75W456_C6S2', 1, 6, 2, '2025-08-23 13:39:50', '2025-08-23 13:39:50', NULL),
(347, 75, 250000, 250000, 0, 10, '25ATN75W777_C9S1', 1, 9, 1, '2025-08-23 13:39:50', '2025-08-23 13:39:50', NULL),
(348, 75, 250000, 250000, 0, 10, '25ATN75W318_C9S2', 1, 9, 2, '2025-08-23 13:39:50', '2025-08-23 13:39:50', NULL),
(349, 76, 250000, 250000, 0, 10, '25ATN76W195_C8S1', 1, 8, 1, '2025-08-23 13:41:08', '2025-08-23 13:41:08', NULL),
(350, 76, 250000, 250000, 0, 10, '25ATN76W519_C8S2', 1, 8, 2, '2025-08-23 13:41:08', '2025-08-23 13:41:08', NULL),
(351, 76, 250000, 250000, 0, 10, '25ATN76W945_C6S1', 1, 6, 1, '2025-08-23 13:41:08', '2025-08-23 13:41:08', NULL),
(352, 76, 250000, 250000, 0, 10, '25ATN76W922_C6S2', 1, 6, 2, '2025-08-23 13:41:08', '2025-08-23 13:41:08', NULL),
(353, 77, 300000, 290000, 3, 10, '25ATN77W471_C9S1', 1, 9, 1, '2025-08-23 13:42:21', '2025-08-23 13:42:21', NULL),
(354, 77, 300000, 290000, 3, 10, '25ATN77W226_C9S2', 1, 9, 2, '2025-08-23 13:42:21', '2025-08-23 13:42:21', NULL),
(355, 77, 300000, 290000, 3, 10, '25ATN77W149_C8S1', 1, 8, 1, '2025-08-23 13:42:21', '2025-08-23 13:42:21', NULL),
(356, 77, 300000, 290000, 3, 10, '25ATN77W142_C8S2', 1, 8, 2, '2025-08-23 13:42:21', '2025-08-23 13:42:21', NULL),
(357, 78, 250000, 210000, 16, 9, '25ATN78W684_C1S1', 1, 1, 1, '2025-08-23 13:43:44', '2025-08-24 00:44:44', NULL),
(358, 78, 250000, 210000, 16, 10, '25ATN78W570_C1S2', 1, 1, 2, '2025-08-23 13:43:44', '2025-08-23 13:43:44', NULL),
(359, 78, 250000, 210000, 16, 10, '25ATN78W996_C11S1', 1, 11, 1, '2025-08-23 13:43:44', '2025-08-23 13:43:44', NULL),
(360, 78, 250000, 210000, 16, 10, '25ATN78W642_C11S2', 1, 11, 2, '2025-08-23 13:43:44', '2025-08-23 13:43:44', NULL),
(361, 79, 250000, 200000, 20, 5, '25ATN79W828_C11S1', 1, 11, 1, '2025-08-23 13:45:09', '2025-08-25 11:03:25', NULL),
(362, 79, 250000, 200000, 20, 10, '25ATN79W189_C11S2', 1, 11, 2, '2025-08-23 13:45:09', '2025-08-23 13:45:09', NULL),
(363, 79, 250000, 200000, 20, 10, '25ATN79W344_C1S1', 1, 1, 1, '2025-08-23 13:45:09', '2025-08-23 13:45:09', NULL),
(364, 79, 250000, 200000, 20, 10, '25ATN79W411_C1S2', 1, 1, 2, '2025-08-23 13:45:09', '2025-08-23 13:45:09', NULL),
(365, 80, 250000, 200000, 20, 8, '25ATN80W676_C3S1', 1, 3, 1, '2025-08-23 13:46:34', '2025-08-25 11:22:02', NULL),
(366, 80, 250000, 200000, 20, 10, '25ATN80W628_C3S2', 1, 3, 2, '2025-08-23 13:46:34', '2025-08-23 13:46:34', NULL),
(367, 80, 250000, 200000, 20, 10, '25ATN80W778_C8S1', 1, 8, 1, '2025-08-23 13:46:34', '2025-08-23 13:46:34', NULL),
(368, 80, 250000, 200000, 20, 10, '25ATN80W888_C8S2', 1, 8, 2, '2025-08-23 13:46:34', '2025-08-23 13:46:34', NULL),
(369, 81, 250000, 120000, 52, 10, '25ASMN81W928_C8S1', 1, 8, 1, '2025-08-23 20:20:35', '2025-08-23 20:20:35', NULL),
(370, 81, 250000, 120000, 52, 10, '25ASMN81W110_C8S2', 1, 8, 2, '2025-08-23 20:20:35', '2025-08-23 20:20:35', NULL),
(371, 82, 300000, 250000, 17, 18, '25ASMN82W378_C2S1', 1, 2, 1, '2025-08-23 20:21:59', '2025-09-02 15:21:02', NULL),
(372, 82, 300000, 250000, 17, 20, '25ASMN82W110_C2S2', 1, 2, 2, '2025-08-23 20:21:59', '2025-08-23 20:21:59', NULL),
(373, 82, 300000, 250000, 17, 20, '25ASMN82W890_C1S1', 1, 1, 1, '2025-08-23 20:21:59', '2025-08-23 20:21:59', NULL),
(374, 82, 300000, 250000, 17, 20, '25ASMN82W634_C1S2', 1, 1, 2, '2025-08-23 20:21:59', '2025-08-23 20:21:59', NULL),
(375, 83, 300000, 250000, 17, 10, '25ASMN83W878_C8S1', 1, 8, 1, '2025-08-23 20:23:13', '2025-08-23 20:23:13', NULL),
(376, 83, 300000, 250000, 17, 10, '25ASMN83W677_C8S2', 1, 8, 2, '2025-08-23 20:23:13', '2025-08-23 20:23:13', NULL),
(377, 83, 300000, 250000, 17, 10, '25ASMN83W164_C3S1', 1, 3, 1, '2025-08-23 20:23:13', '2025-08-23 20:23:13', NULL),
(378, 83, 300000, 250000, 17, 10, '25ASMN83W385_C3S2', 1, 3, 2, '2025-08-23 20:23:13', '2025-08-23 20:23:13', NULL),
(379, 84, 250000, 250000, 0, 9, '25ASMN84W485_C8S1', 1, 8, 1, '2025-08-23 20:25:04', '2025-08-24 00:33:37', NULL),
(380, 84, 250000, 250000, 0, 10, '25ASMN84W485_C8S2', 1, 8, 2, '2025-08-23 20:25:04', '2025-08-23 20:25:04', NULL),
(381, 84, 250000, 250000, 0, 10, '25ASMN84W252_C3S1', 1, 3, 1, '2025-08-23 20:25:04', '2025-08-23 20:25:04', NULL),
(382, 84, 250000, 250000, 0, 10, '25ASMN84W521_C3S2', 1, 3, 2, '2025-08-23 20:25:04', '2025-08-23 20:25:04', NULL),
(383, 85, 300000, 250000, 17, 10, '25ASMN85W120_C7S1', 1, 7, 1, '2025-08-23 20:25:49', '2025-08-23 20:25:49', NULL),
(384, 85, 300000, 250000, 17, 10, '25ASMN85W748_C7S2', 1, 7, 2, '2025-08-23 20:25:49', '2025-08-23 20:25:49', NULL),
(385, 86, 300000, 260000, 13, 10, '25ASMN86W424_C8S1', 1, 8, 1, '2025-08-23 20:27:14', '2025-08-23 20:27:14', NULL),
(386, 86, 300000, 260000, 13, 10, '25ASMN86W313_C8S2', 1, 8, 2, '2025-08-23 20:27:14', '2025-08-23 20:27:14', NULL),
(387, 86, 300000, 260000, 13, 10, '25ASMN86W671_C7S1', 1, 7, 1, '2025-08-23 20:27:14', '2025-08-23 20:27:14', NULL),
(388, 86, 300000, 260000, 13, 10, '25ASMN86W634_C7S2', 1, 7, 2, '2025-08-23 20:27:14', '2025-08-23 20:27:14', NULL),
(389, 87, 260000, 220000, 15, 7, '25ASMN87W993_C8S1', 1, 8, 1, '2025-08-23 20:28:28', '2025-08-25 11:26:03', NULL),
(390, 87, 260000, 220000, 15, 10, '25ASMN87W175_C8S2', 1, 8, 2, '2025-08-23 20:28:28', '2025-08-23 20:28:28', NULL),
(391, 87, 260000, 220000, 15, 10, '25ASMN87W987_C6S1', 1, 6, 1, '2025-08-23 20:28:28', '2025-08-23 20:28:28', NULL),
(392, 87, 260000, 220000, 15, 10, '25ASMN87W750_C6S2', 1, 6, 2, '2025-08-23 20:28:28', '2025-08-23 20:28:28', NULL),
(393, 88, 300000, 250000, 17, 10, '25ASMN88W356_C7S1', 1, 7, 1, '2025-08-23 20:30:07', '2025-08-23 20:30:07', NULL),
(394, 88, 300000, 250000, 17, 10, '25ASMN88W811_C7S2', 1, 7, 2, '2025-08-23 20:30:07', '2025-08-23 20:30:07', NULL),
(395, 89, 300000, 250000, 17, 10, '25ASMN89W221_C3S1', 1, 3, 1, '2025-08-23 20:33:02', '2025-08-23 20:33:02', NULL),
(396, 89, 300000, 250000, 17, 10, '25ASMN89W962_C3S2', 1, 3, 2, '2025-08-23 20:33:02', '2025-08-23 20:33:02', NULL),
(397, 89, 300000, 250000, 17, 10, '25ASMN89W711_C9S1', 1, 9, 1, '2025-08-23 20:33:02', '2025-08-23 20:33:02', NULL),
(398, 89, 300000, 250000, 17, 10, '25ASMN89W659_C9S2', 1, 9, 2, '2025-08-23 20:33:02', '2025-08-23 20:33:02', NULL),
(399, 90, 250000, 250000, 0, 10, '25ASMN90W870_C6S1', 1, 6, 1, '2025-08-23 20:34:55', '2025-08-23 20:34:55', NULL),
(400, 90, 250000, 250000, 0, 10, '25ASMN90W949_C6S2', 1, 6, 2, '2025-08-23 20:34:55', '2025-08-23 20:34:55', NULL),
(401, 91, 300000, 250000, 17, 4, '25D91W545_C1S1', 1, 1, 1, '2025-08-23 20:39:37', '2025-08-25 07:03:33', NULL),
(402, 91, 300000, 250000, 17, 10, '25D91W351_C1S2', 1, 1, 2, '2025-08-23 20:39:37', '2025-08-23 20:39:37', NULL),
(403, 91, 300000, 250000, 17, 10, '25D91W793_C2S1', 1, 2, 1, '2025-08-23 20:39:37', '2025-08-23 20:39:37', NULL),
(404, 91, 300000, 250000, 17, 10, '25D91W882_C2S2', 1, 2, 2, '2025-08-23 20:39:37', '2025-08-23 20:39:37', NULL),
(405, 92, 300000, 250000, 17, 5, '25D92W461_C1S1', 1, 1, 1, '2025-08-23 20:40:36', '2025-08-24 01:25:03', NULL),
(406, 92, 300000, 250000, 17, 9, '25D92W810_C1S2', 1, 1, 2, '2025-08-23 20:40:36', '2025-08-23 23:04:45', NULL),
(407, 93, 500000, 450000, 10, 10, '25D93W189_C11S1', 1, 11, 1, '2025-08-23 20:41:52', '2025-08-23 20:41:52', NULL),
(408, 93, 500000, 450000, 10, 10, '25D93W201_C11S2', 1, 11, 2, '2025-08-23 20:41:52', '2025-08-23 20:41:52', NULL),
(409, 93, 500000, 450000, 10, 10, '25D93W188_C1S1', 1, 1, 1, '2025-08-23 20:41:52', '2025-08-23 20:41:52', NULL),
(410, 93, 500000, 450000, 10, 10, '25D93W967_C1S2', 1, 1, 2, '2025-08-23 20:41:52', '2025-08-23 20:41:52', NULL),
(411, 94, 450000, 390000, 13, 9, '25D94W948_C3S1', 1, 3, 1, '2025-08-23 20:42:39', '2025-08-23 22:49:07', NULL),
(412, 94, 450000, 390000, 13, 10, '25D94W631_C3S2', 1, 3, 2, '2025-08-23 20:42:39', '2025-08-23 20:42:39', NULL),
(413, 95, 300000, 290000, 3, 9, '25D95W269_C6S1', 1, 6, 1, '2025-08-23 20:44:02', '2025-08-23 23:34:37', NULL),
(414, 95, 300000, 290000, 3, 10, '25D95W426_C6S2', 1, 6, 2, '2025-08-23 20:44:02', '2025-08-23 20:44:02', NULL),
(415, 95, 300000, 290000, 3, 10, '25D95W251_C1S1', 1, 1, 1, '2025-08-23 20:44:02', '2025-08-23 20:44:02', NULL),
(416, 95, 300000, 290000, 3, 10, '25D95W589_C1S2', 1, 1, 2, '2025-08-23 20:44:02', '2025-08-23 20:44:02', NULL),
(417, 96, 300000, 290000, 3, 9, '25D96W814_C1S1', 1, 1, 1, '2025-08-23 20:45:33', '2025-08-24 00:27:13', NULL),
(418, 96, 300000, 290000, 3, 10, '25D96W757_C1S2', 1, 1, 2, '2025-08-23 20:45:33', '2025-08-23 20:45:33', NULL),
(419, 96, 300000, 290000, 3, 10, '25D96W397_C8S1', 1, 8, 1, '2025-08-23 20:45:33', '2025-08-23 20:45:33', NULL),
(420, 96, 300000, 290000, 3, 10, '25D96W579_C8S2', 1, 8, 2, '2025-08-23 20:45:33', '2025-08-23 20:45:33', NULL),
(421, 97, 600000, 550000, 8, 20, '25D97W260_C2S1', 1, 2, 1, '2025-08-23 20:47:04', '2025-08-23 20:47:04', NULL),
(422, 97, 600000, 550000, 8, 20, '25D97W559_C2S2', 1, 2, 2, '2025-08-23 20:47:04', '2025-08-23 20:47:04', NULL),
(423, 97, 600000, 550000, 8, 20, '25D97W103_C1S1', 1, 1, 1, '2025-08-23 20:47:04', '2025-08-23 20:47:04', NULL),
(424, 97, 600000, 550000, 8, 20, '25D97W905_C1S2', 1, 1, 2, '2025-08-23 20:47:04', '2025-08-23 20:47:04', NULL),
(425, 98, 250000, 222000, 11, 9, '25D98W649_C4S1', 1, 4, 1, '2025-08-23 20:48:12', '2025-08-24 01:13:10', NULL),
(426, 98, 250000, 222000, 11, 10, '25D98W899_C4S2', 1, 4, 2, '2025-08-23 20:48:12', '2025-08-23 20:48:12', NULL),
(427, 98, 250000, 222000, 11, 10, '25D98W115_C1S1', 1, 1, 1, '2025-08-23 20:48:12', '2025-08-23 20:48:12', NULL),
(428, 98, 250000, 222000, 11, 10, '25D98W757_C1S2', 1, 1, 2, '2025-08-23 20:48:12', '2025-08-23 20:48:12', NULL),
(429, 99, 300000, 250000, 17, 26, '25D99W424_C1S1', 1, 1, 1, '2025-08-23 20:49:26', '2025-08-24 01:01:19', NULL),
(430, 99, 300000, 250000, 17, 30, '25D99W535_C1S2', 1, 1, 2, '2025-08-23 20:49:26', '2025-08-23 20:49:26', NULL),
(431, 99, 300000, 250000, 17, 30, '25D99W400_C11S1', 1, 11, 1, '2025-08-23 20:49:26', '2025-08-23 20:49:26', NULL),
(432, 99, 300000, 250000, 17, 30, '25D99W549_C11S2', 1, 11, 2, '2025-08-23 20:49:26', '2025-08-23 20:49:26', NULL),
(433, 100, 300000, 250000, 17, 10, '25D100W644_C9S1', 1, 9, 1, '2025-08-23 20:50:35', '2025-08-23 20:50:35', NULL),
(434, 100, 300000, 250000, 17, 10, '25D100W678_C9S2', 1, 9, 2, '2025-08-23 20:50:35', '2025-08-23 20:50:35', NULL),
(435, 100, 300000, 250000, 17, 10, '25D100W537_C1S1', 1, 1, 1, '2025-08-23 20:50:35', '2025-08-23 20:50:35', NULL),
(436, 100, 300000, 250000, 17, 10, '25D100W749_C1S2', 1, 1, 2, '2025-08-23 20:50:35', '2025-08-23 20:50:35', NULL),
(437, 101, 300000, 250000, 17, 10, '25D101W857_C11S1', 1, 11, 1, '2025-08-23 20:51:39', '2025-08-23 20:51:39', NULL),
(438, 101, 300000, 250000, 17, 10, '25D101W727_C11S2', 1, 11, 2, '2025-08-23 20:51:39', '2025-08-23 20:51:39', NULL),
(498, 123, 500000, 450000, 10, 50, '25QJN123W320_C11S7', 1, 11, 7, '2025-08-23 21:22:52', '2025-08-23 21:22:52', NULL),
(499, 123, 500000, 450000, 10, 50, '25QJN123W479_C11S8', 1, 11, 8, '2025-08-23 21:22:52', '2025-08-23 21:22:52', NULL);
INSERT INTO `product_items` (`id`, `product_id`, `price`, `sale_price`, `sale_percent`, `stock`, `sku`, `is_active`, `color_id`, `size_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(500, 123, 500000, 450000, 10, 50, '25QJN123W853_C8S7', 1, 8, 7, '2025-08-23 21:22:52', '2025-08-23 21:22:52', NULL),
(501, 123, 500000, 450000, 10, 50, '25QJN123W260_C8S8', 1, 8, 8, '2025-08-23 21:22:52', '2025-08-23 21:22:52', NULL),
(502, 102, 350000, 320000, 9, 9, '25CV102W945_C8S7', 1, 8, 7, '2025-08-23 21:24:24', '2025-08-24 00:26:16', NULL),
(503, 102, 350000, 320000, 9, 10, '25CV102W408_C8S8', 1, 8, 8, '2025-08-23 21:24:24', '2025-08-23 21:57:50', NULL),
(504, 102, 350000, 320000, 9, 10, '25CV102W208_C1S7', 1, 1, 7, '2025-08-23 21:24:24', '2025-08-23 21:57:50', NULL),
(505, 102, 350000, 320000, 9, 10, '25CV102W492_C1S8', 1, 1, 8, '2025-08-23 21:24:24', '2025-08-23 21:57:50', NULL),
(506, 103, 400000, 400000, 0, 3, '25CV103W650_C7S7', 1, 7, 7, '2025-08-23 21:24:52', '2025-08-24 02:08:26', NULL),
(507, 103, 400000, 400000, 0, 10, '25CV103W929_C7S8', 1, 7, 8, '2025-08-23 21:24:52', '2025-08-23 21:58:23', NULL),
(508, 104, 400000, 400000, 0, 0, '25CV104W206_C3S7', 1, 3, 7, '2025-08-23 21:25:03', '2025-08-24 01:34:57', NULL),
(509, 104, 400000, 400000, 0, 10, '25CV104W684_C3S8', 1, 3, 8, '2025-08-23 21:25:03', '2025-08-23 21:26:18', NULL),
(510, 104, 400000, 400000, 0, 10, '25CV104W934_C11S7', 1, 11, 7, '2025-08-23 21:25:03', '2025-08-23 21:26:18', NULL),
(511, 104, 400000, 400000, 0, 10, '25CV104W366_C11S8', 1, 11, 8, '2025-08-23 21:25:03', '2025-08-23 21:26:18', NULL),
(512, 105, 400000, 400000, 0, 10, '25CV105W570_C6S7', 1, 6, 7, '2025-08-23 21:25:08', '2025-08-23 21:26:28', NULL),
(513, 105, 400000, 400000, 0, 10, '25CV105W624_C6S8', 1, 6, 8, '2025-08-23 21:25:08', '2025-08-23 21:26:28', NULL),
(514, 105, 400000, 400000, 0, 10, '25CV105W603_C3S7', 1, 3, 7, '2025-08-23 21:25:08', '2025-08-23 21:26:28', NULL),
(515, 105, 400000, 400000, 0, 10, '25CV105W239_C3S8', 1, 3, 8, '2025-08-23 21:25:08', '2025-08-23 21:26:28', NULL),
(516, 106, 400000, 350000, 13, 7, '25CV106W585_C9S7', 1, 9, 7, '2025-08-23 21:25:13', '2025-08-24 02:14:14', NULL),
(517, 106, 400000, 350000, 13, 10, '25CV106W621_C9S8', 1, 9, 8, '2025-08-23 21:25:13', '2025-08-23 21:26:45', NULL),
(518, 107, 400000, 400000, 0, 10, '25CV107W595_C7S7', 1, 7, 7, '2025-08-23 21:25:18', '2025-08-23 21:27:02', NULL),
(519, 107, 400000, 400000, 0, 10, '25CV107W554_C7S8', 1, 7, 8, '2025-08-23 21:25:18', '2025-08-23 21:27:02', NULL),
(520, 108, 400000, 400000, 0, 8, '25CV108W336_C7S7', 1, 7, 7, '2025-08-23 21:25:25', '2025-08-24 00:18:09', NULL),
(521, 108, 400000, 400000, 0, 10, '25CV108W228_C7S8', 1, 7, 8, '2025-08-23 21:25:25', '2025-08-23 21:27:09', NULL),
(522, 109, 400000, 400000, 0, 9, '25CV109W672_C1S7', 1, 1, 7, '2025-08-23 21:26:06', '2025-08-24 01:28:23', NULL),
(523, 109, 400000, 400000, 0, 10, '25CV109W163_C1S8', 1, 1, 8, '2025-08-23 21:26:06', '2025-08-23 21:26:06', NULL),
(524, 109, 400000, 400000, 0, 10, '25CV109W894_C3S7', 1, 3, 7, '2025-08-23 21:26:06', '2025-08-23 21:26:06', NULL),
(525, 109, 400000, 400000, 0, 10, '25CV109W930_C3S8', 1, 3, 8, '2025-08-23 21:26:06', '2025-08-23 21:26:06', NULL),
(526, 110, 400000, 400000, 0, 50, '25CV110W957_C3S7', 1, 3, 7, '2025-08-23 21:27:35', '2025-08-23 21:27:35', NULL),
(527, 110, 400000, 400000, 0, 50, '25CV110W311_C3S8', 1, 3, 8, '2025-08-23 21:27:35', '2025-08-23 21:27:35', NULL),
(528, 111, 400000, 400000, 0, 20, '25CV111W358_C1S7', 1, 1, 7, '2025-08-23 21:28:04', '2025-08-23 21:28:04', NULL),
(529, 111, 400000, 400000, 0, 20, '25CV111W990_C1S8', 1, 1, 8, '2025-08-23 21:28:04', '2025-08-23 21:28:04', NULL),
(530, 111, 400000, 400000, 0, 20, '25CV111W963_C3S7', 1, 3, 7, '2025-08-23 21:28:04', '2025-08-23 21:28:04', NULL),
(531, 111, 400000, 400000, 0, 20, '25CV111W460_C3S8', 1, 3, 8, '2025-08-23 21:28:04', '2025-08-23 21:28:04', NULL),
(532, 112, 400000, 400000, 0, 7, '25QTN112W508_C6S7', 1, 6, 7, '2025-08-23 21:28:16', '2025-08-24 01:19:11', NULL),
(533, 112, 400000, 400000, 0, 10, '25QTN112W233_C6S8', 1, 6, 8, '2025-08-23 21:28:16', '2025-08-23 21:28:16', NULL),
(534, 112, 400000, 400000, 0, 10, '25QTN112W398_C1S7', 1, 1, 7, '2025-08-23 21:28:16', '2025-08-23 21:28:16', NULL),
(535, 112, 400000, 400000, 0, 10, '25QTN112W884_C1S8', 1, 1, 8, '2025-08-23 21:28:16', '2025-08-23 21:28:16', NULL),
(536, 113, 400000, 400000, 0, 3, '25QTN113W610_C9S7', 1, 9, 7, '2025-08-23 21:28:25', '2025-08-24 02:08:02', NULL),
(537, 113, 400000, 400000, 0, 10, '25QTN113W918_C9S8', 1, 9, 8, '2025-08-23 21:28:25', '2025-08-23 21:28:25', NULL),
(538, 114, 400000, 400000, 0, 4, '25QTN114W316_C9S7', 1, 9, 7, '2025-08-23 21:28:38', '2025-08-25 11:14:37', NULL),
(539, 114, 400000, 400000, 0, 10, '25QTN114W942_C9S8', 1, 9, 8, '2025-08-23 21:28:38', '2025-08-23 21:28:38', NULL),
(540, 115, 400000, 400000, 0, 8, '25QTN115W665_C9S7', 1, 9, 7, '2025-08-23 21:28:48', '2025-08-25 11:15:47', NULL),
(541, 115, 400000, 400000, 0, 10, '25QTN115W400_C9S8', 1, 9, 8, '2025-08-23 21:28:48', '2025-08-23 21:28:48', NULL),
(542, 116, 400000, 400000, 0, 9, '25QTN116W642_C11S7', 1, 11, 7, '2025-08-23 21:29:02', '2025-08-24 00:48:11', NULL),
(543, 116, 400000, 400000, 0, 10, '25QTN116W465_C11S8', 1, 11, 8, '2025-08-23 21:29:02', '2025-08-23 21:29:02', NULL),
(544, 116, 400000, 400000, 0, 10, '25QTN116W158_C1S7', 1, 1, 7, '2025-08-23 21:29:02', '2025-08-23 21:29:02', NULL),
(545, 116, 400000, 400000, 0, 10, '25QTN116W605_C1S8', 1, 1, 8, '2025-08-23 21:29:02', '2025-08-23 21:29:02', NULL),
(546, 117, 400000, 400000, 0, 8, '25QTN117W961_C1S7', 1, 1, 7, '2025-08-23 21:29:13', '2025-08-24 01:18:31', NULL),
(547, 117, 400000, 400000, 0, 10, '25QTN117W649_C1S8', 1, 1, 8, '2025-08-23 21:29:13', '2025-08-23 21:29:13', NULL),
(548, 118, 400000, 400000, 0, 10, '25QTN118W504_C3S7', 1, 3, 7, '2025-08-23 21:29:24', '2025-08-23 21:29:24', NULL),
(549, 118, 400000, 400000, 0, 10, '25QTN118W967_C3S8', 1, 3, 8, '2025-08-23 21:29:24', '2025-08-23 21:29:24', NULL),
(550, 119, 400000, 400000, 0, 9, '25QTN119W691_C9S7', 1, 9, 7, '2025-08-23 21:29:40', '2025-08-24 00:17:22', NULL),
(551, 119, 400000, 400000, 0, 10, '25QTN119W638_C9S8', 1, 9, 8, '2025-08-23 21:29:40', '2025-08-23 21:29:40', NULL),
(552, 120, 400000, 400000, 0, 10, '25QTN120W103_C11S7', 1, 11, 7, '2025-08-23 21:30:02', '2025-08-23 21:30:02', NULL),
(553, 120, 400000, 400000, 0, 10, '25QTN120W153_C11S8', 1, 11, 8, '2025-08-23 21:30:02', '2025-08-23 21:30:02', NULL),
(554, 121, 400000, 400000, 0, 10, '25QTN121W423_C1S7', 1, 1, 7, '2025-08-23 21:30:11', '2025-08-23 21:30:11', NULL),
(555, 121, 400000, 400000, 0, 10, '25QTN121W585_C1S8', 1, 1, 8, '2025-08-23 21:30:11', '2025-08-23 21:30:11', NULL),
(556, 122, 400000, 400000, 0, 10, '25QTN122W272_C8S7', 1, 8, 7, '2025-08-23 21:30:25', '2025-08-23 21:30:25', NULL),
(557, 122, 400000, 400000, 0, 10, '25QTN122W893_C8S8', 1, 8, 8, '2025-08-23 21:30:25', '2025-08-23 21:30:25', NULL),
(558, 122, 400000, 400000, 0, 10, '25QTN122W135_C1S7', 1, 1, 7, '2025-08-23 21:30:25', '2025-08-23 21:30:25', NULL),
(559, 122, 400000, 400000, 0, 10, '25QTN122W861_C1S8', 1, 1, 8, '2025-08-23 21:30:25', '2025-08-23 21:30:25', NULL),
(560, 124, 450000, 420000, 7, 8, '25QJN124W227_C7S6', 1, 7, 6, '2025-08-23 21:32:00', '2025-08-24 01:18:31', NULL),
(561, 124, 450000, 420000, 7, 10, '25QJN124W440_C7S7', 1, 7, 7, '2025-08-23 21:32:00', '2025-08-23 21:32:00', NULL),
(562, 125, 450000, 420000, 7, 41, '25QJN125W296_C3S6', 1, 3, 6, '2025-08-23 21:33:23', '2025-08-24 01:27:14', NULL),
(563, 125, 450000, 420000, 7, 50, '25QJN125W380_C3S7', 1, 3, 7, '2025-08-23 21:33:23', '2025-08-23 21:33:23', NULL),
(564, 125, 450000, 420000, 7, 50, '25QJN125W346_C1S6', 1, 1, 6, '2025-08-23 21:33:23', '2025-08-23 21:33:23', NULL),
(565, 125, 450000, 420000, 7, 50, '25QJN125W155_C1S7', 1, 1, 7, '2025-08-23 21:33:23', '2025-08-23 21:33:23', NULL),
(566, 126, 450000, 420000, 7, 5, '25QJN126W893_C3S6', 1, 3, 6, '2025-08-23 21:34:45', '2025-08-25 11:29:02', NULL),
(567, 126, 450000, 420000, 7, 10, '25QJN126W257_C3S7', 1, 3, 7, '2025-08-23 21:34:45', '2025-08-23 21:34:45', NULL),
(568, 126, 450000, 420000, 7, 10, '25QJN126W767_C11S6', 1, 11, 6, '2025-08-23 21:34:45', '2025-08-23 21:34:45', NULL),
(569, 126, 450000, 420000, 7, 10, '25QJN126W927_C11S7', 1, 11, 7, '2025-08-23 21:34:45', '2025-08-23 21:34:45', NULL),
(570, 127, 320000, 300000, 6, 47, '25QJN127W773_C7S6', 1, 7, 6, '2025-08-23 21:35:53', '2025-08-24 01:34:57', NULL),
(571, 127, 320000, 300000, 6, 50, '25QJN127W923_C7S7', 1, 7, 7, '2025-08-23 21:35:53', '2025-08-23 21:35:53', NULL),
(572, 128, 450000, 420000, 7, 9, '25QJN128W472_C7S6', 1, 7, 6, '2025-08-23 21:37:17', '2025-08-24 00:47:08', NULL),
(573, 128, 450000, 420000, 7, 10, '25QJN128W114_C7S7', 1, 7, 7, '2025-08-23 21:37:17', '2025-08-23 21:37:17', NULL),
(574, 129, 450000, 450000, 0, 10, '25QJN129W437_C7S6', 1, 7, 6, '2025-08-23 21:41:53', '2025-08-23 21:41:53', NULL),
(575, 129, 450000, 450000, 0, 10, '25QJN129W521_C7S7', 1, 7, 7, '2025-08-23 21:41:53', '2025-08-23 21:41:53', NULL),
(576, 130, 450000, 420000, 7, 49, '25QJN130W975_C3S6', 1, 3, 6, '2025-08-23 21:43:28', '2025-08-24 00:27:13', NULL),
(577, 130, 450000, 420000, 7, 50, '25QJN130W333_C3S7', 1, 3, 7, '2025-08-23 21:43:28', '2025-08-23 21:43:28', NULL),
(578, 130, 450000, 420000, 7, 50, '25QJN130W695_C8S6', 1, 8, 6, '2025-08-23 21:43:28', '2025-08-23 21:43:28', NULL),
(579, 130, 450000, 420000, 7, 50, '25QJN130W438_C8S7', 1, 8, 7, '2025-08-23 21:43:28', '2025-08-23 21:43:28', NULL),
(580, 131, 450000, 420000, 7, 10, '25QJN131W162_C7S6', 1, 7, 6, '2025-08-23 21:44:46', '2025-08-23 21:44:46', NULL),
(581, 131, 450000, 420000, 7, 10, '25QJN131W504_C7S7', 1, 7, 7, '2025-08-23 21:44:46', '2025-08-23 21:44:46', NULL),
(582, 131, 450000, 420000, 7, 10, '25QJN131W215_C7S8', 1, 7, 8, '2025-08-23 21:44:46', '2025-08-23 21:44:46', NULL),
(583, 132, 450000, 420000, 7, 46, '25QJN132W719_C7S6', 1, 7, 6, '2025-08-23 21:45:51', '2025-08-24 01:03:11', NULL),
(584, 132, 450000, 420000, 7, 50, '25QJN132W461_C7S7', 1, 7, 7, '2025-08-23 21:45:51', '2025-08-23 21:45:51', NULL),
(585, 133, 450000, 420000, 7, 6, '25QKN133W299_C6S6', 1, 6, 6, '2025-08-23 21:52:01', '2025-08-25 11:04:09', NULL),
(586, 133, 450000, 420000, 7, 10, '25QKN133W201_C6S7', 1, 6, 7, '2025-08-23 21:52:01', '2025-08-23 21:52:01', NULL),
(587, 133, 450000, 420000, 7, 10, '25QKN133W118_C6S8', 1, 6, 8, '2025-08-23 21:52:01', '2025-08-23 21:52:01', NULL),
(588, 134, 250000, 200000, 20, 49, '25QKN134W728_C11S6', 1, 11, 6, '2025-08-23 21:54:10', '2025-08-24 00:18:09', NULL),
(589, 134, 250000, 200000, 20, 50, '25QKN134W458_C11S7', 1, 11, 7, '2025-08-23 21:54:10', '2025-08-23 21:54:10', NULL),
(590, 134, 250000, 200000, 20, 50, '25QKN134W423_C1S6', 1, 1, 6, '2025-08-23 21:54:10', '2025-08-23 21:54:10', NULL),
(591, 134, 250000, 200000, 20, 50, '25QKN134W490_C1S7', 1, 1, 7, '2025-08-23 21:54:10', '2025-08-23 21:54:10', NULL),
(592, 135, 500000, 450000, 10, 1, '25QKN135W342_C2S6', 1, 2, 6, '2025-08-23 21:55:21', '2025-08-25 11:07:06', NULL),
(593, 135, 500000, 450000, 10, 10, '25QKN135W647_C2S7', 1, 2, 7, '2025-08-23 21:55:21', '2025-08-23 21:55:21', NULL),
(594, 135, 500000, 450000, 10, 10, '25QKN135W907_C1S6', 1, 1, 6, '2025-08-23 21:55:21', '2025-08-23 21:55:21', NULL),
(595, 135, 500000, 450000, 10, 10, '25QKN135W744_C1S7', 1, 1, 7, '2025-08-23 21:55:21', '2025-08-23 21:55:21', NULL);

--
-- Triggers `product_items`
--
DELIMITER $$
CREATE TRIGGER `product_items_delete_trigger` AFTER DELETE ON `product_items` FOR EACH ROW BEGIN
                UPDATE products
                SET total_inventory = (
                    SELECT COALESCE(SUM(stock), 0)
                    FROM product_items
                    WHERE product_id = OLD.product_id
                )
                WHERE id = OLD.product_id;
            END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `product_items_insert_trigger` AFTER INSERT ON `product_items` FOR EACH ROW BEGIN
                UPDATE products
                SET total_inventory = (
                    SELECT SUM(stock)
                    FROM product_items
                    WHERE product_id = NEW.product_id
                )
                WHERE id = NEW.product_id;
            END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `product_items_update_trigger` AFTER UPDATE ON `product_items` FOR EACH ROW BEGIN
                UPDATE products
                SET total_inventory = (
                    SELECT SUM(stock)
                    FROM product_items
                    WHERE product_id = NEW.product_id
                )
                WHERE id = NEW.product_id;
            END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `return_files`
--

CREATE TABLE `return_files` (
  `id` bigint UNSIGNED NOT NULL,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `return_request_id` bigint UNSIGNED NOT NULL,
  `media_type` enum('video','image') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `upload_by` enum('Customer','Admin') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `return_items`
--

CREATE TABLE `return_items` (
  `id` bigint UNSIGNED NOT NULL,
  `return_request_id` bigint UNSIGNED NOT NULL,
  `order_detail_id` bigint UNSIGNED NOT NULL,
  `quantity` int UNSIGNED NOT NULL,
  `price` int UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `return_requests`
--

CREATE TABLE `return_requests` (
  `id` bigint UNSIGNED NOT NULL,
  `order_id` bigint UNSIGNED NOT NULL,
  `reason` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_label_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` enum('full','partial') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('pending','rejected','accepted','canceled','returning','return_failed','return_completed') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `admin_note` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `accepted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Triggers `return_requests`
--
DELIMITER $$
CREATE TRIGGER `after_update_return_request_status` AFTER UPDATE ON `return_requests` FOR EACH ROW BEGIN
            DECLARE order_point INT DEFAULT 0;
            DECLARE kept_point INT DEFAULT 0;
            DECLARE new_point INT DEFAULT 0;

            -- Chỉ xử lý nếu cập nhật sang trạng thái completed và loại là partial
            IF NEW.status = 'return_completed' AND NEW.type = 'partial' THEN
                
                -- Tính điểm ban đầu của đơn hàng
                SELECT FLOOR((o.total_amount - o.shipping_price) / 10000)
                INTO order_point
                FROM orders o
                WHERE o.id = NEW.order_id;

                -- Tính điểm hoàn hàng
                SELECT FLOOR(SUM(ri.price * ri.quantity) / 10000)
                INTO kept_point
                FROM return_items ri
                WHERE ri.return_request_id = NEW.id;

                -- Tính lại điểm mới
                SELECT mp.point + order_point - kept_point
                INTO new_point
                FROM member_points mp
                WHERE mp.user_id = (
                    SELECT o.user_id FROM orders o WHERE o.id = NEW.order_id
                )
                LIMIT 1;

                -- Cập nhật lại điểm của khách hàng
                UPDATE member_points
                SET 
                    point = new_point,
                    last_order_date = NEW.created_at,
                    `rank` = 
                        CASE
                            WHEN new_point >= 1000 THEN 'diamond'
                            WHEN new_point >= 500 THEN 'gold'
                            WHEN new_point >= 200 THEN 'silver'
                            ELSE 'bronze'
                        END,
                    value = 
                        CASE
                            WHEN new_point >= 1000 THEN 10
                            WHEN new_point >= 500 THEN 5
                            WHEN new_point >= 200 THEN 3
                            ELSE 0
                        END
                WHERE user_id = (
                    SELECT o.user_id FROM orders o WHERE o.id = NEW.order_id
                );
            END IF;
        END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `trg_update_order_when_return_cancel` AFTER UPDATE ON `return_requests` FOR EACH ROW BEGIN
                -- Nếu phiếu hoàn hàng bị hủy
                IF NEW.status = 'canceled' AND OLD.status <> 'canceled' THEN
                    UPDATE orders
                    SET status_order_id = 6   
                    WHERE id = NEW.order_id;
                END IF;
            END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint UNSIGNED NOT NULL,
  `rate` decimal(2,1) NOT NULL,
  `content` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_update` tinyint NOT NULL DEFAULT '0',
  `user_id` bigint UNSIGNED NOT NULL,
  `is_active` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `product_item_id` bigint UNSIGNED DEFAULT NULL,
  `order_detail_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `review_images`
--

CREATE TABLE `review_images` (
  `id` bigint UNSIGNED NOT NULL,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `review_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `review_replies`
--

CREATE TABLE `review_replies` (
  `id` bigint UNSIGNED NOT NULL,
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `review_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `payload` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `shipping_address`
--

CREATE TABLE `shipping_address` (
  `id` bigint UNSIGNED NOT NULL,
  `name_receive` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Vietnam',
  `city` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `district` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ward` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail_address` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_default` tinyint NOT NULL DEFAULT '0',
  `user_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shipping_address`
--

INSERT INTO `shipping_address` (`id`, `name_receive`, `phone`, `country`, `city`, `district`, `ward`, `detail_address`, `is_default`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Garth Mueller II', '032312070', 'Việt Nam', 'Hà Nội', 'Ba Đình', 'Trúc Bạch', 'Ba Đình-Trúc Bạch', 0, 10, '2025-08-23 09:21:12', '2025-08-23 09:21:12'),
(2, 'Eloisa Flatley', '037856927', 'Việt Nam', 'Hồ Chí Minh', 'Quận 1', 'Bến Nghé', 'Quận 1-Bến Nghé', 0, 1, '2025-08-23 09:21:12', '2025-08-23 09:21:12'),
(3, 'Marisa Stehr IV', '038591021', 'Việt Nam', 'Hà Nội', 'Ba Đình', 'Vĩnh Phúc', 'Ba Đình-Vĩnh Phúc', 0, 20, '2025-08-23 09:21:12', '2025-08-23 09:21:12'),
(4, 'Aimee Bode', '034296909', 'Việt Nam', 'Hồ Chí Minh', 'Quận 1', 'Nguyễn Thái Bình', 'Quận 1-Nguyễn Thái Bình', 0, 6, '2025-08-23 09:21:12', '2025-08-23 09:21:12'),
(5, 'Kariane Terry', '036678777', 'Việt Nam', 'Hà Nội', 'Ba Đình', 'Vĩnh Phúc', 'Ba Đình-Vĩnh Phúc', 0, 16, '2025-08-23 09:21:12', '2025-08-23 09:21:12'),
(6, 'Coralie Keebler', '033119163', 'Việt Nam', 'Hà Nội', 'Ba Đình', 'Trúc Bạch', 'Ba Đình-Trúc Bạch', 0, 21, '2025-08-23 09:21:12', '2025-08-23 09:21:12'),
(7, 'Alanna Doyle', '032418159', 'Việt Nam', 'Hồ Chí Minh', 'Quận 1', 'Bến Nghé', 'Quận 1-Bến Nghé', 0, 11, '2025-08-23 09:21:12', '2025-08-23 09:21:12'),
(8, 'Prof. Arjun Bogisich IV', '035484441', 'Việt Nam', 'Hồ Chí Minh', 'Bình Thạnh', 'Phường 2', 'Bình Thạnh-Phường 2', 0, 21, '2025-08-23 09:21:12', '2025-08-23 09:21:12'),
(9, 'Chadrick Leannon', '038995238', 'Việt Nam', 'Hà Nội', 'Hoàn Kiếm', 'Hàng Trống', 'Hoàn Kiếm-Hàng Trống', 0, 10, '2025-08-23 09:21:12', '2025-08-23 09:21:12'),
(10, 'Sylvester Heller IV', '032483637', 'Việt Nam', 'Hà Nội', 'Ba Đình', 'Trúc Bạch', 'Ba Đình-Trúc Bạch', 0, 9, '2025-08-23 09:21:12', '2025-08-23 09:21:12'),
(11, 'Reece Ankunding', '037337953', 'Việt Nam', 'Hà Nội', 'Ba Đình', 'Phúc Xá', 'Ba Đình-Phúc Xá', 0, 21, '2025-08-23 09:21:12', '2025-08-23 09:21:12'),
(12, 'Gilberto Lindgren', '037662419', 'Việt Nam', 'Hà Nội', 'Ba Đình', 'Phúc Xá', 'Ba Đình-Phúc Xá', 0, 20, '2025-08-23 09:21:12', '2025-08-23 09:21:12'),
(13, 'Prof. Percival Hegmann', '036453982', 'Việt Nam', 'Hồ Chí Minh', 'Quận 1', 'Bến Nghé', 'Quận 1-Bến Nghé', 0, 13, '2025-08-23 09:21:12', '2025-08-23 09:21:12'),
(14, 'Rosalia Ortiz', '034369501', 'Việt Nam', 'Hồ Chí Minh', 'Quận 1', 'Nguyễn Thái Bình', 'Quận 1-Nguyễn Thái Bình', 0, 12, '2025-08-23 09:21:12', '2025-08-23 09:21:12'),
(15, 'Alanna Fay', '033882189', 'Việt Nam', 'Hà Nội', 'Ba Đình', 'Vĩnh Phúc', 'Ba Đình-Vĩnh Phúc', 0, 11, '2025-08-23 09:21:12', '2025-08-23 09:21:12'),
(16, 'Hilton Little', '033282601', 'Việt Nam', 'Hà Nội', 'Hoàn Kiếm', 'Cửa Nam', 'Hoàn Kiếm-Cửa Nam', 0, 3, '2025-08-23 09:21:12', '2025-08-23 09:21:12'),
(17, 'Verna Goodwin', '039566538', 'Việt Nam', 'Hà Nội', 'Hoàn Kiếm', 'Cửa Nam', 'Hoàn Kiếm-Cửa Nam', 0, 18, '2025-08-23 09:21:12', '2025-08-23 09:21:12'),
(18, 'Else Carter', '039623600', 'Việt Nam', 'Hồ Chí Minh', 'Bình Thạnh', 'Phường 1', 'Bình Thạnh-Phường 1', 0, 19, '2025-08-23 09:21:12', '2025-08-23 09:21:12'),
(19, 'Ernest Mraz', '038354635', 'Việt Nam', 'Hà Nội', 'Hoàn Kiếm', 'Hàng Trống', 'Hoàn Kiếm-Hàng Trống', 0, 16, '2025-08-23 09:21:12', '2025-08-23 09:21:12'),
(20, 'Derick Johnston', '035993219', 'Việt Nam', 'Hồ Chí Minh', 'Quận 1', 'Nguyễn Thái Bình', 'Quận 1-Nguyễn Thái Bình', 0, 12, '2025-08-23 09:21:12', '2025-08-23 09:21:12'),
(21, 'Pham Hoang', '0392848282', 'Vietnam', 'Tỉnh Hà Giang', 'Thành phố Hà Giang', 'Phường Minh Khai', 'Nhà số 5', 1, 24, '2025-08-23 22:48:48', '2025-08-23 22:48:48'),
(22, 'Pham Hoang', '0392848282', 'Vietnam', 'Tỉnh Bắc Kạn', 'Huyện Ngân Sơn', 'Xã Đức Vân', 'Nhà số 7', 0, 24, '2025-08-23 22:49:03', '2025-08-23 22:49:03'),
(23, 'Pham Hoang', '0392848282', 'Vietnam', 'Tỉnh Hải Dương', 'Huyện Nam Sách', 'Xã An Bình', 'Nhà số 5', 0, 24, '2025-08-23 22:58:21', '2025-08-23 22:58:21'),
(24, 'Pham Hoang', '0392848282', 'Vietnam', 'Tỉnh Vĩnh Phúc', 'Thành phố Phúc Yên', 'Xã Ngọc Thanh', 'Nhà số 5', 0, 24, '2025-08-23 23:01:11', '2025-08-23 23:01:11'),
(25, 'Pham Hoang', '0384727274', 'Vietnam', 'Tỉnh Bắc Ninh', 'Thị xã Quế Võ', 'Phường Bằng An', 'Nhà số 5', 0, 25, '2025-08-23 23:04:30', '2025-08-23 23:08:31'),
(26, 'Pham Hoang', '0392848282', 'Vietnam', 'Tỉnh Quảng Nam', 'Huyện Đại Lộc', 'Xã Đại Đồng', 'Nhà số 5', 0, 25, '2025-08-23 23:05:49', '2025-08-23 23:08:31'),
(27, 'Dinh Minh', '0392848282', 'Vietnam', 'Tỉnh Quảng Ninh', 'Thành phố Cẩm Phả', 'Phường Cẩm Tây', 'Nhà số 5', 1, 25, '2025-08-23 23:08:31', '2025-08-23 23:08:31'),
(28, 'Hoang Anh', '0394837385', 'Vietnam', 'Thành phố Hà Nội', 'Quận Hoàn Kiếm', 'Phường Hàng Buồm', 'Nhà số 5', 0, 26, '2025-08-23 23:12:01', '2025-08-23 23:17:19'),
(29, 'Hoang Anh', '0393834756', 'Vietnam', 'Thành phố Hải Phòng', 'Quận Ngô Quyền', 'Phường Đông Khê', 'Nhà số 5', 0, 26, '2025-08-23 23:13:14', '2025-08-23 23:17:19'),
(30, 'Hoang Anh', '0394837385', 'Vietnam', 'Tỉnh Ninh Bình', 'Thành phố Hoa Lư', 'Phường Nam Thành', 'Nhà số 5', 0, 26, '2025-08-23 23:14:35', '2025-08-23 23:17:19'),
(31, 'Hoang Anh', '0392848282', 'Vietnam', 'Tỉnh Lào Cai', 'Huyện Mường Khương', 'Xã Tả Gia Khâu', 'Nhà số 5', 1, 26, '2025-08-23 23:17:19', '2025-08-23 23:17:19'),
(32, 'Vo Kiet', '0394837385', 'Vietnam', 'Tỉnh Hưng Yên', 'Huyện Yên Mỹ', 'Xã Tân Lập', 'Nhà số 5', 1, 27, '2025-08-23 23:25:24', '2025-08-23 23:25:24'),
(33, 'Pham Hoang', '0394837583', 'Vietnam', 'Tỉnh Cao Bằng', 'Huyện Hà Quảng', 'Xã Đa Thông', 'Nhà số 5', 0, 27, '2025-08-23 23:27:02', '2025-08-23 23:27:02'),
(34, 'Vo kiet', '0394838573', 'Vietnam', 'Tỉnh Điện Biên', 'Huyện Mường Nhé', 'Xã Mường Nhé', 'Nhà số 5', 0, 27, '2025-08-23 23:28:23', '2025-08-23 23:28:23'),
(35, 'Vo Kiet', '0384727274', 'Vietnam', 'Tỉnh Yên Bái', 'Huyện Mù Căng Chải', 'Xã Khao Mang', 'Nhà số 5', 0, 27, '2025-08-23 23:29:21', '2025-08-23 23:29:21'),
(36, 'Tran Han', '0394857385', 'Vietnam', 'Tỉnh Thanh Hóa', 'Huyện Mường Lát', 'Xã Pù Nhi', 'Nhà số 5', 0, 28, '2025-08-23 23:33:09', '2025-08-23 23:38:44'),
(37, 'Tran Han', '0384727274', 'Vietnam', 'Tỉnh Tuyên Quang', 'Huyện Na Hang', 'Xã Yên Hoa', 'Nhà số 5', 0, 28, '2025-08-23 23:34:33', '2025-08-23 23:38:44'),
(38, 'Tran Han', '0394837385', 'Vietnam', 'Tỉnh Bắc Giang', 'Huyện Tân Yên', 'Xã Liên Sơn', 'Nhà số 5', 0, 28, '2025-08-23 23:35:48', '2025-08-23 23:38:44'),
(39, 'Tran Han', '0394837583', 'Vietnam', 'Tỉnh Thái Nguyên', 'Thành phố Sông Công', 'Phường Phố Cò', 'Nhà số 5', 0, 28, '2025-08-23 23:37:21', '2025-08-23 23:38:44'),
(40, 'Tran Han', '0394837583', 'Vietnam', 'Tỉnh Hưng Yên', 'Huyện Văn Giang', 'Xã Long Hưng', 'Nhà số 5', 1, 28, '2025-08-23 23:38:44', '2025-08-23 23:38:44'),
(41, 'Dang Pham', '0394837547', 'Vietnam', 'Tỉnh Nam Định', 'Huyện Nghĩa Hưng', 'Xã Hoàng Nam', 'Nhà số 5', 1, 29, '2025-08-23 23:41:55', '2025-08-23 23:41:55'),
(42, 'Dang Pham', '0394837583', 'Vietnam', 'Tỉnh Tuyên Quang', 'Huyện Hàm Yên', 'Xã Minh Dân', 'Nhà số 5', 0, 29, '2025-08-23 23:42:36', '2025-08-23 23:42:36'),
(43, 'Dang Pham', '0384727274', 'Vietnam', 'Tỉnh Thái Bình', 'Huyện Hưng Hà', 'Xã Hòa Tiến', 'Nhà số 5', 0, 29, '2025-08-23 23:43:16', '2025-08-23 23:43:16'),
(44, 'Dang Pham', '0394838573', 'Vietnam', 'Tỉnh Nghệ An', 'Thị xã Thái Hoà', 'Xã Nghĩa Mỹ', 'Nhà số 5', 0, 29, '2025-08-23 23:43:59', '2025-08-23 23:43:59'),
(45, 'Dang Pham', '0394837583', 'Vietnam', 'Tỉnh Hà Tĩnh', 'Thị xã Hồng Lĩnh', 'Phường Trung Lương', 'Nhà số 5', 0, 29, '2025-08-23 23:45:16', '2025-08-23 23:45:16'),
(46, 'Hong Ha', '0384727274', 'Vietnam', 'Tỉnh Phú Thọ', 'Huyện Đoan Hùng', 'Xã Chí Đám', 'Nhà số 5', 0, 30, '2025-08-24 00:02:55', '2025-08-24 00:09:00'),
(47, 'Hong Ha', '0394837385', 'Vietnam', 'Tỉnh Hà Giang', 'Huyện Đồng Văn', 'Xã Lũng Táo', 'Nhà số 5', 0, 30, '2025-08-24 00:06:53', '2025-08-24 00:09:00'),
(48, 'Hong Ha', '0394837583', 'Vietnam', 'Tỉnh Sơn La', 'Huyện Thuận Châu', 'Xã Chiềng Ngàm', 'Nhà số 5', 0, 30, '2025-08-24 00:07:44', '2025-08-24 00:09:00'),
(49, 'Hong Ha', '0394838573', 'Vietnam', 'Tỉnh Bắc Kạn', 'Huyện Ba Bể', 'Xã Khang Ninh', 'Nhà số 5', 0, 30, '2025-08-24 00:08:24', '2025-08-24 00:09:00'),
(50, 'Hong Ha', '0384727274', 'Vietnam', 'Tỉnh Điện Biên', 'Thị Xã Mường Lay', 'Phường Na Lay', 'Nhà số 5', 1, 30, '2025-08-24 00:09:00', '2025-08-24 00:09:00'),
(51, 'Hong Ha', '0394837583', 'Vietnam', 'Tỉnh Hoà Bình', 'Huyện Lương Sơn', 'Xã Cư Yên', 'Nhà số 5', 0, 30, '2025-08-24 00:10:09', '2025-08-24 00:10:09'),
(52, 'Hoang An', '0384727274', 'Vietnam', 'Tỉnh Quảng Bình', 'Huyện Tuyên Hóa', 'Xã Thuận Hóa', 'Nhà số 5', 0, 31, '2025-08-24 00:15:06', '2025-08-24 00:19:25'),
(53, 'Hoang An', '0394837583', 'Vietnam', 'Tỉnh Quảng Trị', 'Huyện Vĩnh Linh', 'Xã Trung Nam', 'Nhà số 5', 0, 31, '2025-08-24 00:15:47', '2025-08-24 00:19:25'),
(54, 'Hoa An', '0394837385', 'Vietnam', 'Tỉnh Lâm Đồng', 'Huyện Đam Rông', 'Xã Rô Men', 'Nhà số 5', 0, 31, '2025-08-24 00:16:33', '2025-08-24 00:19:25'),
(55, 'Hoang An', '0394837385', 'Vietnam', 'Thành phố Đà Nẵng', 'Quận Thanh Khê', 'Phường Xuân Hà', 'Nhà số 5', 0, 31, '2025-08-24 00:17:19', '2025-08-24 00:19:25'),
(56, 'Hoa an', '0394837583', 'Vietnam', 'Thành phố Huế', 'Thị xã Phong Điền', 'Phường Phong Hải', 'Nhà số 5', 0, 31, '2025-08-24 00:18:05', '2025-08-24 00:19:25'),
(57, 'Hoang An', '0384727274', 'Vietnam', 'Tỉnh Quảng Nam', 'Huyện Đông Giang', 'Xã Ba', 'Nhà số 5', 1, 31, '2025-08-24 00:19:25', '2025-08-24 00:19:25'),
(58, 'Tuan kiet', '0394837583', 'Vietnam', 'Tỉnh Kon Tum', 'Huyện Ngọc Hồi', 'Xã Đắk Kan', 'Nhà số 5', 1, 32, '2025-08-24 00:23:22', '2025-08-24 00:23:22'),
(59, 'Tuan kiet', '0392848282', 'Vietnam', 'Tỉnh Đồng Tháp', 'Thành phố Sa Đéc', 'Phường An Hoà', 'Nhà số 5', 0, 32, '2025-08-24 00:24:07', '2025-08-24 00:24:07'),
(60, 'Tuan kiet', '0394837385', 'Vietnam', 'Tỉnh Đắk Nông', 'Huyện Cư Jút', 'Xã Tâm Thắng', 'Nhà số 5', 0, 32, '2025-08-24 00:24:42', '2025-08-24 00:24:42'),
(61, 'Pham Hoang', '0394837583', 'Vietnam', 'Tỉnh Lâm Đồng', 'Huyện Đam Rông', 'Xã Phi Liêng', 'Nhà số 5', 0, 32, '2025-08-24 00:25:18', '2025-08-24 00:25:18'),
(62, 'Tuan Kiet', '0394837583', 'Vietnam', 'Tỉnh Bình Định', 'Thị xã Hoài Nhơn', 'Phường Tam Quan Bắc', 'Nhà số 5', 0, 32, '2025-08-24 00:26:13', '2025-08-24 00:26:13'),
(63, 'tuan kiet', '0392848282', 'Vietnam', 'Tỉnh Hậu Giang', 'Huyện Châu Thành A', 'Thị trấn Rạch Gòi', 'Nhà số 5', 0, 32, '2025-08-24 00:27:09', '2025-08-24 00:27:09'),
(64, 'Thi Ha', '0392848282', 'Vietnam', 'Tỉnh Vĩnh Long', 'Huyện Mang Thít', 'Xã Long Mỹ', 'Nhà số 5', 1, 33, '2025-08-24 00:32:04', '2025-08-24 00:32:04'),
(65, 'Thi ha', '0392848282', 'Vietnam', 'Tỉnh Phú Yên', 'Huyện Đồng Xuân', 'Xã Xuân Quang 1', 'Nhà số 5', 0, 33, '2025-08-24 00:32:49', '2025-08-24 00:32:49'),
(66, 'Thi ha', '0394838573', 'Vietnam', 'Tỉnh Bà Rịa - Vũng Tàu', 'Huyện Châu Đức', 'Xã Sơn Bình', 'Nhà số 5', 0, 33, '2025-08-24 00:33:34', '2025-08-24 00:33:34'),
(67, 'Thi ha', '0384727274', 'Vietnam', 'Tỉnh Sóc Trăng', 'Huyện Kế Sách', 'Xã Trinh Phú', 'Nhà số 5', 0, 33, '2025-08-24 00:34:24', '2025-08-24 00:34:24'),
(68, 'Thi ha', '0384727274', 'Vietnam', 'Tỉnh Đồng Tháp', 'Thành phố Sa Đéc', 'Xã Tân Khánh Đông', 'Nhà số 5', 0, 33, '2025-08-24 00:35:12', '2025-08-24 00:35:12'),
(69, 'Thi ha', '0394857463', 'Vietnam', 'Tỉnh Trà Vinh', 'Huyện Châu Thành', 'Xã Lương Hòa', 'Nhà số 5', 0, 33, '2025-08-24 00:36:43', '2025-08-24 00:36:43'),
(70, 'Pham lien', '0384727274', 'Vietnam', 'Tỉnh Cà Mau', 'Huyện U Minh', 'Xã Khánh An', 'Nhà số 5', 1, 34, '2025-08-24 00:44:00', '2025-08-24 00:44:00'),
(71, 'Pham lien', '0384727274', 'Vietnam', 'Tỉnh Lâm Đồng', 'Huyện Lạc Dương', 'Xã Đạ Nhim', 'Nhà số 5', 0, 34, '2025-08-24 00:44:41', '2025-08-24 00:44:41'),
(72, 'Pham lien', '0384727274', 'Vietnam', 'Tỉnh Khánh Hòa', 'Huyện Vạn Ninh', 'Xã Vạn Thọ', 'Nhà số 5', 0, 34, '2025-08-24 00:45:26', '2025-08-24 00:45:26'),
(73, 'Pham lien', '0394837583', 'Vietnam', 'Tỉnh Gia Lai', 'Huyện Đăk Đoa', 'Xã Kon Gang', 'Nhà số 5', 0, 34, '2025-08-24 00:46:26', '2025-08-24 00:46:26'),
(74, 'Pham lien', '0394837385', 'Vietnam', 'Tỉnh Bến Tre', 'Huyện Chợ Lách', 'Xã Long Thới', 'Nhà số 5', 0, 34, '2025-08-24 00:47:05', '2025-08-24 00:47:05'),
(75, 'Pham lien', '0392848282', 'Vietnam', 'Thành phố Cần Thơ', 'Quận Cái Răng', 'Phường Hưng Phú', 'Nhà số 5', 0, 34, '2025-08-24 00:48:08', '2025-08-24 00:48:08'),
(76, 'Dinh Thinh', '0384727274', 'Vietnam', 'Thành phố Hồ Chí Minh', 'Quận Gò Vấp', 'Phường 14', 'Nhà số 5', 1, 35, '2025-08-24 00:59:40', '2025-08-24 00:59:40'),
(77, 'Dinh Thinh', '0394837583', 'Vietnam', 'Tỉnh Bạc Liêu', 'Huyện Phước Long', 'Xã Phong Thạnh Tây A', 'Nhà số 5', 0, 35, '2025-08-24 01:00:26', '2025-08-24 01:00:26'),
(78, 'Dinh Thinh', '0394847545', 'Vietnam', 'Tỉnh Long An', 'Huyện Tân Hưng', 'Xã Vĩnh Thạnh', 'Nhà số 5', 0, 35, '2025-08-24 01:01:16', '2025-08-24 01:01:16'),
(79, 'Dinh Thinh', '0384727274', 'Vietnam', 'Tỉnh An Giang', 'Huyện An Phú', 'Xã Phú Hội', 'Nhà số 7', 0, 35, '2025-08-24 01:02:05', '2025-08-24 01:02:05'),
(80, 'Dinh Thinh', '0384727274', 'Vietnam', 'Tỉnh Đồng Nai', 'Thành phố Long Khánh', 'Phường Suối Tre', 'Nhà số 5', 0, 35, '2025-08-24 01:03:08', '2025-08-24 01:03:08'),
(81, 'Dinh Thinh', '0384727274', 'Vietnam', 'Tỉnh Bình Phước', 'Thành phố Đồng Xoài', 'Xã Tân Thành', 'Nhà số 5', 0, 35, '2025-08-24 01:04:21', '2025-08-24 01:04:21'),
(82, 'linh nam', '0394837583', 'Vietnam', 'Tỉnh Hoà Bình', 'Huyện Lương Sơn', 'Xã Cao Sơn', 'Nhà số 5', 1, 36, '2025-08-24 01:13:07', '2025-08-24 01:13:07'),
(83, 'linh nam', '0394847545', 'Vietnam', 'Tỉnh Ninh Bình', 'Huyện Gia Viễn', 'Xã Gia Phú', 'Nhà số 5', 0, 36, '2025-08-24 01:14:17', '2025-08-24 01:14:17'),
(84, 'linh nam', '0392848282', 'Vietnam', 'Tỉnh Yên Bái', 'Huyện Lục Yên', 'Xã Minh Chuẩn', 'Nhà số 5', 0, 36, '2025-08-24 01:17:46', '2025-08-24 01:17:46'),
(85, 'linh nam', '0394847454', 'Vietnam', 'Tỉnh Bắc Kạn', 'Huyện Ngân Sơn', 'Thị trấn Vân Tùng', 'Nhà số 5', 0, 36, '2025-08-24 01:18:27', '2025-08-24 01:18:27'),
(86, 'linh nam', '0384727274', 'Vietnam', 'Tỉnh Nghệ An', 'Huyện Quế Phong', 'Xã Nậm Giải', 'Nhà số 5', 0, 36, '2025-08-24 01:19:07', '2025-08-24 01:19:07'),
(87, 'linh nam', '0392848282', 'Vietnam', 'Tỉnh Bắc Giang', 'Huyện Yên Thế', 'Xã Đồng Tâm', 'Nhà số 7', 0, 36, '2025-08-24 01:20:10', '2025-08-24 01:20:10'),
(88, 'hong bang', '0384727274', 'Vietnam', 'Tỉnh Thái Bình', 'Huyện Hưng Hà', 'Xã Hòa Tiến', 'Nhà số 5', 1, 37, '2025-08-24 01:25:00', '2025-08-24 01:25:00'),
(89, 'hong bang', '0384727274', 'Vietnam', 'Tỉnh Ninh Bình', 'Huyện Gia Viễn', 'Xã Gia Phú', 'Nhà số 5', 0, 37, '2025-08-24 01:25:46', '2025-08-24 01:25:46'),
(90, 'hong bang', '0384727274', 'Vietnam', 'Thành phố Hải Phòng', 'Quận Lê Chân', 'Phường Hàng Kênh', 'Nhà số 5', 0, 37, '2025-08-24 01:26:28', '2025-08-24 01:26:28'),
(91, 'hong bang', '0392848282', 'Vietnam', 'Tỉnh Lạng Sơn', 'Huyện Tràng Định', 'Xã Tri Phương', 'Nhà số 5', 0, 37, '2025-08-24 01:27:07', '2025-08-24 01:27:07'),
(92, 'hong bang', '0384727274', 'Vietnam', 'Tỉnh Bắc Kạn', 'Huyện Ba Bể', 'Xã Nam Mẫu', 'Nhà số 5', 0, 37, '2025-08-24 01:27:45', '2025-08-24 01:27:45'),
(93, 'hong bang', '0392848282', 'Vietnam', 'Tỉnh Quảng Bình', 'Huyện Minh Hóa', 'Xã Hóa Hợp', 'Nhà số 5', 0, 37, '2025-08-24 01:28:20', '2025-08-24 01:28:20'),
(94, 'thien linh', '0392848282', 'Vietnam', 'Tỉnh Lai Châu', 'Huyện Mường Tè', 'Xã Pa Vệ Sử', 'Nhà số 5', 1, 38, '2025-08-24 01:33:09', '2025-08-24 01:33:09'),
(95, 'thien linh', '0394837385', 'Vietnam', 'Thành phố Huế', 'Thị xã Phong Điền', 'Phường Phong Hòa', 'Nhà số 5', 0, 38, '2025-08-24 01:33:51', '2025-08-24 01:33:51'),
(96, 'thien linh', '0384727274', 'Vietnam', 'Tỉnh Hà Tĩnh', 'Thị xã Hồng Lĩnh', 'Phường Bắc Hồng', 'Nhà số 5', 0, 38, '2025-08-24 01:34:53', '2025-08-24 01:34:53'),
(97, 'thien linh', '0394838573', 'Vietnam', 'Tỉnh Bắc Giang', 'Huyện Tân Yên', 'Xã Phúc Hòa', 'Nhà số 5', 0, 38, '2025-08-24 01:35:31', '2025-08-24 01:35:31'),
(98, 'thien linh', '0394837385', 'Vietnam', 'Tỉnh Vĩnh Phúc', 'Thành phố Phúc Yên', 'Xã Cao Minh', 'Nhà số 5', 0, 38, '2025-08-24 01:36:16', '2025-08-24 01:36:16'),
(99, 'Pham dat', '0394837583', 'Vietnam', 'Tỉnh Yên Bái', 'Huyện Lục Yên', 'Xã Minh Chuẩn', 'Nhà số 5', 1, 39, '2025-08-24 02:07:26', '2025-08-24 02:07:26'),
(100, 'tuan', '0384727274', 'Vietnam', 'Thành phố Hà Nội', 'Quận Tây Hồ', 'Phường Xuân La', 'Nhà số 5', 1, 40, '2025-08-24 02:12:45', '2025-08-24 02:12:45'),
(101, 'Nam Dinh Phạm', '0396036363', 'Vietnam', 'Tỉnh Cao Bằng', 'Huyện Bảo Lâm', 'Xã Vĩnh Quang', '`112sada', 1, 41, '2025-08-25 06:57:30', '2025-08-25 06:57:30'),
(102, 'Cuong Pham', '0898645512', 'Vietnam', 'Tỉnh Hà Giang', 'Huyện Đồng Văn', 'Xã Má Lé', '234 Phạm Văn Đồng', 0, 23, '2025-08-25 10:55:46', '2025-08-25 11:01:16'),
(103, 'Cuong Pham', '0898645512', 'Vietnam', 'Thành phố Huế', 'Quận Thuận Hóa', 'Phường Phường Đúc', '27A1-A', 1, 23, '2025-08-25 11:01:12', '2025-08-25 11:01:16'),
(104, 'Cuong Pham', '0898645512', 'Vietnam', 'Tỉnh Thanh Hóa', 'Huyện Mường Lát', 'Xã Mường Lý', '234 rừng thông', 1, 42, '2025-08-25 11:47:14', '2025-08-25 11:47:14');

-- --------------------------------------------------------

--
-- Table structure for table `sizes`
--

CREATE TABLE `sizes` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sizes`
--

INSERT INTO `sizes` (`id`, `name`, `is_active`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'S', 1, '2025-08-23 09:21:12', '2025-08-23 09:21:12', NULL),
(2, 'M', 1, '2025-08-23 09:21:12', '2025-08-23 09:21:12', NULL),
(3, 'L', 1, '2025-08-23 09:21:12', '2025-08-23 09:21:12', NULL),
(4, 'XL', 1, '2025-08-23 09:21:12', '2025-08-23 09:21:12', NULL),
(5, 'XXL', 1, '2025-08-23 09:21:12', '2025-08-23 09:21:12', NULL),
(6, '29', 1, '2025-08-23 12:30:42', '2025-08-23 12:30:42', NULL),
(7, '30', 1, '2025-08-23 12:30:45', '2025-08-23 12:30:45', NULL),
(8, '31', 1, '2025-08-23 12:30:59', '2025-08-23 12:30:59', NULL),
(9, '32', 1, '2025-08-23 12:31:01', '2025-08-23 12:31:01', NULL),
(10, '33', 1, '2025-08-23 12:31:04', '2025-08-23 12:31:04', NULL),
(11, '34', 1, '2025-08-23 12:31:08', '2025-08-23 12:31:08', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `status_orders`
--

CREATE TABLE `status_orders` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `status_orders`
--

INSERT INTO `status_orders` (`id`, `name`, `color`, `created_at`, `updated_at`) VALUES
(1, 'Chờ xác nhận', '#6c757d', '2025-09-02 11:15:58', '2025-09-02 11:15:58'),
(2, 'Đang chuẩn bị hàng', '#0d6efd', '2025-09-02 11:15:58', '2025-09-02 11:15:58'),
(3, 'Đang giao hàng', '#ffc107', '2025-09-02 11:15:58', '2025-09-02 11:15:58'),
(4, 'Đã giao hàng', '#ffc107', '2025-09-02 11:15:58', '2025-09-02 11:15:58'),
(5, 'Giao hàng thất bại', '#198754', '2025-09-02 11:15:58', '2025-09-02 11:15:58'),
(6, 'Hoàn thành', '#0dcaf0', '2025-09-02 11:15:58', '2025-09-02 11:15:58'),
(7, 'Đã hủy', '#dc3545', '2025-09-02 11:15:58', '2025-09-02 11:15:58'),
(8, 'Đang xử lý yêu cầu', '#ffc107', '2025-09-02 11:15:58', '2025-09-02 11:15:58'),
(9, 'Đang hoàn hàng', '#17a2b8', '2025-09-02 11:15:58', '2025-09-02 11:15:58'),
(10, 'Đã hoàn hàng một phần', '#0dcaf0', '2025-09-02 11:15:58', '2025-09-02 11:15:58'),
(11, 'Đã hoàn hàng toàn phần', '#28a745', '2025-09-02 11:15:58', '2025-09-02 11:15:58'),
(12, 'Hoàn hàng thất bại', '#dc3545', '2025-09-02 11:15:58', '2025-09-02 11:15:58');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `phone` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` enum('Nam','Nữ') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` enum('Customer','Admin') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Customer',
  `is_ban` tinyint NOT NULL DEFAULT '0',
  `is_active` tinyint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `avatar`, `birthday`, `phone`, `gender`, `role`, `is_ban`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'phamnamgenzno1@gmail.com', '$2y$12$qZ4RhVJvlXIlwBBHieLepO5NFF8OTF3LLJAl67Q1kzLQEMxpVGiwu', 'https://via.placeholder.com/640x480.png/0022dd?text=people+consequatur', '1993-08-01', '038084645', 'Nữ', 'Admin', 0, 1, '2025-08-23 09:21:07', '2025-08-25 06:59:55'),
(2, 'Mohammed Trantow', 'nward@west.com', '$2y$12$Tu.DliJ4NqJdas/NPriCzOwsbvvujUZbKhOkEXg70le1n0hyWD5pm', 'https://via.placeholder.com/640x480.png/000000?text=people+nesciunt', '2001-07-13', '032949828', 'Nữ', 'Customer', 0, 0, '2025-08-23 09:21:08', '2025-08-23 09:21:08'),
(3, 'Mittie Predovic', 'ohane@damore.biz', '$2y$12$0hmoEwho2FgTDUN/Bw8Vau9JJfaiPBINPtJ0hq3H7GOw71zu.fVqS', 'https://via.placeholder.com/640x480.png/00aa88?text=people+sapiente', '1984-12-09', '032792768', 'Nam', 'Customer', 0, 0, '2025-08-23 09:21:08', '2025-08-23 09:21:08'),
(4, 'Misty O\'Keefe', 'littel.jerrod@yahoo.com', '$2y$12$qsx49L/u8e4zpG71ooHnEOJa1F5Ztol8udH9M7F9bnu1ZcFpK65IO', 'https://via.placeholder.com/640x480.png/005511?text=people+quia', '1990-09-25', '032446279', 'Nữ', 'Customer', 0, 0, '2025-08-23 09:21:08', '2025-08-23 09:21:08'),
(5, 'Emmet Kutch', 'remmerich@monahan.org', '$2y$12$0DQps11cVeHRoYrKNoqTtuUBYqZnjIr9CzXAqpxRuq0Z7ME81gqjq', 'https://via.placeholder.com/640x480.png/0055ff?text=people+nisi', '1983-09-26', '038658212', 'Nam', 'Customer', 0, 0, '2025-08-23 09:21:08', '2025-08-23 09:21:08'),
(6, 'Alex Pacocha', 'harmon25@collins.com', '$2y$12$vXl.QyoU2AibKtq8BNuhBONF7JI8spU./X5ISynf/V/IkaWm36AP2', 'https://via.placeholder.com/640x480.png/00aa77?text=people+maxime', '2009-05-10', '037493089', 'Nam', 'Customer', 0, 0, '2025-08-23 09:21:08', '2025-08-23 09:21:08'),
(7, 'Claire Larson', 'sage38@hotmail.com', '$2y$12$NZ7JIWCCrlIVsslDF/5W6uByG0ygNDDwp8dOGeULJxXVeQyv.ZNpm', 'https://via.placeholder.com/640x480.png/006633?text=people+rerum', '1972-10-19', '032960506', 'Nam', 'Customer', 0, 0, '2025-08-23 09:21:09', '2025-08-23 09:21:09'),
(8, 'Earlene Nienow', 'anita.ziemann@hotmail.com', '$2y$12$759gJ3EEfvwF5tCTdPXJr.6U8R6XNKod2X.KLS4s2PaSQ/Epyn.aO', 'https://via.placeholder.com/640x480.png/006611?text=people+inventore', '1997-06-05', '036922963', 'Nam', 'Customer', 0, 0, '2025-08-23 09:21:09', '2025-08-23 09:21:09'),
(9, 'Tod Marquardt', 'rosalinda.ruecker@hoppe.com', '$2y$12$vepkjjG/yegJJZ7bYgl.mO.tUImd.zxn7Im.bfRhMC.4Mpp1VBtK.', 'https://via.placeholder.com/640x480.png/00ff22?text=people+est', '2015-07-16', '038605181', 'Nữ', 'Customer', 0, 0, '2025-08-23 09:21:09', '2025-08-23 09:21:09'),
(10, 'Mrs. Daniella Walsh MD', 'lockman.darius@koelpin.biz', '$2y$12$ZeQJYpZ1zfv8HvZcEOlGVO7ySTHsyqt8qSfmDxh6IJlzm.zrJba.6', 'https://via.placeholder.com/640x480.png/0066cc?text=people+molestiae', '2001-05-20', '034089153', 'Nữ', 'Customer', 0, 0, '2025-08-23 09:21:09', '2025-08-23 09:21:09'),
(11, 'Nyah Orn', 'art.quitzon@goldner.biz', '$2y$12$l3cqb4p85cG581l2qj35B.vv0S7gEJ47pFNhlZ8qnkzqETl0oVtCi', 'https://via.placeholder.com/640x480.png/0077aa?text=people+velit', '2016-04-26', '039553208', 'Nam', 'Customer', 0, 0, '2025-08-23 09:21:09', '2025-08-23 09:21:09'),
(12, 'Ericka Wyman', 'leonardo.hackett@yahoo.com', '$2y$12$dpaJvg92qj/1J0uWNTcK0uM4N9fkjW3rRqz1SUGU4wmOW9XOGs24u', 'https://via.placeholder.com/640x480.png/006655?text=people+ullam', '2024-02-23', '033423789', 'Nam', 'Customer', 0, 0, '2025-08-23 09:21:10', '2025-08-23 09:21:10'),
(13, 'Fritz Keebler III', 'winifred.lubowitz@baumbach.com', '$2y$12$UScmrYyIO/95lVpoC4tap.x7fIko1PDfNlSl4MhbbZkFWMqapfNyG', 'https://via.placeholder.com/640x480.png/00aabb?text=people+asperiores', '2007-02-07', '035278755', 'Nữ', 'Customer', 0, 0, '2025-08-23 09:21:10', '2025-08-23 09:21:10'),
(14, 'Halle Gottlieb', 'erenner@hotmail.com', '$2y$12$78eXepCu1nk9g/61s0g6buPoF84XgHqAaTblkXnpHe3Z/p87JwWOK', 'https://via.placeholder.com/640x480.png/00ccdd?text=people+maiores', '1986-09-28', '038499412', 'Nữ', 'Customer', 0, 0, '2025-08-23 09:21:10', '2025-08-23 09:21:10'),
(15, 'Ian Terry MD', 'trever.volkman@gmail.com', '$2y$12$X4X08q974fdECfdYKmdtWeB71ww87b.21wGGXhKiuGWfO3.y2qzf6', 'https://via.placeholder.com/640x480.png/008899?text=people+ullam', '1987-04-22', '039190243', 'Nữ', 'Customer', 0, 0, '2025-08-23 09:21:10', '2025-08-23 09:21:10'),
(16, 'Keara Kunde', 'zking@schulist.com', '$2y$12$cMAEjVHGlZeWYLs83SyEduN7GEVLBdFpjnlVWpdBvRG4BT4Ldoaoy', 'https://via.placeholder.com/640x480.png/00bbcc?text=people+occaecati', '1974-05-05', '038494206', 'Nữ', 'Customer', 0, 0, '2025-08-23 09:21:11', '2025-08-23 09:21:11'),
(17, 'Miss Jolie Volkman', 'garnet95@bayer.com', '$2y$12$b9NZDt7vZWqr1uunQuUuqOK4D31u1.D1XByj2n4JMMI.M6uA3Ooie', 'https://via.placeholder.com/640x480.png/0055ee?text=people+rerum', '1974-10-20', '032816429', 'Nam', 'Customer', 0, 0, '2025-08-23 09:21:11', '2025-08-23 09:21:11'),
(18, 'Mr. Howard Reichel', 'lysanne.white@rolfson.org', '$2y$12$e2XI5YGG8MCGW2Kb6A8Qs.z7y3aXpwCd/dYRZi//gwNGvSoqg0Z5q', 'https://via.placeholder.com/640x480.png/009966?text=people+eum', '2022-07-28', '039719713', 'Nam', 'Customer', 0, 0, '2025-08-23 09:21:11', '2025-08-23 09:21:11'),
(19, 'Prof. Eriberto Dach DVM', 'waldo.mcclure@gmail.com', '$2y$12$M7FjI1L3jf/g0G8b3z2C5.U6rqgomrUzOe7PdjgbDrHqIcsjA4uU6', 'https://via.placeholder.com/640x480.png/000099?text=people+labore', '1977-04-02', '037298368', 'Nữ', 'Customer', 0, 0, '2025-08-23 09:21:11', '2025-08-23 09:21:11'),
(20, 'Sigrid Reichel', 'bklocko@gmail.com', '$2y$12$O6nq6/8LpPvZK6xrkZb6WuvGaEOYz1inmO9gZMmNabDSgDB9YXyXq', 'https://via.placeholder.com/640x480.png/00bb44?text=people+officiis', '2010-12-24', '037831522', 'Nữ', 'Customer', 0, 0, '2025-08-23 09:21:11', '2025-08-23 09:21:11'),
(21, 'Bernita Weimann DDS', 'kolby13@hauck.com', '$2y$12$m4xW3m2p2bQiKmoLPMAHjOTAEPoWse9rlej2xIxox2ZkUiWY/kWte', 'https://via.placeholder.com/640x480.png/0055ee?text=people+repellendus', '2021-02-13', '039943877', 'Nữ', 'Customer', 0, 0, '2025-08-23 09:21:12', '2025-08-23 09:21:12'),
(22, 'Admin', 'admin@gmail.com', '$2y$12$TAq2O.pyV5FR5OYMQH5wTODhMazIvdO1yEtHo41m5.lMFpo4aITya', NULL, NULL, '0541244452', NULL, 'Admin', 0, 1, '2025-08-23 09:22:15', '2025-08-23 09:22:15'),
(23, 'Pham Cuong', '1210.curly@gmail.com', '$2y$12$ymBjXZgIn7LqOX8Nd6Wlb.pyDsRPZnTqrqI24M5VuGbambCej8uIW', NULL, NULL, '0898645513', NULL, 'Customer', 0, 1, '2025-08-23 09:34:26', '2025-08-23 09:34:26'),
(24, 'Pham Hoang', 'hoangpp123@gmail.com', '$2y$12$Ry4rbVlFQUvIXe2YeGYm8u1tLM5TK.1poIq/F7pIkP.IDQFk/q7OS', 'avatars/qtxarfdxnmxz8mplmvad', NULL, '0392848282', NULL, 'Customer', 0, 1, '2025-08-23 22:47:17', '2025-08-23 22:59:42'),
(25, 'Dinh Minh', 'dinhminh@gmail.com', '$2y$12$EqFeVlcAp4MlzYFtOniMoeNpeS6FiWTTCGHotmjw80vCN/7SGVgS6', NULL, NULL, '0375636573', NULL, 'Customer', 0, 1, '2025-08-23 23:03:11', '2025-08-23 23:03:11'),
(26, 'Hoang Anh', 'hoanganh@gmail.com', '$2y$12$D3D7nN2Yk/YNq/jFdYy8iuSZm87ZVOq4Lv41E6.sjanjTJ8.mnV.S', NULL, NULL, '0394838573', NULL, 'Customer', 0, 1, '2025-08-23 23:11:05', '2025-08-23 23:11:05'),
(27, 'Vo kiet', 'vokiet123@gmail.com', '$2y$12$DrgYAktlsVA38AEctSKp4O/Pt4/S0KH7NDi7Nlrmsk8NnCN8PTxwu', NULL, NULL, '0384757372', NULL, 'Customer', 0, 1, '2025-08-23 23:20:13', '2025-08-23 23:20:13'),
(28, 'Tran Han', 'tranhan342@gmail.com', '$2y$12$HByaue2V14WsXeOMOkOqne2myb2rbvg0N.IPCBLwfLuhcOHtjaV/O', NULL, NULL, '0348573958', NULL, 'Customer', 0, 1, '2025-08-23 23:31:53', '2025-08-23 23:31:53'),
(29, 'Dang Pham', 'dangpham209@gmail.com', '$2y$12$IheDf5dth/N6i9V7m0FFY.p7R3GQ5Wizxz5e6OW0sxpFaDBO0I50y', NULL, NULL, '0348575464', NULL, 'Customer', 0, 1, '2025-08-23 23:40:56', '2025-08-23 23:40:56'),
(30, 'Hong Ha', 'hongha567@gmail.com', '$2y$12$4CS7iqTVth8/9jjakSiBt.o7Z9vfFk3VCpz2m/aNSHjT8ejpG5kby', NULL, NULL, '0395837385', NULL, 'Customer', 0, 1, '2025-08-23 23:58:55', '2025-08-23 23:58:55'),
(31, 'Hoa an', 'hoaan123@gmail.com', '$2y$12$L09WSkh6ilqlMyb83S45nOXUa4oH1sNF24Y3U592.mHOinqyU7/qS', NULL, NULL, '0394758475', NULL, 'Customer', 0, 1, '2025-08-24 00:13:57', '2025-08-24 00:13:57'),
(32, 'Tuan Kiet', 'tuankiet342@gmail.com', '$2y$12$QkwK12MOgdcS9vZ3NC8C7e5Mz9shVWM1/IoUCiLXcwbEPj3olM6ti', NULL, NULL, '0394857373', NULL, 'Customer', 0, 1, '2025-08-24 00:22:04', '2025-08-24 00:22:04'),
(33, 'Thi Ha', 'thiha567@gmail.com', '$2y$12$By9o8jHzjBwSL9oIQZyO8eBvH1QeajEFLEi9lzFneLcnY/wpggN96', NULL, NULL, '0395847684', NULL, 'Customer', 0, 1, '2025-08-24 00:31:09', '2025-08-24 00:31:09'),
(34, 'Pham Lien', 'phamlien2393@gmail.com', '$2y$12$i9WP6.EvRA2ouwQCFgpp9.MMHgro2toJu6kY/O3WWSkbh1UiRdcMe', NULL, NULL, '0395847674', NULL, 'Customer', 0, 1, '2025-08-24 00:43:12', '2025-08-24 00:43:12'),
(35, 'Dinh Thinh', 'dinhthinh233@gmail.com', '$2y$12$RU07omM9xCfBBw4ATEqcGu14Bgapsc40Fwbqm3t406.zP9nfsrQhK', NULL, NULL, '0395847548', NULL, 'Customer', 0, 1, '2025-08-24 00:58:49', '2025-08-24 00:58:49'),
(36, 'linh nam', 'linhnam293@gmail.com', '$2y$12$7/1/7vJa8Al4e4F4lStXluPppKOQHaOjrbRIrikUA8LN2SxBIbQzm', NULL, NULL, '0394837583', NULL, 'Customer', 0, 1, '2025-08-24 01:08:33', '2025-08-24 01:08:33'),
(37, 'Hong bang', 'hongbang232@gmail.com', '$2y$12$WGxSDnIFNBYYMoHQHthyU.Sc//TKYIV2TLqkv7nmqckt/lyB6OR3m', NULL, NULL, '0384727274', NULL, 'Customer', 0, 1, '2025-08-24 01:23:47', '2025-08-24 01:23:47'),
(38, 'thien linh', 'thienlinh343@gmail.com', '$2y$12$V3HwnJfgKQaiGbj6et9Ouecr8XfF935xFJbQpjXBuGkFdUIQh1Zre', NULL, NULL, '0397383746', NULL, 'Customer', 0, 1, '2025-08-24 01:32:05', '2025-08-24 01:32:05'),
(39, 'Phạm Đạt', 'phamdat@gmail.com', '$2y$12$OvniHTS2aYTyQWxhTA3A0.HQDHrlaIsQWH8jdUtIaTOQERQn9FP5u', NULL, NULL, '0394837374', NULL, 'Customer', 0, 1, '2025-08-24 02:06:31', '2025-08-24 02:06:31'),
(40, 'Tuan', 'tuantt@gmail.com', '$2y$12$CHJMDexhK0Q2a3KBTjYetulWVYFdAd62WgFykItIFStNFoqpz0NgK', NULL, NULL, '0293847373', NULL, 'Customer', 0, 1, '2025-08-24 02:12:07', '2025-08-24 02:12:07'),
(41, 'Pham Nam', 'namppph48575@gmail.com', '$2y$12$dE0dh.DRhStbZecZhUcRiuOIUl6KbzfyRMBKjeGSZo7DvUvjHU8QW', 'avatars/kzammlqkf94wavmstrbs', NULL, '0396036363', NULL, 'Customer', 0, 1, '2025-08-24 05:10:46', '2025-08-25 10:50:29'),
(42, 'Cuong Pham', 'cuongpxph48448@gmail.com', '$2y$12$OjRzTn1NTaZtOcJLjh8SwegCCBoCscDA7a6rW8Y3//eHa9QJv6Olq', NULL, NULL, '0898645512', NULL, 'Customer', 0, 1, '2025-08-25 11:32:30', '2025-08-25 11:32:30'),
(43, 'Pham Nam', 'phamnamgenzno2@gmail.com', '$2y$12$7DtL0C80QhRIC5FbpW9YAuujGJsT.QqM0GkvEtvgxjKYPN5BExzfi', 'avatars/o4d0wusjfvzyvjycaorx', NULL, '0396036364', NULL, 'Customer', 0, 1, '2025-09-02 21:34:41', '2025-09-02 21:35:14');

-- --------------------------------------------------------

--
-- Table structure for table `wallets`
--

CREATE TABLE `wallets` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `bank_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_holder` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `balance` bigint UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wallets`
--

INSERT INTO `wallets` (`id`, `user_id`, `bank_name`, `account_number`, `account_holder`, `balance`, `created_at`, `updated_at`) VALUES
(1, 23, NULL, NULL, NULL, 0, '2025-09-02 11:30:27', NULL),
(2, 41, NULL, NULL, NULL, 0, '2025-09-02 15:48:57', NULL),
(3, 43, NULL, NULL, NULL, 0, '2025-09-02 21:34:41', '2025-09-02 21:34:41');

-- --------------------------------------------------------

--
-- Table structure for table `wallet_transactions`
--

CREATE TABLE `wallet_transactions` (
  `id` bigint UNSIGNED NOT NULL,
  `wallet_id` bigint UNSIGNED NOT NULL,
  `amount` bigint UNSIGNED NOT NULL,
  `type` enum('refund','withdraw') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('pending','reject','accept') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `receive_bank_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `receive_account_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `receive_account_holder` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reject_reason` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bill_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_order_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `product_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `banners_title_unique` (`title`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cart_items`
--
ALTER TABLE `cart_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `carts_user_id_foreign` (`user_id`),
  ADD KEY `carts_product_item_id_foreign` (`product_item_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`);

--
-- Indexes for table `colors`
--
ALTER TABLE `colors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_user_id_foreign` (`user_id`),
  ADD KEY `comments_product_id_foreign` (`product_id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `member_points`
--
ALTER TABLE `member_points`
  ADD PRIMARY KEY (`id`),
  ADD KEY `member_points_user_id_foreign` (`user_id`);

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
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `orders_orders_code_unique` (`orders_code`),
  ADD UNIQUE KEY `orders_bank_code_unique` (`bank_code`),
  ADD KEY `orders_status_order_id_foreign` (`status_order_id`),
  ADD KEY `orders_user_id_foreign` (`user_id`);

--
-- Indexes for table `orders_detail`
--
ALTER TABLE `orders_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_detail_product_item_id_foreign` (`product_item_id`),
  ADD KEY `orders_detail_order_id_foreign` (`order_id`);

--
-- Indexes for table `order_delivery_failures`
--
ALTER TABLE `order_delivery_failures`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_delivery_failures_order_id_foreign` (`order_id`);

--
-- Indexes for table `order_proof_images`
--
ALTER TABLE `order_proof_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_proof_images_order_id_foreign` (`order_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `password_resets_user_id_index` (`user_id`);

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
  ADD UNIQUE KEY `posts_title_unique` (`title`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_name_unique` (`name`),
  ADD KEY `products_category_id_foreign` (`category_id`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_images_product_id_foreign` (`product_id`),
  ADD KEY `product_images_color_id_foreign` (`color_id`);

--
-- Indexes for table `product_items`
--
ALTER TABLE `product_items`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_items_sku_unique` (`sku`),
  ADD KEY `product_items_product_id_foreign` (`product_id`),
  ADD KEY `product_items_color_id_foreign` (`color_id`),
  ADD KEY `product_items_size_id_foreign` (`size_id`);

--
-- Indexes for table `return_files`
--
ALTER TABLE `return_files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `return_files_return_request_id_foreign` (`return_request_id`);

--
-- Indexes for table `return_items`
--
ALTER TABLE `return_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `return_items_return_request_id_foreign` (`return_request_id`),
  ADD KEY `return_items_order_detail_id_foreign` (`order_detail_id`);

--
-- Indexes for table `return_requests`
--
ALTER TABLE `return_requests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `return_requests_order_id_foreign` (`order_id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reviews_user_id_foreign` (`user_id`),
  ADD KEY `reviews_product_item_id_foreign` (`product_item_id`),
  ADD KEY `reviews_order_detail_id_foreign` (`order_detail_id`);

--
-- Indexes for table `review_images`
--
ALTER TABLE `review_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `review_images_review_id_foreign` (`review_id`);

--
-- Indexes for table `review_replies`
--
ALTER TABLE `review_replies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `review_replies_review_id_foreign` (`review_id`),
  ADD KEY `review_replies_user_id_foreign` (`user_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shipping_address`
--
ALTER TABLE `shipping_address`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shipping_address_user_id_foreign` (`user_id`);

--
-- Indexes for table `sizes`
--
ALTER TABLE `sizes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `status_orders`
--
ALTER TABLE `status_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `wallets`
--
ALTER TABLE `wallets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wallets_user_id_foreign` (`user_id`);

--
-- Indexes for table `wallet_transactions`
--
ALTER TABLE `wallet_transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wallet_transactions_wallet_id_foreign` (`wallet_id`);

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wishlists_user_id_foreign` (`user_id`),
  ADD KEY `wishlists_product_id_foreign` (`product_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `cart_items`
--
ALTER TABLE `cart_items`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `colors`
--
ALTER TABLE `colors`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `member_points`
--
ALTER TABLE `member_points`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=136;

--
-- AUTO_INCREMENT for table `orders_detail`
--
ALTER TABLE `orders_detail`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=244;

--
-- AUTO_INCREMENT for table `order_delivery_failures`
--
ALTER TABLE `order_delivery_failures`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_proof_images`
--
ALTER TABLE `order_proof_images`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;

--
-- AUTO_INCREMENT for table `password_resets`
--
ALTER TABLE `password_resets`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=136;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=444;

--
-- AUTO_INCREMENT for table `product_items`
--
ALTER TABLE `product_items`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=596;

--
-- AUTO_INCREMENT for table `return_files`
--
ALTER TABLE `return_files`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `return_items`
--
ALTER TABLE `return_items`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `return_requests`
--
ALTER TABLE `return_requests`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `review_images`
--
ALTER TABLE `review_images`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `review_replies`
--
ALTER TABLE `review_replies`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `shipping_address`
--
ALTER TABLE `shipping_address`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT for table `sizes`
--
ALTER TABLE `sizes`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `status_orders`
--
ALTER TABLE `status_orders`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `wallets`
--
ALTER TABLE `wallets`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `wallet_transactions`
--
ALTER TABLE `wallet_transactions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cart_items`
--
ALTER TABLE `cart_items`
  ADD CONSTRAINT `carts_product_item_id_foreign` FOREIGN KEY (`product_item_id`) REFERENCES `product_items` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `carts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `member_points`
--
ALTER TABLE `member_points`
  ADD CONSTRAINT `member_points_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_status_order_id_foreign` FOREIGN KEY (`status_order_id`) REFERENCES `status_orders` (`id`),
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `orders_detail`
--
ALTER TABLE `orders_detail`
  ADD CONSTRAINT `orders_detail_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `orders_detail_product_item_id_foreign` FOREIGN KEY (`product_item_id`) REFERENCES `product_items` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `order_delivery_failures`
--
ALTER TABLE `order_delivery_failures`
  ADD CONSTRAINT `order_delivery_failures_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `order_proof_images`
--
ALTER TABLE `order_proof_images`
  ADD CONSTRAINT `order_proof_images_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD CONSTRAINT `password_resets_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_images`
--
ALTER TABLE `product_images`
  ADD CONSTRAINT `product_images_color_id_foreign` FOREIGN KEY (`color_id`) REFERENCES `colors` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_images_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_items`
--
ALTER TABLE `product_items`
  ADD CONSTRAINT `product_items_color_id_foreign` FOREIGN KEY (`color_id`) REFERENCES `colors` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_items_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_items_size_id_foreign` FOREIGN KEY (`size_id`) REFERENCES `sizes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `return_files`
--
ALTER TABLE `return_files`
  ADD CONSTRAINT `return_files_return_request_id_foreign` FOREIGN KEY (`return_request_id`) REFERENCES `return_requests` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `return_items`
--
ALTER TABLE `return_items`
  ADD CONSTRAINT `return_items_order_detail_id_foreign` FOREIGN KEY (`order_detail_id`) REFERENCES `orders_detail` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `return_items_return_request_id_foreign` FOREIGN KEY (`return_request_id`) REFERENCES `return_requests` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `return_requests`
--
ALTER TABLE `return_requests`
  ADD CONSTRAINT `return_requests_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_order_detail_id_foreign` FOREIGN KEY (`order_detail_id`) REFERENCES `orders_detail` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `reviews_product_item_id_foreign` FOREIGN KEY (`product_item_id`) REFERENCES `product_items` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `reviews_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `review_images`
--
ALTER TABLE `review_images`
  ADD CONSTRAINT `review_images_review_id_foreign` FOREIGN KEY (`review_id`) REFERENCES `reviews` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `review_replies`
--
ALTER TABLE `review_replies`
  ADD CONSTRAINT `review_replies_review_id_foreign` FOREIGN KEY (`review_id`) REFERENCES `reviews` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `review_replies_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `shipping_address`
--
ALTER TABLE `shipping_address`
  ADD CONSTRAINT `shipping_address_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `wallets`
--
ALTER TABLE `wallets`
  ADD CONSTRAINT `wallets_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `wallet_transactions`
--
ALTER TABLE `wallet_transactions`
  ADD CONSTRAINT `wallet_transactions_wallet_id_foreign` FOREIGN KEY (`wallet_id`) REFERENCES `wallets` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD CONSTRAINT `wishlists_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `wishlists_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

DELIMITER $$
--
-- Events
--
CREATE DEFINER=`root`@`localhost` EVENT `auto_cancel_orders` ON SCHEDULE EVERY 1 MINUTE STARTS '2025-09-02 01:01:11' ON COMPLETION NOT PRESERVE ENABLE DO UPDATE orders
                SET status_order_id = 7
                WHERE status_order_id = 1
                  AND status_payment = 0
                  AND payment_method = 'vnpay'
                  AND created_at < NOW() - INTERVAL 24 HOUR$$

CREATE DEFINER=`root`@`localhost` EVENT `auto_deactivate_expired_coupons` ON SCHEDULE EVERY 5 MINUTE STARTS '2025-09-02 01:01:10' ON COMPLETION NOT PRESERVE ENABLE DO UPDATE coupons
            SET is_active = 0 
            WHERE 
                time_end IS NOT NULL 
                AND time_end < NOW()
                AND deleted_at IS NULL
                AND is_active = 1$$

CREATE DEFINER=`root`@`localhost` EVENT `auto_mark_restocked` ON SCHEDULE EVERY 1 MINUTE STARTS '2025-09-02 01:01:11' ON COMPLETION NOT PRESERVE ENABLE DO UPDATE orders_detail od
                JOIN orders o ON od.order_id = o.id
                SET od.restocked = 1
                WHERE o.status_order_id = 7
                  AND od.restocked = 0$$

CREATE DEFINER=`root`@`localhost` EVENT `auto_restock_orders` ON SCHEDULE EVERY 1 MINUTE STARTS '2025-09-02 01:01:11' ON COMPLETION NOT PRESERVE ENABLE DO UPDATE product_items pi
                JOIN orders_detail od ON od.product_item_id = pi.id
                JOIN orders o ON od.order_id = o.id
                SET pi.stock = pi.stock + od.quantity
                WHERE o.status_order_id = 7
                  AND od.restocked = 0$$

CREATE DEFINER=`root`@`localhost` EVENT `auto_update_failed_return_orders` ON SCHEDULE EVERY 1 DAY STARTS '2025-09-02 01:01:11' ON COMPLETION NOT PRESERVE ENABLE DO BEGIN
                UPDATE orders
                SET status_order_id = 6
                WHERE status_order_id = 12
                  AND updated_at <= NOW() - INTERVAL 7 DAY;
            END$$

CREATE DEFINER=`root`@`localhost` EVENT `auto_update_order_status` ON SCHEDULE EVERY 1 DAY STARTS '2025-09-02 01:01:10' ON COMPLETION NOT PRESERVE ENABLE DO UPDATE orders
                SET status_order_id = 6,
                    success_at = NOW()
                WHERE status_order_id = 4
                  AND updated_at <= NOW() - INTERVAL 7 DAY$$

CREATE DEFINER=`root`@`localhost` EVENT `cancel_expired_return_requests` ON SCHEDULE EVERY 1 DAY STARTS '2025-09-02 01:01:11' ON COMPLETION NOT PRESERVE ENABLE DO UPDATE return_requests
                SET status = 'cancel'
                WHERE status = 'accept'
                AND accepted_at < DATE_SUB(NOW(), INTERVAL 3 DAY)$$

CREATE DEFINER=`root`@`localhost` EVENT `hard_delete_old_soft_deleted_coupons` ON SCHEDULE EVERY 7 DAY STARTS '2025-09-02 01:01:10' ON COMPLETION NOT PRESERVE ENABLE DO DELETE FROM coupons
        WHERE is_active = 0
        AND deleted_at IS NOT NULL
        AND deleted_at <= NOW() - INTERVAL 6 MONTH$$

CREATE DEFINER=`root`@`localhost` EVENT `soft_delete_expired_coupons` ON SCHEDULE EVERY 7 DAY STARTS '2025-09-02 01:01:10' ON COMPLETION NOT PRESERVE ENABLE DO UPDATE coupons
        SET  deleted_at = NOW()
        WHERE is_active = 0
        AND deleted_at IS NULL
        AND time_end IS NOT NULL
        AND time_end < NOW() - INTERVAL 7 DAY$$

DELIMITER ;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
