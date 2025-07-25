-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 22, 2021 at 07:52 PM
-- Server version: 8.0.23-0ubuntu0.20.04.1
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
-- Database: `serre_maraichage_api`
--

-- --------------------------------------------------------

--
-- Table structure for table `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20210203134713', '2021-02-03 19:17:30', 44),
('DoctrineMigrations\\Version20210203143829', '2021-02-03 20:08:42', 53),
('DoctrineMigrations\\Version20210204092237', '2021-02-04 14:52:44', 41),
('DoctrineMigrations\\Version20210204093043', '2021-02-04 15:00:52', 47),
('DoctrineMigrations\\Version20210316085612', '2021-03-16 14:40:28', 26);

-- --------------------------------------------------------

--
-- Table structure for table `mesures`
--

CREATE TABLE `mesures` (
  `id` int NOT NULL,
  `libelle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `valeur` float NOT NULL,
  `heure` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mesures`
--

INSERT INTO `mesures` (`id`, `libelle`, `valeur`, `heure`) VALUES
(40, 'Temperature champ', 43, '2021-03-22 11:18:00'),
(41, 'Temperature champ', 43, '2021-03-22 11:18:00'),
(42, 'Humidite champ', 22, '2021-03-22 11:18:00'),
(43, 'Temperature serre', 61, '2021-03-22 11:18:00'),
(44, 'Humidite serre', 22, '2021-03-22 11:18:00'),
(45, 'Temperature champ', 43, '2021-03-22 11:19:00'),
(46, 'Temperature champ', 43, '2021-03-22 11:19:00'),
(47, 'Temperature champ', 43, '2021-03-22 11:19:00'),
(48, 'Temperature champ', 43, '2021-03-22 11:19:00'),
(49, 'Temperature champ', 43, '2021-03-22 11:20:00'),
(50, 'Temperature champ', 43, '2021-03-22 11:20:00'),
(51, 'Temperature champ', 43, '2021-03-22 11:20:00'),
(52, 'Temperature champ', 43, '2021-03-22 11:20:00'),
(53, 'Temperature champ', 43, '2021-03-22 11:20:00'),
(54, 'Temperature champ', 43, '2021-03-22 11:20:00'),
(55, 'Temperature champ', 43, '2021-03-22 11:20:00'),
(56, 'Temperature champ', 43, '2021-03-22 11:20:00'),
(57, 'Temperature champ', 43, '2021-03-22 11:20:00'),
(58, 'Temperature champ', 43, '2021-03-22 11:20:00'),
(59, 'Temperature champ', 43, '2021-03-22 11:20:00'),
(60, 'Temperature champ', 43, '2021-03-22 11:20:00'),
(61, 'Temperature champ', 43, '2021-03-22 11:20:00'),
(62, 'Temperature champ', 43, '2021-03-22 11:20:00'),
(63, 'Temperature champ', 43, '2021-03-22 11:20:00'),
(64, 'Temperature champ', 43, '2021-03-22 11:20:00'),
(65, 'Temperature champ', 43, '2021-03-22 11:22:00'),
(66, 'Temperature champ', 43, '2021-03-22 11:22:00'),
(67, 'Temperature champ', 22, '2021-03-22 16:11:00'),
(68, 'Humidite champ', 22, '2021-03-22 16:11:00'),
(69, 'Temperature serre', 32, '2021-03-22 16:11:00'),
(70, 'Humidite serre', 420, '2021-03-22 16:11:00');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int NOT NULL,
  `username` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` json NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `roles`, `password`) VALUES
(5, 'alyy', '[]', '$argon2id$v=19$m=65536,t=4,p=1$ducMgqCb48EmYmL2vrHA1w$OtJvnv1UOqyh9UcvgKfR6gP2bpdiElXBabTA8sF7HyQ'),
(6, 'Prof. Rowan Pollich', '[]', '$argon2id$v=19$m=65536,t=4,p=1$0G0dqozz02I7CjzupfRP5Q$ol5bRPOovg3eqW+JHQQO9KhDUbgaT7BMBAH9QBhbpLA'),
(7, 'Ethan Rippin', '[]', '$argon2id$v=19$m=65536,t=4,p=1$/B85WNzBS4fZHPEUNGxhqA$EvVcS0fSkvoBrPRVL+ZYLkwAJTTGH50Tld0DCBTTdpQ');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `mesures`
--
ALTER TABLE `mesures`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_8D93D649F85E0677` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `mesures`
--
ALTER TABLE `mesures`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
