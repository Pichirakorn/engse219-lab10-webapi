-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 29, 2025 at 05:03 AM
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
-- Database: `lab10_webapi`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `description` text DEFAULT NULL,
  `category` varchar(100) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `description`, `category`, `image`) VALUES
(1, 'Laptop Pro 15', 35000.00, 'High performance laptop with 16GB RAM and 512GB SSD', 'Electronics', 'laptop.jpg'),
(2, 'Smartphone X', 22000.00, 'Latest smartphone with AMOLED display', 'Electronics', 'smartphone.jpg'),
(3, 'Wireless Mouse', 550.00, 'Ergonomic wireless mouse', 'Accessories', 'mouse.jpg'),
(4, 'Mechanical Keyboard', 2500.00, 'RGB backlit mechanical keyboard', 'Accessories', 'keyboard.jpg'),
(5, 'Noise Cancelling Headphones', 4200.00, 'Over-ear headphones with noise cancellation', 'Electronics', 'headphones.jpg'),
(6, 'Smartwatch Gen 3', 7500.00, 'Fitness tracking smartwatch', 'Wearables', 'smartwatch.jpg'),
(7, 'Bluetooth Speaker', 1800.00, 'Portable Bluetooth speaker with deep bass', 'Electronics', 'speaker.jpg'),
(8, 'Gaming Chair', 6900.00, 'Ergonomic chair for gaming and office use', 'Furniture', 'chair.jpg'),
(9, '4K Monitor', 12000.00, '27-inch 4K UHD monitor', 'Electronics', 'monitor.jpg'),
(10, 'External SSD 1TB', 4500.00, 'High speed portable SSD', 'Storage', 'ssd.jpg'),
(11, 'Backpack', 1600.00, 'Durable laptop backpack with compartments', 'Bags', 'backpack.jpg'),
(12, 'Coffee Maker', 2800.00, 'Automatic coffee machine', 'Appliances', 'coffee.jpg'),
(13, 'Air Fryer', 3500.00, 'Oil-less digital air fryer 4L', 'Appliances', 'airfryer.jpg'),
(14, 'Vacuum Cleaner', 5200.00, 'Bagless vacuum cleaner with HEPA filter', 'Appliances', 'vacuum.jpg'),
(15, 'LED Desk Lamp', 950.00, 'Adjustable LED lamp with USB charging', 'Home', 'lamp.jpg'),
(16, 'Office Desk', 5200.00, 'Wooden office desk with drawers', 'Furniture', 'desk.jpg'),
(17, 'Running Shoes', 3100.00, 'Lightweight running shoes size 42', 'Clothing', 'shoes.jpg'),
(18, 'Jacket', 2700.00, 'Waterproof outdoor jacket', 'Clothing', 'jacket.jpg'),
(19, 'Electric Kettle', 890.00, '1.7L stainless steel electric kettle', 'Appliances', 'kettle.jpg'),
(20, 'Wristband', 350.00, 'Silicone sports wristband', 'Accessories', 'wristband.jpg'),
(21, 'Test1', 99999999.99, 'Extremely expensive', 'Test Object', 'Test.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
