-- phpMyAdmin SQL Dump
-- version 5.1.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 02, 2024 at 06:38 PM
-- Server version: 5.7.24
-- PHP Version: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `online_shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(31) NOT NULL,
  `slug` varchar(31) NOT NULL,
  `count` int(11) NOT NULL,
  `image` varchar(127) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `count`, `image`, `description`) VALUES
(1, 'Electric household appliances', 'electric-household-appliances', 21, '/assets/img/shop/electrical-household.jpg', 'officia dolor ex fugiat commodo sunt tempor nisi proident consequat, aliquip pariatur esse.'),
(2, 'Laptop', 'laptop', 24, '/assets/img/shop/laptop.webp', 'ipsum officia fugiat pariatur do ea elit ex et volup excepteur duis aute,\r\ncommodo ad deserunt elit fugiat laborum nostrud amet incididunt magna id aliqua.'),
(3, 'Mobile', 'mobile', 24, '/assets/img/shop/mobile.jpg', 'liqua pariatur aute non magna aliquip ad id fugiat id voluptate laborum dolor ex ullamco anim irure adipisicing eu ullamco tempor exercitation pariatur tempor ea'),
(4, 'Grocery', 'grocery', 30, '/assets/img/shop/grocery.webp', 'veniam elit excepteur cupidatat reprehenderit occaecat amet consequat ut quis qui adipisicing deserunt et sint sint anim nulla dolor laboris tempor fugiat');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
