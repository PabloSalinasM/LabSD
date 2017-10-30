-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 26, 2017 at 06:23 AM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `labsd`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2017_10_23_180836_Tabla_migration', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sigla` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `capital` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `idioma` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `poblacion` int(64) NOT NULL,
  `moneda` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `independencia` date NOT NULL,
  `lema` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `presidente` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `continente` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `nombre`, `sigla`, `capital`, `idioma`, `poblacion`, `moneda`, `independencia`, `lema`, `presidente`, `continente`, `created_at`, `updated_at`) VALUES
(1, 'Chile', 'CH', 'Santiago', 'EspaÃ±ol', 18191884, 'Peso Chileno', '1810-09-18', 'Por la razÃ³n o la fuerza', 'Michelle Bachelet', 'America', NULL, NULL),
(2, 'Argentina', 'AR', 'Buenos Aires', 'Castellano', 44044811, 'Peso Argentino', '1810-05-25', 'En uniÃ³n y libertad', 'Mauricio Macri', 'America', NULL, NULL),
(3, 'Brasil', 'BR', 'Brasilia', 'Portugues', 204450649, 'Real', '1822-09-07', 'Orden y progreso', 'Michel Temer', 'America', NULL, NULL),
(4, 'MÃ©xico', 'MEX', 'Cuidad de MÃ©xico', 'EspaÃ±ol', 119530753, 'Peso MÃ©xicano', '1810-09-16', 'La patria es primero', 'Enrique PeÃ±a Nieta', 'America', NULL, NULL),
(5, 'Estados Unidos', 'USA', 'Nueva York', 'InglÃ©s', 324289210, 'Dolar', '1776-07-04', 'En dios confiamos', 'Donald Trump', 'America', NULL, NULL),
(6, 'Uruguay', 'URU', 'Montevideo', 'EspaÃ±ol', 3456546, 'Peso Uruguayo', '1828-08-27', 'Libertad o Muerte', 'TabarÃ© Vasquez', 'America', NULL, NULL),
(7, 'EspaÃ±a', 'ESP', 'Madrid', 'Castellano', 46468102, 'Euro', '1812-03-19', 'MÃ¡s allÃ¡', 'Mariano Rajoy', 'Europa', NULL, NULL),
(8, 'CanadÃ¡', 'CAN', 'Ottawa', 'InglÃ©s', 36155487, 'Dolar', '1867-07-01', 'De mar a mar', 'Justin Trudeau', 'America', NULL, NULL),
(9, 'Francia', 'FR', 'ParÃ­s', 'FrancÃ©s', 66952000, 'Euro', '1799-11-09', 'LIbertad, igualdad, fraternidad', 'Emmanuel Macron', 'Europa', NULL, NULL),
(10, 'Portugal', 'POR', 'Lisboa', 'Portugues', 10562178, 'Euro', '1143-10-05', 'Esta es la Dichosa Patria MÃ­a Amada', 'Marcelo Rebelo de Sousa', 'Europa', NULL, NULL),
(11, 'Australia', 'AUS', 'Canberra', 'InglÃ©s', 23613193, 'DolÃ¡r australiano', '1901-01-01', 'Avanza Australia', 'Peter Cosgrove', 'OceanÃ­a', NULL, NULL),
(12, 'India', 'IND', 'Nueva Delhi', 'Hindi', 1210193422, 'Rupia india', '1947-08-15', 'La verdad sola triunfa', 'Ram Nath Kovind', 'Asia', NULL, NULL),
(13, 'JapÃ³n', 'JPN', 'Tokio', 'JaponÃ©s', 126926000, 'Yen', '1868-01-03', 'Paz y progreso', 'Akihito', 'Asia', NULL, NULL),
(14, 'SudrÃ¡fica', 'RSA', 'Pretoria', 'InglÃ©s', 52981991, 'Rand', '1910-05-31', 'Unidad en la diversidad', 'Jacob Zuma', 'Africa', NULL, NULL),
(15, 'Rusia', 'RUS', 'MoscÃº', 'Ruso', 146804372, 'Rublo ruso', '1547-01-16', 'Dios estÃ¡ con nosotros', 'VladÃmir Putin', 'Europa', NULL, NULL),
(16, 'Bolivia', 'BOL', 'Sucre', 'EspaÃ±ol', 10027254, 'Boliviano', '1825-08-06', 'La uniÃ³n es la fuerza', 'Evo Morales', 'America', NULL, NULL),
(17, 'Nigeria', 'NGR', 'Abuya', 'InglÃ©s', 181562056, 'Naira', '1960-10-01', 'Unidad y Fe, Paz y Progreso', 'Muhammadu Buhari', 'Africa', NULL, NULL),
(18, 'China', 'CHN', 'PekÃ­n', 'Chino', 1369811000, 'Renminbi', '1912-01-01', 'Marcha de los voluntarios', 'Xi Jinping', 'Asia', NULL, NULL),
(19, 'Colombia', 'COL', 'BogotÃ¡', 'EspaÃ±ol', 49164856, 'Peso colombiano', '1810-07-20', 'Libertad y Orden', 'Juan Manuel Santos', 'America', NULL, NULL),
(20, 'Grecia', 'GRE', 'Atenas', 'Griego', 10775557, 'Euro', '1821-03-25', 'Libertad o muerte', 'Prokopis Pavlopoulos', 'Europa', NULL, NULL),
(21, 'Cuba', 'CUB', 'La Habana', 'EspaÃ±ol', 11616004, 'Peso cubano', '1868-10-10', 'Patria o muerte, venceremos', 'RaÃºl Castro', 'America', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
