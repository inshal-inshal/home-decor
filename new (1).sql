-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 14, 2025 at 07:10 PM
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
-- Database: `new`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `cart_id` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) DEFAULT 1,
  `added_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`cart_id`, `id`, `product_id`, `quantity`, `added_at`) VALUES
(2, 8, 1, 19, '2025-08-13 18:22:24'),
(4, 2, 1, 4, '2025-08-13 20:07:46'),
(11, 2, 40, 1, '2025-08-14 12:00:59'),
(15, 9, 42, 1, '2025-08-14 17:16:01');

-- --------------------------------------------------------

--
-- Table structure for table `contact_messages`
--

CREATE TABLE `contact_messages` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(150) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact_messages`
--

INSERT INTO `contact_messages` (`id`, `name`, `email`, `subject`, `message`, `created_at`) VALUES
(1, 'inshaal', 'inshaal@gmail.com', 'Contact Form Message', 'add some more asthetic products......', '2025-08-11 14:43:04'),
(2, 'abdullah', 'abdullah@gmail.com', 'Contact Form Message', 'add some asthetic inetrior', '2025-08-14 10:45:52'),
(3, 'inshaal', 'inshal@gmail.com', 'Contact Form Message', 'add more pics', '2025-08-14 10:49:10');

-- --------------------------------------------------------

--
-- Table structure for table `furniture`
--

CREATE TABLE `furniture` (
  `furniture_id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `category` varchar(100) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `image_path` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `furniture`
--

INSERT INTO `furniture` (`furniture_id`, `name`, `category`, `price`, `image_path`, `description`, `created_at`) VALUES
(1, 'sofa', 'sofa', 6999.00, 'uploads/furniture/1.avif', 'safety', '2025-08-14 20:45:42'),
(2, 'wooden sofa', 'wood', 8000.00, 'uploads/furniture/5.webp', 'asthetic', '2025-08-14 20:46:24'),
(3, 'wooden table', 'wood', 10000.00, 'uploads/furniture/7.avif', 'asthetic', '2025-08-14 20:47:03'),
(4, 'cupboard', 'wood', 12000.00, 'uploads/furniture/6.avif', 'white and brown color', '2025-08-14 20:47:49'),
(5, 'sofa set', 'wood', 15000.00, 'uploads/furniture/11.avif', 'good', '2025-08-14 20:48:34'),
(6, 'kitchen cupboard', 'wood', 10000.00, 'uploads/furniture/8.avif', 'good space', '2025-08-14 20:49:04'),
(7, 'bean bag', 'soft', 9000.00, 'uploads/furniture/3.avif', 'soft, comfortable', '2025-08-14 20:49:44'),
(8, 'dining table', 'wood', 13999.00, 'uploads/furniture/4.avif', 'asthetic', '2025-08-14 20:50:11'),
(9, 'office conference table', 'wood', 17999.00, 'uploads/furniture/9.avif', 'for big space', '2025-08-14 20:50:43'),
(10, 'office and gaming shair', 'plastic', 4999.00, 'uploads/furniture/10.avif', 'comfort', '2025-08-14 20:51:16');

-- --------------------------------------------------------

--
-- Table structure for table `inspiration_gallery`
--

CREATE TABLE `inspiration_gallery` (
  `image_id` int(11) NOT NULL,
  `title` varchar(150) DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL,
  `image_path` varchar(255) NOT NULL,
  `uploaded_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `interior_designs`
--

CREATE TABLE `interior_designs` (
  `interior_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` text DEFAULT NULL,
  `price` decimal(10,2) DEFAULT 0.00,
  `image_path` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `interior_designs`
--

INSERT INTO `interior_designs` (`interior_id`, `name`, `description`, `price`, `image_path`, `created_at`) VALUES
(1, 'sofa', 'home', 10000.00, '1755178398_1.avif', '2025-08-14 17:59:23'),
(2, 'book shelf', NULL, 5000.00, '1755178444_2.webp', '2025-08-14 18:34:04'),
(3, 'wooden table', NULL, 4000.00, '1755179594_4.avif', '2025-08-14 18:53:14'),
(4, 'round table', NULL, 1000.00, '1755179618_5.avif', '2025-08-14 18:53:38'),
(5, 'side table', NULL, 5000.00, '1755181692_3.avif', '2025-08-14 19:28:12'),
(6, 'chairs', NULL, 5000.00, '1755182145_9.avif', '2025-08-14 19:35:45'),
(7, 'bedroom set', NULL, 50000.00, '1755182169_8.webp', '2025-08-14 19:36:09'),
(8, 'wooden counter chairs', NULL, 6000.00, '1755182205_10.avif', '2025-08-14 19:36:45'),
(9, 'round swing', NULL, 9000.00, '1755182224_16.avif', '2025-08-14 19:37:04'),
(10, 'balconny set', NULL, 25000.00, '1755182245_15.avif', '2025-08-14 19:37:25'),
(11, 'vintage mirror', NULL, 4000.00, '1755182266_14.avif', '2025-08-14 19:37:46'),
(12, 'luxury tub', NULL, 7999.00, '1755182284_13.avif', '2025-08-14 19:38:04'),
(13, 'rounded chairs', NULL, 3999.00, '1755182307_17.avif', '2025-08-14 19:38:27'),
(14, 'dark theme kitchen', NULL, 100000.00, '1755182331_11.avif', '2025-08-14 19:38:51'),
(15, 'water faucet', NULL, 6999.00, '1755182355_12.avif', '2025-08-14 19:39:16');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) DEFAULT 1,
  `order_date` datetime DEFAULT current_timestamp(),
  `status` enum('pending','shipped','delivered','cancelled') DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `id`, `product_id`, `quantity`, `order_date`, `status`) VALUES
(2, 7, 41, 1, '2025-08-14 15:10:48', 'shipped'),
(3, 7, 42, 6, '2025-08-14 15:37:00', 'pending'),
(4, 7, 41, 9, '2025-08-14 15:43:20', 'delivered');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `category` varchar(50) NOT NULL,
  `description` text DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `brand` varchar(100) DEFAULT NULL,
  `image_path` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `name`, `category`, `description`, `price`, `brand`, `image_path`, `created_at`) VALUES
(1, 'Modern Sofa', 'Sofas', 'Comfortable 3-seater sofa', 59999.99, 'Ikea', 'assets/images/sofa3.jpg', '2025-08-13 17:48:24'),
(2, 'Chair', 'Chairs', 'living room chair', 1100.00, 'ikea', 'assets\\images\\chair1.jpg', '2025-08-14 10:52:28'),
(3, 'Modern Lamp', 'Lamps', '\r\nluxurious lamp', 15000.00, 'Best lamp sellers', 'assets\\images\\lamp1.jpg', '2025-08-14 10:52:28'),
(12, 'Table', 'dining tables', 'Dining table', 19000.00, 'Dining ', 'uploads/dining1.jpg', '2025-08-14 10:54:24'),
(13, ' Lamp', 'lamps', 'French Lamp', 20000.00, ' Lamps ', 'uploads/lamp2.jpg', '2025-08-14 10:57:44'),
(15, 'Sofa', 'sofas', 'Three seated sofa', 25000.00, 'Best Sofa sellers', 'uploads/sofa1.jpg', '2025-08-14 10:59:49'),
(16, 'Chair', 'chairs', 'Comfortable Chiar', 15000.00, 'Chairs ', 'uploads/chair3.jpg', '2025-08-14 11:01:03'),
(17, ' Table', 'dining tables', 'Dining Table', 20000.00, 'Dining ', 'uploads/dining3.jpg', '2025-08-14 11:03:27'),
(18, 'Sofa', 'sofas', 'Comfortable Sofa', 19000.00, 'Sofas ', 'uploads/sofa4.jpg', '2025-08-14 11:06:08'),
(19, 'Sofa', 'sofas', 'Living room sofa', 17500.00, 'Living decor sofas', 'uploads/sofa2.jpg', '2025-08-14 11:07:52'),
(21, 'Lamp', 'lamps', 'Cute Panda lam', 19000.00, 'Cute Lamps', 'uploads/lamp4.jpg', '2025-08-14 11:16:22'),
(22, 'Lamp', 'lamps', 'Living room Lamp', 18500.00, 'Living room decor', 'uploads/lamp1.jpg', '2025-08-14 11:17:57'),
(23, 'Lamp', 'lamps', 'Flower Lamp', 25000.00, 'Flower Lamps', 'uploads/lamp5.jpg', '2025-08-14 11:18:59'),
(24, 'Lamp', 'lamps', 'Side Table lamp', 20000.00, 'Vintage lamps', 'uploads/lamp6.jpg', '2025-08-14 11:20:13'),
(25, 'Lamp', 'lamps', 'Lotus lamp', 25000.00, 'Floral Lamps', 'uploads/lamp3.jpg', '2025-08-14 11:22:30'),
(26, 'Lamp', 'lamps', 'Study Table lamp', 17000.00, 'Cute Lamps', 'uploads/lamp4.jpg', '2025-08-14 11:23:23'),
(27, 'Sofa', 'sofas', 'Shell Inspired sofa', 30000.00, 'Living room sofas', 'uploads/sofa5.jpg', '2025-08-14 11:29:37'),
(28, 'Sofa', 'sofas', 'room sofa', 17000.00, 'room sofas', 'uploads/sofa7.jpg', '2025-08-14 11:30:23'),
(29, 'Sofa', 'sofas', 'Watermelon Inspired sofa', 36000.00, 'Aesthetic Sofas', 'uploads/sofa8.jpg', '2025-08-14 11:31:29'),
(30, 'Sofa', 'sofas', 'Living room sofa', 35000.00, 'Best Sofa sellers', 'uploads/sofa6.jpg', '2025-08-14 11:32:21'),
(31, 'Table', 'dining tables', 'Simple dining table', 28000.00, '', 'uploads/dining2.jpg', '2025-08-14 11:38:37'),
(32, 'Table', 'dining tables', 'Living room table', 30000.00, 'Living room table ', 'uploads/dining4.jpg', '2025-08-14 11:39:49'),
(33, 'Table', 'dining tables', 'Wooden Dining table', 20000.00, 'wooden tables', 'uploads/dining7.jpg', '2025-08-14 11:42:14'),
(34, 'Table', 'dining tables', 'Dining table', 45000.00, 'Dining ', 'uploads/dining6.jpg', '2025-08-14 11:43:16'),
(35, 'Table', 'dining tables', 'Dining table ', 40000.00, 'Tables to dine ', 'uploads/dining5.jpg', '2025-08-14 11:45:01'),
(36, 'Table', 'dining tables', 'Dining table', 46000.00, 'Dining ', 'uploads/dining4.jpg', '2025-08-14 11:46:04'),
(37, 'Chair', 'chairs', 'Fluffy white chair', 45000.00, 'Chairs ', 'uploads/chair5.jpg', '2025-08-14 11:51:09'),
(38, 'Chair', 'chairs', 'wooden chair', 30000.00, 'wooden chairs', 'uploads/chair7.jpg', '2025-08-14 11:52:20'),
(39, 'Chair', 'chairs', 'simple garden chairs', 45000.00, 'Outdoor chairs', 'uploads/chair2.jpg', '2025-08-14 11:53:28'),
(40, 'Chair', 'chairs', 'Red chairs', 35000.00, 'Ancient chairs', 'uploads/chair4.jpg', '2025-08-14 11:54:37'),
(41, 'Chair', 'chairs', 'Living room chairs', 40000.00, 'Living decor chairs', 'uploads/chair8.jpg', '2025-08-14 11:56:22'),
(42, 'Chair', 'chairs', 'Chairs for room', 30000.00, 'Roo', 'uploads/chair6.jpg', '2025-08-14 11:57:23'),
(43, 'cahir', 'office', 'office work', 20000.00, 'unsplash', 'assets/images/interior1.jpg', '2025-08-14 15:35:22'),
(44, 'sofa', 'home', 'comfartable', 20000.00, NULL, 'subcategories/1755174822_1.avif', '2025-08-14 17:33:42'),
(45, 'vintage book shelf', 'office, library, homes', 'nice looks', 5000.00, NULL, 'subcategories/1755174986_2.webp', '2025-08-14 17:36:26');

-- --------------------------------------------------------

--
-- Table structure for table `product_reviews`
--

CREATE TABLE `product_reviews` (
  `review_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `rating` int(11) DEFAULT NULL CHECK (`rating` between 1 and 5),
  `review_text` text DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_reviews`
--

INSERT INTO `product_reviews` (`review_id`, `product_id`, `id`, `rating`, `review_text`, `created_at`) VALUES
(1, 1, 8, 2, 'not bad', '2025-08-13 18:07:36'),
(2, 1, 8, 5, 'well', '2025-08-13 18:08:54'),
(3, 1, 8, 1, 'okk', '2025-08-13 18:11:11'),
(4, 1, 8, 3, 'done', '2025-08-13 18:13:00'),
(5, 1, 8, 5, 'nice', '2025-08-13 18:13:57'),
(6, 1, 8, 3, 'done', '2025-08-13 18:14:47'),
(7, 1, 8, 4, 'good', '2025-08-13 18:15:33'),
(8, 1, 8, 4, 'good', '2025-08-13 18:15:54'),
(9, 1, 8, 4, 'welldone', '2025-08-13 18:17:39'),
(14, 1, 8, 3, 'good', '2025-08-13 19:35:57'),
(15, 1, 8, 5, 'not bad', '2025-08-13 19:38:35'),
(16, 1, 8, 2, 'v.good', '2025-08-13 20:03:55');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `user_email` varchar(100) NOT NULL,
  `password` varchar(225) NOT NULL,
  `role` enum('user','admin') NOT NULL DEFAULT 'user',
  `phone_number` int(11) NOT NULL,
  `dob` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user_name`, `user_email`, `password`, `role`, `phone_number`, `dob`) VALUES
(2, 'alishba', 'alishba@gmail.com', 'alishba123', 'admin', 987643783, '2006-04-03'),
(4, 'manahil', 'manahil@gmail.com', '123456', 'admin', 987654567, '2008-03-10'),
(5, 'sana', 'sana@gmail.com', 'sana1234', 'admin', 98765456, '2008-01-01'),
(7, 'inshaal', 'inshaal@gmail.com', '1234', 'admin', 97567567, '2008-06-13'),
(8, 'sara', 'sara@gmail.com', 'sara90', 'user', 97654376, '1999-03-09'),
(9, 'misha', 'misha@gmail.com', '456', 'user', 9876543, '1980-09-05');

-- --------------------------------------------------------

--
-- Table structure for table `wall_decor`
--

CREATE TABLE `wall_decor` (
  `wall_decor_id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `category` varchar(100) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `image_path` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `wall_decor`
--

INSERT INTO `wall_decor` (`wall_decor_id`, `name`, `category`, `price`, `image_path`, `description`, `created_at`) VALUES
(1, 'wood frames', 'wood', 2000.00, 'uploads/wall_decor/2.avif', 'asthetic', '2025-08-14 21:19:00'),
(2, 'lamp', 'kitchen', 1000.00, 'uploads/wall_decor/3.avif', 'asthetic', '2025-08-14 21:51:54'),
(3, 'customize frame', 'frame', 1999.00, 'uploads/wall_decor/6.avif', 'good quality', '2025-08-14 21:53:04'),
(4, 'side table lamp', 'lamp', 1999.00, 'uploads/wall_decor/7.avif', 'good', '2025-08-14 21:54:16'),
(5, 'door mat', 'clothes', 599.00, 'uploads/wall_decor/8.avif', 'nice', '2025-08-14 21:54:51'),
(6, 'wall shelf', 'shelf', 800.00, 'uploads/wall_decor/5.avif', 'well', '2025-08-14 21:56:04'),
(7, 'paper frames', 'paper', 500.00, 'uploads/wall_decor/1.avif', 'good', '2025-08-14 21:56:41'),
(8, 'good space shelf', 'shelf', 200.00, 'uploads/wall_decor/4.avif', 'good', '2025-08-14 21:57:08'),
(9, 'illusion frame', 'illusion', 750.00, 'uploads/wall_decor/10.avif', 'good', '2025-08-14 21:57:41');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cart_id`),
  ADD KEY `user_id` (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `contact_messages`
--
ALTER TABLE `contact_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `furniture`
--
ALTER TABLE `furniture`
  ADD PRIMARY KEY (`furniture_id`);

--
-- Indexes for table `inspiration_gallery`
--
ALTER TABLE `inspiration_gallery`
  ADD PRIMARY KEY (`image_id`),
  ADD KEY `uploaded_by` (`uploaded_by`);

--
-- Indexes for table `interior_designs`
--
ALTER TABLE `interior_designs`
  ADD PRIMARY KEY (`interior_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `user_id` (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `product_reviews`
--
ALTER TABLE `product_reviews`
  ADD PRIMARY KEY (`review_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `user_id` (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`user_email`),
  ADD UNIQUE KEY `phone_number` (`phone_number`);

--
-- Indexes for table `wall_decor`
--
ALTER TABLE `wall_decor`
  ADD PRIMARY KEY (`wall_decor_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `cart_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `contact_messages`
--
ALTER TABLE `contact_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `furniture`
--
ALTER TABLE `furniture`
  MODIFY `furniture_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `inspiration_gallery`
--
ALTER TABLE `inspiration_gallery`
  MODIFY `image_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `interior_designs`
--
ALTER TABLE `interior_designs`
  MODIFY `interior_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `product_reviews`
--
ALTER TABLE `product_reviews`
  MODIFY `review_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `wall_decor`
--
ALTER TABLE `wall_decor`
  MODIFY `wall_decor_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cart_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`) ON DELETE CASCADE;

--
-- Constraints for table `inspiration_gallery`
--
ALTER TABLE `inspiration_gallery`
  ADD CONSTRAINT `inspiration_gallery_ibfk_1` FOREIGN KEY (`uploaded_by`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`) ON DELETE CASCADE;

--
-- Constraints for table `product_reviews`
--
ALTER TABLE `product_reviews`
  ADD CONSTRAINT `product_reviews_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_reviews_ibfk_2` FOREIGN KEY (`id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
