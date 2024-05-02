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
-- Table structure for table `mobile_products`
--

CREATE TABLE `mobile_products` (
  `id` int(11) NOT NULL,
  `name` varchar(127) NOT NULL,
  `image` varchar(127) NOT NULL,
  `length` float NOT NULL,
  `width` float NOT NULL,
  `height` float NOT NULL,
  `weight` float NOT NULL,
  `internal_memory` varchar(15) NOT NULL,
  `RAM_amount` varchar(15) NOT NULL,
  `CPU_frequency` varchar(15) NOT NULL,
  `camera_resolution` varchar(31) NOT NULL,
  `SIM_size` varchar(31) NOT NULL,
  `network_details` varchar(255) DEFAULT NULL,
  `OS_version` varchar(15) NOT NULL,
  `features` varchar(511) DEFAULT NULL,
  `description` varchar(511) NOT NULL,
  `category_id` int(11) NOT NULL DEFAULT '3',
  `color` varchar(31) NOT NULL,
  `star` float NOT NULL,
  `price` varchar(63) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mobile_products`
--

INSERT INTO `mobile_products` (`id`, `name`, `image`, `length`, `width`, `height`, `weight`, `internal_memory`, `RAM_amount`, `CPU_frequency`, `camera_resolution`, `SIM_size`, `network_details`, `OS_version`, `features`, `description`, `category_id`, `color`, `star`, `price`) VALUES
(1, 'Xiaomi Poco M5 smartphone', '\\assets\\img\\products\\mobile\\Xiaomi Poco M5.webp', 16.4, 7.61, 0.89, 201, '128 GB', '6 GB', '2.0 - 2.2 GHZ', '50 MP', 'Nano', 'NFC, Infrared, WiFi, Radio and Bluetooth', 'Android 12', 'Equipped with a fingerprint sensor - Suitable for photography - Suitable for games - With infrared', 'Separate slot for memory card - Support for microSD memory card - LED flash - Two SIM cards', 3, 'black', 4.4, '6200000'),
(2, 'Xiaomi Poco F5 smartphone', '\\assets\\img\\products\\mobile\\Xiaomi Poco F5.webp', 16.11, 7.5, 0.79, 181, '256 GB', '12 GB', '2.49 - 2.91 GHZ', '64 MP', 'Nano', 'QZSS, WiFi, Bluetooth', 'Android 13', 'Equipped with a fingerprint sensor - Suitable for photography - Suitable for games', 'Lack of memory card support - LED flash - Two SIM cards', 3, 'black - white - blue', 4.5, '18200000 - 18900000 - 17900000'),
(3, 'Xiaomi Redmi 13C NFC smartphone', '\\assets\\img\\products\\mobile\\Xiaomi Redmi 13C NFC.webp', 16.8, 7.8, 0.81, 192, '128 GB', '6 GB', '1.8 - 2.0 GHZ', '50 MP', 'Nano', 'NFC, WiFi, Bluetooth', 'Android 13', 'Equipped with a fingerprint sensor - Suitable for photography', 'Separate slot for memory card - Support for microSD memory card - LED flash - Two SIM cards', 3, 'black - blue', 4.2, '5950000 - 5950000'),
(4, 'Xiaomi Redmi Note 12S smartphone', '\\assets\\img\\products\\mobile\\Xiaomi Redmi Note 12S.webp', 16, 7.4, 0.81, 176, '256 GB', '8 GB', '2.0 -2.05 GHZ', '108 MP', 'Nano', 'WiFi, Bluetooth', 'Android 13', 'Equipped with a fingerprint sensor - Suitable for photography', 'Separate slot for memory card - LED flash Two SIM cards - Comes with charger', 3, 'black - blue - green', 4.5, '8400000 - 8350000 - 8350000'),
(5, 'Xiaomi Redmi Note 13 Pro Plus 5G smartphone', '\\assets\\img\\products\\mobile\\Xiaomi Redmi Note 13 Pro Plus 5G.webp', 16.14, 7.42, 0.89, 204.5, '512 GB', '12 GB', '2.0 - 2.8 GHZ', '200 MP', 'Nano & eSIM', NULL, 'Android 13', 'Suitable for photography', 'Lack of memory card support - LED flash - Support for two nano SIM cards at the same time - Comes with a charger', 3, 'black - purple', 4.2, '23230000 - 23140000'),
(6, 'Samsung Galaxy A14 smartphone', '\\assets\\img\\products\\mobile\\Samsung Galaxy A14.webp', 16.77, 7.8, 0.91, 201, '64 GB', '4 GB', 'Does not have', '50 MP', 'Nano', 'QZSS, WiFi, Bluetooth', 'Android 13', 'Equipped with a fingerprint sensor - Suitable for photography', 'Separate slot for memory card - Support for microSD memory card - LED flash - Two SIM cards', 3, 'black - silver - green', 4.4, '6180000 - 6370000 - 6400000'),
(7, 'Samsung Galaxy A15 smartphone', '\\assets\\img\\products\\mobile\\Samsung Galaxy A15.webp', 16.01, 7.68, 0.84, 200, '128 GB', '4 GB', '2.0 - 2.2 GHZ', '50 MP', 'Nano', 'WiFi, Bluetooth', 'Android 14', 'Equipped with a fingerprint sensor - Suitable for photography', 'MicroSD memory card support - Shared slot with the second SIM card - LED flash - Comes with a USB-C cable', 3, 'yellow - navy - lightblue', 4.5, '6060000 - 6120000 - 6120000'),
(8, 'Samsung Galaxy A24 4G smartphone', '\\assets\\img\\products\\mobile\\Samsung Galaxy A24 4G.webp', 16.21, 7.76, 0.83, 195, '128 GB', '6 GB', '2.0 - 2.2 GHZ', '50 MP', 'Nano', 'QZSS, WiFi, Bluetooth', 'Android 13', 'Equipped with a fingerprint sensor - Suitable for photography', 'Separate slot for memory card - LED flash - Two SIM cards', 3, 'blue - green', 4.4, '8860000 - 8860000'),
(9, 'Samsung Galaxy A54 5G smartphone', '\\assets\\img\\products\\mobile\\Samsung Galaxy A54 5G.webp', 15.82, 7.67, 0.82, 202, '256 GB', '8 GB', '2.0 - 2.4 GHZ', '50 MP', 'Nano', 'WiFi and Bluetooth', 'Android 13', 'Equipped with a fingerprint sensor - Water resistant - Suitable for games - Suitable for photos', 'Common slot with SIM card - MicroSD memory card support - LED flash - Dual SIM card', 3, 'black - white', 4.5, '17745000 - 17915000'),
(10, 'Samsung Galaxy M04 smartphone', '\\assets\\img\\products\\mobile\\Samsung Galaxy M04.webp', 16.42, 7.59, 0.91, 188, '64 GB', '4 GB', '1.8 - 2.35 GHZ', '13 MP', 'Nano', 'WiFi and Bluetooth', 'Android 12', NULL, 'Separate slot for memory card - Support for microSD memory card - LED flash - Two SIM cards - With charger', 3, 'blue - green', 4.5, '4686000 - 4686000'),
(11, 'Nokia G21 TA-1418 smartphone', '\\assets\\img\\products\\mobile\\Nokia G21 TA-1418.webp', 16.46, 7.59, 0.86, 190, '128 GB', '6 GB', '1.6 GHZ', '50 MP', 'Nano', 'WiFi, Bluetooth and Radio', 'Android 11', 'Phablet - Equipped with a fingerprint sensor - Suitable for photography', 'Separate slot for memory card - Support for microSD memory card - LED flash - Two SIM cards', 3, 'brown - darkblue', 4.3, '5309000 - 5319000'),
(12, 'Nokia G11 Plus smartphone', '\\assets\\img\\products\\mobile\\Nokia G11 Plus.webp', 16.48, 7.59, 0.86, 192, '64 GB', '4 GB', '1.6 GHZ', '50 MP', 'Nano', 'WiFi and Bluetooth', 'Android 12', 'Equipped with a fingerprint sensor - Water splash resistance', 'MicroSD memory card support - LED flash - Two SIM cards', 3, 'blue - grey', 3.9, '3799000 - 3849000'),
(13, 'Nokia mobile phone model 125 TA 1253 DS FA', '\\assets\\img\\products\\mobile\\Nokia 125 TA 1253 DS FA.webp', 13.2, 5.05, 1.5, 91.3, '4 MB', 'Does not have', 'Does not have', 'No camera', 'Mini', 'Radio', 'Does not have', 'Farsi keyboard - Replaceable battery', 'It has a flashlight - The possibility of storing 2000 contacts - Two SIM cards - With a charger', 3, 'black - white', 4.1, '2090000 - 2100000'),
(14, 'Nokia 5710 XpressAudio mobile phone', '\\assets\\img\\products\\mobile\\Nokia 5710 XpressAudio.webp', 13.89, 5.77, 1.62, 129.1, '128 MB', 'Does not have', '1 GHZ', '0.3 MP', 'Nano', 'Radio and bluetooth', 'Does not have', 'Equipped with wireless headphones - Replaceable battery', 'Supports microSD memory card - LED flash - Two SIM cards - Comes with a charger', 3, 'black - white', 4.1, '2599000 - 2609000'),
(15, 'Nokia mobile phone model 2017 3310 FA', '\\assets\\img\\products\\mobile\\Nokia 3310 2017 FA.webp', 11.56, 5.1, 1.28, 79, '16 MB', 'Does not have', 'Does not have', '2 MP', 'Micro', 'EDGE, Radio and Bluetooth', 'Does not have', 'Has a keyboard - Farsi keyboard - Video recording - Classic', 'Has Persian menu - Possibility to store 200 contacts - MicroSD memory card support - LED flash - Two SIM cards - Comes with charger', 3, 'darkblue', 4.1, '3499000'),
(16, 'Nokia mobile phone model 150 2023', '\\assets\\img\\products\\mobile\\Nokia 150 2023.webp', 13.1, 5.06, 1.52, 106.3, 'Does not have', 'Does not have', 'Does not have', 'VGA', 'Mini', NULL, 'Does not have', 'Classic', 'Supports microSD memory card - Two SIM cards - Comes with a charger', 3, 'black - blue', 4.5, '2749000 - 2749000'),
(17, 'Apple iPhone 11 smartphone', '\\assets\\img\\products\\mobile\\Apple iPhone 11.webp', 15.09, 7.57, 0.83, 194, '128 GB', '4 GB', '1.8 - 2.65 GHZ', '12 MP', 'Nano', 'GPRS, EDGE, NFC, QZSS, WiFi, Bluetooth', 'iOS 13', 'Water resistant - Suitable for photography - Suitable for games - Equipped with face recognition sensor', 'Lack of memory card support - Lightning cable without charger adapter - Single SIM card', 3, 'black', 4.4, '33499000'),
(18, 'Apple iPhone 13 CH smartphone - Not Active', '\\assets\\img\\products\\mobile\\Apple iPhone 13 CH.webp', 14.67, 7.15, 0.77, 174, '256 GB', '4 GB', 'Unknown', '12 MP', 'Nano', 'GPRS, NFC, WiFi, Bluetooth', 'iOS 15', 'Water resistant - Has a resistant body - Design suitable for women - Suitable for photography - Suitable for playing game - Equipped with face recognition sensor', 'Dual SIM cards - No memory card support - Dual LED and Dual Tone LED flash', 3, 'black - white - blue - pink', 4.4, '54000000 - 54000000 - 53200000 - 54000000'),
(19, 'Honor X5 Plus smartphone', '\\assets\\img\\products\\mobile\\Honor X5 Plus.webp', 16.33, 7.51, 0.84, 188, '64 GB', '4 GB', '1.6 - 2.2 GHZ', '50 MP', '1.6 - 2.2 GHZ', 'WiFi, Bluetooth', 'Andorid 13', 'Equipped with a fingerprint sensor', 'Support for microSD memory card - LED flash - Two SIM cards - With charger', 3, 'black - turquoise', 4.6, '4315000 - 4289000'),
(20, 'Honor X6 smartphone', '\\assets\\img\\products\\mobile\\HONOR X6.webp', 16.37, 7.51, 0.87, 194, '64 GB', '4 GB', '1.5 - 2.0 GHZ', '50 MP', 'Nano', 'WiFi and Bluetooth', 'Android 12', 'Equipped with a fingerprint sensor - Suitable for photography', 'MicroSD memory card support - LED flash - Two SIM cards - With USB-C cable charger', 3, 'silver', 4.5, '4399000'),
(21, 'Honor X7 smartphone', '\\assets\\img\\products\\mobile\\HONOR X7.webp', 16.76, 7.72, 0.86, 198, '128 GB', '4 GB', '1.9 - 2.4 GHZ', '48 MP', 'Nano', 'WiFi and Bluetooth', 'Android 11', 'Equipped with a fingerprint sensor - Suitable for gaming - Suitable for photography', 'MicroSD memory card support - LED flash - Two SIM cards', 3, 'blue', 4.3, '6099000'),
(22, 'Honor X9b smartphone', '\\assets\\img\\products\\mobile\\HONOR X9b.webp', 16.36, 7.55, 0.8, 185, '256 GB', '12 GB', '1.8 - 2.2 GHZ', '108 MP', 'Nano', 'GPRS, EDGE, WiFi, Bluetooth', 'Android 13', 'Equipped with a fingerprint sensor - Suitable for gaming - Suitable for photography', 'No memory card support - LED flash - Comes with charger and USB cable', 3, 'black - green', 4.7, '15999000'),
(23, 'Honor smartphone model 90', '\\assets\\img\\products\\mobile\\HONOR 90.webp', 16.19, 7.41, 0.78, 183, '256 GB', '8 GB', '2.36 - 2.5 GHZ', '200 MP', 'Nano', 'QZSS, WiFi and Bluetooth', 'Android 13', 'Equipped with a fingerprint sensor - Suitable for gaming - Suitable for photography', 'Lack of memory card support - LED flash - Dual SIM cards - Comes with USB-C cable charger', 3, 'green - silver', 4.6, '18955000 - 18949000'),
(24, 'Daria smartphone bond 5G model', '\\assets\\img\\products\\mobile\\Daria bond 5G.webp', 16.3, 7.4, 0.8, 210, '256 GB', '8 GB', '2.0 - 2.6 GHZ', '50 MP', 'Nano', 'NFC, WiFi and Bluetooth', 'Android 14', 'Equipped with a fingerprint sensor - Suitable for photography', 'No memory card support - Two SIM cards - USB-C cable - No charger adapter', 3, 'black - green - silver', 4.4, '7779000 - 7898000 - 7999000');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mobile_products`
--
ALTER TABLE `mobile_products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `mobile_products`
--
ALTER TABLE `mobile_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
