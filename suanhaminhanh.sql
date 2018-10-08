-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 08, 2018 at 09:04 AM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.0.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `suanhaminhanh`
--

-- --------------------------------------------------------

--
-- Table structure for table `category_items`
--

CREATE TABLE `category_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_mobile` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `level` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `type` tinyint(4) NOT NULL DEFAULT '0',
  `order` int(11) NOT NULL DEFAULT '1',
  `is_active` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `seo_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category_items`
--

INSERT INTO `category_items` (`id`, `name`, `path`, `description`, `image`, `image_mobile`, `level`, `parent_id`, `type`, `order`, `is_active`, `created_at`, `updated_at`, `seo_id`) VALUES
(6, 'Dịch Vụ', 'dich-vu', '<p>\r\n	<span style=\"color:#f1c40f;\">Dịch vụ sửa chữa nhà Minh Ánh</span>\r\n</p>\r\n\r\n<p>\r\n	&nbsp;\r\n</p>\r\n\r\n<p>\r\n	Dịch vụ sửa chữa nhà Minh Ánh cung cấp giải pháp sửa chữa nâng cấp ngôi nhà của bạn với chi phí tiết kiệm và hiệu quả nhất, chung tôi cung cấp các dịch vụ sửa chửa nhà, thiết kế thi công cửa sắt cửa nhôm kính, trần thạch cao, chống thấm nhà cửa, sơn nước...\r\n</p>\r\n\r\n<p>\r\n	Trong suốt thời gian hoạt động, chúng tôi tự hào đã không ngừng cung cấp cho khách hàng những giải pháp xây dựng tối ưu nhờ vào thế mạnh kỹ thuật, nhân sự, quản lý và tiềm năng tài chính, lấy&nbsp;Uy tín &ndash; Chất lượng &ndash; Hiệu quả&nbsp;làm phương châm hoạt động. Những ưu thế đó đã tạo cho các công trình của chúng tôi từ các cao ốc văn phòng, căn hộ chung cư, biệt thự hay các khu nhà máy sản xuất công nghiệp,cùng các dịch vụ khác như : nhà hàng , khách sạn, bất động sản,cho thuê máy móc thiết bị &amp; dụng cụ trong thi công vv&hellip;&nbsp;đều có dấu ấn đặc biệt từ giai đoạn đầu đến giai đoạn cuối.\r\n</p>\r\n\r\n<p>\r\n	&nbsp;\r\n</p>\r\n\r\n<h4>\r\n	ĐÚNG TIẾN ĐỘ\r\n</h4>\r\n\r\n<p>\r\n	An Phát Lộc được đánh giá là tập đoàn xây dựng tư nhân uy tín hàng đầu Việt Nam với nhiều công trình lớn trên cả nước như nhà phố, biệt thự\r\n</p>\r\n\r\n<h4>\r\n	BẢO HÀNH SAU CÔNG TRÌNH\r\n</h4>\r\n\r\n<p>\r\n	Trong thời hạn bảo hành, nhà thầu thi công xây dựng phải thực hiện việc bảo hành sau khi nhận được phản hồi từ khách hàng\r\n</p>\r\n\r\n<h4>\r\n	KINH NGHIỆM\r\n</h4>\r\n\r\n<p>\r\n	Với hơn 10 năm thành lập chúng tôi đủ kinh nghiệm xây nhà mới, biệt thự hoàn thiện và đầy đủ nhất. Theo đúng hợp đồng đã ký\r\n</p>', NULL, NULL, 0, NULL, 0, 1, 0, '2018-10-06 02:48:13', '2018-10-08 07:00:20', 13),
(7, 'Dự Án', 'du-an', NULL, NULL, NULL, 0, NULL, 0, 1, 1, '2018-10-06 02:48:21', '2018-10-06 02:48:21', 14),
(8, 'Tin Tức', 'tin-tuc', NULL, NULL, NULL, 0, NULL, 0, 1, 1, '2018-10-06 14:14:10', '2018-10-07 04:28:01', 22),
(9, 'Sơn Nước', 'son-nuoc', NULL, NULL, NULL, 1, 7, 0, 1, 1, '2018-10-07 01:24:53', '2018-10-07 04:27:53', 26),
(10, 'Trần Thạch Cao', 'tran-thach-cao', NULL, NULL, NULL, 1, 7, 0, 1, 1, '2018-10-07 01:32:27', '2018-10-07 04:29:14', 27),
(11, 'Chống Thấm', 'chong-tham', NULL, NULL, NULL, 1, 7, 0, 1, 1, '2018-10-07 01:32:49', '2018-10-07 04:28:18', 28),
(13, 'Sửa Chữa Nhà', 'sua-chua-nha', NULL, NULL, NULL, 1, 7, 0, 1, 1, '2018-10-07 02:01:22', '2018-10-07 04:28:10', 30),
(14, 'Sửa Chữa Cửa Sắt', 'sua-chua-cua-sat', NULL, NULL, NULL, 1, 7, 0, 1, 1, '2018-10-07 02:01:43', '2018-10-07 04:28:05', 31),
(19, 'Sửa Cửa Nhôm - Kính', 'sua-cua-nhom-kinh', NULL, NULL, NULL, 1, 7, 0, 1, 1, '2018-10-07 04:29:03', '2018-10-07 04:29:03', 38);

-- --------------------------------------------------------

--
-- Table structure for table `category_many`
--

CREATE TABLE `category_many` (
  `category_id` int(10) UNSIGNED NOT NULL,
  `item_id` int(10) UNSIGNED NOT NULL,
  `type` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category_many`
--

INSERT INTO `category_many` (`category_id`, `item_id`, `type`, `created_at`, `updated_at`) VALUES
(6, 2, 0, '2018-10-06 10:08:14', '2018-10-08 02:49:40'),
(6, 3, 0, '2018-10-06 02:49:03', '2018-10-08 04:25:27'),
(6, 4, 0, '2018-10-06 02:49:42', '2018-10-08 03:15:02'),
(6, 5, 0, '2018-10-06 02:50:26', '2018-10-08 03:25:55'),
(6, 6, 0, '2018-10-06 02:50:52', '2018-10-08 03:34:13'),
(6, 7, 0, '2018-10-06 02:51:15', '2018-10-08 04:26:34'),
(7, 11, 0, '2018-10-07 03:31:17', '2018-10-07 03:31:17'),
(7, 12, 0, '2018-10-07 03:31:44', '2018-10-07 04:29:47'),
(7, 13, 0, '2018-10-07 08:27:08', '2018-10-07 08:27:08'),
(8, 8, 0, '2018-10-06 14:16:49', '2018-10-08 04:13:48'),
(8, 9, 0, '2018-10-06 14:17:38', '2018-10-08 04:13:38'),
(8, 10, 0, '2018-10-06 14:18:52', '2018-10-08 04:14:02'),
(8, 14, 0, '2018-10-08 04:03:58', '2018-10-08 04:13:26'),
(8, 15, 0, '2018-10-08 04:11:56', '2018-10-08 04:13:15'),
(9, 11, 0, '2018-10-07 03:31:17', '2018-10-07 03:31:17'),
(9, 13, 0, '2018-10-07 08:27:08', '2018-10-07 08:27:08'),
(10, 12, 0, '2018-10-07 03:31:44', '2018-10-07 04:29:47');

-- --------------------------------------------------------

--
-- Table structure for table `category_permissions`
--

CREATE TABLE `category_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category_permissions`
--

INSERT INTO `category_permissions` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Role', '2018-03-14 07:31:28', '2018-03-14 07:31:28'),
(2, 'User', '2018-03-14 07:31:28', '2018-03-14 07:31:28'),
(3, 'Menu', '2018-03-14 07:31:28', '2018-03-14 07:31:28'),
(4, 'Page', '2018-03-14 07:31:29', '2018-03-14 07:31:29'),
(5, 'Post', '2018-03-14 07:31:29', '2018-03-14 07:31:29'),
(7, 'Product', '2018-03-27 03:05:29', '2018-03-27 03:05:29');

-- --------------------------------------------------------

--
-- Table structure for table `configs`
--

CREATE TABLE `configs` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `configs`
--

INSERT INTO `configs` (`id`, `name`, `content`, `description`, `order`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'config-contact', '<p>\r\n	<strong><em><span style=\"background-color:#f1c40f;\">Hotline đặt hàng</span>:</em></strong><em>&nbsp;&nbsp;<strong>097.388.9336 - 0914.675.777</strong></em>\r\n</p>\r\n\r\n<p>\r\n	<strong><em>Hotline hỗ trợ tư vấn và phản hồi ý kiến</em></strong><em>:&nbsp;&nbsp;<strong>097.388.9336</strong></em>\r\n</p>\r\n\r\n<p>\r\n	<strong><em>Hân hạnh được phục vụ quý khách hàng.!</em></strong>\r\n</p>\r\n\r\n<p>\r\n	<strong><em>Thông tin liên hệ với chúng tôi:</em></strong>\r\n</p>\r\n\r\n<p>\r\n	&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;<strong>CÔNG TY TNHH THƯƠNG MẠI DỊCH VỤ THÉP KHÁNH NAM</strong>\r\n</p>\r\n\r\n<p>\r\n	<strong>TRỤ SỞ CHÍNH:</strong>&nbsp;<em>201 Bình Thành, KP 4, P. Bình Hưng Hòa, Q. Bình Tân, thành phố Hồ Chí Minh</em>\r\n</p>\r\n\r\n<p>\r\n	<strong>Di động:</strong><em>&nbsp;097.388.9336 - 0914.675.777</em>\r\n</p>', NULL, NULL, 1, NULL, '2018-03-30 09:07:51');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 'quang test 2 as', '', '_self', NULL, '#000000', NULL, 1, '2018-09-14 04:10:33', '2018-09-14 08:38:13', 'menu.index', NULL),
(2, 'Thư Test', '', '_self', NULL, '#000000', NULL, 2, '2018-09-14 04:48:02', '2018-09-14 08:25:26', 'menu.index', NULL),
(3, 'Chip Test', '', '_self', NULL, '#000000', NULL, 3, '2018-09-14 04:49:28', '2018-09-14 08:25:47', 'menu.index', NULL);

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_03_14_140923_create_entrust_setup_tables', 1),
(4, '2018_07_12_085612_create_seos_table', 2),
(5, '2018_07_12_090313_add_seo_id_to_posts_table', 3),
(6, '2018_07_12_091007_add_seo_id_to_products_table', 4),
(7, '2018_07_12_091116_add_seo_id_to_category_items_table', 5),
(8, '2018_07_17_084914_create_category_many_table', 6);

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
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_permission_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `display_name`, `description`, `category_permission_id`, `created_at`, `updated_at`) VALUES
(1, 'role-list', 'Xem Danh Sách Quyền', 'Được Xem Danh Sách Quyền', 1, '2018-03-14 07:32:41', '2018-03-14 07:32:41'),
(2, 'role-create', 'Tạo Quyền Mới', 'Được Tạo Quyền Mới', 1, '2018-03-14 07:32:41', '2018-03-14 07:32:41'),
(3, 'role-edit', 'Cập Nhật Quyền', 'Được Cập Nhật Quyền', 1, '2018-03-14 07:32:41', '2018-03-14 07:32:41'),
(4, 'role-delete', 'Xóa Quyền', 'Được Xóa Quyền', 1, '2018-03-14 07:32:41', '2018-03-14 07:32:41'),
(5, 'user-list', 'Xem Danh Sách Users', 'Được Xem Danh Sách Users', 2, '2018-03-14 07:32:41', '2018-03-14 07:32:41'),
(6, 'user-create', 'Tạo User', 'Được Tạo User Mới', 2, '2018-03-14 07:32:41', '2018-03-14 07:32:41'),
(7, 'user-edit', 'Cập Nhật User', 'Được Cập Nhật User', 2, '2018-03-14 07:32:41', '2018-03-14 07:32:41'),
(8, 'user-delete', 'Xóa user', 'Được Xóa User', 2, '2018-03-14 07:32:41', '2018-03-14 07:32:41'),
(9, 'menu-list', 'Toàn Quyền Menu', 'Được Toàn Quyền Menu', 3, '2018-03-14 07:32:41', '2018-03-14 07:32:41'),
(10, 'menu-create', 'Thêm Mới Menu', 'Được Thêm Mới Menu', 3, '2018-03-14 07:32:42', '2018-03-14 07:32:42'),
(11, 'menu-edit', 'Cập Nhật Menu', 'Được Cập Nhật Menu', 3, '2018-03-14 07:32:42', '2018-03-14 07:32:42'),
(12, 'menu-delete', 'Xóa Menu', 'Được Xóa Menu', 3, '2018-03-14 07:32:42', '2018-03-14 07:32:42'),
(13, 'page-list', 'Toàn Quyền Trang', 'Được Toàn Quyền Trang', 4, '2018-03-14 07:32:42', '2018-03-14 07:32:42'),
(14, 'page-create', 'Thêm Mới Trang', 'Được Thêm Mới Trang', 4, '2018-03-14 07:32:42', '2018-03-14 07:32:42'),
(15, 'page-edit', 'Cập Nhật Trang', 'Được Cập Nhật Trang', 4, '2018-03-14 07:32:42', '2018-03-14 07:32:42'),
(16, 'page-delete', 'Xóa Trang', 'Được Xóa Trang', 4, '2018-03-14 07:32:42', '2018-03-14 07:32:42'),
(17, 'post-list', 'Toàn Quyền Bài Viết', 'Được Toàn Quyền Bài Viết', 5, '2018-03-14 07:54:54', '2018-03-14 07:54:54'),
(18, 'post-create', 'Thêm Mới Bài Viết', 'Được Thêm Mới Bài Viết', 5, '2018-03-14 07:54:54', '2018-03-14 07:54:54'),
(19, 'post-edit', 'Cập Nhật Bài Viết', 'Được Cập Nhật Bài Viết', 5, '2018-03-14 07:54:54', '2018-03-14 07:54:54'),
(20, 'post-delete', 'Xóa Bài Viết', 'Được Xóa Bài Viết', 5, '2018-03-14 07:54:54', '2018-03-14 07:54:54'),
(21, 'product-list', 'Toàn Quyền Sản Phẩm', 'Được Toàn Quyền Sản Phẩm', 7, '2018-03-27 03:06:34', '2018-03-27 03:06:34'),
(22, 'product-create', 'Thêm Mới Sản Phẩm', 'Được Thêm Mới Sản Phẩm', 7, '2018-03-27 03:06:34', '2018-03-27 03:06:34'),
(23, 'product-edit', 'Cập Nhật Sản Phẩm', 'Được Cập Nhật Sản Phẩm', 7, '2018-03-27 03:06:34', '2018-03-27 03:06:34'),
(24, 'product-delete', 'Xóa Sản Phẩm', 'Được Xóa Sản Phẩm', 7, '2018-03-27 03:06:34', '2018-03-27 03:06:34');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post_type` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `isActive` tinyint(1) NOT NULL DEFAULT '1',
  `category_item_id` int(11) DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `seo_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `path`, `description`, `content`, `image`, `icon`, `post_type`, `isActive`, `category_item_id`, `user_id`, `created_at`, `updated_at`, `seo_id`) VALUES
(2, 'SƠN NƯỚC', 'son-nuoc', '<p>\r\n	Thi công sơn nước là 1 quy trình nhìn tuy đơn giản nhưng khi bước vào thi công lại không hề dễ dàng. Nó đòi hỏi người thi công không chỉ chuyên nghiệp, tỉ mỉ tay nghề cao mà cần có con mắt thẩm mỹ mới có thể tạo ra những công trình hoàn hảo, một căn nhà đẹp.\r\n</p>', '<p>\r\n	<strong>Thi công sơn nước</strong>&nbsp;là 1 quy trình nhìn tuy đơn giản nhưng khi bước vào thi công lại không hề dễ dàng. Nó đòi hỏi người thi công không chỉ chuyên nghiệp, tỉ mỉ tay nghề cao mà cần có con mắt thẩm mỹ mới có thể tạo ra những công trình hoàn hảo, một căn nhà đẹp.&nbsp;\r\n</p>\r\n\r\n<p style=\"text-align: center;\">\r\n	<img alt=\"\" src=\"http://localhost:8080/suanhaminhanh/images/uploads/images/dichvu/sonnuoc/tho-son-sua-nha-tai-quan-thu-duc.jpg\" style=\"width: 80%; height: 80%;\">\r\n</p>\r\n\r\n<p>\r\n	Quy trình dịch vụ sơn nhà &ndash; sơn văn phòng của Minh Ánh :<br>\r\n	Nhận cuộc gọi của khách hàng.<br>\r\n	Tư vấn cho khách hàng (nếu khách hàng có nhu cầu).<br>\r\n	Kiểm tra thông tin khách hàng.<br>\r\n	Cử nhân viên đến khảo sát công trình.(trong vòng 24 giờ kể từ khi nhận thông tin khách hàng).<br>\r\n	Thống nhất nguyên vật liệu với khách hàng.<br>\r\n	Thống nhất hình thức thanh toán và thi công.<br>\r\n	Báo giá trực tiếp khi hai bên nhất trí.<br>\r\n	Sắp xếp thời gian thi công theo gia chủ yêu cầu.<br>\r\n	Tiến hành thi công ( thi công theo đúng thời gian, kỹ thuật đã đàm phán).<br>\r\n	Vệ sinh sạch sẽ sau khi thi công.<br>\r\n	Bảo trì, sửa chữa khi khách hàng không ưng ý.<br>\r\n	&nbsp;\r\n</p>\r\n\r\n<p style=\"text-align: center;\">\r\n	<img alt=\"\" src=\"http://localhost:8080/suanhaminhanh/images/uploads/images/dichvu/sonnuoc/bang-mau-son-phong-thuy.jpg\" style=\"width: 70%; height: 70%;\">\r\n</p>\r\n\r\n<p style=\"text-align: center;\">\r\n	<img alt=\"\" src=\"http://localhost:8080/suanhaminhanh/images/uploads/images/dichvu/sonnuoc/Untitled.png\" style=\"width: 80%; height: 80%;\">\r\n</p>\r\n\r\n<p style=\"text-align: center;\">\r\n	<img alt=\"\" src=\"http://localhost:8080/suanhaminhanh/images/uploads/images/dichvu/sonnuoc/Untitled2.png\" style=\"width: 80%; height: 80%;\">\r\n</p>\r\n\r\n<p>\r\n	Quy trình làm việc của Minh Ánh &nbsp;bao gồm những công đoạn sau:\r\n</p>\r\n\r\n<p>\r\n	&nbsp;\r\n</p>\r\n\r\n<p>\r\n	<strong>BƯỚC 1: VỆ SINH VÀ CHUẨN BỊ BỀ MẶT.</strong><br>\r\n	1. Đối với công trình mới:<br>\r\n	- &nbsp; &nbsp;Công trình sau khi mới hoàn thành cần đạt đủ độ khô cần thiết mới có thể cho thi công sơn. Trong điều kiện thời tiết lí tưởng, khô ráo liên tục thì sau khoảng 3 tuần có thể cho thi công sơn được. Thực tế phụ thuộc vào yếu tố thời tiết mà thời gian để tường nhà khô và thi công sơn được có thể kéo dài 2 hoặc 3 tháng.<br>\r\n	- &nbsp; &nbsp;Dùng đá mài vệ sinh bề mặt tường để loại bỏ hết các tạp chất ảnh hưởng đến độ bám dính của lớp bột bả matit hoặc lớp sơn phủ ( lót kiềm).<br>\r\n	- &nbsp; &nbsp;Vệ sinh lại lần nữa bằng giấy ráp mịn hoặc thô để loại bỏ hết sạn cát còn lại bám trên bề mặt tường, sau đó vệ sinh bụi bẩn.<br>\r\n	- &nbsp; &nbsp;Trước khi tiến hành bả bột matit hoặc thi công sơn lót, nếu bề mặt tường quá khô cần tiến hành làm &nbsp;ẩm qua bề mặt tường bằng cách dùng Rulo lăn với nước sạch hay phun hơi nước dưới dạng sương mù.<br>\r\n	2. Đối với công trình cũ:<br>\r\n	- &nbsp; &nbsp;Với bề mặt tường cũ trước khi thi công cần tiến hành loại bỏ hết toàn bộ rêu mốc, tạp chất, bụi bẩn và các lớp bột cũ, sơn cũ bị bong tróc bám trên bề mặt.<br>\r\n	- &nbsp; &nbsp;Trong trường hợp bề mặt cần sơn lại còn mới cần dùng đá mài hoặc giấy ráp đánh qua hết toàn bộ bề mặt nhằm tạo chân bám trước khi thi công lớp sơn mới.<br>\r\n	- &nbsp; &nbsp;Đối với bề mặt tường quá cũ nát, sau khi vệ sinh xong cần tiến hành xối rửa lại bằng nước sạch sau đó để khô mới tiến hành cho thi công. &nbsp; &nbsp;\r\n</p>\r\n\r\n<p>\r\n	&nbsp;\r\n</p>\r\n\r\n<p>\r\n	&nbsp;\r\n</p>\r\n\r\n<p>\r\n	&nbsp;\r\n</p>\r\n\r\n<p style=\"text-align: center;\">\r\n	<img alt=\"\" src=\"http://localhost:8080/suanhaminhanh/images/uploads/images/dichvu/sonnuoc/dich-vu-son-nha-tron-goi-tai-tphcm(1).jpg\" style=\"width: 80%; height: 80%;\">\r\n</p>\r\n\r\n<p>\r\n	&nbsp;\r\n</p>\r\n\r\n<p>\r\n	&nbsp;\r\n</p>\r\n\r\n<p>\r\n	&nbsp;\r\n</p>\r\n\r\n<p>\r\n	<strong>BƯỚC 2: SƠN CHỐNG THẤM</strong>.<br>\r\n	- &nbsp; Đối với những bề mặt không trang trí hoặc không sơn màu thì cần phải tiến hành sơn chống thấm. Việc sơn chống thấm nhằm bảo vệ cho công trình tránh khỏi tác động của yếu tố mưa ẩm. Đặc biệt là với khí hậu nhiệt đới, mưa nhiều như ở Việt Nam thì không thể bỏ qua khâu này.<br>\r\n	- &nbsp; Bề mặt tường trước khi sơn chống thấm cũng cần được vệ sinh qua nhằm làm sạch bề mặt, tăng độ bám dính cũng như tuổi thọ của lớp sơn.<br>\r\n	- &nbsp; Tiến hành sơn chống thấm lần 1. Khách hàng nên sử dụng sản phẩm sơn chống thấm của các hãng sơn có uy tín trên thị trường như MYKOLOR, DULUX, KOVA &hellip; không nên sử dụng các sản phẩm không có uy tín thương hiệu trên thị trường, không rõ nguồn gốc, xuất sứ.<br>\r\n	- &nbsp; &nbsp;Hợp chất chống thấm trước khi thi công cần được hòa trộn với xi măng theo tỉ lệ 1:1 ( 1kg chống thấm : 1 kg xi măng) để tạo ra hỗn hợp chống thấm sau đó cho thi công lần 1. Lưu ý: Hợp chất khi đã pha trộn cần thi công ngay không được để lâu quá 03h.<br>\r\n	- &nbsp; &nbsp;02h sau khi thi công lần 1 mới tiến hành cho thi công hoàn thiện lần 2. Việc để cách thời gian vậy nhằm để lớp sơn 1 đạt đủ độ khô cần thiết.<br>\r\n	- &nbsp; &nbsp;Thi công hoàn thiện lần 2 với cách pha trộn tương tự lần 1. Sau khi thi công xong tiến hành quan sát bằng mắt thường thấy lớp sơn phủ đều trên bề mặt, không có vệt, không bị lệch màu giữa các lớp là đạt.\r\n</p>\r\n\r\n<p>\r\n	&nbsp;\r\n</p>\r\n\r\n<p style=\"text-align: center;\">\r\n	<img alt=\"\" src=\"http://localhost:8080/suanhaminhanh/images/uploads/images/dichvu/sonnuoc/sb10067339s-001.jpg\" style=\"width: 80%; height: 80%;\">\r\n</p>\r\n\r\n<p>\r\n	&nbsp;\r\n</p>\r\n\r\n<p>\r\n	<strong>BƯỚC 3: TRÉT ( BẢ ) BỘT MATIT.( Có thể có hoặc không).</strong><br>\r\n	1. Bả, ( trét) lần 1:<br>\r\n	- &nbsp; &nbsp;Lấy bột bả ( trét) trộn với nước sạch theo tỷ lệ thích hợp sau đó trộn ( khuấy) đều đến khi bột đạt tới độ dẻo quánh là thi công được.<br>\r\n	- &nbsp; &nbsp;Tiến hành bả ( trét) bằng dụng cụ thi công chuyên biệt sau đó để khô từ 1-2h trước khi tiến hành bả hoàn thiện lần 2.<br>\r\n	( Lưu ý: Trước khi tiến hành bả hoàn thiện lần 2 cần loại bỏ hết các gợn, bột vón cụ, sạn có trên bề mặt nhằm tăng độ bám dính cho lần 2. Bột bả sau khi hòa trộn cần phải tiến hành thi công ngay trong vòng từ 1 &ndash; 2h, để lâu bột sẽ bị chết).<br>\r\n	2. Bả ( trét) hoàn thiện lần 2:<br>\r\n	- &nbsp; &nbsp;Sau khi lần 1 đạt đủ độ khô cần thiết ta tiến hành cho thi công lần 2.<br>\r\n	- &nbsp; &nbsp;Sau khi hoàn thiện xong lần 2 để khô trong vòng 3h sau đó dùng ráp mịn để làm phẳng bề mặt được bả. Chú ý không dùng ráp nhám vì sẽ làm xước bề mặt.<br>\r\n	- &nbsp; &nbsp;Trong quá trình ráp làm phẳng bề mặt nên dùng bóng điện chiếu vào để việc làm phẳng được tốt hơn, đồng thời có thể dễ dàng phát hiện chỗ lồi lõm do thi công chưa tốt để tiến hành cho bả sửa. Không nên bả sửa quá 2 lần. Không nên bả quá dày vì dễ gây ra hiện tượng bong tróc.<br>\r\n	- &nbsp; &nbsp;24h sau khi bả hoàn thiện có thể cho thi công sơn.\r\n</p>\r\n\r\n<p>\r\n	&nbsp;\r\n</p>\r\n\r\n<p>\r\n	&nbsp;\r\n</p>\r\n\r\n<p>\r\n	&nbsp;\r\n</p>\r\n\r\n<p>\r\n	<strong>BƯỚC 4: THI CÔNG SƠN LÓT.</strong><br>\r\n	- &nbsp; &nbsp;Dùng Rulo ( lu) tiến hành sơn lót chống kiềm. Tùy thuộc vào nhu cầu và điều kiện có thể sơn lót 01 hoặc 02 lớp chống kiềm. Mỗi lớp sơn phải đảm bảo cách nhau ít nhất 01h để đảm bảo độ khô cần thiết.<br>\r\n	- &nbsp; &nbsp;Có thể pha thêm 10% dung môi ( nước sạch) theo thể tích trước khi thi công. Việc pha thêm dung môi nhằm gia tăng độ phủ tối đa và giúp cho việc thi công được dễ dàng hơn.\r\n</p>\r\n\r\n<p>\r\n	&nbsp;\r\n</p>\r\n\r\n<p>\r\n	<br>\r\n	<strong>BƯỚC 5: SƠN MÀU HOÀN THIỆN.</strong><br>\r\n	1. Sơn màu lần 1:&nbsp;<br>\r\n	- &nbsp; &nbsp;02h sau khi thi công sơn kiềm có thể tiến hành thi công sơn màu lần 1.<br>\r\n	- &nbsp; &nbsp;Dụng cụ thi công có thể là máy phun sơn, cọ hoặc Rulo ( lu).<br>\r\n	- &nbsp; &nbsp;Sơn màu trước khi thi công nên pha loãng với 10% dung môi ( nước sạch) theo thể tích để đạt độ phủ tối đa và dễ hơn cho việc thi công.<br>\r\n	- &nbsp; &nbsp;Tiến hành sơn màu lần 1 bằng dụng cụ thích hợp.<br>\r\n	- &nbsp; &nbsp;Sau khi sơn màu lần 1 cần tiến hành quan sát những khiếm khuyết còn lại của các khâu thi công trước và cho sửa trước khi sơn màu hoàn thiện lần cuối.<br>\r\n	2. Sơn màu lần 2 ( hoàn thiện):<br>\r\n	- &nbsp; &nbsp;02h sau khi sơn lần 1 ta cho tiến hành sơn hoàn thiện lần cuối.<br>\r\n	- &nbsp; &nbsp;Dụng cụ thi công tương tự lần 1, do là nước sơn hoàn thiện nên cần thi công cẩn thận.<br>\r\n	- &nbsp; &nbsp;Khi tiến hành sơn xong, dùng bóng điện chiếu rọi vào tường và quan sát. &nbsp;Nếu thấy sơn phủ đều, không bị 2 màu, không để lại vết và bề mặt tường sáng đều là đạt.\r\n</p>\r\n\r\n<p>\r\n	&nbsp;\r\n</p>\r\n\r\n<p style=\"text-align: center;\">\r\n	<img alt=\"\" src=\"http://localhost:8080/suanhaminhanh/images/uploads/images/dichvu/sonnuoc/kinh_nghiem_chon_son_nuoc_1.jpg\" style=\"width: 80%; height: 80%;\">\r\n</p>\r\n\r\n<p>\r\n	&nbsp;\r\n</p>\r\n\r\n<p>\r\n	<br>\r\n	<strong>MỘT SỐ LƯU Ý KHI THI CÔNG SƠN:</strong><br>\r\n	- &nbsp; &nbsp;Đặt thùng sơn ở vị trí an toàn, cẩn thận khi vận chuyển. Khi bị đổ sơn cần thu gom bằng đất và cát.<br>\r\n	- &nbsp; &nbsp;Mang khẩu trang thích hợp trong lúc vệ sinh cũng như thi công sơn.<br>\r\n	- &nbsp; &nbsp;Công trình khi thi công phải đảm bảo thông thoáng.<br>\r\n	- &nbsp; &nbsp;Tránh hít bụi sơn. Trong trường hợp điều kiện thi công không được &nbsp;thông thoáng cần có nhưng thiết bị hỗ trợ để tạo độ thoáng như quạt điện &hellip;<br>\r\n	- &nbsp; &nbsp;Khi không may bị dính sơn vào mắt cần tiến hành sơ cứu bằng nước sạch sau đó đến các cơ sở y tế gần nhất để điều trị.<br>\r\n	- &nbsp; &nbsp;Không được tự tiện đổ sơn thừa, sơn hết hạn sử dụng ra môi trường. Trong trường hợp cần tiêu hủy cần tuân thủ nghiêm ngặt theo các quy định về bảo vệ môi trường.\r\n</p>\r\n\r\n<p>\r\n	&nbsp;\r\n</p>\r\n\r\n<p style=\"text-align: center;\">\r\n	<img alt=\"\" src=\"http://localhost:8080/suanhaminhanh/images/uploads/images/dichvu/sonnuoc/son-nha-Nha-Trang.jpg\" style=\"width: 80%; height: 80%;\">\r\n</p>\r\n\r\n<p>\r\n	&nbsp;\r\n</p>\r\n\r\n<p>\r\n	Hãy liên hệ với Minh Ánh để biết rõ về giá, Minh Ánh &nbsp;cần khảo sát để đưa ra giá chính xác và phù hợp với tình trạng căn nhà của bạn.<br>\r\n	Dịch vụ sơn nhà của Minh Ánh &nbsp;đảm bảo với khách hàng:<br>\r\n	Thi công đúng tiến độ hai bên thỏa thuận.<br>\r\n	Sử dụng nguyên vật liệu đúng như những gì đã cam kết.<br>\r\n	Thi công đúng quy trình kỹ thuật.<br>\r\n	Công trình đảm bảo cả về chất lượng và thẩm mỹ.<br>\r\n	Vệ sinh sạch sẽ sau khi thi công.<br>\r\n	Bảo trì và hỗ trợ tốt nhất sau khi thi công xong.<br>\r\n	Hãy liên hệ với Minh Ánh để biết rõ về giá, Minh Ánh &nbsp;cần khảo sát để đưa ra giá chính xác và phù hợp với tình trạng căn nhà của bạn.\r\n</p>\r\n\r\n<h1>\r\n	<strong>DỊCH VỤ SỬA CHỮA NHÀ MINH ÁNH</strong>\r\n</h1>\r\n\r\n<p>\r\n	Địa chỉ:&nbsp;21/8B Hẻm 502, Phường Bình Thuận, Quận 7, TPHCM\r\n</p>\r\n\r\n<p>\r\n	Điện thoại:&nbsp;0122 871 0455 - 0909 353 055\r\n</p>\r\n\r\n<p>\r\n	E-mail:&nbsp;<a href=\"mailto:dichvusuachuanhaminhanh@gmail.com\">dichvusuachuanhaminhanh@gmail.com</a>\r\n</p>\r\n\r\n<p>\r\n	Website:&nbsp;<a href=\"mailto:dichvusuachuanhaminhanh@gmail.com\">dichvusuachuanhaminhanh.c</a><a href=\"http://congtysuanhaminhanh.com\">om</a>\r\n</p>\r\n\r\n<p>\r\n	&nbsp;\r\n</p>', 'images/uploads/images/dichvu/sonnuoc/kinh_nghiem_chon_son_nuoc_1.jpg', 'fas fa-paint-roller', 1, 1, NULL, 1, '2018-10-06 02:48:49', '2018-10-08 02:49:40', 15),
(3, 'SỬA CHỮA NHÀ', 'sua-chua-nha', '<p>\r\n	Dịch vụ sửa chữa nhà trọn gói,dịch vụ sửa chữa nhà giá rẻ tại tphcm, là một trong những dịch vụ được Minh Ánh đưa ra và được khách hàng ủng hộ nhiệt tình\r\n</p>', '<p>\r\n	Với nhiều năm kinh nghiệm trong dịch vụ sửa chữa nhà giá rẻ tại tphcm , Minh Ánh đã tiếp nhận yêu cầu của hàng ngàn khách hàng, đã sửa chữa hàng ngàn ngôi nhà, biệt thự, căn hộ&hellip; và nhận được sự hài lòng tuyệt đối của toàn bộ khách hàng. Sau nhiều năm ra đời và phát triển chúng tôi có được sự thành công như ngày hôm nay là vì khách hàng đã luôn tin tưởng và ủng hộ Minh Ánh chúng tôi. Đáp lại những tình cảm mà khách hàng dành cho Minh Ánh, Minh Ánh luôn cố gắng cung cấp thêm thật nhiều dịch vụ sửa chữa nhà giá rẻ tại tphcm &nbsp;tới cho khách hàng nhằm đem đến cho khách hàng những dịch vụ tốt nhất và chất lượng nhất. &nbsp;\r\n</p>\r\n\r\n<p style=\"text-align: center;\">\r\n	<img alt=\"\" src=\"http://localhost:8080/suanhaminhanh/images/uploads/images/dichvu/suachuanha/suanha2017.png\" style=\"width: 80%; height: 80%;\">\r\n</p>\r\n\r\n<p style=\"text-align: center;\">\r\n	<span style=\"color:#e74c3c;\"><span style=\"font-size:20px;\"><strong>(Gọi ngay:&nbsp;0122.871.0455- 0909353055&nbsp;để được báo giá chuẩn xác nhất)</strong></span></span>\r\n</p>\r\n\r\n<p style=\"text-align: center;\">\r\n	<span style=\"color:#e74c3c;\"><span style=\"font-size:20px;\"><strong><img alt=\"\" src=\"http://localhost:8080/suanhaminhanh/images/uploads/images/dichvu/sua-nha-nhanh-gia-re-quan-12.jpg\" style=\"width: 80%; height: 80%;\"></strong></span></span>\r\n</p>\r\n\r\n<p>\r\n	Bạn đang cần sửa chữa và nâng cấp nhanh cho ngôi nhà của mình. Bạn quan tâm tới kế hoạch và phương án thi công tiết kiệm chi phí nhất ? Với nhiều năm kinh nghiệm trong lĩnh vực sửa chữa nhà, Chúng tôi&nbsp;tự tin có thể khắc phục mọi sự cố một cách triệt để.&nbsp;\r\n</p>\r\n\r\n<p>\r\n	Sửa chữa nhà chúng tôi&nbsp;xin cam kết&nbsp;\r\n</p>\r\n\r\n<p>\r\n	- &nbsp;Tư vấn miễn phí mọi sự cố công trình 24/24.\r\n</p>\r\n\r\n<p>\r\n	- &nbsp;Đưa ra phương án phù hợp nhất với kinh phí tối ưu nhất.\r\n</p>\r\n\r\n<p>\r\n	- Triển khai tốc độ công việc nhanh chóng\r\n</p>\r\n\r\n<p>\r\n	- Xử lý và kiểm soát tốt các sự cố liên quan\r\n</p>\r\n\r\n<p>\r\n	Dịch vụ sửa chữa nhà trọn gói,dịch vụ sửa chữa nhà giá rẻ tại tphcm, là một trong những dịch vụ được Minh Ánh đưa ra và được khách hàng ủng hộ nhiệt tình. Bởi lẽ khi đến với dịch vụ sửa chữa nhà trọn gói của Minh Ánh, ngôi nhà của các bạn sẽ hoàn thành với chất lượng, với tính thẩm mỹ và với mức giá hợp lý nhất. Minh Ánh tin rằng Minh Ánh là một trong những lựa chọn an toàn của quý vị.<br>\r\n	Có rất nhiều sự lựa chọn trong gói dịch vụ sủa nhà trọn gói với rất nhiều hạng mục và chi phí khác nhau. Đến với Minh Ánh các bạn sẽ được tư vấn về mọi thứ từ phong cách, phong thủy, cách bài trí đồ đạc&hellip;Sau khi Minh Ánh xây xong các hạng mục, quý khách hàng còn nhận được chính sách bảo hành trọn gói Minh Ánh, mọi hư hỏng &nbsp;thuộc về Minh Ánh sẽ được Minh Ánh bồi thường tất cả hoàn toàn miễn phí.\r\n</p>\r\n\r\n<p>\r\n	Những hạng mục mà Minh Ánh có trong dịch vụ sửa chữa nhà trọn gói:\r\n</p>\r\n\r\n<p>\r\n	Sửa chữa và đi lại hệ thống ống nước, sửa chữa hệ thống điện nước&hellip;<br>\r\n	Tháo gỡ nhà cũ<br>\r\n	Nâng cấp sàn nhà, trần nhà&hellip;<br>\r\n	Sơn, vá , dặm lại tường cũ, quán cà phê hay công xưởng&hellip;<br>\r\n	Sắp sếp lại đồ đạc cho hợp phong cách, phong thủy&hellip;<br>\r\n	Xây tường nhà, nhà vệ sinh, bố trí, dọn dẹp phòng ốc&hellip;<br>\r\n	Ốp lại gạch cho sàn nhàm, tường nhà, lát đá hoa cương cho sân trước..<br>\r\n	.. &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;\r\n</p>\r\n\r\n<p style=\"text-align: center;\">\r\n	<img alt=\"\" src=\"http://localhost:8080/suanhaminhanh/images/uploads/images/dichvu/suachuanha/620.jpg\" style=\"width: 80%; height: 80%;\">\r\n</p>\r\n\r\n<p>\r\n	Ngoài ra, đến với dịch vụ sửa chữa nhà trọn gói Minh Ánh còn cam kết với các bạn:\r\n</p>\r\n\r\n<p>\r\n	Tiến hành thi công đảm bảo an toàn vệ sinh công trình luôn sạch sẽ.<br>\r\n	Nếu có phát sinh sẽ báo với khách hàng và có ghi chú rõ ràng.<br>\r\n	Hợp đồng thỏa thuận của hai bên sẽ rõ ràng từng chi tiết và thực hiện đúng như những gì ghi trong hợp đồng.\r\n</p>\r\n\r\n<p>\r\n	Tiến hành thì công nhành, đúng kĩ thuật và đúng tiến độ bàn giao.<br>\r\n	Một dàn đội ngũ chuyên viên tư vấn miễn phí 12/7.<br>\r\n	Đảm bảo an toàn lao động cho người và tài sản.<br>\r\n	Sẽ có bảng giá rõ ràng từng hạng mục cho bạn dễ dàng lựa chọn mức giá chi<br>\r\n	chí phù hợp với mình.<br>\r\n	Bàn giao công trình đúng tiến độ.\r\n</p>\r\n\r\n<p>\r\n	Hãy liên hệ với Minh Ánh khi bạn đang cần muốn sửa chữa lại mái ấm của mình, Minh Ánh sẽ là những người bạn đồng hành tuyệt vời nhất của các bạn. Hãy đến với dịch vụ sửa nhà giá rẻ nhấc máy lên và gọi khi bạn cần Minh Ánh hỗ trợ nhé!\r\n</p>\r\n\r\n<h1>\r\n	<strong>DỊCH VỤ SỬA CHỮA NHÀ MINH ÁNH</strong>\r\n</h1>\r\n\r\n<p>\r\n	Địa chỉ:&nbsp;21/8B Hẻm 502, Phường Bình Thuận, Quận 7, TPHCM\r\n</p>\r\n\r\n<p>\r\n	Điện thoại:&nbsp;0122 871 0455 - 0909 353 055\r\n</p>\r\n\r\n<p>\r\n	E-mail:&nbsp;<a href=\"mailto:dichvusuachuanhaminhanh@gmail.com\">dichvusuachuanhaminhanh@gmail.com</a>\r\n</p>\r\n\r\n<p>\r\n	Website:&nbsp;<a href=\"mailto:dichvusuachuanhaminhanh@gmail.com\">dichvusuachuanhaminhanh.com</a>\r\n</p>', 'images/uploads/images/dichvu/suachuanha/sua-chua-nha-gia-re.jpg', 'fas fa-pen-fancy', 1, 1, NULL, 1, '2018-10-06 02:49:03', '2018-10-08 04:21:31', 16),
(4, 'CHỐNG THẤM', 'chong-tham', '<p>\r\n	Chúng tôi sẽ nhanh chóng khảo sát đánh giá nguyên nhân gây ra thấm nước cho căn hộ của quý khách hàng và có những phương pháp xử lý nhanh chóng, hiệu quả\r\n</p>', '<p>\r\n	Các công trình được xây dựng ẩu, không đảm bảo chất lượng hay các công trình đã cũ thường xuất hiện tình trạng thấm nước, thấm qua tường, thấm qua mái, trần nhà gây nhiều bất tiện cho gia chủ nhất là về mùa mưa và gây mất thẩm mỹ cho tổng thể ngôi nhà.<br>\r\n	Với các kỹ sư giàu kinh nghiệm, nguồn nhân lực trẻ chúng tôi sẽ nhanh chóng khảo sát đánh giá nguyên nhân gây ra thấm nước cho căn hộ của quý khách hàng và có những phương pháp xử lý nhanh chóng, hiệu quả và tuyệt đối đảm bảo hiện tượng sẽ không tái diễn trở lại\r\n</p>\r\n\r\n<p style=\"text-align: center;\">\r\n	<span style=\"color:#e74c3c;\"><span style=\"font-size:20px;\"><strong>(Gọi ngay:&nbsp;0122.871.0455- 0909353055&nbsp;để được báo giá chuẩn xác nhất)</strong></span></span>\r\n</p>\r\n\r\n<p>\r\n	Các gói dịch vụ chống thấm:<br>\r\n	- Chống thấm toàn bộ bề mặt: chống thấm trần, sênô, mái chéo, chống thấm sân thượng , mái bê tông<br>\r\n	- Chống thấm các công trình ngầm, tầng hầm<br>\r\n	- Chống thấm bể ngầm, bể bơi &hellip; tại các công trình đã qua sử dụng.<br>\r\n	- Chống thấm theo vết nứt trên trần bêtông, mái chéo, sênô, sân thượng<br>\r\n	- Đại lý cung cấp các loại vật liệu chống thấm, sơn chống thấm.<br>\r\n	- Tư vấn, cung cấp giải pháp chống thấm công trình dân dụng và công nghiệp.<br>\r\n	- Cho thuê nhân lực, nhân công, kỹ sư, chuyên gia trong lĩnh vực chống thấm cho các đơn vị xây dựng, cá nhân có nhu cầu.\r\n</p>\r\n\r\n<p>\r\n	Quy trình chống thấm của Minh Ánh:\r\n</p>\r\n\r\n<p>\r\n	I. Chuẩn bị bề mặt trước khi chống thấm:\r\n</p>\r\n\r\n<p>\r\n	- Tháo gỡ, di dời và dọn dẹp chướng ngại vật: ván khuôn, gỗ, sắt thép, xà bần, nước đọng&hellip;<br>\r\n	- Các khuyết tật của bê tông như hốc bọng, lỗ rỗ&hellip; không nên tô trét vữa ximăng che phủ trước khi thi công xử lý chống thấm.<br>\r\n	- Không nên dùng nước trộn ximăng bột để ngâm hay quét hồ dầu ximăng bảo dưỡng bê tông các hạng mục trước khi thi công xử lý chống thấm.<br>\r\n	- Đục và dùng máy cắt hay gió đá cắt các râu thép dư trên sàn bê tông cho sâu tối thiểu 2cm so với mặt bê tông.<br>\r\n	- Các đường ống cấp thoát nước xuyên bê tông hay hộp kỹ thuật nên được định vị và lắp đặt hoàn tất bằng trám vữa hay bê tông tối thiểu &frac12; bề dày bê tông. Các hộp kỹ thuật trong các khu vệ sinh (nếu có) và tường bao nên được xây và tô trát vữa ximăng cao tối thiểu 30 cm để gia cố chống thấm đồng bộ với sàn bê tông.\r\n</p>\r\n\r\n<p style=\"text-align: center;\">\r\n	<img alt=\"\" src=\"http://localhost:8080/suanhaminhanh/images/uploads/images/dichvu/chongtham/chong-tham-cho-mai-nha-bang-epoxy-1.jpg\" style=\"width: 80%; height: 80%;\">\r\n</p>\r\n\r\n<p>\r\n	II. Quy trình thi công chống thấm:<br>\r\n	Công tác chuẩn bị bề mặt chống thấm<br>\r\n	- Băm, đục sạch các lớp hồ vữa ximăng, bê tông dư thừa cho trơ ra bề mặt bê tông kết cấu bằng các dụng cụ cầm tay: búa băm, búa đục, mũi đục nhọn&hellip;<br>\r\n	- Trên bề mặt bê tông kết cấu, kiểm tra và đục mở miệng các đường nứt dài lớn hay xuyên sàn (nếu có) theo rãnh rộng 1-2cm, sâu 2cm. Băm đục gỡ sạch các dăm gỗ, giấy, tạp chất còn sót trên mặt bê tông, đặc biệt tại các góc chân ke tường bao với sàn bê tông.<br>\r\n	- Các hốc bọng, túi đá, lỗ rỗ&hellip; sẽ được đục bỏ các phần bám dính hờ, đục rộng và sâu cho đến phần bê tông đặc chắc.<br>\r\n	- Quanh miệng các lỗ ống thoát nước xuyên sàn bê tông (nếu đã được định vị ngay trong quá trình đổ bê tông, nhưng chưa lắp đặt sản phẩm dừng nước), đục rãnh rộng 2-3cm, sâu 3cm để có thể tiếp nhận nhiều chất chống thấm, lắp đặt sản phẩm dừng nước thanh trương nở (Thanh thủy trương) và gia cố bằng vữa đổ bù không co ngót.<br>\r\n	- Dùng búa băm có lưỡi thép mỏng và sắc để kiểm tra và băm sạch hết các hóa chất, sơn, tạp chất, hồ vữa ximăng dư thừa thấm sâu hay bám dính trên bề mặt bê tông kết cấu cần xử lý chống thấm.<br>\r\n	- Đối với gờ hông đà bê tông hay gờ chân tường bao quanh sàn ban công, sàn mái, mái đón tiền sảnh &nbsp;(cao 20-30cm) sẽ được băm sạch các tạp chất, bụi bẩn để xử lý gia cố chống thấm đồng bộ với sàn bê tông. Trường hợp các sàn bê tông là sàn lệch (khu WC, sênô), thì ngoài phần gờ hông bê tông giật cấp, phần gờ hông chân tường bao xây gạch tô vữa ngay bên trên sẽ được xử lý gia cố chống thấm cao thêm tối thiểu 20cm nữa (để tránh nước thấm loang chân tường sử dụng thực tế sau này).<br>\r\n	- Mài toàn bộ bề mặt cần xử lý chống thấm bằng máy mài có lắp chổi cước sắt để làm bung tróc hết các tạp chất, bụi bẩn còn sót để có bề mặt sạch, chắc chắn cho việc thẩm thấu dung dịch chống thấm tốt. Dọn vệ sinh sạch sẽ bụi đất trên toàn bộ bề mặt cần xử lý chống thấm bằng chổi, cọ quét hay máy thổi cầm tay.<br>\r\n	- Để phơi mặt bê tông khô tự nhiên hoặc làm khô những khu vực còn ẩm ướt trên bề mặt bằng máy thổi cầm tay.\r\n</p>\r\n\r\n<p>\r\n	Quy trình thi công chống thấm:<br>\r\n	- Xử lý gia cố chống thấm cho các lỗ rỗng, hốc bọng, đường nứt, hốc râu thép&hellip; trên sàn bê tông bằng hồ dầu và vữa đổ bù không co ngót.<br>\r\n	- Xử lý quấn thanh cao su trương nở (Thanh thủy trương) tại các khe co giãn, cổ ống xuyên sàn sau đó đổ bù vữa không co.<br>\r\n	- Trường hợp sàn lệch và ống thoát vệ sinh được bố trí đi trên mặt sàn xuyên vách tường vào hộp kỹ thuật, thì các ống này sẽ được quấn thanh cao su trương nở (Thanh thủy trương) quanh ống vị trí gần xát vách hộp kỹ thuật, và được đổ bê tông đá mi ốp chặt vào quanh các vách hộp kỹ thuật (dày khoàng 10cm và cao lên bằng gờ đà bê tông quanh sàn). - Sau khi bê tông đá mi khô cứng, tháo ván khuôn ta tiến hành khò, dán, quyét hoạc phun<br>\r\n	1. Chống thấm bằng màng khò nóng hoặc màng dán lạnh:\r\n</p>\r\n\r\n<p>\r\n	Bước 1: Quét lớp tạo dính.<br>\r\n	Dùng lu sơn để thi công trên bề mặt bằng rộng. Lớp tạo dính được dàn mỏng và đều, phải bao phủ kín bề mặt bê tông (Chỉ thi công diện tích lớp tạo dính lót cho diện tích thi công có thể làm trong ngày).<br>\r\n	Sau khi lớp tạo dính lót khô (cảm nhận bằng cách sờ lên bề mặt không dính tay) tiến hành dán màng chống thấm.\r\n</p>\r\n\r\n<p style=\"text-align: center;\">\r\n	<img alt=\"\" src=\"http://localhost:8080/suanhaminhanh/images/uploads/images/dichvu/chongtham/chong-tham-bang-bi-tum1.jpg\" style=\"width: 80%; height: 80%;\">\r\n</p>\r\n\r\n<p>\r\n	<br>\r\n	Bước 2: Dán màng chống thấm Bitum .<br>\r\n	- Kiểm tra toàn bộ lớp màng trước khi dán. Bảo đảm bề mặt dán hoạc khò phải được úp xuống dưới.<br>\r\n	- Đặt các cuộn vào vị trí cần chống thấm và trải ra để chuẩn bị dán và chuẩn bị các dụng cụ đèn khò thổi lên các tấm trải.<br>\r\n	- Sau đó cuốn ngược lại nhưng không được làm thay đổi các hướng đã định, rồi từ từ trải ra và bắt đầu làm nóng bề mặt bằng đèn khò dùng gas (Hoặc dán như bình thường với mạng dán nguôi &ndash; Màng tự dính). Dụng cụ này sẽ làm bề mặt tan chảy và làm lớp màng nhầy dính vào bề mặt đã được tạo dính lót.<br>\r\n	- Tổ chức thi công từ vị trí thấp nhất và đi về hướng cao dần (nếu bề mặt có độ dốc).<br>\r\n	- Lướt ngọn lửa qua lại và đều đặn vào bề mặt khò dính bên dưới màng. Đồng thời đốt nóng phần diện tích bề mặt thi công, dán phần màng đã khò vào khu vực này. Cần thao tác nhanh các bước để đạt hiệu quả cao. Chú ý phân bố nguồn nhiệt đồng đều.<br>\r\n	- Tác dụng lực cơ học (sử dụng con lăn gỗ hoặc ấn mạnh lực chân) ép phần màng ở khu vực đã khò để tạo một bề mặt phẳng khi hoàn thiện và tránh hiện tượng nhốt bọt khí.\r\n</p>\r\n\r\n<p style=\"text-align: center;\">\r\n	<img alt=\"\" src=\"http://localhost:8080/suanhaminhanh/images/uploads/images/dichvu/chongtham/chongthamtrannha.jpg\" style=\"width: 80%; height: 80%;\">\r\n</p>\r\n\r\n<p>\r\n	<br>\r\n	Bước 3: Những điểm cần chú ý:<br>\r\n	- Tại vị trí chồng mí. Dùng đèn đốt nóng chảy mép màng, dùng bay thi công miết mạnh để làm kín phần tiếp giáp.<br>\r\n	- Các vị trí yếu phải gia cố: Thao tác này kéo dài chất lượng bám dính và tuổi thọ màng. Vì vậy chú trọng gia cố các điểm yếu như: góc tường, khe co giãn, cổ ống.<br>\r\n	- Nếu có hiện tượng bong bóng khí xuất hiện làm phồng rộp màng sau khi thi công, đâm thủng khu vực đó bằng vật sắc nhọn cho thoát hết khí sau đó dán đè tám khác lên với biên độ chồng mí là 50mm.<br>\r\n	- Sau khi thi công hệ thống màng chống thấm, lập tức phải làm lớp bảo vệ, tránh làm rách, hỏng màng do lưu thông, vận chuyển dụng cụ, thiết bị, đặt thép.<br>\r\n	- Thi công lớp bảo vệ trong thời gian sớm nhất có thể. Nếu để lâu, màng sẽ bị bong rộp khỏi bề mặt dán do sự co giãn dưới tác động thay đổi nhiệt độ.\r\n</p>\r\n\r\n<p>\r\n	Công tác ngâm nước kiểm tra<br>\r\n	Toàn bộ các hạng mục khu vệ sinh, sênô, mái bằng, ban công, mái đón tiền sảnh, v.v&hellip; sau khi được xử lý chống thấm bằng sản phẩm chống thấm như: dung dịch chống thấm, vữa chống thấm, màng chống thấm... sẽ được quây lại và bơm nước ngâm tối thiểu 24 giờ để kiểm tra xác nhận kết quả xử lý chống thấm hoàn tất trước khi bàn giao cho công tác hoàn thiện.<br>\r\n	2. Chống thấm bằng các sản phẩm gốc xi măng<br>\r\n	Bước 1: Chuẩn bị dụng cụ thi công và bề mặt<br>\r\n	- Dụng cụ thi công có thể là bàn chà, cọ bản rộng, bay hoặc máy phun vữa.<br>\r\n	- Bề mặt bêtông nên có độ ẩm nhất định (nhưng không được đọng nước) trước khi thi công quét.<br>\r\n	Bước 2: Thi công<br>\r\n	- Thi công hai lớp vuông góc nhau theo chiều từ trên xuống dưới, lớp thứ hai được quét sau khi lớp thứ nhất khô mặt (khoảng 2 - 24h, tùy nhiệt độ ngoài trời cũng như tùy loại sản phẩm dùng).<br>\r\n	Bước 3: Bảo dưỡng<br>\r\n	- Thường các loại vật liệu chống thấm 2 thành phần là sản phẩm gốc xi măng nên cần có yêu cầu bảo dưỡng tốt để đảm bảo vật liệu được ninh kết hết và tạo được sự kết dính tốt với bề mặt cần chống thấm cũng như tạo được lớp màng đặc chắc.<br>\r\n	- Sau khi hoàn thiện, bề mặt nên được bảo dưỡng ngay để tránh bị khô quá nhanh bằng cách phun nước liên tục, che phủ bằng nilông hoặc bao tải ướt.<br>\r\n	- Nếu thi công cho hồ chứa nước thì chỉ nên xả nước vào hồ sau khi đã bảo dưỡng đầy đủ sản phẩm sau 3 ngày.<br>\r\n	Bước 4: Những điểm cần lưu ý<br>\r\n	- Không nên trộn vật liệu quá nhiều cùng một lúc để tránh việc thi công không kịp<br>\r\n	- Khi cần sơn hoàn thiện bề mặt thì nên phủ thêm lớp vữa bảo vệ (ximăng+cát) lên bề mặt lớp chống thấm.<br>\r\n	- Không nên trộn thêm nước vào vật liệu đã đông cứng.<br>\r\n	- Không nên thi công vật liệu dưới ánh nắng mặt trời.<br>\r\n	3. Chống thấm bằng dung dịch phun thẩm thấu:<br>\r\n	Bước 1: Thi công phun<br>\r\n	- Phun dung dịch chống thấm ( vật liệu tiêu biểu hay dung Lemax PU) vào các khuyết tật ưới ẩm bề mặt bằng nước sạch (nhưng không được để đọng nước mặt) trước khi quét vật liệu. Thông thường dùng Rulô hoặcChổi cọ cứng quét vật liệu làm 02 lớp theo 02 chiều vuông góc với nhau để đảm bảo vật liệu phủ kín bề mặt. Quét lớp thứ hai sau khi lớp thứ nhất vừa khô<br>\r\n	- Xử lý chống thấm cho toàn bộ bề mặt sàn và gờ hông bao quanh sàn:<br>\r\n	- Trên toàn bộ bề mặt sàn bê tông và gờ hông đà bê tông/ chân tường bao quanh sàn đã được vệ sinh sạch sẽ và khô ráo, tiến hành phun lớp một vật liệu chống thấm với định mức theo quy định của nhà sản xuất.\r\n</p>\r\n\r\n<p>\r\n	Với các trường hợp chống thấm cụ thể khách hàng cần liên hệ với chúng tôi để được tư vấn tốt hơn trước khi thi công.\r\n</p>\r\n\r\n<p>\r\n	&nbsp;\r\n</p>\r\n\r\n<p>\r\n	<strong>DỊCH VỤ SỬA CHỮA NHÀ MINH ÁNH</strong>\r\n</p>\r\n\r\n<p>\r\n	Địa chỉ:&nbsp;21/8B Hẻm 502, Phường Bình Thuận, Quận 7, TPHCM\r\n</p>\r\n\r\n<p>\r\n	Điện thoại:&nbsp;0122 871 0455 - 0909 353 055\r\n</p>\r\n\r\n<p>\r\n	E-mail:&nbsp;<a href=\"mailto:dichvusuachuanhaminhanh@gmail.com\">dichvusuachuanhaminhanh@gmail.com</a>\r\n</p>\r\n\r\n<p>\r\n	Website:&nbsp;<a href=\"mailto:dichvusuachuanhaminhanh@gmail.com\">dichvusuachuanhaminhanh.com</a>\r\n</p>', 'images/uploads/images/dichvu/chongtham/chongthamtrannha.jpg', 'fas fa-tint', 1, 1, NULL, 1, '2018-10-06 02:49:42', '2018-10-08 03:15:02', 18),
(5, 'TRẦN THẠCH CAO', 'tran-thach-cao', '<p>\r\n	Chúng tôi chuyên thiết kế, thi công, lắp đặt trần thạch cao, vách thạch cao, sơn bả hoàn thiện\r\n</p>', '<p>\r\n	Minh Ánh với 15 năm kinh nghiệm trong lĩnh vực thi công trần thạch cao giá rẻ .Chúng tôi chuyên thiết kế, thi công, lắp đặt trần thạch cao, vách thạch cao, sơn bả hoàn thiện. Chúng tôi có đội thợ sản xuất, thi công lành nghề, tâm huyết với công việc mong rằng đáp ứng được nhu cầu chất lượng sản phẩm, giá cả tốt nhất cho quý khách và tự &nbsp;hào là đơn vị chuyên thi công thạch cao chuyên nghiệp tại TP HCM.\r\n</p>\r\n\r\n<h2>\r\n	Bảng Báo giá&nbsp;<a href=\"http://nhansuanha.com/category/tran-thach-cao\" rel=\"nofollow noopener\" target=\"_blank\">trần thạch cao</a>&nbsp;phần thô 2018\r\n</h2>\r\n\r\n<p>\r\n	-&nbsp;<a href=\"https://nhansuanha.com/gia-tran-thach-cao/bang-bao-gia-tran-thach-cao-phan-tho.html\" rel=\"nofollow noopener\" target=\"_blank\"><strong>Giá Trần Thạch cao</strong></a><strong>&nbsp;phẳng khung xương vĩnh tường</strong>&nbsp;(chưa sơn bả matit ) :&nbsp;<strong>160.000 vnd&nbsp;</strong>đến&nbsp;<strong>170.000 vnd.</strong>&nbsp;Mức giá phụ thuộc vào diện tích thi công, mặt bằng thi công và chúng tôi sẽ được đưa ra báo giá chính xác sau khi khảo sát công trình.\r\n</p>\r\n\r\n<p>\r\n	-&nbsp;<strong>Giá Trần thạch cao giật cấp khung xương hà nội</strong>&nbsp;( chưa sơn bả matit ) :&nbsp;<strong>150.000 vnd</strong>đến&nbsp;<strong>160.000 vnd</strong>. Mức giá phụ thuộc vào diện tích thi công, mặt bằng thi công và chúng tôi sẽ được đưa ra báo giá thạch cao chính xác sau khi khảo sát công trình\r\n</p>\r\n\r\n<p>\r\n	-&nbsp;<strong>Trần thạch cao giật cấp khung xương vĩnh tường</strong>&nbsp;( chưa sơn bả matit ) :&nbsp;<strong>160.000 vnd&nbsp;</strong>đến&nbsp;<strong>170.000 vnd.&nbsp;</strong>Mức giá phụ thuộc vào kiểu giật cấp của trần, diện tích thi công, mặt bằng thi công và chúng tôi sẽ được đưa ra báo giá chính xác sau khi khảo sát công trình.\r\n</p>\r\n\r\n<p>\r\n	&nbsp;Trên đây là bảng báo giá trần thạch cao phần thô chưa thi công sơn bả hoàn thiện của chúng tôi ứng với diện tích trên 30m2. Đối với các công trình nhà dân, chung cư... có diện tích nhỏ hơn 30m2 thì chúng tôi phải nhận thi công với mức giá cao hơn để cân đối chi phí nhân công.\r\n</p>\r\n\r\n<p>\r\n	&nbsp;<a href=\"http://nhansuanha.com/gia-tran-thach-cao/bang-bao-gia-tran-thach-cao-phan-tho-2015.html\" rel=\"nofollow noopener\" target=\"_blank\">Bảng Báo giá trần thạch cao</a>&nbsp;2018 chính xác, cạnh tranh nhất cho các loại trần ( trần phẳng, trần giật cấp ), vách thạch cao sử dụng khung xương hà nội và khung xương vĩnh tường\r\n</p>\r\n\r\n<p>\r\n	Chú ý: khi các bạn thuê&nbsp;<a href=\"https://nhansuanha.com/dich-vu-son-nha/doi-tho-son-ba-nhan-lam-tai-ha-noi.html\" rel=\"nofollow noopener\" target=\"_blank\"><strong>thợ sơn bả</strong></a>&nbsp;hoàn thiện, cộng thêm 50.000 sơn maxilite, 55.000 sơn dulux\r\n</p>\r\n\r\n<p style=\"text-align: center;\">\r\n	<span style=\"color:#e74c3c;\"><span style=\"font-size:20px;\"><strong>(Gọi ngay:&nbsp;0122.871.0455- 0909353055&nbsp;để được báo giá chuẩn xác nhất)</strong></span></span>\r\n</p>\r\n\r\n<p style=\"text-align: center;\">\r\n	<img alt=\"\" src=\"http://localhost:8080/suanhaminhanh/images/uploads/images/dichvu/tranthachcao/chi-phi-lam-tran-thach-cao.jpg\" style=\"width: 80%; height: 80%;\">\r\n</p>\r\n\r\n<p>\r\n	Với trần thạch cao các nhà thiết kế có thể tùy biến theo mọi kiểu dáng kiến trúc đáp ứng đầy đủ nhu cầu về tất cả các lĩnh vực và yêu cầu của khách hàng.Từ trần thạch cao cho nhà phố, biệt thự cho đến trần thạch cao văn phòng, hội trường, bệnh viện, trường học....\r\n</p>\r\n\r\n<p>\r\n	&nbsp;Về mặt tính năng sử dụng của thạch cao, minh chứng rõ ràng nhất là với những tính năng vượt trội so với tường gạch như : tính cách âm tốt của tường vách thạch cao, khả năng chống cháy cao, trọng lượng nhẹ, tốc độ thi công nhanh, chất lượng hoàn thiện với độ thẩm mĩ cao,đồng thời có độ bền vững chắc và đảm bảo tiêu chuẩn .... tường thạch cao đã và đang dần thay thế tường gạch truyền thống trong các công trình xây dựng tại các quốc gia phát triển trên thế giới từ lâu.\r\n</p>\r\n\r\n<p>\r\n	Các bước thi công trần thạch cao\r\n</p>\r\n\r\n<p>\r\n	Cách làm trần thạch cao chìm<br>\r\n	1. Xác định cao độ trần<br>\r\n	- Dùng ống Nivô hoặc tia laser để xác định chiều cao trần<br>\r\n	- Lấy dấu vị trí của mặt bằng trần trên vách hay cột, thường thì nên vạch cao độ ở mặt dưới của khung trần.<br>\r\n	2. Lắp cố định thanh viền tường. Dùng khoan hoặc búa đóng đinh thép cố định cho thanh viền tường lên tường. Khoảng cách lỗ đinh sao cho nhỏ hơn 30cm để đảm bảo độ vững chắc của thanh viền.\r\n</p>\r\n\r\n<p style=\"text-align: center;\">\r\n	<img alt=\"\" src=\"http://localhost:8080/suanhaminhanh/images/uploads/images/dichvu/tranthachcao/thicongtranthachcao.jpg\" style=\"width: 80%; height: 80%;\">\r\n</p>\r\n\r\n<p>\r\n	3. Phân bố chia khoảng trần. Chia mặt trần các khoảng cách thích hợp với các khoảng cách tâm điểm của thanh chính so với thanh phụ là 600x1200mm; 610x1220mm; 600x600mm; 610x610mm.\r\n</p>\r\n\r\n<p>\r\n	4. Treo ty. Cố định các điểm treo Ty bằng cách khoan trực tiếp bằng mũi khoan 8mm và liên kết bởi Pát và tắc Kê. Phân bố khoảng giữa các Ty là 1200mm và Ty gần nhất cách vách 610mm.\r\n</p>\r\n\r\n<p>\r\n	5. Lắp thanh chính. Thanh chính được lắp với khoảng cách khoảng 800-1200mm. Thông thường, các nhà kỹ thuật đặt theo chuẩn là 1000mm.\r\n</p>\r\n\r\n<p>\r\n	6. Lắp thanh phụ<br>\r\n	- Thanh phụ được lắp vào thanh chính gián tiếp hoặc trực tiếp.<br>\r\n	- Sau khi lắp xong các thanh, xem lại và chỉnh sao cho các khung có vị trí đều, ngay ngắn, mặt khung phẳng.&nbsp;\r\n</p>\r\n\r\n<p>\r\n	7.Lắp đặt tấm thạch cao<br>\r\n	* Lắp tấm thứ nhất<br>\r\n	- Kiểm tra lại các tấm phải còn nguyên vẹn không bị sứt mẻ góc.<br>\r\n	- Vít chặt các tấm bằng vít với khoảng cách không lớn hơn 200mm.<br>\r\n	- Lắp sao cho chiều dài tấm vuông góc với thanh phụ<br>\r\n	* Lắp tấm thứ hai<br>\r\n	Khi lắp tấm lớp thứ hai này phải bắt lệch một thanh phụ so với lớp một và chú ý chừa một khe hở\r\n</p>\r\n\r\n<p style=\"text-align: center;\">\r\n	<img alt=\"\" src=\"http://localhost:8080/suanhaminhanh/images/uploads/images/dichvu/tranthachcao/dong-tran-thach-cao-tai-quan-binh-thanh.jpg\" style=\"width: 80%; height: 80%;\">\r\n</p>\r\n\r\n<p>\r\n	8. Phủ kín mối nối<br>\r\n	- Phủ kín các mối nối giữa các tấm, các đầu vít thường dùng là bột bả. Đảm bảo sau khi phủ bề mặt bằng bột bả, bề mặt trần phải phẳng tránh để lại gợn sóng. Lưu ý trước khi sơn bả, khoảng cách giữa các tấm phải được dán băng keo lưới để đảm bảo bề mặt trần không bị bong nứt về sau.<br>\r\n	- Cuối cùng là dùng cưa và dao để xử lý cắt viền trần. Về cơ bản, quá trình làm trần thạch cao coi như hoàn thiện, chỉ lưu ý trước khi tiến hành cần xem kỹ bản vẽ để có biện pháp xử lý các vị trí lắp đặt thiết bị nội thất khác trên trần như quạt, đèn&hellip;\r\n</p>\r\n\r\n<p style=\"text-align: center;\">\r\n	<img alt=\"\" src=\"http://localhost:8080/suanhaminhanh/images/uploads/images/dichvu/tranthachcao/201204220945_img_4892.jpg\" style=\"width: 80%; height: 80%;\">\r\n</p>\r\n\r\n<p>\r\n	B. Cách làm trần thạch cao nổi<br>\r\n	- Ta thực hiện tương tự như làm đối với trần chìm cho tới bước lắp thanh chính (bước 5). Thanh chính và thanh phụ của trần nổi có cấu tạo khác với trần chìm.\r\n</p>\r\n\r\n<p>\r\n	Tiến hành tiếp như sau:<br>\r\n	- Lắp thanh phụ<br>\r\n	- Lắp các lỗ mộng của thanh chính với đầu ngàm của thanh phụ dài VT-1200 hoặc VT-1220 cách nhau 600mm.<br>\r\n	- Lắp lỗ mộng của thanh phụ dài vào đầu ngàm của thanh phụ ngắn VT600 cách 600mm.&nbsp;\r\n</p>\r\n\r\n<p>\r\n	- Sau khi điều chỉnh khoảng cách và vị trí đều đẹp, tiến hành lắp tấm thạch cao lên khung.<br>\r\n	- Tấm được lắp khớp vào các thanh. Xử lý viền bằng dao cắt và cưa. Quan sát lại vị trí các tấm thật kỹ càng, vệ sinh bề mặt trần trước khi bàn giao hoàn thiện.<br>\r\n	Trên đây là phần giới thiệu cách làm hai loại trần thạch cao nổi và trần chìm. Chỉ cần có tính thẩm mỹ, khéo tay là các bạn có thể tự mua nguyên vật liệu về và tự thiết kế trần thạch cao cho ngôi nhà của mình.\r\n</p>\r\n\r\n<p style=\"text-align: center;\">\r\n	<img alt=\"\" src=\"http://localhost:8080/suanhaminhanh/images/uploads/images/dichvu/tranthachcao/maxresdefault.jpg\" style=\"width: 80%; height: 80%;\">\r\n</p>\r\n\r\n<p style=\"text-align: center;\">\r\n	<img alt=\"\" src=\"http://localhost:8080/suanhaminhanh/images/uploads/images/dichvu/tranthachcao/tran-thach-cao-giat-cap.jpg\" style=\"width: 80%; height: 80%;\">\r\n</p>\r\n\r\n<p style=\"text-align: center;\">\r\n	&nbsp;\r\n</p>\r\n\r\n<h1>\r\n	<strong>DỊCH VỤ SỬA CHỮA NHÀ MINH ÁNH</strong>\r\n</h1>\r\n\r\n<p>\r\n	Địa chỉ:&nbsp;21/8B Hẻm 502, Phường Bình Thuận, Quận 7, TPHCM\r\n</p>\r\n\r\n<p>\r\n	Điện thoại:&nbsp;0122 871 0455 - 0909 353 055\r\n</p>\r\n\r\n<p>\r\n	E-mail:&nbsp;<a href=\"mailto:dichvusuachuanhaminhanh@gmail.com\">dichvusuachuanhaminhanh@gmail.com</a>\r\n</p>\r\n\r\n<p>\r\n	Website:&nbsp;<a href=\"mailto:dichvusuachuanhaminhanh@gmail.com\">dichvusuachuanhaminhanh.com</a>\r\n</p>', 'images/uploads/images/dichvu/tranthachcao/thicongtranthachcao.jpg', 'fas fa-square', 1, 1, NULL, 1, '2018-10-06 02:50:26', '2018-10-08 03:25:55', 19),
(6, 'SỬA CỬA SẮT', 'sua-cua-sat', '<p>\r\n	Minh Ánh chuyên nhận gia công làm mới và sửa chữa &nbsp;tận nơi các loại sản phẩm như : cửa cổng, cửa sắt, cửa sắt 2 cánh, cửa sắt 4 cánh, cửa sắt 1 cánh, cửa sắt sơn tỉnh điện\r\n</p>', '<p>\r\n	Minh Ánh chuyên nhận gia công làm mới và sửa chữa &nbsp;tận nơi các loại sản phẩm như : cửa cổng, cửa sắt, cửa sắt 2 cánh, cửa sắt 4 cánh, cửa sắt 1 cánh, cửa sắt sơn tỉnh điện, cửa sắt giả gỗ, cửa sổ sắt 2 cánh, cửa sổ sắt 4 cánh, cửa sổ lùa, lan can, cầu thang sắt, cầu thang kính, cầu thang lượn, cầu thang xương cá, cầu thang thoát hiểm, cầu thang xoắn ốc, &nbsp;mái tôn, mái vòm, mái lấy sáng, mái kéo, mái trược, &nbsp;mái ngói, vì kèo nhà xưởng, Với đội ngũ anh em công nhân nhân lành nghề , chăm chỉ làm việc nhiệt tình với các công việc được giao. Đội ngũ thợ sắt chúng tôi có số lượng khách hàng đông đảo trên địa bàn các quận huyện tại Hà Nội tin dùng sản phẩm cửa sắt chúng tôi cung cấp.\r\n</p>\r\n\r\n<p style=\"text-align: center;\">\r\n	<span style=\"color:#e74c3c;\"><span style=\"font-size:20px;\"><strong>(Gọi ngay:&nbsp;0122.871.0455- 0909353055&nbsp;để được báo giá chuẩn xác nhất)</strong></span></span><br>\r\n	<br>\r\n	<img alt=\"\" src=\"http://localhost:8080/suanhaminhanh/images/uploads/images/dichvu/suacuasat/Untitled.png\" style=\"width: 80%; height: 80%;\">&nbsp;\r\n</p>\r\n\r\n<p style=\"text-align: center;\">\r\n	&nbsp;\r\n</p>\r\n\r\n<p style=\"text-align: center;\">\r\n	<br>\r\n	<strong>Giá trên bao gồm:</strong>\r\n</p>\r\n\r\n<p style=\"text-align: center;\">\r\n	<img alt=\"\" src=\"http://localhost:8080/suanhaminhanh/images/uploads/images/dichvu/suacuasat/hxh1413460719.jpg\" style=\"width: 80%; height: 80%;\">\r\n</p>\r\n\r\n<p>\r\n	Minh Ánh cam kết mang đến cho khách hàng những gói dịch vụ nhiều ưu đãi nhất, tốt nhất, đẹp nhất mà không đơn vị nào có thể đáp ứng và lấn án được trình độ kỹ thuật của đơn vị chúng tôi trên địa bàn TP HCM.&nbsp;\r\n</p>\r\n\r\n<p>\r\n	Đội thợ cơ khí chúng tôi có khắp trên địa bàn TP HCM, gọi đâu có đó, nhiệt tình , tận tâm với công việc của anh chị khách hàng yêu cầu. &nbsp;\r\n</p>\r\n\r\n<p>\r\n	Minh Ánh chuyên cung cấp các dịch vụ thi công thiết kế, sửa chữa cửa sắt, cửa Pano, cửa chính, cửa sổ, cửa sắt 4 cánh, hàng rào, lan can cầu thang, mái che, mái vòm, mái ngói, nhà để xe, nhà xưởng bằng sắt, nhôm, inox theo yêu cầu.&nbsp;\r\n</p>\r\n\r\n<p>\r\n	Không chỉ biệt thự có cửa cổng, cửa sắt lớn, các nhà phố nhỏ (trên dưới 4m chiều ngang) cũng có thể áp dụng mẫu cửa cổng rào, cửa sắt sơn trắng cho mặt tiền với vài biến tấu. Gần đây xuất hiện dạng cửa cổng, cửa sắt &nbsp;kết hợp với hàng rào bằng nhựa vinyl trắng (có lõi thép bên trong) cũng tạo được yếu tố thẩm mỹ tương tự mà lại tránh được gỉ sét, giảm công sơn phết lại hàng năm.\r\n</p>\r\n\r\n<p style=\"text-align: center;\">\r\n	<img alt=\"\" src=\"http://localhost:8080/suanhaminhanh/images/uploads/images/dichvu/suacuasat/cua-sat-12(1).jpg\" style=\"width: 80%; height: 80%;\">\r\n</p>\r\n\r\n<p>\r\n	Hiện nay, khá nhiều biệt thự và nhà phố chuộng kiểu cửa cổng với màu trắng chủ đạo. Các thiết kế có hình thức đơn giản, ít &ldquo;chông gai&rdquo; hơn và hài hoà với kiểu dáng nhà. Có một nguyên tắc mà hầu hết các kiến trúc sư thường &quot;hay quên&quot;, đó là hàng rào, cửa cổng, cửa cổng tự động, cửa sắt mới thu hút sự chú ý cho nhiều người, &nbsp;Để tăng thêm vẻ tự nhiên, hoang dã và bớt đi vẻ xám xịt của hàng rào cửa sắt có thể trồng một số loại cây dưới chân rào.\r\n</p>\r\n\r\n<p>\r\n	Dịch vụ sửa chữa cửa sắt hàng đầu tại TP HCM với nhiều thợ sắt chuyên nghiệp lâu năm sẽ làm cho quý khách hàng lòng về độ nét của các mối hàn đảm bảo và rất đẹp, bền và chắt.\r\n</p>\r\n\r\n<p>\r\n	Minh Ánh luôn mong muốn đem đến cho quý khách hàng những sản phẩm tốt nhất nhưng xin gửi đến bạn một lời khuyên nho nhỏ bạn nên nhờ sự tư vấn của chuyên gia thiết kế hoặc những người có kinh nghiệm trong thiết kế để chọn cho mình một sản phẩm cửa sắt phù hợp cho ngôi nhà của mình, tránh trường hợp cửa sắt không phù hợp với ngôi nhà sẽ làm mất đi vẻ thẩm mỹ và phần sang trọng trước đó của nhà bạn. cánh cổng là yếu tố quan trọng là bộ mặt của ngôi nhà nên bạn phải chọn thật cẩn thận để có một sản phẩm cửa sắt ưng ý.&nbsp;\r\n</p>\r\n\r\n<p style=\"text-align: center;\">\r\n	<img alt=\"\" src=\"http://localhost:8080/suanhaminhanh/images/uploads/images/dichvu/suacuasat/kinh-13318101248.jpg\" style=\"width: 80%; height: 80%;\">\r\n</p>\r\n\r\n<p>\r\n	Minh Ánh cam đoan những sản phẩm cửa sắt của chúng tôi luôn hợp thời trang, phong thủy và bảo đảm an toàn cho ngôi nhà bạn.\r\n</p>\r\n\r\n<p>\r\n	Hãy liên hệ với Minh Ánh khi bạn đang cần muốn sửa chữa lại mái ấm của mình, Minh Ánh sẽ là những người bạn đồng hành tuyệt vời nhất của các bạn. Hãy nhấc máy lên và gọi khi bạn cần Minh Ánh hỗ trợ nhé!\r\n</p>\r\n\r\n<p>\r\n	&nbsp;\r\n</p>\r\n\r\n<h1>\r\n	<strong>DỊCH VỤ SỬA CHỮA NHÀ MINH ÁNH</strong>\r\n</h1>\r\n\r\n<p>\r\n	Địa chỉ:&nbsp;21/8B Hẻm 502, Phường Bình Thuận, Quận 7, TPHCM\r\n</p>\r\n\r\n<p>\r\n	Điện thoại:&nbsp;0122 871 0455 - 0909 353 055\r\n</p>\r\n\r\n<p>\r\n	E-mail:&nbsp;<a href=\"mailto:dichvusuachuanhaminhanh@gmail.com\">dichvusuachuanhaminhanh@gmail.com</a>\r\n</p>\r\n\r\n<p>\r\n	Website:&nbsp;<a href=\"mailto:dichvusuachuanhaminhanh@gmail.com\">dichvusuachuanhaminhanh.com</a>\r\n</p>', 'images/uploads/images/dichvu/suacuasat/cua-sat-12(1).jpg', 'fab fa-squarespace', 1, 1, NULL, 1, '2018-10-06 02:50:52', '2018-10-08 03:34:13', 20);
INSERT INTO `posts` (`id`, `title`, `path`, `description`, `content`, `image`, `icon`, `post_type`, `isActive`, `category_item_id`, `user_id`, `created_at`, `updated_at`, `seo_id`) VALUES
(7, 'SỬA CỬA NHÔM, KÍNH', 'sua-cua-nhom-kinh', '<p>\r\n	Minh Ánh chuyên&nbsp;sửa chữa cửa&nbsp;trễ cánh ,bung bản lề ,hư khóa và lắp đặt hạng mục vách ngăn ,cửa sổ, cửa đi ,cửa bản lề sàn ,lan can cầu thang cho gia đình tại khu dân cư.\r\n</p>', '<p>\r\n	Minh Ánh chuyên&nbsp;sửa chữa cửa&nbsp;trễ cánh ,bung bản lề ,hư khóa và lắp đặt hạng mục vách ngăn ,cửa sổ, cửa đi ,cửa bản lề sàn ,lan can cầu thang cho gia đình tại khu dân cư.\r\n</p>\r\n\r\n<center>\r\n	<table id=\"bao-gia-kinh-cuong-luc\" summary=\"BẢNG BÁO GIÁ CỬA KÍNH CƯỜNG LỰC THEO ĐỘ DÀY MỚI CỦA LÀ ÁNH NĂM 2018\">\r\n		<thead>\r\n			<tr>\r\n				<th>\r\n					<p>\r\n						STT\r\n					</p>\r\n				</th>\r\n				<th>\r\n					<p>\r\n						LOẠI KÍNH THEO ĐỘ DÀY\r\n					</p>\r\n				</th>\r\n				<th>\r\n					<p>\r\n						ĐVT\r\n					</p>\r\n				</th>\r\n				<th>\r\n					<p>\r\n						ĐƠN GIÁ\r\n					</p>\r\n				</th>\r\n			</tr>\r\n		</thead>\r\n		<tbody>\r\n			<tr>\r\n				<td>\r\n					<p style=\"text-align: center;\">\r\n						1\r\n					</p>\r\n				</td>\r\n				<td>\r\n					<p style=\"text-align: center;\">\r\n						Báo giá kính cường lực dày 8mm (8ly)\r\n					</p>\r\n				</td>\r\n				<td>\r\n					<p style=\"text-align: center;\">\r\n						M2\r\n					</p>\r\n				</td>\r\n				<td>\r\n					<p style=\"text-align: center;\">\r\n						550,000 đ\r\n					</p>\r\n				</td>\r\n			</tr>\r\n			<tr>\r\n				<td>\r\n					<p style=\"text-align: center;\">\r\n						2\r\n					</p>\r\n				</td>\r\n				<td>\r\n					<p style=\"text-align: center;\">\r\n						Báo giá kính cường lực dày 10mm (10ly)\r\n					</p>\r\n				</td>\r\n				<td>\r\n					<p style=\"text-align: center;\">\r\n						M2\r\n					</p>\r\n				</td>\r\n				<td>\r\n					<p style=\"text-align: center;\">\r\n						700,000 đ\r\n					</p>\r\n				</td>\r\n			</tr>\r\n			<tr>\r\n				<td>\r\n					<p style=\"text-align: center;\">\r\n						3\r\n					</p>\r\n				</td>\r\n				<td>\r\n					<p style=\"text-align: center;\">\r\n						Báo giá kính cường lực dày 12mm (12ly)\r\n					</p>\r\n				</td>\r\n				<td>\r\n					<p style=\"text-align: center;\">\r\n						M2\r\n					</p>\r\n				</td>\r\n				<td>\r\n					<p style=\"text-align: center;\">\r\n						800,000 đ\r\n					</p>\r\n				</td>\r\n			</tr>\r\n			<tr>\r\n				<td>\r\n					<p style=\"text-align: center;\">\r\n						4\r\n					</p>\r\n				</td>\r\n				<td>\r\n					<p style=\"text-align: center;\">\r\n						Báo giá kính cường lực dày 15mm (15ly)\r\n					</p>\r\n				</td>\r\n				<td>\r\n					<p style=\"text-align: center;\">\r\n						M2\r\n					</p>\r\n				</td>\r\n				<td>\r\n					<p style=\"text-align: center;\">\r\n						1,650,000 đ\r\n					</p>\r\n				</td>\r\n			</tr>\r\n			<tr>\r\n				<td>\r\n					<p style=\"text-align: center;\">\r\n						5\r\n					</p>\r\n				</td>\r\n				<td>\r\n					<p style=\"text-align: center;\">\r\n						Báo giá kính cường lực dày 19mm (19ly)\r\n					</p>\r\n				</td>\r\n				<td>\r\n					<p style=\"text-align: center;\">\r\n						M2\r\n					</p>\r\n				</td>\r\n				<td>\r\n					<p style=\"text-align: center;\">\r\n						2,750,000 đ\r\n					</p>\r\n				</td>\r\n			</tr>\r\n		</tbody>\r\n	</table>\r\n</center>\r\n\r\n<center>\r\n	&nbsp;\r\n</center>\r\n\r\n<p style=\"line-height: 1.2; text-align: center;\">\r\n	<span style=\"color:#e74c3c;\"><span style=\"font-size:20px;\"><strong>(Gọi ngay:&nbsp;0122.871.0455- 0909353055&nbsp;để được báo giá chuẩn xác nhất giá trên chỉ để tham khảo tùy thời điểm giá có thể thấp hơn sơ với bảng báo giá)</strong></span></span>\r\n</p>\r\n\r\n<p>\r\n	Cửa nhôm hiện nay là một phần không thể thiếu trong cuộc sống văn minh hiện đại ngày nay của chúng ta .Cửa nhôm kính luôn được sửa dụng cho nhiều hạng mục công trình trong đó phải kể tới mức phổ biến cửa sổ lùa ,cửa bật cho trung cư ,nhà ở ,văn phòng làm việc với ưu điểm lấy ánh sáng ,lưu thông gió tự nhiên rất thuận tiện .Ngoài ra người ta còn dùng vật liệu nhôm kính cho mặt dựng cao tầng ,vách ngăn phòng làm việc &hellip;\r\n</p>\r\n\r\n<p style=\"text-align: center;\">\r\n	<img alt=\"\" src=\"http://localhost:8080/suanhaminhanh/images/uploads/images/dichvu/cuanhomkinh/ycuakinh2.jpg\" style=\"width: 80%; height: 80%;\">\r\n</p>\r\n\r\n<h3>\r\n	<strong>Mẫu cửa nhôm kính đẹp</strong>\r\n</h3>\r\n\r\n<ul>\r\n	<li>\r\n		Cửa đi mở, lùa&nbsp;thường nhôm trắng sữa hệ 700, dưới lá nhôm trên kính, hoặc nẹp gài chia ô giã gổ 5ly &ndash; 8ly Giá chỉ từ&nbsp;790.000 &ndash; 950.000 VND/M2\r\n	</li>\r\n	<li>\r\n		Cửasổ lùa thường nhôm trắng sữa hệ 700, kính trắng từ 5ly &ndash; 8ly Giá chỉ từ 750.000 &ndash; 850.000 VND/M2\r\n	</li>\r\n	<li>\r\n		Cửa&nbsp;sổ mở&nbsp;thường nhôm trắng sữa hệ 700, kính trắng, nẹp gài chi ô giã gỗ&nbsp;kính từ 5-8ly Giá chỉ từ&nbsp;850.000 &ndash; 1.150.000 VND/M2\r\n	</li>\r\n	<li>\r\n		Cửa đi mở, lùa thường nhôm trắng sữa hệ 1000, dưới lá nhôm trên kính, kính suốt 8 hoặc nẹp gài chi ô giã gỗ kính 8 ly cường lực&nbsp;\r\n	</li>\r\n	<li>\r\n		Giá chỉ từ 1.000.000 &ndash; 1.350.000 VND/M2\r\n	</li>\r\n	<li>\r\n		Cửa đi mở, lùa&nbsp;thường nhôm&nbsp;hệ 700, VÂN GỖ&nbsp;kính trắng suốt từ 5ly &ndash; 8ly&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Giá chỉ từ&nbsp;800.000 &ndash; 950.000 VND/M2\r\n	</li>\r\n	<li>\r\n		Cửa&nbsp;sổ lùa&nbsp;nhôm VÂN GỖ hệ 700, kính suốt từ 5ly-8ly&nbsp;\r\n	</li>\r\n	<li>\r\n		Giá chỉ từ&nbsp;950.000 &ndash; 1.050.000 VND/M2\r\n	</li>\r\n	<li>\r\n		Cửa&nbsp;sổ mở&nbsp;thường nhôm VÂN GỖ hệ 700, kính trắng suốt hoặc nẹp gài chi ô giã gỗ kính từ 5 ly &ndash; 8ly Giá chỉ từ&nbsp;850.000 &ndash; 1.050.000/m2\r\n	</li>\r\n	<li>\r\n		Cửa đi mở,lùa thường nhôm VÂN GỖ hệ 1000, dưới lá nhôm trên kính,kính suốt 8 ly hoặc nẹp gài chi ô giã gỗ Giá chỉ từ&nbsp;1.300.000 &ndash; 1.450.000 VND/M2\r\n	</li>\r\n</ul>\r\n\r\n<p>\r\n	<a href=\"http://kinhcuongluc.com.vn/danh-muc/cua-nhom-viet-nhat-52.html\" rel=\"nofollow noopener\" target=\"_blank\"><strong><u>Bảng báo giá cửa nhôm việt nhật vijalco, hondalex</u></strong></a>\r\n</p>\r\n\r\n<p>\r\n	<strong>Mẫu cửa nhôm kính cao cấp việt nhật</strong>\r\n</p>\r\n\r\n<p>\r\n	<a href=\"http://kinhcuongluc.com.vn/danh-muc/cua-nhom-viet-nhat-52.html\" rel=\"nofollow noopener\" target=\"_blank\"><strong>Báo giá cửa nhôm việt nhật cao cấp vân gỗ sơn tĩnh điện:catalogue cửa nhôm việt nhật, cửa nhôm hệ việt nhật, cửa nhôm việt nhật, cửa nhôm việt nhật hệ 1000, cửa nhôm việt nhật vijalco, cửa sổ nhôm việt nhật, giá cửa nhôm việt nhật, giá cửa nhôm việt nhật hệ 1000</strong></a>\r\n</p>\r\n\r\n<ol>\r\n	<li>\r\n		Mẫu cửa sổ lùa hệ 700 : thanh nhôm Vijalco chính hãng 1.450 - 1.650.000\r\n	</li>\r\n	<li>\r\n		Mẫu cửa sổ bật chữ a hệ 700 : thanh nhôm Vijalco chính hãng 1.500 - 1.750.00\r\n	</li>\r\n	<li>\r\n		Mẫu cửa lùa đi hệ 1000 : thanh nhôm Vijalco chính hãng 2.100.00 - 2.500.000\r\n	</li>\r\n	<li>\r\n		Mẫu cửa đi mở hệ 1000 : thanh nhôm Vijalco chính hãng 2.100.00 - 2.500.000\r\n	</li>\r\n	<li>\r\n		Mẫu cửa đi hệ đặt biệt: thanh nhôm Vijalco chính hãng 2.600.00 - 3.500.000\r\n	</li>\r\n</ol>\r\n\r\n<p>\r\n	<strong>Báo giá cửa nhôm xingfa nhập khẩu chính hãng</strong>\r\n</p>\r\n\r\n<p style=\"text-align: center;\">\r\n	<a href=\"http://kinhcuongluc.com.vn/san-pham/bao-gia-cua-nhom-xingfa-157.html\" rel=\"nofollow noopener\" target=\"_blank\"><img data-media-urn=\"\" src=\"https://media.licdn.com/dms/image/C4E12AQF_UeYzTW-2Hg/article-inline_image-shrink_1500_2232/0?e=1544659200&amp;v=beta&amp;t=DM4O8efEL5oUVW3ggVSvBZx7GJ-GXiL6UO7axjgF5UM\" style=\"height: 80%; width: 80%;\"></a>\r\n</p>\r\n\r\n<h3>\r\n	<strong>Mẫu cửa nhôm kính xingfa cao cấp</strong>\r\n</h3>\r\n\r\n<p>\r\n	<a href=\"http://kinhcuongluc.com.vn/san-pham/bao-gia-cua-nhom-xingfa-157.html\" rel=\"nofollow noopener\" target=\"_blank\"><strong>báo giá cửa nhôm xingfa hcm</strong></a><strong>, các mẫu cửa nhôm xingfa, cách làm cửa nhôm xingfa, cách lắp đặt cửa nhôm xingfa, cửa hàng bán nhôm xingfa, cửa kính khung nhôm xingfa, cửa nhôm hệ xingfa, cửa nhôm xingfa 4 canh, cửa nhôm xingfa 4 cánh, cửa nhôm xingfa có mấy loại, cửa nhôm xingfa có mấy màu, cửa nhôm xingfa giá, cửa nhôm xingfa giá rẻ, cửa nhôm xingfa hcm, cửa nhôm xingfa hệ 55, cửa nhôm xingfa hệ 93, cửa nhôm xingfa kính cường lực, cửa nhôm xingfa là gì, cửa nhôm xingfa nhập khẩu</strong>\r\n</p>\r\n\r\n<p>\r\n	&nbsp;\r\n</p>\r\n\r\n<h3>\r\n	<strong>Cửa nhôm xingfa xếp gấp trượt</strong>\r\n</h3>\r\n\r\n<p>\r\n	<strong>nhập khẩu chính hãng, cửa nhôm xingfa phòng ngủ, cửa nhôm xingfa tem đỏ, cửa nhôm xingfa tại tphcm, cửa nhôm xingfa vân gỗ, gia công cửa nhôm xingfa, gioăng cửa nhôm xingfa, giới thiệu cửa nhôm xingfa, hướng dẫn làm cửa nhôm xingfa, làm cửa nhôm xingfa, máy sản xuất cửa nhôm xingfa, mẫu cửa nhôm xingfa, mẫu cửa nhôm xingfa đẹp, phụ kiện cửa nhôm xingfa, sản xuất cửa nhôm xingfa, thi công cửa nhôm xingfa tại đà nẵng, đánh giá cửa nhôm xingfa</strong>\r\n</p>\r\n\r\n<p>\r\n	&nbsp;\r\n</p>\r\n\r\n<p>\r\n	Cửa sổ lùa trượt Nhôm Xingfa hệ 93 chính hãng giá : 1.600.000/m2\r\n</p>\r\n\r\n<p>\r\n	Cửa sổ mở quay Nhôm Xingfa hệ 55 chính hãng giá : 1.700.000/m2\r\n</p>\r\n\r\n<p>\r\n	Cửa đi lùa trượt Nhôm Xingfa hệ 93 chính hãng giá : 1.800.000/m2\r\n</p>\r\n\r\n<p>\r\n	Cửa đi mở quay Nhôm Xingfa hệ 55 chính hãng giá : 1.850.000/m2\r\n</p>\r\n\r\n<p>\r\n	Cửa lùa xếp trượt Nhôm Xingfa hệ 55 chính hãng giá : 1900.000/m2\r\n</p>\r\n\r\n<p>\r\n	&nbsp;\r\n</p>\r\n\r\n<p>\r\n	Cửa kính vật liệu còn quan trọng và phổ biến hơn rất nhiều không chỉ trong kiến trúc xây dựng mà còn trong ngành công nghiệp ,khoa học .Với cuộc sống thường nhật người ta sử dụng kiếng trong vai trò cửa kính cường lực ,vách kính ,mặt dựng kính ,lan can kính ,kính phóng tắm .\r\n</p>\r\n\r\n<p>\r\n	Xét về những ưu điểm mà cửa nhôm kính đem lại vô cùng to lớn ,làm rhay đổi hoàn toàn bộ mặt mới của tphcm năng động bậc nhất cả nước .Tuy nhiên quá trình lắp đặt và sử dụng đã có từ lâu hay do thên tai gió bão làm cửa nhôm kính hư hao mòn bất cứ khi nào.\r\n</p>\r\n\r\n<p style=\"text-align: center;\">\r\n	<img alt=\"\" src=\"http://localhost:8080/suanhaminhanh/images/uploads/images/dichvu/cuanhomkinh/vach-ngan-van-phong-014.jpg\" style=\"width: 80%; height: 80%;\">\r\n</p>\r\n\r\n<p>\r\n	Hãy gọi cho Minh Ánh bạn sẽ tiết kiệm thời gian cũng như chi phí bởi chúng tôi có cơ sở sửa chữa khắp mọi nơi tại TP HCM .\r\n</p>\r\n\r\n<p>\r\n	Minh Ánh của chúng tôi có cơ sở đặt tại quận &nbsp;7 sẽ có mặt sớm nhất khi nào cần\r\n</p>\r\n\r\n<p>\r\n	-Thợ chuyên nghành của chúng tôi đã để lại hiều dấu ấn trong các công trình không chỉ có tphcm mà còn khắp cả nước .Bằng kinh nghiệm được đào tạo ở Đài Loan bởi chuyên gia hàng đầu ,chúng tôi sẽ sửa chữa lắp mới mọi hạng mục công trình từ dân dụng cho tới nhà trung cư cao ốc trọc trời\r\n</p>\r\n\r\n<p>\r\n	-Luôn trang bị dụng cụ trang thiết bị và đặc biệt chúng tôi còn là nhà phân phối sản xuất lên giá thành lúc nào cũng rẻ hơn các đơn vị khác\r\n</p>\r\n\r\n<p>\r\n	-Thời gian mở cửa phục vụ là 24h kể cả ngày lễ.\r\n</p>\r\n\r\n<p>\r\n	&nbsp;\r\n</p>\r\n\r\n<h1>\r\n	<strong>DỊCH VỤ SỬA CHỮA NHÀ MINH ÁNH</strong>\r\n</h1>\r\n\r\n<p>\r\n	Địa chỉ:&nbsp;21/8B Hẻm 502, Phường Bình Thuận, Quận 7, TPHCM\r\n</p>\r\n\r\n<p>\r\n	Điện thoại:&nbsp;0122 871 0455 - 0909 353 055\r\n</p>\r\n\r\n<p>\r\n	E-mail:&nbsp;<a href=\"mailto:dichvusuachuanhaminhanh@gmail.com\">dichvusuachuanhaminhanh@gmail.com</a>\r\n</p>\r\n\r\n<p>\r\n	Website:&nbsp;<a href=\"mailto:dichvusuachuanhaminhanh@gmail.com\">dichvusuachuanhaminhanh.com</a>\r\n</p>\r\n\r\n<p>\r\n	&nbsp;\r\n</p>', NULL, 'fas fa-door-open', 1, 1, NULL, 1, '2018-10-06 02:51:15', '2018-10-08 04:26:34', 21),
(8, 'THIẾT KẾ SỮA CHỮA NHÀ BẾP', 'thiet-ke-sua-chua-nha-bep', '<p>\r\n	Sở hữu một khoảng sân vườn sẽ giúp mang đến cho bạn có một cuộc sống an nhàn và tao nhã. Tùy vào diện tích khoảng trống ngôi nhà mà bạn thiết kế khuôn viên sân vườn như thế nào cho phù hợp.\r\n</p>', '<p>\r\n	<br>\r\n	Sở hữu một khoảng sân vườn sẽ giúp mang đến cho bạn có một cuộc sống an nhàn và tao nhã. Tùy vào diện tích khoảng trống ngôi nhà mà bạn thiết kế khuôn viên sân vườn như thế nào cho phù hợp. Với những khu vườn đủ rộng bạn có thể thiết kế tiểu cảnh sân vườn, suối nhân tạo, ao hồ&hellip;Và với sân vườn có ao hồ thì việc xuất hiện một chiếc cầu nhỏ chính là điểm nhấn ấn tượng cho sân vườn của bạn. Thiết kế cầu trong khu vườn thường sử dụng loại gỗ ván ép càng tôn lên vẻ đẹp tự nhiên cho khu vườn của bạn. Với hình ảnh chiếc cầu gỗ bắt qua ao hồ, kích thước lớn hay nhỏ, dài hay ngắn tuy vào khu vườn sẽ tạo cảm giác gần gũi, thân thuộc cho sân vườn.\r\n</p>\r\n\r\n<p style=\"text-align: center;\">\r\n	<img alt=\"\" src=\"http://localhost:8080/suanhaminhanh/images/uploads/images/tintuc/suachuabep/sua-nha-bep-az.jpg\" style=\"width: 80%; height: 80%;\">\r\n</p>\r\n\r\n<p style=\"text-align: center;\">\r\n	<br>\r\n	Sở hữu một khoảng sân vườn sẽ giúp mang đến cho bạn có một cuộc sống an nhàn và tao nhã. Tùy vào diện tích khoảng trống ngôi nhà mà bạn thiết kế khuôn viên sân vườn như thế nào cho phù hợp. Với những khu vườn đủ rộng bạn có thể thiết kế tiểu cảnh sân vườn, suối nhân tạo, ao hồ&hellip;Và với sân vườn có ao hồ thì việc xuất hiện một chiếc cầu nhỏ chính là điểm nhấn ấn tượng cho sân vườn của bạn.\r\n</p>\r\n\r\n<p>\r\n	Thiết kế cầu trong khu vườn thường sử dụng loại gỗ ván ép càng tôn lên vẻ đẹp tự nhiên cho khu vườn của bạn. Với hình ảnh chiếc cầu gỗ bắt qua ao hồ, kích thước lớn hay nhỏ, dài hay ngắn tuy vào khu vườn sẽ tạo cảm giác gần gũi, thân thuộc cho sân vườn.\r\n</p>\r\n\r\n<p>\r\n	Chiếc cầu là &ldquo; sợi dây&rdquo; kết nối giữa các cụm không gian riêng lẻ trở nên liền mạch với nhau giúp tạo nét duyên dáng cho khu vườn. Với chiếc cầu cây bạn có thể đứng đây để ngắm toàn cảnh thiên nhiên trong vườn, hay ngắm những chú cá bơi lượn tung tăng dưới mặt hồ thật thú vị. Bạn có thể tự do tạo dáng chiếc cầu trong vườn, đó có thể là chiếc cầu cong cong có tay vịn, hoặc là chiếc cầu thẳng dài đơn giản tùy theo phong cách khu vườn của bạn. Theo kinh nghiệm, nếu sân vườn nhiều cây cảnh, hoa bụi cao thì sử dụng cầu dáng cong có tay vịn là phù hợp, ngược lại nếu là khu vườn nhỏ thì thích hợp với loại cầu gỗ thẳng giúp tạo nên một khung cảnh hài hòa.\r\n</p>\r\n\r\n<p>\r\n	Khi thiết kế cầu nối sân vườn bạn lưu ý tạo sự bền vững ở 2 đầu trụ cầu, các thanh gỗ ghép phải chắc chắn nhằm đảm bảo an toàn cho việc đi lại và ngắm cảnh, nên thiết kế thêm tai vịn để tạo sự chắc chắn và an toàn, nhất là với những gia đình cho có trẻ nhỏ.\r\n</p>\r\n\r\n<p>\r\n	Chiếc cầu là &ldquo; sợi dây&rdquo; kết nối giữa các cụm không gian riêng lẻ trở nên liền mạch với nhau giúp tạo nét duyên dáng cho khu vườn. Với chiếc cầu cây bạn có thể đứng đây để ngắm toàn cảnh thiên nhiên trong vườn, hay ngắm những chú cá bơi lượn tung tăng dưới mặt hồ thật thú vị. Bạn có thể tự do tạo dáng chiếc cầu trong vườn, đó có thể là chiếc cầu cong cong có tay vịn, hoặc là chiếc cầu thẳng dài đơn giản tùy theo phong cách khu vườn của bạn. Theo kinh nghiệm, nếu sân vườn nhiều cây cảnh, hoa bụi cao thì sử dụng cầu dáng cong có tay vịn là phù hợp, ngược lại nếu là khu vườn nhỏ thì thích hợp với loại cầu gỗ thẳng giúp tạo nên một khung cảnh hài hòa.\r\n</p>\r\n\r\n<p>\r\n	Chiếc cầu là &ldquo; sợi dây&rdquo; kết nối giữa các cụm không gian riêng lẻ trở nên liền mạch với nhau giúp tạo nét duyên dáng cho khu vườn. Với chiếc cầu cây bạn có thể đứng đây để ngắm toàn cảnh thiên nhiên trong vườn, hay ngắm những chú cá bơi lượn tung tăng dưới mặt hồ thật thú vị. Bạn có thể tự do tạo dáng chiếc cầu trong vườn, đó có thể là chiếc cầu cong cong có tay vịn, hoặc là chiếc cầu thẳng dài đơn giản tùy theo phong cách khu vườn của bạn. Theo kinh nghiệm, nếu sân vườn nhiều cây cảnh, hoa bụi cao thì sử dụng cầu dáng cong có tay vịn là phù hợp, ngược lại nếu là khu vườn nhỏ thì thích hợp với loại cầu gỗ thẳng giúp tạo nên một khung cảnh hài hòa.\r\n</p>\r\n\r\n<h1>\r\n	<strong>DỊCH VỤ SỬA CHỮA NHÀ MINH ÁNH</strong>\r\n</h1>\r\n\r\n<p>\r\n	Địa chỉ:&nbsp;21/8B Hẻm 502, Phường Bình Thuận, Quận 7, TPHCM\r\n</p>\r\n\r\n<p>\r\n	Điện thoại:&nbsp;0122 871 0455 - 0909 353 055\r\n</p>\r\n\r\n<p>\r\n	E-mail:&nbsp;<a href=\"mailto:dichvusuachuanhaminhanh@gmail.com\">dichvusuachuanhaminhanh@gmail.com</a>\r\n</p>\r\n\r\n<p>\r\n	Website:&nbsp;<a href=\"mailto:dichvusuachuanhaminhanh@gmail.com\">dichvusuachuanhaminhanh.com</a>\r\n</p>', 'images/uploads/images/tintuc/suachuabep/sua-nha-bep-az.jpg', NULL, 1, 1, NULL, 1, '2018-10-06 14:16:49', '2018-10-08 04:13:48', 23),
(9, 'Gợi ý thiết kế sàn nhà thêm sang trọng và đầy phong cách', 'goi-y-thiet-ke-san-nha-them-sang-trong-va-day-phong-cach', '<p>\r\n	Sở hữu một khoảng sân vườn sẽ giúp mang đến cho bạn có một cuộc sống an nhàn và tao nhã. Tùy vào diện tích khoảng trống ngôi nhà mà bạn thiết kế khuôn viên sân vườn như thế nào cho phù hợp.\r\n</p>', '<p>\r\n	Sở hữu một khoảng sân vườn sẽ giúp mang đến cho bạn có một cuộc sống an nhàn và tao nhã. Tùy vào diện tích khoảng trống ngôi nhà mà bạn thiết kế khuôn viên sân vườn như thế nào cho phù hợp. Với những khu vườn đủ rộng bạn có thể thiết kế tiểu cảnh sân vườn, suối nhân tạo, ao hồ&hellip;Và với sân vườn có ao hồ thì việc xuất hiện một chiếc cầu nhỏ chính là điểm nhấn ấn tượng cho sân vườn của bạn. Thiết kế cầu trong khu vườn thường sử dụng loại gỗ ván ép càng tôn lên vẻ đẹp tự nhiên cho khu vườn của bạn. Với hình ảnh chiếc cầu gỗ bắt qua ao hồ, kích thước lớn hay nhỏ, dài hay ngắn tuy vào khu vườn sẽ tạo cảm giác gần gũi, thân thuộc cho sân vườn.\r\n</p>\r\n\r\n<p style=\"text-align: center;\">\r\n	<img alt=\"\" src=\"http://localhost:8080/suanhaminhanh/images/uploads/images/tintuc/thietkenha/thiet_ke_san_vuon_biet_thu_5.jpg\" style=\"width: 80%; height: 80%;\">\r\n</p>\r\n\r\n<p>\r\n	<br>\r\n	Sở hữu một khoảng sân vườn sẽ giúp mang đến cho bạn có một cuộc sống an nhàn và tao nhã. Tùy vào diện tích khoảng trống ngôi nhà mà bạn thiết kế khuôn viên sân vườn như thế nào cho phù hợp. Với những khu vườn đủ rộng bạn có thể thiết kế tiểu cảnh sân vườn, suối nhân tạo, ao hồ&hellip;Và với sân vườn có ao hồ thì việc xuất hiện một chiếc cầu nhỏ chính là điểm nhấn ấn tượng cho sân vườn của bạn.\r\n</p>\r\n\r\n<p>\r\n	Thiết kế cầu trong khu vườn thường sử dụng loại gỗ ván ép càng tôn lên vẻ đẹp tự nhiên cho khu vườn của bạn. Với hình ảnh chiếc cầu gỗ bắt qua ao hồ, kích thước lớn hay nhỏ, dài hay ngắn tuy vào khu vườn sẽ tạo cảm giác gần gũi, thân thuộc cho sân vườn.\r\n</p>\r\n\r\n<p>\r\n	Chiếc cầu là &ldquo; sợi dây&rdquo; kết nối giữa các cụm không gian riêng lẻ trở nên liền mạch với nhau giúp tạo nét duyên dáng cho khu vườn. Với chiếc cầu cây bạn có thể đứng đây để ngắm toàn cảnh thiên nhiên trong vườn, hay ngắm những chú cá bơi lượn tung tăng dưới mặt hồ thật thú vị. Bạn có thể tự do tạo dáng chiếc cầu trong vườn, đó có thể là chiếc cầu cong cong có tay vịn, hoặc là chiếc cầu thẳng dài đơn giản tùy theo phong cách khu vườn của bạn. Theo kinh nghiệm, nếu sân vườn nhiều cây cảnh, hoa bụi cao thì sử dụng cầu dáng cong có tay vịn là phù hợp, ngược lại nếu là khu vườn nhỏ thì thích hợp với loại cầu gỗ thẳng giúp tạo nên một khung cảnh hài hòa.\r\n</p>\r\n\r\n<p>\r\n	Khi thiết kế cầu nối sân vườn bạn lưu ý tạo sự bền vững ở 2 đầu trụ cầu, các thanh gỗ ghép phải chắc chắn nhằm đảm bảo an toàn cho việc đi lại và ngắm cảnh, nên thiết kế thêm tai vịn để tạo sự chắc chắn và an toàn, nhất là với những gia đình cho có trẻ nhỏ.\r\n</p>\r\n\r\n<p>\r\n	Chiếc cầu là &ldquo; sợi dây&rdquo; kết nối giữa các cụm không gian riêng lẻ trở nên liền mạch với nhau giúp tạo nét duyên dáng cho khu vườn. Với chiếc cầu cây bạn có thể đứng đây để ngắm toàn cảnh thiên nhiên trong vườn, hay ngắm những chú cá bơi lượn tung tăng dưới mặt hồ thật thú vị. Bạn có thể tự do tạo dáng chiếc cầu trong vườn, đó có thể là chiếc cầu cong cong có tay vịn, hoặc là chiếc cầu thẳng dài đơn giản tùy theo phong cách khu vườn của bạn. Theo kinh nghiệm, nếu sân vườn nhiều cây cảnh, hoa bụi cao thì sử dụng cầu dáng cong có tay vịn là phù hợp, ngược lại nếu là khu vườn nhỏ thì thích hợp với loại cầu gỗ thẳng giúp tạo nên một khung cảnh hài hòa.\r\n</p>\r\n\r\n<p>\r\n	Chiếc cầu là &ldquo; sợi dây&rdquo; kết nối giữa các cụm không gian riêng lẻ trở nên liền mạch với nhau giúp tạo nét duyên dáng cho khu vườn. Với chiếc cầu cây bạn có thể đứng đây để ngắm toàn cảnh thiên nhiên trong vườn, hay ngắm những chú cá bơi lượn tung tăng dưới mặt hồ thật thú vị. Bạn có thể tự do tạo dáng chiếc cầu trong vườn, đó có thể là chiếc cầu cong cong có tay vịn, hoặc là chiếc cầu thẳng dài đơn giản tùy theo phong cách khu vườn của bạn. Theo kinh nghiệm, nếu sân vườn nhiều cây cảnh, hoa bụi cao thì sử dụng cầu dáng cong có tay vịn là phù hợp, ngược lại nếu là khu vườn nhỏ thì thích hợp với loại cầu gỗ thẳng giúp tạo nên một khung cảnh hài hòa.\r\n</p>\r\n\r\n<p>\r\n	&nbsp;\r\n</p>\r\n\r\n<h1>\r\n	<strong>DỊCH VỤ SỬA CHỮA NHÀ MINH ÁNH</strong>\r\n</h1>\r\n\r\n<p>\r\n	Địa chỉ:&nbsp;21/8B Hẻm 502, Phường Bình Thuận, Quận 7, TPHCM\r\n</p>\r\n\r\n<p>\r\n	Điện thoại:&nbsp;0122 871 0455 - 0909 353 055\r\n</p>\r\n\r\n<p>\r\n	E-mail:&nbsp;<a href=\"mailto:dichvusuachuanhaminhanh@gmail.com\">dichvusuachuanhaminhanh@gmail.com</a>\r\n</p>\r\n\r\n<p>\r\n	Website:&nbsp;<a href=\"mailto:dichvusuachuanhaminhanh@gmail.com\">dichvusuachuanhaminhanh.com</a>\r\n</p>', 'images/uploads/images/tintuc/thietkenha/thiet_ke_san_vuon_biet_thu_5.jpg', NULL, 1, 1, NULL, 1, '2018-10-06 14:17:38', '2018-10-08 04:13:38', 24),
(10, 'THIẾT KẾ SÂN VƯỜN', 'thiet-ke-san-vuon', '<p>\r\n	Sở hữu một khoảng sân vườn sẽ giúp mang đến cho bạn có một cuộc sống an nhàn và tao nhã. Tùy vào diện tích khoảng trống ngôi nhà mà bạn thiết kế khuôn viên sân vườn như thế nào cho phù hợp.\r\n</p>', '<p>\r\n	Sở hữu một khoảng sân vườn sẽ giúp mang đến cho bạn có một cuộc sống an nhàn và tao nhã. Tùy vào diện tích khoảng trống ngôi nhà mà bạn thiết kế khuôn viên sân vườn như thế nào cho phù hợp. Với những khu vườn đủ rộng bạn có thể thiết kế tiểu cảnh sân vườn, suối nhân tạo, ao hồ&hellip;Và với sân vườn có ao hồ thì việc xuất hiện một chiếc cầu nhỏ chính là điểm nhấn ấn tượng cho sân vườn của bạn. Thiết kế cầu trong khu vườn thường sử dụng loại gỗ ván ép càng tôn lên vẻ đẹp tự nhiên cho khu vườn của bạn. Với hình ảnh chiếc cầu gỗ bắt qua ao hồ, kích thước lớn hay nhỏ, dài hay ngắn tuy vào khu vườn sẽ tạo cảm giác gần gũi, thân thuộc cho sân vườn.\r\n</p>\r\n\r\n<p style=\"text-align: center;\">\r\n	<img alt=\"\" src=\"http://localhost:8080/suanhaminhanh/images/uploads/images/tintuc/sanvuon/greenmore-419333_436266896416917_127823891_n.jpg\" style=\"width: 80%; height: 80%;\">\r\n</p>\r\n\r\n<p>\r\n	Sở hữu một khoảng sân vườn sẽ giúp mang đến cho bạn có một cuộc sống an nhàn và tao nhã. Tùy vào diện tích khoảng trống ngôi nhà mà bạn thiết kế khuôn viên sân vườn như thế nào cho phù hợp. Với những khu vườn đủ rộng bạn có thể thiết kế tiểu cảnh sân vườn, suối nhân tạo, ao hồ&hellip;Và với sân vườn có ao hồ thì việc xuất hiện một chiếc cầu nhỏ chính là điểm nhấn ấn tượng cho sân vườn của bạn.\r\n</p>\r\n\r\n<p>\r\n	Thiết kế cầu trong khu vườn thường sử dụng loại gỗ ván ép càng tôn lên vẻ đẹp tự nhiên cho khu vườn của bạn. Với hình ảnh chiếc cầu gỗ bắt qua ao hồ, kích thước lớn hay nhỏ, dài hay ngắn tuy vào khu vườn sẽ tạo cảm giác gần gũi, thân thuộc cho sân vườn.\r\n</p>\r\n\r\n<p>\r\n	Chiếc cầu là &ldquo; sợi dây&rdquo; kết nối giữa các cụm không gian riêng lẻ trở nên liền mạch với nhau giúp tạo nét duyên dáng cho khu vườn. Với chiếc cầu cây bạn có thể đứng đây để ngắm toàn cảnh thiên nhiên trong vườn, hay ngắm những chú cá bơi lượn tung tăng dưới mặt hồ thật thú vị. Bạn có thể tự do tạo dáng chiếc cầu trong vườn, đó có thể là chiếc cầu cong cong có tay vịn, hoặc là chiếc cầu thẳng dài đơn giản tùy theo phong cách khu vườn của bạn. Theo kinh nghiệm, nếu sân vườn nhiều cây cảnh, hoa bụi cao thì sử dụng cầu dáng cong có tay vịn là phù hợp, ngược lại nếu là khu vườn nhỏ thì thích hợp với loại cầu gỗ thẳng giúp tạo nên một khung cảnh hài hòa.\r\n</p>\r\n\r\n<p>\r\n	Khi thiết kế cầu nối sân vườn bạn lưu ý tạo sự bền vững ở 2 đầu trụ cầu, các thanh gỗ ghép phải chắc chắn nhằm đảm bảo an toàn cho việc đi lại và ngắm cảnh, nên thiết kế thêm tai vịn để tạo sự chắc chắn và an toàn, nhất là với những gia đình cho có trẻ nhỏ.\r\n</p>\r\n\r\n<p>\r\n	Chiếc cầu là &ldquo; sợi dây&rdquo; kết nối giữa các cụm không gian riêng lẻ trở nên liền mạch với nhau giúp tạo nét duyên dáng cho khu vườn. Với chiếc cầu cây bạn có thể đứng đây để ngắm toàn cảnh thiên nhiên trong vườn, hay ngắm những chú cá bơi lượn tung tăng dưới mặt hồ thật thú vị. Bạn có thể tự do tạo dáng chiếc cầu trong vườn, đó có thể là chiếc cầu cong cong có tay vịn, hoặc là chiếc cầu thẳng dài đơn giản tùy theo phong cách khu vườn của bạn. Theo kinh nghiệm, nếu sân vườn nhiều cây cảnh, hoa bụi cao thì sử dụng cầu dáng cong có tay vịn là phù hợp, ngược lại nếu là khu vườn nhỏ thì thích hợp với loại cầu gỗ thẳng giúp tạo nên một khung cảnh hài hòa.\r\n</p>\r\n\r\n<p>\r\n	Chiếc cầu là &ldquo; sợi dây&rdquo; kết nối giữa các cụm không gian riêng lẻ trở nên liền mạch với nhau giúp tạo nét duyên dáng cho khu vườn. Với chiếc cầu cây bạn có thể đứng đây để ngắm toàn cảnh thiên nhiên trong vườn, hay ngắm những chú cá bơi lượn tung tăng dưới mặt hồ thật thú vị. Bạn có thể tự do tạo dáng chiếc cầu trong vườn, đó có thể là chiếc cầu cong cong có tay vịn, hoặc là chiếc cầu thẳng dài đơn giản tùy theo phong cách khu vườn của bạn. Theo kinh nghiệm, nếu sân vườn nhiều cây cảnh, hoa bụi cao thì sử dụng cầu dáng cong có tay vịn là phù hợp, ngược lại nếu là khu vườn nhỏ thì thích hợp với loại cầu gỗ thẳng giúp tạo nên một khung cảnh hài hòa.\r\n</p>\r\n\r\n<p>\r\n	&nbsp;\r\n</p>\r\n\r\n<h1>\r\n	<strong>DỊCH VỤ SỬA CHỮA NHÀ MINH ÁNH</strong>\r\n</h1>\r\n\r\n<p>\r\n	Địa chỉ:&nbsp;21/8B Hẻm 502, Phường Bình Thuận, Quận 7, TPHCM\r\n</p>\r\n\r\n<p>\r\n	Điện thoại:&nbsp;0122 871 0455 - 0909 353 055\r\n</p>\r\n\r\n<p>\r\n	E-mail:&nbsp;<a href=\"mailto:dichvusuachuanhaminhanh@gmail.com\">dichvusuachuanhaminhanh@gmail.com</a>\r\n</p>\r\n\r\n<p>\r\n	Website:&nbsp;<a href=\"mailto:dichvusuachuanhaminhanh@gmail.com\">dichvusuachuanhaminhanh.com</a>\r\n</p>', 'images/uploads/images/tintuc/sanvuon/greenmore-419333_436266896416917_127823891_n.jpg', NULL, 1, 1, NULL, 1, '2018-10-06 14:18:52', '2018-10-08 04:14:02', 25),
(11, 'PROJECT 1', 'project-1', '<p>\r\n	PROJECT 1\r\n</p>', '<p>\r\n	PROJECT 1\r\n</p>', 'images/uploads/images/duan/sonnuoc/project-3.jpg', NULL, 1, 1, NULL, 1, '2018-10-07 03:31:17', '2018-10-07 03:31:17', 36),
(12, 'PROJECT 2', 'project-2', '<p>\r\n	PROJECT 2\r\n</p>', '<p>\r\n	PROJECT 2\r\n</p>', 'images/uploads/images/duan/sonnuoc/project-3.jpg', NULL, 1, 1, NULL, 1, '2018-10-07 03:31:44', '2018-10-07 03:31:44', 37),
(13, 'PROJECT 3', 'project-3', '<p>\r\n	PROJECT 3\r\n</p>', '<p>\r\n	PROJECT 3\r\n</p>', 'images/uploads/images/duan/sonnuoc/project-3.jpg', NULL, 1, 1, NULL, 1, '2018-10-07 08:27:08', '2018-10-07 08:27:08', 39),
(14, 'Cách chọn màu sơn nhà theo phong thủy vừa đẹp mắt, vừa phát tài', 'cach-chon-mau-son-nha-theo-phong-thuy-vua-dep-mat-vua-phat-tai', '<p>\r\n	Xây nhà là việc trọng đại của mỗi gia đình. Chính vì vậy, khi xây nhà, gia chủ rất quan tâm đến việc chọn màu sắc, màu sơn của ngôi nhà, đặc biệt là lựa chọn theo đúng&nbsp;phong thủy.\r\n</p>', '<p>\r\n	Chọn sơn nhà hợp phong thủy\r\n</p>\r\n\r\n<p style=\"text-align: center;\">\r\n	<img alt=\"\" src=\"http://localhost:8080/suanhaminhanh/images/uploads/images/dichvu/sonnuoc/bang-mau-son-phong-thuy.jpg\" style=\"width: 80%; height: 80%;\">\r\n</p>\r\n\r\n<p>\r\n	Xây nhà là việc trọng đại của mỗi gia đình. Chính vì vậy, khi xây nhà, gia chủ rất quan tâm đến việc chọn màu sắc, màu sơn của ngôi nhà, đặc biệt là lựa chọn theo đúng&nbsp;phong thủy.\r\n</p>\r\n\r\n<p>\r\n	Việc chọn&nbsp;<a href=\"https://dichvusuachuanhaminhanh.com/\">sơn nhà đúng phong thủy</a>&nbsp;không những mang lại vẻ đẹp, không gian sang trọng cho ngôi nhà mà còn giúp mang lại sức khỏe, may mắn, tài lộc cho gia chủ trong công việc và cuộc sống. Vậy đối với việc chọn màu&nbsp;<a href=\"https://dichvusuachuanhaminhanh.com/\">sơn nhà theo phong thủy</a>, hợp mệnh, gia chủ nên lựa chọn như thế nào?\r\n</p>\r\n\r\n<p>\r\n	Mệnh của mỗi người được dựa trên ngũ hành bao gồm: Kim, Mộc, Thủy, Hỏa, Thổ. Chính vì vậy khi muốn chọn sơn cho ngôi nhà của mình, gia chủ hãy chọn theo mệnh của mình.\r\n</p>\r\n\r\n<p>\r\n	Cách chọn sơn nhà cho người mệnh Kim\r\n</p>\r\n\r\n<center>\r\n	<table>\r\n		<tbody>\r\n			<tr>\r\n				<td>\r\n					<a href=\"http://imgs.vietnamnet.vn/Images/2017/09/20/10/20170920102631-mau-son-1.jpg\" title=\"Màu vàng nhẹ nhàng rất hợp với những người mệnh Kim (Ảnh minh họa)\"><img alt=\"Cách chọn màu sơn nhà theo phong thủy vừa đẹp mắt, vừa phát tài\" src=\"http://imgs.vietnamnet.vn/Images/2017/09/20/10/20170920102631-mau-son-1.jpg\" title=\"Cách chọn màu sơn nhà theo phong thủy vừa đẹp mắt, vừa phát tài\"></a>\r\n				</td>\r\n			</tr>\r\n			<tr>\r\n				<td>\r\n					<p>\r\n						Màu vàng nhẹ nhàng rất hợp với những người mệnh Kim (Ảnh minh họa)\r\n					</p>\r\n				</td>\r\n			</tr>\r\n		</tbody>\r\n	</table>\r\n</center>\r\n\r\n<p>\r\n	Người mệnh Kim thường có tính cách giỏi xắp xếp, ý chí quyết đoán, kiên định, luôn có thái độ tập trung vào mục tiêu của mình. Đây cũng là người biết nhìn xa trông rộng, do đó khi chọn màu sơn cho ngôi nhà của mình, gia chủ mệnh Kim nên lựa chọn các gam màu vàng nhẹ nhàng, ánh kim, màu xám.\r\n</p>\r\n\r\n<p>\r\n	Cách chọn sơn nhà cho người mệnh Mộc\r\n</p>\r\n\r\n<center>\r\n	<table>\r\n		<tbody>\r\n			<tr>\r\n				<td>\r\n					<a href=\"http://imgs.vietnamnet.vn/Images/2017/09/20/10/20170920102631-mau-son-2.jpg\" title=\"Gia chủ mệnh Mộc rất hợp với những màu xanh lá, xanh cốm, xanh bạc hà (Ảnh minh họa)\"><img alt=\"Cách chọn màu sơn nhà theo phong thủy vừa đẹp mắt, vừa phát tài\" src=\"http://imgs.vietnamnet.vn/Images/2017/09/20/10/20170920102631-mau-son-2.jpg\" title=\"Cách chọn màu sơn nhà theo phong thủy vừa đẹp mắt, vừa phát tài\"></a>\r\n				</td>\r\n			</tr>\r\n			<tr>\r\n				<td>\r\n					<p style=\"text-align: center;\">\r\n						Gia chủ mệnh Mộc rất hợp với những màu xanh lá, xanh cốm, xanh bạc hà (Ảnh minh họa)\r\n					</p>\r\n				</td>\r\n			</tr>\r\n		</tbody>\r\n	</table>\r\n</center>\r\n\r\n<p style=\"text-align: center;\">\r\n	&nbsp;\r\n</p>\r\n\r\n<p>\r\n	Người mệnh Mộc có tính cách tốt với khả năng quyết định nhanh chóng. Đây là kiểu người có lý tưởng, sang tạo, chủ động và có tính cạnh tranh cao. Khi lựa chọn màu sơn cho ngôi nhà, gia chủ mệnh Mộc rất hợp với những màu xanh lá, xanh cốm, xanh bạc hà&hellip;\r\n</p>\r\n\r\n<p>\r\n	Cách chọn sơn nhà cho người mệnh Thủy\r\n</p>\r\n\r\n<p>\r\n	&nbsp;\r\n</p>\r\n\r\n<center>\r\n	<table>\r\n		<tbody>\r\n			<tr>\r\n				<td>\r\n					<a href=\"http://imgs.vietnamnet.vn/Images/2017/09/20/10/20170920102631-mau-son-3.jpg\" title=\"Màu xanh nước biển là lựa chọn phù hợp cho gia chủ mệnh Thủy (Ảnh minh họa)\"><img alt=\"Cách chọn màu sơn nhà theo phong thủy vừa đẹp mắt, vừa phát tài\" src=\"http://imgs.vietnamnet.vn/Images/2017/09/20/10/20170920102631-mau-son-3.jpg\" title=\"Cách chọn màu sơn nhà theo phong thủy vừa đẹp mắt, vừa phát tài\"></a>\r\n				</td>\r\n			</tr>\r\n			<tr>\r\n				<td>\r\n					<p style=\"text-align: center;\">\r\n						Màu xanh nước biển là lựa chọn phù hợp cho gia chủ mệnh Thủy (Ảnh minh họa)\r\n					</p>\r\n				</td>\r\n			</tr>\r\n		</tbody>\r\n	</table>\r\n</center>\r\n\r\n<p>\r\n	Người mệnh Thủy có tính cách giao tiếp tốt, năng khiếu ngoại giao, có tài thuyết phục người nghe, trực giác tốt và rất giỏi thương lượng. Do đó các màu gam lạnh như xanh nước biển, xanh thẫm, màu trắng, xanh demin, da trời, rất hợp cho gia chủ mệnh Thủy lựa chọn để sơn cho ngôi nhà của gia đình mình.\r\n</p>\r\n\r\n<p>\r\n	Cách chọn sơn nhà cho người mệnh Hỏa\r\n</p>\r\n\r\n<p>\r\n	Người mệnh Hỏa khi lựa chọn màu sơn, gia chủ có thể chọn các màu như màu xanh lá (mà tương sinh), màu đỏ, hồng, tím, nâu, cám, hồng cam (màu tương hợp).\r\n</p>\r\n\r\n<center>\r\n	<table>\r\n		<tbody>\r\n			<tr>\r\n				<td>\r\n					<a href=\"http://imgs.vietnamnet.vn/Images/2017/09/20/10/20170920102631-mau-son-4.jpg\" title=\"Không gian màu hồng cam cho gia chủ mệnh Hỏa (Ảnh minh họa)\"><img alt=\"Cách chọn màu sơn nhà theo phong thủy vừa đẹp mắt, vừa phát tài\" src=\"http://imgs.vietnamnet.vn/Images/2017/09/20/10/20170920102631-mau-son-4.jpg\" title=\"Cách chọn màu sơn nhà theo phong thủy vừa đẹp mắt, vừa phát tài\"></a>\r\n				</td>\r\n			</tr>\r\n			<tr>\r\n				<td>\r\n					<p style=\"text-align: center;\">\r\n						Không gian màu hồng cam cho gia chủ mệnh Hỏa (Ảnh minh họa)\r\n					</p>\r\n				</td>\r\n			</tr>\r\n		</tbody>\r\n	</table>\r\n</center>\r\n\r\n<p>\r\n	Đây là những màu hợp với người mệnh Hỏa có tính cách đam mê, nhiệt huyết, kiên cường và mạnh mẽ.\r\n</p>\r\n\r\n<p>\r\n	Cách chọn sơn nhà cho người mệnh Thổ\r\n</p>\r\n\r\n<center>\r\n	<table>\r\n		<tbody>\r\n			<tr>\r\n				<td>\r\n					<a href=\"http://imgs.vietnamnet.vn/Images/2017/09/20/10/20170920102631-mau-son-5.jpg\" title=\"Người mệnh Thổ hợp với các màu như màu vàng nâu, vàng nhạt, nâu (Ảnh minh họa)\"><img alt=\"Cách chọn màu sơn nhà theo phong thủy vừa đẹp mắt, vừa phát tài\" src=\"http://imgs.vietnamnet.vn/Images/2017/09/20/10/20170920102631-mau-son-5.jpg\" title=\"Cách chọn màu sơn nhà theo phong thủy vừa đẹp mắt, vừa phát tài\"></a>\r\n				</td>\r\n			</tr>\r\n			<tr>\r\n				<td>\r\n					<p style=\"text-align: center;\">\r\n						Người mệnh Thổ hợp với các màu như màu vàng nâu, vàng nhạt, nâu (Ảnh minh họa)\r\n					</p>\r\n				</td>\r\n			</tr>\r\n		</tbody>\r\n	</table>\r\n</center>\r\n\r\n<p>\r\n	Màu sơn hợp với những người mệnh Thổ là màu vàng nâu, vàng nhạt, nâu. Gia chủ nên lựa chọn những màu này để mang lại may mắn, tài lộc cho gia đình.\r\n</p>\r\n\r\n<p>\r\n	Theo&nbsp;<em>Giadinhvietnam</em>\r\n</p>\r\n\r\n<p>\r\n	&nbsp;\r\n</p>\r\n\r\n<p>\r\n	&nbsp;\r\n</p>\r\n\r\n<h1>\r\n	<strong>DỊCH VỤ SỬA CHỮA NHÀ MINH ÁNH</strong>\r\n</h1>\r\n\r\n<p>\r\n	Địa chỉ:&nbsp;21/8B Hẻm 502, Phường Bình Thuận, Quận 7, TPHCM\r\n</p>\r\n\r\n<p>\r\n	Điện thoại:&nbsp;0122 871 0455 - 0909 353 055\r\n</p>\r\n\r\n<p>\r\n	E-mail:&nbsp;<a href=\"mailto:dichvusuachuanhaminhanh@gmail.com\">dichvusuachuanhaminhanh@gmail.com</a>\r\n</p>\r\n\r\n<p>\r\n	Website:&nbsp;<a href=\"mailto:dichvusuachuanhaminhanh@gmail.com\">dichvusuachuanhaminhanh.com</a>\r\n</p>', 'images/uploads/images/tintuc/sontheophongthuy/20170920102631-mau-son-2.jpg', NULL, 1, 0, NULL, 1, '2018-10-08 04:03:58', '2018-10-08 04:13:26', 40),
(15, 'Vách kính mặt dựng cho những công trình nhôm kính cao cấp', 'vach-kinh-mat-dung-cho-nhung-cong-trinh-nhom-kinh-cao-cap', '<p>\r\n	Giá thành của hệ thống làm vách kính mặt dựng có thể lên tới 20% tổng giá thành xây dựng của một công trình cao tầng. Hệ thống mặt dựng nhôm kính thường là kết cấu bao che của công trình.\r\n</p>', '<p>\r\n	Giá thành của hệ thống làm vách kính mặt dựng có thể lên tới 20% tổng giá thành xây dựng của một công trình cao tầng. Hệ thống mặt dựng nhôm kính thường là kết cấu bao che của công trình.\r\n</p>\r\n\r\n<p>\r\n	<br>\r\n	Trong vòng hai mươi năm trở lại đây, hệ thống làm mặt dựng kính trong các dự án nhà cao tầng trở nên phổ biến tại Việt Nam. Giá thành của hệ thống làm vách kính mặt dựng có thể lên tới 20% tổng giá thành xây dựng của một công trình cao tầng. Hệ thống mặt dựng nhôm kính thường là kết cấu bao che của công trình. Hệ thống làm vách kính mặt dựng là một trong những bộ phận quan trọng của nhà cao tầng và ngày càng quan trọng hơn xét trên các mặt như: công năng, thẩm mỹ, giá thành. Ngoài ra, mặt dựng nhôm kính là hệ chịu tải trọng gió đầu tiên của nhà cao tầng và từ đó truyền đến hệ thống chịu tải trọng ngang của nhà. &nbsp; làm vách kính mặt dựng\r\n</p>\r\n\r\n<p style=\"text-align: center;\">\r\n	<img alt=\"\" src=\"https://congtysuanhaminhanh.com/upload/images/20160315024912d44003cb6be8cff88c4f9ef9fd31b820.jpg\" style=\"height: 80%; width: 80%;\">\r\n</p>\r\n\r\n<p>\r\n	Đặc điểm:<br>\r\n	&ndash; Tùy theo thiết kế kiến trúc của công trình, làm vách nhôm kính lớn thông tầng được sử dụng cho nhà cao tầng có hoặc không có nan nhôm trang trí ở mặt ngoài.<br>\r\n	&ndash; Phù hợp với tiêu chuẩn Châu Âu về cách âm, cách nhiệt, độ kín khít (chống gió, nước, không khí) bảo đảm ánh sáng tự nhiên.<br>\r\n	&ndash; Đa dạng kiểu dáng, phù hợp với nhiều dạng kiến trúc, tính thẩm mỹ cao. Sử dụng trong thiết kế các tòa nhà có kiến trúc dạng hi-tech.<br>\r\n	&ndash; Thi công đơn giản và gọn nhẹ.<br>\r\n	&ndash; Tải trọng nhẹ, khả năng chịu lực tốt và độ bền cao.<br>\r\n	&ndash; Kinh tế trong sử dụng.<br>\r\n	Làm Vách kính mặt dựng &ndash; toà nhà kính là phong cách đang rất thịnh hành hiện nay. Đặt biệt là các công trình cao cấp. Vách kính mặt dựng có rất nhiều đặc tính ưu việt mà các loại kính khác không có được nên được ứng dụng nhiều trong các lĩnh vực khác nhau. Vách kính an toàn cường lực là luôn là sự lựa chọn hàng đầu của các nhà thiết kế khi đưa ra giải.\r\n</p>\r\n\r\n<p>\r\n	&nbsp;\r\n</p>\r\n\r\n<h1>\r\n	<strong>DỊCH VỤ SỬA CHỮA NHÀ MINH ÁNH</strong>\r\n</h1>\r\n\r\n<p>\r\n	Địa chỉ:&nbsp;21/8B Hẻm 502, Phường Bình Thuận, Quận 7, TPHCM\r\n</p>\r\n\r\n<p>\r\n	Điện thoại:&nbsp;0122 871 0455 - 0909 353 055\r\n</p>\r\n\r\n<p>\r\n	E-mail:&nbsp;<a href=\"mailto:dichvusuachuanhaminhanh@gmail.com\">dichvusuachuanhaminhanh@gmail.com</a>\r\n</p>\r\n\r\n<p>\r\n	Website:&nbsp;<a href=\"mailto:dichvusuachuanhaminhanh@gmail.com\">dichvusuachuanhaminhanh.com</a>\r\n</p>', 'images/uploads/images/tintuc/vachkinhdung/20160315024912d44003cb6be8cff88c4f9ef9fd31b820.jpg', NULL, 1, 0, NULL, 1, '2018-10-08 04:11:56', '2018-10-08 04:13:15', 41);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isActive` tinyint(1) NOT NULL DEFAULT '0',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `sale` int(11) NOT NULL DEFAULT '0',
  `final_price` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `order` int(11) NOT NULL DEFAULT '1',
  `user_id` int(10) UNSIGNED NOT NULL,
  `category_product_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `seo_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin', 'administer the website and manage users', '2018-03-14 07:23:50', '2018-03-14 07:23:50');

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`user_id`, `role_id`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `seos`
--

CREATE TABLE `seos` (
  `id` int(10) UNSIGNED NOT NULL,
  `seo_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_keywords` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `seos`
--

INSERT INTO `seos` (`id`, `seo_title`, `seo_description`, `seo_keywords`, `created_at`, `updated_at`) VALUES
(6, 'test bài viết', 'test bài viết', 'test bài viết', '2018-07-17 03:13:47', '2018-07-17 03:13:47'),
(8, NULL, NULL, NULL, '2018-09-12 14:36:28', '2018-09-12 14:36:28'),
(9, NULL, NULL, NULL, '2018-09-12 14:50:50', '2018-09-12 14:50:50'),
(10, NULL, NULL, NULL, '2018-09-12 14:53:02', '2018-09-12 14:53:02'),
(11, NULL, NULL, NULL, '2018-09-12 14:54:14', '2018-09-12 14:54:14'),
(13, NULL, NULL, NULL, '2018-10-06 02:48:13', '2018-10-06 02:48:13'),
(14, NULL, NULL, NULL, '2018-10-06 02:48:21', '2018-10-06 02:48:21'),
(15, NULL, NULL, NULL, '2018-10-06 02:48:49', '2018-10-06 02:48:49'),
(16, NULL, NULL, NULL, '2018-10-06 02:49:03', '2018-10-06 02:49:03'),
(17, NULL, NULL, NULL, '2018-10-06 02:49:31', '2018-10-06 02:49:31'),
(18, NULL, NULL, NULL, '2018-10-06 02:49:42', '2018-10-06 02:49:42'),
(19, NULL, NULL, NULL, '2018-10-06 02:50:26', '2018-10-06 02:50:26'),
(20, NULL, NULL, NULL, '2018-10-06 02:50:52', '2018-10-06 02:50:52'),
(21, NULL, NULL, NULL, '2018-10-06 02:51:14', '2018-10-06 02:51:14'),
(22, NULL, NULL, NULL, '2018-10-06 14:14:10', '2018-10-06 14:14:10'),
(23, NULL, NULL, NULL, '2018-10-06 14:16:49', '2018-10-06 14:16:49'),
(24, NULL, NULL, NULL, '2018-10-06 14:17:38', '2018-10-06 14:17:38'),
(25, NULL, NULL, NULL, '2018-10-06 14:18:52', '2018-10-06 14:18:52'),
(26, NULL, NULL, NULL, '2018-10-07 01:24:53', '2018-10-07 01:24:53'),
(27, NULL, NULL, NULL, '2018-10-07 01:32:27', '2018-10-07 01:32:27'),
(28, NULL, NULL, NULL, '2018-10-07 01:32:49', '2018-10-07 01:32:49'),
(30, NULL, NULL, NULL, '2018-10-07 02:01:22', '2018-10-07 02:01:22'),
(31, NULL, NULL, NULL, '2018-10-07 02:01:43', '2018-10-07 02:01:43'),
(36, NULL, NULL, NULL, '2018-10-07 03:31:17', '2018-10-07 03:31:17'),
(37, NULL, NULL, NULL, '2018-10-07 03:31:44', '2018-10-07 03:31:44'),
(38, NULL, NULL, NULL, '2018-10-07 04:29:03', '2018-10-07 04:29:03'),
(39, NULL, NULL, NULL, '2018-10-07 08:27:08', '2018-10-07 08:27:08'),
(40, NULL, NULL, NULL, '2018-10-08 04:03:58', '2018-10-08 04:03:58'),
(41, NULL, NULL, NULL, '2018-10-08 04:11:55', '2018-10-08 04:11:55');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'nnduyquang', 'nnduyquang@gmail.com', '$2y$10$mStg572JFNI89/0Cg7TOGOUkACFaBl/nsNeOvx8zglr1qyJPA0tj6', NULL, '2018-03-14 07:24:10', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category_items`
--
ALTER TABLE `category_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_items_seo_id_foreign` (`seo_id`);

--
-- Indexes for table `category_many`
--
ALTER TABLE `category_many`
  ADD PRIMARY KEY (`category_id`,`item_id`);

--
-- Indexes for table `category_permissions`
--
ALTER TABLE `category_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `category_permissions_name_unique` (`name`);

--
-- Indexes for table `configs`
--
ALTER TABLE `configs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `configs_user_id_foreign` (`user_id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
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
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_unique` (`name`),
  ADD KEY `permissions_category_permission_id_foreign` (`category_permission_id`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_role_id_foreign` (`role_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_user_id_foreign` (`user_id`),
  ADD KEY `posts_seo_id_foreign` (`seo_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_user_id_foreign` (`user_id`),
  ADD KEY `products_category_product_id_foreign` (`category_product_id`),
  ADD KEY `products_seo_id_foreign` (`seo_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `role_user_role_id_foreign` (`role_id`);

--
-- Indexes for table `seos`
--
ALTER TABLE `seos`
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
-- AUTO_INCREMENT for table `category_items`
--
ALTER TABLE `category_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `category_permissions`
--
ALTER TABLE `category_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `configs`
--
ALTER TABLE `configs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `seos`
--
ALTER TABLE `seos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `category_items`
--
ALTER TABLE `category_items`
  ADD CONSTRAINT `category_items_seo_id_foreign` FOREIGN KEY (`seo_id`) REFERENCES `seos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `configs`
--
ALTER TABLE `configs`
  ADD CONSTRAINT `configs_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `permissions`
--
ALTER TABLE `permissions`
  ADD CONSTRAINT `permissions_category_permission_id_foreign` FOREIGN KEY (`category_permission_id`) REFERENCES `category_permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_seo_id_foreign` FOREIGN KEY (`seo_id`) REFERENCES `seos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_product_id_foreign` FOREIGN KEY (`category_product_id`) REFERENCES `category_items` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `products_seo_id_foreign` FOREIGN KEY (`seo_id`) REFERENCES `seos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `products_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
