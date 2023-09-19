-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 19, 2023 at 01:25 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vanngochai_2121110002`
--

-- --------------------------------------------------------

--
-- Table structure for table `vnh_brand`
--

CREATE TABLE `vnh_brand` (
  `id` int(11) NOT NULL COMMENT 'Mã Loại',
  `name` varchar(255) NOT NULL COMMENT 'Tên loại SP',
  `slug` varchar(255) NOT NULL COMMENT 'SLug Loại SP',
  `sort_order` int(11) NOT NULL COMMENT 'Thứ tự',
  `image` varchar(255) DEFAULT '' COMMENT 'Hình đại diện',
  `metakey` varchar(255) NOT NULL COMMENT 'Từ khóa SEO',
  `metadesc` varchar(255) NOT NULL COMMENT 'Mô tả SEO',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'Ngày tạo',
  `created_by` tinyint(4) NOT NULL DEFAULT 0 COMMENT 'Người tạo',
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'Ngày sửa',
  `updated_by` tinyint(4) NOT NULL DEFAULT 0 COMMENT 'Người sửa',
  `status` tinyint(4) NOT NULL DEFAULT 2 COMMENT 'Trạng thái'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `vnh_brand`
--

INSERT INTO `vnh_brand` (`id`, `name`, `slug`, `sort_order`, `image`, `metakey`, `metadesc`, `created_at`, `created_by`, `updated_at`, `updated_by`, `status`) VALUES
(2, 'Hàn Quốc', 'han-quoc', 6, '', 'Từ khóa SEO', 'Mô tả SEO', '2023-04-20 02:10:05', 1, '2023-04-21 00:36:24', 1, 1),
(3, 'Thái Lan', 'thai-lan', 0, '', 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:06:19', 1, '2022-11-19 07:54:36', 1, 1),
(4, 'Nhật Bản', 'nhat-ban', 0, '', 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:06:19', 1, '2022-11-19 07:54:44', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `vnh_category`
--

CREATE TABLE `vnh_category` (
  `id` int(11) NOT NULL COMMENT 'Mã Loại',
  `name` varchar(255) NOT NULL COMMENT 'Tên loại SP',
  `slug` varchar(255) NOT NULL COMMENT 'SLug Loại SP',
  `parent_id` int(11) NOT NULL DEFAULT 0 COMMENT 'Mã cấp cha',
  `sort_order` int(11) NOT NULL COMMENT 'Thứ tự',
  `level` int(10) UNSIGNED DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL COMMENT 'Hình đại diện',
  `metakey` varchar(255) NOT NULL COMMENT 'Từ khóa SEO',
  `metadesc` varchar(255) NOT NULL COMMENT 'Mô tả SEO',
  `created_at` datetime NOT NULL DEFAULT current_timestamp() COMMENT 'Ngày tạo',
  `created_by` tinyint(4) NOT NULL DEFAULT 0 COMMENT 'Người tạo',
  `updated_at` datetime DEFAULT current_timestamp() COMMENT 'Ngày sửa',
  `updated_by` tinyint(4) DEFAULT 0 COMMENT 'Người sửa',
  `status` tinyint(4) NOT NULL DEFAULT 2 COMMENT 'Trạng thái'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `vnh_category`
--

INSERT INTO `vnh_category` (`id`, `name`, `slug`, `parent_id`, `sort_order`, `level`, `image`, `metakey`, `metadesc`, `created_at`, `created_by`, `updated_at`, `updated_by`, `status`) VALUES
(1, 'Đồ nam', 'do-nam', 0, 0, 1, NULL, 'Đồ nam', 'Đồ nam', '2022-11-22 18:17:31', 1, '2023-04-20 08:03:14', 1, 2),
(2, 'Đồ nữ', 'do-nu', 0, 0, 1, NULL, 'Đồ nữ', 'Đồ nữ', '2022-11-22 18:18:00', 1, '2023-04-20 08:03:16', 1, 2),
(3, 'Áo thun nam', 'ao-thun-nam', 1, 0, 1, NULL, 'Áo thun nam', 'Áo thun nam', '2022-11-22 18:18:27', 1, '2023-04-20 08:03:18', 1, 2),
(4, 'Áo sơ mi nam', 'ao-so-mi-nam', 1, 0, 1, NULL, 'Áo sơ mi nam', 'Áo sơ mi nam', '2022-11-22 18:18:53', 1, '2023-04-20 08:03:19', 1, 2),
(5, 'Quần short nam', 'quan-short-nam', 1, 0, 1, NULL, 'Quần short nam', 'Quần short nam', '2022-11-22 18:19:32', 1, '2023-04-20 08:03:21', 1, 2),
(6, 'Quần dài nam', 'quan-dai-nam', 1, 0, 1, NULL, 'Quần dài nam', 'Quần dài nam22', '2022-11-22 18:19:57', 1, '2023-04-21 06:29:24', 1, 2),
(7, 'Áo thun nữ', 'ao-thun-nu', 2, 0, 1, NULL, 'Áo thun nữ', 'Áo thun nữ', '2022-11-22 18:21:27', 1, '2023-04-21 07:34:50', 1, 2),
(8, 'Áo sơ mi nữ', 'ao-so-mi-nu', 2, 0, 1, NULL, 'Áo sơ mi nữ', 'Áo sơ mi nữ', '2022-11-22 18:21:43', 1, '2022-11-22 18:21:43', 0, 1),
(9, 'Áo kiểu', 'ao-kieu', 2, 0, 1, NULL, 'Áo kiểu', 'Áo kiểu', '2022-11-22 18:22:00', 1, '2022-11-22 18:22:00', 0, 1),
(10, 'Quần short nữ', 'quan-short-nu', 2, 0, 1, NULL, 'Quần short nữ', 'Quần short nữ', '2022-11-22 18:22:14', 1, '2022-11-22 18:22:14', 0, 1),
(11, 'Quần dài nữ', 'quan-dai-nu', 2, 0, 1, NULL, 'Quần dài nữ', 'Quần dài nữ', '2022-11-22 18:22:48', 1, '2022-11-22 18:22:48', 0, 1),
(12, 'Chân váy', 'chan-vay', 2, 0, 1, NULL, 'Chân váy', 'Chân váy', '2022-11-22 18:23:07', 1, '2022-11-22 18:23:07', 0, 1),
(13, 'Đầm', 'dam', 2, 0, 1, NULL, 'Đầm', 'Đầm', '2022-11-22 18:23:20', 1, '2023-04-21 06:29:56', 1, 1),
(16, 'hjgjhj', 'hjgjhj', 0, 1, 1, NULL, 'gfghh', 'guh', '2023-04-21 02:14:21', 1, '2023-04-21 02:14:21', 0, 1),
(18, 'gdfdsrsr', 'gdfdsrsr', 11, 1, 1, 'gdfdsrsr.jpg', 'gfghhygfyg', 'guhhgh', '2023-04-21 02:20:04', 1, '2023-04-21 02:20:04', 0, 1),
(20, 'dbbdfjg', 'dbbdfjg', 13, 1, 1, '.jpg', 'dgfdhgfnbgf', 'fgfhfbgfh', '2023-04-21 07:35:10', 1, '2023-04-21 07:35:10', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `vnh_config`
--

CREATE TABLE `vnh_config` (
  `id` int(10) UNSIGNED NOT NULL,
  `site_name` varchar(255) NOT NULL,
  `metakey` varchar(255) NOT NULL,
  `metadesc` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(155) DEFAULT NULL,
  `facebook` varchar(155) DEFAULT NULL,
  `twitter` varchar(155) DEFAULT NULL,
  `youtube` varchar(155) DEFAULT NULL,
  `googleplus` varchar(155) DEFAULT NULL,
  `status` varchar(155) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `vnh_config`
--

INSERT INTO `vnh_config` (`id`, `site_name`, `metakey`, `metadesc`, `author`, `phone`, `email`, `facebook`, `twitter`, `youtube`, `googleplus`, `status`) VALUES
(1, 'Cửa hàng thời trang', 'Cửa hàng thời trang', 'Cửa hàng thời trang', 'Hồ Diên Lợi', '0987654321', 'dienloisoft@gmail.com', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vnh_contact`
--

CREATE TABLE `vnh_contact` (
  `id` int(11) NOT NULL COMMENT 'Mã liên hệ',
  `name` varchar(255) NOT NULL COMMENT 'Họ và tên',
  `email` varchar(100) NOT NULL COMMENT 'Email',
  `phone` varchar(100) NOT NULL COMMENT 'Điện thoại',
  `title` varchar(255) NOT NULL COMMENT 'Tiêu đề',
  `detail` mediumtext NOT NULL COMMENT 'Chi tiết',
  `replaydetail` text DEFAULT NULL COMMENT 'Nội dung liên hệ',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'Ngày liên hệ',
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'Ngày trả lời',
  `updated_by` tinyint(4) NOT NULL DEFAULT 0 COMMENT 'Người trả lời',
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT 'Tráng thái'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `vnh_contact`
--

INSERT INTO `vnh_contact` (`id`, `name`, `email`, `phone`, `title`, `detail`, `replaydetail`, `created_at`, `updated_at`, `updated_by`, `status`) VALUES
(1, 'Nguyễn Văn Toàn', 'nguyenvantoan@gmail.com', '0987654321', 'Hỏi về liên kết mua sĩ', 'Hỏi về liên kết mua sĩ', 'xzXZZ', '2023-04-03 21:51:45', '2023-04-20 22:31:25', 1, 1),
(2, 'Lê Thái Sơn', 'lethaison@gmail.com', '0987667986', 'Hỏi về liên kết mua sĩ', 'Hỏi về liên kết mua sĩ', NULL, '2020-06-30 22:31:49', '2020-06-30 22:31:49', 1, 1),
(3, 'Trần Ngọc Ái', 'tranngocai@gmail.com', '0987654379', 'Hỏi về liên kết mua sĩ', 'Hỏi về liên kết mua sĩ', NULL, '2020-06-30 22:31:49', '2020-06-30 22:31:49', 1, 1),
(5, 'jktyktỏkyt', 'ngochai040103@gmail.com', '0353617610', 'i5itui5', 'i5itui5', NULL, '2023-04-03 21:55:09', '2023-04-20 21:59:30', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `vnh_link`
--

CREATE TABLE `vnh_link` (
  `id` int(11) NOT NULL,
  `link` varchar(1000) DEFAULT NULL,
  `type` varchar(255) NOT NULL,
  `table_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `vnh_link`
--

INSERT INTO `vnh_link` (`id`, `link`, `type`, `table_id`) VALUES
(1, 'xzcxzcx', 'cx', 1),
(2, 'xzcxzcx', 'cx', 1),
(3, 'xzcxzcx', 'cx', 1),
(4, 'xzcxzcx', 'cx', 1),
(7, 'gdfdsrsr', 'category', 18),
(9, NULL, 'product', 38),
(10, NULL, 'product', 39),
(11, NULL, 'category', 19),
(12, NULL, 'category', 20);

-- --------------------------------------------------------

--
-- Table structure for table `vnh_menu`
--

CREATE TABLE `vnh_menu` (
  `id` int(11) NOT NULL COMMENT 'Mã Menu',
  `name` varchar(255) NOT NULL COMMENT 'Tên Menu',
  `link` varchar(255) NOT NULL COMMENT 'Liên kết',
  `type` varchar(50) NOT NULL COMMENT 'Kiểu Menu',
  `table_id` int(11) NOT NULL DEFAULT 0 COMMENT 'Mã trong bảng',
  `sort_order` int(11) NOT NULL DEFAULT 0 COMMENT 'Thứ tự',
  `position` varchar(255) NOT NULL COMMENT 'Vị trí',
  `level` int(10) UNSIGNED NOT NULL,
  `parent_id` int(11) NOT NULL COMMENT 'Mã cấp cha',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'Ngày Tạo',
  `created_by` tinyint(4) NOT NULL DEFAULT 1 COMMENT 'Người tạo',
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'Ngày sửa',
  `updated_by` tinyint(4) NOT NULL DEFAULT 1 COMMENT 'Người sửa',
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT 'Trạng thái'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `vnh_menu`
--

INSERT INTO `vnh_menu` (`id`, `name`, `link`, `type`, `table_id`, `sort_order`, `position`, `level`, `parent_id`, `created_at`, `created_by`, `updated_at`, `updated_by`, `status`) VALUES
(1, 'Trang chủ', 'http://localhost/Project/PHP2022/', 'custom', 0, 1, 'mainmenu', 1, 0, '2022-11-22 12:36:05', 1, '2022-11-22 12:36:09', 1, 1),
(2, 'Giới thiệu', 'index.php?option=page&cat=gioi-thieu', 'page', 39, 2, 'mainmenu', 1, 0, '2022-11-22 13:13:46', 1, '2022-11-22 13:18:22', 1, 1),
(3, 'Đầm', 'index.php?option=product&cat=dam', 'category', 13, 9, 'mainmenu', 2, 14, '2022-11-22 13:14:09', 1, '2022-11-22 13:18:22', 1, 1),
(4, 'Chân váy', 'index.php?option=product&cat=chan-vay', 'category', 12, 8, 'mainmenu', 2, 14, '2022-11-22 13:14:09', 1, '2022-11-22 13:18:22', 1, 1),
(5, 'Quần dài nữ', 'index.php?option=product&cat=quan-dai-nu', 'category', 11, 7, 'mainmenu', 2, 14, '2022-11-22 13:14:09', 1, '2022-11-22 13:18:22', 1, 1),
(6, 'Quần short nữ', 'index.php?option=product&cat=quan-short-nu', 'category', 10, 6, 'mainmenu', 2, 14, '2022-11-22 13:14:09', 1, '2022-11-22 13:18:22', 1, 1),
(7, 'Áo kiểu', 'index.php?option=product&cat=ao-kieu', 'category', 9, 5, 'mainmenu', 2, 14, '2022-11-22 13:14:09', 1, '2022-11-22 13:18:22', 1, 1),
(8, 'Áo sơ mi nữ', 'index.php?option=product&cat=ao-so-mi-nu', 'category', 8, 4, 'mainmenu', 2, 14, '2022-11-22 13:14:09', 1, '2022-11-22 13:18:22', 1, 1),
(9, 'Áo thun nữ', 'index.php?option=product&cat=ao-thun-nu', 'category', 7, 3, 'mainmenu', 2, 14, '2022-11-22 13:14:09', 1, '2022-11-22 13:18:22', 1, 1),
(10, 'Quần dài nam', 'index.php?option=product&cat=quan-dai-nam', 'category', 6, 13, 'mainmenu', 2, 15, '2022-11-22 13:14:09', 1, '2022-11-22 13:19:04', 1, 1),
(11, 'Quần short nam', 'index.php?option=product&cat=quan-short-nam', 'category', 5, 12, 'mainmenu', 2, 15, '2022-11-22 13:14:09', 1, '2022-11-22 13:19:04', 1, 1),
(12, 'Áo sơ mi nam', 'index.php?option=product&cat=ao-so-mi-nam', 'category', 4, 11, 'mainmenu', 2, 15, '2022-11-22 13:14:09', 1, '2022-11-22 13:19:04', 1, 1),
(13, 'Áo thun nam', 'index.php?option=product&cat=ao-thun-nam', 'category', 3, 10, 'mainmenu', 2, 15, '2022-11-22 13:14:09', 1, '2022-11-22 13:19:04', 1, 1),
(14, 'Đồ nữ', 'index.php?option=product&cat=do-nu', 'category', 2, 4, 'mainmenu', 1, 0, '2022-11-22 13:14:09', 1, '2022-11-22 13:19:41', 1, 1),
(15, 'Đồ nam', 'index.php?option=product&cat=do-nam', 'category', 1, 3, 'mainmenu', 1, 0, '2022-11-22 13:14:09', 1, '2022-11-22 13:19:41', 1, 1),
(16, 'Giới thiệu', 'index.php?option=page&cat=gioi-thieu', 'page', 39, 1, 'footermenu', 1, 0, '2022-11-22 13:55:36', 1, '2022-11-30 02:31:59', 1, 0),
(17, 'Chính Sách Hoàn Tiền', 'index.php?option=page&cat=chinh-sach-hoan-tien', 'page', 38, 1, 'footermenu', 1, 0, '2022-11-22 13:55:36', 1, '2022-11-22 13:55:42', 1, 1),
(18, 'Chính sách bảo hành', 'index.php?option=page&cat=chinh-sach-bao-hanh', 'page', 37, 1, 'footermenu', 1, 0, '2022-11-22 13:55:36', 1, '2022-11-22 13:55:40', 1, 1),
(19, 'Chính sách đổi hàng', 'index.php?option=page&cat=chinh-sach-doi-hang', 'page', 36, 1, 'footermenu', 1, 0, '2022-11-22 13:55:36', 1, '2022-11-22 13:55:39', 1, 1),
(20, 'jfhrjg', 'sj', 'custom', 0, 1, 'mainmenu', 1, 0, '2023-04-20 20:38:55', 1, '2023-04-20 20:55:02', 1, 0),
(21, 'hfgfjkjdìg', 'juigjigr', 'custom', 0, 1, 'mainmenu', 1, 0, '2023-04-20 20:52:20', 1, '2023-04-20 20:52:26', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `vnh_order`
--

CREATE TABLE `vnh_order` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Mã đơn hàng',
  `code` varchar(20) NOT NULL COMMENT 'Code đơn hàng',
  `user_id` int(11) NOT NULL COMMENT 'Mã khách hàng',
  `exportdate` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'Ngày xuất',
  `deliveryaddress` varchar(255) NOT NULL COMMENT 'Địa chỉ người nhận',
  `deliveryname` varchar(100) NOT NULL COMMENT 'Tên người nhận',
  `deliveryphone` varchar(120) NOT NULL COMMENT 'Điện thoại người nhận',
  `deliveryemail` varchar(120) NOT NULL COMMENT 'Email ngươig nhận',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'Ngày tạo',
  `updated_at` timestamp NULL DEFAULT current_timestamp() COMMENT 'Ngày cập nhật',
  `updated_by` tinyint(3) UNSIGNED DEFAULT NULL COMMENT 'Người cập nhật',
  `status` tinyint(3) UNSIGNED NOT NULL COMMENT 'Trạng thái'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `vnh_order`
--

INSERT INTO `vnh_order` (`id`, `code`, `user_id`, `exportdate`, `deliveryaddress`, `deliveryname`, `deliveryphone`, `deliveryemail`, `created_at`, `updated_at`, `updated_by`, `status`) VALUES
(1, '20200107121212', 1, '2020-07-03 17:00:00', 'HCM', 'Hồ Đình Lợi', '0987654321', 'loi@gmail.com', '2020-06-30 17:00:00', '2022-12-07 04:23:53', 1, 1),
(2, '20200107121216', 1, '2020-07-03 17:00:00', 'Bình Dương', 'Hoàng Mai Toàn', '0987654321', 'toan@gmail.com', '2020-06-30 17:00:00', '2022-11-30 06:47:42', 1, 5);

-- --------------------------------------------------------

--
-- Table structure for table `vnh_orderdetail`
--

CREATE TABLE `vnh_orderdetail` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Mã CT Đơn hàng',
  `order_id` int(10) UNSIGNED NOT NULL COMMENT 'Mã đơn hàng',
  `product_id` int(10) UNSIGNED NOT NULL COMMENT 'Mã sản phẩm',
  `price` float(12,2) NOT NULL COMMENT 'Giá sản phẩm',
  `qty` int(10) UNSIGNED NOT NULL COMMENT 'Số lượng',
  `amount` float(12,2) NOT NULL COMMENT 'Thành tiền'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `vnh_orderdetail`
--

INSERT INTO `vnh_orderdetail` (`id`, `order_id`, `product_id`, `price`, `qty`, `amount`) VALUES
(1, 1, 23, 250000.00, 2, 500000.00),
(2, 1, 25, 250000.00, 3, 750000.00),
(3, 2, 33, 250000.00, 2, 500000.00),
(4, 2, 43, 250000.00, 3, 750000.00);

-- --------------------------------------------------------

--
-- Table structure for table `vnh_post`
--

CREATE TABLE `vnh_post` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Mã bài viết',
  `topic_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Mã chủ đề',
  `title` varchar(1000) NOT NULL COMMENT 'Tiêu đề bài viết',
  `slug` varchar(1000) NOT NULL COMMENT 'Slug tiêu đề',
  `detail` longtext NOT NULL COMMENT 'Chi tiết bài viết',
  `image` varchar(1000) NOT NULL COMMENT 'Hình ảnh',
  `type` varchar(10) NOT NULL DEFAULT 'post' COMMENT 'Kiểu bài viết',
  `metakey` varchar(255) NOT NULL COMMENT 'Từ khóa SEO',
  `metadesc` varchar(255) NOT NULL COMMENT 'Mô tả SEO',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'Ngày tạo',
  `created_by` tinyint(4) NOT NULL DEFAULT 1 COMMENT 'Người tạo',
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'Ngày sửa',
  `updated_by` tinyint(4) NOT NULL DEFAULT 1 COMMENT 'Người sửa',
  `status` tinyint(4) NOT NULL DEFAULT 2 COMMENT 'Trạng thái'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `vnh_post`
--

INSERT INTO `vnh_post` (`id`, `topic_id`, `title`, `slug`, `detail`, `image`, `type`, `metakey`, `metadesc`, `created_at`, `created_by`, `updated_at`, `updated_by`, `status`) VALUES
(33, 1, 'GRAND OPENING TOTODAY CẦN THƠ', 'grand-opening-totoday-can-tho', '<p>Ngo&agrave;i kh&ocirc;ng gian sang trọng v&agrave; trẻ trung với nhiều g&oacute;c xinh lung linh cho FRIENDs thoải m&aacute;i &ldquo;sống ảo&rdquo;, TOTODAY Cần Thơ c&ograve;n mang đến thật nhiều thiết kế s&agrave;nh điệu v&agrave; c&aacute; t&iacute;nh nh&acirc;n dịp khai trương n&agrave;y.&nbsp;</p>\r\n\r\n<p>Hơn nữa, dịp khai trương n&agrave;y c&ograve;n hứa hẹn sẽ &ldquo;đốn tim&rdquo; c&aacute;c t&iacute;n đồ thời trang tại Cần Thơ bằng những ưu đ&atilde;i b&ugrave;ng nổ chưa từng c&oacute;:</p>\r\n\r\n<p><strong>Chương tr&igrave;nh 1: Opening</strong></p>\r\n\r\n<p><strong>Duy nhất từ 19h, ng&agrave;y 14/11/2022:</strong></p>\r\n\r\n<p>- Giảm 70% cho 10 FRIENDs đầu ti&ecirc;n đến cửa h&agrave;ng (&aacute;p dụng cho 1 sản phẩm).</p>\r\n\r\n<p>- Giảm 50% cho 15 FRIENDs đến cửa h&agrave;ng tiếp theo (&aacute;p dụng cho 1 sản phẩm).</p>\r\n\r\n<p>- Giảm 30% cho 20 FRIENDs đến cửa h&agrave;ng tiếp theo (&aacute;p dụng cho 1 sản phẩm).</p>\r\n\r\n<p>- Giảm 10% cho tất cả c&aacute;c FRIENDs c&ograve;n lại (&aacute;p dụng cho tất cả c&aacute;c sản phẩm).&nbsp;</p>\r\n\r\n<p><strong>Từ ng&agrave;y 15/11/2022 đến 16/11/2022:&nbsp;</strong>Giảm gi&aacute; 10% cho tất cả c&aacute;c sản phẩm.</p>\r\n\r\n<p><strong>Chương tr&igrave;nh 2: V&ograve;ng quay may mắn</strong></p>\r\n\r\n<p>Khi FRIENDs thực hiện like page&nbsp;<strong>TOTODAY + Comment + tag 3 người bạn v&agrave;o b&agrave;i viết ch&iacute;nh của chương tr&igrave;nh,</strong>&nbsp;FRIENDs sẽ được tham gia minigame &ldquo;V&ograve;ng quay may mắn&rdquo; với nhiều phần qu&agrave; hấp dẫn như sau:</p>\r\n\r\n<p>- &Aacute;o thun c&aacute; t&iacute;nh trị gi&aacute; 245k.&nbsp;</p>\r\n\r\n<p>- T&uacute;i tote thời trang Freestyle.</p>\r\n\r\n<p>- Sổ tay TOTODAY.</p>\r\n\r\n<p>- Voucher trị gi&aacute; 100k (&aacute;p dụng h&oacute;a đơn 500k cho lần mua h&agrave;ng tiếp theo).</p>\r\n\r\n<p>- Voucher trị gi&aacute; 50k (&aacute;p dụng h&oacute;a đơn 300k cho lần mua h&agrave;ng tiếp theo).</p>\r\n\r\n<p>- Giảm th&ecirc;m 50k cho h&oacute;a đơn bất k&igrave; (kh&ocirc;ng điều kiện).&nbsp;</p>\r\n\r\n<p><strong>Chương tr&igrave;nh 3: Tặng t&uacute;i tote &amp; m&oacute;c kh&oacute;a</strong></p>\r\n\r\n<p>- Khi mua sắm với h&oacute;a đơn từ 499.000đ, FRIENDs sẽ được tặng ngay 1 chiếc t&uacute;i tote thời trang Freestyle, thỏa sức mix&amp;match c&ugrave;ng nhiều phong c&aacute;ch (&aacute;p dụng sau chiết khấu).</p>\r\n\r\n<p>- Ngo&agrave;i ra, những chiếc m&oacute;c kh&oacute;a cực dễ thương đang chờ đợi chủ nh&acirc;n nữa đ&oacute; (&aacute;p dụng khi ph&aacute;t sinh h&oacute;a đơn trong thời gian diễn ra chương tr&igrave;nh).</p>\r\n\r\n<p><strong>Chương tr&igrave;nh 4:</strong></p>\r\n\r\n<p>- Giảm ngay 100k cho 1 sản phẩm nguy&ecirc;n gi&aacute; khi FRIENDs cầm tờ rơi GRAND OPENING CẦN THƠ 2&nbsp;đến cửa h&agrave;ng trong suốt thời gian diễn ra chương tr&igrave;nh.&nbsp;</p>\r\n\r\n<p><strong>Chương tr&igrave;nh 5: Voucher Lumos Cake &amp; Bread</strong></p>\r\n\r\n<p>- Giảm ngay 30% cho tất cả sản phẩm khi FRIENDs sử dụng voucher của tiệm b&aacute;nh Lumos Cake &amp; Bread trong suốt thời gian diễn ra chương tr&igrave;nh.</p>\r\n\r\n<p><em>Tất cả 5 chương tr&igrave;nh được&nbsp;&aacute;p dụng tại cửa h&agrave;ng 22 Nguy&ecirc;̃n Vi&ecirc;̣t H&ocirc;̀ng, Qu&acirc;̣n Ninh Ki&ecirc;̀u, TP. C&acirc;̀n Thơ&nbsp;từ ng&agrave;y 14/11/2022 đến hết 16/11/2022.&nbsp;</em></p>\r\n\r\n<p><strong>Điều kiện &aacute;p dụng:</strong></p>\r\n\r\n<p>- Kh&ocirc;ng &aacute;p dụng chung với chiết khấu VIP.</p>\r\n\r\n<p>- Kh&ocirc;ng &aacute;p dụng đồng thời với c&aacute;c chương tr&igrave;nh khuyến m&atilde;i kh&aacute;c.&nbsp;</p>\r\n\r\n<p>- FRIENDs được t&iacute;ch lũy điểm dựa tr&ecirc;n doanh số thanh to&aacute;n cuối c&ugrave;ng.</p>\r\n\r\n<p>- Kh&ocirc;ng &aacute;p dụng đổi trả đối với sản phẩm giảm gi&aacute;.</p>\r\n\r\n<p>-----------------------------</p>\r\n\r\n<p><img src=\"chrome-extension://bpggmmljdiliancllaapiggllnkbjocb/logo/48.png\" /></p>\r\n', 'grand-opening-totoday-can-tho.jpg', 'post', 'GRAND OPENING TOTODAY CẦN THƠ', 'GRAND OPENING TOTODAY CẦN THƠ', '2022-11-22 12:50:14', 1, '2022-11-22 12:56:09', 1, 1),
(34, 1, 'DEAL SHOCK THÁNG 11: CHỐT GỌN QUẦN JEAN ĐEN SIÊU HOT CHỈ VỚI 299K', 'deal-shock-thang-11-chot-gon-quan-jean-den-sieu-hot-chi-voi-299k', '<p>Với m&ocirc;̃i hóa đơn từ 300k mua tại website hoặc fanpage của TOTODAY, FRIENDs có ngay 01 ưu đãi mua HOT ITEM jean đen mã M1QJN04201FSFTR chỉ với 299k đ&ecirc;́n h&ecirc;́t tháng 11 này.</p>\r\n\r\n<p><strong>Điều kiện &aacute;p dụng:</strong></p>\r\n\r\n<ul>\r\n	<li>Chương tr&igrave;nh diễn ra đến hết th&aacute;ng 11.</li>\r\n	<li>Chương tr&igrave;nh chỉ &aacute;p dụng tại 02 k&ecirc;nh mua sắm online l&agrave; Website v&agrave; Fanpage ch&iacute;nh của TOTODAY.</li>\r\n	<li>FRIENDs được t&iacute;ch lũy điểm dựa tr&ecirc;n doanh số thanh to&aacute;n cuối c&ugrave;ng.</li>\r\n</ul>\r\n', 'deal-shock-thang-11-chot-gon-quan-jean-den-sieu-hot-chi-voi-299k.jpg', 'post', 'DEAL SHOCK THÁNG 11: CHỐT GỌN QUẦN JEAN ĐEN SIÊU HOT CHỈ VỚI 299K', 'DEAL SHOCK THÁNG 11: CHỐT GỌN QUẦN JEAN ĐEN SIÊU HOT CHỈ VỚI 299K', '2022-11-22 13:01:25', 1, '2022-11-22 13:01:25', 1, 1),
(35, 1, 'KHAI TIỆC SINH NHẬT, BẬT TUNG BẤT NGỜ', 'khai-tiec-sinh-nhat-bat-tung-bat-ngo', '<p><strong>RINH QU&Agrave; BOM TẤN TRỊ GI&Aacute; 500K</strong></p>\r\n\r\n<p>Với mỗi h&oacute;a đơn 999k, kh&aacute;ch h&agrave;ng sẽ nhận ngay 1 combo qu&agrave; trị gi&aacute; 500k bao gồm:</p>\r\n\r\n<p>-&nbsp;T&uacute;i tote thời trang Freestyle.</p>\r\n\r\n<p>- Chiếc n&oacute;n thời trang c&aacute; t&iacute;nh.</p>\r\n\r\n<p>- Sổ tay thanh lịch cho c&aacute;c bạn trẻ .</p>\r\n\r\n<p>- B&uacute;t bi thương hiệu Totoday.</p>\r\n\r\n<p>- Phụ kiện m&oacute;c kh&oacute;a trẻ trung.&nbsp;</p>\r\n\r\n<p>- Đặc biệt l&agrave; voucher trị gi&aacute; 100k (&aacute;p dụng cho h&oacute;a đơn 500k, từ ng&agrave;y 20/10 đến 31/12).</p>\r\n\r\n<p><em>Chương tr&igrave;nh &aacute;p dụng tr&ecirc;n to&agrave;n hệ thống cửa h&agrave;ng Totoday v&agrave; online kể từ ng&agrave;y 08/10/2022 đến 16/10/2022.&nbsp;</em></p>\r\n\r\n<p><em><strong>Điều kiện &aacute;p dụng:</strong></em></p>\r\n\r\n<p><em>- Kh&ocirc;ng &aacute;p dụng cấp số nh&acirc;n.</em></p>\r\n\r\n<p><em>- Qu&agrave; tặng kh&ocirc;ng c&oacute; gi&aacute; trị quy đổi th&agrave;nh tiền mặt.</em></p>\r\n\r\n<p><em>- C&aacute;c sản phẩm tặng kh&ocirc;ng &aacute;p dụng ch&iacute;nh s&aacute;ch đổi trả.</em></p>\r\n\r\n<p><em>- Kh&ocirc;ng &aacute;p dụng chung với c&aacute;c voucher giảm gi&aacute; v&agrave; CTKM kh&aacute;c.</em></p>\r\n\r\n<p><em>- &Aacute;p dụng chung với chiết khấu VIP, t&iacute;nh tr&ecirc;n gi&aacute; trị h&oacute;a đơn thanh to&aacute;n cuối c&ugrave;ng sau chiết khấu.</em></p>\r\n\r\n<p><strong>THỬ TH&Aacute;CH MINIGAME &ldquo;THỔI NẾN KH&Ocirc;NG TẮT&rdquo;</strong></p>\r\n\r\n<p>Với mỗi h&oacute;a đơn mua h&agrave;ng, kh&aacute;ch h&agrave;ng sẽ được tham gia minigame &ldquo;Thổi nến nhận qu&agrave;&rdquo; c&ugrave;ng Totoday c&oacute; thể lệ như sau:</p>\r\n\r\n<p>- Mỗi kh&aacute;ch h&agrave;ng sẽ được tham gia thổi 3 lần/ lần chơi, kh&aacute;ch h&agrave;ng thổi tắt nến tr&ecirc;n b&aacute;nh kem sẽ được nhận&nbsp;<strong>1 voucher trị gi&aacute; 50k</strong>&nbsp;(kh&ocirc;ng &aacute;p dụng với phụ kiện, từ ng&agrave;y 20/10 đến 31/12).</p>\r\n\r\n<p>- Quy định khoảng c&aacute;ch: Kh&aacute;ch h&agrave;ng đứng tại vạch, c&aacute;ch b&aacute;nh kem 60cm (1 &ocirc; gạch).</p>\r\n\r\n<p><em>Chương tr&igrave;nh &aacute;p dụng tr&ecirc;n to&agrave;n hệ thống cửa h&agrave;ng Totoday từ ng&agrave;y 08/10/2022 đến 16/10/2022.&nbsp;</em></p>\r\n\r\n<p>Đến Totoday rinh qu&agrave; khủng v&agrave; dự tiệc sinh nhật c&ugrave;ng ch&uacute;ng m&igrave;nh FRIENDs nh&eacute;!</p>\r\n\r\n<p>-----------------------------</p>\r\n', 'khai-tiec-sinh-nhat-bat-tung-bat-ngo.jpg', 'post', 'KHAI TIỆC SINH NHẬT, BẬT TUNG BẤT NGỜ', 'KHAI TIỆC SINH NHẬT, BẬT TUNG BẤT NGỜ', '2022-11-22 13:03:06', 1, '2022-11-22 13:03:06', 1, 1),
(36, NULL, 'Chính sách đổi hàng', 'chinh-sach-doi-hang', '<p>Ch&iacute;nh s&aacute;ch đổi h&agrave;ngCh&iacute;nh s&aacute;ch đổi h&agrave;ngCh&iacute;nh s&aacute;ch đổi h&agrave;ngCh&iacute;nh s&aacute;ch đổi h&agrave;ngCh&iacute;nh s&aacute;ch đổi h&agrave;ngCh&iacute;nh s&aacute;ch đổi h&agrave;ngCh&iacute;nh s&aacute;ch đổi h&agrave;ngCh&iacute;nh s&aacute;ch đổi h&agrave;ngCh&iacute;nh s&aacute;ch đổi h&agrave;ngCh&iacute;nh s&aacute;ch đổi h&agrave;ngCh&iacute;nh s&aacute;ch đổi h&agrave;ngCh&iacute;nh s&aacute;ch đổi h&agrave;ngCh&iacute;nh s&aacute;ch đổi h&agrave;ngCh&iacute;nh s&aacute;ch đổi h&agrave;ngCh&iacute;nh s&aacute;ch đổi h&agrave;ngCh&iacute;nh s&aacute;ch đổi h&agrave;ngCh&iacute;nh s&aacute;ch đổi h&agrave;ngCh&iacute;nh s&aacute;ch đổi h&agrave;ngCh&iacute;nh s&aacute;ch đổi h&agrave;ngCh&iacute;nh s&aacute;ch đổi h&agrave;ngCh&iacute;nh s&aacute;ch đổi h&agrave;ngCh&iacute;nh s&aacute;ch đổi h&agrave;ngCh&iacute;nh s&aacute;ch đổi h&agrave;ngCh&iacute;nh s&aacute;ch đổi h&agrave;ngCh&iacute;nh s&aacute;ch đổi h&agrave;ngCh&iacute;nh s&aacute;ch đổi h&agrave;ngCh&iacute;nh s&aacute;ch đổi h&agrave;ngCh&iacute;nh s&aacute;ch đổi h&agrave;ng</p>\r\n', 'chinh-sach-doi-hang.jpg', 'page', 'Chính sách đổi hàng', 'Chính sách đổi hàng', '2022-11-22 13:07:28', 1, '2022-11-22 13:07:28', 1, 1),
(37, NULL, 'Chính sách bảo hành', 'chinh-sach-bao-hanh', '<h1>Ch&iacute;nh s&aacute;ch bảo h&agrave;nh</h1>\r\n', 'chinh-sach-bao-hanh.png', 'page', 'Chính sách bảo hành', 'Chính sách bảo hành', '2022-11-22 13:08:13', 1, '2022-11-22 13:08:13', 1, 1),
(38, NULL, 'Chính Sách Hoàn Tiền', 'chinh-sach-hoan-tien', '<h1>Ch&iacute;nh S&aacute;ch Ho&agrave;n TiềnCh&iacute;nh S&aacute;ch Ho&agrave;n TiềnCh&iacute;nh S&aacute;ch Ho&agrave;n TiềnCh&iacute;nh S&aacute;ch Ho&agrave;n TiềnCh&iacute;nh S&aacute;ch Ho&agrave;n TiềnCh&iacute;nh S&aacute;ch Ho&agrave;n TiềnCh&iacute;nh S&aacute;ch Ho&agrave;n TiềnCh&iacute;nh S&aacute;ch Ho&agrave;n TiềnCh&iacute;nh S&aacute;ch Ho&agrave;n Tiền</h1>\r\n', 'chinh-sach-hoan-tien.jpg', 'page', 'Chính Sách Hoàn Tiền', 'Chính Sách Hoàn Tiền', '2022-11-22 13:11:30', 1, '2022-11-22 13:11:30', 1, 1),
(39, NULL, 'Giới thiệu', 'gioi-thieu', '<p>Shop Thời Trang Dịu Hiền với phương ch&acirc;m l&agrave; &ldquo; Sẽ lu&ocirc;n lu&ocirc;n l&agrave; người bạn đồng h&agrave;nh c&ugrave;ng với phong c&aacute;ch thời trang của bạn&rdquo;. Dịu hiền sẽ l&agrave; một trong những shop đồ thời trang uy t&iacute;n v&agrave; chất lượng nhất tại Tp.HCM ch&uacute;ng t&ocirc;i lu&ocirc;n mang đến cho kh&aacute;ch h&agrave;ng những sản phẩm mới nhất v&agrave; chất lượng, gi&aacute; th&agrave;nh hợp l&yacute; nhất tại cửa h&agrave;ng Thời Trang Dịu Hiền dưới đ&acirc;y l&agrave; đối n&eacute;t giới thiệu cơ bản về Shop Thời Trang Nữ Cao Cấp Dịu Hiền.</p>\r\n\r\n<p>Blog giới thiệu thời trang</p>\r\n\r\n<p>C&aacute;ch M&agrave; Thời Trang Dịu Hiền Tạo Dựng Thương Hiệu?</p>\r\n\r\n<p>Nhằm đ&aacute;p ứng được nhu cầu của người ti&ecirc;u d&ugrave;ng n&ecirc;n c&oacute; rất nhiều shop thời trang h&agrave;ng loạt được ra đời nhưng trong một khoảng thời gian ngắn rồi họ cũng lặng lẽ đ&oacute;ng cửa. Chắc c&oacute; lẽ bạn cũng rất ngạc nhi&ecirc;n khi ai đ&oacute; n&oacute;i với bạn rằng chắc c&oacute; một cửa h&agrave;ng nhỏ lẻ, kh&ocirc;ng thương hiệu m&agrave; lại tồn tại nhiều năm nay. Nhờ r&uacute;t kinh nghiệm từ những shop cửa h&agrave;ng nhỏ lẻ kh&aacute;c. Ch&iacute;nh v&igrave; vậy m&agrave; Dịu Hiền một trong những cửa h&agrave;ng shop thời trang nhỏ nhắn xinh xắn nằm tr&ecirc;n tuyến đường Nguyễn Văn Lượng&nbsp; ( Quận G&ograve; Vấp, TP. Hồ Ch&iacute; Minh ) nhờ được sự tin tưởng của kh&aacute;ch h&agrave;ng với hơn 800.000 lượt theo d&otilde;i n&ecirc;n Shop Thời Trang Nữ Cao Cấp Dịu Hiền đ&atilde; đi được hơn 10 năm chặng đường kinh doanh trong lĩnh vực thời trang đ&atilde; trở th&agrave;nh một trong những địa điểm b&aacute;n thời trang uy t&iacute;n nhất cho kh&aacute;ch h&agrave;ng lựa chọn.</p>\r\n\r\n<p>Dưới đ&acirc;y l&agrave; một v&agrave;i ti&ecirc;u ch&iacute; đ&atilde; tạo n&ecirc;n thương hiệu của dịu hiền c&oacute; vị tr&iacute; tại thị trường Việt Nam cụ thể như sau :</p>\r\n\r\n<p>Khỏi nguồn từ niềm y&ecirc;u th&iacute;ch của bạn th&acirc;n</p>\r\n\r\n<p>Giới thiệu cơ bản về Thời Trang Dịu Hiền được ra đời dựa v&agrave;o t&igrave;nh y&ecirc;u m&atilde;nh liệt m&agrave; chị chủ đ&atilde; d&agrave;nh hết cả tuổi thanh xu&acirc;n để d&agrave;nh cho thời trang lu&ocirc;n mang đến cho kh&aacute;ch những sản phẩm chất lượng tốt nhất đến cho bạn.</p>\r\n\r\n<p>Mặc d&ugrave; shop dịu hiền kh&ocirc;ng phải l&agrave; một cửa h&agrave;ng rất lớn nhưng ngay từ l&uacute;c ban đầu, Chị hiền đ&atilde; x&aacute;c định mục ti&ecirc;u của m&igrave;nh l&agrave;m g&igrave; v&agrave; những kh&aacute;ch h&agrave;ng m&agrave; shop hướng tới l&agrave; đối tượng n&agrave;o. Tuy nhi&ecirc;n b&ecirc;n cạnh đ&oacute; shop cũng đồng thời t&igrave;m ra những n&eacute;t ri&ecirc;ng cho shop m&agrave; cứ thế m&agrave; Shop Thời Trang C&ocirc;ng Sở Dịu Hiền c&oacute; được chỗ vững chắc tr&ecirc;n thị trường Việt Nam hiện nay.</p>\r\n\r\n<p>Shop dịu hiền nhờ chọn được vị địa l&yacute; thuận lợi c&oacute; rất nhiều d&acirc;n văn ph&ograve;ng n&ecirc;n Dịu Hiền Shop hướng tới những kh&aacute;ch h&agrave;ng trẻ tuổi đặc biệt l&agrave; những kh&aacute;ch h&agrave;ng c&oacute; thu nhập tầm trung chủ yếu l&agrave; nh&acirc;n vi&ecirc;n văn ph&ograve;ng&hellip;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Giới thiệu shop dịu hiền thời trang</p>\r\n\r\n<p>Ch&iacute;nh v&igrave; vậy m&agrave; tất cả c&aacute;c sản phẩm đa dạng v&agrave; mẫu m&atilde; chủ yếu tập trung phần nhiều v&agrave;o &Aacute;o sơ mi, Ch&acirc;n v&aacute;y, Đầm, Quần, Vest, T-shirt&hellip;nhờ thiết kế đa dạng v&agrave; phong ph&uacute; n&ecirc;n tất cả c&aacute;c d&ograve;ng sản phẩm tại shop c&oacute; thể sử dụng đi l&agrave;m, đi chơi, du lịch, d&atilde; ngoại hay thậm tr&iacute; trong những buổi tiệc sang trọng.</p>\r\n\r\n<p>Giới thiệu một v&agrave;i n&eacute;t ri&ecirc;ng tạo ấn tượng trong mắt kh&aacute;ch h&agrave;ng</p>\r\n\r\n<p>Đối với c&aacute;c shop thời trang hiện nay th&igrave; b&agrave;i to&aacute;n về lợi nhuận l&agrave; một b&agrave;i to&aacute;n kh&oacute; đối với những shop thời trang nhỏ lẻ như Cửa H&agrave;ng Thời Trang Dịu Hiền. Để giải quyết được b&agrave;i to&aacute;n lợi nhuận m&agrave; ph&acirc;n kh&uacute;c gi&aacute; của c&aacute;c sản phẩm phải vẫn nằm ở tầm trung. Dịu hiền đ&atilde; tối ưu h&oacute;a nhất từ kh&acirc;u nhập h&agrave;ng cũng như sau những nghi&ecirc;n cứu của Dịu Hiền Shop những nhu cầu của kh&aacute;ch h&agrave;ng v&agrave; xu hướng thời trang hot trong thời gian một c&aacute;ch kỹ lưỡng để shop c&oacute; thể chọn được những mẩu đẹp v&agrave; chất lượng tốt nhất.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Nhận thấy được nhu cầu của kh&aacute;ch h&agrave;ng ng&agrave;y c&agrave;ng cao cấp với những sản phẩm&nbsp; độc lạ, ấn tượng v&agrave; điểm nhấn mạnh đ&aacute;ng ch&uacute; &yacute; nhất l&agrave; &ldquo;kh&ocirc;ng đụng h&agrave;ng&rdquo; n&ecirc;n ngo&agrave;i những sản phẩm nhập th&igrave; Thời Trang Dịu Hiền cũng c&oacute; thiết kế với nhiều mẫu m&atilde; mới hot trend để đ&aacute;p ứng được nhu cầu của kh&aacute;ch h&agrave;ng. N&ecirc;n từ đ&oacute; Dịu Hiền Shop v&agrave; c&acirc;u chuyện thương hiệu n&oacute; cũng bắt nguồn từ đ&oacute; &ldquo; Bạn Muốn Mua Những Sản Phẩm Thời Trang Đẹp, Độc V&agrave; Kh&ocirc;ng Đụng H&agrave;ng, Chỉ C&oacute; Tại Shop Thời Trang Cao Cấp Dịu Hiền :)&rdquo;</p>\r\n\r\n<p>B&ecirc;n cạnh đ&oacute;, để đối mặt với t&iacute;nh khốc liệt của thị trường n&ecirc;n Shop dịu hiền sẽ giới thiệu cho bạn những chiếc lược marketing cũng như chiếc lược kinh doanh cũng mang những phong c&aacute;ch độc đ&aacute;o ri&ecirc;ng. Đối với những mặt h&agrave;ng trưng b&agrave;y tại cửa h&agrave;ng Thời Trang Dịu Hiền chỉ trưng b&agrave;y những sản phẩm c&oacute; số lượng kham hiến, nhờ hiểu được t&acirc;m l&yacute; của kh&aacute;ch h&agrave;ng n&ecirc;n đối với việc trưng b&agrave;y như vậy kh&aacute;ch h&agrave;ng sẽ suy nghĩ nếu kh&ocirc;ng mua th&igrave; sẽ hết h&agrave;ng!</p>\r\n\r\n<p>Ch&iacute;nh v&igrave; c&oacute; những chiến lược kinh doanh độc đ&aacute;o m&agrave; Thời Trang Dịu Hiền ng&agrave;y c&agrave;ng được nhiều kh&aacute;ch h&agrave;ng t&igrave;m đến với sớm với những ti&ecirc;u ch&iacute; &ldquo; Chất Lượng &ndash; Uy T&iacute;n &ndash; Sản Phẩm Độc Lạ &ldquo;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Kh&ocirc;ng chỉ kinh doanh quần, &aacute;o, v&aacute;y, đầm&hellip;th&igrave; shop cũng c&oacute; b&agrave;y b&aacute;n phụ kiện trang sức k&egrave;m theo để cho bạn đẹp c&agrave;ng đẹp th&ecirc;m với những bộ trang sức k&egrave;m theo. Tuy nhi&ecirc;n đ&oacute; cũng chưa phải l&agrave; những g&igrave; tạo n&ecirc;n sự th&agrave;nh c&ocirc;ng như ng&agrave;y h&ocirc;m nay của Cửa H&agrave;ng Thời Trang Dịu Hiền.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Giới thiệu shop dịu hiền thời trang</p>\r\n\r\n<p>Đặc biệt một trong những yếu tố th&agrave;nh c&ocirc;ng nhất của shop Thời Trang Quần &Aacute;o Nữ Cao Cấp Dịu Hiền đ&oacute; l&agrave; tạo dựng được một xưởng sản xuất thời trang c&ocirc;ng sở lớn nhất tại Tp.HCM.</p>\r\n\r\n<p>Ch&iacute;nh v&igrave; vậy m&agrave; Thời Trang Dịu Hiền sẽ nơi lựa chọn ho&agrave;n hảo nhất d&agrave;nh cho phong c&aacute;ch thời trang bạn nh&eacute;!!!</p>\r\n\r\n<p>Mọi đ&oacute;ng g&oacute;p &yacute; kiến của qu&yacute; kh&aacute;ch vui l&ograve;ng li&ecirc;n hệ với ch&uacute;ng t&ocirc;i theo địa chỉ :</p>\r\n\r\n<p>Shop Thời Trang Dịu Hiền</p>\r\n', 'gioi-thieu.jpg', 'page', '', '', '2022-11-22 13:13:30', 1, '2022-11-22 13:13:30', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `vnh_product`
--

CREATE TABLE `vnh_product` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Mã sản phẩm',
  `category_id` int(10) UNSIGNED NOT NULL COMMENT 'Mã loại sản phẩm',
  `brand_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(1000) NOT NULL COMMENT 'Tên sản phẩm',
  `slug` varchar(1000) NOT NULL COMMENT 'Slug tên sản phẩm',
  `image` varchar(255) NOT NULL COMMENT 'Hình ảnh',
  `detail` mediumtext NOT NULL COMMENT 'Chi tiết',
  `qty` smallint(5) UNSIGNED NOT NULL COMMENT 'Số lượng',
  `price` float(12,2) NOT NULL COMMENT 'Giá',
  `pricesale` float(12,3) NOT NULL COMMENT 'Giá khuyến mãi',
  `metakey` varchar(255) NOT NULL COMMENT 'Từ khóa SEO',
  `metadesc` varchar(255) NOT NULL COMMENT 'Mô tả SEO',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'Ngày tạo',
  `created_by` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT 'Người tạo',
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'Ngày sửa',
  `updated_by` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT 'Người sửa',
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 2 COMMENT 'Trạng thái'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `vnh_product`
--

INSERT INTO `vnh_product` (`id`, `category_id`, `brand_id`, `name`, `slug`, `image`, `detail`, `qty`, `price`, `pricesale`, `metakey`, `metadesc`, `created_at`, `created_by`, `updated_at`, `updated_by`, `status`) VALUES
(1, 3, 1, 'ÁO LEN NAM - TOTODAY - ÁO LEN SỌC LỚN MÀU', 'ao-len-nam-totoday-ao-len-soc-lon-mau', 'ao-len-nam-totoday-ao-len-soc-lon-mau.jpg', '<p>&Aacute;O LEN NAM - TOTODAY - &Aacute;O LEN SỌC LỚN M&Agrave;U</p>\r\n', 3, 378000.00, 378000.000, 'ÁO LEN NAM - TOTODAY - ÁO LEN SỌC LỚN MÀU', 'ÁO LEN NAM - TOTODAY - ÁO LEN SỌC LỚN MÀU', '2022-11-22 11:40:37', 1, '2022-11-22 11:40:37', 1, 1),
(2, 3, 1, 'ÁO LEN NAM - TOTODAY - ÁO LEN SỌC PHỐI MÀU', 'ao-len-nam-totoday-ao-len-soc-phoi-mau', 'ao-len-nam-totoday-ao-len-soc-phoi-mau.jpg', '<h1>&Aacute;O LEN NAM - TOTODAY - &Aacute;O LEN SỌC PHỐI M&Agrave;U</h1>\r\n', 1, 378000.00, 378000.000, 'ÁO LEN NAM - TOTODAY - ÁO LEN SỌC PHỐI MÀU', 'ÁO LEN NAM - TOTODAY - ÁO LEN SỌC PHỐI MÀU', '2022-11-22 11:42:49', 1, '2022-11-22 11:42:49', 1, 1),
(3, 3, 1, 'ÁO LEN NAM - TOTODAY - ÁO LEN TRAFFIC', 'ao-len-nam-totoday-ao-len-traffic', 'ao-len-nam-totoday-ao-len-traffic.jpg', '<h1>&Aacute;O LEN NAM - TOTODAY - &Aacute;O LEN TRAFFIC</h1>\r\n', 1, 378000.00, 378000.000, 'ÁO LEN NAM - TOTODAY - ÁO LEN TRAFFIC', 'ÁO LEN NAM - TOTODAY - ÁO LEN TRAFFIC', '2022-11-22 11:48:35', 1, '2022-11-22 11:48:35', 1, 1),
(4, 3, 1, 'ÁO LEN NAM - TOTODAY - ÁO LEN NHIỀU MÀU', 'ao-len-nam-totoday-ao-len-nhieu-mau', 'ao-len-nam-totoday-ao-len-nhieu-mau.jpg', '<h1>&Aacute;O LEN NAM - TOTODAY - &Aacute;O LEN NHIỀU M&Agrave;U</h1>\r\n', 1, 10000.00, 10000.000, 'ÁO LEN NAM - TOTODAY - ÁO LEN NHIỀU MÀU', 'ÁO LEN NAM - TOTODAY - ÁO LEN NHIỀU MÀU', '2022-11-22 11:49:40', 1, '2022-11-22 11:49:40', 1, 1),
(5, 4, 1, 'ÁO SƠ MI NAM - TOTODAY - THE BASIC', 'ao-so-mi-nam-totoday-the-basic', 'ao-so-mi-nam-totoday-the-basic.jpg', '<h1>&Aacute;O SƠ MI NAM - TOTODAY - THE BASIC</h1>\r\n', 1, 10000.00, 10000.000, 'ÁO SƠ MI NAM - TOTODAY - THE BASIC', 'ÁO SƠ MI NAM - TOTODAY - THE BASIC', '2022-11-22 12:11:51', 1, '2022-11-22 12:15:16', 1, 1),
(6, 4, 1, 'ÁO SƠ MI NAM - TOTODAY - COOL SHIRT', 'ao-so-mi-nam-totoday-cool-shirt', 'ao-so-mi-nam-totoday-cool-shirt.jpg', '<h1>&Aacute;O SƠ MI NAM - TOTODAY - THE BASIC</h1>\r\n', 1, 10000.00, 10000.000, 'ÁO SƠ MI NAM - TOTODAY - COOL SHIRT', 'ÁO SƠ MI NAM - TOTODAY - COOL SHIRT', '2022-11-22 12:11:51', 1, '2022-11-22 12:14:52', 1, 1),
(7, 4, 1, 'ÁO SƠ MI NAM - TOTODAY - SIMPLE SHIRT', 'ao-so-mi-nam-totoday-simple-shirt', 'ao-so-mi-nam-totoday-simple-shirt.jpg', '<h1>&Aacute;O SƠ MI NAM - TOTODAY - SIMPLE SHIRT</h1>\r\n', 1, 10000.00, 10000.000, 'ÁO SƠ MI NAM - TOTODAY - SIMPLE SHIRT', 'ÁO SƠ MI NAM - TOTODAY - SIMPLE SHIRT', '2022-11-22 12:16:17', 1, '2022-11-22 12:16:17', 1, 1),
(8, 4, 1, 'ÁO SƠ MI NAM - TOTODAY - FORMAT', 'ao-so-mi-nam-totoday-format', 'ao-so-mi-nam-totoday-format.jpg', '<h1>&Aacute;O SƠ MI NAM - TOTODAY - FORMAT</h1>\r\n', 1, 10000.00, 10000.000, 'ÁO SƠ MI NAM - TOTODAY - FORMAT', 'ÁO SƠ MI NAM - TOTODAY - FORMAT', '2022-11-22 12:16:51', 1, '2022-11-22 12:16:51', 1, 1),
(9, 5, 1, 'SHORTS JEAN NAM - TOTODAY - 11203', 'shorts-jean-nam-totoday-11203', 'shorts-jean-nam-totoday-11203.jpg', '<h1>SHORTS JEAN NAM - TOTODAY - 11203</h1>\r\n', 1, 10000.00, 10000.000, 'SHORTS JEAN NAM - TOTODAY - 11203', 'SHORTS JEAN NAM - TOTODAY - 11203', '2022-11-22 12:17:53', 1, '2022-11-22 12:17:53', 1, 1),
(10, 5, 1, 'SHORTS JEAN NAM - TOTODAY - 11202', 'shorts-jean-nam-totoday-11202', 'shorts-jean-nam-totoday-11202.jpg', '<h1>SHORTS JEAN NAM - TOTODAY - 11202</h1>\r\n', 1, 10000.00, 10000.000, 'SHORTS JEAN NAM - TOTODAY - 11202', 'SHORTS JEAN NAM - TOTODAY - 11202', '2022-11-22 12:19:09', 1, '2022-11-22 12:19:09', 1, 1),
(11, 5, 1, 'SHORTS JEAN NAM - TOTODAY - 11201', 'shorts-jean-nam-totoday-11201', 'shorts-jean-nam-totoday-11201.jpg', '<h1>SHORTS JEAN NAM - TOTODAY - 11201</h1>\r\n', 1, 10000.00, 10000.000, 'SHORTS JEAN NAM - TOTODAY - 11201', 'SHORTS JEAN NAM - TOTODAY - 11201', '2022-11-22 12:19:43', 1, '2022-11-22 12:19:43', 1, 1),
(12, 5, 1, 'SHORTS THUN NAM - TOTODAY - FREEDOM TOTODAY', 'shorts-thun-nam-totoday-freedom-totoday', 'shorts-thun-nam-totoday-freedom-totoday.jpg', '<h1>SHORTS THUN NAM - TOTODAY - FREEDOM TOTODAY</h1>\r\n', 1, 10000.00, 10000.000, 'SHORTS THUN NAM - TOTODAY - FREEDOM TOTODAY', 'SHORTS THUN NAM - TOTODAY - FREEDOM TOTODAY', '2022-11-22 12:20:53', 1, '2022-11-22 12:20:53', 1, 1),
(13, 6, 1, 'QUẦN JEAN NAM - SLIMFIT - TOTODAY - 10206', 'quan-jean-nam-slimfit-totoday-10206', 'quan-jean-nam-slimfit-totoday-10206.jpg', '<h1>QUẦN JEAN NAM - SLIMFIT - TOTODAY - 10206</h1>\r\n', 1, 10000.00, 10000.000, 'QUẦN JEAN NAM - SLIMFIT - TOTODAY - 10206', 'QUẦN JEAN NAM - SLIMFIT - TOTODAY - 10206', '2022-11-22 12:21:58', 1, '2022-11-22 12:21:58', 1, 1),
(14, 6, 1, 'QUẦN JEAN NAM - SLIMFIT - TOTODAY - 10205', 'quan-jean-nam-slimfit-totoday-10205', 'quan-jean-nam-slimfit-totoday-10205.jpg', '<h1>QUẦN JEAN NAM - SLIMFIT - TOTODAY - 10205</h1>\r\n', 1, 10000.00, 10000.000, 'QUẦN JEAN NAM - SLIMFIT - TOTODAY - 10205', 'QUẦN JEAN NAM - SLIMFIT - TOTODAY - 10205', '2022-11-22 12:22:27', 1, '2022-11-22 12:22:27', 1, 1),
(15, 6, 1, 'QUẦN JEAN NAM - SLIMFIT - TOTODAY - 10204', 'quan-jean-nam-slimfit-totoday-10204', 'quan-jean-nam-slimfit-totoday-10204.jpg', '<h1>QUẦN JEAN NAM - SLIMFIT - TOTODAY - 10204</h1>\r\n', 1, 10000.00, 10000.000, 'QUẦN JEAN NAM - SLIMFIT - TOTODAY - 10204', 'QUẦN JEAN NAM - SLIMFIT - TOTODAY - 10204', '2022-11-22 12:22:56', 1, '2022-11-22 12:22:56', 1, 1),
(16, 6, 1, 'QUẦN JEAN NAM - SLIMFIT - TOTODAY - 10203', 'quan-jean-nam-slimfit-totoday-10203', 'quan-jean-nam-slimfit-totoday-10203.jpg', '<h1>QUẦN JEAN NAM - SLIMFIT - TOTODAY - 10203</h1>\r\n', 1, 10000.00, 10000.000, 'QUẦN JEAN NAM - SLIMFIT - TOTODAY - 10203', 'QUẦN JEAN NAM - SLIMFIT - TOTODAY - 10203', '2022-11-22 12:23:18', 1, '2022-11-22 12:23:18', 1, 1),
(17, 7, 1, 'ÁO THUN W2ATN09203FOSHT', 'ao-thun-w2atn09203fosht', 'ao-thun-w2atn09203fosht.jpg', '<h1>&Aacute;O THUN W2ATN09203FOSHT</h1>\r\n', 1, 10000.00, 10000.000, 'ÁO THUN W2ATN09203FOSHT', 'ÁO THUN W2ATN09203FOSHT', '2022-11-22 12:24:58', 1, '2022-11-22 12:24:58', 1, 1),
(18, 7, 1, 'ÁO THUN W2ATN09201FOSHT', 'ao-thun-w2atn09201fosht', 'ao-thun-w2atn09201fosht.jpg', '<h1>&Aacute;O THUN W2ATN09201FOSHT</h1>\r\n', 1, 10000.00, 10000.000, 'ÁO THUN W2ATN09201FOSHT', 'ÁO THUN W2ATN09201FOSHT', '2022-11-22 12:26:02', 1, '2022-11-22 12:26:02', 1, 1),
(19, 7, 1, 'ÁO THUN W2ATN08213BOSHT', 'ao-thun-w2atn08213bosht', 'ao-thun-w2atn08213bosht.jpg', '<h1>&Aacute;O THUN W2ATN08213BOSHT</h1>\r\n', 1, 10000.00, 10000.000, 'ÁO THUN W2ATN08213BOSHT', 'ÁO THUN W2ATN08213BOSHT', '2022-11-22 12:26:25', 1, '2022-11-22 12:26:25', 1, 1),
(20, 7, 1, 'ÁO THUN W2ATN08210BOSBA', 'ao-thun-w2atn08210bosba', 'ao-thun-w2atn08210bosba.jpg', '<h1>&Aacute;O THUN W2ATN08210BOSBA</h1>\r\n', 1, 10000.00, 10000.000, 'ÁO THUN W2ATN08210BOSBA', 'ÁO THUN W2ATN08210BOSBA', '2022-11-22 12:26:44', 1, '2022-11-22 12:26:44', 1, 1),
(21, 8, 1, 'ÁO SƠMI W2SMD05204BOSTR', 'ao-somi-w2smd05204bostr', 'ao-somi-w2smd05204bostr.jpg', '<h1>&Aacute;O SƠMI W2SMD05204BOSTR</h1>\r\n', 1, 10000.00, 10000.000, 'ÁO SƠMI W2SMD05204BOSTR', 'ÁO SƠMI W2SMD05204BOSTR', '2022-11-22 12:29:53', 1, '2022-11-22 12:29:53', 1, 1),
(22, 8, 1, 'ÁO SƠMI W2SMN05201BOSTR', 'ao-somi-w2smn05201bostr', 'ao-somi-w2smn05201bostr.jpg', '<h1>&Aacute;O SƠMI W2SMN05201BOSTR</h1>\r\n', 1, 10000.00, 10000.000, 'ÁO SƠMI W2SMN05201BOSTR', 'ÁO SƠMI W2SMN05201BOSTR', '2022-11-22 12:30:23', 1, '2022-11-22 12:30:23', 1, 1),
(23, 8, 1, 'ÁO SƠMI W2SMD05203BOSTR', 'ao-somi-w2smd05203bostr', 'ao-somi-w2smd05203bostr.jpg', '<h1>&Aacute;O SƠMI W2SMD05203BOSTR</h1>\r\n', 1, 10000.00, 10000.000, 'ÁO SƠMI W2SMD05203BOSTR', 'ÁO SƠMI W2SMD05203BOSTR', '2022-11-22 12:30:45', 1, '2022-11-22 12:30:45', 1, 1),
(24, 8, 1, 'SET SƠMI W2SET05201FOSCR', 'set-somi-w2set05201foscr', 'set-somi-w2set05201foscr.jpg', '<h1>SET SƠMI W2SET05201FOSCR</h1>\r\n', 1, 10000.00, 10000.000, 'SET SƠMI W2SET05201FOSCR', 'SET SƠMI W2SET05201FOSCR', '2022-11-22 12:31:09', 1, '2022-11-22 12:31:09', 1, 1),
(25, 10, 1, 'SHORTS JEAN NỮ WASH - TOTODAY - 10205', 'shorts-jean-nu-wash-totoday-10205', 'shorts-jean-nu-wash-totoday-10205.jpg', '<h1>SHORTS JEAN NỮ WASH - TOTODAY - 10205</h1>\r\n', 1, 10000.00, 10000.000, 'SHORTS JEAN NỮ WASH - TOTODAY - 10205', 'SHORTS JEAN NỮ WASH - TOTODAY - 10205', '2022-11-22 12:34:00', 1, '2022-11-22 12:34:00', 1, 1),
(26, 10, 1, 'SHORTS JEAN NỮ - TOTODAY - 10205', 'shorts-jean-nu-totoday-10205', 'shorts-jean-nu-totoday-10205.jpg', '<h1>SHORTS JEAN NỮ - TOTODAY - 10205</h1>\r\n', 1, 10000.00, 10000.000, 'SHORTS JEAN NỮ - TOTODAY - 10205', 'SHORTS JEAN NỮ - TOTODAY - 10205', '2022-11-22 12:34:21', 1, '2022-11-22 12:34:21', 1, 1),
(27, 10, 1, 'SHORTS JEAN NỮ - TOTODAY - 10203', 'shorts-jean-nu-totoday-10203', 'shorts-jean-nu-totoday-10203.jpg', '<h1>SHORTS JEAN NỮ - TOTODAY - 10203</h1>\r\n', 1, 10000.00, 10000.000, 'SHORTS JEAN NỮ - TOTODAY - 10203', 'SHORTS JEAN NỮ - TOTODAY - 10203', '2022-11-22 12:34:52', 1, '2022-11-22 12:34:52', 1, 1),
(28, 10, 1, 'SHORTS JEAN NỮ RÁCH - TOTODAY - 10202', 'shorts-jean-nu-rach-totoday-10202', 'shorts-jean-nu-rach-totoday-10202.jpg', '<h1>SHORTS JEAN NỮ R&Aacute;CH - TOTODAY - 10202</h1>\r\n', 1, 10000.00, 10000.000, 'SHORTS JEAN NỮ RÁCH - TOTODAY - 10202', 'SHORTS JEAN NỮ RÁCH - TOTODAY - 10202', '2022-11-22 12:35:13', 1, '2022-11-22 12:35:13', 1, 1),
(29, 11, 1, 'QUẦN JEAN W2QJN05203FBGTR', 'quan-jean-w2qjn05203fbgtr', 'quan-jean-w2qjn05203fbgtr.jpg', '<h1>QUẦN JEAN W2QJN05203FBGTR</h1>\r\n', 1, 10000.00, 10000.000, 'QUẦN JEAN W2QJN05203FBGTR', 'QUẦN JEAN W2QJN05203FBGTR', '2022-11-22 12:38:14', 1, '2022-11-22 12:38:15', 1, 1),
(30, 11, 1, 'QUẦN JEAN W2QJN05202FBGTR', 'quan-jean-w2qjn05202fbgtr', 'quan-jean-w2qjn05202fbgtr.jpg', '<h1>QUẦN JEAN W2QJN05202FBGTR</h1>\r\n', 1, 10000.00, 10000.000, 'QUẦN JEAN W2QJN05202FBGTR', 'QUẦN JEAN W2QJN05202FBGTR', '2022-11-22 12:38:39', 1, '2022-11-22 12:38:39', 1, 1),
(31, 11, 1, 'QUẦN JEAN W2QJN05201FBGTR', 'quan-jean-w2qjn05201fbgtr', 'quan-jean-w2qjn05201fbgtr.jpg', '<h1>QUẦN JEAN W2QJN05201FBGTR</h1>\r\n', 1, 10000.00, 10000.000, 'QUẦN JEAN W2QJN05201FBGTR', 'QUẦN JEAN W2QJN05201FBGTR', '2022-11-22 12:38:59', 1, '2022-11-22 12:38:59', 1, 1),
(32, 11, 1, 'QUẦN JEAN W2QJN04208FBGTR', 'quan-jean-w2qjn04208fbgtr', 'quan-jean-w2qjn04208fbgtr.jpg', '<h1>QUẦN JEAN W2QJN04208FBGTR</h1>\r\n', 1, 10000.00, 10000.000, 'QUẦN JEAN W2QJN04208FBGTR', 'QUẦN JEAN W2QJN04208FBGTR', '2022-11-22 12:39:47', 1, '2022-11-22 12:39:48', 1, 1),
(33, 12, 1, 'CHÂN VÁY JEAN NỮ - TOTODAY - 10201', 'chan-vay-jean-nu-totoday-10201', 'chan-vay-jean-nu-totoday-10201.jpg', '<h1>CH&Acirc;N V&Aacute;Y JEAN NỮ - TOTODAY - 10201</h1>\r\n', 1, 10000.00, 10000.000, 'CHÂN VÁY JEAN NỮ - TOTODAY - 10201', 'CHÂN VÁY JEAN NỮ - TOTODAY - 10201', '2022-11-22 12:41:15', 1, '2022-11-22 12:41:15', 1, 1),
(34, 12, 1, 'CHÂN VÁY W2CNV06203FOSXL', 'chan-vay-w2cnv06203fosxl', 'chan-vay-w2cnv06203fosxl.jpg', '<h1>CH&Acirc;N V&Aacute;Y W2CNV06203FOSXL</h1>\r\n', 1, 10000.00, 10000.000, 'CHÂN VÁY W2CNV06203FOSXL', 'CHÂN VÁY W2CNV06203FOSXL', '2022-11-22 12:41:36', 1, '2022-11-22 12:41:36', 1, 1),
(35, 12, 1, 'CHÂN VÁY W2CNV06202FOSXL', 'chan-vay-w2cnv06202fosxl', 'chan-vay-w2cnv06202fosxl.jpg', '<h1>CH&Acirc;N V&Aacute;Y W2CNV06202FOSXL</h1>\r\n', 1, 10000.00, 10000.000, 'CHÂN VÁY W2CNV06202FOSXL', 'CHÂN VÁY W2CNV06202FOSXL', '2022-11-22 12:41:58', 1, '2022-11-22 12:41:58', 1, 1),
(36, 12, 1, 'CHÂN VÁY W2CNV06201FOSCR', 'chan-vay-w2cnv06201foscr', 'chan-vay-w2cnv06201foscr.jpg', '<h1>CH&Acirc;N V&Aacute;Y W2CNV06201FOSCR</h1>\r\n', 1, 10000.00, 10000.000, 'CHÂN VÁY W2CNV06201FOSCR', 'CHÂN VÁY W2CNV06201FOSCR', '2022-11-22 12:42:21', 1, '2022-11-22 12:42:21', 1, 1),
(37, 11, 4, '5r6y3242342', '5r6y3242342', '5r6y3242342.jpg', '5r6y3242342', 6, 1000.00, 90.000, '5r6y3242342', '5r6y3242342', '2023-04-20 02:35:26', 1, '2023-04-20 19:49:44', 1, 0),
(38, 17, 2, 'ưeqrewwe', 'ueqrewwe', '.jpg', 'ưeqrewwe', 1, 1000.00, 100.000, 'ưeqrewwe', 'ưeqrewwe', '2023-04-20 19:41:27', 1, '2023-04-20 19:41:27', 1, 2),
(39, 17, 3, 'hhhhhhhhhhhhhhjjj', 'hhhhhhhhhhhhhhjjj', '.jpg', 'hhhhhhhhhhhhh', 1, 1000.00, 111.000, 'hhhhhhhhhhhhhhh', 'hhhhhhhhhhhh', '2023-04-20 19:52:00', 1, '2023-04-20 19:52:00', 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `vnh_slider`
--

CREATE TABLE `vnh_slider` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Mã Slider',
  `name` varchar(255) NOT NULL COMMENT 'Tên Slider',
  `link` varchar(255) NOT NULL COMMENT 'Liên kết',
  `position` varchar(100) NOT NULL DEFAULT 'position' COMMENT 'Vị trí',
  `image` varchar(100) NOT NULL COMMENT 'Hình ảnh',
  `sort_order` int(10) UNSIGNED NOT NULL COMMENT 'Thứ tự',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'Ngày tạo',
  `created_by` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT 'Người tạo',
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'Ngày sửa',
  `updated_by` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT 'Người sửa',
  `status` tinyint(3) UNSIGNED DEFAULT 2 COMMENT 'Trạng thái'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `vnh_slider`
--

INSERT INTO `vnh_slider` (`id`, `name`, `link`, `position`, `image`, `sort_order`, `created_at`, `created_by`, `updated_at`, `updated_by`, `status`) VALUES
(1, 'Khuyễn mãi hè 2020', 'http://domain.com/index.php?option=page&cat=khuyen-mai-he', 'position', 'slider_1.jpg', 4, '2023-04-20 20:28:05', 1, '2023-04-20 23:51:18', 1, 0),
(2, 'Khuyễn mãi mùa khai giảng', 'http://domain.com/index.php?option=page&cat=khuyen-mai-mua-khai-giang', 'position', 'slider_2.jpg', 3, '2023-04-20 20:19:17', 1, '2023-04-20 20:33:03', 1, 1),
(3, 'Khuyễn mãi giáng sinh', 'http://domain.com/index.php?option=page&cat=khuyen-giang-sinh', 'slideshow', 'slider_3.jpg', 3, '2020-07-01 00:12:13', 1, '2020-07-01 00:12:13', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `vnh_topic`
--

CREATE TABLE `vnh_topic` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Mã chủ đề',
  `name` varchar(255) NOT NULL COMMENT 'Tên chủ đề',
  `slug` varchar(255) NOT NULL COMMENT 'Slug tên chủ đề',
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Mã cấp cha',
  `sort_order` int(10) UNSIGNED NOT NULL DEFAULT 1 COMMENT 'Sắp xếp',
  `metakey` varchar(255) NOT NULL COMMENT 'Từ khóa SEO',
  `metadesc` varchar(255) NOT NULL COMMENT 'Mô tả SEO',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'Ngày tạo',
  `created_by` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT 'Người tạo',
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'Ngày sửa',
  `updated_by` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT 'Người sửa',
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 2 COMMENT 'Trạng thái'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `vnh_topic`
--

INSERT INTO `vnh_topic` (`id`, `name`, `slug`, `parent_id`, `sort_order`, `metakey`, `metadesc`, `created_at`, `created_by`, `updated_at`, `updated_by`, `status`) VALUES
(1, 'Tin tức', 'tin-tuc', 0, 1, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:14:39', 1, '2020-07-03 09:14:39', 1, 1),
(2, 'Dịch vụ', 'dich-vu', 0, 2, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:14:39', 1, '2020-07-03 09:14:39', 1, 1),
(3, 'ádsxcxc', 'adsxcxc', 0, 0, 'dsadasx', 'dsadsxzcxzcxc', '2022-09-01 07:44:20', 1, '2022-09-01 07:46:30', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `vnh_user`
--

CREATE TABLE `vnh_user` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Mã tài khoản',
  `name` varchar(100) NOT NULL COMMENT 'Họ và tên',
  `username` varchar(100) NOT NULL COMMENT 'Tên đăng nhâp',
  `password` varchar(64) NOT NULL COMMENT 'Mật khẩu',
  `email` varchar(100) NOT NULL COMMENT 'Email',
  `gender` tinyint(3) UNSIGNED NOT NULL COMMENT 'Giới tính',
  `phone` varchar(11) NOT NULL COMMENT 'Điện thoại',
  `image` varchar(100) NOT NULL COMMENT 'Hình',
  `roles` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Quyền truy cập',
  `address` varchar(255) DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'Ngày tạo',
  `created_by` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT 'Người tạo',
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'Ngày sửa',
  `updated_by` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT 'Người sửa',
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 2 COMMENT 'Trạng thái'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `vnh_user`
--

INSERT INTO `vnh_user` (`id`, `name`, `username`, `password`, `email`, `gender`, `phone`, `image`, `roles`, `address`, `created_at`, `created_by`, `updated_at`, `updated_by`, `status`) VALUES
(1, 'Văn Ngọc Hải', 'admin', '$2y$10$BPEz2i1OXlFHvF/LLDceBexvbeAGCRf3J6xIAmrYrDihTJO/7J8Vy', 'admin@gmail.com', 1, '0987654367', 'admin.jpg', 1, 'Hồ Chí Minh', '2020-07-01 00:16:03', 1, '2023-04-20 23:57:38', 1, 1),
(2, 'Khách hàng', 'khachhang', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'khachhang@gmail.com', 1, '0987654367', 'khachhang.jpg', 0, 'Hồ Chí Minh', '2020-07-01 00:16:03', 1, '2023-04-20 22:28:23', 1, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `vnh_brand`
--
ALTER TABLE `vnh_brand`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `vnh_category`
--
ALTER TABLE `vnh_category`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `vnh_config`
--
ALTER TABLE `vnh_config`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vnh_contact`
--
ALTER TABLE `vnh_contact`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `vnh_link`
--
ALTER TABLE `vnh_link`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vnh_menu`
--
ALTER TABLE `vnh_menu`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `vnh_order`
--
ALTER TABLE `vnh_order`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `vnh_orderdetail`
--
ALTER TABLE `vnh_orderdetail`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `vnh_post`
--
ALTER TABLE `vnh_post`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `vnh_product`
--
ALTER TABLE `vnh_product`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `vnh_slider`
--
ALTER TABLE `vnh_slider`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `vnh_topic`
--
ALTER TABLE `vnh_topic`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `vnh_user`
--
ALTER TABLE `vnh_user`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `vnh_brand`
--
ALTER TABLE `vnh_brand`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Mã Loại', AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `vnh_category`
--
ALTER TABLE `vnh_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Mã Loại', AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `vnh_config`
--
ALTER TABLE `vnh_config`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `vnh_contact`
--
ALTER TABLE `vnh_contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Mã liên hệ', AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `vnh_link`
--
ALTER TABLE `vnh_link`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `vnh_menu`
--
ALTER TABLE `vnh_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Mã Menu', AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `vnh_order`
--
ALTER TABLE `vnh_order`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Mã đơn hàng', AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `vnh_orderdetail`
--
ALTER TABLE `vnh_orderdetail`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Mã CT Đơn hàng', AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `vnh_post`
--
ALTER TABLE `vnh_post`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Mã bài viết', AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `vnh_product`
--
ALTER TABLE `vnh_product`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Mã sản phẩm', AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `vnh_slider`
--
ALTER TABLE `vnh_slider`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Mã Slider', AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `vnh_topic`
--
ALTER TABLE `vnh_topic`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Mã chủ đề', AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `vnh_user`
--
ALTER TABLE `vnh_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Mã tài khoản', AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
