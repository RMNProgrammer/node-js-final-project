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
-- Table structure for table `rates`
--

CREATE TABLE `rates` (
  `id` int(11) NOT NULL,
  `name` varchar(63) NOT NULL,
  `profile` varchar(255) NOT NULL,
  `star` int(11) NOT NULL,
  `date` date NOT NULL,
  `description` varchar(511) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rates`
--

INSERT INTO `rates` (`id`, `name`, `profile`, `star`, `date`, `description`) VALUES
(1, 'Debbie Harper', 'assets/img/default-profile.png', 5, '2023-08-11', 'Veniam sint fugiat ea commodo reprehenderit id ex consectetur sint pariatur voluptate exercitation. Laborum laborum aliquip irure voluptate eu cupidatat minim aliquip aliquip.\r\n'),
(2, 'Walls Prince', 'assets/img/default-profile.png', 2, '2023-10-09', 'Nostrud qui culpa veniam elit incididunt consequat elit. Eiusmod veniam tempor voluptate nisi eu nisi cillum aute consectetur sint nostrud incididunt. Enim exercitation ullamco et laborum.\r\n'),
(3, 'Blankenship Benton', 'assets/img/default-profile.png', 4, '2024-03-04', 'Cupidatat cupidatat ea sunt eiusmod. Minim pariatur aliquip aliqua minim ea Lorem nostrud minim. Voluptate eu dolore labore velit irure in Lorem anim et elit occaecat sit. Eu enim aliquip qui incididunt non non mollit cillum sunt dolor nisi.\r\n'),
(4, 'Bridget Ingram', 'assets/img/default-profile.png', 3, '2024-04-11', 'Irure commodo mollit quis commodo anim adipisicing ut non enim voluptate pariatur enim elit. Aliqua mollit minim consectetur cillum. Laborum fugiat consectetur ad ea mollit in.\r\nVeniam sint fugiat ea commodo reprehenderit.\r\n');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `rates`
--
ALTER TABLE `rates`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `rates`
--
ALTER TABLE `rates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
