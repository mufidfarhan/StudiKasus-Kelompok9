-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 27, 2022 at 05:19 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ninesneakers`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer_chart`
--

CREATE TABLE `customer_chart` (
  `id` int(8) NOT NULL,
  `customer_id` int(8) NOT NULL,
  `product_id` int(8) NOT NULL,
  `quantity` int(3) NOT NULL,
  `create_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer_chart`
--

INSERT INTO `customer_chart` (`id`, `customer_id`, `product_id`, `quantity`, `create_at`) VALUES
(1, 1, 1, 0, '2022-05-27 13:24:27'),
(3, 2, 4, 31, '2022-05-27 21:12:14'),
(4, 2, 4, 31, '2022-05-27 21:12:15');

-- --------------------------------------------------------

--
-- Table structure for table `order_list`
--

CREATE TABLE `order_list` (
  `id` int(8) NOT NULL,
  `customer_id` int(8) NOT NULL,
  `product_id` int(8) NOT NULL,
  `total_price` bigint(20) NOT NULL,
  `payment_method` varchar(128) NOT NULL,
  `create_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order_list`
--

INSERT INTO `order_list` (`id`, `customer_id`, `product_id`, `total_price`, `payment_method`, `create_at`) VALUES
(2, 2, 2, 20000, 'BCA', '2022-05-27 21:38:39'),
(3, 2, 2, 10000, 'BRI', '2022-05-27 21:38:40'),
(4, 2, 2, 20000, 'BCA', '2022-05-27 21:44:03'),
(5, 2, 2, 20000, 'BCA', '2022-05-27 21:44:04');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(8) NOT NULL,
  `brand_name` varchar(128) NOT NULL,
  `product_name` varchar(128) NOT NULL,
  `price` bigint(10) NOT NULL,
  `size` int(3) NOT NULL,
  `color` varchar(64) NOT NULL,
  `description` text DEFAULT NULL,
  `create_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `brand_name`, `product_name`, `price`, `size`, `color`, `description`, `create_at`) VALUES
(1, 'Adidas', 'Duramo 10 Shoes', 1000000, 43, 'Black', NULL, '0000-00-00 00:00:00'),
(2, 'Nike', 'Boost 360', 5000, 42, 'Putih', NULL, '0000-00-00 00:00:00'),
(5, 'Adidas', 'ZeroNine21', 1000000, 43, 'black', 'libero enim sed faucibus turpis in eu mi bibendum neque', '2022-05-27 22:03:54'),
(6, 'NIKE', 'ZeroSIX', 1230000, 43, 'black', 'libero enim sed faucibus turpis in eu mi bibendum neque', '2022-05-27 22:04:17'),
(7, 'NIKE', 'ZeroSIX', 1230000, 43, 'black', 'libero enim sed faucibus turpis in eu mi bibendum neque', '2022-05-27 22:16:50');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(4) NOT NULL,
  `username` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `name` varchar(128) NOT NULL,
  `password` varchar(128) NOT NULL,
  `phone_number` bigint(13) NOT NULL,
  `address` varchar(256) NOT NULL,
  `create_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `name`, `password`, `phone_number`, `address`, `create_at`) VALUES
(2, 'user2', 'user2@mail.com', 'User 2', '123', 0, '', '2022-05-27 13:21:12'),
(3, 'user11', 'user11@gmail.com', 'User 11', '12221213', 982726172625, '', '2022-05-27 21:48:19'),
(4, 'user10', 'user10@gmail.com', 'User 10', '123', 982726172625, '', '2022-05-27 21:48:24');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer_chart`
--
ALTER TABLE `customer_chart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_list`
--
ALTER TABLE `order_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer_chart`
--
ALTER TABLE `customer_chart`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `order_list`
--
ALTER TABLE `order_list`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
