-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jan 11, 2024 at 01:08 AM
-- Server version: 8.0.31
-- PHP Version: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_user_table`
--

-- --------------------------------------------------------

--
-- Table structure for table `add_order`
--

DROP TABLE IF EXISTS `add_order`;
CREATE TABLE IF NOT EXISTS `add_order` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` text NOT NULL,
  `fullname` text NOT NULL,
  `address` text NOT NULL,
  `phonenumber` int NOT NULL,
  `medicine_name` text NOT NULL,
  `generic_name` text NOT NULL,
  `expiry_date` int NOT NULL,
  `supplier` text NOT NULL,
  `packing` text NOT NULL,
  `payment_method` text NOT NULL,
  `quantity` int NOT NULL,
  `rate` int NOT NULL,
  `total` int NOT NULL,
  `P_or_NYP` text NOT NULL,
  `date_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `add_order`
--

INSERT INTO `add_order` (`id`, `email`, `fullname`, `address`, `phonenumber`, `medicine_name`, `generic_name`, `expiry_date`, `supplier`, `packing`, `payment_method`, `quantity`, `rate`, `total`, `P_or_NYP`, `date_time`) VALUES
(37, 'sanchezloreto@yahoo.com', 'Gertrude S. Sanchez', 'south', 2147483647, 'zycast', 'rightmed', 9, 'Mr.T', '13', 'Cash', 12, 122, 1222, 'Paid', '2024-01-11 09:01:16'),
(38, 'nchezloreto@yahoo.com', 'Gertrude S. Sanchez', 'south', 2147483647, 'zycast', 'rightmed', 9, 'Mr.T', '13', 'Cash', 12, 122, 1222, 'Paid', '2024-01-11 09:01:16'),
(39, 'errere@gmailcom', 'Gertrude S. Sanchez', 'south', 2147483647, 'zycast', 'rightmeda', 9, 'Mr.T', '13', 'online', 12, 122, 1222, 'Not YET PAID', '2024-01-11 09:01:16'),
(40, 'detic@gmail.com', 'Gertrude S. Sanchez', 'south', 2147483647, 'zycast', 'rightmed', 9, 'Mr.T', '13', 'Cash', 12, 122, 1222, 'paid', '2024-01-11 09:01:16'),
(41, 'detic@gmail.com', 'Gertrude S. Sanchez', 'south', 2147483647, 'zycast', 'rightmed', 9, 'Mr.T', '13', 'Cash', 12, 122, 1222, 'paid', '2024-01-11 09:03:58');

-- --------------------------------------------------------

--
-- Table structure for table `db2`
--

DROP TABLE IF EXISTS `db2`;
CREATE TABLE IF NOT EXISTS `db2` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(25) NOT NULL,
  `password` char(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `db2`
--

INSERT INTO `db2` (`id`, `username`, `password`) VALUES
(1, 'gg', 'g1'),
(2, '1', '1'),
(3, 'aa', 'aa'),
(4, 'rr', 'rr'),
(10, 'p', 'p');


-- --------------------------------------------------------

--
-- Table structure for table `pdb`
--

DROP TABLE IF EXISTS `pdb`;
CREATE TABLE IF NOT EXISTS `pdb` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user` varchar(15) NOT NULL,
  `password` char(255) NOT NULL,
  `reg_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user` (`user`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `pdb`
--

INSERT INTO `pdb` (`id`, `user`, `password`, `reg_date`) VALUES
(1, 'sir', 'santezzzzz', '2023-10-03 00:42:05'),
(2, 'gertrude', 'g', '2023-10-03 00:53:37'),
(10, 'yo', '$2y$10$wZCADzcfbkNiehZxbVDCZuwSSUhZUjotzLmFB9f4jLSQjFtngvta2', '2023-10-10 09:31:03'),
(3, 'JOHN', '$2y$10$op8gkyB2ZCjEeLNaDErVuOJGR1Zt15QI/13X/K7xlDP91RjMd2efe', '2023-10-03 00:56:23'),
(4, 'Gireth', '$2y$10$RAkMzbrQpCvYRQrYawrCu.uRPGh7ootUKdv4ZB3kaa1X5wtR2yA/W', '2023-10-03 00:56:50'),
(5, 'sirr', '$2y$10$/XA79IPG4JFRxYBmigOHd.aRZrYE.0R6E5Nd6LjZfyQfr/l39pmEO', '2023-10-03 00:57:14'),
(6, 'g', '$2y$10$wm61MESyWWYKkWKZZDP.8OLPCyOBb.sQtUArYqrKnf4qCzAHmBam.', '2023-10-07 15:57:12'),
(7, 't', '$2y$10$SyTXYifE.Nx08VPCgtC.8e1j5bMcXlpOUfMlwdACVNu1mqEtal5g6', '2023-10-08 19:16:12'),
(8, 'l', '$2y$10$qmNOXabtMhd/ea7qs3tLxOZ9bry4joRO4h2epwmrq3x2IZgP5dAI6', '2023-10-10 08:47:26'),
(9, 'lor', 'lorr', '2023-10-10 09:29:58'),
(11, 'gertttt', '$2y$10$PsyQd3m9hUecCZBlzJQUvOq/WGb5u7.JB/GwemrkJjWwpe4bXuMdu', '2023-10-10 09:31:47'),
(12, 'asd', '$2y$10$PhWxuQlL1MIONgiwyBDFCuzvC4/VrS.RAdAj8jVlFF/heprXFrBXW', '2023-10-10 11:48:49'),
(13, 'll', 'lll', '2023-10-10 20:44:22'),
(14, 'lormai', 'ceil', '2023-10-10 20:45:32'),
(15, 'q', 'q1', '2023-11-22 21:17:45'),
(16, '123', '1234', '2023-11-24 00:03:09'),
(17, 'ty', 'tyu', '2023-11-24 18:09:34');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(25) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`) VALUES
(1, 'g', 'g'),
(2, 'q', 'q'),
(8, 'ww', 'ww');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
