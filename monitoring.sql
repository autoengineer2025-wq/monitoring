-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 03, 2026 at 07:03 AM
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
-- Database: `monitoring`
--

-- --------------------------------------------------------

--
-- Table structure for table `cdrawingnumber`
--

CREATE TABLE `cdrawingnumber` (
  `Cmodel_ID` int(11) NOT NULL,
  `Cdrawing_ID` int(11) NOT NULL,
  `Cdrawingnum` varchar(50) NOT NULL,
  `takttime` decimal(10,2) NOT NULL,
  `length` decimal(10,2) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cdrawingnumber`
--

INSERT INTO `cdrawingnumber` (`Cmodel_ID`, `Cdrawing_ID`, `Cdrawingnum`, `takttime`, `length`, `qty`) VALUES
(1, 7, '19001B A', 6.79, 421.00, 25),
(1, 8, '19001B L', 6.79, 432.00, 25),
(1, 9, '19001B N', 6.79, 715.00, 25),
(1, 10, '19001B P', 6.79, 611.00, 25),
(1, 11, '19038B A', 7.43, 1005.00, 25),
(1, 12, '19086 D A', 8.45, 966.00, 25),
(8, 13, '19488A Q', 9.37, 1070.00, 25),
(3, 14, '19 502A B', 7.13, 432.00, 25),
(1, 15, '19-209F A', 7.13, 344.00, 25),
(8, 16, '19-516A B', 7.13, 821.00, 25),
(3, 17, '19 884K　A', 7.13, 0.00, 25),
(3, 18, '19525 - DA', 7.13, 490.00, 25),
(3, 19, '19525 - DB', 7.13, 440.00, 25),
(3, 20, '19525 - DC', 7.13, 502.00, 25),
(3, 21, '19525 - DD', 7.13, 452.00, 25),
(3, 22, '19119E - A', 18.38, 170.00, 10),
(8, 23, '19218L - C', 7.13, 639.00, 25),
(8, 24, '19218L - D', 7.13, 621.00, 25);

-- --------------------------------------------------------

--
-- Table structure for table `cline`
--

CREATE TABLE `cline` (
  `Cline_ID` int(11) NOT NULL,
  `Clinenumber` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cline`
--

INSERT INTO `cline` (`Cline_ID`, `Clinenumber`) VALUES
(1, '1'),
(2, '2'),
(3, '3'),
(4, '4'),
(5, '5'),
(6, '6');

-- --------------------------------------------------------

--
-- Table structure for table `cmember_photos`
--

CREATE TABLE `cmember_photos` (
  `id` int(11) NOT NULL,
  `Cline_ID` int(11) NOT NULL,
  `group_code` varchar(8) NOT NULL,
  `role` varchar(32) NOT NULL,
  `photo_url` text NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cmember_photos`
--

INSERT INTO `cmember_photos` (`id`, `Cline_ID`, `group_code`, `role`, `photo_url`, `updated_at`) VALUES
(1, 2, 'A', 'leader', '../uploads/line2_A_leader_20251121_070644.png', '2025-11-21 06:06:45'),
(2, 2, 'B', 'leader', '../uploads/line2_B_leader_20251121_070651.png', '2025-11-21 06:06:51'),
(3, 2, 'A', 'technician', '../uploads/line2_A_technician_20251121_070706.png', '2025-11-21 06:07:06'),
(4, 2, 'B', 'technician', '../uploads/line2_B_technician_20251121_070714.png', '2025-11-21 06:07:14'),
(5, 3, 'A', 'leader', '../uploads/line3_A_leader_20251121_070744.png', '2025-11-21 06:07:44'),
(6, 3, 'B', 'leader', '../uploads/line3_B_leader_20251121_070749.png', '2025-11-21 06:07:49'),
(7, 3, 'A', 'technician', '../uploads/line3_A_technician_20251121_070828.png', '2025-11-21 06:08:28'),
(8, 3, 'B', 'technician', '../uploads/line3_B_technician_20251121_070803.png', '2025-11-21 06:08:03'),
(9, 4, 'A', 'leader', '../uploads/line4_A_leader_20251121_070843.png', '2025-11-21 06:08:43'),
(10, 4, 'B', 'leader', '../uploads/line4_B_leader_20251121_070847.png', '2025-11-21 06:08:47'),
(11, 4, 'A', 'technician', '../uploads/line4_A_technician_20251121_070854.png', '2025-11-21 06:08:54'),
(12, 4, 'B', 'technician', '../uploads/line4_B_technician_20251121_070859.png', '2025-11-21 06:08:59'),
(13, 5, 'A', 'technician', '../uploads/line5_A_technician_20251121_070911.png', '2025-11-21 06:09:11'),
(14, 5, 'B', 'technician', '../uploads/line5_B_technician_20251121_070915.png', '2025-11-21 06:09:15'),
(15, 5, 'A', 'leader', '../uploads/line5_A_leader_20251121_070921.png', '2025-11-21 06:09:21'),
(16, 5, 'B', 'leader', '../uploads/line5_B_leader_20251121_070926.png', '2025-11-21 06:09:26'),
(17, 6, 'A', 'leader', '../uploads/line6_A_leader_20251121_070940.png', '2025-11-21 06:09:40'),
(18, 6, 'B', 'leader', '../uploads/line6_B_leader_20251121_070945.png', '2025-11-21 06:09:45'),
(19, 6, 'A', 'technician', '../uploads/line6_A_technician_20251121_070952.png', '2025-11-21 06:09:52'),
(20, 6, 'B', 'technician', '../uploads/line6_B_technician_20251121_070955.png', '2025-11-21 06:09:55'),
(21, 7, 'A', 'technician', '../uploads/line7_A_technician_20251121_071011.png', '2025-11-21 06:10:11'),
(22, 7, 'B', 'technician', '../uploads/line7_B_technician_20251121_071015.png', '2025-11-21 06:10:15'),
(23, 7, 'A', 'leader', '../uploads/line7_A_leader_20251121_071023.png', '2025-11-21 06:10:23'),
(24, 7, 'B', 'leader', '../uploads/line7_B_leader_20251121_071028.png', '2025-11-21 06:10:28'),
(25, 8, 'A', 'leader', '../uploads/line8_A_leader_20251121_071104.png', '2025-11-21 06:11:04'),
(26, 8, 'B', 'leader', '../uploads/line8_B_leader_20251121_071108.png', '2025-11-21 06:11:08'),
(27, 8, 'A', 'technician', '../uploads/line8_A_technician_20251121_071115.png', '2025-11-21 06:11:15'),
(28, 8, 'B', 'technician', '../uploads/line8_B_technician_20251121_071118.png', '2025-11-21 06:11:18');

-- --------------------------------------------------------

--
-- Table structure for table `cmodelnumber`
--

CREATE TABLE `cmodelnumber` (
  `Cmodel_ID` int(11) NOT NULL,
  `Cmodel` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cmodelnumber`
--

INSERT INTO `cmodelnumber` (`Cmodel_ID`, `Cmodel`) VALUES
(1, 'MT'),
(2, 'HT'),
(3, 'HG'),
(4, 'MH'),
(5, 'HH'),
(6, 'RT'),
(7, 'RG'),
(8, 'MG');

-- --------------------------------------------------------

--
-- Table structure for table `cproductiontime`
--

CREATE TABLE `cproductiontime` (
  `Cprod_ID` int(11) NOT NULL,
  `Cprod_name` varchar(100) NOT NULL,
  `Cprod_hours` decimal(5,2) NOT NULL DEFAULT 0.00,
  `Cstart_Time1` time DEFAULT NULL,
  `Cend_Time1` time DEFAULT NULL,
  `Cstart_Time2` time DEFAULT NULL,
  `Cend_Time2` time DEFAULT NULL,
  `Cstart_Time3` time DEFAULT NULL,
  `Cend_Time3` time DEFAULT NULL,
  `Cstart_Time4` time DEFAULT NULL,
  `Cend_Time4` time DEFAULT NULL,
  `Cstart_Time5` time DEFAULT NULL,
  `Cend_Time5` time DEFAULT NULL,
  `Cshift` enum('Day','Night') NOT NULL DEFAULT 'Day',
  `Cprod_label` varchar(100) GENERATED ALWAYS AS (concat(case when `Cshift` = 'Night' then 'Night Shift' else 'Day Shift' end,case when `Cprod_hours` is null or `Cprod_hours` = 0 then '' else concat(' (',`Cprod_hours`,')') end)) STORED
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cproductiontime`
--

INSERT INTO `cproductiontime` (`Cprod_ID`, `Cprod_name`, `Cprod_hours`, `Cstart_Time1`, `Cend_Time1`, `Cstart_Time2`, `Cend_Time2`, `Cstart_Time3`, `Cend_Time3`, `Cstart_Time4`, `Cend_Time4`, `Cstart_Time5`, `Cend_Time5`, `Cshift`) VALUES
(5, 'Day Shift', 10.25, '06:00:00', '08:45:00', '09:00:00', '11:30:00', '12:30:00', '14:00:00', '14:15:00', '16:00:00', '16:15:00', '18:00:00', 'Day'),
(6, 'Night Shift', 10.25, '18:00:00', '20:45:00', '21:00:00', '23:30:00', '00:30:00', '02:00:00', '02:15:00', '04:00:00', '04:15:00', '06:00:00', 'Night'),
(7, 'For Audit', 7.50, '07:00:00', '09:00:00', '09:15:00', '11:00:00', '12:00:00', '14:00:00', '14:15:00', '16:00:00', '00:00:00', '00:00:00', 'Day');

-- --------------------------------------------------------

--
-- Table structure for table `cproduction_breaks`
--

CREATE TABLE `cproduction_breaks` (
  `id` int(11) NOT NULL,
  `record_id` int(11) NOT NULL,
  `production_date` date NOT NULL,
  `Cline_ID` int(11) NOT NULL,
  `Shift` varchar(50) NOT NULL,
  `break_number` tinyint(4) NOT NULL,
  `start_time` time DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  `work_seconds` int(11) NOT NULL DEFAULT 0,
  `plan_output` int(11) NOT NULL DEFAULT 0,
  `plan_accu` int(11) NOT NULL DEFAULT 0,
  `actual_output` int(11) NOT NULL DEFAULT 0,
  `actual_accu` int(11) NOT NULL DEFAULT 0,
  `diff_balanced` int(11) NOT NULL DEFAULT 0,
  `diff_accu` int(11) NOT NULL DEFAULT 0,
  `reject_qty` int(11) NOT NULL DEFAULT 0,
  `reject_accu` int(11) NOT NULL DEFAULT 0,
  `classification` varchar(100) DEFAULT NULL,
  `reason` text DEFAULT NULL,
  `countermeasure` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cproduction_breaks`
--

INSERT INTO `cproduction_breaks` (`id`, `record_id`, `production_date`, `Cline_ID`, `Shift`, `break_number`, `start_time`, `end_time`, `work_seconds`, `plan_output`, `plan_accu`, `actual_output`, `actual_accu`, `diff_balanced`, `diff_accu`, `reject_qty`, `reject_accu`, `classification`, `reason`, `countermeasure`, `created_at`, `updated_at`) VALUES
(221, 11, '2025-11-25', 5, 'Day Shift', 1, '06:00:00', '08:45:00', 9900, 302, 302, 50, 50, -252, -252, 10, 10, NULL, NULL, NULL, '2025-11-25 02:35:39', '2025-11-25 02:38:21'),
(222, 11, '2025-11-25', 5, 'Day Shift', 2, '09:00:00', '11:30:00', 9000, 0, 302, 0, 50, 0, -252, 0, 10, NULL, NULL, NULL, '2025-11-25 02:35:39', '2025-11-25 02:38:21'),
(223, 11, '2025-11-25', 5, 'Day Shift', 3, '12:30:00', '14:00:00', 5400, 0, 302, 0, 50, 0, -252, 0, 10, NULL, NULL, NULL, '2025-11-25 02:35:39', '2025-11-25 02:38:21'),
(224, 11, '2025-11-25', 5, 'Day Shift', 4, '14:15:00', '16:00:00', 6300, 0, 302, 0, 50, 0, -252, 0, 10, NULL, NULL, NULL, '2025-11-25 02:35:39', '2025-11-25 02:38:21'),
(225, 11, '2025-11-25', 5, 'Day Shift', 5, '16:15:00', '18:00:00', 6300, 0, 302, 0, 50, 0, -252, 0, 10, NULL, NULL, NULL, '2025-11-25 02:35:39', '2025-11-25 02:38:21'),
(226, 12, '2025-11-26', 2, 'Day Shift', 1, '06:00:00', '08:45:00', 9900, 538, 538, 538, 538, 0, 0, 0, 0, NULL, NULL, NULL, '2025-11-25 18:17:52', '2025-11-29 05:06:52'),
(227, 12, '2025-11-26', 2, 'Day Shift', 2, '09:00:00', '11:30:00', 9000, 489, 1027, 489, 1027, 0, 0, 0, 0, NULL, NULL, NULL, '2025-11-25 18:17:52', '2025-11-29 05:06:52'),
(228, 12, '2025-11-26', 2, 'Day Shift', 3, '12:30:00', '14:00:00', 5400, 293, 1320, 20, 1047, -273, -273, 0, 0, NULL, NULL, NULL, '2025-11-25 18:17:52', '2025-11-29 05:06:52'),
(229, 12, '2025-11-26', 2, 'Day Shift', 4, '14:15:00', '16:00:00', 6300, 342, 1662, 0, 1047, -342, -615, 0, 0, NULL, NULL, NULL, '2025-11-25 18:17:52', '2025-11-29 05:06:52'),
(230, 12, '2025-11-26', 2, 'Day Shift', 5, '16:15:00', '18:00:00', 6300, 342, 2004, 0, 1047, -342, -957, 0, 0, NULL, NULL, NULL, '2025-11-25 18:17:52', '2025-11-29 05:06:52'),
(231, 13, '2025-11-26', 3, 'Day Shift', 1, '06:00:00', '08:45:00', 9900, 1388, 1388, 1152, 1152, -236, -236, 0, 0, NULL, NULL, NULL, '2025-11-25 18:29:57', '2025-11-27 21:48:28'),
(232, 13, '2025-11-26', 3, 'Day Shift', 2, '09:00:00', '11:30:00', 9000, 116, 1504, 0, 1152, -116, -352, 0, 0, NULL, NULL, NULL, '2025-11-25 18:29:57', '2025-11-27 21:48:28'),
(233, 13, '2025-11-26', 3, 'Day Shift', 3, '12:30:00', '14:00:00', 5400, 0, 1504, 0, 1152, 0, -352, 0, 0, NULL, NULL, NULL, '2025-11-25 18:29:57', '2025-11-27 21:48:28'),
(234, 13, '2025-11-26', 3, 'Day Shift', 4, '14:15:00', '16:00:00', 6300, 0, 1504, 0, 1152, 0, -352, 0, 0, NULL, NULL, NULL, '2025-11-25 18:29:57', '2025-11-27 21:48:28'),
(235, 13, '2025-11-26', 3, 'Day Shift', 5, '16:15:00', '18:00:00', 6300, 0, 1504, 0, 1152, 0, -352, 0, 0, NULL, NULL, NULL, '2025-11-25 18:29:57', '2025-11-27 21:48:28');

-- --------------------------------------------------------

--
-- Table structure for table `cproduction_model_progress`
--

CREATE TABLE `cproduction_model_progress` (
  `id` int(11) NOT NULL,
  `record_id` int(11) NOT NULL,
  `model_index` int(11) NOT NULL,
  `Cdrawing_ID` int(11) NOT NULL,
  `model_qty_per_press` int(11) NOT NULL DEFAULT 0,
  `model_plan_total` int(11) NOT NULL DEFAULT 0,
  `produced_units` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cproduction_model_progress`
--

INSERT INTO `cproduction_model_progress` (`id`, `record_id`, `model_index`, `Cdrawing_ID`, `model_qty_per_press`, `model_plan_total`, `produced_units`, `created_at`, `updated_at`) VALUES
(17, 11, 1, 10, 300, 302, 0, '2025-11-25 02:35:36', NULL),
(18, 12, 1, 22, 2007, 2007, 0, '2025-11-25 18:17:51', NULL),
(19, 13, 1, 23, 750, 752, 0, '2025-11-25 18:29:56', NULL),
(20, 13, 2, 24, 750, 752, 0, '2025-11-25 18:29:56', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cproduction_record`
--

CREATE TABLE `cproduction_record` (
  `record_id` int(11) NOT NULL,
  `production_date` date NOT NULL,
  `Shift` varchar(255) NOT NULL,
  `working_hours` varchar(255) NOT NULL,
  `Cline_ID` int(11) NOT NULL,
  `Cprod_ID` int(11) NOT NULL,
  `Cdrawing_ID` int(11) NOT NULL,
  `plan_target` int(11) DEFAULT 0,
  `target` varchar(250) NOT NULL,
  `actual1` int(11) DEFAULT 0,
  `actual2` int(11) NOT NULL,
  `actual3` int(11) NOT NULL,
  `actual4` int(11) NOT NULL,
  `actual5` int(11) NOT NULL,
  `total_actual` varchar(255) NOT NULL,
  `reject_count` int(11) DEFAULT 0,
  `reject_ppm` varchar(250) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `takttime` varchar(100) DEFAULT NULL,
  `length` varchar(100) DEFAULT NULL,
  `Cstart_Time1` time DEFAULT NULL,
  `Cend_Time1` time DEFAULT NULL,
  `Cstart_Time2` time DEFAULT NULL,
  `Cend_Time2` time DEFAULT NULL,
  `Cstart_Time3` time DEFAULT NULL,
  `Cend_Time3` time DEFAULT NULL,
  `Cstart_Time4` time DEFAULT NULL,
  `Cend_Time4` time DEFAULT NULL,
  `Cstart_Time5` time DEFAULT NULL,
  `Cend_Time5` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cproduction_record`
--

INSERT INTO `cproduction_record` (`record_id`, `production_date`, `Shift`, `working_hours`, `Cline_ID`, `Cprod_ID`, `Cdrawing_ID`, `plan_target`, `target`, `actual1`, `actual2`, `actual3`, `actual4`, `actual5`, `total_actual`, `reject_count`, `reject_ppm`, `created_at`, `takttime`, `length`, `Cstart_Time1`, `Cend_Time1`, `Cstart_Time2`, `Cend_Time2`, `Cstart_Time3`, `Cend_Time3`, `Cstart_Time4`, `Cend_Time4`, `Cstart_Time5`, `Cend_Time5`) VALUES
(11, '2025-11-25', 'Day Shift', '0.57', 5, 5, 10, 302, '0', 50, 0, 0, 0, 0, '50', 0, NULL, '2025-11-25 02:35:36', '6.79', '611', '06:00:00', '08:45:00', '09:00:00', '11:30:00', '12:30:00', '14:00:00', '14:15:00', '16:00:00', '16:15:00', '18:00:00'),
(12, '2025-11-26', 'Day Shift', '10.25', 2, 5, 22, 2007, '0', 538, 489, 20, 0, 0, '1047', 0, NULL, '2025-11-25 18:17:51', '18.38', '170', '06:00:00', '08:45:00', '09:00:00', '11:30:00', '12:30:00', '14:00:00', '14:15:00', '16:00:00', '16:15:00', '18:00:00'),
(13, '2025-11-26', 'Day Shift', '2.98', 3, 5, 23, 1504, '0', 1152, 0, 0, 0, 0, '1152', 0, NULL, '2025-11-25 18:29:56', '7.13, 7.13', '639, 621', '06:00:00', '08:45:00', '09:00:00', '11:30:00', '12:30:00', '14:00:00', '14:15:00', '16:00:00', '16:15:00', '18:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `cproduction_rejects`
--

CREATE TABLE `cproduction_rejects` (
  `id` int(11) NOT NULL,
  `record_id` int(11) NOT NULL,
  `break_number` tinyint(4) NOT NULL,
  `qty` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cproduction_rejects`
--

INSERT INTO `cproduction_rejects` (`id`, `record_id`, `break_number`, `qty`, `created_at`, `updated_at`) VALUES
(2, 11, 1, 10, '2025-11-25 09:38:20', '2025-11-25 09:38:20');

-- --------------------------------------------------------

--
-- Table structure for table `cproduction_remarks`
--

CREATE TABLE `cproduction_remarks` (
  `id` int(11) NOT NULL,
  `record_id` int(11) DEFAULT NULL,
  `Cline_ID` varchar(10) NOT NULL,
  `Shift` varchar(20) NOT NULL,
  `production_date` date NOT NULL,
  `break_number` tinyint(4) NOT NULL,
  `classification` varchar(100) NOT NULL,
  `reason` text NOT NULL,
  `countermeasure` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cproduction_remarks`
--

INSERT INTO `cproduction_remarks` (`id`, `record_id`, `Cline_ID`, `Shift`, `production_date`, `break_number`, `classification`, `reason`, `countermeasure`, `created_at`, `updated_at`) VALUES
(1, 11, '5', 'Day Shift', '2025-11-25', 1, 'Parts problem', ';k', 'jjj', '2025-11-25 09:38:32', NULL),
(2, 11, '5', 'Day Shift', '2025-11-25', 1, 'Parts problem', ';k', 'jjj', '2025-11-25 09:38:32', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `fdrawingnumber`
--

CREATE TABLE `fdrawingnumber` (
  `Fmodel_ID` int(11) NOT NULL,
  `Fdrawing_ID` int(11) NOT NULL,
  `Fdrawingnum` varchar(50) NOT NULL,
  `takttime` decimal(10,2) NOT NULL,
  `length` decimal(10,2) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fline`
--

CREATE TABLE `fline` (
  `Fline_ID` int(11) NOT NULL,
  `Flinenumber` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `fline`
--

INSERT INTO `fline` (`Fline_ID`, `Flinenumber`) VALUES
(1, '1'),
(2, '2'),
(3, '3'),
(4, '4'),
(5, '5'),
(6, '6'),
(7, '7'),
(8, '8'),
(9, '9'),
(10, '10'),
(11, '11'),
(12, '12');

-- --------------------------------------------------------

--
-- Table structure for table `fmember_photos`
--

CREATE TABLE `fmember_photos` (
  `id` int(11) NOT NULL,
  `Fline_ID` int(11) NOT NULL,
  `group_code` varchar(8) NOT NULL,
  `role` varchar(32) NOT NULL,
  `photo_url` text NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `fmember_photos`
--

INSERT INTO `fmember_photos` (`id`, `Fline_ID`, `group_code`, `role`, `photo_url`, `updated_at`) VALUES
(1, 1, 'A', 'technician', '../uploads/line1_A_technician_20250920_035527.png', '2025-09-20 01:55:27'),
(2, 1, 'A', 'leader', '../uploads/line1_A_leader_20250920_043345.png', '2025-09-20 02:33:45'),
(3, 1, 'B', 'leader', '../uploads/line1_B_leader_20250920_035316.png', '2025-09-20 01:53:16'),
(4, 1, 'B', 'technician', '../uploads/line1_B_technician_20250920_035454.png', '2025-09-20 01:54:54');

-- --------------------------------------------------------

--
-- Table structure for table `fmodelnumber`
--

CREATE TABLE `fmodelnumber` (
  `Fmodel_ID` int(11) NOT NULL,
  `Fmodel` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `fmodelnumber`
--

INSERT INTO `fmodelnumber` (`Fmodel_ID`, `Fmodel`) VALUES
(2, 'CMI - FC159'),
(4, 'CMI - FC075'),
(5, 'CMI - FC297'),
(6, 'CMI - FC308'),
(7, 'CMI - FC200'),
(8, '19 - 0216 A');

-- --------------------------------------------------------

--
-- Table structure for table `fproductiontime`
--

CREATE TABLE `fproductiontime` (
  `Fprod_ID` int(11) NOT NULL,
  `Fprod_name` varchar(100) NOT NULL,
  `Fprod_hours` decimal(5,2) NOT NULL DEFAULT 0.00,
  `Fstart_Time1` time DEFAULT NULL,
  `Fend_Time1` time DEFAULT NULL,
  `Fstart_Time2` time DEFAULT NULL,
  `Fend_Time2` time DEFAULT NULL,
  `Fstart_Time3` time DEFAULT NULL,
  `Fend_Time3` time DEFAULT NULL,
  `Fstart_Time4` time DEFAULT NULL,
  `Fend_Time4` time DEFAULT NULL,
  `Fstart_Time5` time DEFAULT NULL,
  `Fend_Time5` time DEFAULT NULL,
  `Fshift` enum('Day','Night') NOT NULL DEFAULT 'Day',
  `Fprod_label` varchar(100) GENERATED ALWAYS AS (concat(case when `Fshift` = 'Night' then 'Night Shift' else 'Day Shift' end,case when `Fprod_hours` is null or `Fprod_hours` = 0 then '' else concat(' (',`Fprod_hours`,')') end)) STORED
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `fproductiontime`
--

INSERT INTO `fproductiontime` (`Fprod_ID`, `Fprod_name`, `Fprod_hours`, `Fstart_Time1`, `Fend_Time1`, `Fstart_Time2`, `Fend_Time2`, `Fstart_Time3`, `Fend_Time3`, `Fstart_Time4`, `Fend_Time4`, `Fstart_Time5`, `Fend_Time5`, `Fshift`) VALUES
(1, 'Day Shift', 10.25, '06:00:00', '08:45:00', '09:00:00', '11:30:00', '12:30:00', '14:00:00', '14:15:00', '16:00:00', '16:15:00', '18:00:00', 'Day'),
(3, 'Night Shift', 10.25, '18:00:00', '20:45:00', '21:00:00', '23:30:00', '00:30:00', '02:00:00', '02:15:00', '04:00:00', '04:15:00', '06:00:00', 'Night'),
(4, 'For Audit', 7.50, '07:00:00', '09:00:00', '09:15:00', '11:00:00', '12:00:00', '14:00:00', '14:15:00', '16:00:00', '00:00:00', '00:00:00', 'Day');

-- --------------------------------------------------------

--
-- Table structure for table `fproduction_breaks`
--

CREATE TABLE `fproduction_breaks` (
  `id` int(11) NOT NULL,
  `record_id` int(11) NOT NULL,
  `production_date` date NOT NULL,
  `Fline_ID` int(11) NOT NULL,
  `Shift` varchar(50) NOT NULL,
  `break_number` tinyint(4) NOT NULL,
  `start_time` time DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  `work_seconds` int(11) NOT NULL DEFAULT 0,
  `plan_output` int(11) NOT NULL DEFAULT 0,
  `plan_accu` int(11) NOT NULL DEFAULT 0,
  `actual_output` int(11) NOT NULL DEFAULT 0,
  `actual_accu` int(11) NOT NULL DEFAULT 0,
  `diff_balanced` int(11) NOT NULL DEFAULT 0,
  `diff_accu` int(11) NOT NULL DEFAULT 0,
  `reject_qty` int(11) NOT NULL DEFAULT 0,
  `reject_accu` int(11) NOT NULL DEFAULT 0,
  `classification` varchar(100) DEFAULT NULL,
  `reason` text DEFAULT NULL,
  `countermeasure` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fproduction_model_progress`
--

CREATE TABLE `fproduction_model_progress` (
  `id` int(11) NOT NULL,
  `record_id` int(11) NOT NULL,
  `model_index` int(11) NOT NULL,
  `Fdrawing_ID` int(11) NOT NULL,
  `model_qty_per_press` int(11) NOT NULL DEFAULT 0,
  `model_plan_total` int(11) NOT NULL DEFAULT 0,
  `produced_units` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fproduction_record`
--

CREATE TABLE `fproduction_record` (
  `record_id` int(11) NOT NULL,
  `production_date` date NOT NULL,
  `Shift` varchar(255) NOT NULL,
  `working_hours` varchar(255) NOT NULL,
  `Fline_ID` int(11) NOT NULL,
  `Fprod_ID` int(11) NOT NULL,
  `Fdrawing_ID` int(11) NOT NULL,
  `plan_target` int(11) DEFAULT 0,
  `target` varchar(250) NOT NULL,
  `actual1` int(11) DEFAULT 0,
  `actual2` int(11) NOT NULL,
  `actual3` int(11) NOT NULL,
  `actual4` int(11) NOT NULL,
  `actual5` int(11) NOT NULL,
  `total_actual` varchar(255) NOT NULL,
  `reject_count` int(11) DEFAULT 0,
  `reject_ppm` varchar(250) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `takttime` varchar(100) DEFAULT NULL,
  `length` varchar(100) DEFAULT NULL,
  `Fstart_Time1` time DEFAULT NULL,
  `Fend_Time1` time DEFAULT NULL,
  `Fstart_Time2` time DEFAULT NULL,
  `Fend_Time2` time DEFAULT NULL,
  `Fstart_Time3` time DEFAULT NULL,
  `Fend_Time3` time DEFAULT NULL,
  `Fstart_Time4` time DEFAULT NULL,
  `Fend_Time4` time DEFAULT NULL,
  `Fstart_Time5` time DEFAULT NULL,
  `Fend_Time5` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fproduction_rejects`
--

CREATE TABLE `fproduction_rejects` (
  `id` int(11) NOT NULL,
  `record_id` int(11) NOT NULL,
  `break_number` tinyint(4) NOT NULL,
  `qty` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fproduction_remarks`
--

CREATE TABLE `fproduction_remarks` (
  `id` int(11) NOT NULL,
  `record_id` int(11) DEFAULT NULL,
  `Fline_ID` varchar(10) NOT NULL,
  `Shift` varchar(20) NOT NULL,
  `production_date` date NOT NULL,
  `break_number` tinyint(4) NOT NULL,
  `classification` varchar(100) NOT NULL,
  `reason` text NOT NULL,
  `countermeasure` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `udrawingnumber`
--

CREATE TABLE `udrawingnumber` (
  `Umodel_ID` int(11) NOT NULL,
  `Udrawing_ID` int(11) NOT NULL,
  `Udrawingnum` varchar(50) NOT NULL,
  `takttime` decimal(10,2) NOT NULL,
  `length` decimal(10,2) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `udrawingnumber`
--

INSERT INTO `udrawingnumber` (`Umodel_ID`, `Udrawing_ID`, `Udrawingnum`, `takttime`, `length`, `qty`) VALUES
(2, 1, 'a', 1.00, 1.00, 25),
(4, 5, 'b', 25.00, 30.00, 13),
(2, 6, 'ArtlineEK-231N', 28.00, 10.25, 10);

-- --------------------------------------------------------

--
-- Table structure for table `uline`
--

CREATE TABLE `uline` (
  `Uline_ID` int(11) NOT NULL,
  `Ulinenumber` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `uline`
--

INSERT INTO `uline` (`Uline_ID`, `Ulinenumber`) VALUES
(1, '1'),
(2, '2'),
(3, '3'),
(4, '4'),
(5, '5'),
(6, '6'),
(7, '7'),
(8, '8'),
(9, '9'),
(10, '10'),
(11, '11'),
(12, '12');

-- --------------------------------------------------------

--
-- Table structure for table `umember_photos`
--

CREATE TABLE `umember_photos` (
  `id` int(11) NOT NULL,
  `Uline_ID` int(11) NOT NULL,
  `group_code` varchar(8) NOT NULL,
  `role` varchar(32) NOT NULL,
  `photo_url` text NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `umember_photos`
--

INSERT INTO `umember_photos` (`id`, `Uline_ID`, `group_code`, `role`, `photo_url`, `updated_at`) VALUES
(1, 1, 'A', 'technician', '../uploads/line1_A_technician_20250920_035527.png', '2025-09-20 01:55:27'),
(2, 1, 'A', 'leader', '../uploads/line1_A_leader_20250920_043345.png', '2025-09-20 02:33:45'),
(3, 1, 'B', 'leader', '../uploads/line1_B_leader_20250920_035316.png', '2025-09-20 01:53:16'),
(4, 1, 'B', 'technician', '../uploads/line1_B_technician_20250920_035454.png', '2025-09-20 01:54:54');

-- --------------------------------------------------------

--
-- Table structure for table `umodelnumber`
--

CREATE TABLE `umodelnumber` (
  `Umodel_ID` int(11) NOT NULL,
  `Umodel` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `umodelnumber`
--

INSERT INTO `umodelnumber` (`Umodel_ID`, `Umodel`) VALUES
(2, 'a'),
(4, 'b');

-- --------------------------------------------------------

--
-- Table structure for table `uproductiontime`
--

CREATE TABLE `uproductiontime` (
  `Uprod_ID` int(11) NOT NULL,
  `Uprod_name` varchar(100) NOT NULL,
  `Uprod_hours` decimal(5,2) NOT NULL DEFAULT 0.00,
  `Ustart_Time1` time DEFAULT NULL,
  `Uend_Time1` time DEFAULT NULL,
  `Ustart_Time2` time DEFAULT NULL,
  `Uend_Time2` time DEFAULT NULL,
  `Ustart_Time3` time DEFAULT NULL,
  `Uend_Time3` time DEFAULT NULL,
  `Ustart_Time4` time DEFAULT NULL,
  `Uend_Time4` time DEFAULT NULL,
  `Ustart_Time5` time DEFAULT NULL,
  `Uend_Time5` time DEFAULT NULL,
  `Ushift` enum('Day','Night') NOT NULL DEFAULT 'Day',
  `Uprod_label` varchar(100) GENERATED ALWAYS AS (concat(case when `Ushift` = 'Night' then 'Night Shift' else 'Day Shift' end,case when `Uprod_hours` is null or `Uprod_hours` = 0 then '' else concat(' (',`Uprod_hours`,')') end)) STORED
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `uproductiontime`
--

INSERT INTO `uproductiontime` (`Uprod_ID`, `Uprod_name`, `Uprod_hours`, `Ustart_Time1`, `Uend_Time1`, `Ustart_Time2`, `Uend_Time2`, `Ustart_Time3`, `Uend_Time3`, `Ustart_Time4`, `Uend_Time4`, `Ustart_Time5`, `Uend_Time5`, `Ushift`) VALUES
(1, 'Day Shift', 10.25, '06:00:00', '08:45:00', '09:00:00', '11:30:00', '12:30:00', '14:00:00', '14:15:00', '16:00:00', '16:15:00', '18:00:00', 'Day'),
(3, 'Night Shift', 10.25, '18:00:00', '20:45:00', '21:00:00', '23:30:00', '00:30:00', '02:00:00', '02:15:00', '04:00:00', '04:15:00', '06:00:00', 'Night'),
(4, 'For Audit', 7.50, '07:00:00', '09:00:00', '09:15:00', '11:00:00', '12:00:00', '14:00:00', '14:15:00', '16:00:00', '00:00:00', '00:00:00', 'Day');

-- --------------------------------------------------------

--
-- Table structure for table `uproduction_breaks`
--

CREATE TABLE `uproduction_breaks` (
  `id` int(11) NOT NULL,
  `record_id` int(11) NOT NULL,
  `production_date` date NOT NULL,
  `Uline_ID` int(11) NOT NULL,
  `Shift` varchar(50) NOT NULL,
  `break_number` tinyint(4) NOT NULL,
  `start_time` time DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  `work_seconds` int(11) NOT NULL DEFAULT 0,
  `plan_output` int(11) NOT NULL DEFAULT 0,
  `plan_accu` int(11) NOT NULL DEFAULT 0,
  `actual_output` int(11) NOT NULL DEFAULT 0,
  `actual_accu` int(11) NOT NULL DEFAULT 0,
  `diff_balanced` int(11) NOT NULL DEFAULT 0,
  `diff_accu` int(11) NOT NULL DEFAULT 0,
  `reject_qty` int(11) NOT NULL DEFAULT 0,
  `reject_accu` int(11) NOT NULL DEFAULT 0,
  `classification` varchar(100) DEFAULT NULL,
  `reason` text DEFAULT NULL,
  `countermeasure` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `uproduction_breaks`
--

INSERT INTO `uproduction_breaks` (`id`, `record_id`, `production_date`, `Uline_ID`, `Shift`, `break_number`, `start_time`, `end_time`, `work_seconds`, `plan_output`, `plan_accu`, `actual_output`, `actual_accu`, `diff_balanced`, `diff_accu`, `reject_qty`, `reject_accu`, `classification`, `reason`, `countermeasure`, `created_at`, `updated_at`) VALUES
(26, 28, '2025-09-11', 4, 'Day Shift (7.5)', 1, '07:00:00', '09:00:00', 7200, 257, 257, 0, 0, -257, -257, 0, 0, NULL, NULL, NULL, '2025-09-10 21:07:45', '2025-09-10 21:07:45'),
(27, 28, '2025-09-11', 4, 'Day Shift (7.5)', 2, '09:15:00', '11:00:00', 6300, 225, 482, 0, 0, -225, -482, 0, 0, NULL, NULL, NULL, '2025-09-10 21:07:45', '2025-09-10 21:07:45'),
(28, 28, '2025-09-11', 4, 'Day Shift (7.5)', 3, '12:00:00', '14:00:00', 7200, 257, 739, 0, 0, -257, -739, 0, 0, NULL, NULL, NULL, '2025-09-10 21:07:45', '2025-09-10 21:07:45'),
(29, 28, '2025-09-11', 4, 'Day Shift (7.5)', 4, '14:15:00', '16:00:00', 6300, 225, 964, 0, 0, -225, -964, 0, 0, NULL, NULL, NULL, '2025-09-10 21:07:45', '2025-09-10 21:07:45'),
(30, 28, '2025-09-11', 4, 'Day Shift (7.5)', 5, '00:00:00', '00:00:00', 0, 0, 964, 0, 0, 0, -964, 0, 0, NULL, NULL, NULL, '2025-09-10 21:07:45', '2025-09-10 21:07:45'),
(31, 29, '2025-09-11', 4, 'Day Shift (7.5)', 1, '07:00:00', '09:00:00', 7200, 288, 288, 0, 0, -288, -288, 0, 0, NULL, NULL, NULL, '2025-09-10 21:28:19', '2025-09-10 21:28:19'),
(32, 29, '2025-09-11', 4, 'Day Shift (7.5)', 2, '09:15:00', '11:00:00', 6300, 252, 540, 0, 0, -252, -540, 0, 0, NULL, NULL, NULL, '2025-09-10 21:28:19', '2025-09-10 21:28:19'),
(33, 29, '2025-09-11', 4, 'Day Shift (7.5)', 3, '12:00:00', '14:00:00', 7200, 288, 828, 0, 0, -288, -828, 0, 0, NULL, NULL, NULL, '2025-09-10 21:28:19', '2025-09-10 21:28:19'),
(34, 29, '2025-09-11', 4, 'Day Shift (7.5)', 4, '14:15:00', '16:00:00', 6300, 252, 1080, 0, 0, -252, -1080, 0, 0, NULL, NULL, NULL, '2025-09-10 21:28:19', '2025-09-10 21:28:19'),
(35, 29, '2025-09-11', 4, 'Day Shift (7.5)', 5, '00:00:00', '00:00:00', 0, 0, 1080, 0, 0, 0, -1080, 0, 0, NULL, NULL, NULL, '2025-09-10 21:28:19', '2025-09-10 21:28:19'),
(36, 30, '2025-09-11', 4, 'Day Shift', 1, '06:00:00', '08:45:00', 9900, 396, 396, 0, 0, -396, -396, 0, 0, NULL, NULL, NULL, '2025-09-10 21:32:34', '2025-09-10 21:32:34'),
(37, 30, '2025-09-11', 4, 'Day Shift', 2, '09:00:00', '11:30:00', 9000, 360, 756, 0, 0, -360, -756, 0, 0, NULL, NULL, NULL, '2025-09-10 21:32:34', '2025-09-10 21:32:34'),
(38, 30, '2025-09-11', 4, 'Day Shift', 3, '12:30:00', '14:00:00', 5400, 216, 972, 0, 0, -216, -972, 0, 0, NULL, NULL, NULL, '2025-09-10 21:32:34', '2025-09-10 21:32:34'),
(39, 30, '2025-09-11', 4, 'Day Shift', 4, '14:15:00', '16:00:00', 6300, 252, 1224, 0, 0, -252, -1224, 0, 0, NULL, NULL, NULL, '2025-09-10 21:32:34', '2025-09-10 21:32:34'),
(40, 30, '2025-09-11', 4, 'Day Shift', 5, '16:15:00', '18:00:00', 6300, 252, 1476, 0, 0, -252, -1476, 0, 0, NULL, NULL, NULL, '2025-09-10 21:32:34', '2025-09-10 21:32:34'),
(41, 31, '2025-09-11', 4, 'Day Shift', 1, '07:00:00', '09:00:00', 7200, 257, 257, 0, 0, -257, -257, 0, 0, NULL, NULL, NULL, '2025-09-11 00:31:00', '2025-09-11 00:31:00'),
(42, 31, '2025-09-11', 4, 'Day Shift', 2, '09:15:00', '11:00:00', 6300, 225, 482, 0, 0, -225, -482, 0, 0, NULL, NULL, NULL, '2025-09-11 00:31:00', '2025-09-11 00:31:00'),
(43, 31, '2025-09-11', 4, 'Day Shift', 3, '12:00:00', '14:00:00', 7200, 257, 739, 0, 0, -257, -739, 0, 0, NULL, NULL, NULL, '2025-09-11 00:31:00', '2025-09-11 00:31:00'),
(44, 31, '2025-09-11', 4, 'Day Shift', 4, '14:15:00', '16:00:00', 6300, 225, 964, 0, 0, -225, -964, 0, 0, NULL, NULL, NULL, '2025-09-11 00:31:00', '2025-09-11 00:31:00'),
(45, 31, '2025-09-11', 4, 'Day Shift', 5, '00:00:00', '00:00:00', 0, 0, 964, 0, 0, 0, -964, 0, 0, NULL, NULL, NULL, '2025-09-11 00:31:00', '2025-09-11 00:31:00'),
(46, 32, '2025-09-11', 1, 'Day', 1, '00:00:00', '00:00:00', 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, '2025-09-11 00:50:10', '2025-09-11 00:50:10'),
(52, 34, '2025-09-11', 1, 'Day Shift', 2, '09:00:00', '11:30:00', 9000, 9000, 18900, 0, 0, -9000, -18900, 0, 0, NULL, NULL, NULL, '2025-09-11 01:17:33', '2025-09-11 01:17:33'),
(53, 34, '2025-09-11', 1, 'Day Shift', 3, '12:30:00', '14:00:00', 5400, 5400, 24300, 0, 0, -5400, -24300, 0, 0, NULL, NULL, NULL, '2025-09-11 01:17:33', '2025-09-11 01:17:33'),
(54, 34, '2025-09-11', 1, 'Day Shift', 4, '14:15:00', '16:00:00', 6300, 6300, 30600, 0, 0, -6300, -30600, 0, 0, NULL, NULL, NULL, '2025-09-11 01:17:33', '2025-09-11 01:17:33'),
(55, 34, '2025-09-11', 1, 'Day Shift', 5, '16:15:00', '18:00:00', 6300, 6300, 36900, 0, 0, -6300, -36900, 0, 0, NULL, NULL, NULL, '2025-09-11 01:17:33', '2025-09-11 01:17:33'),
(56, 35, '2025-09-11', 3, 'Day Shift', 1, '07:00:00', '09:00:00', 7200, 288, 288, 0, 0, -288, -288, 0, 0, NULL, NULL, NULL, '2025-09-11 01:21:36', '2025-09-11 01:21:36'),
(57, 35, '2025-09-11', 3, 'Day Shift', 2, '09:15:00', '11:00:00', 6300, 252, 540, 0, 0, -252, -540, 0, 0, NULL, NULL, NULL, '2025-09-11 01:21:36', '2025-09-11 01:21:36'),
(58, 35, '2025-09-11', 3, 'Day Shift', 3, '12:00:00', '14:00:00', 7200, 288, 828, 0, 0, -288, -828, 0, 0, NULL, NULL, NULL, '2025-09-11 01:21:36', '2025-09-11 01:21:36'),
(59, 35, '2025-09-11', 3, 'Day Shift', 4, '14:15:00', '16:00:00', 6300, 252, 1080, 0, 0, -252, -1080, 0, 0, NULL, NULL, NULL, '2025-09-11 01:21:36', '2025-09-11 01:21:36'),
(60, 35, '2025-09-11', 3, 'Day Shift', 5, '00:00:00', '00:00:00', 0, 0, 1080, 0, 0, 0, -1080, 0, 0, NULL, NULL, NULL, '2025-09-11 01:21:36', '2025-09-11 01:21:36'),
(61, 36, '2025-09-12', 1, 'Day Shift', 1, '07:00:00', '09:00:00', 7200, 257, 257, 0, 0, -257, -257, 0, 0, NULL, NULL, NULL, '2025-09-11 21:35:26', '2025-09-11 21:35:26'),
(62, 36, '2025-09-12', 1, 'Day Shift', 2, '09:15:00', '11:00:00', 6300, 225, 482, 0, 0, -225, -482, 0, 0, NULL, NULL, NULL, '2025-09-11 21:35:26', '2025-09-11 21:35:26'),
(63, 36, '2025-09-12', 1, 'Day Shift', 3, '12:00:00', '14:00:00', 7200, 257, 739, 0, 0, -257, -739, 0, 0, NULL, NULL, NULL, '2025-09-11 21:35:26', '2025-09-11 21:35:26'),
(64, 36, '2025-09-12', 1, 'Day Shift', 4, '14:15:00', '16:00:00', 6300, 225, 964, 0, 0, -225, -964, 0, 0, NULL, NULL, NULL, '2025-09-11 21:35:26', '2025-09-11 21:35:26'),
(65, 36, '2025-09-12', 1, 'Day Shift', 5, '00:00:00', '00:00:00', 0, 0, 964, 0, 0, 0, -964, 0, 0, NULL, NULL, NULL, '2025-09-11 21:35:26', '2025-09-11 21:35:26'),
(66, 37, '2025-09-12', 4, 'Day Shift', 1, '07:00:00', '09:00:00', 7200, 288, 288, 0, 0, -288, -288, 0, 0, NULL, NULL, NULL, '2025-09-11 21:36:09', '2025-09-11 21:36:09'),
(67, 37, '2025-09-12', 4, 'Day Shift', 2, '09:15:00', '11:00:00', 6300, 252, 540, 0, 0, -252, -540, 0, 0, NULL, NULL, NULL, '2025-09-11 21:36:09', '2025-09-11 21:36:09'),
(68, 37, '2025-09-12', 4, 'Day Shift', 3, '12:00:00', '14:00:00', 7200, 288, 828, 0, 0, -288, -828, 0, 0, NULL, NULL, NULL, '2025-09-11 21:36:09', '2025-09-11 21:36:09'),
(69, 37, '2025-09-12', 4, 'Day Shift', 4, '14:15:00', '16:00:00', 6300, 252, 1080, 0, 0, -252, -1080, 0, 0, NULL, NULL, NULL, '2025-09-11 21:36:09', '2025-09-11 21:36:09'),
(70, 37, '2025-09-12', 4, 'Day Shift', 5, '00:00:00', '00:00:00', 0, 0, 1080, 0, 0, 0, -1080, 0, 0, NULL, NULL, NULL, '2025-09-11 21:36:09', '2025-09-11 21:36:09'),
(71, 38, '2025-09-12', 1, 'Day Shift', 1, '06:00:00', '08:45:00', 9900, 396, 396, 0, 0, -396, -396, 0, 0, NULL, NULL, NULL, '2025-09-11 21:55:20', '2025-09-11 21:55:20'),
(72, 38, '2025-09-12', 1, 'Day Shift', 2, '09:00:00', '11:30:00', 9000, 360, 756, 0, 0, -360, -756, 0, 0, NULL, NULL, NULL, '2025-09-11 21:55:20', '2025-09-11 21:55:20'),
(73, 38, '2025-09-12', 1, 'Day Shift', 3, '12:30:00', '14:00:00', 5400, 216, 972, 0, 0, -216, -972, 0, 0, NULL, NULL, NULL, '2025-09-11 21:55:20', '2025-09-11 21:55:20'),
(74, 38, '2025-09-12', 1, 'Day Shift', 4, '14:15:00', '16:00:00', 6300, 252, 1224, 0, 0, -252, -1224, 0, 0, NULL, NULL, NULL, '2025-09-11 21:55:20', '2025-09-11 21:55:20'),
(75, 38, '2025-09-12', 1, 'Day Shift', 5, '16:15:00', '18:00:00', 6300, 252, 1476, 0, 0, -252, -1476, 0, 0, NULL, NULL, NULL, '2025-09-11 21:55:20', '2025-09-11 21:55:20'),
(76, 40, '2025-09-12', 2, 'Day Shift', 1, '07:00:00', '09:00:00', 7200, 288, 288, 0, 0, -288, -288, 0, 0, NULL, NULL, NULL, '2025-09-12 02:36:35', '2025-09-12 02:36:35'),
(77, 40, '2025-09-12', 2, 'Day Shift', 2, '09:15:00', '11:00:00', 6300, 252, 540, 0, 0, -252, -540, 0, 0, NULL, NULL, NULL, '2025-09-12 02:36:35', '2025-09-12 02:36:35'),
(78, 40, '2025-09-12', 2, 'Day Shift', 3, '12:00:00', '14:00:00', 7200, 288, 828, 0, 0, -288, -828, 0, 0, NULL, NULL, NULL, '2025-09-12 02:36:35', '2025-09-12 02:36:35'),
(79, 40, '2025-09-12', 2, 'Day Shift', 4, '14:15:00', '16:00:00', 6300, 252, 1080, 0, 0, -252, -1080, 0, 0, NULL, NULL, NULL, '2025-09-12 02:36:35', '2025-09-12 02:36:35'),
(80, 40, '2025-09-12', 2, 'Day Shift', 5, '00:00:00', '00:00:00', 0, 0, 1080, 0, 0, 0, -1080, 0, 0, NULL, NULL, NULL, '2025-09-12 02:36:35', '2025-09-12 02:36:35'),
(81, 41, '2025-09-12', 2, 'Day Shift', 1, '06:00:00', '08:45:00', 9900, 396, 396, 0, 0, -396, -396, 0, 0, NULL, NULL, NULL, '2025-09-12 02:58:42', '2025-09-12 02:58:42'),
(82, 41, '2025-09-12', 2, 'Day Shift', 2, '09:00:00', '11:30:00', 9000, 337, 733, 0, 0, -337, -733, 0, 0, NULL, NULL, NULL, '2025-09-12 02:58:42', '2025-09-12 02:58:42'),
(83, 41, '2025-09-12', 2, 'Day Shift', 3, '12:30:00', '14:00:00', 5400, 192, 925, 0, 0, -192, -925, 0, 0, NULL, NULL, NULL, '2025-09-12 02:58:42', '2025-09-12 02:58:42'),
(84, 41, '2025-09-12', 2, 'Day Shift', 4, '14:15:00', '16:00:00', 6300, 225, 1150, 0, 0, -225, -1150, 0, 0, NULL, NULL, NULL, '2025-09-12 02:58:42', '2025-09-12 02:58:42'),
(85, 41, '2025-09-12', 2, 'Day Shift', 5, '16:15:00', '18:00:00', 6300, 225, 1375, 0, 0, -225, -1375, 0, 0, NULL, NULL, NULL, '2025-09-12 02:58:42', '2025-09-12 02:58:42'),
(86, 42, '2025-09-15', 1, 'Day Shift', 1, '06:00:00', '08:45:00', 9900, 396, 396, 0, 0, -396, -396, 0, 0, NULL, NULL, NULL, '2025-09-14 23:15:34', '2025-09-14 23:15:34'),
(87, 42, '2025-09-15', 1, 'Day Shift', 2, '09:00:00', '11:30:00', 9000, 360, 756, 0, 0, -360, -756, 0, 0, NULL, NULL, NULL, '2025-09-14 23:15:34', '2025-09-14 23:15:34'),
(88, 42, '2025-09-15', 1, 'Day Shift', 3, '12:30:00', '14:00:00', 5400, 216, 972, 0, 0, -216, -972, 0, 0, NULL, NULL, NULL, '2025-09-14 23:15:34', '2025-09-14 23:15:34'),
(89, 42, '2025-09-15', 1, 'Day Shift', 4, '14:15:00', '16:00:00', 6300, 252, 1224, 0, 0, -252, -1224, 0, 0, NULL, NULL, NULL, '2025-09-14 23:15:34', '2025-09-14 23:15:34'),
(90, 42, '2025-09-15', 1, 'Day Shift', 5, '16:15:00', '18:00:00', 6300, 252, 1476, 0, 0, -252, -1476, 0, 0, NULL, NULL, NULL, '2025-09-14 23:15:34', '2025-09-14 23:15:34'),
(91, 43, '2025-09-19', 1, 'Day Shift', 1, '06:00:00', '08:45:00', 9900, 396, 396, 0, 0, -396, -396, 0, 0, NULL, NULL, NULL, '2025-09-19 00:32:50', '2025-09-19 00:32:50'),
(92, 43, '2025-09-19', 1, 'Day Shift', 2, '09:00:00', '11:30:00', 9000, 360, 756, 0, 0, -360, -756, 0, 0, NULL, NULL, NULL, '2025-09-19 00:32:50', '2025-09-19 00:32:50'),
(93, 43, '2025-09-19', 1, 'Day Shift', 3, '12:30:00', '14:00:00', 5400, 216, 972, 0, 0, -216, -972, 0, 0, NULL, NULL, NULL, '2025-09-19 00:32:50', '2025-09-19 00:32:50'),
(94, 43, '2025-09-19', 1, 'Day Shift', 4, '14:15:00', '16:00:00', 6300, 252, 1224, 0, 0, -252, -1224, 0, 0, NULL, NULL, NULL, '2025-09-19 00:32:50', '2025-09-19 00:32:50'),
(95, 43, '2025-09-19', 1, 'Day Shift', 5, '16:15:00', '18:00:00', 6300, 252, 1476, 0, 0, -252, -1476, 0, 0, NULL, NULL, NULL, '2025-09-19 00:32:50', '2025-09-19 00:32:50'),
(96, 44, '2025-09-20', 1, 'Day Shift', 1, '06:00:00', '08:45:00', 9900, 396, 396, 0, 0, -396, -396, 0, 0, NULL, NULL, NULL, '2025-09-19 17:00:38', '2025-09-19 17:00:38'),
(97, 44, '2025-09-20', 1, 'Day Shift', 2, '09:00:00', '11:30:00', 9000, 360, 756, 0, 0, -360, -756, 0, 0, NULL, NULL, NULL, '2025-09-19 17:00:38', '2025-09-19 17:00:38'),
(98, 44, '2025-09-20', 1, 'Day Shift', 3, '12:30:00', '14:00:00', 5400, 216, 972, 0, 0, -216, -972, 0, 0, NULL, NULL, NULL, '2025-09-19 17:00:38', '2025-09-19 17:00:38'),
(99, 44, '2025-09-20', 1, 'Day Shift', 4, '14:15:00', '16:00:00', 6300, 252, 1224, 0, 0, -252, -1224, 0, 0, NULL, NULL, NULL, '2025-09-19 17:00:38', '2025-09-19 17:00:38'),
(100, 44, '2025-09-20', 1, 'Day Shift', 5, '16:15:00', '18:00:00', 6300, 252, 1476, 0, 0, -252, -1476, 0, 0, NULL, NULL, NULL, '2025-09-19 17:00:38', '2025-09-19 17:00:38'),
(101, 45, '2025-09-23', 1, 'Day Shift', 1, '06:00:00', '08:45:00', 9900, 396, 396, 0, 0, -396, -396, 0, 0, NULL, NULL, NULL, '2025-09-23 03:25:21', '2025-09-23 03:25:21'),
(102, 45, '2025-09-23', 1, 'Day Shift', 2, '09:00:00', '11:30:00', 9000, 360, 756, 0, 0, -360, -756, 0, 0, NULL, NULL, NULL, '2025-09-23 03:25:21', '2025-09-23 03:25:21'),
(103, 45, '2025-09-23', 1, 'Day Shift', 3, '12:30:00', '14:00:00', 5400, 216, 972, 0, 0, -216, -972, 0, 0, NULL, NULL, NULL, '2025-09-23 03:25:21', '2025-09-23 03:25:21'),
(104, 45, '2025-09-23', 1, 'Day Shift', 4, '14:15:00', '16:00:00', 6300, 252, 1224, 0, 0, -252, -1224, 0, 0, NULL, NULL, NULL, '2025-09-23 03:25:21', '2025-09-23 03:25:21'),
(105, 45, '2025-09-23', 1, 'Day Shift', 5, '16:15:00', '18:00:00', 6300, 252, 1476, 0, 0, -252, -1476, 0, 0, NULL, NULL, NULL, '2025-09-23 03:25:21', '2025-09-23 03:25:21'),
(106, 46, '2025-09-23', 1, 'Night Shift', 1, '18:00:00', '20:45:00', 9900, 353, 353, 0, 0, -353, -353, 0, 0, NULL, NULL, NULL, '2025-09-23 03:40:02', '2025-09-23 03:40:02'),
(107, 46, '2025-09-23', 1, 'Night Shift', 2, '21:00:00', '23:30:00', 9000, 321, 674, 0, 0, -321, -674, 0, 0, NULL, NULL, NULL, '2025-09-23 03:40:02', '2025-09-23 03:40:02'),
(108, 46, '2025-09-23', 1, 'Night Shift', 3, '00:30:00', '02:00:00', 5400, 192, 866, 0, 0, -192, -866, 0, 0, NULL, NULL, NULL, '2025-09-23 03:40:02', '2025-09-23 03:40:02'),
(109, 46, '2025-09-23', 1, 'Night Shift', 4, '02:15:00', '04:00:00', 6300, 225, 1091, 0, 0, -225, -1091, 0, 0, NULL, NULL, NULL, '2025-09-23 03:40:02', '2025-09-23 03:40:02'),
(110, 46, '2025-09-23', 1, 'Night Shift', 5, '04:15:00', '06:00:00', 6300, 225, 1316, 0, 0, -225, -1316, 0, 0, NULL, NULL, NULL, '2025-09-23 03:40:02', '2025-09-23 03:40:02'),
(111, 47, '2025-09-23', 1, 'Night Shift', 1, '18:00:00', '20:45:00', 9900, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, '2025-09-23 03:48:18', '2025-09-23 03:48:18'),
(112, 47, '2025-09-23', 1, 'Night Shift', 2, '21:00:00', '23:30:00', 9000, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, '2025-09-23 03:48:18', '2025-09-23 03:48:18'),
(113, 47, '2025-09-23', 1, 'Night Shift', 3, '00:30:00', '02:00:00', 5400, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, '2025-09-23 03:48:18', '2025-09-23 03:48:18'),
(114, 47, '2025-09-23', 1, 'Night Shift', 4, '02:15:00', '04:00:00', 6300, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, '2025-09-23 03:48:18', '2025-09-23 03:48:18'),
(115, 47, '2025-09-23', 1, 'Night Shift', 5, '04:15:00', '06:00:00', 6300, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, '2025-09-23 03:48:18', '2025-09-23 03:48:18'),
(116, 48, '2025-09-23', 1, 'Night Shift', 1, '18:00:00', '20:45:00', 9900, 353, 353, 0, 0, -353, -353, 0, 0, NULL, NULL, NULL, '2025-09-23 04:04:47', '2025-09-23 04:04:47'),
(117, 48, '2025-09-23', 1, 'Night Shift', 2, '21:00:00', '23:30:00', 9000, 321, 674, 0, 0, -321, -674, 0, 0, NULL, NULL, NULL, '2025-09-23 04:04:47', '2025-09-23 04:04:47'),
(118, 48, '2025-09-23', 1, 'Night Shift', 3, '00:30:00', '02:00:00', 5400, 192, 866, 0, 0, -192, -866, 0, 0, NULL, NULL, NULL, '2025-09-23 04:04:47', '2025-09-23 04:04:47'),
(119, 48, '2025-09-23', 1, 'Night Shift', 4, '02:15:00', '04:00:00', 6300, 225, 1091, 0, 0, -225, -1091, 0, 0, NULL, NULL, NULL, '2025-09-23 04:04:47', '2025-09-23 04:04:47'),
(120, 48, '2025-09-23', 1, 'Night Shift', 5, '04:15:00', '06:00:00', 6300, 225, 1316, 0, 0, -225, -1316, 0, 0, NULL, NULL, NULL, '2025-09-23 04:04:47', '2025-09-23 04:04:47'),
(121, 49, '2025-09-29', 1, 'Day Shift', 1, '06:00:00', '08:45:00', 9900, 396, 396, 0, 0, -396, -396, 0, 0, NULL, NULL, NULL, '2025-09-28 19:29:13', '2025-09-28 19:29:13'),
(122, 49, '2025-09-29', 1, 'Day Shift', 2, '09:00:00', '11:30:00', 9000, 360, 756, 0, 0, -360, -756, 0, 0, NULL, NULL, NULL, '2025-09-28 19:29:13', '2025-09-28 19:29:13'),
(123, 49, '2025-09-29', 1, 'Day Shift', 3, '12:30:00', '14:00:00', 5400, 216, 972, 0, 0, -216, -972, 0, 0, NULL, NULL, NULL, '2025-09-28 19:29:13', '2025-09-28 19:29:13'),
(124, 49, '2025-09-29', 1, 'Day Shift', 4, '14:15:00', '16:00:00', 6300, 252, 1224, 0, 0, -252, -1224, 0, 0, NULL, NULL, NULL, '2025-09-28 19:29:13', '2025-09-28 19:29:13'),
(125, 49, '2025-09-29', 1, 'Day Shift', 5, '16:15:00', '18:00:00', 6300, 252, 1476, 0, 0, -252, -1476, 0, 0, NULL, NULL, NULL, '2025-09-28 19:29:13', '2025-09-28 19:29:13'),
(126, 50, '2025-09-29', 1, 'Day Shift', 1, '06:00:00', '08:45:00', 9900, 396, 396, 0, 0, -396, -396, 0, 0, NULL, NULL, NULL, '2025-09-29 08:57:30', '2025-09-29 08:57:30'),
(127, 50, '2025-09-29', 1, 'Day Shift', 2, '09:00:00', '11:30:00', 9000, 360, 756, 0, 0, -360, -756, 0, 0, NULL, NULL, NULL, '2025-09-29 08:57:30', '2025-09-29 08:57:30'),
(128, 50, '2025-09-29', 1, 'Day Shift', 3, '12:30:00', '14:00:00', 5400, 216, 972, 0, 0, -216, -972, 0, 0, NULL, NULL, NULL, '2025-09-29 08:57:30', '2025-09-29 08:57:30'),
(129, 50, '2025-09-29', 1, 'Day Shift', 4, '14:15:00', '16:00:00', 6300, 252, 1224, 0, 0, -252, -1224, 0, 0, NULL, NULL, NULL, '2025-09-29 08:57:30', '2025-09-29 08:57:30'),
(130, 50, '2025-09-29', 1, 'Day Shift', 5, '16:15:00', '18:00:00', 6300, 252, 1476, 0, 0, -252, -1476, 0, 0, NULL, NULL, NULL, '2025-09-29 08:57:30', '2025-09-29 08:57:30'),
(131, 51, '2025-09-29', 1, 'Day Shift', 1, '06:00:00', '08:45:00', 9900, 396, 396, 0, 0, -396, -396, 0, 0, NULL, NULL, NULL, '2025-09-29 09:02:46', '2025-09-29 09:02:46'),
(132, 51, '2025-09-29', 1, 'Day Shift', 2, '09:00:00', '11:30:00', 9000, 360, 756, 0, 0, -360, -756, 0, 0, NULL, NULL, NULL, '2025-09-29 09:02:46', '2025-09-29 09:02:46'),
(133, 51, '2025-09-29', 1, 'Day Shift', 3, '12:30:00', '14:00:00', 5400, 216, 972, 0, 0, -216, -972, 0, 0, NULL, NULL, NULL, '2025-09-29 09:02:46', '2025-09-29 09:02:46'),
(134, 51, '2025-09-29', 1, 'Day Shift', 4, '14:15:00', '16:00:00', 6300, 252, 1224, 0, 0, -252, -1224, 0, 0, NULL, NULL, NULL, '2025-09-29 09:02:46', '2025-09-29 09:02:46'),
(135, 51, '2025-09-29', 1, 'Day Shift', 5, '16:15:00', '18:00:00', 6300, 252, 1476, 0, 0, -252, -1476, 0, 0, NULL, NULL, NULL, '2025-09-29 09:02:46', '2025-09-29 09:02:46'),
(136, 52, '2025-09-29', 1, 'Day Shift', 1, '06:00:00', '08:45:00', 9900, 396, 396, 0, 0, -396, -396, 0, 0, NULL, NULL, NULL, '2025-09-29 09:24:47', '2025-09-29 09:24:47'),
(137, 52, '2025-09-29', 1, 'Day Shift', 2, '09:00:00', '11:30:00', 9000, 360, 756, 0, 0, -360, -756, 0, 0, NULL, NULL, NULL, '2025-09-29 09:24:47', '2025-09-29 09:24:47'),
(138, 52, '2025-09-29', 1, 'Day Shift', 3, '12:30:00', '14:00:00', 5400, 216, 972, 0, 0, -216, -972, 0, 0, NULL, NULL, NULL, '2025-09-29 09:24:47', '2025-09-29 09:24:47'),
(139, 52, '2025-09-29', 1, 'Day Shift', 4, '14:15:00', '16:00:00', 6300, 252, 1224, 0, 0, -252, -1224, 0, 0, NULL, NULL, NULL, '2025-09-29 09:24:47', '2025-09-29 09:24:47'),
(140, 52, '2025-09-29', 1, 'Day Shift', 5, '16:15:00', '18:00:00', 6300, 252, 1476, 0, 0, -252, -1476, 0, 0, NULL, NULL, NULL, '2025-09-29 09:24:47', '2025-09-29 09:24:47'),
(141, 53, '2025-09-29', 1, 'Night Shift', 1, '18:00:00', '20:45:00', 9900, 396, 396, 396, 396, 0, 0, 0, 0, NULL, NULL, NULL, '2025-09-29 09:33:03', '2025-09-29 13:35:56'),
(142, 53, '2025-09-29', 1, 'Night Shift', 2, '21:00:00', '23:30:00', 9000, 360, 756, 360, 756, 0, 0, 0, 0, NULL, NULL, NULL, '2025-09-29 09:33:03', '2025-09-29 13:35:56'),
(143, 53, '2025-09-29', 1, 'Night Shift', 3, '00:30:00', '02:00:00', 5400, 216, 972, 78, 834, -138, -138, 0, 0, NULL, NULL, NULL, '2025-09-29 09:33:03', '2025-09-29 13:35:56'),
(144, 53, '2025-09-29', 1, 'Night Shift', 4, '02:15:00', '04:00:00', 6300, 252, 1224, 0, 834, -252, -390, 0, 0, NULL, NULL, NULL, '2025-09-29 09:33:03', '2025-09-29 13:35:56'),
(145, 53, '2025-09-29', 1, 'Night Shift', 5, '04:15:00', '06:00:00', 6300, 252, 1476, 0, 834, -252, -642, 0, 0, NULL, NULL, NULL, '2025-09-29 09:33:03', '2025-09-29 13:35:56'),
(146, 54, '2025-09-30', 1, 'Day Shift', 1, '06:00:00', '08:45:00', 9900, 396, 396, 396, 396, 0, 0, 0, 0, NULL, NULL, NULL, '2025-09-29 13:13:53', '2025-09-29 23:45:50'),
(147, 54, '2025-09-30', 1, 'Day Shift', 2, '09:00:00', '11:30:00', 9000, 360, 756, 360, 756, 0, 0, 0, 0, NULL, NULL, NULL, '2025-09-29 13:13:53', '2025-09-29 23:45:50'),
(148, 54, '2025-09-30', 1, 'Day Shift', 3, '12:30:00', '14:00:00', 5400, 216, 972, 13, 769, -203, -203, 0, 0, NULL, NULL, NULL, '2025-09-29 13:13:53', '2025-09-29 23:45:50'),
(149, 54, '2025-09-30', 1, 'Day Shift', 4, '14:15:00', '16:00:00', 6300, 252, 1224, 0, 769, -252, -455, 0, 0, NULL, NULL, NULL, '2025-09-29 13:13:53', '2025-09-29 23:45:50'),
(150, 54, '2025-09-30', 1, 'Day Shift', 5, '16:15:00', '18:00:00', 6300, 252, 1476, 0, 769, -252, -707, 0, 0, NULL, NULL, NULL, '2025-09-29 13:13:53', '2025-09-29 23:45:50'),
(151, 55, '2025-09-30', 1, 'Night Shift', 1, '18:00:00', '20:45:00', 9900, 396, 396, 130, 130, -266, -266, 0, 0, NULL, NULL, NULL, '2025-09-30 04:37:50', '2025-09-30 11:43:58'),
(152, 55, '2025-09-30', 1, 'Night Shift', 2, '21:00:00', '23:30:00', 9000, 360, 756, 0, 130, -360, -626, 0, 0, NULL, NULL, NULL, '2025-09-30 04:37:50', '2025-09-30 11:43:58'),
(153, 55, '2025-09-30', 1, 'Night Shift', 3, '00:30:00', '02:00:00', 5400, 216, 972, 0, 130, -216, -842, 0, 0, NULL, NULL, NULL, '2025-09-30 04:37:50', '2025-09-30 11:43:58'),
(154, 55, '2025-09-30', 1, 'Night Shift', 4, '02:15:00', '04:00:00', 6300, 252, 1224, 0, 130, -252, -1094, 0, 0, NULL, NULL, NULL, '2025-09-30 04:37:50', '2025-09-30 11:43:58'),
(155, 55, '2025-09-30', 1, 'Night Shift', 5, '04:15:00', '06:00:00', 6300, 252, 1476, 0, 130, -252, -1346, 0, 0, NULL, NULL, NULL, '2025-09-30 04:37:50', '2025-09-30 11:43:58'),
(156, 56, '2025-10-01', 1, 'Day Shift', 1, '06:00:00', '08:45:00', 9900, 396, 396, 0, 0, -396, -396, 0, 0, NULL, NULL, NULL, '2025-09-29 23:44:21', '2025-09-29 23:44:21'),
(157, 56, '2025-10-01', 1, 'Day Shift', 2, '09:00:00', '11:30:00', 9000, 360, 756, 0, 0, -360, -756, 0, 0, NULL, NULL, NULL, '2025-09-29 23:44:21', '2025-09-29 23:44:21'),
(158, 56, '2025-10-01', 1, 'Day Shift', 3, '12:30:00', '14:00:00', 5400, 216, 972, 0, 0, -216, -972, 0, 0, NULL, NULL, NULL, '2025-09-29 23:44:21', '2025-09-29 23:44:21'),
(159, 56, '2025-10-01', 1, 'Day Shift', 4, '14:15:00', '16:00:00', 6300, 252, 1224, 0, 0, -252, -1224, 0, 0, NULL, NULL, NULL, '2025-09-29 23:44:21', '2025-09-29 23:44:21'),
(160, 56, '2025-10-01', 1, 'Day Shift', 5, '16:15:00', '18:00:00', 6300, 252, 1476, 0, 0, -252, -1476, 0, 0, NULL, NULL, NULL, '2025-09-29 23:44:21', '2025-09-29 23:44:21'),
(161, 57, '2025-09-30', 1, 'Day Shift', 1, '06:00:00', '08:45:00', 9900, 396, 396, 13, 13, -383, -383, 0, 0, NULL, NULL, NULL, '2025-09-29 23:46:29', '2025-09-29 23:46:35'),
(162, 57, '2025-09-30', 1, 'Day Shift', 2, '09:00:00', '11:30:00', 9000, 360, 756, 0, 13, -360, -743, 0, 0, NULL, NULL, NULL, '2025-09-29 23:46:29', '2025-09-29 23:46:35'),
(163, 57, '2025-09-30', 1, 'Day Shift', 3, '12:30:00', '14:00:00', 5400, 216, 972, 0, 13, -216, -959, 0, 0, NULL, NULL, NULL, '2025-09-29 23:46:29', '2025-09-29 23:46:35'),
(164, 57, '2025-09-30', 1, 'Day Shift', 4, '14:15:00', '16:00:00', 6300, 252, 1224, 0, 13, -252, -1211, 0, 0, NULL, NULL, NULL, '2025-09-29 23:46:29', '2025-09-29 23:46:35'),
(165, 57, '2025-09-30', 1, 'Day Shift', 5, '16:15:00', '18:00:00', 6300, 252, 1476, 0, 13, -252, -1463, 0, 0, NULL, NULL, NULL, '2025-09-29 23:46:29', '2025-09-29 23:46:35'),
(166, 58, '2025-10-01', 1, 'Day Shift', 1, '06:00:00', '08:45:00', 9900, 396, 396, 396, 396, 0, 0, 0, 0, NULL, NULL, NULL, '2025-09-30 22:46:23', '2025-10-01 04:22:44'),
(167, 58, '2025-10-01', 1, 'Day Shift', 2, '09:00:00', '11:30:00', 9000, 360, 756, 247, 643, -113, -113, 0, 0, NULL, NULL, NULL, '2025-09-30 22:46:23', '2025-10-01 04:22:44'),
(168, 58, '2025-10-01', 1, 'Day Shift', 3, '12:30:00', '14:00:00', 5400, 216, 972, 0, 643, -216, -329, 0, 0, NULL, NULL, NULL, '2025-09-30 22:46:23', '2025-10-01 04:22:44'),
(169, 58, '2025-10-01', 1, 'Day Shift', 4, '14:15:00', '16:00:00', 6300, 252, 1224, 0, 643, -252, -581, 0, 0, NULL, NULL, NULL, '2025-09-30 22:46:23', '2025-10-01 04:22:44'),
(170, 58, '2025-10-01', 1, 'Day Shift', 5, '16:15:00', '18:00:00', 6300, 252, 1476, 0, 643, -252, -833, 0, 0, NULL, NULL, NULL, '2025-09-30 22:46:23', '2025-10-01 04:22:44'),
(171, 59, '2025-10-04', 1, 'Day Shift', 1, '06:00:00', '08:45:00', 9900, 353, 353, 110, 110, -243, -243, 0, 0, NULL, NULL, NULL, '2025-10-03 21:44:39', '2025-10-03 21:44:59'),
(172, 59, '2025-10-04', 1, 'Day Shift', 2, '09:00:00', '11:30:00', 9000, 321, 674, 0, 110, -321, -564, 0, 0, NULL, NULL, NULL, '2025-10-03 21:44:39', '2025-10-03 21:44:59'),
(173, 59, '2025-10-04', 1, 'Day Shift', 3, '12:30:00', '14:00:00', 5400, 192, 866, 0, 110, -192, -756, 0, 0, NULL, NULL, NULL, '2025-10-03 21:44:39', '2025-10-03 21:44:59'),
(174, 59, '2025-10-04', 1, 'Day Shift', 4, '14:15:00', '16:00:00', 6300, 225, 1091, 0, 110, -225, -981, 0, 0, NULL, NULL, NULL, '2025-10-03 21:44:39', '2025-10-03 21:44:59'),
(175, 59, '2025-10-04', 1, 'Day Shift', 5, '16:15:00', '18:00:00', 6300, 225, 1316, 0, 110, -225, -1206, 0, 0, NULL, NULL, NULL, '2025-10-03 21:44:39', '2025-10-03 21:44:59');

-- --------------------------------------------------------

--
-- Table structure for table `uproduction_model_progress`
--

CREATE TABLE `uproduction_model_progress` (
  `id` int(11) NOT NULL,
  `record_id` int(11) NOT NULL,
  `model_index` int(11) NOT NULL,
  `Udrawing_ID` int(11) NOT NULL,
  `model_qty_per_press` int(11) NOT NULL DEFAULT 0,
  `model_plan_total` int(11) NOT NULL DEFAULT 0,
  `produced_units` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `uproduction_model_progress`
--

INSERT INTO `uproduction_model_progress` (`id`, `record_id`, `model_index`, `Udrawing_ID`, `model_qty_per_press`, `model_plan_total`, `produced_units`, `created_at`, `updated_at`) VALUES
(26, 21, 1, 1, 36900, 36900, 0, '2025-09-09 04:56:03', NULL),
(27, 22, 1, 5, 1476, 1476, 0, '2025-09-09 07:02:14', NULL),
(28, 23, 1, 6, 1317, 1316, 0, '2025-09-09 02:38:10', NULL),
(29, 24, 1, 6, 1317, 1316, 0, '2025-09-09 02:44:46', NULL),
(30, 25, 1, 6, 1317, 1316, 0, '2025-09-09 20:59:43', NULL),
(31, 26, 1, 6, 1317, 1316, 0, '2025-09-10 18:32:01', NULL),
(32, 27, 1, 5, 1080, 1080, 0, '2025-09-10 20:58:46', NULL),
(33, 28, 1, 6, 964, 964, 0, '2025-09-10 21:07:42', NULL),
(34, 29, 1, 5, 1080, 1080, 0, '2025-09-10 21:28:18', NULL),
(35, 30, 1, 5, 1476, 1476, 0, '2025-09-10 21:32:33', NULL),
(36, 31, 1, 6, 964, 964, 0, '2025-09-11 00:30:59', NULL),
(37, 32, 1, 5, 1080, 1166400, 0, '2025-09-11 00:50:09', NULL),
(38, 33, 1, 5, 1080, 1166400, 0, '2025-09-11 00:52:18', NULL),
(39, 34, 1, 1, 36900, 36900, 0, '2025-09-11 01:17:32', NULL),
(40, 35, 1, 5, 1080, 1080, 0, '2025-09-11 01:21:35', NULL),
(41, 36, 1, 6, 964, 964, 0, '2025-09-11 21:35:25', NULL),
(42, 37, 1, 5, 1080, 1080, 0, '2025-09-11 21:36:09', NULL),
(43, 38, 1, 5, 1476, 1476, 0, '2025-09-11 21:55:18', NULL),
(44, 40, 1, 5, 1080, 1080, 0, '2025-09-12 02:36:34', NULL),
(45, 41, 1, 5, 550, 550, 0, '2025-09-12 02:58:41', NULL),
(46, 41, 2, 6, 826, 825, 0, '2025-09-12 02:58:41', NULL),
(47, 42, 1, 5, 1476, 1476, 0, '2025-09-14 23:15:33', NULL),
(48, 43, 1, 5, 1476, 1476, 0, '2025-09-19 00:32:49', NULL),
(49, 44, 1, 5, 1476, 1476, 0, '2025-09-19 17:00:37', NULL),
(50, 45, 1, 5, 1476, 1476, 0, '2025-09-23 03:25:20', NULL),
(51, 46, 1, 6, 1317, 1316, 0, '2025-09-23 03:40:01', NULL),
(52, 47, 1, 5, 1476, 1476, 0, '2025-09-23 03:48:15', NULL),
(53, 48, 1, 6, 1317, 1316, 0, '2025-09-23 04:04:46', NULL),
(54, 49, 1, 5, 1476, 1476, 0, '2025-09-28 19:29:12', NULL),
(55, 50, 1, 5, 1476, 1476, 0, '2025-09-29 08:57:26', NULL),
(56, 51, 1, 5, 1476, 1476, 0, '2025-09-29 09:02:42', NULL),
(57, 52, 1, 5, 1476, 1476, 0, '2025-09-29 09:24:39', NULL),
(58, 53, 1, 5, 1476, 1476, 0, '2025-09-29 15:33:02', NULL),
(59, 54, 1, 5, 1476, 1476, 0, '2025-09-29 13:13:52', NULL),
(60, 55, 1, 5, 1476, 1476, 0, '2025-09-30 04:37:49', NULL),
(61, 56, 1, 5, 1476, 1476, 0, '2025-09-29 23:44:20', NULL),
(62, 57, 1, 5, 1476, 1476, 0, '2025-09-29 23:46:29', NULL),
(63, 58, 1, 5, 1476, 1476, 0, '2025-09-30 22:46:22', NULL),
(64, 59, 1, 6, 1317, 1316, 0, '2025-10-03 21:44:38', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `uproduction_record`
--

CREATE TABLE `uproduction_record` (
  `record_id` int(11) NOT NULL,
  `production_date` date NOT NULL,
  `Shift` varchar(255) NOT NULL,
  `working_hours` varchar(255) NOT NULL,
  `Uline_ID` int(11) NOT NULL,
  `Uprod_ID` int(11) NOT NULL,
  `Udrawing_ID` int(11) NOT NULL,
  `plan_target` int(11) DEFAULT 0,
  `target` varchar(250) NOT NULL,
  `actual1` int(11) DEFAULT 0,
  `actual2` int(11) NOT NULL,
  `actual3` int(11) NOT NULL,
  `actual4` int(11) NOT NULL,
  `actual5` int(11) NOT NULL,
  `total_actual` varchar(255) NOT NULL,
  `reject_count` int(11) DEFAULT 0,
  `reject_ppm` varchar(250) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `takttime` varchar(100) DEFAULT NULL,
  `length` varchar(100) DEFAULT NULL,
  `Ustart_Time1` time DEFAULT NULL,
  `Uend_Time1` time DEFAULT NULL,
  `Ustart_Time2` time DEFAULT NULL,
  `Uend_Time2` time DEFAULT NULL,
  `Ustart_Time3` time DEFAULT NULL,
  `Uend_Time3` time DEFAULT NULL,
  `Ustart_Time4` time DEFAULT NULL,
  `Uend_Time4` time DEFAULT NULL,
  `Ustart_Time5` time DEFAULT NULL,
  `Uend_Time5` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `uproduction_record`
--

INSERT INTO `uproduction_record` (`record_id`, `production_date`, `Shift`, `working_hours`, `Uline_ID`, `Uprod_ID`, `Udrawing_ID`, `plan_target`, `target`, `actual1`, `actual2`, `actual3`, `actual4`, `actual5`, `total_actual`, `reject_count`, `reject_ppm`, `created_at`, `takttime`, `length`, `Ustart_Time1`, `Uend_Time1`, `Ustart_Time2`, `Uend_Time2`, `Ustart_Time3`, `Uend_Time3`, `Ustart_Time4`, `Uend_Time4`, `Ustart_Time5`, `Uend_Time5`) VALUES
(4, '2025-08-30', 'Day Shift', '10.24', 1, 1, 5, 1369, '0', 169, 0, 0, 0, 0, '169', 0, NULL, '2025-08-29 20:54:32', '25, 28', '30, 10.25', '06:00:00', '08:45:00', '09:00:00', '11:30:00', '12:30:00', '14:00:00', '14:15:00', '16:00:00', '16:15:00', '18:00:00'),
(5, '2025-09-03', 'Day Shift', '10.24', 1, 1, 6, 1316, '0', 260, 780, 20, 0, 0, '1060', 0, NULL, '2025-09-02 20:29:45', '28', '10.25', '06:00:00', '08:45:00', '09:00:00', '11:30:00', '12:30:00', '14:00:00', '14:15:00', '16:00:00', '16:15:00', '18:00:00'),
(7, '2025-09-03', 'Day Shift', '10.24', 2, 1, 6, 1316, '0', 270, 0, 0, 0, 0, '270', 0, NULL, '2025-09-02 21:37:38', '28', '10.25', '06:00:00', '08:45:00', '09:00:00', '11:30:00', '12:30:00', '14:00:00', '14:15:00', '16:00:00', '16:15:00', '18:00:00'),
(8, '2025-09-03', 'Day Shift', '10.25', 4, 1, 5, 1476, '0', 750, 0, 0, 0, 0, '0', 0, NULL, '2025-09-03 03:49:36', '25', '30', '06:00:00', '08:45:00', '09:00:00', '11:30:00', '12:30:00', '14:00:00', '14:15:00', '16:00:00', '16:15:00', '18:00:00'),
(9, '2025-09-06', 'Day Shift', '10.24', 1, 1, 6, 1316, '0', 30, 0, 0, 0, 0, '30', 0, NULL, '2025-09-05 23:16:30', '28', '10.25', '06:00:00', '08:45:00', '09:00:00', '11:30:00', '12:30:00', '14:00:00', '14:15:00', '16:00:00', '16:15:00', '18:00:00'),
(10, '2025-09-06', 'Day Shift', '10.24', 2, 1, 6, 1316, '0', 90, 0, 0, 0, 0, '90', 0, NULL, '2025-09-06 00:36:44', '28', '10.25', '06:00:00', '08:45:00', '09:00:00', '11:30:00', '12:30:00', '14:00:00', '14:15:00', '16:00:00', '16:15:00', '18:00:00'),
(13, '2025-09-08', 'Day Shift', '10.25', 2, 1, 5, 1476, '0', 0, 0, 0, 0, 0, '0', 0, NULL, '2025-09-07 19:17:25', '25', '30', '06:00:00', '08:45:00', '09:00:00', '11:30:00', '12:30:00', '14:00:00', '14:15:00', '16:00:00', '16:15:00', '18:00:00'),
(16, '2025-09-08', 'Day Shift', '10.25', 3, 1, 5, 1476, '0', 104, 0, 0, 0, 0, '104', 0, NULL, '2025-09-08 03:01:02', '25', '30', '06:00:00', '08:45:00', '09:00:00', '11:30:00', '12:30:00', '14:00:00', '14:15:00', '16:00:00', '16:15:00', '18:00:00'),
(24, '2025-09-09', 'Day Shift', '10.24', 1, 1, 6, 1316, '0', 220, 0, 0, 0, 0, '220', 0, NULL, '2025-09-09 02:44:46', '28', '10.25', '06:00:00', '08:45:00', '09:00:00', '11:30:00', '12:30:00', '14:00:00', '14:15:00', '16:00:00', '16:15:00', '18:00:00'),
(25, '2025-09-10', 'Day Shift', '10.24', 1, 1, 6, 1316, '0', 353, 0, 0, 0, 0, '353', 0, NULL, '2025-09-09 20:59:43', '28', '10.25', '06:00:00', '08:45:00', '09:00:00', '11:30:00', '12:30:00', '14:00:00', '14:15:00', '16:00:00', '16:15:00', '18:00:00'),
(33, '2025-09-11', 'Day', '7.5', 1, 8, 5, 1166400, '0', 0, 0, 0, 0, 0, '0', 0, NULL, '2025-09-11 00:52:18', '25', '30', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00'),
(35, '2025-09-11', 'Day Shift', '7.5', 3, 4, 5, 1080, '0', 208, 0, 0, 0, 0, '208', 0, NULL, '2025-09-11 01:21:35', '25', '30', '07:00:00', '09:00:00', '09:15:00', '11:00:00', '12:00:00', '14:00:00', '14:15:00', '16:00:00', '00:00:00', '00:00:00'),
(38, '2025-09-12', 'Day Shift', '10.25', 1, 1, 5, 1476, '0', 396, 360, 216, 252, 13, '1237', 0, NULL, '2025-09-11 21:55:18', '25', '30', '06:00:00', '08:45:00', '09:00:00', '11:30:00', '12:30:00', '14:00:00', '14:15:00', '16:00:00', '16:15:00', '18:00:00'),
(39, '2025-09-04', 'Day Shift', '10.24', 1, 1, 6, 1316, '0', 260, 780, 20, 0, 0, '1060', 0, NULL, '2025-09-02 20:29:45', '28', '10.25', '06:00:00', '08:45:00', '09:00:00', '11:30:00', '12:30:00', '14:00:00', '14:15:00', '16:00:00', '16:15:00', '18:00:00'),
(41, '2025-09-12', 'Day Shift', '10.24', 2, 1, 5, 1375, '0', 396, 191, 0, 0, 0, '587', 0, NULL, '2025-09-12 02:58:41', '25, 28', '30, 10.25', '06:00:00', '08:45:00', '09:00:00', '11:30:00', '12:30:00', '14:00:00', '14:15:00', '16:00:00', '16:15:00', '18:00:00'),
(42, '2025-09-15', 'Day Shift', '10.25', 1, 1, 5, 1476, '0', 396, 182, 0, 0, 0, '578', 0, NULL, '2025-09-14 23:15:33', '25', '30', '06:00:00', '08:45:00', '09:00:00', '11:30:00', '12:30:00', '14:00:00', '14:15:00', '16:00:00', '16:15:00', '18:00:00'),
(43, '2025-09-19', 'Day Shift', '10.25', 1, 1, 5, 1476, '0', 396, 0, 0, 0, 0, '396', 0, NULL, '2025-09-19 00:32:49', '25', '30', '06:00:00', '08:45:00', '09:00:00', '11:30:00', '12:30:00', '14:00:00', '14:15:00', '16:00:00', '16:15:00', '18:00:00'),
(44, '2025-09-20', 'Day Shift', '10.25', 1, 1, 5, 1476, '0', 396, 52, 0, 0, 0, '448', 0, NULL, '2025-09-19 17:00:37', '25', '30', '06:00:00', '08:45:00', '09:00:00', '11:30:00', '12:30:00', '14:00:00', '14:15:00', '16:00:00', '16:15:00', '18:00:00'),
(45, '2025-09-23', 'Day Shift', '10.25', 1, 1, 5, 1476, '0', 396, 360, 216, 252, 208, '1432', 0, NULL, '2025-09-23 03:25:20', '25', '30', '06:00:00', '08:45:00', '09:00:00', '11:30:00', '12:30:00', '14:00:00', '14:15:00', '16:00:00', '16:15:00', '18:00:00'),
(48, '2025-09-23', 'Night Shift', '10.24', 1, 3, 6, 1316, '0', 20, 0, 0, 0, 0, '20', 0, NULL, '2025-09-23 04:04:46', '28', '10.25', '18:00:00', '20:45:00', '21:00:00', '23:30:00', '00:30:00', '02:00:00', '02:15:00', '04:00:00', '04:15:00', '06:00:00'),
(53, '2025-09-29', 'Night Shift', '10.25', 1, 3, 5, 1476, '0', 396, 360, 78, 0, 0, '834', 0, NULL, '2025-09-29 15:33:02', '25', '30', '18:00:00', '20:45:00', '21:00:00', '23:30:00', '00:30:00', '02:00:00', '02:15:00', '04:00:00', '04:15:00', '06:00:00'),
(55, '2025-09-30', 'Night Shift', '10.25', 1, 3, 5, 1476, '0', 130, 0, 0, 0, 0, '130', 0, NULL, '2025-09-30 04:37:49', '25', '30', '18:00:00', '20:45:00', '21:00:00', '23:30:00', '00:30:00', '02:00:00', '02:15:00', '04:00:00', '04:15:00', '06:00:00'),
(57, '2025-09-30', 'Day Shift', '10.25', 1, 1, 5, 1476, '0', 13, 0, 0, 0, 0, '13', 0, NULL, '2025-09-29 23:46:29', '25', '30', '06:00:00', '08:45:00', '09:00:00', '11:30:00', '12:30:00', '14:00:00', '14:15:00', '16:00:00', '16:15:00', '18:00:00'),
(58, '2025-10-01', 'Day Shift', '10.25', 1, 1, 5, 1476, '0', 396, 247, 0, 0, 0, '643', 0, NULL, '2025-09-30 22:46:22', '25', '30', '06:00:00', '08:45:00', '09:00:00', '11:30:00', '12:30:00', '14:00:00', '14:15:00', '16:00:00', '16:15:00', '18:00:00'),
(59, '2025-10-04', 'Day Shift', '10.24', 1, 1, 6, 1316, '0', 110, 0, 0, 0, 0, '110', 0, NULL, '2025-10-03 21:44:38', '28', '10.25', '06:00:00', '08:45:00', '09:00:00', '11:30:00', '12:30:00', '14:00:00', '14:15:00', '16:00:00', '16:15:00', '18:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `uproduction_rejects`
--

CREATE TABLE `uproduction_rejects` (
  `id` int(11) NOT NULL,
  `record_id` int(11) NOT NULL,
  `break_number` tinyint(4) NOT NULL,
  `qty` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `uproduction_rejects`
--

INSERT INTO `uproduction_rejects` (`id`, `record_id`, `break_number`, `qty`, `created_at`, `updated_at`) VALUES
(1, 20, 1, 1, '2025-09-09 03:04:32', '2025-09-09 03:05:21'),
(2, 20, 2, 21, '2025-09-09 03:13:18', '2025-09-09 03:13:22'),
(3, 22, 1, 6, '2025-09-09 13:13:12', '2025-09-09 13:13:12'),
(4, 24, 1, 2, '2025-09-09 08:49:20', '2025-09-09 08:49:20'),
(5, 25, 1, 20, '2025-09-10 03:01:31', '2025-09-10 03:46:09'),
(6, 25, 2, 4, '2025-09-10 04:00:05', '2025-09-10 04:00:06'),
(7, 25, 3, 3, '2025-09-10 05:04:09', '2025-09-10 05:04:10'),
(8, 26, 1, 50, '2025-09-11 00:48:10', '2025-09-11 03:25:29'),
(9, 34, 1, 1000, '2025-09-11 07:19:48', '2025-09-11 07:19:49'),
(10, 38, 1, 20, '2025-09-12 08:11:59', '2025-09-12 08:12:00'),
(11, 42, 1, 30, '2025-09-15 07:30:33', '2025-09-15 08:39:00'),
(12, 44, 1, 3, '2025-09-20 02:29:56', '2025-09-20 02:29:57'),
(13, 44, 2, 100, '2025-09-20 02:36:38', '2025-09-20 05:12:16'),
(14, 45, 1, 140, '2025-09-23 09:25:43', '2025-09-23 09:28:59'),
(15, 49, 1, 25, '2025-09-29 01:29:31', '2025-09-29 01:29:40');

-- --------------------------------------------------------

--
-- Table structure for table `uproduction_remarks`
--

CREATE TABLE `uproduction_remarks` (
  `id` int(11) NOT NULL,
  `record_id` int(11) DEFAULT NULL,
  `Uline_ID` varchar(10) NOT NULL,
  `Shift` varchar(20) NOT NULL,
  `production_date` date NOT NULL,
  `break_number` tinyint(4) NOT NULL,
  `classification` varchar(100) NOT NULL,
  `reason` text NOT NULL,
  `countermeasure` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `uproduction_remarks`
--

INSERT INTO `uproduction_remarks` (`id`, `record_id`, `Uline_ID`, `Shift`, `production_date`, `break_number`, `classification`, `reason`, `countermeasure`, `created_at`, `updated_at`) VALUES
(80, 34, '1', 'Day Shift', '2025-09-11', 1, 'Parts problem', 'ihave take', 'asdkasdalsd', '2025-09-11 07:20:19', NULL),
(81, 34, '1', 'Day Shift', '2025-09-11', 1, 'Parts problem', 'ihave take', 'asdkasdalsd', '2025-09-11 07:20:19', NULL),
(82, 42, '1', 'Day Shift', '2025-09-15', 1, 'Parts problem', 'Lack of housing', 'already withdraw to warehouse', '2025-09-15 08:44:57', NULL),
(83, 42, '1', 'Day Shift', '2025-09-15', 1, 'Parts problem', 'Lack of housing', 'already withdraw to warehouse', '2025-09-15 08:44:57', NULL),
(84, 43, '1', 'Day Shift', '2025-09-19', 1, 'Parts problem', 'asd', 'asdasd', '2025-09-19 06:57:21', NULL),
(85, 43, '1', 'Day Shift', '2025-09-19', 1, 'Parts problem', 'asd', 'asdasd', '2025-09-19 06:57:21', NULL),
(86, 45, '1', 'Day Shift', '2025-09-23', 1, 'Parts problem', 'asdas', 'dasdasd', '2025-09-23 09:27:21', NULL),
(87, 45, '1', 'Day Shift', '2025-09-23', 1, 'Parts problem', 'asdas', 'dasdasd', '2025-09-23 09:27:21', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cdrawingnumber`
--
ALTER TABLE `cdrawingnumber`
  ADD PRIMARY KEY (`Cdrawing_ID`),
  ADD KEY `drawingnumber_ibfk_1` (`Cmodel_ID`);

--
-- Indexes for table `cline`
--
ALTER TABLE `cline`
  ADD PRIMARY KEY (`Cline_ID`);

--
-- Indexes for table `cmember_photos`
--
ALTER TABLE `cmember_photos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_line_group_role` (`Cline_ID`,`group_code`,`role`);

--
-- Indexes for table `cmodelnumber`
--
ALTER TABLE `cmodelnumber`
  ADD PRIMARY KEY (`Cmodel_ID`);

--
-- Indexes for table `cproductiontime`
--
ALTER TABLE `cproductiontime`
  ADD PRIMARY KEY (`Cprod_ID`),
  ADD UNIQUE KEY `uq_productiontime_name` (`Cprod_name`);

--
-- Indexes for table `cproduction_breaks`
--
ALTER TABLE `cproduction_breaks`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uniq_record_break_date` (`record_id`,`break_number`,`production_date`);

--
-- Indexes for table `cproduction_model_progress`
--
ALTER TABLE `cproduction_model_progress`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uniq_record_model` (`record_id`,`model_index`),
  ADD KEY `idx_record` (`record_id`);

--
-- Indexes for table `cproduction_record`
--
ALTER TABLE `cproduction_record`
  ADD PRIMARY KEY (`record_id`),
  ADD KEY `Cline_ID` (`Cline_ID`),
  ADD KEY `Cprod_ID` (`Cprod_ID`),
  ADD KEY `Cdrawing_ID` (`Cdrawing_ID`),
  ADD KEY `idx_fproduction_record_date_line_shift` (`production_date`,`Cline_ID`,`Shift`);

--
-- Indexes for table `cproduction_rejects`
--
ALTER TABLE `cproduction_rejects`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uniq_record_break` (`record_id`,`break_number`);

--
-- Indexes for table `cproduction_remarks`
--
ALTER TABLE `cproduction_remarks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_line_shift_date` (`Cline_ID`,`Shift`,`production_date`),
  ADD KEY `idx_record_break` (`record_id`,`break_number`);

--
-- Indexes for table `fdrawingnumber`
--
ALTER TABLE `fdrawingnumber`
  ADD PRIMARY KEY (`Fdrawing_ID`),
  ADD KEY `drawingnumber_ibfk_1` (`Fmodel_ID`);

--
-- Indexes for table `fline`
--
ALTER TABLE `fline`
  ADD PRIMARY KEY (`Fline_ID`);

--
-- Indexes for table `fmember_photos`
--
ALTER TABLE `fmember_photos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_line_group_role` (`Fline_ID`,`group_code`,`role`);

--
-- Indexes for table `fmodelnumber`
--
ALTER TABLE `fmodelnumber`
  ADD PRIMARY KEY (`Fmodel_ID`);

--
-- Indexes for table `fproductiontime`
--
ALTER TABLE `fproductiontime`
  ADD PRIMARY KEY (`Fprod_ID`),
  ADD UNIQUE KEY `uq_productiontime_name` (`Fprod_name`);

--
-- Indexes for table `fproduction_breaks`
--
ALTER TABLE `fproduction_breaks`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uniq_record_break_date` (`record_id`,`break_number`,`production_date`);

--
-- Indexes for table `fproduction_model_progress`
--
ALTER TABLE `fproduction_model_progress`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uniq_record_model` (`record_id`,`model_index`),
  ADD KEY `idx_record` (`record_id`);

--
-- Indexes for table `fproduction_record`
--
ALTER TABLE `fproduction_record`
  ADD PRIMARY KEY (`record_id`),
  ADD KEY `Cline_ID` (`Fline_ID`),
  ADD KEY `Cprod_ID` (`Fprod_ID`),
  ADD KEY `Cdrawing_ID` (`Fdrawing_ID`),
  ADD KEY `idx_fproduction_record_date_line_shift` (`production_date`,`Fline_ID`,`Shift`);

--
-- Indexes for table `fproduction_rejects`
--
ALTER TABLE `fproduction_rejects`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uniq_record_break` (`record_id`,`break_number`);

--
-- Indexes for table `fproduction_remarks`
--
ALTER TABLE `fproduction_remarks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_line_shift_date` (`Fline_ID`,`Shift`,`production_date`),
  ADD KEY `idx_record_break` (`record_id`,`break_number`);

--
-- Indexes for table `udrawingnumber`
--
ALTER TABLE `udrawingnumber`
  ADD PRIMARY KEY (`Udrawing_ID`),
  ADD KEY `drawingnumber_ibfk_1` (`Umodel_ID`);

--
-- Indexes for table `uline`
--
ALTER TABLE `uline`
  ADD PRIMARY KEY (`Uline_ID`);

--
-- Indexes for table `umember_photos`
--
ALTER TABLE `umember_photos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_line_group_role` (`Uline_ID`,`group_code`,`role`);

--
-- Indexes for table `umodelnumber`
--
ALTER TABLE `umodelnumber`
  ADD PRIMARY KEY (`Umodel_ID`);

--
-- Indexes for table `uproductiontime`
--
ALTER TABLE `uproductiontime`
  ADD PRIMARY KEY (`Uprod_ID`),
  ADD UNIQUE KEY `uq_productiontime_name` (`Uprod_name`);

--
-- Indexes for table `uproduction_breaks`
--
ALTER TABLE `uproduction_breaks`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uniq_record_break_date` (`record_id`,`break_number`,`production_date`);

--
-- Indexes for table `uproduction_model_progress`
--
ALTER TABLE `uproduction_model_progress`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uniq_record_model` (`record_id`,`model_index`),
  ADD KEY `idx_record` (`record_id`);

--
-- Indexes for table `uproduction_record`
--
ALTER TABLE `uproduction_record`
  ADD PRIMARY KEY (`record_id`),
  ADD KEY `Cline_ID` (`Uline_ID`),
  ADD KEY `Cprod_ID` (`Uprod_ID`),
  ADD KEY `Cdrawing_ID` (`Udrawing_ID`),
  ADD KEY `idx_fproduction_record_date_line_shift` (`production_date`,`Uline_ID`,`Shift`);

--
-- Indexes for table `uproduction_rejects`
--
ALTER TABLE `uproduction_rejects`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uniq_record_break` (`record_id`,`break_number`);

--
-- Indexes for table `uproduction_remarks`
--
ALTER TABLE `uproduction_remarks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_line_shift_date` (`Uline_ID`,`Shift`,`production_date`),
  ADD KEY `idx_record_break` (`record_id`,`break_number`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cdrawingnumber`
--
ALTER TABLE `cdrawingnumber`
  MODIFY `Cdrawing_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `cline`
--
ALTER TABLE `cline`
  MODIFY `Cline_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `cmember_photos`
--
ALTER TABLE `cmember_photos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `cmodelnumber`
--
ALTER TABLE `cmodelnumber`
  MODIFY `Cmodel_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `cproductiontime`
--
ALTER TABLE `cproductiontime`
  MODIFY `Cprod_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `cproduction_breaks`
--
ALTER TABLE `cproduction_breaks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=236;

--
-- AUTO_INCREMENT for table `cproduction_model_progress`
--
ALTER TABLE `cproduction_model_progress`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `cproduction_record`
--
ALTER TABLE `cproduction_record`
  MODIFY `record_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `cproduction_rejects`
--
ALTER TABLE `cproduction_rejects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `cproduction_remarks`
--
ALTER TABLE `cproduction_remarks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `fdrawingnumber`
--
ALTER TABLE `fdrawingnumber`
  MODIFY `Fdrawing_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `fline`
--
ALTER TABLE `fline`
  MODIFY `Fline_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `fmember_photos`
--
ALTER TABLE `fmember_photos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `fmodelnumber`
--
ALTER TABLE `fmodelnumber`
  MODIFY `Fmodel_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `fproductiontime`
--
ALTER TABLE `fproductiontime`
  MODIFY `Fprod_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `fproduction_breaks`
--
ALTER TABLE `fproduction_breaks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=186;

--
-- AUTO_INCREMENT for table `fproduction_model_progress`
--
ALTER TABLE `fproduction_model_progress`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `fproduction_record`
--
ALTER TABLE `fproduction_record`
  MODIFY `record_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `fproduction_rejects`
--
ALTER TABLE `fproduction_rejects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `fproduction_remarks`
--
ALTER TABLE `fproduction_remarks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT for table `udrawingnumber`
--
ALTER TABLE `udrawingnumber`
  MODIFY `Udrawing_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `uline`
--
ALTER TABLE `uline`
  MODIFY `Uline_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `umember_photos`
--
ALTER TABLE `umember_photos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `umodelnumber`
--
ALTER TABLE `umodelnumber`
  MODIFY `Umodel_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `uproductiontime`
--
ALTER TABLE `uproductiontime`
  MODIFY `Uprod_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `uproduction_breaks`
--
ALTER TABLE `uproduction_breaks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=176;

--
-- AUTO_INCREMENT for table `uproduction_model_progress`
--
ALTER TABLE `uproduction_model_progress`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `uproduction_record`
--
ALTER TABLE `uproduction_record`
  MODIFY `record_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `uproduction_rejects`
--
ALTER TABLE `uproduction_rejects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `uproduction_remarks`
--
ALTER TABLE `uproduction_remarks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
