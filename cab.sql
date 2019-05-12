-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 12, 2019 at 05:09 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cab`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(10) UNSIGNED NOT NULL,
  `password` varchar(150) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, '$2y$10$Yj2nDc1Qd9pGMyJVJGyP..mZsM5V2M43wI8LpKIi0Ucl2C3b5x4Ti', '6704cHcQrPNCPEwhRNIdlYGtmtwIIB4z5p2dvzvPeEEK8lZdehtnyzhDkNwh', '0000-00-00 00:00:00', '2019-04-06 18:48:04');

-- --------------------------------------------------------

--
-- Table structure for table `cabs`
--

CREATE TABLE `cabs` (
  `id` int(10) NOT NULL,
  `regno` varchar(255) DEFAULT NULL,
  `company` varchar(255) DEFAULT NULL,
  `model` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `district` varchar(255) DEFAULT NULL,
  `postalcode` varchar(15) DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updatedAt` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cabs`
--

INSERT INTO `cabs` (`id`, `regno`, `company`, `model`, `type`, `state`, `district`, `postalcode`, `createdAt`, `updatedAt`) VALUES
(1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-05-10 18:13:06', '2019-05-10 18:13:06'),
(2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-05-10 18:14:43', '2019-05-10 18:14:43'),
(3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-05-10 18:17:02', '2019-05-10 18:17:02'),
(4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-05-10 18:21:29', '2019-05-10 18:21:29'),
(5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-05-10 18:24:11', '2019-05-10 18:24:11'),
(6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-05-10 18:24:55', '2019-05-10 18:24:55'),
(7, '123123', 'HONDA', 'lio2', 'Unknown', 'WestBengal', 'Kolkata', '700001', '2019-05-10 18:26:16', '2019-05-10 18:26:16');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `comment` varchar(140) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `ip` varchar(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `comment`, `name`, `email`, `ip`, `created_at`, `updated_at`) VALUES
(25, 'It\'s cool!', 'Ivan', '', '127.0.0.1', '2016-03-28 07:34:40', '2016-03-28 07:34:40'),
(26, ' vmxxhcxghb', 'Saptarshi Biswas', 'saptarshi@gmail.com', '::1', '2019-04-06 18:28:29', '2019-04-06 18:28:29');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(10) UNSIGNED NOT NULL,
  `tel` varchar(30) NOT NULL,
  `info` varchar(140) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `tel`, `info`, `created_at`, `updated_at`) VALUES
(1, '+91 8926308294', 'Dispatcher', '0000-00-00 00:00:00', '2015-12-13 14:44:34'),
(5, '6546546545', 'Ambulance', '2015-12-13 15:12:35', '2019-03-13 13:42:27'),
(6, '6546546545', 'Sample street', '2015-12-19 12:39:46', '2019-03-13 13:42:42'),
(7, '321', 'Sample house', '2015-12-19 12:40:06', '2015-12-19 12:40:06');

-- --------------------------------------------------------

--
-- Table structure for table `crews`
--

CREATE TABLE `crews` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `license` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `photo` varchar(60) NOT NULL,
  `info` varchar(200) NOT NULL,
  `experience` int(15) DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updatedAt` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `crews`
--

INSERT INTO `crews` (`id`, `name`, `phone`, `email`, `license`, `address`, `photo`, `info`, `experience`, `createdAt`, `updatedAt`) VALUES
(1, 'Thanos', NULL, NULL, NULL, NULL, '/img/photos/images.jpg', 'Work experience - 5 years.', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'Captain Marvel', NULL, NULL, NULL, NULL, '/img/photos/images.jpg', 'Work experience - 5 years.', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, '', NULL, NULL, NULL, NULL, '', '', NULL, '2019-05-10 19:35:33', '2019-05-10 19:35:33'),
(5, 'Unknown', '9876543210', 'lio@gmail.com', 'Unknown', 'WestBengal bla bla bla', 'photourl', 'infotest', 2, '2019-05-10 19:37:03', '2019-05-10 19:37:03');

-- --------------------------------------------------------

--
-- Table structure for table `firewall`
--

CREATE TABLE `firewall` (
  `id` int(10) UNSIGNED NOT NULL,
  `ip_address` varchar(39) NOT NULL,
  `whitelisted` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2015_10_30_154506_create_crew_table', 1),
('2015_11_02_210130_create_crew_table', 2),
('2015_11_02_223000_create_comments_table', 3),
('2015_11_04_205940_create_orders_table', 4),
('2015_11_04_212705_add_ip_column', 5),
('2015_11_06_205748_create_super_user_table', 6),
('2015_11_06_205748_create_admin_table', 7),
('2015_11_08_154928_add_status_column', 8),
('2015_11_10_214558_create_firewall_tables', 9),
('2015_11_10_221931_add_ip_column', 10),
('2015_11_13_180214_add_remember_token', 11),
('2015_11_13_180851_add_timestamps', 12),
('2015_12_04_205434_create_contacts_table', 13);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `cabid` int(10) NOT NULL,
  `crewid` int(10) NOT NULL,
  `name` varchar(60) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `destination` varchar(50) DEFAULT NULL,
  `days` int(11) DEFAULT NULL,
  `status` tinyint(4) DEFAULT '0',
  `ip` varchar(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `createdAt`, `updatedAt`) VALUES
(1, 'USER', '2019-04-13 12:34:17', '2019-04-13 12:34:17'),
(2, 'ADMIN', '2019-04-13 12:34:17', '2019-04-13 12:34:17'),
(3, 'PM', '2019-04-13 12:34:17', '2019-04-13 12:34:17');

-- --------------------------------------------------------

--
-- Table structure for table `tarif`
--

CREATE TABLE `tarif` (
  `id` int(10) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `cabtype` varchar(255) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `password`, `createdAt`, `updatedAt`) VALUES
(1, 'saptarshi', 'saptarshi', 'saptarshi@gmail.com', '$2a$08$7buyLJGxdGTGir06QxtSV.wu/aNfcti82lo.EFbmYOKmtsJdjErHy', '2019-04-13 21:57:37', '2019-04-13 21:57:37'),
(2, 'saptarshi', 'Rockon', 'rockon@gmail.com', '$2a$08$pMLxihPF7ErmvZI7D2k7YudYlS8nynVnHcnb27Rx4ZjZk7DLU9yS6', '2019-04-13 22:27:29', '2019-04-13 22:27:29'),
(3, 'Debajit Basu', 'debajit', 'debajit@gmail.com', '$2a$08$J7JEvLCEGhONATQUcsVceuMlkrxIXguZj.E4pRFd8aKhzm/dK8mTK', '2019-04-21 10:23:33', '2019-04-21 10:23:33'),
(4, 'Rupam', 'Rupam', 'rupam@gmail.com', '$2a$08$wJ1bgOV2/TA9rg1bYkU6a.Z.TC9qR8IJPIM.IP1IYn146VXkJqxZ2', '2019-05-10 15:37:14', '2019-05-10 15:37:14'),
(5, 'Roy', 'Roy', 'roy@gmail.com', '$2a$08$PHbXEgZ5sPlOyK7gXENT2.x7iJwZvxfMvEJbhlOi9pAcuRSGWTxbK', '2019-05-10 15:38:08', '2019-05-10 15:38:08'),
(6, 'Rri', 'Rti', 'rri@gmail.com', '$2a$08$8eDZiOBSz8MUVP4mlyZeM.lIoOFqZupuWOjbWmkjpDiw2SlwPlM/a', '2019-05-10 17:55:45', '2019-05-10 17:55:45');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `roleId` int(11) NOT NULL,
  `userId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_roles`
--

INSERT INTO `user_roles` (`createdAt`, `updatedAt`, `roleId`, `userId`) VALUES
('2019-04-13 21:57:37', '2019-04-13 21:57:37', 1, 1),
('2019-04-13 22:27:30', '2019-04-13 22:27:30', 1, 2),
('2019-04-21 10:23:33', '2019-04-21 10:23:33', 1, 3),
('2019-05-10 15:37:14', '2019-05-10 15:37:14', 1, 4),
('2019-05-10 15:38:08', '2019-05-10 15:38:08', 2, 5),
('2019-05-10 17:55:45', '2019-05-10 17:55:45', 2, 6);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cabs`
--
ALTER TABLE `cabs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crews`
--
ALTER TABLE `crews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `firewall`
--
ALTER TABLE `firewall`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `firewall_ip_address_unique` (`ip_address`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tarif`
--
ALTER TABLE `tarif`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`roleId`,`userId`),
  ADD KEY `userId` (`userId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cabs`
--
ALTER TABLE `cabs`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `crews`
--
ALTER TABLE `crews`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `firewall`
--
ALTER TABLE `firewall`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tarif`
--
ALTER TABLE `tarif`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_ibfk_1` FOREIGN KEY (`roleId`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_roles_ibfk_2` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
