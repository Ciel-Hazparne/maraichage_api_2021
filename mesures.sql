-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 27, 2021 at 04:17 PM
-- Server version: 8.0.25-0ubuntu0.20.04.1
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `maraichage`
--

-- --------------------------------------------------------

--
-- Table structure for table `mesures`
--

CREATE TABLE `mesures` (
  `id` int NOT NULL,
  `libelle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `valeur` float NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mesures`
--

INSERT INTO `mesures` (`id`, `libelle`, `valeur`, `created_at`) VALUES
(84, 'Temperature_serre', 40, '2022-06-09 03:30:00'),
(91, 'Humidite_champ', 80.3, '2021-03-25 14:39:29'),
(95, 'Humidite_champ', 77, '2021-03-25 14:40:31'),
(96, 'Temperature_champ', 75.2, '2021-03-25 14:30:54'),
(97, 'Humidite_champ', 77, '2021-03-25 14:40:34'),
(98, 'Temperature_champ', 24, '2021-03-25 14:58:49'),
(99, 'Humidite_champ', 64, '2021-03-25 14:58:49'),
(100, 'Temperature_serre', 51, '2021-03-25 14:58:50'),
(101, 'Humidite_serre', 23, '2021-03-25 14:58:50'),
(102, 'Humidite_serre', 79, '2021-03-30 15:31:42'),
(103, 'Temperature_serre', 22, '2021-03-30 15:31:42'),
(104, 'Humidite_champ', 32, '2021-03-30 15:31:43'),
(105, 'Temperature_champ', 42.8, '2021-03-30 15:31:43'),
(106, 'Temperature_champ', 42.8, '2021-03-30 15:31:44'),
(107, 'Humidite_champ', 32, '2021-03-30 15:31:44'),
(108, 'Temperature_serre', 22, '2021-03-30 15:31:45'),
(109, 'Humidite_serre', 79, '2021-03-30 15:31:45'),
(110, 'Humidite_serre', 79, '2021-03-30 17:03:54'),
(111, 'Humidite_serre', 22.22, '2021-03-31 19:42:24'),
(112, 'Temperature_serre', 35, '2021-03-31 19:42:25'),
(113, 'Humidite_champ', 67, '2021-03-31 19:42:26'),
(114, 'Temperature_champ', 24, '2021-03-31 19:42:27'),
(115, 'Humidite_serre', 22.22, '2021-03-31 19:42:28'),
(116, 'Temperature_serre', 35, '2021-03-31 19:42:28'),
(117, 'Humidite_champ', 67, '2021-03-31 19:42:29'),
(118, 'Temperature_champ', 24, '2021-03-31 19:42:29'),
(119, 'Humidite_serre', 22.22, '2021-03-31 19:43:08'),
(120, 'Temperature_serre', 35, '2021-03-31 19:43:08'),
(121, 'Humidite_champ', 67, '2021-03-31 19:43:09'),
(122, 'Temperature_champ', 24, '2021-03-31 19:43:09'),
(123, 'Temperature_champ', 24, '2021-03-31 19:43:23'),
(124, 'Humidite_champ', 67, '2021-03-31 19:43:23'),
(125, 'Temperature_serre', 35, '2021-03-31 19:43:24'),
(126, 'Humidite_serre', 22.22, '2021-03-31 19:43:25');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mesures`
--
ALTER TABLE `mesures`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `mesures`
--
ALTER TABLE `mesures`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=127;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
