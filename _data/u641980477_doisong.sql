-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1:3306
-- Thời gian đã tạo: Th10 28, 2023 lúc 07:55 AM
-- Phiên bản máy phục vụ: 10.5.19-MariaDB-cll-lve
-- Phiên bản PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `u641980477_doisong`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(120) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `parent` int(11) DEFAULT NULL,
  `title` varchar(120) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `status` varchar(11) DEFAULT NULL,
  `sort_by` varchar(10) DEFAULT NULL,
  `view` int(11) DEFAULT NULL,
  `icon` varchar(100) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `user_id`, `name`, `content`, `category_id`, `parent`, `title`, `description`, `status`, `sort_by`, `view`, `icon`, `slug`, `created_at`, `updated_at`) VALUES
(56, 1, 'Ẩm thực', NULL, NULL, 0, NULL, NULL, 'true', 'News', NULL, NULL, 'am-thuc', '2023-06-02 20:15:47', '2023-06-02 20:15:47'),
(57, 1, 'Làm đẹp', NULL, NULL, 0, NULL, NULL, 'true', 'News', NULL, NULL, 'lam-dep', '2023-06-02 20:16:07', '2023-06-02 20:16:07'),
(58, 1, 'Phong thủy', NULL, NULL, 0, NULL, NULL, 'true', 'News', NULL, NULL, 'phong-thuy', '2023-06-02 20:17:38', '2023-06-02 20:17:38'),
(59, 1, 'Du lịch', NULL, NULL, 0, NULL, NULL, 'true', 'News', NULL, NULL, 'du-lich', '2023-06-02 20:19:36', '2023-06-02 20:19:36'),
(60, 1, 'Công nghệ', NULL, NULL, 0, NULL, NULL, 'true', 'News', NULL, NULL, 'cong-nghe', '2023-06-02 20:20:46', '2023-06-02 20:20:46'),
(61, 1, 'Mua sắm', NULL, NULL, 0, NULL, NULL, 'true', 'News', NULL, NULL, 'mua-sam', '2023-06-02 20:20:57', '2023-06-02 20:20:57'),
(62, 1, 'Mẹo vặt gia đình', NULL, NULL, 0, NULL, NULL, 'true', 'News', NULL, NULL, 'meo-vat-gia-dinh', '2023-06-02 20:21:06', '2023-06-02 20:21:06');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
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
-- Cấu trúc bảng cho bảng `images`
--

CREATE TABLE `images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` int(11) DEFAULT NULL,
  `section_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `note` varchar(10) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `images`
--

INSERT INTO `images` (`id`, `post_id`, `section_id`, `name`, `img`, `note`, `content`, `created_at`, `updated_at`) VALUES
(55, 71, NULL, NULL, 'z4283501586594_4bb37ea961471f46b11f198a624e2be0.jpg', NULL, NULL, '2023-04-27 03:04:17', '2023-04-27 03:04:17'),
(56, 71, NULL, NULL, 'z4299593898201_ce0e319201ec08fd6f50e35cb2ae455e.jpg', NULL, NULL, '2023-04-27 03:04:25', '2023-04-27 03:04:25'),
(62, 73, NULL, NULL, '3.jpg', NULL, NULL, '2023-05-06 01:18:04', '2023-05-06 01:18:04'),
(63, 73, NULL, NULL, 'khu-do-thi-happy-home-ca-mau.jpg', NULL, NULL, '2023-05-06 01:18:04', '2023-05-06 01:18:04'),
(64, 73, NULL, NULL, 'khu-do-thi-happy-home-ca-mau1.jpg', NULL, NULL, '2023-05-06 01:18:04', '2023-05-06 01:18:04'),
(65, 73, NULL, NULL, 'khu-do-thi-happy-home-ca-mau2.jpg', NULL, NULL, '2023-05-06 01:18:04', '2023-05-06 01:18:04'),
(66, 73, NULL, NULL, 'khu-do-thi-happy-home-ca-mau3.jpg', NULL, NULL, '2023-05-06 01:18:04', '2023-05-06 01:18:04'),
(67, 73, NULL, NULL, 'Picture4-865x485-1.jpg', NULL, NULL, '2023-05-06 01:18:04', '2023-05-06 01:18:04'),
(68, 73, NULL, NULL, 'tien-ich-khu-do-thi-happy-home-ca-mau-1-1024x576.jpg', NULL, NULL, '2023-05-06 01:18:04', '2023-05-06 01:18:04'),
(69, NULL, 43, NULL, '21_3.jpg', NULL, NULL, '2023-05-06 01:18:04', '2023-05-06 01:18:04'),
(70, NULL, 43, NULL, '96_khu-do-thi-happy-home-ca-mau1.jpg', NULL, NULL, '2023-05-06 01:18:04', '2023-05-06 01:18:04'),
(72, NULL, 44, NULL, 'vitri.png', NULL, NULL, '2023-05-06 01:19:05', '2023-05-06 01:19:05'),
(73, NULL, 45, NULL, 'Ban-sao-cua-11.-Anh-cong-vien-2-1024x576.jpg', NULL, NULL, '2023-05-06 01:20:35', '2023-05-06 01:20:35'),
(74, NULL, 45, NULL, 'tien-ich-du-an-happy-home-ca-mau-2-1024x572.jpg', NULL, NULL, '2023-05-06 01:20:35', '2023-05-06 01:20:35'),
(75, NULL, 45, NULL, '52_tien-ich-khu-do-thi-happy-home-ca-mau-1-1024x576.jpg', NULL, NULL, '2023-05-06 01:20:35', '2023-05-06 01:20:35'),
(77, NULL, 46, NULL, '12_tien-ich-ngoai-khu-happy-home-ca-mau.jpg', NULL, NULL, '2023-05-06 01:21:10', '2023-05-06 01:21:10'),
(80, NULL, 48, NULL, 'Picture1-1-865x501-1.png', NULL, NULL, '2023-05-06 01:25:59', '2023-05-06 01:25:59'),
(81, NULL, 48, NULL, 'Picture2-865x484-1.jpg', NULL, NULL, '2023-05-06 01:25:59', '2023-05-06 01:25:59'),
(82, NULL, 48, NULL, 'Picture3-865x487-1.jpg', NULL, NULL, '2023-05-06 01:25:59', '2023-05-06 01:25:59'),
(83, NULL, 48, NULL, '88_Picture4-865x485-1.jpg', NULL, NULL, '2023-05-06 01:25:59', '2023-05-06 01:25:59'),
(84, NULL, 49, NULL, '1_khu-do-thi-happy-home-ca-mau1.jpg', NULL, NULL, '2023-05-06 01:25:59', '2023-05-06 01:25:59'),
(85, NULL, 49, NULL, '91_khu-do-thi-happy-home-ca-mau3.jpg', NULL, NULL, '2023-05-06 01:25:59', '2023-05-06 01:25:59'),
(88, NULL, 47, NULL, 'mb1.jpg', NULL, NULL, '2023-05-06 01:39:32', '2023-05-06 01:39:32'),
(89, NULL, 47, NULL, 'mbtongthe.jpg', NULL, NULL, '2023-05-06 01:39:32', '2023-05-06 01:39:32'),
(90, 110, NULL, NULL, 'Chung-cu-Grand-Mark-Nha-Trang-1024x724.jpg', NULL, NULL, '2023-05-18 19:48:25', '2023-05-18 19:48:25'),
(91, 110, NULL, NULL, 'maxresdefault-1024x576.jpg', NULL, NULL, '2023-05-18 19:48:25', '2023-05-18 19:48:25'),
(92, NULL, 50, NULL, '7ef605fc8dba5425d6965fbd4c8fbe1f-1024x726.jpg', NULL, NULL, '2023-05-18 19:52:30', '2023-05-18 19:52:30'),
(93, NULL, 51, NULL, 'vi-tri-can-ho-grand-mark-nha-trang.jpg', NULL, NULL, '2023-05-18 19:52:30', '2023-05-18 19:52:30'),
(94, NULL, 54, NULL, 'Mat-bang-tang-4-18-va-20-28-Du-an-Grand-Mark-Nha-Trang-1024x724.jpg', NULL, NULL, '2023-05-18 19:52:30', '2023-05-18 19:52:30'),
(95, NULL, 54, NULL, 'Mat-bang-tang-39-Du-an-Grand-Mark-Nha-Trang-1024x724.jpg', NULL, NULL, '2023-05-18 19:52:30', '2023-05-18 19:52:30'),
(96, NULL, 54, NULL, 'Mat-bang-tong-the-du-an-grand-mark-nha-trang-1024x576.jpg', NULL, NULL, '2023-05-18 19:52:30', '2023-05-18 19:52:30'),
(101, NULL, 53, NULL, 'grand-mark-nha-trang-5-min.jpg', NULL, NULL, '2023-05-18 19:59:37', '2023-05-18 19:59:37'),
(102, NULL, 53, NULL, 'grand-mark-nha-trang-6-min.jpg', NULL, NULL, '2023-05-18 19:59:37', '2023-05-18 19:59:37'),
(103, NULL, 53, NULL, 'grand-mark-nha-trang-7-min.jpg', NULL, NULL, '2023-05-18 19:59:37', '2023-05-18 19:59:37'),
(133, NULL, 53, NULL, 'grand-mark-nha-trang-1-min.jpg', NULL, NULL, '2023-05-19 21:00:22', '2023-05-19 21:00:22'),
(134, NULL, 53, NULL, 'grand-mark-nha-trang-2-min.jpg', NULL, NULL, '2023-05-19 21:00:22', '2023-05-19 21:00:22'),
(135, NULL, 53, NULL, 'grand-mark-nha-trang-3-min.jpg', NULL, NULL, '2023-05-19 21:00:22', '2023-05-19 21:00:22'),
(136, NULL, 53, NULL, 'grand-mark-nha-trang-4-min.jpg', NULL, NULL, '2023-05-19 21:00:22', '2023-05-19 21:00:22'),
(140, 111, NULL, NULL, '15-min-1024x576.jpg', NULL, NULL, '2023-05-19 21:13:05', '2023-05-19 21:13:05'),
(141, 111, NULL, NULL, '1645950032_23_phoi-canh-Seladon-Boutique-Hotel-Phu-Quoc-10-1024x576.jpg', NULL, NULL, '2023-05-19 21:13:05', '2023-05-19 21:13:05'),
(142, 111, NULL, NULL, 'Can-goc-lon-2048x1152.jpg', NULL, NULL, '2023-05-19 21:13:05', '2023-05-19 21:13:05'),
(143, 111, NULL, NULL, 'seladon-boutique-hotel-phu-quoc-1-1024x636.jpg', NULL, NULL, '2023-05-19 21:13:05', '2023-05-19 21:13:05'),
(144, NULL, 55, NULL, '76_Can-goc-lon-2048x1152.jpg', NULL, NULL, '2023-05-19 21:14:23', '2023-05-19 21:14:23'),
(145, NULL, 56, NULL, 'lien-ket-vi-tri-seladon-boutique.jpg', NULL, NULL, '2023-05-19 21:14:23', '2023-05-19 21:14:23'),
(146, NULL, 58, NULL, '99_15-min-1024x576.jpg', NULL, NULL, '2023-05-19 21:16:03', '2023-05-19 21:16:03'),
(147, NULL, 58, NULL, '85_1645950032_23_phoi-canh-Seladon-Boutique-Hotel-Phu-Quoc-10-1024x576.jpg', NULL, NULL, '2023-05-19 21:16:03', '2023-05-19 21:16:03'),
(148, NULL, 59, NULL, 'MAT-BANG-PHAN-KHU-2048x1776.jpg', NULL, NULL, '2023-05-19 21:16:03', '2023-05-19 21:16:03'),
(149, NULL, 60, NULL, 'PN-KING-ROOM-1024x576.jpg', NULL, NULL, '2023-05-19 21:19:32', '2023-05-19 21:19:32'),
(150, NULL, 60, NULL, 'PN-MASTER-1024x576.jpg', NULL, NULL, '2023-05-19 21:19:32', '2023-05-19 21:19:32'),
(151, NULL, 60, NULL, 'Standard-1024x768.jpg', NULL, NULL, '2023-05-19 21:19:32', '2023-05-19 21:19:32'),
(152, NULL, 60, NULL, 'Tang-2-Deluxe-room-View-1-1024x768.jpg', NULL, NULL, '2023-05-19 21:19:32', '2023-05-19 21:19:32'),
(153, NULL, 60, NULL, 'Tang-357-Standard-Room-View-2-922x1024.jpg', NULL, NULL, '2023-05-19 21:19:32', '2023-05-19 21:19:32'),
(154, NULL, 61, NULL, 'TANG-4-6-1-1024x724.png', NULL, NULL, '2023-05-19 21:21:00', '2023-05-19 21:21:00'),
(155, NULL, 61, NULL, 'TANG-4-6-1024x724.png', NULL, NULL, '2023-05-19 21:21:00', '2023-05-19 21:21:00'),
(156, NULL, 61, NULL, 'TANG-5-7-1024x724.png', NULL, NULL, '2023-05-19 21:21:00', '2023-05-19 21:21:00'),
(157, NULL, 61, NULL, 'TANG-7-1024x642.png', NULL, NULL, '2023-05-19 21:21:00', '2023-05-19 21:21:00'),
(158, 112, NULL, NULL, '2_RPRD.jpg', NULL, NULL, '2023-05-19 21:28:35', '2023-05-19 21:28:35'),
(159, 112, NULL, NULL, 'can-ho-Long-Beach-Resort-Phu-quoc.jpg', NULL, NULL, '2023-05-19 21:28:35', '2023-05-19 21:28:35'),
(160, 112, NULL, NULL, 'Long-Beach-Resort-Phu-quoc-31-1024x682.jpg', NULL, NULL, '2023-05-19 21:28:35', '2023-05-19 21:28:35'),
(161, 112, NULL, NULL, 'Phoi-Canh-Tong-The-D-1.jpg', NULL, NULL, '2023-05-19 21:28:35', '2023-05-19 21:28:35'),
(162, NULL, 62, NULL, '14_can-ho-Long-Beach-Resort-Phu-quoc.jpg', NULL, NULL, '2023-05-19 21:29:19', '2023-05-19 21:29:19'),
(163, NULL, 62, NULL, '98_Long-Beach-Resort-Phu-quoc-31-1024x682.jpg', NULL, NULL, '2023-05-19 21:29:19', '2023-05-19 21:29:19'),
(164, NULL, 62, NULL, '47_Phoi-Canh-Tong-The-D-1.jpg', NULL, NULL, '2023-05-19 21:29:19', '2023-05-19 21:29:19'),
(165, NULL, 63, NULL, '20210601174734-d1ca.jpg', NULL, NULL, '2023-05-19 21:29:19', '2023-05-19 21:29:19'),
(166, NULL, 64, NULL, 'Untitled-1-04-1024x723.jpg', NULL, NULL, '2023-05-19 21:31:00', '2023-05-19 21:31:00'),
(167, NULL, 66, NULL, '11-1024x480.jpg', NULL, NULL, '2023-05-19 21:31:00', '2023-05-19 21:31:00'),
(168, NULL, 66, NULL, '12-1024x480.jpg', NULL, NULL, '2023-05-19 21:31:00', '2023-05-19 21:31:00'),
(169, NULL, 66, NULL, '13-1024x480 (1).jpg', NULL, NULL, '2023-05-19 21:31:00', '2023-05-19 21:31:00'),
(170, NULL, 65, NULL, '13-1024x480.jpg', NULL, NULL, '2023-05-19 21:31:00', '2023-05-19 21:31:00'),
(171, NULL, 65, NULL, 'Ban_sao_cua_File_Catalogue_12.01.2021-04-min-1024x852.jpg', NULL, NULL, '2023-05-19 21:33:51', '2023-05-19 21:33:51'),
(172, NULL, 65, NULL, 'hotel-exterior-1024x736.jpg', NULL, NULL, '2023-05-19 21:33:51', '2023-05-19 21:33:51'),
(173, NULL, 65, NULL, 'images_Intercontinental_IMG-20180523-WA0007-1024x682.jpg', NULL, NULL, '2023-05-19 21:33:51', '2023-05-19 21:33:51'),
(174, NULL, 65, NULL, 'long-beach-resort-phu-quoc-3-1024x637.jpg', NULL, NULL, '2023-05-19 21:33:51', '2023-05-19 21:33:51'),
(175, NULL, 65, NULL, '30_Long-Beach-Resort-Phu-quoc-31-1024x682.jpg', NULL, NULL, '2023-05-19 21:33:51', '2023-05-19 21:33:51'),
(176, NULL, 65, NULL, '94_Phoi-Canh-Tong-The-D-1.jpg', NULL, NULL, '2023-05-19 21:33:51', '2023-05-19 21:33:51'),
(177, NULL, 62, NULL, '76_can-ho-Long-Beach-Resort-Phu-quoc.jpg', NULL, NULL, '2023-05-22 00:41:30', '2023-05-22 00:41:30'),
(178, NULL, 62, NULL, '18_hotel-exterior-1024x736.jpg', NULL, NULL, '2023-05-22 00:41:30', '2023-05-22 00:41:30'),
(179, NULL, 62, NULL, '90_images_Intercontinental_IMG-20180523-WA0007-1024x682.jpg', NULL, NULL, '2023-05-22 00:41:30', '2023-05-22 00:41:30'),
(180, NULL, 62, NULL, '90_long-beach-resort-phu-quoc-3-1024x637.jpg', NULL, NULL, '2023-05-22 00:41:30', '2023-05-22 00:41:30'),
(181, NULL, 50, NULL, '52_Ban_sao_cua_File_Catalogue_12.01.2021-04-min-1024x852.jpg', NULL, NULL, '2023-05-22 01:05:48', '2023-05-22 01:05:48'),
(184, 113, NULL, NULL, 'hinh-anh-du-an-tecco-garden-4.jpg', NULL, NULL, '2023-05-22 01:25:22', '2023-05-22 01:25:22'),
(185, 113, NULL, NULL, 'tecco-garden-01-1.jpg', NULL, NULL, '2023-05-22 01:25:31', '2023-05-22 01:25:31'),
(186, 113, NULL, NULL, 'tecco-garden-01-1-1024x682.jpg', NULL, NULL, '2023-05-22 01:25:31', '2023-05-22 01:25:31'),
(187, 113, NULL, NULL, 'tecco-garden-02-1024x639.jpg', NULL, NULL, '2023-05-22 01:25:31', '2023-05-22 01:25:31'),
(188, 113, NULL, NULL, 'tecco-garden-07-1024x682.jpg', NULL, NULL, '2023-05-22 01:25:31', '2023-05-22 01:25:31'),
(189, 113, NULL, NULL, 'tecco-garden-08-1024x666.jpg', NULL, NULL, '2023-05-22 01:25:31', '2023-05-22 01:25:31'),
(190, 113, NULL, NULL, 'tecco-garden-09-1024x682.jpg', NULL, NULL, '2023-05-22 01:25:31', '2023-05-22 01:25:31'),
(191, NULL, 68, NULL, 'hinh-anh-du-an-tecco-garden-1-1.jpg', NULL, NULL, '2023-05-22 01:25:49', '2023-05-22 01:25:49'),
(192, NULL, 68, NULL, '81_hinh-anh-du-an-tecco-garden-4.jpg', NULL, NULL, '2023-05-22 01:25:49', '2023-05-22 01:25:49'),
(193, NULL, 68, NULL, '1_tecco-garden-01-1.jpg', NULL, NULL, '2023-05-22 01:25:49', '2023-05-22 01:25:49'),
(194, NULL, 69, NULL, 'tecco-garden-04.png', NULL, NULL, '2023-05-22 19:22:21', '2023-05-22 19:22:21'),
(195, NULL, 70, NULL, 'tecco-garden-03.jpg', NULL, NULL, '2023-05-22 19:22:21', '2023-05-22 19:22:21'),
(196, NULL, 71, NULL, 'tecco-garden-06-1024x656.jpg', NULL, NULL, '2023-05-22 19:24:40', '2023-05-22 19:24:40'),
(197, NULL, 71, NULL, '89_tecco-garden-07-1024x682.jpg', NULL, NULL, '2023-05-22 19:24:40', '2023-05-22 19:24:40'),
(198, NULL, 71, NULL, '8_tecco-garden-08-1024x666.jpg', NULL, NULL, '2023-05-22 19:24:40', '2023-05-22 19:24:40'),
(199, NULL, 71, NULL, '57_tecco-garden-09-1024x682.jpg', NULL, NULL, '2023-05-22 19:24:40', '2023-05-22 19:24:40'),
(200, NULL, 72, NULL, 'Mat-bang-dien-hinh-Final-1-tecco-garden.jpg', NULL, NULL, '2023-05-22 19:24:58', '2023-05-22 19:24:58'),
(201, NULL, 72, NULL, 'Mat-bang-dien-hinh-Final-2-tecco-garden.jpg', NULL, NULL, '2023-05-22 19:24:58', '2023-05-22 19:24:58'),
(202, NULL, 72, NULL, 'mat-bang-tecco-garden-1024x600.jpg', NULL, NULL, '2023-05-22 19:24:58', '2023-05-22 19:24:58'),
(203, NULL, 73, NULL, 'mat-bang-can-01-chung-cu-tecco-garden.jpg', NULL, NULL, '2023-05-22 19:25:38', '2023-05-22 19:25:38'),
(204, NULL, 73, NULL, 'mat-bang-can-02-chung-cu-tecco-garden.jpg', NULL, NULL, '2023-05-22 19:25:38', '2023-05-22 19:25:38'),
(205, NULL, 73, NULL, 'mat-bang-can-03-chung-cu-tecco-garden (1).jpg', NULL, NULL, '2023-05-22 19:25:38', '2023-05-22 19:25:38'),
(206, NULL, 73, NULL, 'mat-bang-can-03-chung-cu-tecco-garden.jpg', NULL, NULL, '2023-05-22 19:25:38', '2023-05-22 19:25:38'),
(207, NULL, 73, NULL, 'mat-bang-can-04-chung-cu-tecco-garden.jpg', NULL, NULL, '2023-05-22 19:25:38', '2023-05-22 19:25:38'),
(208, NULL, 73, NULL, 'mat-bang-can-06-chung-cu-tecco-garden.jpg', NULL, NULL, '2023-05-22 19:25:38', '2023-05-22 19:25:38'),
(209, NULL, 73, NULL, 'mat-bang-can-07-chung-cu-tecco-garden.jpg', NULL, NULL, '2023-05-22 19:25:38', '2023-05-22 19:25:38'),
(210, NULL, 73, NULL, 'mat-bang-can-08-chung-cu-tecco-garden.jpg', NULL, NULL, '2023-05-22 19:25:38', '2023-05-22 19:25:38'),
(211, NULL, 74, NULL, 'mat-bang-can-ho-tecco-garden-01_optimized-1024x1024.png', NULL, NULL, '2023-05-22 19:26:03', '2023-05-22 19:26:03'),
(212, NULL, 74, NULL, 'mat-bang-can-ho-tecco-garden-02_optimized-1024x1024.png', NULL, NULL, '2023-05-22 19:26:03', '2023-05-22 19:26:03'),
(213, NULL, 74, NULL, 'mat-bang-can-ho-tecco-garden-03_optimized-1024x1024.png', NULL, NULL, '2023-05-22 19:26:03', '2023-05-22 19:26:03'),
(214, 114, NULL, NULL, 'DJI_0578-1-1024x682.jpg', NULL, NULL, '2023-05-24 03:30:06', '2023-05-24 03:30:06'),
(215, 114, NULL, NULL, 'LK-SHOPHOUSE-BG-V2-chuan-1-130521-1024x576.jpg', NULL, NULL, '2023-05-24 03:30:06', '2023-05-24 03:30:06'),
(216, 114, NULL, NULL, 'LK-SHOPHOUSE-BG-V2-chuan-4-130521-1024x576.jpg', NULL, NULL, '2023-05-24 03:30:06', '2023-05-24 03:30:06'),
(217, 114, NULL, NULL, 'NARRA_37-Photo-1024x576.jpg', NULL, NULL, '2023-05-24 03:30:06', '2023-05-24 03:30:06'),
(218, 114, NULL, NULL, 'quang-truong-6-1024x576.png', NULL, NULL, '2023-05-24 03:30:06', '2023-05-24 03:30:06'),
(219, 114, NULL, NULL, 'Sanh-toa-thap-B-1024x576.jpg', NULL, NULL, '2023-05-24 03:30:06', '2023-05-24 03:30:06'),
(220, 114, NULL, NULL, 'Shophouse-can-1024x576.jpg', NULL, NULL, '2023-05-24 03:30:06', '2023-05-24 03:30:06'),
(221, 114, NULL, NULL, 'TBA_5259-1024x683.jpg', NULL, NULL, '2023-05-24 03:30:06', '2023-05-24 03:30:06'),
(222, 114, NULL, NULL, 'TBA_5287-1024x683.jpg', NULL, NULL, '2023-05-24 03:30:06', '2023-05-24 03:30:06'),
(223, 114, NULL, NULL, 'TBA_5320-1024x683.jpg', NULL, NULL, '2023-05-24 03:30:06', '2023-05-24 03:30:06'),
(224, NULL, 75, NULL, '65_DJI_0578-1-1024x682.jpg', NULL, NULL, '2023-05-24 03:31:54', '2023-05-24 03:31:54'),
(225, NULL, 75, NULL, '24_LK-SHOPHOUSE-BG-V2-chuan-1-130521-1024x576.jpg', NULL, NULL, '2023-05-24 03:31:54', '2023-05-24 03:31:54'),
(226, NULL, 75, NULL, '10_LK-SHOPHOUSE-BG-V2-chuan-4-130521-1024x576.jpg', NULL, NULL, '2023-05-24 03:31:54', '2023-05-24 03:31:54'),
(227, NULL, 75, NULL, '25_NARRA_37-Photo-1024x576.jpg', NULL, NULL, '2023-05-24 03:31:54', '2023-05-24 03:31:54'),
(228, NULL, 75, NULL, '7_quang-truong-6-1024x576.png', NULL, NULL, '2023-05-24 03:31:54', '2023-05-24 03:31:54'),
(229, NULL, 76, NULL, 'map-du-an-diamond-hill-bac-giang-1024x717-1.jpeg', NULL, NULL, '2023-05-24 03:31:54', '2023-05-24 03:31:54'),
(230, NULL, 79, NULL, '46_NARRA_37-Photo-1024x576.jpg', NULL, NULL, '2023-05-24 03:31:54', '2023-05-24 03:31:54'),
(231, NULL, 79, NULL, '2_quang-truong-6-1024x576.png', NULL, NULL, '2023-05-24 03:31:54', '2023-05-24 03:31:54'),
(232, NULL, 79, NULL, '96_Sanh-toa-thap-B-1024x576.jpg', NULL, NULL, '2023-05-24 03:31:54', '2023-05-24 03:31:54'),
(233, NULL, 79, NULL, '79_Shophouse-can-1024x576.jpg', NULL, NULL, '2023-05-24 03:31:54', '2023-05-24 03:31:54'),
(234, NULL, 79, NULL, 'tien-ich-1-1024x646.jpg', NULL, NULL, '2023-05-24 03:31:54', '2023-05-24 03:31:54'),
(235, NULL, 79, NULL, 'tien-ich-3-1024x646.jpg', NULL, NULL, '2023-05-24 03:31:54', '2023-05-24 03:31:54'),
(236, NULL, 77, NULL, 'boc-mai-3D-can-ho-mau-A-CH4-3-1024x724.jpg', NULL, NULL, '2023-05-24 03:32:30', '2023-05-24 03:32:30'),
(237, NULL, 77, NULL, 'boc-mai-3D-can-ho-mau-A-CH7-3-1024x724.jpg', NULL, NULL, '2023-05-24 03:32:30', '2023-05-24 03:32:30'),
(238, NULL, 77, NULL, 'T2--1024x1024.jpg', NULL, NULL, '2023-05-24 03:32:30', '2023-05-24 03:32:30'),
(239, NULL, 80, NULL, '16_TBA_5259-1024x683.jpg', NULL, NULL, '2023-05-24 03:33:22', '2023-05-24 03:33:22'),
(240, NULL, 80, NULL, '21_TBA_5287-1024x683.jpg', NULL, NULL, '2023-05-24 03:33:22', '2023-05-24 03:33:22'),
(241, NULL, 80, NULL, '92_TBA_5320-1024x683.jpg', NULL, NULL, '2023-05-24 03:33:22', '2023-05-24 03:33:22'),
(242, NULL, 80, NULL, 'TBA_5326-a-1024x683.jpg', NULL, NULL, '2023-05-24 03:33:22', '2023-05-24 03:33:22'),
(243, NULL, 80, NULL, 'TBA_5329-a-1024x683.jpg', NULL, NULL, '2023-05-24 03:33:22', '2023-05-24 03:33:22'),
(244, 115, NULL, NULL, 'Ruby_HL_Cam004_NhinBien_171120-2048x1152.jpg', NULL, NULL, '2023-05-25 00:04:42', '2023-05-25 00:04:42'),
(245, 115, NULL, NULL, 'RubyHL_Be-Boi-Vo-Cuc_291020-1024x577.jpg', NULL, NULL, '2023-05-25 00:04:42', '2023-05-25 00:04:42'),
(246, 115, NULL, NULL, 'RubyHL_Cam05_221020-1024x576 (1).jpg', NULL, NULL, '2023-05-25 00:04:42', '2023-05-25 00:04:42'),
(248, 115, NULL, NULL, 'RubyHL_Cam13_tienich_031120-1024x576.jpg', NULL, NULL, '2023-05-25 00:04:42', '2023-05-25 00:04:42'),
(249, 115, NULL, NULL, 'RubyHL_Camtienich006_171120_fix-1024x576.jpg', NULL, NULL, '2023-05-25 00:04:42', '2023-05-25 00:04:42'),
(250, 115, NULL, NULL, 'RubyHL_Sky-bar_311020-1024x576.jpg', NULL, NULL, '2023-05-25 00:04:42', '2023-05-25 00:04:42'),
(251, NULL, 82, NULL, '68_RubyHL_Cam05_221020-1024x576.jpg', NULL, NULL, '2023-05-25 00:09:05', '2023-05-25 00:09:05'),
(252, NULL, 82, NULL, '61_RubyHL_Cam13_tienich_031120-1024x576.jpg', NULL, NULL, '2023-05-25 00:09:05', '2023-05-25 00:09:05'),
(253, NULL, 82, NULL, 'The-Ruby-Halong-1024x576.jpg', NULL, NULL, '2023-05-25 00:09:05', '2023-05-25 00:09:05'),
(254, NULL, 83, NULL, 'Map_TheRubyHalong-03-2048x1613.jpg', NULL, NULL, '2023-05-25 00:09:05', '2023-05-25 00:09:05'),
(255, NULL, 85, NULL, '11_RubyHL_Camtienich006_171120_fix-1024x576.jpg', NULL, NULL, '2023-05-25 00:09:05', '2023-05-25 00:09:05'),
(256, NULL, 85, NULL, '12_RubyHL_Sky-bar_311020-1024x576.jpg', NULL, NULL, '2023-05-25 00:09:05', '2023-05-25 00:09:05'),
(257, NULL, 85, NULL, 'RubyHL_tienichtang1_171120-1024x576.jpg', NULL, NULL, '2023-05-25 00:09:05', '2023-05-25 00:09:05'),
(258, NULL, 85, NULL, 'Studio-2-1-1024x683.jpg', NULL, NULL, '2023-05-25 00:09:05', '2023-05-25 00:09:05'),
(259, NULL, 85, NULL, 'Studio-view-them-1024x576.jpg', NULL, NULL, '2023-05-25 00:09:05', '2023-05-25 00:09:05'),
(260, NULL, 85, NULL, 'Weland_RubyHalong_cam7_171120-1024x577.jpg', NULL, NULL, '2023-05-25 00:09:05', '2023-05-25 00:09:05'),
(261, NULL, 86, NULL, 'z4012107076686_3632dad5f67d7782c65a59d3ad402b1c-1024x525.jpg', NULL, NULL, '2023-05-25 00:09:05', '2023-05-25 00:09:05'),
(262, NULL, 84, NULL, '6d0a03796bda9484cdcb-1024x1024.jpg', NULL, NULL, '2023-05-25 03:12:01', '2023-05-25 03:12:01'),
(263, NULL, 84, NULL, '0424917cf9df06815fce-1024x1024.jpg', NULL, NULL, '2023-05-25 03:12:01', '2023-05-25 03:12:01'),
(264, NULL, 84, NULL, '80_Studio-2-1-1024x683.jpg', NULL, NULL, '2023-05-25 03:12:01', '2023-05-25 03:12:01'),
(265, NULL, 84, NULL, '8_Studio-view-them-1024x576.jpg', NULL, NULL, '2023-05-25 03:12:01', '2023-05-25 03:12:01'),
(266, NULL, 87, NULL, 'Capture-1024x661.jpg', NULL, NULL, '2023-05-25 20:00:10', '2023-05-25 20:00:10'),
(267, NULL, 88, NULL, '26.-Tam-mat-cong-trinh-1024x683.jpg', NULL, NULL, '2023-05-25 20:44:03', '2023-05-25 20:44:03'),
(268, NULL, 88, NULL, '41.-Facade-1024x682.jpg', NULL, NULL, '2023-05-25 20:44:03', '2023-05-25 20:44:03'),
(269, NULL, 88, NULL, 'Ban-sao-cua-Can-quan-toa-nha-ML1-Update-Nov22-1024x683.jpg', NULL, NULL, '2023-05-25 20:44:03', '2023-05-25 20:44:03'),
(270, NULL, 88, NULL, 'Ban-sao-cua-Cong-sau-ML1-Update-Nov22-1024x683.jpg', NULL, NULL, '2023-05-25 20:44:03', '2023-05-25 20:44:03'),
(271, NULL, 88, NULL, 'Ban-sao-cua-Cong-vien-noi-khu-ML1-Update-Nov30-1024x683.jpg', NULL, NULL, '2023-05-25 20:44:03', '2023-05-25 20:44:03'),
(272, NULL, 88, NULL, 'Ban-sao-cua-DJI_0196.jpg', NULL, NULL, '2023-05-25 20:44:03', '2023-05-25 20:44:03'),
(273, NULL, 88, NULL, 'Ban-sao-cua-San-choi-tre-em-ML1-Update-Nov30-1024x682.jpg', NULL, NULL, '2023-05-25 20:44:03', '2023-05-25 20:44:03'),
(274, NULL, 89, NULL, 'z3919778613350_f7848d731f44b4725782a69ea3baae8b.jpg', NULL, NULL, '2023-05-25 20:44:21', '2023-05-25 20:44:21'),
(275, NULL, 90, NULL, 'ban-do-moonlight-1.jpg', NULL, NULL, '2023-05-25 20:44:57', '2023-05-25 20:44:57'),
(276, 116, NULL, NULL, '80_26.-Tam-mat-cong-trinh-1024x683.jpg', NULL, NULL, '2023-05-25 20:46:30', '2023-05-25 20:46:30'),
(277, 116, NULL, NULL, '94_41.-Facade-1024x682.jpg', NULL, NULL, '2023-05-25 20:46:30', '2023-05-25 20:46:30'),
(278, 116, NULL, NULL, '85_Ban-sao-cua-Can-quan-toa-nha-ML1-Update-Nov22-1024x683.jpg', NULL, NULL, '2023-05-25 20:46:30', '2023-05-25 20:46:30'),
(279, 116, NULL, NULL, '53_Ban-sao-cua-Cong-vien-noi-khu-ML1-Update-Nov30-1024x683.jpg', NULL, NULL, '2023-05-25 20:46:30', '2023-05-25 20:46:30'),
(280, 116, NULL, NULL, '8_Ban-sao-cua-DJI_0196.jpg', NULL, NULL, '2023-05-25 20:46:30', '2023-05-25 20:46:30'),
(281, 116, NULL, NULL, 'Ban-sao-cua-Gym-_-Fitness-ML1-Update-Nov22-1024x640.jpg', NULL, NULL, '2023-05-25 20:46:30', '2023-05-25 20:46:30'),
(282, 116, NULL, NULL, '78_Ban-sao-cua-San-choi-tre-em-ML1-Update-Nov30-1024x682.jpg', NULL, NULL, '2023-05-25 20:46:30', '2023-05-25 20:46:30'),
(283, 116, NULL, NULL, 'Chung-cu-Moonlight-Anlac-1024x683.jpg', NULL, NULL, '2023-05-25 20:46:30', '2023-05-25 20:46:30'),
(284, NULL, 92, NULL, 'MB-02_1.jpg', NULL, NULL, '2023-05-25 20:47:23', '2023-05-25 20:47:23'),
(285, NULL, 93, NULL, 'C01_Boc-mai (1).jpg', NULL, NULL, '2023-05-25 20:49:21', '2023-05-25 20:49:21'),
(286, NULL, 93, NULL, 'C01_Boc-mai.jpg', NULL, NULL, '2023-05-25 20:49:21', '2023-05-25 20:49:21'),
(287, NULL, 93, NULL, 'C02_Boc-mai (1).jpg', NULL, NULL, '2023-05-25 20:49:21', '2023-05-25 20:49:21'),
(288, NULL, 93, NULL, 'C02_Boc-mai.jpg', NULL, NULL, '2023-05-25 20:49:21', '2023-05-25 20:49:21'),
(289, NULL, 93, NULL, 'C03_Boc-mai (1).jpg', NULL, NULL, '2023-05-25 20:49:21', '2023-05-25 20:49:21'),
(290, NULL, 93, NULL, 'C03_Boc-mai.jpg', NULL, NULL, '2023-05-25 20:49:21', '2023-05-25 20:49:21'),
(291, NULL, 93, NULL, 'C04_Boc-mai (1).jpg', NULL, NULL, '2023-05-25 20:49:21', '2023-05-25 20:49:21'),
(292, NULL, 93, NULL, 'C04_Boc-mai.jpg', NULL, NULL, '2023-05-25 20:49:21', '2023-05-25 20:49:21'),
(293, NULL, 93, NULL, 'C05_Boc-mai.jpg', NULL, NULL, '2023-05-25 20:49:21', '2023-05-25 20:49:21'),
(294, NULL, 93, NULL, 'C06_Boc-mai.jpg', NULL, NULL, '2023-05-25 20:49:21', '2023-05-25 20:49:21'),
(295, NULL, 93, NULL, 'C07a_Boc-mai.jpg', NULL, NULL, '2023-05-25 20:49:21', '2023-05-25 20:49:21'),
(296, NULL, 93, NULL, 'C08_Boc-mai.jpg', NULL, NULL, '2023-05-25 20:49:21', '2023-05-25 20:49:21'),
(297, NULL, 94, NULL, 'Ban-sao-cua-DJI_0046.jpg', NULL, NULL, '2023-05-25 20:49:21', '2023-05-25 20:49:21'),
(298, NULL, 94, NULL, 'Ban-sao-cua-DJI_0050.jpg', NULL, NULL, '2023-05-25 20:49:21', '2023-05-25 20:49:21'),
(299, NULL, 94, NULL, 'Ban-sao-cua-DJI_0115.jpg', NULL, NULL, '2023-05-25 20:49:21', '2023-05-25 20:49:21'),
(300, NULL, 94, NULL, '96_Ban-sao-cua-DJI_0196.jpg', NULL, NULL, '2023-05-25 20:49:21', '2023-05-25 20:49:21'),
(301, NULL, 94, NULL, 'Ban-sao-cua-DJI_0226.jpg', NULL, NULL, '2023-05-25 20:49:21', '2023-05-25 20:49:21'),
(302, 117, NULL, NULL, 'de-la-sol-2br-dining-2pn-1024x680-1.jpg', NULL, NULL, '2023-05-25 21:40:17', '2023-05-25 21:40:17'),
(303, 117, NULL, NULL, 'de-la-sol-3brduo-master-1024x680-1.jpg', NULL, NULL, '2023-05-25 21:40:17', '2023-05-25 21:40:17'),
(304, 117, NULL, NULL, 'De-La-Sol-Ong-truot-tre-em-1024x569.jpg', NULL, NULL, '2023-05-25 21:40:17', '2023-05-25 21:40:17'),
(305, 117, NULL, NULL, 'De-La-Sol-Sanh-Alto-1024x576.jpg', NULL, NULL, '2023-05-25 21:40:17', '2023-05-25 21:40:17'),
(306, 117, NULL, NULL, 'De-La-Sol-Toan-canh-du-an-ban-ngay-2048x1152.jpg', NULL, NULL, '2023-05-25 21:40:17', '2023-05-25 21:40:17'),
(307, 117, NULL, NULL, 'De-La-Sol-Vong-thu-gian-1024x512.jpg', NULL, NULL, '2023-05-25 21:40:17', '2023-05-25 21:40:17'),
(308, 117, NULL, NULL, 'De-La-Sol-Vuon-thuong-tra-1024x454.jpg', NULL, NULL, '2023-05-25 21:40:17', '2023-05-25 21:40:17'),
(309, NULL, 96, NULL, 'De-La-Sol-Toan-canh-du-an-ban-dem-2048x931.jpg', NULL, NULL, '2023-05-25 21:41:08', '2023-05-25 21:41:08'),
(310, NULL, 97, NULL, 'De-La-Sol-Ban-do-du-an.jpg', NULL, NULL, '2023-05-25 21:43:27', '2023-05-25 21:43:27'),
(311, NULL, 99, NULL, 'De-La-Sol-Ho-boi-tran-50m-1024x512.jpg', NULL, NULL, '2023-05-25 21:43:27', '2023-05-25 21:43:27'),
(312, NULL, 99, NULL, 'De-La-Sol-Ho-boi-yen-tiec-1024x512.jpg', NULL, NULL, '2023-05-25 21:43:27', '2023-05-25 21:43:27'),
(313, NULL, 99, NULL, 'De-La-Sol-Khu-vui-choi-tre-em-1024x615.jpg', NULL, NULL, '2023-05-25 21:43:27', '2023-05-25 21:43:27'),
(314, NULL, 99, NULL, 'De-La-Sol-Nha-bat-nhun-1024x569.jpg', NULL, NULL, '2023-05-25 21:43:27', '2023-05-25 21:43:27'),
(315, NULL, 99, NULL, '61_De-La-Sol-Ong-truot-tre-em-1024x569.jpg', NULL, NULL, '2023-05-25 21:43:27', '2023-05-25 21:43:27'),
(316, NULL, 99, NULL, '80_De-La-Sol-Sanh-Alto-1024x576.jpg', NULL, NULL, '2023-05-25 21:43:27', '2023-05-25 21:43:27'),
(317, NULL, 99, NULL, 'De-La-Sol-Sanh-don-Cadenza-1024x512.jpg', NULL, NULL, '2023-05-25 21:43:27', '2023-05-25 21:43:27'),
(318, NULL, 99, NULL, 'De-La-Sol-Sanh-tiec-1024x569.jpg', NULL, NULL, '2023-05-25 21:43:27', '2023-05-25 21:43:27'),
(319, NULL, 99, NULL, 'De-La-Sol-San-truot-Skateboard-1024x512.jpg', NULL, NULL, '2023-05-25 21:43:27', '2023-05-25 21:43:27'),
(320, NULL, 99, NULL, '90_De-La-Sol-Toan-canh-du-an-ban-dem-2048x931.jpg', NULL, NULL, '2023-05-25 21:43:27', '2023-05-25 21:43:27'),
(321, NULL, 99, NULL, '39_De-La-Sol-Vong-thu-gian-1024x512.jpg', NULL, NULL, '2023-05-25 21:43:27', '2023-05-25 21:43:27'),
(322, NULL, 99, NULL, '68_De-La-Sol-Vuon-thuong-tra-1024x454.jpg', NULL, NULL, '2023-05-25 21:43:28', '2023-05-25 21:43:28'),
(323, NULL, 100, NULL, '2pn-2-chia-khoa-delasol-1024x539.jpg', NULL, NULL, '2023-05-25 21:43:28', '2023-05-25 21:43:28'),
(324, NULL, 100, NULL, '3pn-3-chia-khoa-1024x543.jpg', NULL, NULL, '2023-05-25 21:43:28', '2023-05-25 21:43:28'),
(325, NULL, 101, NULL, 'mb-can-De-La-Sol-1-1024x540.jpg', NULL, NULL, '2023-05-25 21:44:19', '2023-05-25 21:44:19'),
(326, NULL, 101, NULL, 'mb-can-De-La-Sol-2-1024x544.jpg', NULL, NULL, '2023-05-25 21:44:19', '2023-05-25 21:44:19'),
(327, NULL, 101, NULL, 'mb-De-La_Sol-1-1024x540.jpg', NULL, NULL, '2023-05-25 21:44:19', '2023-05-25 21:44:19'),
(328, NULL, 101, NULL, 'mb-De-La-Sol-2-1024x543.jpg', NULL, NULL, '2023-05-25 21:44:19', '2023-05-25 21:44:19'),
(329, NULL, 102, NULL, '94_de-la-sol-2br-dining-2pn-1024x680-1.jpg', NULL, NULL, '2023-05-25 21:44:19', '2023-05-25 21:44:19'),
(330, NULL, 102, NULL, 'de-la-sol-2br-master-br-2pn-1024x680-1.jpg', NULL, NULL, '2023-05-25 21:44:19', '2023-05-25 21:44:19'),
(331, NULL, 102, NULL, 'de-la-sol-3brduo-living3-1024x680-1.jpg', NULL, NULL, '2023-05-25 21:44:19', '2023-05-25 21:44:19'),
(332, NULL, 102, NULL, '60_de-la-sol-3brduo-master-1024x680-1.jpg', NULL, NULL, '2023-05-25 21:44:19', '2023-05-25 21:44:19'),
(333, NULL, 102, NULL, 'de-la-sol-3brduo-studio-1024x680-1.jpg', NULL, NULL, '2023-05-25 21:44:19', '2023-05-25 21:44:19'),
(334, NULL, 102, NULL, 'delasol-kit-chen-2pn-1024x680-1.jpg', NULL, NULL, '2023-05-25 21:44:19', '2023-05-25 21:44:19'),
(335, NULL, 103, NULL, '0-02-06-32fbdf91535346810352e737d07c7363dd3969d355533382e515e68012da7372_1c6dad74e76578-1-1.jpg', NULL, NULL, '2023-05-25 21:44:19', '2023-05-25 21:44:19'),
(336, NULL, 103, NULL, '0-02-06-308cd5fafd36c4a56ccf9232c1109a1434ae845f0d1a16797db39fa0c7efbae8_1c6dad74e75417-1-1.jpg', NULL, NULL, '2023-05-25 21:44:19', '2023-05-25 21:44:19'),
(337, 118, NULL, NULL, 'chung-cu-ecolife-capitol.png', NULL, NULL, '2023-05-25 23:56:11', '2023-05-25 23:56:11'),
(338, 118, NULL, NULL, 'Ecolife.jpg', NULL, NULL, '2023-05-25 23:56:11', '2023-05-25 23:56:11'),
(339, 118, NULL, NULL, 'thiet-ke-can-ho-mau-ecolife-capitol-1-1024x635.jpg', NULL, NULL, '2023-05-25 23:56:11', '2023-05-25 23:56:11'),
(340, 118, NULL, NULL, 'tien-ich-ecolife-capitol-1.jpg', NULL, NULL, '2023-05-25 23:56:11', '2023-05-25 23:56:11'),
(341, 118, NULL, NULL, 'tien-ich-ecolife-capitol-2.jpg', NULL, NULL, '2023-05-25 23:56:11', '2023-05-25 23:56:11'),
(342, 118, NULL, NULL, 'tien-ich-ecolife-capitol-3.jpg', NULL, NULL, '2023-05-25 23:56:11', '2023-05-25 23:56:11'),
(343, NULL, 104, NULL, 'phoi-canh-du-an-chung-cu-ecolife-capitol.jpg', NULL, NULL, '2023-05-25 23:57:18', '2023-05-25 23:57:18'),
(344, NULL, 105, NULL, 'vi-tri-ecolife-capitol-2.jpg', NULL, NULL, '2023-05-25 23:59:30', '2023-05-25 23:59:30'),
(345, NULL, 107, NULL, '97_thiet-ke-can-ho-mau-ecolife-capitol-1-1024x635.jpg', NULL, NULL, '2023-05-25 23:59:30', '2023-05-25 23:59:30'),
(346, NULL, 107, NULL, '47_tien-ich-ecolife-capitol-1.jpg', NULL, NULL, '2023-05-25 23:59:30', '2023-05-25 23:59:30'),
(347, NULL, 107, NULL, '46_tien-ich-ecolife-capitol-2.jpg', NULL, NULL, '2023-05-25 23:59:30', '2023-05-25 23:59:30'),
(348, NULL, 107, NULL, '30_tien-ich-ecolife-capitol-3.jpg', NULL, NULL, '2023-05-25 23:59:30', '2023-05-25 23:59:30'),
(349, NULL, 108, NULL, 'mat-bang-toa-a2-ecolife-capitol-tang-32-34-1024x725.jpg', NULL, NULL, '2023-05-25 23:59:30', '2023-05-25 23:59:30'),
(350, NULL, 108, NULL, 'Mat-bang-tong-the-tang-6-31-ecolife-Capitol-1024x682.jpg', NULL, NULL, '2023-05-25 23:59:30', '2023-05-25 23:59:30'),
(351, NULL, 109, NULL, 'Ecolife-Capitol-457m21-724x1024-1.jpg', NULL, NULL, '2023-05-26 00:03:27', '2023-05-26 00:03:27'),
(352, NULL, 109, NULL, 'Ecolife-Capitol-759m21-724x1024-1.jpg', NULL, NULL, '2023-05-26 00:03:27', '2023-05-26 00:03:27'),
(353, NULL, 109, NULL, 'Ecolife-Capitol-953m21-724x1024-1.jpg', NULL, NULL, '2023-05-26 00:03:27', '2023-05-26 00:03:27'),
(354, NULL, 109, NULL, 'Ecolife-Capitol-1031m21-724x1024-1.jpg', NULL, NULL, '2023-05-26 00:03:27', '2023-05-26 00:03:27'),
(355, NULL, 109, NULL, 'Ecolife-Capitol-1118m21-724x1024-1.jpg', NULL, NULL, '2023-05-26 00:03:27', '2023-05-26 00:03:27'),
(356, NULL, 109, NULL, 'Ecolife-Capitol-1521m21-724x1024-1.jpg', NULL, NULL, '2023-05-26 00:03:27', '2023-05-26 00:03:27'),
(357, NULL, 109, NULL, 'Ecolife-Capitol-1527m2-724x1024-1.jpg', NULL, NULL, '2023-05-26 00:03:27', '2023-05-26 00:03:27'),
(358, NULL, 110, NULL, 'can-ho2.jpg', NULL, NULL, '2023-05-26 00:03:27', '2023-05-26 00:03:27'),
(359, 119, NULL, NULL, 'Anh-Shophouse_1-1024x576.jpg', NULL, NULL, '2023-05-26 01:29:22', '2023-05-26 01:29:22'),
(360, 119, NULL, NULL, 'Anh-Shophouse_2-1024x512.jpg', NULL, NULL, '2023-05-26 01:29:22', '2023-05-26 01:29:22'),
(361, 119, NULL, NULL, 'Anh-Shophouse_3-1024x512.jpg', NULL, NULL, '2023-05-26 01:29:22', '2023-05-26 01:29:22'),
(362, 119, NULL, NULL, 'Anh-tong-the_2-1024x512.jpg', NULL, NULL, '2023-05-26 01:29:22', '2023-05-26 01:29:22'),
(363, 119, NULL, NULL, 'Cong-vien_2.jpg', NULL, NULL, '2023-05-26 01:29:22', '2023-05-26 01:29:22'),
(364, 119, NULL, NULL, 'Cong-vien_3.jpg', NULL, NULL, '2023-05-26 01:29:22', '2023-05-26 01:29:22'),
(365, 119, NULL, NULL, 'Legacy-Garden.jpg', NULL, NULL, '2023-05-26 01:29:22', '2023-05-26 01:29:22'),
(366, NULL, 112, NULL, '99_Anh-tong-the_2-1024x512.jpg', NULL, NULL, '2023-05-26 01:30:40', '2023-05-26 01:30:40'),
(367, NULL, 112, NULL, '27_Cong-vien_2.jpg', NULL, NULL, '2023-05-26 01:30:40', '2023-05-26 01:30:40'),
(368, NULL, 112, NULL, '29_Cong-vien_3.jpg', NULL, NULL, '2023-05-26 01:30:40', '2023-05-26 01:30:40'),
(369, NULL, 112, NULL, '16_Legacy-Garden.jpg', NULL, NULL, '2023-05-26 01:30:40', '2023-05-26 01:30:40'),
(370, NULL, 113, NULL, 'Vi-tri-Legacy-Garden.jpg', NULL, NULL, '2023-05-26 01:30:40', '2023-05-26 01:30:40'),
(371, NULL, 114, NULL, 'lien-ket-vung.png', NULL, NULL, '2023-05-26 01:31:33', '2023-05-26 01:31:33'),
(372, NULL, 115, NULL, '2_Anh-Shophouse_1-1024x576.jpg', NULL, NULL, '2023-05-26 01:31:33', '2023-05-26 01:31:33'),
(373, NULL, 115, NULL, 'Phong-khach_2.jpg', NULL, NULL, '2023-05-26 01:31:33', '2023-05-26 01:31:33'),
(374, NULL, 115, NULL, 'Phong-kham-da-khoa.jpg', NULL, NULL, '2023-05-26 01:31:33', '2023-05-26 01:31:33'),
(375, NULL, 115, NULL, 'San-choi-tre-em-va-Vuon-canh-quan_1.jpg', NULL, NULL, '2023-05-26 01:31:33', '2023-05-26 01:31:33'),
(376, NULL, 115, NULL, 'San-choi-tre-em-va-Vuon-canh-quan_2.jpg', NULL, NULL, '2023-05-26 01:31:33', '2023-05-26 01:31:33'),
(377, NULL, 116, NULL, 'MB.png', NULL, NULL, '2023-05-26 01:31:33', '2023-05-26 01:31:33'),
(378, NULL, 117, NULL, 'shophouse-2.jpg', NULL, NULL, '2023-05-26 01:32:48', '2023-05-26 01:32:48'),
(379, NULL, 117, NULL, 'shophouse-3.jpg', NULL, NULL, '2023-05-26 01:32:48', '2023-05-26 01:32:48'),
(380, NULL, 117, NULL, 'shophouse-5.jpg', NULL, NULL, '2023-05-26 01:32:48', '2023-05-26 01:32:48'),
(381, NULL, 117, NULL, 'shophouse-8.jpg', NULL, NULL, '2023-05-26 01:32:48', '2023-05-26 01:32:48'),
(382, NULL, 117, NULL, 'shophouse-9.jpg', NULL, NULL, '2023-05-26 01:32:48', '2023-05-26 01:32:48'),
(383, NULL, 118, NULL, 'Phong-lam-viec.jpg', NULL, NULL, '2023-05-26 01:32:48', '2023-05-26 01:32:48'),
(384, NULL, 118, NULL, 'Phong-ngu_2.jpg', NULL, NULL, '2023-05-26 01:32:48', '2023-05-26 01:32:48'),
(385, NULL, 118, NULL, 'Phong-ngu_3.jpg', NULL, NULL, '2023-05-26 01:32:48', '2023-05-26 01:32:48'),
(386, NULL, 118, NULL, 'Phong-ngu_4.jpg', NULL, NULL, '2023-05-26 01:32:48', '2023-05-26 01:32:48'),
(387, 120, NULL, NULL, 'tien-ich-phong-tap-gym_Tecco-Elite-City.jpg', NULL, NULL, '2023-05-26 02:08:39', '2023-05-26 02:08:39'),
(388, 120, NULL, NULL, 'tien-ich-vuon-duong-sinh_Tecco-Elite_City.jpg', NULL, NULL, '2023-05-26 02:08:39', '2023-05-26 02:08:39'),
(389, 120, NULL, NULL, 'tien-ich-vuon-tinh-tam_Tecco-Elite-City.jpg', NULL, NULL, '2023-05-26 02:08:39', '2023-05-26 02:08:39'),
(390, 120, NULL, NULL, 'tong-the_tecco-elite-1024x576.jpg', NULL, NULL, '2023-05-26 02:08:39', '2023-05-26 02:08:39'),
(391, NULL, 120, NULL, 'tecco-elite-1024x576.jpg', NULL, NULL, '2023-05-26 02:08:39', '2023-05-26 02:08:39'),
(392, NULL, 121, NULL, 'ban-do-tecco-elite-city-2.png', NULL, NULL, '2023-05-26 02:08:39', '2023-05-26 02:08:39'),
(393, NULL, 122, NULL, 'ban-do-tecco-elite-city-2048x1448.jpg', NULL, NULL, '2023-05-26 02:08:39', '2023-05-26 02:08:39'),
(394, NULL, 123, NULL, 'tien-ich-be-boi_Tecco-Elite-City.jpg', NULL, NULL, '2023-05-26 02:09:40', '2023-05-26 02:09:40'),
(395, NULL, 123, NULL, 'tien-ich-ghe-nghi_Tecco-Elite-City.jpg', NULL, NULL, '2023-05-26 02:09:40', '2023-05-26 02:09:40'),
(396, NULL, 123, NULL, '77_tien-ich-phong-tap-gym_Tecco-Elite-City.jpg', NULL, NULL, '2023-05-26 02:09:40', '2023-05-26 02:09:40'),
(397, NULL, 123, NULL, '78_tien-ich-vuon-duong-sinh_Tecco-Elite_City.jpg', NULL, NULL, '2023-05-26 02:09:40', '2023-05-26 02:09:40'),
(398, NULL, 123, NULL, '59_tien-ich-vuon-tinh-tam_Tecco-Elite-City.jpg', NULL, NULL, '2023-05-26 02:09:40', '2023-05-26 02:09:40'),
(399, NULL, 124, NULL, 'mat-bang-dien-hinh-Tecco-Elite-City-2-1024x724.jpg', NULL, NULL, '2023-05-26 02:09:40', '2023-05-26 02:09:40'),
(400, NULL, 125, NULL, 'thiet-ke-tecco-elite-city-1 (1).jpg', NULL, NULL, '2023-05-26 02:10:41', '2023-05-26 02:10:41'),
(401, NULL, 125, NULL, 'thiet-ke-tecco-elite-city-1.jpg', NULL, NULL, '2023-05-26 02:10:41', '2023-05-26 02:10:41'),
(402, NULL, 125, NULL, 'thiet-ke-tecco-elite-city-2.jpg', NULL, NULL, '2023-05-26 02:10:41', '2023-05-26 02:10:41'),
(403, NULL, 125, NULL, 'thiet-ke-tecco-elite-city-4.jpg', NULL, NULL, '2023-05-26 02:10:41', '2023-05-26 02:10:41'),
(404, 121, NULL, NULL, 'lotus-star-1024x576.jpg', NULL, NULL, '2023-05-31 23:45:18', '2023-05-31 23:45:18'),
(405, 121, NULL, NULL, 'san-tap_lotus-star.jpg', NULL, NULL, '2023-05-31 23:45:18', '2023-05-31 23:45:18'),
(406, 121, NULL, NULL, 'thiet-ke-lotus-star-1.jpg', NULL, NULL, '2023-05-31 23:45:18', '2023-05-31 23:45:18'),
(407, 121, NULL, NULL, 'thiet-ke-lotus-star-2.jpg', NULL, NULL, '2023-05-31 23:45:18', '2023-05-31 23:45:18'),
(408, 121, NULL, NULL, 'thiet-ke-lotus-star-3.jpg', NULL, NULL, '2023-05-31 23:45:18', '2023-05-31 23:45:18'),
(409, 121, NULL, NULL, 'thiet-ke-lotus-star-4.jpg', NULL, NULL, '2023-05-31 23:45:18', '2023-05-31 23:45:18'),
(410, 121, NULL, NULL, 'thiet-ke-lotus-star-6.png', NULL, NULL, '2023-05-31 23:45:18', '2023-05-31 23:45:18'),
(411, NULL, 127, NULL, 'Lotus-star-tong-quan.jpg', NULL, NULL, '2023-05-31 23:45:18', '2023-05-31 23:45:18'),
(412, NULL, 128, NULL, 'ban-do_lotus-star.png', NULL, NULL, '2023-05-31 23:45:18', '2023-05-31 23:45:18'),
(413, NULL, 130, NULL, '75_lotus-star-1024x576.jpg', NULL, NULL, '2023-05-31 23:45:18', '2023-05-31 23:45:18'),
(414, NULL, 130, NULL, 'sanh-anh-sang_lotus-star.jpg', NULL, NULL, '2023-05-31 23:45:18', '2023-05-31 23:45:18'),
(415, NULL, 130, NULL, '94_san-tap_lotus-star.jpg', NULL, NULL, '2023-05-31 23:45:18', '2023-05-31 23:45:18'),
(416, NULL, 130, NULL, 'truc-anh-sao-lotus-star.jpg', NULL, NULL, '2023-05-31 23:45:18', '2023-05-31 23:45:18'),
(417, NULL, 131, NULL, 'lotus-star-mat-bang-tong-the-1024x570.jpg', NULL, NULL, '2023-05-31 23:45:18', '2023-05-31 23:45:18'),
(418, NULL, 132, NULL, '43_thiet-ke-lotus-star-1.jpg', NULL, NULL, '2023-05-31 23:46:11', '2023-05-31 23:46:11'),
(419, NULL, 132, NULL, '41_thiet-ke-lotus-star-2.jpg', NULL, NULL, '2023-05-31 23:46:11', '2023-05-31 23:46:11'),
(420, NULL, 132, NULL, '17_thiet-ke-lotus-star-3.jpg', NULL, NULL, '2023-05-31 23:46:11', '2023-05-31 23:46:11'),
(421, NULL, 132, NULL, '48_thiet-ke-lotus-star-4.jpg', NULL, NULL, '2023-05-31 23:46:11', '2023-05-31 23:46:11'),
(422, 122, NULL, NULL, 'be-boi-du-an-green-pearl-1.jpg', NULL, NULL, '2023-05-31 23:52:02', '2023-05-31 23:52:02'),
(423, 122, NULL, NULL, 'be-boi-green-pearl-2.jpg', NULL, NULL, '2023-05-31 23:52:02', '2023-05-31 23:52:02'),
(424, 122, NULL, NULL, 'green-pearl-bac-ninh_1.jpg', NULL, NULL, '2023-05-31 23:52:02', '2023-05-31 23:52:02'),
(425, 122, NULL, NULL, 'phong-bep-1.jpg', NULL, NULL, '2023-05-31 23:52:02', '2023-05-31 23:52:02'),
(426, 122, NULL, NULL, 'phong-bep-1-1.jpg', NULL, NULL, '2023-05-31 23:52:02', '2023-05-31 23:52:02'),
(427, 122, NULL, NULL, 'phong-ngu-5.jpg', NULL, NULL, '2023-05-31 23:52:02', '2023-05-31 23:52:02'),
(428, 122, NULL, NULL, 'sanh-thuong-mai-green-pearl.jpg', NULL, NULL, '2023-05-31 23:52:02', '2023-05-31 23:52:02'),
(429, NULL, 134, NULL, '27_be-boi-du-an-green-pearl-1.jpg', NULL, NULL, '2023-05-31 23:53:52', '2023-05-31 23:53:52'),
(430, NULL, 134, NULL, '50_be-boi-green-pearl-2.jpg', NULL, NULL, '2023-05-31 23:53:52', '2023-05-31 23:53:52'),
(431, NULL, 134, NULL, 'green-pearl-bacninh.jpg', NULL, NULL, '2023-05-31 23:53:52', '2023-05-31 23:53:52'),
(432, NULL, 134, NULL, '84_green-pearl-bac-ninh_1.jpg', NULL, NULL, '2023-05-31 23:53:52', '2023-05-31 23:53:52'),
(433, NULL, 135, NULL, 'ban-do-chung-cu-green-pearl.jpg', NULL, NULL, '2023-05-31 23:53:52', '2023-05-31 23:53:52'),
(434, NULL, 136, NULL, 'lien-ket-vung-green-pearl.png', NULL, NULL, '2023-05-31 23:53:52', '2023-05-31 23:53:52'),
(435, NULL, 137, NULL, '51_be-boi-du-an-green-pearl-1.jpg', NULL, NULL, '2023-05-31 23:53:52', '2023-05-31 23:53:52'),
(436, NULL, 137, NULL, 'phong-ngu-4.jpg', NULL, NULL, '2023-05-31 23:53:52', '2023-05-31 23:53:52'),
(437, NULL, 137, NULL, '22_phong-ngu-5.jpg', NULL, NULL, '2023-05-31 23:53:52', '2023-05-31 23:53:52'),
(438, NULL, 137, NULL, '62_sanh-thuong-mai-green-pearl.jpg', NULL, NULL, '2023-05-31 23:53:52', '2023-05-31 23:53:52'),
(439, NULL, 138, NULL, 'mat-bang-Green-Pearl-1024x865.png', NULL, NULL, '2023-05-31 23:53:52', '2023-05-31 23:53:52'),
(440, NULL, 139, NULL, '66_phong-bep-1.jpg', NULL, NULL, '2023-05-31 23:54:39', '2023-05-31 23:54:39'),
(441, NULL, 139, NULL, '2_phong-bep-1-1.jpg', NULL, NULL, '2023-05-31 23:54:39', '2023-05-31 23:54:39'),
(442, NULL, 139, NULL, 'phong-khach-1-1.jpg', NULL, NULL, '2023-05-31 23:54:39', '2023-05-31 23:54:39'),
(443, NULL, 139, NULL, 'phong-ngu.jpg', NULL, NULL, '2023-05-31 23:54:39', '2023-05-31 23:54:39'),
(444, NULL, 139, NULL, '48_phong-ngu-4.jpg', NULL, NULL, '2023-05-31 23:54:39', '2023-05-31 23:54:39'),
(445, NULL, 139, NULL, '26_phong-ngu-5.jpg', NULL, NULL, '2023-05-31 23:54:39', '2023-05-31 23:54:39'),
(446, 123, NULL, NULL, 'be-boi-hinode-city.jpg', NULL, NULL, '2023-06-02 00:59:12', '2023-06-02 00:59:12'),
(447, 123, NULL, NULL, 'can-ho-hinode-city-1.jpg', NULL, NULL, '2023-06-02 00:59:12', '2023-06-02 00:59:12'),
(448, 123, NULL, NULL, 'khu-vui-choi-hinode-city.jpg', NULL, NULL, '2023-06-02 00:59:12', '2023-06-02 00:59:12'),
(449, 123, NULL, NULL, 'phoi-canh-be-boi-hinode-city.jpg', NULL, NULL, '2023-06-02 00:59:12', '2023-06-02 00:59:12'),
(450, 123, NULL, NULL, 'phoi-canh-noi-khu-hinode-city.jpg', NULL, NULL, '2023-06-02 00:59:12', '2023-06-02 00:59:12'),
(451, 123, NULL, NULL, 'phoi-canh-tong-the-hinode-city.jpg', NULL, NULL, '2023-06-02 00:59:12', '2023-06-02 00:59:12'),
(452, 123, NULL, NULL, 'tien-ich-chung-cu-hinode-city-2.jpg', NULL, NULL, '2023-06-02 00:59:12', '2023-06-02 00:59:12'),
(453, 123, NULL, NULL, 'tien-ich-noi-khu-hinode-city.jpg', NULL, NULL, '2023-06-02 00:59:12', '2023-06-02 00:59:12'),
(454, 123, NULL, NULL, 'view-du-an-hinode-city.jpg', NULL, NULL, '2023-06-02 00:59:12', '2023-06-02 00:59:12'),
(455, NULL, 141, NULL, 'phoi-canh-dem-hinode-city.jpg', NULL, NULL, '2023-06-02 01:01:45', '2023-06-02 01:01:45'),
(456, NULL, 141, NULL, '2_phoi-canh-tong-the-hinode-city.jpg', NULL, NULL, '2023-06-02 01:01:45', '2023-06-02 01:01:45'),
(457, NULL, 141, NULL, '2_view-du-an-hinode-city.jpg', NULL, NULL, '2023-06-02 01:01:45', '2023-06-02 01:01:45'),
(458, NULL, 142, NULL, 'vi-tri-du-an-hinode-city.jpg', NULL, NULL, '2023-06-02 01:01:45', '2023-06-02 01:01:45'),
(459, NULL, 144, NULL, '12_be-boi-hinode-city.jpg', NULL, NULL, '2023-06-02 01:01:45', '2023-06-02 01:01:45'),
(460, NULL, 144, NULL, '51_can-ho-hinode-city-1.jpg', NULL, NULL, '2023-06-02 01:01:45', '2023-06-02 01:01:45'),
(461, NULL, 144, NULL, '83_khu-vui-choi-hinode-city.jpg', NULL, NULL, '2023-06-02 01:01:45', '2023-06-02 01:01:45'),
(462, NULL, 144, NULL, '97_phoi-canh-be-boi-hinode-city.jpg', NULL, NULL, '2023-06-02 01:01:45', '2023-06-02 01:01:45'),
(463, NULL, 144, NULL, '74_tien-ich-chung-cu-hinode-city-2.jpg', NULL, NULL, '2023-06-02 01:01:45', '2023-06-02 01:01:45'),
(464, NULL, 144, NULL, 'tien-ich-chung-cu-hinode-city-3.jpg', NULL, NULL, '2023-06-02 01:01:45', '2023-06-02 01:01:45'),
(465, NULL, 144, NULL, '33_tien-ich-noi-khu-hinode-city.jpg', NULL, NULL, '2023-06-02 01:01:46', '2023-06-02 01:01:46'),
(466, NULL, 145, NULL, 'mb-tang5-23-asahi-hinode-city.jpg', NULL, NULL, '2023-06-02 01:01:46', '2023-06-02 01:01:46'),
(467, NULL, 145, NULL, 'mb-tang24-asahi-hinode-city.jpg', NULL, NULL, '2023-06-02 01:01:46', '2023-06-02 01:01:46'),
(468, NULL, 145, NULL, 'mb-tang25-asahi-hinode-city.jpg', NULL, NULL, '2023-06-02 01:01:46', '2023-06-02 01:01:46'),
(469, NULL, 145, NULL, 'mb-tang26-asahi-hinode-city.jpg', NULL, NULL, '2023-06-02 01:01:46', '2023-06-02 01:01:46'),
(470, NULL, 146, NULL, 'can-ho-hinode-city-3.jpg', NULL, NULL, '2023-06-02 01:02:33', '2023-06-02 01:02:33'),
(471, NULL, 146, NULL, 'can-ho-hinode-city-4.jpg', NULL, NULL, '2023-06-02 01:02:33', '2023-06-02 01:02:33'),
(472, NULL, 146, NULL, 'can-ho-hinode-city-5.jpg', NULL, NULL, '2023-06-02 01:02:33', '2023-06-02 01:02:33'),
(473, NULL, 146, NULL, 'can-ho-hinode-city-8.jpg', NULL, NULL, '2023-06-02 01:02:33', '2023-06-02 01:02:33'),
(474, NULL, 146, NULL, 'can-ho-hinode-city-9.jpg', NULL, NULL, '2023-06-02 01:02:33', '2023-06-02 01:02:33'),
(475, NULL, 146, NULL, 'can-ho-hinode-city-13.jpg', NULL, NULL, '2023-06-02 01:02:33', '2023-06-02 01:02:33'),
(476, NULL, 147, NULL, 'mat-bang-tien-ich-hinode-city-min-1024x729.png', NULL, NULL, '2023-06-02 01:02:33', '2023-06-02 01:02:33'),
(477, 124, NULL, NULL, 'filmore-gioi-thieu-1024x568.jpg', NULL, NULL, '2023-06-02 01:10:40', '2023-06-02 01:10:40'),
(478, 124, NULL, NULL, 'Phoi-canh-The-Filmore-02-1024x576.jpeg', NULL, NULL, '2023-06-02 01:10:41', '2023-06-02 01:10:41'),
(479, 124, NULL, NULL, 'The-Filmore-Da-Nang.jpg', NULL, NULL, '2023-06-02 01:10:41', '2023-06-02 01:10:41'),
(480, 124, NULL, NULL, 'The-Filmore-Da-Nang-Mat-truoc-du-an.jpg', NULL, NULL, '2023-06-02 01:10:41', '2023-06-02 01:10:41'),
(481, 124, NULL, NULL, 'tien-ich-du-an-can-ho-chung-cu-the-filmore-da-nang-duong-bach-dang-1-1024x588.jpg', NULL, NULL, '2023-06-02 01:10:41', '2023-06-02 01:10:41'),
(482, 124, NULL, NULL, 'tien-ich-du-an-can-ho-chung-cu-the-filmore-da-nang-duong-bach-dang-2-e1638427691705-1024x576.jpg', NULL, NULL, '2023-06-02 01:10:41', '2023-06-02 01:10:41'),
(483, NULL, 148, NULL, '26_filmore-gioi-thieu-1024x568.jpg', NULL, NULL, '2023-06-02 01:20:42', '2023-06-02 01:20:42'),
(484, NULL, 148, NULL, 'the-filmore-vi-tri.jpg', NULL, NULL, '2023-06-02 01:20:42', '2023-06-02 01:20:42'),
(485, NULL, 148, NULL, '43_tien-ich-du-an-can-ho-chung-cu-the-filmore-da-nang-duong-bach-dang-1-1024x588.jpg', NULL, NULL, '2023-06-02 01:20:42', '2023-06-02 01:20:42'),
(486, NULL, 148, NULL, '7_tien-ich-du-an-can-ho-chung-cu-the-filmore-da-nang-duong-bach-dang-2-e1638427691705-1024x576.jpg', NULL, NULL, '2023-06-02 01:20:42', '2023-06-02 01:20:42'),
(487, NULL, 148, NULL, 'tien-ich-du-an-can-ho-chung-cu-the-filmore-da-nang-duong-bach-dang-3-e1638427657678-1024x594.jpg', NULL, NULL, '2023-06-02 01:20:42', '2023-06-02 01:20:42'),
(488, NULL, 148, NULL, 'tien-ich-du-an-can-ho-chung-cu-the-filmore-da-nang-duong-bach-dang-8-1024x576.jpg', NULL, NULL, '2023-06-02 01:20:42', '2023-06-02 01:20:42'),
(489, NULL, 149, NULL, '67_the-filmore-vi-tri.jpg', NULL, NULL, '2023-06-02 01:20:42', '2023-06-02 01:20:42'),
(490, NULL, 150, NULL, 'The-Filmore-Da-Nang-Vi-tri-du-an.jpg', NULL, NULL, '2023-06-02 01:20:42', '2023-06-02 01:20:42'),
(491, NULL, 151, NULL, 'mat-bang-du-an-can-ho-chung-cu-the-filmore-da-nang-duong-bach-dang-2-1024x386.jpg', NULL, NULL, '2023-06-02 01:20:42', '2023-06-02 01:20:42'),
(492, NULL, 151, NULL, 'mat-bang-du-an-can-ho-chung-cu-the-filmore-da-nang-duong-bach-dang-3-1-821x1024.jpg', NULL, NULL, '2023-06-02 01:20:42', '2023-06-02 01:20:42'),
(493, NULL, 151, NULL, 'mat-bang-du-an-can-ho-chung-cu-the-filmore-da-nang-duong-bach-dang-3-1024x525.jpg', NULL, NULL, '2023-06-02 01:20:42', '2023-06-02 01:20:42'),
(494, NULL, 151, NULL, '74_The-Filmore-Da-Nang-Mat-truoc-du-an.jpg', NULL, NULL, '2023-06-02 01:20:42', '2023-06-02 01:20:42'),
(495, NULL, 151, NULL, '41_The-Filmore-Da-Nang-Vi-tri-du-an.jpg', NULL, NULL, '2023-06-02 01:20:42', '2023-06-02 01:20:42'),
(496, NULL, 151, NULL, '72_the-filmore-vi-tri.jpg', NULL, NULL, '2023-06-02 01:20:42', '2023-06-02 01:20:42'),
(497, NULL, 152, NULL, '98_mat-bang-du-an-can-ho-chung-cu-the-filmore-da-nang-duong-bach-dang-2-1024x386.jpg', NULL, NULL, '2023-06-02 01:21:06', '2023-06-02 01:21:06'),
(498, NULL, 152, NULL, '58_mat-bang-du-an-can-ho-chung-cu-the-filmore-da-nang-duong-bach-dang-3-1024x525.jpg', NULL, NULL, '2023-06-02 01:21:06', '2023-06-02 01:21:06'),
(499, NULL, 152, NULL, 'mat-bang-du-an-can-ho-chung-cu-the-filmore-da-nang-duong-bach-dang-4-1024x526.jpg', NULL, NULL, '2023-06-02 01:21:06', '2023-06-02 01:21:06'),
(500, NULL, 152, NULL, 'mat-bang-du-an-can-ho-chung-cu-the-filmore-da-nang-duong-bach-dang-5-1024x360.jpg', NULL, NULL, '2023-06-02 01:21:06', '2023-06-02 01:21:06'),
(501, NULL, 153, NULL, 'mat-bang-du-an-can-ho-chung-cu-the-filmore-da-nang-duong-bach-dang-1-1-822x1024.jpg', NULL, NULL, '2023-06-02 01:22:18', '2023-06-02 01:22:18'),
(502, NULL, 153, NULL, 'mat-bang-du-an-can-ho-chung-cu-the-filmore-da-nang-duong-bach-dang-2-1-808x1024.jpg', NULL, NULL, '2023-06-02 01:22:18', '2023-06-02 01:22:18'),
(503, NULL, 153, NULL, '7_mat-bang-du-an-can-ho-chung-cu-the-filmore-da-nang-duong-bach-dang-3-1-821x1024.jpg', NULL, NULL, '2023-06-02 01:22:18', '2023-06-02 01:22:18'),
(504, NULL, 153, NULL, 'mat-bang-du-an-can-ho-chung-cu-the-filmore-da-nang-duong-bach-dang-4-1-820x1024.jpg', NULL, NULL, '2023-06-02 01:22:18', '2023-06-02 01:22:18'),
(505, NULL, 153, NULL, 'mat-bang-du-an-can-ho-chung-cu-the-filmore-da-nang-duong-bach-dang-5-1-813x1024.jpg', NULL, NULL, '2023-06-02 01:22:18', '2023-06-02 01:22:18'),
(506, NULL, 153, NULL, 'mat-bang-du-an-can-ho-chung-cu-the-filmore-da-nang-duong-bach-dang-6-1-819x1024.jpg', NULL, NULL, '2023-06-02 01:22:18', '2023-06-02 01:22:18'),
(507, NULL, 153, NULL, 'mat-bang-du-an-can-ho-chung-cu-the-filmore-da-nang-duong-bach-dang-7-1-816x1024.jpg', NULL, NULL, '2023-06-02 01:22:18', '2023-06-02 01:22:18'),
(508, NULL, 154, NULL, 'tien-ich-du-an-can-ho-chung-cu-the-filmore-da-nang-duong-bach-dang-4-e1638427535600-1024x593.jpg', NULL, NULL, '2023-06-02 01:22:18', '2023-06-02 01:22:18'),
(509, NULL, 154, NULL, 'tien-ich-du-an-can-ho-chung-cu-the-filmore-da-nang-duong-bach-dang-6-e1638427771168-1024x576.jpg', NULL, NULL, '2023-06-02 01:22:18', '2023-06-02 01:22:18'),
(510, NULL, 154, NULL, 'tien-ich-du-an-can-ho-chung-cu-the-filmore-da-nang-duong-bach-dang-7-e1638427827431-1024x576.jpg', NULL, NULL, '2023-06-02 01:22:18', '2023-06-02 01:22:18'),
(511, NULL, 154, NULL, 'tien-ich-du-an-can-ho-chung-cu-the-filmore-da-nang-duong-bach-dang-10-e1638427936153-1024x588.jpg', NULL, NULL, '2023-06-02 01:22:18', '2023-06-02 01:22:18'),
(512, NULL, 154, NULL, 'tien-ich-du-an-can-ho-chung-cu-the-filmore-da-nang-duong-bach-dang-11-e1638427887424-1024x599.jpg', NULL, NULL, '2023-06-02 01:22:18', '2023-06-02 01:22:18'),
(513, NULL, 155, NULL, 'tien-do-xay-dung-du-an-the-filmore-da-nang-1-1024x682.jpg', NULL, NULL, '2023-06-02 01:22:18', '2023-06-02 01:22:18'),
(514, NULL, 156, NULL, 'nha-pho-lien-ke-festival-3-compress-1024x583.jpg', NULL, NULL, '2023-06-02 01:47:37', '2023-06-02 01:47:37'),
(515, NULL, 156, NULL, 'nha-pho-thuong-mai-2-compress.jpg', NULL, NULL, '2023-06-02 01:47:37', '2023-06-02 01:47:37'),
(516, NULL, 156, NULL, 'nha-pho-thuong-mai-festival-2-compress-1024x512.jpg', NULL, NULL, '2023-06-02 01:47:37', '2023-06-02 01:47:37'),
(517, NULL, 156, NULL, 'song-lap-festival-2-compress.jpg', NULL, NULL, '2023-06-02 01:47:37', '2023-06-02 01:47:37'),
(518, NULL, 156, NULL, 'z2126743904011_2a06bc01dbf146bbb4fb8e8e2f515e3f-1024x579.jpg', NULL, NULL, '2023-06-02 01:47:37', '2023-06-02 01:47:37'),
(519, NULL, 156, NULL, 'z2126743922541_657ddb0346a5efd18ab9b2b507ba76f4-1024x576.jpg', NULL, NULL, '2023-06-02 01:47:37', '2023-06-02 01:47:37'),
(520, NULL, 157, NULL, '7d05b4f290a142678557469f919fb260-0004-2048x1152.jpg', NULL, NULL, '2023-06-02 01:47:37', '2023-06-02 01:47:37'),
(521, NULL, 160, NULL, 'Untitled-6-06-1024x577.jpg', NULL, NULL, '2023-06-02 01:47:37', '2023-06-02 01:47:37'),
(522, NULL, 160, NULL, 'Untitled-6-11-1024x577.jpg', NULL, NULL, '2023-06-02 01:47:37', '2023-06-02 01:47:37');
INSERT INTO `images` (`id`, `post_id`, `section_id`, `name`, `img`, `note`, `content`, `created_at`, `updated_at`) VALUES
(523, NULL, 160, NULL, 'Untitled-6-17-1024x576.jpg', NULL, NULL, '2023-06-02 01:47:37', '2023-06-02 01:47:37'),
(524, NULL, 160, NULL, '36_z2126743904011_2a06bc01dbf146bbb4fb8e8e2f515e3f-1024x579.jpg', NULL, NULL, '2023-06-02 01:47:37', '2023-06-02 01:47:37'),
(525, NULL, 160, NULL, '1_z2126743922541_657ddb0346a5efd18ab9b2b507ba76f4-1024x576.jpg', NULL, NULL, '2023-06-02 01:47:37', '2023-06-02 01:47:37'),
(526, NULL, 160, NULL, 'z2126743970612_735133ff56e71212dcc8051cae9ec496-1024x766.jpg', NULL, NULL, '2023-06-02 01:47:37', '2023-06-02 01:47:37'),
(527, NULL, 161, NULL, 'biet-thu-5-tang-1-compress.jpg', NULL, NULL, '2023-06-02 01:48:55', '2023-06-02 01:48:55'),
(528, NULL, 161, NULL, 'biet-thu-don-lap-pga-compress-1024x607.jpg', NULL, NULL, '2023-06-02 01:48:55', '2023-06-02 01:48:55'),
(529, NULL, 161, NULL, 'biet-thu-song-lap-2-compress-1024x577.jpg', NULL, NULL, '2023-06-02 01:48:55', '2023-06-02 01:48:55'),
(530, NULL, 161, NULL, '93_nha-pho-lien-ke-festival-3-compress-1024x583.jpg', NULL, NULL, '2023-06-02 01:48:55', '2023-06-02 01:48:55'),
(531, NULL, 161, NULL, '62_nha-pho-thuong-mai-2-compress.jpg', NULL, NULL, '2023-06-02 01:48:55', '2023-06-02 01:48:55'),
(532, NULL, 161, NULL, '90_nha-pho-thuong-mai-festival-2-compress-1024x512.jpg', NULL, NULL, '2023-06-02 01:48:55', '2023-06-02 01:48:55'),
(533, NULL, 161, NULL, '33_song-lap-festival-2-compress.jpg', NULL, NULL, '2023-06-02 01:48:55', '2023-06-02 01:48:55'),
(534, NULL, 162, NULL, 'Untitled-6-05-1024x576.jpg', NULL, NULL, '2023-06-02 01:48:55', '2023-06-02 01:48:55'),
(535, 125, NULL, NULL, '3-2.jpg', NULL, NULL, '2023-06-02 01:49:11', '2023-06-02 01:49:11'),
(536, 125, NULL, NULL, '93_7d05b4f290a142678557469f919fb260-0004-2048x1152.jpg', NULL, NULL, '2023-06-02 01:49:11', '2023-06-02 01:49:11'),
(537, 125, NULL, NULL, '7d05b4f290a142678557469f919fb260-0010-1024x576.jpg', NULL, NULL, '2023-06-02 01:49:11', '2023-06-02 01:49:11'),
(538, 125, NULL, NULL, '20_biet-thu-5-tang-1-compress.jpg', NULL, NULL, '2023-06-02 01:49:11', '2023-06-02 01:49:11'),
(539, 125, NULL, NULL, '14_biet-thu-don-lap-pga-compress-1024x607.jpg', NULL, NULL, '2023-06-02 01:49:11', '2023-06-02 01:49:11'),
(540, 125, NULL, NULL, '97_biet-thu-song-lap-2-compress-1024x577.jpg', NULL, NULL, '2023-06-02 01:49:11', '2023-06-02 01:49:11'),
(541, 125, NULL, NULL, '9_nha-pho-thuong-mai-festival-2-compress-1024x512.jpg', NULL, NULL, '2023-06-02 01:49:11', '2023-06-02 01:49:11'),
(542, 125, NULL, NULL, '40_z2126743904011_2a06bc01dbf146bbb4fb8e8e2f515e3f-1024x579.jpg', NULL, NULL, '2023-06-02 01:49:11', '2023-06-02 01:49:11');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(7, '2023_04_13_035737_create_images_table', 2),
(10, '2023_04_13_084106_create_provinces_table', 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `name` varchar(120) DEFAULT NULL,
  `detail` text DEFAULT NULL,
  `content` text DEFAULT NULL,
  `status` varchar(11) DEFAULT NULL,
  `sort_by` varchar(10) DEFAULT NULL,
  `slug` varchar(255) NOT NULL,
  `img` varchar(255) DEFAULT NULL,
  `title` varchar(120) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `category_id`, `name`, `detail`, `content`, `status`, `sort_by`, `slug`, `img`, `title`, `description`, `created_at`, `updated_at`) VALUES
(129, 1, 56, 'Tổng hợp các cách kho thịt lơn ngon nhất', 'Khi nhắc đến ẩm thực Việt Nam, một hình ảnh không thể thiếu trong bữa cơm gia đình chính là món thịt lợn kho. Với hương vị đậm đà, thịt mềm mịn và nước dùng thấm đều vào từng sợi thịt, kho thịt lợn đã trở', '<p>Khi nhắc đến ẩm thực Việt Nam, một h&igrave;nh ảnh kh&ocirc;ng thể thiếu trong bữa cơm gia đ&igrave;nh ch&iacute;nh l&agrave; m&oacute;n thịt lợn kho. Với hương vị đậm đ&agrave;, thịt mềm mịn v&agrave; nước d&ugrave;ng thấm đều v&agrave;o từng sợi thịt, kho thịt lợn đ&atilde; trở th&agrave;nh một biểu tượng ẩm thực đặc trưng, mang trong m&igrave;nh hương vị truyền thống v&agrave; sự ấm &aacute;p của qu&ecirc; hương. Trong b&agrave;i viết n&agrave;y, ch&uacute;ng ta sẽ kh&aacute;m ph&aacute; những c&aacute;ch kho thịt lợn ngon tuyệt, từ những c&ocirc;ng thức truyền thống đến những biến tấu s&aacute;ng tạo, gi&uacute;p bạn tạo ra những m&oacute;n ăn thịnh soạn v&agrave; đậm chất Việt Nam. H&atilde;y c&ugrave;ng nhau kh&aacute;m ph&aacute; những b&iacute; quyết v&agrave; bước nấu nướng để tận hưởng một m&oacute;n kho thịt lợn độc đ&aacute;o v&agrave; th&uacute; vị</p>\r\n\r\n<p><em>Dưới đ&acirc;y l&agrave; một số chi tiết hơn về c&aacute;c c&aacute;ch kho thịt lợn phổ biến:</em></p>\r\n\r\n<p><strong>Kho thịt lợn truyền thống:</strong></p>\r\n\r\n<ul>\r\n	<li>Chuẩn bị: Thịt lợn cắt th&agrave;nh miếng vừa, h&agrave;nh, tỏi, gừng băm nhỏ, nước mắm, muối, đường, ti&ecirc;u, x&igrave; dầu.</li>\r\n	<li>Thực hiện: Phi h&agrave;nh, tỏi, gừng trong một ch&uacute;t x&igrave; dầu cho thơm. Tiếp theo, cho thịt lợn v&agrave;o nồi v&agrave; đảo đều với h&agrave;nh, tỏi, gừng đ&atilde; phi. Sau đ&oacute;, th&ecirc;m nước mắm, muối, đường, ti&ecirc;u v&agrave; khoảng 1-2 ch&eacute;n nước. Đậy nắp nồi, đun lửa nhỏ v&agrave; ninh khoảng 1-2 giờ cho thịt mềm v&agrave; nước d&ugrave;ng đậm đ&agrave;.</li>\r\n</ul>\r\n\r\n<p><strong>Kho thịt lợn với mắm t&ocirc;m:</strong></p>\r\n\r\n<ul>\r\n	<li>Chuẩn bị: Thịt lợn cắt miếng vừa, mắm t&ocirc;m, h&agrave;nh, tỏi băm nhỏ, đường, muối, ti&ecirc;u, nước mắm.</li>\r\n	<li>Thực hiện: Phi h&agrave;nh, tỏi trong dầu n&oacute;ng cho thơm. Tiếp theo, cho thịt lợn v&agrave;o nồi v&agrave; đảo đều với h&agrave;nh, tỏi đ&atilde; phi. Sau đ&oacute;, th&ecirc;m mắm t&ocirc;m, gia vị như đường, muối, ti&ecirc;u v&agrave; một &iacute;t nước mắm. Kho thịt trong khoảng 1-2 giờ cho thịt mềm v&agrave; gia vị thấm đều.</li>\r\n</ul>\r\n\r\n<p><strong>Kho thịt lợn caramen:</strong></p>\r\n\r\n<ul>\r\n	<li>Chuẩn bị: Thịt lợn cắt th&agrave;nh miếng vừa, đường caramen, h&agrave;nh, tỏi băm nhỏ, nước mắm, muối, ti&ecirc;u, dầu ăn.</li>\r\n	<li>Thực hiện: Phi h&agrave;nh, tỏi trong dầu n&oacute;ng cho thơm. Tiếp theo, cho thịt lợn v&agrave;o nồi v&agrave; đảo đều với h&agrave;nh, tỏi đ&atilde; phi. Sau đ&oacute;, th&ecirc;m đường caramen, gia vị như nước mắm, muối, ti&ecirc;u v&agrave; một &iacute;t nước. Kho thịt trong khoảng 1-2 giờ cho thịt mềm v&agrave; nước sốt đậm đ&agrave; từ đường caramen.</li>\r\n</ul>\r\n\r\n<p><strong>Kho thịt lợn h&agrave;nh l&aacute;:</strong></p>\r\n\r\n<ul>\r\n	<li>Chuẩn bị: Thịt lợn cắt th&agrave;nh miếng vừa, h&agrave;nh l&aacute; cắt kh&uacute;c, h&agrave;nh, tỏi băm nhỏ, nước mắm, muối, đường, ti&ecirc;u, dầu ăn.</li>\r\n	<li>Thực hiện: Phi h&agrave;nh, tỏi trong dầu n&oacute;ng cho thơm. Tiếp theo, cho thịt lợn v&agrave;o nồi v&agrave; đảo đều với h&agrave;nh, tỏi đ&atilde; phi. Sau đ&oacute;, th&ecirc;m h&agrave;nh l&aacute;, gia vị như nước mắm, muối, đường, ti&ecirc;u v&agrave; một &iacute;t nước. Kho thịt trong khoảng 1-2 giờ cho thịt mềm v&agrave; h&agrave;nh l&aacute; thơm.</li>\r\n</ul>\r\n\r\n<p><strong>Kho thịt lợn nước dừa:</strong></p>\r\n\r\n<ul>\r\n	<li>Chuẩn bị: Thịt lợn cắt th&agrave;nh miếng vừa, nước dừa tươi, h&agrave;nh, tỏi băm nhỏ, gia vị như muối, đường, ti&ecirc;u.</li>\r\n	<li>Thực hiện: Phi h&agrave;nh, tỏi trong dầu n&oacute;ng cho thơm. Tiếp theo, cho thịt lợn v&agrave;o nồi v&agrave; đảo đều với h&agrave;nh, tỏi đ&atilde; phi. Sau đ&oacute;, th&ecirc;m nước dừa v&agrave; gia vị như muối, đường, ti&ecirc;u. Kho thịt trong khoảng 1-2 giờ cho thịt mềm v&agrave; nước dừa s&aacute;nh.</li>\r\n</ul>\r\n\r\n<p><em>Nhớ lưu &yacute; thời gian nấu nước d&ugrave;ng v&agrave; lửa khi kho thịt lợn để đảm bảo thịt ch&iacute;n mềm v&agrave; nước d&ugrave;ng đậm đ&agrave;. C&aacute;ch nấu c&oacute; thể được điều chỉnh theo khẩu vị c&aacute; nh&acirc;n v&agrave; th&ecirc;m c&aacute;c gia vị kh&aacute;c để tạo ra những m&oacute;n kho thịt lợn đặc biệt.</em></p>', 'true', 'News', 'tong-hop-cac-cach-kho-thit-lon-ngon-nhat', 'Thitkhotieu-1200x676.jpg', 'Hương Vị Đậm Đà Của Các Cách Kho Thịt Lợn: Hướng Dẫn Chi Tiết và Công Thức', 'Hương Vị Đậm Đà Của Các Cách Kho Thịt Lợn: Hướng Dẫn Chi Tiết và Công Thức', '2023-06-05 07:36:25', '2023-06-05 13:58:07'),
(130, 1, 56, 'Hướng dẫn làm những món ăn bún ngon tại nhà', 'Bún là một loại mì truyền thống trong ẩm thực Việt Nam, có rất nhiều món ăn độc đáo và hấp dẫn được chế biến từ bún. Dưới đây là hướng', '<p>B&uacute;n l&agrave; một loại m&igrave; truyền thống trong ẩm thực Việt Nam, c&oacute; rất nhiều m&oacute;n ăn độc đ&aacute;o v&agrave; hấp dẫn được chế biến từ b&uacute;n. Dưới đ&acirc;y l&agrave; hướng dẫn c&aacute;ch l&agrave;m những m&oacute;n ăn b&uacute;n ngon v&agrave; dễ d&agrave;ng tại nh&agrave;. H&atilde;y c&ugrave;ng kh&aacute;m ph&aacute; v&agrave; thử l&agrave;m những m&oacute;n ăn n&agrave;y để thưởng thức c&ugrave;ng gia đ&igrave;nh v&agrave; bạn b&egrave;</p>\r\n\r\n<p><strong>B&uacute;n chả:</strong></p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Nguy&ecirc;n liệu:</p>\r\n\r\n	<ul>\r\n		<li>300g thịt lợn thăn mỡ</li>\r\n		<li>300g thịt lợn vai</li>\r\n		<li>200g b&uacute;n tươi</li>\r\n		<li>Rau sống (rau sống, rau thơm)</li>\r\n		<li>2-3 quả chanh</li>\r\n		<li>2-3 muỗng canh nước mắm</li>\r\n		<li>2-3 muỗng canh đường</li>\r\n		<li>2-3 muỗng canh mắm t&ocirc;m</li>\r\n		<li>H&agrave;nh, tỏi, ớt</li>\r\n	</ul>\r\n	</li>\r\n	<li>\r\n	<p>C&aacute;ch l&agrave;m:</p>\r\n\r\n	<ol>\r\n		<li>Th&aacute;i thịt lợn th&agrave;nh từng miếng vừa. Rưới nước mắm, đường v&agrave; mắm t&ocirc;m l&ecirc;n thịt, trộn đều v&agrave; ướp thịt trong &iacute;t nhất 30 ph&uacute;t.</li>\r\n		<li>Nướng thịt tr&ecirc;n bếp than hoặc trong l&ograve; nướng cho đến khi thịt ch&iacute;n v&agrave; c&oacute; m&agrave;u v&agrave;ng đẹp.</li>\r\n		<li>Chuẩn bị nước mắm chua ngọt bằng c&aacute;ch pha nước mắm, đường, nước chanh v&agrave; nước ấm với tỷ lệ th&iacute;ch hợp.</li>\r\n		<li>Đun s&ocirc;i nước lẩu v&agrave; cho b&uacute;n v&agrave;o nấu ch&iacute;n. Sau đ&oacute;, gắp b&uacute;n ra, rửa qua nước lạnh v&agrave; để r&aacute;o.</li>\r\n		<li>Chuẩn bị đĩa b&uacute;n tươi, rau sống v&agrave; h&agrave;nh, tỏi, ớt đ&atilde; th&aacute;i nhỏ. Tr&igrave;nh b&agrave;y thịt nướng l&ecirc;n đĩa v&agrave; trang tr&iacute; với h&agrave;nh, tỏi, ớt.</li>\r\n		<li>Khi ăn, lấy từng mẩu b&uacute;n, rau sống v&agrave; thịt nướng ng&acirc;m v&agrave;o nước mắm chua ngọt trước khi thưởng thức.</li>\r\n	</ol>\r\n	</li>\r\n</ul>\r\n\r\n<p><strong>2. B&uacute;n ri&ecirc;u cua:</strong></p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Nguy&ecirc;n liệu:</p>\r\n\r\n	<ul>\r\n		<li>200g cua đồng</li>\r\n		<li>200g thịt băm</li>\r\n		<li>2 quả c&agrave; chua</li>\r\n		<li>1 b&oacute; rau đay</li>\r\n		<li>1 củ h&agrave;nh t&iacute;m</li>\r\n		<li>1 củ h&agrave;nh trắng</li>\r\n		<li>1 quả trứng</li>\r\n		<li>B&uacute;n tươi</li>\r\n		<li>Mắm t&ocirc;m, nước mắm, đường, dầu h&agrave;o, ti&ecirc;u, h&agrave;nh, tỏi</li>\r\n	</ul>\r\n	</li>\r\n	<li>\r\n	<p>C&aacute;ch l&agrave;m:</p>\r\n\r\n	<ol>\r\n		<li>T&aacute;ch thịt cua ra v&agrave; nghiền nhuyễn. Kết hợp thịt băm với thịt cua nghiền, trộn đều.</li>\r\n		<li>X&agrave;o h&agrave;nh t&iacute;m v&agrave; h&agrave;nh trắng với &iacute;t dầu ăn, sau đ&oacute; th&ecirc;m c&agrave; chua xay nhuyễn v&agrave;o x&agrave;o th&ecirc;m.</li>\r\n		<li>Đun s&ocirc;i nước d&ugrave;ng từ xương heo, sau đ&oacute; th&ecirc;m c&agrave; chua đ&atilde; x&agrave;o v&agrave;o. N&ecirc;m nếm với mắm t&ocirc;m, nước mắm, đường, dầu h&agrave;o, ti&ecirc;u, h&agrave;nh, tỏi theo khẩu vị.</li>\r\n		<li>Khi nước d&ugrave;ng đ&atilde; s&ocirc;i, h&ograve;a đều trứng v&agrave; thịt cua v&agrave;o nước d&ugrave;ng, khuấy đều để h&igrave;nh th&agrave;nh th&agrave;nh phẩm ri&ecirc;u cua.</li>\r\n		<li>Luộc b&uacute;n tươi v&agrave; rửa qua nước lạnh. Chuẩn bị rau đay, h&agrave;nh t&iacute;m, h&agrave;nh l&aacute; v&agrave; tỏi phi.</li>\r\n		<li>Tr&igrave;nh b&agrave;y b&uacute;n, rau sống, h&agrave;nh, tỏi phi v&agrave; ri&ecirc;u cua trong t&ocirc;. Khi ăn, trộn đều c&aacute;c th&agrave;nh phần v&agrave; thưởng thức.</li>\r\n	</ol>\r\n	</li>\r\n</ul>\r\n\r\n<p><strong>3. B&uacute;n thịt nướng:</strong></p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Nguy&ecirc;n liệu:</p>\r\n\r\n	<ul>\r\n		<li>300g thịt heo hoặc thịt g&agrave;</li>\r\n		<li>200g b&uacute;n tươi</li>\r\n		<li>Rau sống (rau sống, dưa leo)</li>\r\n		<li>2-3 quả chanh</li>\r\n		<li>2-3 muỗng canh nước mắm</li>\r\n		<li>2-3 muỗng canh đường</li>\r\n		<li>2-3 muỗng canh mắm t&ocirc;m</li>\r\n		<li>H&agrave;nh, tỏi, ớt</li>\r\n	</ul>\r\n	</li>\r\n	<li>\r\n	<p>C&aacute;ch l&agrave;m:</p>\r\n\r\n	<ol>\r\n		<li>Th&aacute;i thịt th&agrave;nh từng miếng vừa. Rưới nước mắm, đường v&agrave; mắm t&ocirc;m l&ecirc;n thịt, trộn đều v&agrave; ướp thịt trong &iacute;t nhất 30 ph&uacute;t.</li>\r\n		<li>Nướng thịt tr&ecirc;n bếp than hoặc trong l&ograve; nướng cho đến khi thịt ch&iacute;n v&agrave; c&oacute; m&agrave;u v&agrave;ng đẹp.</li>\r\n		<li>Chuẩn bị nước mắm chua ngọt bằng c&aacute;ch pha nước mắm, đường, nước chanh v&agrave; nước ấm với tỷ lệ th&iacute;ch hợp.</li>\r\n		<li>Đun s&ocirc;i nước lẩu v&agrave; cho b&uacute;n v&agrave;o nấu ch&iacute;n. Sau đ&oacute;, gắp b&uacute;n ra, rửa qua nước lạnh v&agrave; để r&aacute;o.</li>\r\n		<li>Chuẩn bị đĩa b&uacute;n tươi, rau sống v&agrave; h&agrave;nh, tỏi, ớt đ&atilde; th&aacute;i nhỏ. Tr&igrave;nh b&agrave;y thịt nướng l&ecirc;n đĩa v&agrave; trang tr&iacute; với h&agrave;nh, tỏi, ớt.</li>\r\n		<li>Khi ăn, lấy từng mẩu b&uacute;n, rau sống v&agrave; thịt nướng ng&acirc;m v&agrave;o nước mắm chua ngọt trước khi thưởng thức.</li>\r\n	</ol>\r\n	</li>\r\n</ul>\r\n\r\n<p>C&aacute;c m&oacute;n ăn b&uacute;n tr&ecirc;n đều c&oacute; hương vị đặc trưng v&agrave; thường được ăn k&egrave;m với rau sống v&agrave; nước mắm chua ngọt. Bạn c&oacute; thể t&ugrave;y chỉnh c&aacute;c nguy&ecirc;n liệu v&agrave; gia vị theo khẩu vị ri&ecirc;ng để tạo ra những m&oacute;n b&uacute;n thơm ngon v&agrave; độc đ&aacute;o. Ch&uacute;c bạn th&agrave;nh c&ocirc;ng v&agrave; thưởng thức những m&oacute;n ăn tuyệt vời n&agrave;y c&ugrave;ng gia đ&igrave;nh v&agrave; bạn b&egrave;!</p>', 'true', 'News', 'huong-dan-lam-nhung-mon-an-bun-ngon-tai-nha', NULL, NULL, NULL, '2023-06-05 14:16:05', '2023-06-05 14:16:05');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `settings`
--

INSERT INTO `settings` (`id`, `user_id`, `status`) VALUES
(1, 1, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `permission` int(11) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `permission`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'tuan.pn92@gmail.com', 1, NULL, '$2y$10$9fz78ri8PAvBIbSerrENiuTjo5WlAXRXdfCtkh.40ByOcTeSNYCsO', NULL, '2023-03-20 09:17:19', '2023-03-20 09:17:19');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Chỉ mục cho bảng `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `images`
--
ALTER TABLE `images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=543;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131;

--
-- AUTO_INCREMENT cho bảng `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
