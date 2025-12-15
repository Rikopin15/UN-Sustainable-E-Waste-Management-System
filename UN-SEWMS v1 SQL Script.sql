-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 15, 2025 at 05:18 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `finalsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `company_id` varchar(10) NOT NULL,
  `company_name` varchar(255) NOT NULL,
  `headquarters` varchar(255) DEFAULT NULL,
  `main_products` text DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`company_id`, `company_name`, `headquarters`, `main_products`, `is_active`, `created_at`) VALUES
('APPL', 'Apple', 'Cupertino, USA', 'Smartphones, Computers, Tablets, Wearables', 1, '2025-12-15 04:00:38'),
('CISCO', 'Cisco Systems', 'San Jose, USA', 'Networking Equipment, Servers', 1, '2025-12-15 04:30:01'),
('DELL', 'Dell Technologies', 'Round Rock, USA', 'PCs, Servers, Storage', 1, '2025-12-15 04:00:38'),
('GOOG', 'Google (Alphabet)', 'Mountain View, USA', 'Phones, Cloud Hardware', 1, '2025-12-15 04:00:38'),
('HPQ', 'HP Inc.', 'Palo Alto, USA', 'PCs, Printers', 1, '2025-12-15 04:00:38'),
('HUAW', 'Huawei Technologies', 'Shenzhen, China', 'Smartphones, Telecom Equipment', 1, '2025-12-15 04:30:01'),
('LG', 'LG Electronics', 'Seoul, South Korea', 'Smartphones, TVs, Appliances', 1, '2025-12-15 04:30:01'),
('LNV', 'Lenovo', 'Hong Kong / Beijing', 'PCs, Smartphones', 1, '2025-12-15 04:00:38'),
('OTHER', 'Other Manufacturers', 'Global', 'Mixed electronic devices', 1, '2025-12-15 04:00:38'),
('PAN', 'Panasonic Corporation', 'Osaka, Japan', 'Electronics, Appliances, Batteries', 1, '2025-12-15 04:30:01'),
('SMSG', 'Samsung Electronics', 'Seoul, South Korea', 'Smartphones, TVs, Appliances', 1, '2025-12-15 04:00:38'),
('SONY', 'Sony Corporation', 'Tokyo, Japan', 'TVs, Consoles, Cameras', 1, '2025-12-15 04:30:01'),
('XIAO', 'Xiaomi', 'Beijing, China', 'Smartphones, IoT Devices', 1, '2025-12-15 04:00:38');

-- --------------------------------------------------------

--
-- Table structure for table `estimated_ewaste`
--

CREATE TABLE `estimated_ewaste` (
  `id` int(11) NOT NULL,
  `company_id` varchar(10) DEFAULT NULL,
  `year` int(11) NOT NULL,
  `assumed_device_share` decimal(6,4) DEFAULT NULL,
  `estimated_generated_tonnes` bigint(20) DEFAULT NULL,
  `cost_cap` decimal(15,2) DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `estimated_ewaste`
--

INSERT INTO `estimated_ewaste` (`id`, `company_id`, `year`, `assumed_device_share`, `estimated_generated_tonnes`, `cost_cap`, `notes`, `created_at`) VALUES
(1, 'SMSG', 2022, 0.1800, 11160000, 120000000.00, 'Estimated from global e-waste * market share', '2025-12-15 04:00:38'),
(2, 'APPL', 2022, 0.1500, 9300000, 150000000.00, 'Estimated from global e-waste * market share', '2025-12-15 04:00:38'),
(3, 'XIAO', 2022, 0.1000, 6200000, 25000000.00, 'Estimated from global e-waste * market share', '2025-12-15 04:00:38'),
(4, 'LNV', 2022, 0.0600, 3720000, 20000000.00, 'Estimated from global e-waste * market share', '2025-12-15 04:00:38'),
(5, 'DELL', 2022, 0.0500, 3100000, 30000000.00, 'Estimated from global e-waste * market share', '2025-12-15 04:00:38'),
(6, 'HPQ', 2022, 0.0500, 3100000, 22000000.00, 'Estimated from global e-waste * market share', '2025-12-15 04:00:38'),
(7, 'GOOG', 2022, 0.0400, 2480000, 12000000.00, 'Estimated from global e-waste * market share', '2025-12-15 04:00:38'),
(8, 'OTHER', 2022, 0.3700, 22940000, 5000000.00, 'Combined other global manufacturers', '2025-12-15 04:00:38'),
(9, 'SMSG', 2024, 0.0250, 1550000, 120000000.00, 'Estimated based on Samsung global device market share and production scale', '2025-12-15 05:29:24'),
(10, 'APPL', 2024, 0.0270, 1670000, 150000000.00, 'Estimated based on Apple device shipments and lifecycle averages', '2025-12-15 05:29:24'),
(11, 'DELL', 2024, 0.0140, 870000, 30000000.00, 'Estimated from global PC and enterprise hardware market contribution', '2025-12-15 05:29:24'),
(12, 'HPQ', 2024, 0.0100, 620000, 25000000.00, 'Estimated based on printer and PC production volumes', '2025-12-15 05:29:24'),
(13, 'LNV', 2024, 0.0130, 800000, 20000000.00, 'Estimated from Lenovo PC and device market share', '2025-12-15 05:29:24'),
(14, 'XIAO', 2024, 0.0160, 990000, 25000000.00, 'Estimated from smartphone and IoT device lifecycle contribution', '2025-12-15 05:29:24'),
(15, 'GOOG', 2024, 0.0060, 370000, 12000000.00, 'Lower estimate due to limited hardware product range', '2025-12-15 05:29:24'),
(16, 'CISCO', 2024, 0.0130, 800000, 40000000.00, 'Estimated from enterprise networking and telecom equipment turnover', '2025-12-15 05:29:24'),
(17, 'HUAW', 2024, 0.0190, 1180000, 50000000.00, 'Estimated from smartphone and telecom infrastructure production', '2025-12-15 05:29:24'),
(18, 'SONY', 2024, 0.0120, 750000, 35000000.00, 'Estimated from consumer electronics and gaming hardware lifecycle', '2025-12-15 05:29:24'),
(19, 'LG', 2024, 0.0110, 680000, 30000000.00, 'Estimated from appliance, TV, and electronics production', '2025-12-15 05:29:24'),
(20, 'PAN', 2024, 0.0100, 600000, 28000000.00, 'Estimated from electronics, battery, and appliance manufacturing', '2025-12-15 05:29:24');

-- --------------------------------------------------------

--
-- Table structure for table `flagged_companies`
--

CREATE TABLE `flagged_companies` (
  `flag_id` int(11) NOT NULL,
  `company_id` varchar(10) NOT NULL,
  `year` int(11) NOT NULL,
  `flag_reason` enum('FAILED_TO_REPORT','EXCEEDED_EWASTE_LIMIT','INCONSISTENT_DATA','LATE_REPORTING','SUSPICIOUS_VARIANCE') NOT NULL,
  `reported_tonnes` decimal(15,2) DEFAULT NULL,
  `estimated_tonnes` bigint(20) DEFAULT NULL,
  `ewaste_limit` bigint(20) DEFAULT 8000000,
  `flagged_at` timestamp NULL DEFAULT current_timestamp(),
  `remarks` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `flagged_companies`
--

INSERT INTO `flagged_companies` (`flag_id`, `company_id`, `year`, `flag_reason`, `reported_tonnes`, `estimated_tonnes`, `ewaste_limit`, `flagged_at`, `remarks`) VALUES
(1, 'APPL', 2023, 'FAILED_TO_REPORT', NULL, NULL, 8000000, '2025-12-15 04:34:45', 'No e-waste tonnage reported'),
(2, 'DELL', 2023, 'FAILED_TO_REPORT', NULL, NULL, 8000000, '2025-12-15 04:34:45', 'No e-waste tonnage reported'),
(3, 'LNV', 2023, 'FAILED_TO_REPORT', NULL, NULL, 8000000, '2025-12-15 04:34:45', 'No e-waste tonnage reported'),
(4, 'GOOG', 2023, 'FAILED_TO_REPORT', NULL, NULL, 8000000, '2025-12-15 04:34:45', 'No e-waste tonnage reported'),
(8, 'SMSG', 2023, 'EXCEEDED_EWASTE_LIMIT', 10000000.00, NULL, 500000, '2025-12-15 04:34:45', 'Reported e-waste exceeds threshold'),
(9, 'CISCO', 2024, 'EXCEEDED_EWASTE_LIMIT', 800000.00, NULL, 500000, '2025-12-15 04:34:45', 'Reported e-waste exceeds threshold'),
(10, 'HUAW', 2024, 'EXCEEDED_EWASTE_LIMIT', 1200000.00, NULL, 500000, '2025-12-15 04:34:45', 'Reported e-waste exceeds threshold'),
(11, 'SONY', 2024, 'EXCEEDED_EWASTE_LIMIT', 750000.00, NULL, 500000, '2025-12-15 04:34:45', 'Reported e-waste exceeds threshold'),
(12, 'LG', 2024, 'EXCEEDED_EWASTE_LIMIT', 680000.00, NULL, 500000, '2025-12-15 04:34:45', 'Reported e-waste exceeds threshold'),
(13, 'PAN', 2024, 'EXCEEDED_EWASTE_LIMIT', 600000.00, NULL, 500000, '2025-12-15 04:34:45', 'Reported e-waste exceeds threshold'),
(14, 'CISCO', 2024, 'EXCEEDED_EWASTE_LIMIT', 800000.00, NULL, 500000, '2025-12-15 04:34:45', 'Reported e-waste exceeds threshold'),
(15, 'HUAW', 2024, 'EXCEEDED_EWASTE_LIMIT', 1200000.00, NULL, 500000, '2025-12-15 04:34:45', 'Reported e-waste exceeds threshold'),
(16, 'SONY', 2024, 'EXCEEDED_EWASTE_LIMIT', 750000.00, NULL, 500000, '2025-12-15 04:34:45', 'Reported e-waste exceeds threshold'),
(17, 'LG', 2024, 'EXCEEDED_EWASTE_LIMIT', 680000.00, NULL, 500000, '2025-12-15 04:34:45', 'Reported e-waste exceeds threshold'),
(18, 'PAN', 2024, 'EXCEEDED_EWASTE_LIMIT', 600000.00, NULL, 500000, '2025-12-15 04:34:45', 'Reported e-waste exceeds threshold');

-- --------------------------------------------------------

--
-- Table structure for table `reported_ewaste`
--

CREATE TABLE `reported_ewaste` (
  `id` int(11) NOT NULL,
  `company_id` varchar(10) DEFAULT NULL,
  `year` int(11) NOT NULL,
  `metric` varchar(100) DEFAULT NULL,
  `tonnes` decimal(15,2) DEFAULT NULL,
  `cost_cap` decimal(15,2) DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `reported_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reported_ewaste`
--

INSERT INTO `reported_ewaste` (`id`, `company_id`, `year`, `metric`, `tonnes`, `cost_cap`, `notes`, `reported_at`) VALUES
(1, 'HPQ', 2023, 'collected_tonnes', 2010.00, 25000000.00, 'HP Planet Partners reported 2,010 tonnes collected', '2025-12-15 04:00:38'),
(2, 'XIAO', 2024, 'planned_recycle_tonnes', 38000.00, 15000000.00, 'Xiaomi announced recycling target', '2025-12-15 04:00:38'),
(3, 'SMSG', 2023, 'target_cumulative_tonnes', 10000000.00, 120000000.00, 'Samsung stated cumulative collection target for 2030 [FLAGGED: Excessive reported e-waste]', '2025-12-15 04:00:38'),
(4, 'APPL', 2023, 'collected_tonnes', NULL, 150000000.00, 'Apple disclosed recycling programs without global tonnage', '2025-12-15 04:00:38'),
(5, 'DELL', 2023, 'collected_tonnes', NULL, 30000000.00, 'Dell reports circularity goals without specific tonnage', '2025-12-15 04:00:38'),
(6, 'LNV', 2023, 'collected_tonnes', NULL, 20000000.00, 'Lenovo takeback programs reported without exact tonnage', '2025-12-15 04:00:38'),
(7, 'GOOG', 2023, 'collected_tonnes', NULL, 10000000.00, 'Google hardware sustainability report lacks tonnage data', '2025-12-15 04:00:38'),
(8, 'CISCO', 2024, 'estimated_ewaste_generated', 800000.00, NULL, 'Estimated ~800k t e-waste from Cisco network and telecom hardware globally', '2025-12-15 04:30:09'),
(9, 'HUAW', 2024, 'estimated_ewaste_generated', 1200000.00, NULL, 'Estimated ~1.2M t e-waste from Huawei electronics and telecom equipment [FLAGGED: Excessive reported e-waste]', '2025-12-15 04:30:09'),
(10, 'SONY', 2024, 'estimated_ewaste_generated', 750000.00, NULL, 'Estimated ~750k t e-waste from Sony electronics and consoles', '2025-12-15 04:30:09'),
(11, 'LG', 2024, 'estimated_ewaste_generated', 680000.00, NULL, 'Estimated ~680k t e-waste from LG electronics devices', '2025-12-15 04:30:09'),
(12, 'PAN', 2024, 'estimated_ewaste_generated', 600000.00, NULL, 'Estimated ~600k t e-waste from Panasonic electronics and appliances', '2025-12-15 04:30:09'),
(13, 'CISCO', 2024, 'estimated_ewaste_generated', 800000.00, NULL, 'Estimated ~800k t e-waste from Cisco network and telecom hardware globally', '2025-12-15 04:30:56'),
(14, 'HUAW', 2024, 'estimated_ewaste_generated', 1200000.00, NULL, 'Estimated ~1.2M t e-waste from Huawei electronics and telecom equipment [FLAGGED: Excessive reported e-waste]', '2025-12-15 04:30:56'),
(15, 'SONY', 2024, 'estimated_ewaste_generated', 750000.00, NULL, 'Estimated ~750k t e-waste from Sony electronics and consoles', '2025-12-15 04:30:56'),
(16, 'LG', 2024, 'estimated_ewaste_generated', 680000.00, NULL, 'Estimated ~680k t e-waste from LG electronics devices', '2025-12-15 04:30:56'),
(17, 'PAN', 2024, 'estimated_ewaste_generated', 600000.00, NULL, 'Estimated ~600k t e-waste from Panasonic electronics and appliances', '2025-12-15 04:30:56');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`company_id`);

--
-- Indexes for table `estimated_ewaste`
--
ALTER TABLE `estimated_ewaste`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_company_year_est` (`company_id`,`year`),
  ADD KEY `idx_estimated_company_year` (`company_id`,`year`);

--
-- Indexes for table `flagged_companies`
--
ALTER TABLE `flagged_companies`
  ADD PRIMARY KEY (`flag_id`),
  ADD KEY `fk_flagged_company` (`company_id`);

--
-- Indexes for table `reported_ewaste`
--
ALTER TABLE `reported_ewaste`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_reported_company_year` (`company_id`,`year`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `estimated_ewaste`
--
ALTER TABLE `estimated_ewaste`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `flagged_companies`
--
ALTER TABLE `flagged_companies`
  MODIFY `flag_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `reported_ewaste`
--
ALTER TABLE `reported_ewaste`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `estimated_ewaste`
--
ALTER TABLE `estimated_ewaste`
  ADD CONSTRAINT `fk_est_company` FOREIGN KEY (`company_id`) REFERENCES `companies` (`company_id`);

--
-- Constraints for table `flagged_companies`
--
ALTER TABLE `flagged_companies`
  ADD CONSTRAINT `fk_flagged_company` FOREIGN KEY (`company_id`) REFERENCES `companies` (`company_id`);

--
-- Constraints for table `reported_ewaste`
--
ALTER TABLE `reported_ewaste`
  ADD CONSTRAINT `fk_rep_company` FOREIGN KEY (`company_id`) REFERENCES `companies` (`company_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
