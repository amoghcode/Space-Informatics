-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 08, 2023 at 01:10 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `spaceinfo`
--

-- --------------------------------------------------------

--
-- Table structure for table `black_hole`
--

CREATE TABLE `black_hole` (
  `black_hole_id` int(10) NOT NULL,
  `black_hole_name` varchar(25) NOT NULL,
  `galaxy_id` int(10) NOT NULL,
  `galaxy_name` varchar(25) NOT NULL,
  `dist_earth` varchar(25) NOT NULL,
  `size` varchar(25) NOT NULL,
  `age` varchar(25) NOT NULL,
  `type` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `black_hole`
--

INSERT INTO `black_hole` (`black_hole_id`, `black_hole_name`, `galaxy_id`, `galaxy_name`, `dist_earth`, `size`, `age`, `type`) VALUES
(1, 'sagittarius_a', 1, 'milky_way', '25000_years_ly', '1.2_million_km', '10000_years', 'super_massive'),
(2, 'messier_31', 2, 'andromeda', '2_million_ly', '1.2_million_km', '10_billion_years', 'super_massive'),
(3, 'cygnus_x1', 3, 'cygnus', '760_million_ly', '50_km', '10_million', 'stellar'),
(4, 'messier_104', 7, 'sumbrero', '30_million_ly', '1.5_million_km', '10_billion_years', 'super_massive'),
(5, 'sculptor_a', 8, 'sculptor', '11.5_million_ly', '1.5_million_km', '10_billion_years', 'super_massive'),
(6, 'messier_82', 9, 'cigar', '11.5_million_ly', '0.1_million_km', '100_million_years', 'intermediate'),
(8, 'bakka', 2, 'rajesh', '10000_billion', '500', '1_billion', 'stellar');

-- --------------------------------------------------------

--
-- Table structure for table `galaxy`
--

CREATE TABLE `galaxy` (
  `galaxy_id` int(10) NOT NULL,
  `galaxy_name` varchar(25) NOT NULL,
  `no_of_stars` varchar(25) NOT NULL,
  `dist_earth` varchar(25) NOT NULL,
  `pattern` varchar(25) NOT NULL,
  `founder` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `galaxy`
--

INSERT INTO `galaxy` (`galaxy_id`, `galaxy_name`, `no_of_stars`, `dist_earth`, `pattern`, `founder`) VALUES
(1, 'milky_way', '400_billion', '0_ly', 'shinning_pattern', 'galileo_galilie'),
(2, 'andromeda', '1_trillion', '2.5_million_ly', 'glowing_circular', 'edwin_hubble'),
(3, 'cygnus', '< 100_billion', '500_million_ly', 'radio_wave', 'grote_reber'),
(4, 'pinwheel', '1_trillion', '20_million_ly', 'wheel', 'pierre_mechian'),
(5, 'whirlpool', '100_billion', '3_million_ly', 'tornado', 'charles_messier'),
(6, 'hoag_object', '8_billion', '600_million_ly', 'circular_ringed', 'arthur_hoag'),
(7, 'sumbrero', '100_billion', '30_million_ly', 'blue_ringed', 'pierre_mechian'),
(8, 'sculptor', '100_billion', '11.5_million_ly', 'oval_ringed', 'harlow_shapley'),
(9, 'cigar', '30_billion', '11.5_million_ly', 'cigar', 'johann_bode'),
(10, 'rajesh', '1_trillion', '1_trillion', 'circular', 'rakesh'),
(11, 'rajesh', '1_trillion', '1_trillion', 'circular', 'rakesh');

-- --------------------------------------------------------

--
-- Table structure for table `moon`
--

CREATE TABLE `moon` (
  `moon_id` int(10) NOT NULL,
  `moon_name` varchar(25) NOT NULL,
  `galaxy_id` int(10) NOT NULL,
  `galaxy_name` varchar(25) NOT NULL,
  `star_id` int(10) NOT NULL,
  `star_name` varchar(25) NOT NULL,
  `planet_id` int(10) NOT NULL,
  `planet_name` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `moon`
--

INSERT INTO `moon` (`moon_id`, `moon_name`, `galaxy_id`, `galaxy_name`, `star_id`, `star_name`, `planet_id`, `planet_name`) VALUES
(1, 'europa', 1, 'milky_way', 1, 'sun', 6, 'jupiter'),
(2, 'callisto', 1, 'milky_way', 1, 'sun', 6, 'jupiter'),
(3, 'phobos', 1, 'milky_way', 1, 'sun', 4, 'mars'),
(4, 'deimos', 1, 'milky_way', 1, 'sun', 4, 'mars'),
(5, 'titan', 1, 'milky_way', 1, 'sun', 5, 'saturn'),
(6, 'BAKKA', 1, 'rajesh', 2, 'Sukku', 4, 'mars');

-- --------------------------------------------------------

--
-- Table structure for table `planet`
--

CREATE TABLE `planet` (
  `planet_id` int(10) NOT NULL,
  `planet_name` varchar(25) NOT NULL,
  `solar_system_id` int(10) NOT NULL,
  `solar_system_name` varchar(25) NOT NULL,
  `star_id` int(10) NOT NULL,
  `star_name` varchar(25) NOT NULL,
  `location_no` int(10) NOT NULL,
  `galaxy_id` int(10) NOT NULL,
  `galaxy_name` varchar(25) NOT NULL,
  `dist_earth` varchar(25) NOT NULL,
  `size` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `planet`
--

INSERT INTO `planet` (`planet_id`, `planet_name`, `solar_system_id`, `solar_system_name`, `star_id`, `star_name`, `location_no`, `galaxy_id`, `galaxy_name`, `dist_earth`, `size`) VALUES
(1, 'mercury', 1, 'copernican', 6, 'sun', 1, 1, 'milky_way', '5_minutes_ly', '1/3RE'),
(2, 'venus', 1, 'copernican', 6, 'sun', 2, 1, 'milky_way', '2_minutes_ly', '~RE'),
(3, 'earth', 1, 'copernican', 6, 'sun', 3, 1, 'milky_way', '0_ly', 'RE'),
(4, 'mars', 1, 'copernican', 6, 'sun', 4, 1, 'milky_way', '30_seconds_ly', '1/2RE'),
(5, 'saturn', 1, 'copernican', 6, 'sun', 5, 1, 'milky_way', '4.5_minutes_ly', '9RE'),
(6, 'jupiter', 1, 'copernican', 6, 'sun', 6, 1, 'milky_way', '35_minutes_ly', '11RE'),
(7, 'uranus', 1, 'copernican', 6, 'sun', 7, 1, 'milky_way', '80_minutes_ly', '4RE'),
(8, 'neptune', 1, 'copernican', 6, 'sun', 8, 1, 'milky_way', '170_minutes_ly', '~RE'),
(9, 'tau_ceti_g', 2, 'tau_ceti', 1, 'tau_ceti', 1, 1, 'milky_way', '12_years_ly', '~RE'),
(10, 'tau_ceti_h', 2, 'tau_ceti', 1, 'tau_ceti', 2, 1, 'milky_way', '12_years_ly', '~RE'),
(11, 'tau_ceti_e', 2, 'tau_ceti', 1, 'tau_ceti', 3, 1, 'milky_way', '12_years_ly', '~RE'),
(12, 'tau_ceti_f', 2, 'tau_ceti', 1, 'tau_ceti', 4, 1, 'milky_way', '12_years_ly', '~RE'),
(13, 'pc_b', 3, 'proxima_centuari', 2, 'proxima_centuari', 1, 1, 'milky_way', '4.25_years_ly', '0.18RE'),
(14, 'pc_d', 3, 'proxima_centuari', 2, 'proxima_centuari', 2, 1, 'milky_way', '4.25_years_ly', '1.3RE'),
(15, 'pc_c', 3, 'proxima_centuari', 2, 'proxima_centuari', 3, 1, 'milky_way', '4.25_years_ly', '1.5RE'),
(16, '1_rainbow_world', 4, 'alpha_andromedae', 3, 'apha_andromedae', 1, 2, 'andromeda', '97_years_ly', '~'),
(17, '1_gas_giant', 4, 'alpha_andromedae', 3, 'apha_andromedae', 2, 2, 'andromeda', '97_years_ly', '~'),
(18, '1_treasure_world', 4, 'alpha_andromedae', 3, 'apha_andromedae', 3, 2, 'andromeda', '97_years_ly', '~'),
(19, '4_auric', 4, 'alpha_andromedae', 3, 'apha_andromedae', 4, 2, 'andromeda', '97_years_ly', '~'),
(20, '5_gas_giant', 4, 'alpha_andromedae', 3, 'apha_andromedae', 5, 2, 'andromeda', '97_years_ly', '~'),
(21, '6_urea_world', 4, 'alpha_andromedae', 3, 'apha_andromedae', 6, 2, 'andromeda', '97_years_ly', '~'),
(22, 'saffar_b', 5, 'upsilon_andromedae', 4, 'upsilon_andromedae', 1, 2, 'andromeda', '45_years_ly', '1.3RE'),
(23, 'samh_c', 5, 'upsilon_andromedae', 4, 'upsilon_andromedae', 2, 2, 'andromeda', '45_years_ly', '2.5RE'),
(24, 'majriti_d', 5, 'upsilon_andromedae', 4, 'upsilon_andromedae', 3, 2, 'andromeda', '45_years_ly', '2.5RE'),
(25, 'kepler_b', 6, 'kepler_11', 5, 'kepler_11', 1, 3, 'cygnus', '1680_years_ly', '1.85RE'),
(26, 'kepler_c', 6, 'kepler_11', 5, 'kepler_11', 2, 3, 'cygnus', '1680_years_ly', '2.87RE'),
(27, 'kepler_d', 6, 'kepler_11', 5, 'kepler_11', 3, 3, 'cygnus', '1680_years_ly', '3.12RE'),
(28, 'kepler_e', 6, 'kepler_11', 5, 'kepler_11', 4, 3, 'cygnus', '1680_years_ly', '4.19RE'),
(29, 'kepler_f', 6, 'kepler_11', 5, 'kepler_11', 5, 3, 'cygnus', '1680_years_ly', '2.5RE'),
(30, 'kepler_g', 6, 'kepler_11', 5, 'kepler_11', 6, 3, 'cygnus', '1680_years_ly', '3.35RE');

-- --------------------------------------------------------

--
-- Table structure for table `solar_system`
--

CREATE TABLE `solar_system` (
  `solar_system_id` int(10) NOT NULL,
  `solar_system_name` varchar(25) NOT NULL,
  `galaxy_name` varchar(25) NOT NULL,
  `galaxy_id` int(10) NOT NULL,
  `num_planets` int(10) NOT NULL,
  `dist_earth` varchar(25) NOT NULL,
  `sun_name` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `solar_system`
--

INSERT INTO `solar_system` (`solar_system_id`, `solar_system_name`, `galaxy_name`, `galaxy_id`, `num_planets`, `dist_earth`, `sun_name`) VALUES
(1, 'copernican', 'milky_way', 1, 8, '0_ly', 'sun'),
(2, 'tau_ceti', 'milky_way', 1, 4, '~12_ly', 'tau_ceti'),
(3, 'proxima_centuari', 'milky_way', 1, 3, '4.25_ly', 'proxima_centuari'),
(4, 'alpha_andromedae', 'andromeda', 2, 6, '97_ly', 'alpha_andromedae'),
(5, 'upsilon_andromedae', 'andromeda', 2, 3, '45_ly', 'upsilon_andromedae'),
(6, 'kepler_11', 'cygnus', 3, 6, '1680_ly', 'kepler_11');

-- --------------------------------------------------------

--
-- Table structure for table `star`
--

CREATE TABLE `star` (
  `star_id` int(11) NOT NULL,
  `star_name` varchar(25) NOT NULL,
  `galaxy_id` int(10) NOT NULL,
  `galaxy_name` varchar(25) NOT NULL,
  `size` varchar(25) NOT NULL,
  `surface_temp` int(10) NOT NULL,
  `solar_system_id` int(10) NOT NULL,
  `solar_system_name` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `star`
--

INSERT INTO `star` (`star_id`, `star_name`, `galaxy_id`, `galaxy_name`, `size`, `surface_temp`, `solar_system_id`, `solar_system_name`) VALUES
(1, 'tau_ceti', 1, 'milky_way', '0.5_million_km', 5070, 1, 'tau_ceti'),
(2, 'proxima_centuari', 1, 'milky_way', '0.1_million_km', 3042, 3, 'proxima_centuari'),
(3, 'apha_andromedae', 2, 'andromeda', '1_million_km', 13000, 4, 'alpha_andromedae'),
(4, 'upsilon_andromedae', 2, 'andromeda', '15_million_km', 6213, 5, 'upsilon_andromedae'),
(5, 'kepler_11', 3, 'cygnus', '0.7_million_km', 5600, 6, 'kepler_11'),
(6, 'sun', 1, 'milky_way', '0.7_million_km', 5778, 1, 'copernican');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `black_hole`
--
ALTER TABLE `black_hole`
  ADD PRIMARY KEY (`black_hole_id`),
  ADD KEY `galaxy_id` (`galaxy_id`);

--
-- Indexes for table `galaxy`
--
ALTER TABLE `galaxy`
  ADD PRIMARY KEY (`galaxy_id`);

--
-- Indexes for table `moon`
--
ALTER TABLE `moon`
  ADD PRIMARY KEY (`moon_id`),
  ADD KEY `galaxy_id` (`galaxy_id`),
  ADD KEY `star_id` (`star_id`),
  ADD KEY `planet_id` (`planet_id`);

--
-- Indexes for table `planet`
--
ALTER TABLE `planet`
  ADD PRIMARY KEY (`planet_id`),
  ADD KEY `star_id` (`star_id`),
  ADD KEY `solar_system_id` (`solar_system_id`),
  ADD KEY `galaxy_id` (`galaxy_id`);

--
-- Indexes for table `solar_system`
--
ALTER TABLE `solar_system`
  ADD PRIMARY KEY (`solar_system_id`),
  ADD KEY `galaxy_id` (`galaxy_id`);

--
-- Indexes for table `star`
--
ALTER TABLE `star`
  ADD PRIMARY KEY (`star_id`),
  ADD KEY `solar_system_id` (`solar_system_id`),
  ADD KEY `galaxy_id` (`galaxy_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `black_hole`
--
ALTER TABLE `black_hole`
  MODIFY `black_hole_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `galaxy`
--
ALTER TABLE `galaxy`
  MODIFY `galaxy_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `moon`
--
ALTER TABLE `moon`
  MODIFY `moon_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `planet`
--
ALTER TABLE `planet`
  MODIFY `planet_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `solar_system`
--
ALTER TABLE `solar_system`
  MODIFY `solar_system_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `star`
--
ALTER TABLE `star`
  MODIFY `star_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `black_hole`
--
ALTER TABLE `black_hole`
  ADD CONSTRAINT `black_hole_ibfk_1` FOREIGN KEY (`galaxy_id`) REFERENCES `galaxy` (`galaxy_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `moon`
--
ALTER TABLE `moon`
  ADD CONSTRAINT `moon_ibfk_1` FOREIGN KEY (`galaxy_id`) REFERENCES `galaxy` (`galaxy_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `moon_ibfk_2` FOREIGN KEY (`star_id`) REFERENCES `star` (`star_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `moon_ibfk_3` FOREIGN KEY (`planet_id`) REFERENCES `planet` (`planet_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `planet`
--
ALTER TABLE `planet`
  ADD CONSTRAINT `planet_ibfk_2` FOREIGN KEY (`solar_system_id`) REFERENCES `solar_system` (`solar_system_id`),
  ADD CONSTRAINT `planet_ibfk_3` FOREIGN KEY (`galaxy_id`) REFERENCES `galaxy` (`galaxy_id`);

--
-- Constraints for table `solar_system`
--
ALTER TABLE `solar_system`
  ADD CONSTRAINT `solar_system_ibfk_1` FOREIGN KEY (`galaxy_id`) REFERENCES `galaxy` (`galaxy_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `star`
--
ALTER TABLE `star`
  ADD CONSTRAINT `star_ibfk_2` FOREIGN KEY (`solar_system_id`) REFERENCES `solar_system` (`solar_system_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `star_ibfk_3` FOREIGN KEY (`galaxy_id`) REFERENCES `galaxy` (`galaxy_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
