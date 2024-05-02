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
-- Table structure for table `laptop_products`
--

CREATE TABLE `laptop_products` (
  `id` int(11) NOT NULL,
  `name` varchar(127) NOT NULL,
  `image` varchar(127) NOT NULL,
  `length` float NOT NULL,
  `width` float NOT NULL,
  `height` float NOT NULL,
  `weight` float NOT NULL,
  `CPU_model` varchar(31) NOT NULL,
  `CPU_description` varchar(255) DEFAULT NULL,
  `cache_memory` varchar(15) NOT NULL,
  `RAM_memory` int(11) NOT NULL,
  `internal_memory` varchar(15) NOT NULL,
  `internal_memory_type` varchar(7) NOT NULL,
  `display_size` float NOT NULL,
  `communication_ports` varchar(127) NOT NULL,
  `batery_charging` varchar(63) NOT NULL,
  `operating_system` varchar(127) NOT NULL,
  `features` varchar(511) DEFAULT NULL,
  `description` varchar(511) NOT NULL,
  `category_id` int(11) NOT NULL DEFAULT '2',
  `color` varchar(31) NOT NULL,
  `star` float NOT NULL,
  `price` varchar(31) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `laptop_products`
--

INSERT INTO `laptop_products` (`id`, `name`, `image`, `length`, `width`, `height`, `weight`, `CPU_model`, `CPU_description`, `cache_memory`, `RAM_memory`, `internal_memory`, `internal_memory_type`, `display_size`, `communication_ports`, `batery_charging`, `operating_system`, `features`, `description`, `category_id`, `color`, `star`, `price`) VALUES
(1, 'Apple MacBook Air MQKW3 M2 2023 laptop', '\\assets\\img\\products\\laptop\\Apple MacBook Air MQKW3 M2 2023.webp', 34.04, 23.76, 1.15, 1.51, 'Apple M2 8-Cores', '8 processing cores / Neural Engine processing unit with 16 cores', '20 MB', 8, '256 GB', 'SSD', 15.3, 'USB Type-C, WiFi, Bluetooth, Thunderbult 4', 'up to 15 hours', 'Apple Mac OS', 'Fingerprint sensor - Backlit keyboard - Webcam', 'No separate graphic memory - No optical drive - Force Touch support - Comes with charger', 2, 'navy blue', 3.6, '75890000'),
(2, 'Apple MacBook Air MGN93 2020 laptop', '\\assets\\img\\products\\laptop\\Apple MacBook Air MGN93 2020.webp', 30.41, 21.24, 1.61, 1.29, 'Apple M1 Chip', NULL, '12 MB', 8, '256 GB', 'SSD', 13.3, 'USB 4.0', 'up to 15 hours', 'Apple Mac OS', 'webcam', 'No separate graphic memory - No optical drive - Comes with charger', 2, 'silver', 4.2, '55290000'),
(3, 'Apple MacBook Pro MRX33 laptop', '\\assets\\img\\products\\laptop\\Apple MacBook Pro MRX33.webp', 31.26, 12.31, 1.55, 1.61, 'Apple M3 Pro', '11 cores', 'Does not have', 18, '512 GB', 'SSD', 14.2, 'WiFi, HDMI, Memory card slot, Bluetooth, USB Type-C, Thunderbult 4', 'up to 18 hours', 'Apple Mac OS', 'Fingerprint sensor - Backlit keyboard - Webcam', 'No separate graphic memory - No optical drive - Comes with charger', 2, 'black', 3.7, '12799000'),
(4, 'Apple MacBook Pro MPHF3 2023 laptop', '\\assets\\img\\products\\laptop\\Apple MacBook Pro MPHF3 2023.webp', 31.26, 22.12, 1.55, 1.6, 'Apple M2 Pro', '12 cores (8 efficient processing cores and 4 performance cores)', '12 MB', 16, '1 TB', 'SSD', 14.2, 'USB, Wi-Fi, Memory card slot, HDMI, Bluetooth, Thunderbolt 4', 'Unknown', 'Apple Mac OS', 'Fingerprint scanner - Webcam - Speaker', 'No separate graphic memory - No optical drive - Force Touch support - Comes with charger', 2, 'gray', 0, '139000000'),
(5, 'Acer Aspire 3 A315-59G-56SJ-i5 laptop', '\\assets\\img\\products\\laptop\\Acer Aspire 3 A315-59G-56SJ-i5.webp', 36.34, 23.84, 1.99, 1.78, 'Intel 1235U', '10 cores (2 Performance cores and 8 Efficient cores) / 12 threads / with integrated Intel Iris Xe graphics processor', '12 MB', 8, '512 GB', 'SSD', 15.6, 'WiFi, LAN, HDMI, Memory card slot, Bluetooth, USB', '1 to 3 hours', 'No operating system', NULL, 'Ability to upgrade memory - No optical drive - With charger', 2, 'silver', 0, '31800000'),
(6, 'Acer Aspire 5 A515-57G-77JZ-i7 laptop', '\\assets\\img\\products\\laptop\\Acer Aspire 5 A515-57G-77JZ-i7.webp', 36.32, 23.78, 1.77, 1.8, 'Intel 1260P', 'Intel 12th generation processor / 12 cores (4 Performance cores and 8 Efficient cores) / Number of threads: 16', '18 MB', 8, '512 GB', 'SSD', 15.6, 'WiFi, LAN, HDMI, Memory card slot, Bluetooth, USB, USB Type-C, Thunderbult 4', '1 to 3 hours', 'No operating system', 'Matte screen - Fingerprint sensor - Backlit keyboard - Webcam', 'Ability to upgrade memory - No optical drive - Support for multiple touches at the same time - Comes with a charger', 2, 'gray', 2.5, '46999000'),
(7, 'Acer Aspire 7 A715-76G-56U2-i5 laptop', '\\assets\\img\\products\\laptop\\Acer Aspire 7 A715-76G-56U2-i5.webp', 36.23, 23.74, 1.99, 2.1, 'Intel 12450H', 'Intel 12th generation / 8 cores (4 Performance cores and 4 Efficient cores) / 12 threads / integrated graphics processor Intel UHD Graphics', '12 MB', 8, '512 GB', 'SSD', 15.6, 'USB Type-C, Wi-Fi, LAN, HDMI, Bluetooth, USB, Thunderbolt 4', 'Up to 8 hours', 'No operating system', 'Matte screen - Fingerprint scanner - Backlit keyboard - Webcam', 'Ability to upgrade memory - No optical drive - Support for multiple touches at the same time - For games', 2, 'black', 0, '39500000'),
(8, 'Acer Nitro V 15 ANV15-51-52 AM-i5 laptop', '\\assets\\img\\products\\laptop\\Acer Nitro V 15 ANV15-51-52 AM-i5.webp', 36.23, 23.99, 2.69, 2.11, 'Intel 13420H', 'Intel 13th generation / 8 cores (4 Performance cores and 4 Efficient cores) / 12 cores / Intel UHD Graphics integrated graphics processor', '12 MB', 8, '512 GB', 'SSD', 15.6, 'WiFi, LAN, HDMI, Bluetooth, USB, USB Type-C, Thunderbult 4', 'Unknown', 'No operating system', 'Matte screen - Backlit keyboard - Webcam', 'For the game - No optical drive - Support for multiple touches at the same time - Comes with a charger **', 2, 'black', 0, '47185000'),
(9, 'Asus Vivobook 16 R1605ZA-MB120-i7 laptop', '\\assets\\img\\products\\laptop\\Asus Vivobook 16 R1605ZA-MB120-i7.webp', 35.87, 24.95, 1.99, 1.88, 'Intel 1255U', 'Intel 12th generation / 10 cores / 12 threads', '12 MB', 16, '512 GB', 'SSD', 16, 'WiFi, HDMI, Bluetooth, USB, USB Type-C', '2 to 4 hours', 'No operating system', 'Matte screen - Webcam', 'No separate graphic memory - No optical drive - Support for multiple touches at the same time - Memory upgradeability - Comes with a charger', 2, 'silver', 4.4, '36290000'),
(10, 'Asus X515MA-BR473WS-Celeron laptop - customized', '\\assets\\img\\products\\laptop\\Asus X515MA-BR473WS-Celeron.webp', 36.02, 23.49, 1.99, 1.8, 'Intel N4020', 'Dual Core / Dual Thread', '4 MB', 8, '256 GB', 'SSD', 15.6, 'WiFi, HDMI, Bluetooth, USB, USB Type-C', 'Unknown', 'Microsoft Windows 11', 'Matte screen - Webcam', 'No separate graphic memory - No optical drive - Support for multiple simultaneous touches - Memory upgradeability - Comes with charger, mouse, Farsi keyboard sticker and antivirus', 2, 'silver', 4, '15400000'),
(11, 'Asus Zenbook 14X OLED Q410VA-i5 Touch laptop', '\\assets\\img\\products\\laptop\\Asus Zenbook 14X OLED Q410VA-i5.webp', 32.18, 22.56, 1.69, 1.5, 'Intel 13500H', 'Intel 13th generation / 12 cores (4 Performance cores and 8 Efficient cores) / 16 threads', '18 MB', 8, '512 GB', 'SSD', 14.5, 'WiFi, HDMI, Memory card slot, Bluetooth, USB, USB Type-C, Thunderbult 4', '4 to 7 hours', 'Microsoft Windows 11', 'Touch screen - Fingerprint sensor - Backlit keyboard - Webcam', 'No discrete graphics memory - No optical drive - Supports multiple simultaneous touches - Comes with charger', 2, 'gray', 4.5, '41949000'),
(12, 'Asus ROG Flow Z13 GZ301ZE-i9 laptop', '\\assets\\img\\products\\laptop\\Asus ROG Flow Z13 GZ301ZE-i9.webp', 30.2, 20.4, 1.2, 1.18, 'Intel 12900H', 'Intel 12th generation / 14 cores (6 Performance cores and 8 Efficient cores) / 20 threads', '24 MB', 16, '1 TB', 'SSD', 13.4, 'WiFi, Memory card slot, Bluetooth, USB, USB Type-C, Thunderbult 4', '1 to 3 hours', 'Microsoft Windows 11', 'Touch screen - Fingerprint sensor - Backlit keyboard - Webcam', 'No optical drive - Supports multiple simultaneous touches - Comes with charger', 2, 'black', 0, '83233360'),
(13, 'HP Pavilion x360 14t EK1000-i7 laptop', '\\assets\\img\\products\\laptop\\HP Pavilion x360 14t EK1000-i7.webp', 32.2, 21, 1.7, 1.5, 'Intel 1355U', '10 cores (2 Performance cores and 8 Efficient cores) / 12 threads', '12 MB', 16, '1 TB', 'SSD', 14, 'WiFi, HDMI, Memory card slot, Bluetooth, USB, USB Type-C, Thunderbult 4', 'Unknown', 'Microsoft Windows 11', 'Touch screen - Backlit keyboard - 360 degree rotation - Webcam', 'No separate graphic memory - No optical drive - Support for five simultaneous touches - Upgradable memory up to 4 TB - Comes with HP Tilt Pen, charging cable and additional series of pens and laptop charger', 2, 'silver', 4, '63190000'),
(14, 'HP Victus 15t FA1093dx-i5 laptop', '\\assets\\img\\products\\laptop\\HP Victus 15t FA1093dx-i5.webp', 35.5, 25.4, 2.3, 2.2, 'Intel 13420H', 'Intel 13th generation / 8 cores (4 efficient cores and 4 performance cores) / 12 threads / Intel UHD Graphics graphics processor', '12 MB', 8, '512 GB', 'SSD', 15.6, 'WiFi, HDMI, Memory card slot, Bluetooth, USB, USB Type-C', 'Unknown', 'Microsoft Windows 11 - Home version', 'Matte screen - ذacklit keyboard - Webcam', 'Ability to upgrade memory - Support for multiple touches at the same time - No optical drive - Fast charging (50% in half an hour) - Comes with charger', 2, 'navy blue', 5, '46660000'),
(15, 'HP Victus 16 Gaming R0046-i7 laptop', '\\assets\\img\\products\\laptop\\HP Victus 16 Gaming R0046-i7.webp', 36.9, 25.9, 2.3, 2.3, 'Intel 13700H', 'Intel 13th generation / number of cores: 14 (6 performance cores and 8 efficient cores) / number of threads: 20 / with integrated Iris Xe graphics processor', '24 MB', 16, '1 TB', 'SSD', 16.1, 'WiFi, HDMI, Bluetooth, USB, USB Type-C', 'Unknown', 'No operating system - Support all Windows 11 features', 'Matte screen - Backlit keyboard - Webcam', 'Ability to upgrade memory - Support five simultaneous touches if the corresponding program is installed - No optical drive - Fast charging (50% in half an hour) - Comes with a smart adapter', 2, 'gray', 0, '79990000'),
(16, 'HP ENVY x360 15t-fe000-i7 laptop', '\\assets\\img\\products\\laptop\\HP ENVY x360 15t-fe000-i7.webp', 35.7, 22.8, 1.8, 1.9, 'Intel 1355U', '10 cores (8 efficient cores and 2 performance cores) / 12 threads', '12 MB', 16, '1 TB', 'SSD', 15.6, 'USB Type-Cو Memory card slot, Wi-Fi, HDMI, Bluetooth, USB, Thunderbolt 4', 'Unknown', 'Microsoft Windows 11', 'Ability to rotate 360 ​​degrees - Touch screen - Backlit keyboard - Webcam', 'Support for multiple touches at the same time - No optical drive - Fast charging (50% in half an hour) - Comes with a smart adapter and Along with HP USB-C Rechargeable MPP2.0 Tilt Pen', 2, 'silver', 4, '79190000'),
(17, 'Lenovo Ideapad 1-Celeron laptop', '\\assets\\img\\products\\laptop\\Lenovo Ideapad 1-Celeron.webp', 32.5, 21.6, 1.99, 1.5, 'Intel N4020', NULL, '4 MB', 4, '256 GB', 'SSD', 15.6, 'WiFi, HDMI, Memory card slot, Bluetooth, USB, USB Type-C', '1 to 3 hours', 'No operating system', 'Matte screen - Webcam', 'No separate graphics memory - Support for multiple simultaneous touches - No optical drive - Comes with charger', 2, 'gray', 4.4, '11500000'),
(18, 'Lenovo IdeaPad Slim 3 15IRU8-i3 laptop', '\\assets\\img\\products\\laptop\\Lenovo IdeaPad Slim 3.webp', 35.9, 23.5, 1.8, 1.62, 'Intel 1305U', 'Intel 13th generation / 5 cores (1 Performance core and 4 Efficient cores) / 6 threads', '10 MB', 8, '256 GB', 'SSD', 15.6, 'WiFi, HDMI, Memory card slot, Bluetooth, USB, USB Type-C, Thunderbult 4', 'Two hours on with fifteen minutes of charging', 'No operating system', 'Matte screen - Webcam', 'No discrete graphics card - No optical drive - Comes with charger adapter', 2, 'gray', 4.4, '19290000'),
(19, 'Lenovo Legion 5 15IAH7-i7 laptop', '\\assets\\img\\products\\laptop\\Lenovo Legion 5 15IAH7-i7.webp', 35.88, 26.24, 2, 2.35, 'Intel 12700H', '14 cores (6 Performance cores and 8 Efficiency cores) and 20 threads / Performance core frequency equivalent to 2.3 to 4.7 GHz / Efficiency core frequency equivalent to 1.7 to 3.5 GHz / Intel Smart Cache', '24 MB', 16, '1 TB', 'SSD', 15.6, 'WiFi, LAN, HDMI, Bluetooth, USB, Thunderbult 4', '2 to 4 hours', 'No operating system - Supports all features of Windows 10 and 11', 'Matte screen - Backlit keyboard - Webcam', 'No optical drive - Upgradable memory up to 2 TB - Support for multiple simultaneous touches - Comes with charger', 2, 'gray', 3.4, '70200000'),
(20, 'Lenovo ThinkBook 15 G2 ITL-i5 laptop - customized', '\\assets\\img\\products\\laptop\\Lenovo ThinkBook 15 G2 ITL-i5.webp', 35.7, 23.5, 1.9, 1.75, 'Intel 1135G7', '4 cores / 8 threads / with Intel Iris Xe integrated graphics processor', '8 MB', 16, '1.5 TB', 'Hybrid', 15.6, 'WiFi, LAN, HDMI, Memory card slot, Bluetooth, USB', 'Unknown', 'No operating system', 'Matte screen - Webcam', 'No optical drive - Supports multiple simultaneous touches - Comes with charger', 2, 'gray', 4.8, '35200000'),
(21, 'MSI Modern 15 H - B13M-i5 laptop', '\\assets\\img\\products\\laptop\\MSI Modern 15 H - B13M-i5.webp', 35.9, 24.1, 1.99, 1.7, 'Intel 13420H', 'Intel 13th generation / 12 cores (4 Performance cores and 8 Efficient cores) / 16 threads', '12 MB', 16, '1 TB', 'SSD', 15.6, 'WiFi, HDMI, Memory card slot, Bluetooth, USB, USB Type-C', 'Unknown', 'No operating system', 'Matte screen - Backlit keyboard - Webcam', 'No discrete graphics memory - Support for multiple simultaneous touches - No optical drive - Comes with a charger adapter', 2, 'black', 0, '40241000'),
(22, 'MSI Modern 15 - B12M-A laptop', '\\assets\\img\\products\\laptop\\MSI Modern 15 - B12M-A.webp', 35.9, 24.1, 1.99, 1.74, 'Intel 1255U', NULL, '12 MB', 16, '512 GB', 'SSD', 15.6, 'WiFi, HDMI, Memory card slot, Bluetooth, USB', '2 to 4 hours', 'No operating system', 'Backlit keyboard - Speaker - Webcam', 'No discrete graphics memory - Support for multiple simultaneous touches - No optical drive - Comes with a charger adapter', 2, 'black', 4.7, '42810000'),
(23, 'MSI GL66-12UGK laptop', '\\assets\\img\\products\\laptop\\MSI GL66-12UGK.webp', 35.9, 25.9, 2.39, 2.25, 'Intel 12700H', '6 Performance cores and 8 Efficient cores, 20 strings', '24 MB', 16, '1 TB', 'SSD', 15.6, 'USB, LAN, Wi-Fi, HDMI, Bluetooth', 'Unknown', 'No operating system', 'Matte screen - Backlit keyboard - Webcam', 'No optical drive - Simultaneous multi-touch capability - Comes with adapter and backpack', 2, 'gray', 0, '99114000'),
(24, 'MSI Katana 15 B13VFK-i7 laptop', '\\assets\\img\\products\\laptop\\MSI Katana 15 B13VFK-i7.webp', 35.9, 25.9, 2.49, 2.25, 'Intel 13620H', 'Intel 13th generation / 10 cores (six Performance cores, four Efficient cores) / 16 threads', '24 MB', 16, '1 TB', 'SSD', 15.6, 'USB, LAN, Wi-Fi, HDMI, Bluetooth, USB Type-C', 'Unknown', 'No operating system', 'Matte screen - Backlit keyboard - Webcam', 'No optical drive - Support for multiple simultaneous touches - For gaming - Comes with a charger adapter', 2, 'black', 5, '80325000');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `laptop_products`
--
ALTER TABLE `laptop_products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `laptop_products`
--
ALTER TABLE `laptop_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
