-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 11, 2021 at 08:35 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `codeigecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `slug` varchar(100) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `cover_image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `parent_id`, `cover_image`, `created_at`, `updated_at`) VALUES
(11, 'Bangladeshi', '', 0, '1555946363.jpg', '2021-06-14 16:15:28', '2021-06-14 16:15:28'),
(12, 'Indian', '', 0, 'gettyimages-480818939-612x612.jpg', '2021-06-14 16:29:03', '2021-06-14 16:29:03'),
(13, 'Chinese', '', 0, 'depositphotos_247148264-stock-photo-rice-bowl-isolated-white-background.jpg', '2021-06-14 16:37:04', '2021-06-14 16:37:04'),
(16, 'Indonesia', '', 0, 'FullSizeRender-32-1024x7681.jpg', '2021-06-15 15:28:18', '2021-06-15 15:28:18'),
(17, 'Vietnam', '', 0, 'vietnam-rice1.jpg', '2021-06-15 15:29:37', '2021-06-15 15:29:37');

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `delivery_address` tinytext NOT NULL,
  `pincode` int(10) NOT NULL,
  `order_status` tinyint(4) NOT NULL,
  `total_amt` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `delivery_address`, `pincode`, `order_status`, `total_amt`, `created_at`, `updated_at`) VALUES
(17, 1, 'pojoj', 12222, 1, 67, '2021-06-16 18:38:20', '2021-06-16 18:38:20');

-- --------------------------------------------------------

--
-- Table structure for table `order_product`
--

CREATE TABLE `order_product` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_product`
--

INSERT INTO `order_product` (`id`, `order_id`, `product_id`, `qty`) VALUES
(18, 17, 83, 1);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `description` text NOT NULL,
  `price` int(8) NOT NULL,
  `category_id` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `cover_image` tinytext DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `price`, `category_id`, `status`, `cover_image`, `created_at`, `updated_at`) VALUES
(51, 'Binni rice', 'bangladesh', 67, 11, 1, 'qt10m2pxefo0xf5emhpz1.jpg', '2021-06-15 21:52:34', '2021-06-15 15:52:34'),
(52, 'katari vog', 'BD', 44, 11, 1, 'katari_bhog_rice_f20-400x4001.jpg', '2021-06-15 21:58:56', '2021-06-15 15:58:56'),
(54, 'Najir shah', 'bd', 67, 11, 1, 'Indian-Deshi-Najir-Shail-25kg2.jpg', '2021-06-15 22:07:17', '2021-06-15 16:07:17'),
(55, 'kalijira', 'bd', 55, 11, 1, 'KALIJIRA-scaled-768x13652.jpg', '2021-06-15 22:08:46', '2021-06-15 16:08:46'),
(56, 'Kalo Beruin', 'bd', 44, 11, 1, 'gettyimages-157678537-612x6121.jpg', '2021-06-15 22:11:42', '2021-06-15 16:11:42'),
(57, 'Thakur Bhog', 'bd', 66, 11, 1, '51Xzx4Lqb2L__SX300_SY300_QL70_ML2_1.jpg', '2021-06-15 22:15:08', '2021-06-15 16:15:08'),
(58, 'Modhu Beruin White', 'bd', 77, 11, 1, 'gettyimages-157678537-612x6123.jpg', '2021-06-15 22:36:43', '2021-06-15 16:36:44'),
(59, 'minisahail', 'bd', 44, 11, 1, 'minsail1.jpg', '2021-06-15 22:39:54', '2021-06-15 16:39:54'),
(60, 'miniket', 'bd', 66, 11, 1, 'IMG_20201201_123843-removebg-preview_500x1.png', '2021-06-15 22:43:27', '2021-06-15 16:43:27'),
(61, 'Tolsi Mala Dhan ', 'bd', 77, 11, 1, 'lg_ispahani_agomoni_tulsimala_rice_1_kg_0af17a0f930ab58a8bed510e83eb8a1901.jpg', '2021-06-15 22:46:56', '2021-06-15 16:46:56'),
(62, 'Khato Dosh', 'bd', 45, 11, 1, 'big_dodkya_cha_bhaat-100451.jpg', '2021-06-15 23:05:21', '2021-06-15 17:05:21'),
(63, 'basmati', 'indi', 33, 12, 1, '918FSkWVQqL__SL1500_1.jpg', '2021-06-15 23:10:07', '2021-06-15 17:10:07'),
(64, 'Hasan Serai', 'indi', 77, 12, 1, '2-black-organic-black-rice-2-kg-hasan-serai-rice-pouch-jivabhumi-original-imafc4uzjvg3quft1.jpeg', '2021-06-15 23:16:11', '2021-06-15 17:16:11'),
(65, 'Jyothi', 'indi', 99, 12, 1, 'R012-Pouch-Jyothi1.jpg', '2021-06-15 23:19:20', '2021-06-15 17:19:20'),
(66, 'ponni', 'indi', 77, 12, 1, '21_PONNI_RICE-500x500_(1)1.jpg', '2021-06-15 23:26:24', '2021-06-15 17:26:24'),
(68, 'Laxmi Bhog ', 'indi', 88, 12, 1, 'Laxmi_Bhog2.jpg', '2021-06-15 23:30:46', '2021-06-15 17:30:46'),
(69, 'navara', 'indi', 77, 12, 1, 'R012-Pouch-Jyothi3.jpg', '2021-06-15 23:33:19', '2021-06-15 17:33:19'),
(72, 'Surekha', 'indi', 67, 12, 1, 'rice1.png', '2021-06-16 21:39:38', '2021-06-16 15:39:38'),
(73, 'joha', 'indi', 54, 12, 1, '81rF9hhAxZL__SL1500_2.jpg', '2021-06-16 21:41:27', '2021-06-16 15:41:27'),
(74, 'pusa', 'indi', 44, 12, 1, 'pusa-basmati-rice-500x5001.jpg', '2021-06-16 21:42:42', '2021-06-16 15:42:42'),
(75, 'kamini', 'indi', 77, 12, 1, 'kamini-rice-500x5001.jpg', '2021-06-16 21:44:07', '2021-06-16 15:44:07'),
(76, 'wild rice', 'chinese', 77, 13, 1, 'MachurianWildRice_PhotoBy-NationalInstitute-of-WaterAtmosphericResearch1.jpg', '2021-06-16 21:53:06', '2021-06-16 15:53:06'),
(77, 'black rice', 'chinese', 99, 13, 1, 'black_asian_rice_1.jpg', '2021-06-16 21:54:08', '2021-06-16 15:54:08'),
(78, 'wuchang', 'chinese', 76, 13, 1, '41vM43g9DCL1.jpg', '2021-06-16 21:56:23', '2021-06-16 15:56:23'),
(79, 'pon lai', 'chinese', 99, 13, 1, '02439__39153_1447433288_1000_12001.jpg', '2021-06-16 22:02:01', '2021-06-16 16:02:01'),
(80, 'Nàng Th?m Ch? ?ào Rice', 'vt', 56, 17, 1, 'NangThom1.jpg', '2021-06-16 22:07:02', '2021-06-16 16:07:02'),
(81, 'N?p c?m Rice', 'vt', 88, 17, 1, '81+gbHLOR5L__SL1500_1.jpg', '2021-06-16 22:12:55', '2021-06-16 16:12:55'),
(82, 'Tài Nguyên Rice', 'vt', 66, 17, 1, 'download1.jpg', '2021-06-16 22:18:02', '2021-06-16 16:18:02'),
(83, 'wulu', 'indonesia', 67, 16, 1, 'hqdefault1.jpg', '2021-06-16 22:23:02', '2021-06-16 16:23:02');

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` int(11) NOT NULL,
  `path` varchar(200) NOT NULL,
  `product_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_images`
--

INSERT INTO `product_images` (`id`, `path`, `product_id`, `created_at`, `updated_at`) VALUES
(42, 'qt10m2pxefo0xf5emhpz.jpg', 51, '2021-06-15 15:52:34', '0000-00-00 00:00:00'),
(43, 'katari_bhog_rice_f20-400x400.jpg', 52, '2021-06-15 15:58:57', '0000-00-00 00:00:00'),
(45, 'Indian-Deshi-Najir-Shail-25kg.jpg', 54, '2021-06-15 16:07:17', '0000-00-00 00:00:00'),
(47, 'KALIJIRA-scaled-768x1365.jpg', 55, '2021-06-15 16:08:46', '0000-00-00 00:00:00'),
(48, 'gettyimages-157678537-612x612.jpg', 56, '2021-06-15 16:11:42', '0000-00-00 00:00:00'),
(49, '51Xzx4Lqb2L__SX300_SY300_QL70_ML2_.jpg', 57, '2021-06-15 16:15:08', '0000-00-00 00:00:00'),
(50, 'gettyimages-157678537-612x6122.jpg', 58, '2021-06-15 16:36:44', '0000-00-00 00:00:00'),
(51, 'minsail.jpg', 59, '2021-06-15 16:39:54', '0000-00-00 00:00:00'),
(52, 'IMG_20201201_123843-removebg-preview_500x.png', 60, '2021-06-15 16:43:27', '0000-00-00 00:00:00'),
(53, 'lg_ispahani_agomoni_tulsimala_rice_1_kg_0af17a0f930ab58a8bed510e83eb8a190.jpg', 61, '2021-06-15 16:46:56', '0000-00-00 00:00:00'),
(54, 'big_dodkya_cha_bhaat-10045.jpg', 62, '2021-06-15 17:05:21', '0000-00-00 00:00:00'),
(55, '918FSkWVQqL__SL1500_.jpg', 63, '2021-06-15 17:10:07', '0000-00-00 00:00:00'),
(56, '2-black-organic-black-rice-2-kg-hasan-serai-rice-pouch-jivabhumi-original-imafc4uzjvg3quft.jpeg', 64, '2021-06-15 17:16:11', '0000-00-00 00:00:00'),
(57, 'R012-Pouch-Jyothi.jpg', 65, '2021-06-15 17:19:20', '0000-00-00 00:00:00'),
(58, '21_PONNI_RICE-500x500_(1).jpg', 66, '2021-06-15 17:26:24', '0000-00-00 00:00:00'),
(60, 'Laxmi_Bhog.jpg', 68, '2021-06-15 17:30:46', '0000-00-00 00:00:00'),
(61, 'R012-Pouch-Jyothi2.jpg', 69, '2021-06-15 17:33:19', '0000-00-00 00:00:00'),
(64, 'rice.png', 72, '2021-06-16 15:39:38', '0000-00-00 00:00:00'),
(65, '81rF9hhAxZL__SL1500_.jpg', 73, '2021-06-16 15:41:27', '0000-00-00 00:00:00'),
(66, 'pusa-basmati-rice-500x500.jpg', 74, '2021-06-16 15:42:42', '0000-00-00 00:00:00'),
(67, 'kamini-rice-500x500.jpg', 75, '2021-06-16 15:44:07', '0000-00-00 00:00:00'),
(68, 'MachurianWildRice_PhotoBy-NationalInstitute-of-WaterAtmosphericResearch.jpg', 76, '2021-06-16 15:53:06', '0000-00-00 00:00:00'),
(69, 'black_asian_rice_.jpg', 77, '2021-06-16 15:54:09', '0000-00-00 00:00:00'),
(70, '41vM43g9DCL.jpg', 78, '2021-06-16 15:56:23', '0000-00-00 00:00:00'),
(71, '02439__39153_1447433288_1000_1200.jpg', 79, '2021-06-16 16:02:01', '0000-00-00 00:00:00'),
(72, 'NangThom.jpg', 80, '2021-06-16 16:07:02', '0000-00-00 00:00:00'),
(73, '81+gbHLOR5L__SL1500_.jpg', 81, '2021-06-16 16:12:56', '0000-00-00 00:00:00'),
(74, 'download.jpg', 82, '2021-06-16 16:18:02', '0000-00-00 00:00:00'),
(75, 'hqdefault.jpg', 83, '2021-06-16 16:23:02', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `name` varchar(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2021-06-14 16:05:04', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `slider_images`
--

CREATE TABLE `slider_images` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `sub_title` varchar(200) DEFAULT NULL,
  `path` varchar(255) NOT NULL,
  `link` text DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `email` varchar(150) NOT NULL,
  `password` varchar(200) NOT NULL,
  `role_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `role_id`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@admin.com', '21232f297a57a5a743894a0e4a801fc3', 1, '2021-06-14 16:05:57', '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_product`
--
ALTER TABLE `order_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id_in_order_product` (`order_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_in_category` (`category_id`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_images_on_products` (`product_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slider_images`
--
ALTER TABLE `slider_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_role` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `order_product`
--
ALTER TABLE `order_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `slider_images`
--
ALTER TABLE `slider_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `order_product`
--
ALTER TABLE `order_product`
  ADD CONSTRAINT `order_id_in_order_product` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_in_category` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);

--
-- Constraints for table `product_images`
--
ALTER TABLE `product_images`
  ADD CONSTRAINT `product_images_on_products` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `user_role` FOREIGN KEY (`role_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
