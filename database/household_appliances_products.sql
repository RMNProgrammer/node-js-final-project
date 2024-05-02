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
-- Table structure for table `household_appliances_products`
--

CREATE TABLE `household_appliances_products` (
  `id` int(11) NOT NULL,
  `name` varchar(127) NOT NULL,
  `image` varchar(127) NOT NULL,
  `height` float NOT NULL,
  `wide` float NOT NULL,
  `depth` float NOT NULL,
  `weight` float DEFAULT NULL,
  `capacity` int(11) DEFAULT NULL,
  `possibilities` varchar(4095) NOT NULL,
  `color` varchar(31) NOT NULL,
  `star` float NOT NULL,
  `category_id` int(11) NOT NULL DEFAULT '1',
  `price` varchar(31) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `household_appliances_products`
--

INSERT INTO `household_appliances_products` (`id`, `name`, `image`, `height`, `wide`, `depth`, `weight`, `capacity`, `possibilities`, `color`, `star`, `category_id`, `price`) VALUES
(1, 'Pakshuma PDA 3511 W dishwasher', '\\assets\\img\\products\\electrical_household\\1.webp', 85, 60, 60, 46, NULL, 'Child lock - The possibility of washing fruits and vegetables - With a delay system for washing up to 24 hours - Consumption of 10 liters of water per wash', 'white', 4.4, 1, '28605000'),
(2, 'G Plus dishwasher model GDW-M1463S', '\\assets\\img\\products\\electrical_household\\2.webp', 84.5, 60, 60, NULL, NULL, 'Quick wash - Consumption of 13 liters of water per wash', 'silver', 3.8, 1, '26360000'),
(3, 'Beko dishwasher model BDFN36641', '\\assets\\img\\products\\electrical_household\\3.webp', 86, 66, 66, 5.2, NULL, 'Child lock - Intelligent troubleshooting system', 'white', 4.2, 1, '36700000'),
(4, 'West Point dishwasher model WYG-15824.EC', '\\assets\\img\\products\\electrical_household\\4.webp', 83, 60, 60, NULL, NULL, 'It has Extra Drying technology - It has semi-wash technology with the ability to select the Alternative Wash basket', 'white', 2.3, 1, '38710000'),
(5, 'Harlem vacuum cleaner model HSV-501', '\\assets\\img\\products\\electrical_household\\5.webp', 48, 6, 9, 2.1, NULL, 'Washable filter and envelope - No bag - Ability to absorb liquids - Completely waterproof', 'red - purple - darkgreen', 0, 1, '2490000 - 2490000 - 2490000'),
(6, 'Pars Khazar vacuum cleaner model Turbo 2500WB', '\\assets\\img\\products\\electrical_household\\6.webp', 47, 27, 21, 5.4, NULL, 'Wire length 14 meters - With paper bag', 'gray', 4.3, 1, '8079000'),
(7, 'Saya vacuum cleaner model FOTUN', '\\assets\\img\\products\\electrical_household\\7.webp', 34, 28, 23, NULL, NULL, 'Wire length 8 meters - With paper bag', 'black - white', 4.2, 1, '3656000 - 3656000'),
(8, 'Pars Khazar juicer model VitaFruit', '\\assets\\img\\products\\electrical_household\\8.webp', 330, 320, 220, 6, NULL, 'Mill with the ability to grind materials up to 100 grams per time - Very low noise - Steel mill tank', 'white', 3.7, 1, '3679400'),
(9, 'Pars Khazar fruit juicer Avocado model', '\\assets\\img\\products\\electrical_household\\9.webp', 235, 240, 180, 0, NULL, 'Large pulp container to have more juice every time - Graduated juice pitcher - With rubber feet for more stability - All detachable parts for better washing - Special brush for washing - Large fruit inlet opening - With a collecting wire in the lower part of the device', 'black - white', 4, 1, '2416300 - 2416300'),
(10, 'DECENT 14 ft Depoint refrigerator and freezer', '\\assets\\img\\products\\electrical_household\\10.webp', 201, 65, 70, NULL, 396, 'It has 5 levels of refrigerator and 3 levels of freezer - No frost prevention system - Semi-automatic ice maker (water source)', 'white - silver', 4.2, 1, '21499000 - 21598000'),
(11, 'Emerson 17-foot refrigerator-freezer model TFH17T350', '\\assets\\img\\products\\electrical_household\\11.webp', 174, 67, 66, NULL, 355, 'It has 4 levels of refrigerator and 2 levels of freezer - Use of defrost to prevent frosting of the refrigerator', 'white - gray', 4.4, 1, '13705000 - 13602000'),
(12, 'Emerson 18-foot refrigerator and freezer model TFN18D', '\\assets\\img\\products\\electrical_household\\12.webp', 182, 67, 66, NULL, 470, 'It has 4 levels of refrigerator and 4 levels of freezer - Use of NoFrost to prevent frosting of the refrigerator', 'white', 3.9, 1, '16340000'),
(13, 'Side-by-side 30-foot X-vision refrigerator and freezer model TS666-AWD/ASD', '\\assets\\img\\products\\electrical_household\\13.webp', 176.8, 92, 73.5, 95, 597, 'It has 4 levels of refrigerator and 4 levels of freezer - Use of NoFrost to prevent frosting of the refrigerator - Child lock - Door open warning alarm', 'white - silver', 4.1, 1, '36900000 - 38300000'),
(14, 'Refrigerator 9 feet Eastcool hotel model 1919', '\\assets\\img\\products\\electrical_household\\14.webp', 108, 54, 56, NULL, 160, 'It has 3 levels of refrigerator and one level of freezer - Use of defrost to prevent frosting of the refrigerator', 'black - white', 4.1, 1, '8650000 - 8655000'),
(15, 'Refrigerator 7 feet West Point model SCB-1755.BW', '\\assets\\img\\products\\electrical_household\\15.webp', 87, 55, 62, 30000, NULL, 'It has 2 levels of refrigerator - No frost prevention system - Warning of the door being left open - With a large drawer for storing fruits and vegetables', 'white - silver', 4.2, 1, '12140000 - 12140000'),
(16, 'G Plus smart LED TV model GTV-43PH622N', '\\assets\\img\\products\\electrical_household\\16.webp', 61.1, 96.3, 22.7, NULL, NULL, 'Flat screen - 43 inch screen - Wifi, HDMI and USB communication technologies - Optical output sound - Image noise reduction feature - Android operating system support', 'No color', 4.4, 1, '12600000'),
(17, 'Daewoo smart LED TV model DSL-50SU1720', '\\assets\\img\\products\\electrical_household\\17.webp', 70, 111.2, 22.8, NULL, NULL, 'Flat screen - 50 inch screen - Bluetooth communication technologies, HDMI port and LAN - Image noise reduction capability - TV program recording capability - Wireless connection capability', 'No color', 4.5, 1, '19300000'),
(18, 'Sam Electronics smart LED TV model UA65TU8500TH', '\\assets\\img\\products\\electrical_household\\18.webp', 89.3, 143.01, 34.04, 27, NULL, 'Flat screen - 65 inch screen - Bluetooth, WiFi, HDMI port, USB and LAN communication technologies - Android operating system support - Smart interface', 'No color', 4.8, 1, '34000000'),
(19, 'Sony smart LED TV model 65X80K', '\\assets\\img\\products\\electrical_household\\19.webp', 90.5, 145.2, 33.8, 23, NULL, 'Flat screen - 65 inch screen - Bluetooth, WiFi, HDMI port, USB and LAN communication technologies - Support for PlayStation 5 console capabilities - Support for Android operating system - Smart interface', 'No color', 4.5, 1, '64800000'),
(20, 'G Plus smart LED TV model GTV-55RU722N', '\\assets\\img\\products\\electrical_household\\20.webp', 77.4, 122.6, 8.9, NULL, NULL, 'Flat screen - 55 inch screen - Bluetooth, WiFi, HDMI port, USB and LAN communication technologies - Optical output sound - Image noise reduction capability - HDR feature support - Android operating system support - Smart interface', 'No color', 4.5, 1, '23000000'),
(21, 'SSD-75SK700UD Snowva LED Smart TV', '\\assets\\img\\products\\electrical_household\\21.webp', 102.4, 167.4, 35.3, 28, NULL, 'Flat screen - 55 inch screen - Bluetooth, WiFi, HDMI port, USB and LAN communication technologies - Android operating system support - Smart interface', 'No color', 4.8, 1, '54800000');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `household_appliances_products`
--
ALTER TABLE `household_appliances_products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `household_appliances_products`
--
ALTER TABLE `household_appliances_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
