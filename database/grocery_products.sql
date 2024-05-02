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
-- Table structure for table `grocery_products`
--

CREATE TABLE `grocery_products` (
  `id` int(11) NOT NULL,
  `name` varchar(127) NOT NULL,
  `image` varchar(127) NOT NULL,
  `weight` varchar(63) NOT NULL,
  `description` varchar(511) NOT NULL,
  `star` float NOT NULL,
  `category_id` int(11) NOT NULL DEFAULT '4',
  `price` varchar(31) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `grocery_products`
--

INSERT INTO `grocery_products` (`id`, `name`, `image`, `weight`, `description`, `star`, `category_id`, `price`) VALUES
(1, 'Sahar lavash bread', '\\assets\\img\\products\\grocery\\Sahar lavash bread.webp', '200 - 210 gr', 'Whole wheat bread', 4.3, 4, '17000'),
(2, 'Royal dawn toast', '\\assets\\img\\products\\grocery\\Sahar royal toast.webp', '425 - 450 gr', 'Made from wheat flour', 4.2, 4, '41000'),
(3, 'Sahar bulky bread', '\\assets\\img\\products\\grocery\\Sehar bulky bread.webp', '120 - 134 gr', 'Prepared from wheat flour and sesame', 4.2, 4, '12000'),
(4, 'Esalat citron jam', '\\assets\\img\\products\\grocery\\Esalat citron jam.webp', '310 gr', 'Package dimensions: 7 * 7 * 11', 4.2, 4, '59500'),
(5, 'Badr carrot jam', '\\assets\\img\\products\\grocery\\Badr carrot jam.webp', '465 gr', 'Package dimensions: 7 * 7 * 9.5', 4.3, 4, '37500'),
(6, 'Badr cherry jam', '\\assets\\img\\products\\grocery\\Badr cherry jam.webp', '465 gr', 'Package dimensions: 7 * 7 * 9.5', 4.3, 4, '54500'),
(7, 'Esalat quince jam', '\\assets\\img\\products\\grocery\\Esalat quince jam.webp', '310 gr', 'Package dimensions: 7 * 7 * 11', 4.2, 4, '49000'),
(8, 'Honey of forty precious plants of Khansar', '\\assets\\img\\products\\grocery\\Honey of Khansar.webp', '1 kg', 'Package dimensions: 14 * 27 * 39', 4.4, 4, '335000'),
(9, 'Copa Milk Hazelnut Cocoa Cream', '\\assets\\img\\products\\grocery\\Copa Milk Hazelnut Cocoa Cream.webp', '330 gr', 'Packaging dimensions: 6 * 8 * 10 - With chocolate, milk and hazelnut flavors', 4.3, 4, '89500'),
(10, 'Cappuccino Italiano Nescafe', '\\assets\\img\\products\\grocery\\Cappuccino Italiano Nescafe.webp', '386 gr', 'Package dimensions: 9 * 25 * 28 - Pack of 20 pieces - Each package is 19.3 gr', 4.2, 4, '180000'),
(11, 'Classic mix 2 in 1 Arco Coffee', '\\assets\\img\\products\\grocery\\Classic mix Arco Coffee.webp', '240 gr', 'Package dimensions: 5 * 20 * 34 - Pack of 20 pieces - Each package is 12 gr - Store in a dry and cool place', 4.2, 4, '174000'),
(12, 'HotChocolate Arco Coffee', '\\assets\\img\\products\\grocery\\HotChocolate Arco Coffee.webp', '1 - 1.026 kg', 'Package dimensions: 8 * 15 * 23 - After each use, close the zipper of the envelope. - Store in a dry place.', 3.9, 4, '248000'),
(13, 'Classic Shahrazad tea', '\\assets\\img\\products\\grocery\\Classic Shahrazad tea.webp', '400 gr', 'Package dimensions: 7 * 13 * 18 - Organic - Black bag tea - Brewing time 12 minutes', 4.3, 4, '179000'),
(14, 'Golestan Earl Gray tea bag', '\\assets\\img\\products\\grocery\\Golestan Earl Gray tea bag.webp', '300 - 312 gr', 'Package dimensions: 7 * 15 * 16.5 - Pack of 100 pieces - Black tea - Brewing time 3 to 5 minutes', 4.2, 4, '117500'),
(15, 'Mademoiselle cheese sugar', '\\assets\\img\\products\\grocery\\Mademoiselle cheese sugar.webp', '400 gr', 'Package dimensions: 5 * 5 * 20 - With coconut flavor', 4.8, 4, '74500'),
(16, 'Tabiaat broken sugar', '\\assets\\img\\products\\grocery\\Tabiaat broken sugar.webp', '2.8 kg', 'Package dimensions: 13 * 19 * 25', 4, 4, '199000'),
(17, 'Mustafavi\'s saffron rock candy', '\\assets\\img\\products\\grocery\\Mustafavi\'s saffron plant.webp', '300 - 400 gr', 'Package dimensions: 3 * 13.5 * 18', 4.3, 4, '73000'),
(18, 'Mackenzie tomato paste', '\\assets\\img\\products\\grocery\\Mackenzie tomato paste.webp', '700 - 720 gr', 'Package dimensions: 8 * 9 * 14', 4.2, 4, '52000'),
(19, 'Mackenzie canned tuna', '\\assets\\img\\products\\grocery\\Mackenzie canned tuna.webp', '170 gr', 'Easy to open door - With vegetable oil', 4.2, 4, '80000'),
(20, 'Penne Rigate single macaroni pasta', '\\assets\\img\\products\\grocery\\Penne Rigate pasta.webp', '500 - 505 gr', 'Tubular pasta - Made from semolina flour', 4.4, 4, '30000'),
(21, 'Mahiya semi-ready nugget', '\\assets\\img\\products\\grocery\\Mahiya semi-ready nugget.webp', '0.95 - 1 kg', 'Package dimensions: 5 * 10 * 20 - Need to cook - Store in the freezer', 4.3, 4, '23000000'),
(22, 'Pemina Frozen Fries', '\\assets\\img\\products\\grocery\\Pemina Frozen Fries.webp', '750 - 760 gr', 'Package dimensions: 6 * 22 * 30 - 7 x 7 sliced ​​potatoes prepared with special vegetable oil and low absorption - Preparation time: 4 to 5 minutes in a fryer, 7 to 9 minutes in a frying pan and 15 to 20 minutes in the oven - Keep at a temperature of 18 degrees Celsius', 4.3, 4, '75000'),
(23, 'Zamzam carbonated cola black soft drink', '\\assets\\img\\products\\grocery\\Zamzam carbonated cola black soft drink.webp', '1610 gr', 'Package dimensions: 8.5 * 8.5 * 33.5 - Pack of 6, 1.5 liters', 4.1, 4, '165000'),
(24, 'Orange drink containing real pieces of rani fruit', '\\assets\\img\\products\\grocery\\Orange rani drink.webp', '5 kg', 'Package dimensions: 5.5 x 5.5 x 11 - Six packs of 240 ml', 4.4, 4, '144000'),
(25, 'Biscuit prepared with Salamat coconut powder', '\\assets\\img\\products\\grocery\\Salamat biscuit.webp', '235 gr', 'With coconut flavor', 4.3, 4, '18000'),
(26, 'Nutty Chocolate Nani', '\\assets\\img\\products\\grocery\\Nutty Chocolate Nani.webp', '800 gr', 'Package dimensions: 5 * 5 * 10 - Caramel flavor - Contains 100 packets of 8 grams', 4.4, 4, '120000'),
(27, 'Chi puff nutty candy', '\\assets\\img\\products\\grocery\\Chi puff nutty candy.webp', '45 - 46 gr', 'Strawberry and apple flavor - Single pack', 4.2, 4, '4000'),
(28, 'Chi puff chocolate cookie', '\\assets\\img\\products\\grocery\\Chi puff chocolate cookie.webp', '50 - 52 gr', 'Chocolate flavored - Single pack', 4.3, 4, '7000'),
(29, 'Cheesy motor snack', '\\assets\\img\\products\\grocery\\Cheesy motor snack.webp', '90 - 95 gr', 'Package dimensions: 9 * 24 * 33', 4.3, 4, '20000'),
(30, 'Plain salty chips', '\\assets\\img\\products\\grocery\\Plain salty chips.webp', '60 - 70 gr', 'Package dimensions: 4 * 16 * 25 - With a salty taste', 4.3, 4, '18000');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `grocery_products`
--
ALTER TABLE `grocery_products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `grocery_products`
--
ALTER TABLE `grocery_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
