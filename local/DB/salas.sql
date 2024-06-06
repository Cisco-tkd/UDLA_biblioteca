-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 31-05-2024 a las 17:06:29
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `salas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `academicyears`
--

CREATE TABLE `academicyears` (
  `date_start` date NOT NULL,
  `date_end` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `access_control`
--

CREATE TABLE `access_control` (
  `id` int(6) UNSIGNED NOT NULL,
  `target` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `target_id` int(6) UNSIGNED NOT NULL,
  `actor` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `actor_id` int(6) UNSIGNED DEFAULT NULL,
  `permission` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `reference` char(56) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `access_control`
--

INSERT INTO `access_control` (`id`, `target`, `target_id`, `actor`, `actor_id`, `permission`, `reference`) VALUES
(1, 'R', 1, 'A', NULL, 'view', 'R1.A.view'),
(3, 'R', 3, 'A', NULL, 'view', 'R3.A.view'),
(4, 'R', 4, 'A', NULL, 'view', 'R4.A.view'),
(5, 'R', 5, 'A', NULL, 'view', 'R5.A.view'),
(6, 'R', 6, 'A', NULL, 'view', 'R6.A.view'),
(7, 'R', 7, 'A', NULL, 'view', 'R7.A.view'),
(8, 'R', 8, 'A', NULL, 'view', 'R8.A.view'),
(9, 'R', 9, 'A', NULL, 'view', 'R9.A.view'),
(10, 'R', 10, 'A', NULL, 'view', 'R10.A.view'),
(11, 'R', 11, 'A', NULL, 'view', 'R11.A.view'),
(12, 'R', 12, 'A', NULL, 'view', 'R12.A.view'),
(13, 'R', 13, 'A', NULL, 'view', 'R13.A.view'),
(14, 'R', 14, 'A', NULL, 'view', 'R14.A.view'),
(15, 'R', 15, 'A', NULL, 'view', 'R15.A.view'),
(16, 'R', 16, 'A', NULL, 'view', 'R16.A.view'),
(17, 'R', 17, 'A', NULL, 'view', 'R17.A.view'),
(18, 'R', 18, 'A', NULL, 'view', 'R18.A.view'),
(19, 'R', 19, 'A', NULL, 'view', 'R19.A.view'),
(20, 'R', 20, 'A', NULL, 'view', 'R20.A.view');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bookings`
--

CREATE TABLE `bookings` (
  `booking_id` int(6) UNSIGNED NOT NULL,
  `repeat_id` int(6) UNSIGNED DEFAULT NULL,
  `session_id` int(6) UNSIGNED DEFAULT NULL,
  `period_id` int(6) UNSIGNED NOT NULL,
  `room_id` int(6) UNSIGNED NOT NULL,
  `user_id` int(6) UNSIGNED DEFAULT NULL,
  `department_id` int(6) UNSIGNED DEFAULT NULL,
  `date` date NOT NULL,
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT 10,
  `notes` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `cancel_reason` text CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `cancelled_at` datetime DEFAULT NULL,
  `cancelled_by` int(6) UNSIGNED DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` int(6) UNSIGNED DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(6) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `bookings`
--

INSERT INTO `bookings` (`booking_id`, `repeat_id`, `session_id`, `period_id`, `room_id`, `user_id`, `department_id`, `date`, `status`, `notes`, `cancel_reason`, `cancelled_at`, `cancelled_by`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(1, NULL, 1, 1, 1, 2, NULL, '2024-05-15', 15, '3 alumnos', NULL, '2024-05-08 15:57:40', 2, '2024-05-08 15:48:17', 2, NULL, NULL),
(2, NULL, 1, 1, 1, 2, NULL, '2024-05-09', 15, '', NULL, '2024-05-08 17:20:18', 2, '2024-05-08 16:16:43', 2, NULL, NULL),
(3, NULL, 1, 1, 1, 2, NULL, '2024-05-08', 15, '', NULL, '2024-05-08 17:20:00', 1, '2024-05-08 16:45:41', 1, '2024-05-08 17:19:02', 2),
(4, NULL, 1, 1, 1, 2, 1, '2024-05-08', 15, 'httpsÑ--portal.sidiv.registrocivil.cl-docstatus_RUN¿17480067\'7/type¿CEDULA/serial¿525349824/mrz¿525349824490051903005198\n\nhttpsÑ--portal.sidiv.registrocivil.cl-docstatus_RUN¿17480067\'7/type¿CEDULA/serial¿525349824/mrz¿525349824490051903005198\n', NULL, '2024-05-08 17:37:03', 1, '2024-05-08 17:30:08', 2, NULL, NULL),
(5, NULL, 1, 1, 1, 2, 1, '2024-05-14', 15, '', NULL, '2024-05-14 15:11:14', 1, '2024-05-14 15:10:34', 2, NULL, NULL),
(6, NULL, 1, 2, 1, 2, 1, '2024-05-14', 15, 'fsdfsdf', NULL, '2024-05-14 15:11:18', 1, '2024-05-14 15:10:39', 2, NULL, NULL),
(7, NULL, 1, 1, 1, 2, 1, '2024-05-15', 15, 'dfsd', NULL, '2024-05-15 10:23:17', 2, '2024-05-14 15:10:45', 2, NULL, NULL),
(9, NULL, 1, 2, 1, 2, 1, '2024-05-15', 15, 'dasdas', NULL, '2024-05-15 10:23:13', 2, '2024-05-15 10:23:03', 2, NULL, NULL),
(10, NULL, 1, 2, 1, 2, 1, '2024-05-15', 10, '', NULL, NULL, NULL, '2024-05-15 10:29:00', 1, NULL, NULL),
(11, NULL, 1, 3, 1, 2, NULL, '2024-05-15', 10, '', NULL, NULL, NULL, '2024-05-15 10:32:23', 1, NULL, NULL),
(14, NULL, 1, 1, 1, 2, NULL, '2024-05-28', 15, 'fsdfsd', NULL, '2024-05-28 10:01:49', 1, '2024-05-28 10:01:30', 1, NULL, NULL),
(15, NULL, 1, 1, 1, 3, 1, '2024-05-28', 15, '', NULL, '2024-05-28 11:47:54', 1, '2024-05-28 11:32:03', 3, NULL, NULL),
(16, NULL, 1, 2, 1, 3, 1, '2024-05-28', 15, '', NULL, '2024-05-28 11:47:57', 1, '2024-05-28 11:32:06', 3, NULL, NULL),
(17, NULL, 1, 3, 1, 3, 1, '2024-05-28', 15, '', NULL, '2024-05-28 11:48:00', 1, '2024-05-28 11:32:08', 3, NULL, NULL),
(18, NULL, 1, 1, 1, 3, 1, '2024-05-28', 15, '', NULL, '2024-05-28 12:05:49', 1, '2024-05-28 12:03:43', 3, NULL, NULL),
(19, NULL, 1, 1, 1, 3, 1, '2024-05-28', 15, '', NULL, '2024-05-28 12:57:30', 1, '2024-05-28 12:53:20', 3, NULL, NULL),
(20, NULL, 1, 2, 1, 3, 1, '2024-05-28', 15, '', NULL, '2024-05-28 12:57:33', 1, '2024-05-28 12:53:28', 3, NULL, NULL),
(21, NULL, 1, 3, 1, 3, 1, '2024-05-28', 15, '', NULL, '2024-05-28 12:57:38', 1, '2024-05-28 12:53:30', 3, NULL, NULL),
(22, NULL, 1, 4, 1, 3, 1, '2024-05-28', 15, '', NULL, '2024-05-28 12:57:42', 1, '2024-05-28 12:53:37', 3, NULL, NULL),
(23, NULL, 1, 5, 1, 3, 1, '2024-05-28', 15, '', NULL, '2024-05-28 12:57:46', 1, '2024-05-28 12:53:40', 3, NULL, NULL),
(24, NULL, 1, 6, 1, 3, 1, '2024-05-28', 15, '', NULL, '2024-05-28 12:57:51', 1, '2024-05-28 12:53:43', 3, NULL, NULL),
(25, NULL, 1, 7, 1, 3, 1, '2024-05-28', 15, '', NULL, '2024-05-28 12:57:54', 1, '2024-05-28 12:53:46', 3, NULL, NULL),
(26, NULL, 1, 8, 1, 3, 1, '2024-05-28', 15, '', NULL, '2024-05-28 12:57:58', 1, '2024-05-28 12:53:48', 3, NULL, NULL),
(27, NULL, 1, 1, 16, 3, 1, '2024-05-28', 15, '', NULL, '2024-05-28 13:06:27', 1, '2024-05-28 13:05:31', 3, '2024-05-28 13:06:10', 3),
(28, NULL, 1, 2, 16, 3, 1, '2024-05-28', 15, '', NULL, '2024-05-28 13:06:31', 1, '2024-05-28 13:05:33', 3, NULL, NULL),
(29, NULL, 1, 3, 16, 3, 1, '2024-05-28', 15, '', NULL, '2024-05-28 13:06:35', 1, '2024-05-28 13:05:35', 3, NULL, NULL),
(30, NULL, 1, 4, 16, 3, 1, '2024-05-28', 15, '', NULL, '2024-05-28 13:06:38', 1, '2024-05-28 13:05:38', 3, NULL, NULL),
(31, NULL, 1, 5, 16, 3, 1, '2024-05-28', 15, '', NULL, '2024-05-28 13:06:41', 1, '2024-05-28 13:05:40', 3, NULL, NULL),
(32, NULL, 1, 6, 16, 3, 1, '2024-05-28', 15, '', NULL, '2024-05-28 13:06:44', 1, '2024-05-28 13:05:43', 3, NULL, NULL),
(33, NULL, 1, 7, 16, 3, 1, '2024-05-28', 15, '', NULL, '2024-05-28 13:06:49', 1, '2024-05-28 13:05:45', 3, NULL, NULL),
(34, NULL, 1, 8, 16, 3, 1, '2024-05-28', 15, '', NULL, '2024-05-28 13:06:52', 1, '2024-05-28 13:05:48', 3, NULL, NULL),
(35, NULL, 1, 1, 16, 3, 1, '2024-05-28', 15, '', NULL, '2024-05-28 13:10:40', 1, '2024-05-28 13:08:14', 3, NULL, NULL),
(36, NULL, 1, 2, 16, 3, 1, '2024-05-28', 15, '', NULL, '2024-05-28 13:10:45', 1, '2024-05-28 13:08:18', 3, NULL, NULL),
(37, NULL, 1, 3, 16, 3, 1, '2024-05-28', 15, '', NULL, '2024-05-28 13:10:50', 1, '2024-05-28 13:08:20', 3, NULL, NULL),
(38, NULL, 1, 4, 16, 3, 1, '2024-05-28', 15, '', NULL, '2024-05-28 13:10:55', 1, '2024-05-28 13:08:22', 3, NULL, NULL),
(39, NULL, 1, 5, 16, 3, 1, '2024-05-28', 15, '', NULL, '2024-05-28 13:11:03', 1, '2024-05-28 13:08:24', 3, NULL, NULL),
(40, NULL, 1, 6, 16, 3, 1, '2024-05-28', 15, '', NULL, '2024-05-28 13:11:08', 1, '2024-05-28 13:08:27', 3, NULL, NULL),
(41, NULL, 1, 1, 16, 3, 1, '2024-05-28', 15, '', NULL, '2024-05-28 14:31:04', 1, '2024-05-28 14:29:25', 3, NULL, NULL),
(42, NULL, 1, 1, 17, 3, 1, '2024-05-28', 15, '', NULL, '2024-05-28 14:31:53', 1, '2024-05-28 14:29:29', 3, NULL, NULL),
(43, NULL, 1, 1, 18, 3, 1, '2024-05-28', 15, '', NULL, '2024-05-28 14:55:57', 1, '2024-05-28 14:29:31', 3, NULL, NULL),
(44, NULL, 1, 1, 19, 3, 1, '2024-05-28', 15, '', NULL, '2024-05-28 14:56:07', 1, '2024-05-28 14:29:33', 3, NULL, NULL),
(45, NULL, 1, 1, 20, 3, 1, '2024-05-28', 15, '', NULL, '2024-05-28 14:56:19', 1, '2024-05-28 14:29:36', 3, NULL, NULL),
(46, NULL, 1, 2, 16, 3, 1, '2024-05-28', 15, '', NULL, '2024-05-28 14:31:08', 1, '2024-05-28 14:29:39', 3, NULL, NULL),
(47, NULL, 1, 2, 17, 3, 1, '2024-05-28', 15, '', NULL, '2024-05-28 14:55:51', 1, '2024-05-28 14:29:41', 3, NULL, NULL),
(48, NULL, 1, 2, 18, 3, 1, '2024-05-28', 15, '', NULL, '2024-05-28 14:56:01', 1, '2024-05-28 14:29:43', 3, NULL, NULL),
(49, NULL, 1, 2, 19, 3, 1, '2024-05-28', 15, '', NULL, '2024-05-28 14:56:12', 1, '2024-05-28 14:29:45', 3, NULL, NULL),
(50, NULL, 1, 2, 20, 3, 1, '2024-05-28', 15, '', NULL, '2024-05-28 14:56:22', 1, '2024-05-28 14:29:49', 3, NULL, NULL),
(51, NULL, 1, 3, 16, 3, 1, '2024-05-28', 15, '', NULL, '2024-05-28 14:31:12', 1, '2024-05-28 14:29:52', 3, NULL, NULL),
(52, NULL, 1, 3, 17, 3, 1, '2024-05-28', 15, '', NULL, '2024-05-28 14:55:55', 1, '2024-05-28 14:29:54', 3, NULL, NULL),
(53, NULL, 1, 3, 18, 3, 1, '2024-05-28', 15, '', NULL, '2024-05-28 14:56:04', 1, '2024-05-28 14:29:56', 3, NULL, NULL),
(54, NULL, 1, 3, 19, 3, 1, '2024-05-28', 15, '', NULL, '2024-05-28 14:56:15', 1, '2024-05-28 14:29:58', 3, NULL, NULL),
(55, NULL, 1, 3, 20, 3, 1, '2024-05-28', 15, '', NULL, '2024-05-28 14:56:26', 1, '2024-05-28 14:30:01', 3, NULL, NULL),
(56, NULL, 1, 4, 16, 3, 1, '2024-05-28', 15, '', NULL, '2024-05-28 14:31:32', 1, '2024-05-28 14:30:08', 3, NULL, NULL),
(57, NULL, 1, 5, 16, 3, 1, '2024-05-28', 15, '', NULL, '2024-05-28 14:31:37', 1, '2024-05-28 14:30:10', 3, NULL, NULL),
(58, NULL, 1, 6, 16, 3, 1, '2024-05-28', 15, '', NULL, '2024-05-28 14:31:43', 1, '2024-05-28 14:30:11', 3, NULL, NULL),
(59, NULL, 1, 7, 16, 3, 1, '2024-05-28', 15, '', NULL, '2024-05-28 14:31:50', 1, '2024-05-28 14:30:13', 3, NULL, NULL),
(60, NULL, 1, 1, 6, 3, 1, '2024-05-28', 15, '', NULL, '2024-05-28 15:14:37', 1, '2024-05-28 14:30:40', 3, NULL, NULL),
(61, NULL, 1, 1, 7, 3, 1, '2024-05-28', 15, '', NULL, '2024-05-28 15:14:45', 1, '2024-05-28 14:30:45', 3, NULL, NULL),
(62, NULL, 1, 1, 16, 3, 1, '2024-05-28', 15, '', NULL, '2024-05-28 15:17:04', 1, '2024-05-28 15:15:28', 3, NULL, NULL),
(63, NULL, 1, 1, 17, 3, 1, '2024-05-28', 15, '', NULL, '2024-05-28 15:16:38', 1, '2024-05-28 15:15:30', 3, NULL, NULL),
(64, NULL, 1, 1, 18, 3, 1, '2024-05-28', 15, '', NULL, '2024-05-28 15:16:35', 1, '2024-05-28 15:15:32', 3, NULL, NULL),
(65, NULL, 1, 1, 19, 3, 1, '2024-05-28', 15, '', NULL, '2024-05-28 15:16:30', 1, '2024-05-28 15:15:35', 3, NULL, NULL),
(66, NULL, 1, 2, 16, 3, 1, '2024-05-28', 15, NULL, NULL, '2024-05-28 15:17:00', 1, '2024-05-28 15:16:11', 3, NULL, NULL),
(67, NULL, 1, 3, 16, 3, 1, '2024-05-28', 15, NULL, NULL, '2024-05-28 15:16:54', 1, '2024-05-28 15:16:11', 3, NULL, NULL),
(68, NULL, 1, 4, 16, 3, 1, '2024-05-28', 15, NULL, NULL, '2024-05-28 15:16:51', 1, '2024-05-28 15:16:11', 3, NULL, NULL),
(69, NULL, 1, 5, 16, 3, 1, '2024-05-28', 15, '', NULL, '2024-05-28 15:16:48', 1, '2024-05-28 15:16:13', 3, NULL, NULL),
(70, NULL, 1, 1, 16, 3, 1, '2024-05-28', 15, '', NULL, '2024-05-28 15:19:54', 1, '2024-05-28 15:19:00', 3, NULL, NULL),
(71, NULL, 1, 1, 17, 3, 1, '2024-05-28', 15, '', NULL, '2024-05-28 15:19:57', 1, '2024-05-28 15:19:03', 3, NULL, NULL),
(72, NULL, 1, 1, 18, 3, 1, '2024-05-28', 15, '', NULL, '2024-05-28 15:20:00', 1, '2024-05-28 15:19:05', 3, NULL, NULL),
(73, NULL, 1, 1, 19, 3, 1, '2024-05-28', 15, '', NULL, '2024-05-28 15:20:04', 1, '2024-05-28 15:19:07', 3, NULL, NULL),
(74, NULL, 1, 1, 20, 3, 1, '2024-05-28', 15, '', NULL, '2024-05-28 15:20:08', 1, '2024-05-28 15:19:09', 3, NULL, NULL),
(75, NULL, 1, 2, 16, 3, 1, '2024-05-28', 15, '', NULL, '2024-05-28 15:20:10', 1, '2024-05-28 15:19:15', 3, NULL, NULL),
(76, NULL, 1, 3, 16, 3, 1, '2024-05-28', 15, '', NULL, '2024-05-28 15:20:14', 1, '2024-05-28 15:19:20', 3, NULL, NULL),
(77, NULL, 1, 4, 16, 3, 1, '2024-05-28', 15, '', NULL, '2024-05-28 15:20:16', 1, '2024-05-28 15:19:22', 3, NULL, NULL),
(78, NULL, 1, 5, 16, 3, 1, '2024-05-28', 15, '', NULL, '2024-05-28 15:20:19', 1, '2024-05-28 15:19:25', 3, NULL, NULL),
(79, NULL, 1, 1, 16, 3, 1, '2024-05-28', 15, '', NULL, '2024-05-28 15:25:09', 1, '2024-05-28 15:21:35', 3, NULL, NULL),
(80, NULL, 1, 1, 17, 3, 1, '2024-05-28', 15, '', NULL, '2024-05-28 15:25:31', 1, '2024-05-28 15:21:38', 3, NULL, NULL),
(81, NULL, 1, 1, 18, 3, 1, '2024-05-28', 15, '', NULL, '2024-05-28 15:25:48', 1, '2024-05-28 15:21:40', 3, NULL, NULL),
(82, NULL, 1, 1, 19, 3, 1, '2024-05-28', 15, '', NULL, '2024-05-28 15:26:04', 1, '2024-05-28 15:21:42', 3, NULL, NULL),
(83, NULL, 1, 1, 20, 3, 1, '2024-05-28', 15, '', NULL, '2024-05-28 15:26:06', 1, '2024-05-28 15:21:44', 3, NULL, NULL),
(84, NULL, 1, 2, 16, 3, 1, '2024-05-28', 15, '', NULL, '2024-05-28 15:25:13', 1, '2024-05-28 15:21:46', 3, NULL, NULL),
(85, NULL, 1, 3, 16, 3, 1, '2024-05-28', 15, '', NULL, '2024-05-28 15:25:17', 1, '2024-05-28 15:21:48', 3, NULL, NULL),
(86, NULL, 1, 4, 16, 3, 1, '2024-05-28', 15, '', NULL, '2024-05-28 15:25:25', 1, '2024-05-28 15:21:51', 3, NULL, NULL),
(87, NULL, 1, 5, 16, 3, 1, '2024-05-28', 15, '', NULL, '2024-05-28 15:25:28', 1, '2024-05-28 15:21:54', 3, NULL, NULL),
(88, NULL, 1, 2, 17, 3, 1, '2024-05-28', 15, NULL, NULL, '2024-05-28 15:25:34', 1, '2024-05-28 15:22:18', 3, NULL, NULL),
(89, NULL, 1, 3, 17, 3, 1, '2024-05-28', 15, NULL, NULL, '2024-05-28 15:25:37', 1, '2024-05-28 15:22:18', 3, NULL, NULL),
(90, NULL, 1, 4, 17, 3, 1, '2024-05-28', 15, NULL, NULL, '2024-05-28 15:25:42', 1, '2024-05-28 15:22:18', 3, NULL, NULL),
(91, NULL, 1, 5, 17, 3, 1, '2024-05-28', 15, NULL, NULL, '2024-05-28 15:25:45', 1, '2024-05-28 15:22:19', 3, NULL, NULL),
(92, NULL, 1, 2, 18, 3, 1, '2024-05-28', 15, '', NULL, '2024-05-28 15:25:50', 1, '2024-05-28 15:23:44', 3, NULL, NULL),
(93, NULL, 1, 3, 18, 3, 1, '2024-05-28', 15, '', NULL, '2024-05-28 15:25:53', 1, '2024-05-28 15:23:46', 3, NULL, NULL),
(94, NULL, 1, 4, 18, 3, 1, '2024-05-28', 15, '', NULL, '2024-05-28 15:25:56', 1, '2024-05-28 15:23:48', 3, NULL, NULL),
(95, NULL, 1, 5, 18, 3, 1, '2024-05-28', 15, '', NULL, '2024-05-28 15:25:59', 1, '2024-05-28 15:23:50', 3, NULL, NULL),
(96, NULL, 1, 1, 16, 3, 1, '2024-05-28', 15, '', NULL, '2024-05-28 15:28:10', 1, '2024-05-28 15:27:18', 3, NULL, NULL),
(97, NULL, 1, 1, 17, 3, 1, '2024-05-28', 15, '', NULL, '2024-05-28 15:28:07', 1, '2024-05-28 15:27:20', 3, NULL, NULL),
(98, NULL, 1, 2, 16, 3, 1, '2024-05-28', 15, '', NULL, '2024-05-28 15:28:15', 1, '2024-05-28 15:27:23', 3, NULL, NULL),
(99, NULL, 1, 3, 16, 3, 1, '2024-05-28', 15, '', NULL, '2024-05-28 15:28:17', 1, '2024-05-28 15:27:25', 3, NULL, NULL),
(100, NULL, 1, 1, 18, 3, 1, '2024-05-28', 15, '', NULL, '2024-05-28 15:28:04', 1, '2024-05-28 15:27:30', 3, NULL, NULL),
(101, NULL, 1, 1, 16, 3, 1, '2024-05-28', 15, '', NULL, '2024-05-28 15:30:35', 1, '2024-05-28 15:29:31', 3, NULL, NULL),
(102, NULL, 1, 2, 16, 3, 1, '2024-05-28', 15, '', NULL, '2024-05-28 15:30:37', 1, '2024-05-28 15:29:33', 3, NULL, NULL),
(103, NULL, 1, 3, 16, 3, 1, '2024-05-28', 15, '', NULL, '2024-05-28 15:30:40', 1, '2024-05-28 15:29:35', 3, NULL, NULL),
(104, NULL, 1, 4, 16, 3, 1, '2024-05-28', 15, '', NULL, '2024-05-28 15:30:43', 1, '2024-05-28 15:29:37', 3, NULL, NULL),
(105, NULL, 1, 5, 16, 3, 1, '2024-05-28', 15, '', NULL, '2024-05-28 15:30:47', 1, '2024-05-28 15:29:41', 3, NULL, NULL),
(106, NULL, 1, 1, 17, 3, 1, '2024-05-28', 15, '', NULL, '2024-05-28 15:30:32', 1, '2024-05-28 15:29:43', 3, NULL, NULL),
(107, NULL, 1, 1, 18, 3, 1, '2024-05-28', 15, '', NULL, '2024-05-28 15:30:28', 1, '2024-05-28 15:29:45', 3, NULL, NULL),
(108, NULL, 1, 1, 19, 3, 1, '2024-05-28', 15, '', NULL, '2024-05-28 15:30:25', 1, '2024-05-28 15:29:47', 3, NULL, NULL),
(109, NULL, 1, 1, 16, 3, 1, '2024-05-28', 15, '', NULL, '2024-05-28 15:35:29', 1, '2024-05-28 15:33:26', 3, NULL, NULL),
(110, NULL, 1, 2, 16, 3, 1, '2024-05-28', 15, '', NULL, '2024-05-28 15:35:34', 1, '2024-05-28 15:33:29', 3, NULL, NULL),
(111, NULL, 1, 3, 16, 3, 1, '2024-05-28', 15, '', NULL, '2024-05-28 15:35:39', 1, '2024-05-28 15:33:30', 3, NULL, NULL),
(112, NULL, 1, 4, 16, 3, 1, '2024-05-28', 15, '', NULL, '2024-05-28 15:35:45', 1, '2024-05-28 15:33:33', 3, NULL, NULL),
(113, NULL, 1, 5, 16, 3, 1, '2024-05-28', 15, '', NULL, '2024-05-28 15:35:50', 1, '2024-05-28 15:33:35', 3, NULL, NULL),
(114, NULL, 1, 6, 16, 3, 1, '2024-05-28', 15, '', NULL, '2024-05-28 15:35:57', 1, '2024-05-28 15:33:40', 3, NULL, NULL),
(115, NULL, 1, 7, 16, 3, 1, '2024-05-28', 15, '', NULL, '2024-05-28 15:36:07', 1, '2024-05-28 15:33:43', 3, NULL, NULL),
(116, NULL, 1, 8, 16, 3, 1, '2024-05-28', 15, '', NULL, '2024-05-28 15:57:09', 1, '2024-05-28 15:33:47', 3, NULL, NULL),
(117, NULL, 1, 9, 16, 3, 1, '2024-05-28', 15, '', NULL, '2024-05-28 15:57:14', 1, '2024-05-28 15:33:50', 3, NULL, NULL),
(118, NULL, 1, 10, 16, 3, 1, '2024-05-28', 15, '', NULL, '2024-05-28 15:57:19', 1, '2024-05-28 15:33:52', 3, NULL, NULL),
(119, NULL, 1, 11, 16, 3, 1, '2024-05-28', 15, '', NULL, '2024-05-28 15:57:25', 1, '2024-05-28 15:33:55', 3, NULL, NULL),
(120, NULL, 1, 8, 17, 2, 1, '2024-05-28', 15, '', NULL, '2024-05-28 15:37:51', 1, '2024-05-28 15:36:43', 2, NULL, NULL),
(121, NULL, 1, 9, 17, 2, 1, '2024-05-28', 15, '', NULL, '2024-05-28 15:37:56', 1, '2024-05-28 15:36:45', 2, NULL, NULL),
(122, NULL, 1, 10, 17, 2, 1, '2024-05-28', 15, '', NULL, '2024-05-28 15:38:00', 1, '2024-05-28 15:36:48', 2, NULL, NULL),
(123, NULL, 1, 11, 17, 2, 1, '2024-05-28', 15, '', NULL, '2024-05-28 15:38:04', 1, '2024-05-28 15:36:51', 2, NULL, NULL),
(124, NULL, 1, 1, 17, 2, 1, '2024-05-28', 15, '', NULL, '2024-05-28 15:39:46', 1, '2024-05-28 15:38:17', 2, NULL, NULL),
(125, NULL, 1, 2, 17, 2, 1, '2024-05-28', 15, '', NULL, '2024-05-28 15:39:48', 1, '2024-05-28 15:38:19', 2, NULL, NULL),
(126, NULL, 1, 3, 17, 2, 1, '2024-05-28', 15, '', NULL, '2024-05-28 15:39:52', 1, '2024-05-28 15:38:21', 2, NULL, NULL),
(127, NULL, 1, 4, 17, 2, 1, '2024-05-28', 15, '', NULL, '2024-05-28 15:39:55', 1, '2024-05-28 15:38:23', 2, NULL, NULL),
(128, NULL, 1, 5, 17, 2, 1, '2024-05-28', 15, '', NULL, '2024-05-28 15:39:59', 1, '2024-05-28 15:38:25', 2, NULL, NULL),
(129, NULL, 1, 6, 17, 2, 1, '2024-05-28', 15, '', NULL, '2024-05-28 15:40:02', 1, '2024-05-28 15:38:28', 2, NULL, NULL),
(130, NULL, 1, 7, 17, 2, 1, '2024-05-28', 15, '', NULL, '2024-05-28 15:40:05', 1, '2024-05-28 15:38:30', 2, NULL, NULL),
(131, NULL, 1, 8, 17, 2, 1, '2024-05-28', 10, '', NULL, NULL, NULL, '2024-05-28 15:38:33', 2, NULL, NULL),
(132, NULL, 1, 9, 17, 2, 1, '2024-05-28', 10, '', NULL, NULL, NULL, '2024-05-28 15:38:37', 2, NULL, NULL),
(133, NULL, 1, 10, 17, 2, 1, '2024-05-28', 10, '', NULL, NULL, NULL, '2024-05-28 15:38:40', 2, NULL, NULL),
(134, NULL, 1, 11, 17, 2, 1, '2024-05-28', 10, '', NULL, NULL, NULL, '2024-05-28 15:38:42', 2, NULL, NULL),
(135, NULL, 1, 6, 1, 3, NULL, '2024-05-29', 15, '', NULL, '2024-05-29 13:46:53', 3, '2024-05-29 13:46:26', 3, NULL, NULL),
(136, NULL, 1, 7, 1, 3, NULL, '2024-05-29', 15, '', NULL, '2024-05-29 13:46:58', 3, '2024-05-29 13:46:28', 3, NULL, NULL),
(137, NULL, 1, 8, 1, 3, NULL, '2024-05-29', 10, '', NULL, NULL, NULL, '2024-05-29 13:46:30', 3, NULL, NULL),
(138, NULL, 1, 9, 1, 3, NULL, '2024-05-29', 10, '', NULL, NULL, NULL, '2024-05-29 13:46:33', 3, NULL, NULL),
(139, NULL, 1, 7, 1, 3, NULL, '2024-05-29', 15, '', NULL, '2024-05-29 13:47:07', 3, '2024-05-29 13:47:03', 3, NULL, NULL),
(140, NULL, 1, 13, 1, 3, NULL, '2024-05-29', 15, '', NULL, '2024-05-29 13:47:22', 3, '2024-05-29 13:47:12', 3, NULL, NULL),
(141, NULL, 1, 14, 1, 3, NULL, '2024-05-29', 15, '', NULL, '2024-05-29 13:47:26', 3, '2024-05-29 13:47:14', 3, NULL, NULL),
(142, NULL, 1, 8, 1, 3, NULL, '2024-05-30', 15, '', NULL, '2024-05-29 13:48:10', 3, '2024-05-29 13:48:04', 3, NULL, NULL),
(143, NULL, 1, 9, 1, 3, NULL, '2024-05-30', 15, '', NULL, '2024-05-29 13:48:13', 3, '2024-05-29 13:48:06', 3, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bookings_repeat`
--

CREATE TABLE `bookings_repeat` (
  `repeat_id` int(6) UNSIGNED NOT NULL,
  `session_id` int(6) UNSIGNED DEFAULT NULL,
  `period_id` int(6) UNSIGNED NOT NULL,
  `room_id` int(6) UNSIGNED NOT NULL,
  `user_id` int(6) UNSIGNED DEFAULT NULL,
  `department_id` int(6) UNSIGNED DEFAULT NULL,
  `week_id` int(6) UNSIGNED NOT NULL,
  `weekday` tinyint(1) UNSIGNED NOT NULL,
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT 10,
  `notes` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `cancel_reason` text CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `cancelled_at` datetime DEFAULT NULL,
  `cancelled_by` int(6) UNSIGNED DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` int(6) UNSIGNED DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(6) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dates`
--

CREATE TABLE `dates` (
  `date` date NOT NULL,
  `weekday` tinyint(1) NOT NULL,
  `session_id` int(6) UNSIGNED DEFAULT NULL,
  `week_id` int(6) UNSIGNED DEFAULT NULL,
  `holiday_id` int(6) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `dates`
--

INSERT INTO `dates` (`date`, `weekday`, `session_id`, `week_id`, `holiday_id`) VALUES
('2024-03-14', 4, 1, 1, NULL),
('2024-03-15', 5, 1, 1, NULL),
('2024-03-16', 6, 1, 1, NULL),
('2024-03-17', 7, 1, 1, NULL),
('2024-03-18', 1, 1, 1, NULL),
('2024-03-19', 2, 1, 1, NULL),
('2024-03-20', 3, 1, 1, NULL),
('2024-03-21', 4, 1, 1, NULL),
('2024-03-22', 5, 1, 1, NULL),
('2024-03-23', 6, 1, 1, NULL),
('2024-03-24', 7, 1, 1, NULL),
('2024-03-25', 1, 1, 1, NULL),
('2024-03-26', 2, 1, 1, NULL),
('2024-03-27', 3, 1, 1, NULL),
('2024-03-28', 4, 1, 1, NULL),
('2024-03-29', 5, 1, 1, NULL),
('2024-03-30', 6, 1, 1, NULL),
('2024-03-31', 7, 1, 1, NULL),
('2024-04-01', 1, 1, 1, NULL),
('2024-04-02', 2, 1, 1, NULL),
('2024-04-03', 3, 1, 1, NULL),
('2024-04-04', 4, 1, 1, NULL),
('2024-04-05', 5, 1, 1, NULL),
('2024-04-06', 6, 1, 1, NULL),
('2024-04-07', 7, 1, 1, NULL),
('2024-04-08', 1, 1, 1, NULL),
('2024-04-09', 2, 1, 1, NULL),
('2024-04-10', 3, 1, 1, NULL),
('2024-04-11', 4, 1, 1, NULL),
('2024-04-12', 5, 1, 1, NULL),
('2024-04-13', 6, 1, 1, NULL),
('2024-04-14', 7, 1, 1, NULL),
('2024-04-15', 1, 1, 1, NULL),
('2024-04-16', 2, 1, 1, NULL),
('2024-04-17', 3, 1, 1, NULL),
('2024-04-18', 4, 1, 1, NULL),
('2024-04-19', 5, 1, 1, NULL),
('2024-04-20', 6, 1, 1, NULL),
('2024-04-21', 7, 1, 1, NULL),
('2024-04-22', 1, 1, 1, NULL),
('2024-04-23', 2, 1, 1, NULL),
('2024-04-24', 3, 1, 1, NULL),
('2024-04-25', 4, 1, 1, NULL),
('2024-04-26', 5, 1, 1, NULL),
('2024-04-27', 6, 1, 1, NULL),
('2024-04-28', 7, 1, 1, NULL),
('2024-04-29', 1, 1, 1, NULL),
('2024-04-30', 2, 1, 1, NULL),
('2024-05-01', 3, 1, 1, NULL),
('2024-05-02', 4, 1, 1, NULL),
('2024-05-03', 5, 1, 1, NULL),
('2024-05-04', 6, 1, 1, NULL),
('2024-05-05', 7, 1, 1, NULL),
('2024-05-06', 1, 1, 1, NULL),
('2024-05-07', 2, 1, 1, NULL),
('2024-05-08', 3, 1, 1, NULL),
('2024-05-09', 4, 1, 1, NULL),
('2024-05-10', 5, 1, 1, NULL),
('2024-05-11', 6, 1, 1, NULL),
('2024-05-12', 7, 1, 1, NULL),
('2024-05-13', 1, 1, 1, NULL),
('2024-05-14', 2, 1, 1, NULL),
('2024-05-15', 3, 1, 1, NULL),
('2024-05-16', 4, 1, 1, NULL),
('2024-05-17', 5, 1, 1, NULL),
('2024-05-18', 6, 1, 1, NULL),
('2024-05-19', 7, 1, 1, NULL),
('2024-05-20', 1, 1, 1, NULL),
('2024-05-21', 2, 1, 1, NULL),
('2024-05-22', 3, 1, 1, NULL),
('2024-05-23', 4, 1, 1, NULL),
('2024-05-24', 5, 1, 1, NULL),
('2024-05-25', 6, 1, 1, NULL),
('2024-05-26', 7, 1, 1, NULL),
('2024-05-27', 1, 1, 1, NULL),
('2024-05-28', 2, 1, 1, NULL),
('2024-05-29', 3, 1, 1, NULL),
('2024-05-30', 4, 1, 1, NULL),
('2024-05-31', 5, 1, 1, NULL),
('2024-06-01', 6, 1, 1, NULL),
('2024-06-02', 7, 1, 1, NULL),
('2024-06-03', 1, 1, 1, NULL),
('2024-06-04', 2, 1, 1, NULL),
('2024-06-05', 3, 1, 1, NULL),
('2024-06-06', 4, 1, 1, NULL),
('2024-06-07', 5, 1, 1, NULL),
('2024-06-08', 6, 1, 1, NULL),
('2024-06-09', 7, 1, 1, NULL),
('2024-06-10', 1, 1, 1, NULL),
('2024-06-11', 2, 1, 1, NULL),
('2024-06-12', 3, 1, 1, NULL),
('2024-06-13', 4, 1, 1, NULL),
('2024-06-14', 5, 1, 1, NULL),
('2024-06-15', 6, 1, 1, NULL),
('2024-06-16', 7, 1, 1, NULL),
('2024-06-17', 1, 1, 1, NULL),
('2024-06-18', 2, 1, 1, NULL),
('2024-06-19', 3, 1, 1, NULL),
('2024-06-20', 4, 1, 1, NULL),
('2024-06-21', 5, 1, 1, NULL),
('2024-06-22', 6, 1, 1, NULL),
('2024-06-23', 7, 1, 1, NULL),
('2024-06-24', 1, 1, 1, NULL),
('2024-06-25', 2, 1, 1, NULL),
('2024-06-26', 3, 1, 1, NULL),
('2024-06-27', 4, 1, 1, NULL),
('2024-06-28', 5, 1, 1, NULL),
('2024-06-29', 6, 1, 1, NULL),
('2024-06-30', 7, 1, 1, NULL),
('2024-07-01', 1, 1, 1, NULL),
('2024-07-02', 2, 1, 1, NULL),
('2024-07-03', 3, 1, 1, NULL),
('2024-07-04', 4, 1, 1, NULL),
('2024-07-05', 5, 1, 1, NULL),
('2024-07-06', 6, 1, 1, NULL),
('2024-07-07', 7, 1, 1, NULL),
('2024-07-08', 1, 1, 1, NULL),
('2024-07-09', 2, 1, 1, NULL),
('2024-07-10', 3, 1, 1, NULL),
('2024-07-11', 4, 1, 1, NULL),
('2024-07-12', 5, 1, 1, NULL),
('2024-07-13', 6, 1, 1, NULL),
('2024-07-14', 7, 1, 1, NULL),
('2024-07-15', 1, 1, 1, NULL),
('2024-07-16', 2, 1, 1, NULL),
('2024-07-17', 3, 1, 1, NULL),
('2024-07-18', 4, 1, 1, NULL),
('2024-07-19', 5, 1, 1, NULL),
('2024-07-20', 6, 1, 1, NULL),
('2024-07-21', 7, 1, 1, NULL),
('2024-07-22', 1, 1, 1, NULL),
('2024-07-23', 2, 1, 1, NULL),
('2024-07-24', 3, 1, 1, NULL),
('2024-07-25', 4, 1, 1, NULL),
('2024-07-26', 5, 1, 1, NULL),
('2024-07-27', 6, 1, 1, NULL),
('2024-07-28', 7, 1, 1, NULL),
('2024-07-29', 1, 1, 1, NULL),
('2024-07-30', 2, 1, 1, NULL),
('2024-07-31', 3, 1, 1, NULL),
('2024-08-01', 4, 1, 1, NULL),
('2024-08-02', 5, 1, 1, NULL),
('2024-08-03', 6, 1, 1, NULL),
('2024-08-04', 7, 1, 1, NULL),
('2024-08-05', 1, 1, 1, NULL),
('2024-08-06', 2, 1, 1, NULL),
('2024-08-07', 3, 1, 1, NULL),
('2024-08-08', 4, 1, 1, NULL),
('2024-08-09', 5, 1, 1, NULL),
('2024-08-10', 6, 1, 1, NULL),
('2024-08-11', 7, 1, 1, NULL),
('2024-08-12', 1, 1, 1, NULL),
('2024-08-13', 2, 1, 1, NULL),
('2024-08-14', 3, 1, 1, NULL),
('2024-08-15', 4, 1, 1, NULL),
('2024-08-16', 5, 1, 1, NULL),
('2024-08-17', 6, 1, 1, NULL),
('2024-08-18', 7, 1, 1, NULL),
('2024-08-19', 1, 1, 1, NULL),
('2024-08-20', 2, 1, 1, NULL),
('2024-08-21', 3, 1, 1, NULL),
('2024-08-22', 4, 1, 1, NULL),
('2024-08-23', 5, 1, 1, NULL),
('2024-08-24', 6, 1, 1, NULL),
('2024-08-25', 7, 1, 1, NULL),
('2024-08-26', 1, 1, 1, NULL),
('2024-08-27', 2, 1, 1, NULL),
('2024-08-28', 3, 1, 1, NULL),
('2024-08-29', 4, 1, 1, NULL),
('2024-08-30', 5, 1, 1, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departments`
--

CREATE TABLE `departments` (
  `department_id` int(6) UNSIGNED NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `icon` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `departments`
--

INSERT INTO `departments` (`department_id`, `name`, `description`, `icon`) VALUES
(1, 'Kinesiologia', 'Carrera ', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `holidays`
--

CREATE TABLE `holidays` (
  `holiday_id` int(6) UNSIGNED NOT NULL,
  `session_id` int(6) UNSIGNED DEFAULT NULL,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `date_start` date NOT NULL,
  `date_end` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lang`
--

CREATE TABLE `lang` (
  `id` int(6) UNSIGNED NOT NULL,
  `language` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'english',
  `set` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `key` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `text` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `version` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`version`) VALUES
(20230916122200);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `multi_bookings`
--

CREATE TABLE `multi_bookings` (
  `mb_id` int(6) UNSIGNED NOT NULL,
  `user_id` int(6) UNSIGNED NOT NULL,
  `session_id` int(6) UNSIGNED NOT NULL,
  `week_id` int(6) UNSIGNED NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `type` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `booking_user_id` int(6) UNSIGNED DEFAULT NULL,
  `booking_department_id` int(6) UNSIGNED DEFAULT NULL,
  `booking_notes` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `multi_bookings`
--

INSERT INTO `multi_bookings` (`mb_id`, `user_id`, `session_id`, `week_id`, `created_at`, `type`, `booking_user_id`, `booking_department_id`, `booking_notes`) VALUES
(13, 4, 1, 1, '2024-05-28 16:11:07', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `multi_bookings_slots`
--

CREATE TABLE `multi_bookings_slots` (
  `mbs_id` int(6) UNSIGNED NOT NULL,
  `mb_id` int(6) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `period_id` int(6) UNSIGNED NOT NULL,
  `room_id` int(6) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `multi_bookings_slots`
--

INSERT INTO `multi_bookings_slots` (`mbs_id`, `mb_id`, `date`, `period_id`, `room_id`) VALUES
(44, 13, '2024-05-28', 8, 1),
(45, 13, '2024-05-28', 9, 1),
(46, 13, '2024-05-28', 10, 1),
(47, 13, '2024-05-28', 11, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `periods`
--

CREATE TABLE `periods` (
  `period_id` int(6) UNSIGNED NOT NULL,
  `schedule_id` int(6) UNSIGNED NOT NULL,
  `time_start` time NOT NULL,
  `time_end` time NOT NULL,
  `name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `bookable` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `day_1` tinyint(1) UNSIGNED DEFAULT 0,
  `day_2` tinyint(1) UNSIGNED DEFAULT 0,
  `day_3` tinyint(1) UNSIGNED DEFAULT 0,
  `day_4` tinyint(1) UNSIGNED DEFAULT 0,
  `day_5` tinyint(1) UNSIGNED DEFAULT 0,
  `day_6` tinyint(1) UNSIGNED DEFAULT 0,
  `day_7` tinyint(1) UNSIGNED DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `periods`
--

INSERT INTO `periods` (`period_id`, `schedule_id`, `time_start`, `time_end`, `name`, `bookable`, `day_1`, `day_2`, `day_3`, `day_4`, `day_5`, `day_6`, `day_7`) VALUES
(1, 1, '09:00:00', '10:30:00', 'Modulo 01', 1, 1, 1, 1, 1, 1, 1, 0),
(2, 1, '10:30:00', '11:00:00', 'Modulo 02', 1, 1, 1, 1, 1, 1, 1, 0),
(3, 1, '11:30:00', '12:00:00', 'Modulo 03', 1, 1, 1, 1, 1, 1, 1, 0),
(4, 1, '12:30:00', '13:00:00', 'Modulo 04', 1, 1, 1, 1, 1, 1, 1, 0),
(5, 1, '13:30:00', '14:00:00', 'Modulo 05', 1, 1, 1, 1, 1, 1, 1, 0),
(6, 1, '14:30:00', '15:00:00', 'Modulo 06', 1, 1, 1, 1, 1, 1, 1, 0),
(7, 1, '15:30:00', '16:00:00', 'Modulo07', 1, 1, 1, 1, 1, 1, 1, 0),
(8, 1, '16:30:00', '17:00:00', 'Modulo 08', 1, 1, 1, 1, 1, 1, 1, 0),
(9, 1, '17:30:00', '18:00:00', 'Modulo09', 1, 1, 1, 1, 1, 1, 1, 0),
(10, 1, '18:30:00', '19:00:00', 'modulo 10', 1, 1, 1, 1, 1, 1, 1, 0),
(11, 1, '19:30:00', '20:00:00', 'Modulo 11', 1, 1, 1, 1, 1, 1, 0, 0),
(12, 1, '20:30:00', '21:00:00', 'Modulo 12', 1, 1, 1, 1, 1, 1, 0, 0),
(13, 1, '21:30:00', '22:00:00', 'Modulo 13', 1, 1, 1, 1, 1, 1, 0, 0),
(14, 1, '22:30:00', '23:00:00', 'Modulo14', 1, 1, 1, 1, 1, 1, 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roomfields`
--

CREATE TABLE `roomfields` (
  `field_id` int(6) UNSIGNED NOT NULL,
  `name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `type` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `roomfields`
--

INSERT INTO `roomfields` (`field_id`, `name`, `type`) VALUES
(4, 'Numero de alumnos', 'SELECT');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roomoptions`
--

CREATE TABLE `roomoptions` (
  `option_id` int(6) UNSIGNED NOT NULL,
  `field_id` int(6) UNSIGNED NOT NULL,
  `value` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `roomoptions`
--

INSERT INTO `roomoptions` (`option_id`, `field_id`, `value`) VALUES
(2, 1, 'Plumones\r'),
(3, 1, 'Borrador'),
(4, 4, '1\r'),
(5, 4, '2\r'),
(6, 4, '3\r'),
(7, 4, '4\r'),
(8, 4, '5\r'),
(9, 4, '6');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rooms`
--

CREATE TABLE `rooms` (
  `room_id` int(6) UNSIGNED NOT NULL,
  `room_group_id` int(6) UNSIGNED DEFAULT NULL,
  `user_id` int(6) UNSIGNED DEFAULT NULL,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `location` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `bookable` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `icon` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `notes` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `photo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `pos` int(6) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `rooms`
--

INSERT INTO `rooms` (`room_id`, `room_group_id`, `user_id`, `name`, `location`, `bookable`, `icon`, `notes`, `photo`, `pos`) VALUES
(1, 1, NULL, 'Sala De Estudio 01', 'Piso -1 Torre B', 1, NULL, ' Sala de estudio con PC', '23ea141b17b1e01cb6cd0fe41d0675b7.png', 0),
(3, 1, NULL, 'Sala De Estudio 02', 'Piso -1 Torre B', 1, NULL, 'Sala de estudio con PC', 'e8a434d823affbac03e322f0fee515d5.png', 0),
(4, 1, NULL, 'Sala De Estudio 04', 'Piso -1 Torre B', 1, NULL, 'Sala de Estudio con PC', 'ffd1ca7055bb05673a7556edd0739177.png', 0),
(5, 1, NULL, 'Sala De Estudio 05', 'Piso -1 Torre B', 1, NULL, 'Sala de estudio con PC', '902e9bb51a41f96ebb5a7803ec184700.png', 0),
(6, 2, NULL, 'Sala De Estudio 06', 'Piso 3 Torre B', 1, NULL, 'Sala de estudio con PC', 'ef0741a2460fcae7e7a99e470f0a09db.png', 0),
(7, 3, NULL, 'Sala De Estudio 08', 'Piso 4 Torre B', 1, NULL, 'Sala de estudio', '3275b6de02c9d584c8ad6010a165c9eb.png', 0),
(8, 4, NULL, 'Sala De Estudio 09', 'Piso 6 Torre B', 1, NULL, 'Sala de estudio', '13d1b17254a9f5112914bbc5699755c6.png', 0),
(9, 4, NULL, 'Sala De Estudio 10', 'Piso 6 Torre B', 1, NULL, 'Sala de estudio', 'c0a5a4c9f1959c20e6ba868b08c5bfc5.png', 0),
(10, 4, NULL, 'Sala De Estudio 11', 'Piso 6 Torre B', 1, NULL, 'Sala de estudio', '3e9381947b6ac5f672b8e256848c8f5c.png', 0),
(11, 5, NULL, 'Sala De Estudio 12', 'Piso 7 Torre B', 1, NULL, 'Sala de estudio con PC', 'ce4b65c69e68beae3f7b8917ef1ae958.png', 0),
(12, 3, NULL, 'Sala De Estudio 13', 'Piso 4 Torre B', 1, NULL, 'Sala de estudio ', '038938cd050d97942b07abf05d153097.png', 0),
(13, 1, NULL, 'Sala De Estudio 16', 'Piso -1 Torre B', 1, NULL, 'Sala de estudio con PC', '77c605fbc228926544d6178c809ccc17.png', 0),
(14, 1, NULL, 'Sala De Estudio 17', 'Piso -1 Torre B', 1, NULL, 'Sala de estudio con PC', '8256a8d766c61e5405569cce984cde65.png', 0),
(15, 1, NULL, 'Sala De Estudio 18', 'Piso -1 Torre B', 1, NULL, 'Sala de estudio con PC', '8243bac6d6bb8822075419acdf7a1d0b.png', 0),
(16, 7, NULL, 'Sala De Estudio 19', 'Piso 2 Torre B -C', 1, NULL, '', 'd10da017fce40800cd04740d7628559c.png', 0),
(17, 7, NULL, 'Sala De Estudio 20', 'Piso 2 Torre B -C', 1, NULL, 'Sala de estudio con PC', 'ab3c407a38ab60174a4494f0f401334f.png', 0),
(18, 7, NULL, 'Sala De Estudio 21', 'Piso 2 Torre B -C', 1, NULL, 'Sala de estudio con PC', '9a615dd76971a7c893bd22c5b53a1920.png', 0),
(19, 7, NULL, 'Sala De Estudio 22', 'Piso 2 Torre B -C', 1, NULL, 'Sala de estudio con PC', '9a729c470cb1795bcdaea2626a1dc627.png', 0),
(20, 7, NULL, 'Sala De Estudio 23', 'Piso 2 Torre B -C', 1, NULL, 'Sala de estudio con PC', '356a23f7788b6af9f4a0e471be404882.png', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roomvalues`
--

CREATE TABLE `roomvalues` (
  `value_id` int(6) UNSIGNED NOT NULL,
  `room_id` int(6) UNSIGNED NOT NULL,
  `field_id` int(6) UNSIGNED NOT NULL,
  `value` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `roomvalues`
--

INSERT INTO `roomvalues` (`value_id`, `room_id`, `field_id`, `value`) VALUES
(31, 1, 4, '7'),
(32, 3, 4, '7'),
(33, 4, 4, '7'),
(34, 5, 4, '7'),
(35, 13, 4, '9'),
(36, 14, 4, '9'),
(37, 15, 4, '9'),
(39, 17, 4, '9'),
(40, 18, 4, '9'),
(41, 19, 4, '9'),
(42, 20, 4, '9'),
(45, 7, 4, '6'),
(46, 12, 4, '6'),
(47, 6, 4, '9'),
(48, 11, 4, '9'),
(49, 8, 4, '9'),
(50, 9, 4, '6'),
(51, 10, 4, '6'),
(52, 16, 4, '9');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `room_groups`
--

CREATE TABLE `room_groups` (
  `room_group_id` int(6) UNSIGNED NOT NULL,
  `pos` int(6) UNSIGNED NOT NULL DEFAULT 0,
  `name` varchar(32) NOT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `room_groups`
--

INSERT INTO `room_groups` (`room_group_id`, `pos`, `name`, `description`) VALUES
(1, 0, 'Salas de Estudio Torre B Piso -1', ''),
(2, 0, 'Sala de Estudio Torre B Piso 3', ''),
(3, 0, 'Sala de estudio Torre B Piso 4', ''),
(4, 0, 'Salas de Estudio Torre B Piso 6', ''),
(5, 0, 'Sala de estudio Torre B Piso 7', ''),
(7, 0, 'Sala para 6 Alumnos', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `schedules`
--

CREATE TABLE `schedules` (
  `schedule_id` int(6) UNSIGNED NOT NULL,
  `type` varchar(20) NOT NULL DEFAULT 'periods',
  `name` varchar(32) NOT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `schedules`
--

INSERT INTO `schedules` (`schedule_id`, `type`, `name`, `description`) VALUES
(1, 'periods', 'Semana Normal', 'Lunes a Viernes ');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sessions`
--

CREATE TABLE `sessions` (
  `session_id` int(6) UNSIGNED NOT NULL,
  `default_schedule_id` int(6) UNSIGNED DEFAULT NULL,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `date_start` date NOT NULL,
  `date_end` date NOT NULL,
  `is_current` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `is_selectable` tinyint(1) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `sessions`
--

INSERT INTO `sessions` (`session_id`, `default_schedule_id`, `name`, `date_start`, `date_end`, `is_current`, `is_selectable`) VALUES
(1, 1, 'Semestre', '2024-03-14', '2024-08-30', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `session_schedules`
--

CREATE TABLE `session_schedules` (
  `session_id` int(6) UNSIGNED NOT NULL,
  `room_group_id` int(6) UNSIGNED NOT NULL,
  `schedule_id` int(6) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `session_schedules`
--

INSERT INTO `session_schedules` (`session_id`, `room_group_id`, `schedule_id`) VALUES
(1, 1, 1),
(1, 2, 1),
(1, 3, 1),
(1, 4, 1),
(1, 5, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `settings`
--

CREATE TABLE `settings` (
  `group` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `value` text CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `settings`
--

INSERT INTO `settings` (`group`, `name`, `value`) VALUES
('auth', 'ldap_attr_displayname', 'cn'),
('auth', 'ldap_attr_email', 'mail'),
('auth', 'ldap_attr_firstname', ''),
('auth', 'ldap_attr_lastname', ''),
('auth', 'ldap_base_dn', 'dc=example,dc=com'),
('auth', 'ldap_bind_dn_format', 'uid=:user,dc=example,dc=com'),
('auth', 'ldap_create_users', '1'),
('auth', 'ldap_enabled', '0'),
('auth', 'ldap_ignore_cert', '1'),
('auth', 'ldap_port', '389'),
('auth', 'ldap_search_filter', '(&(uid=:user)(objectClass=person))'),
('auth', 'ldap_server', ''),
('auth', 'ldap_user_attr', 'uid'),
('auth', 'ldap_use_tls', '0'),
('auth', 'ldap_version', '3'),
('crbs', 'bia', '1'),
('crbs', 'bookings_show_user_recurring', '1'),
('crbs', 'bookings_show_user_single', '1'),
('crbs', 'colour', '468ED8'),
('crbs', 'date_format_long', 'l jS F Y'),
('crbs', 'date_format_weekday', 'jS M'),
('crbs', 'displaytype', 'room'),
('crbs', 'd_columns', 'days'),
('crbs', 'grid_highlight', '0'),
('crbs', 'login_message_enabled', '1'),
('crbs', 'login_message_text', 'Recuerda que solo puedes agendar como máximo 4 módulos '),
('crbs', 'logo', '37ab76386e4d07539182831400d08e99.png'),
('crbs', 'maintenance_mode', '0'),
('crbs', 'maintenance_mode_message', ''),
('crbs', 'name', 'Udla'),
('crbs', 'num_max_bookings', '4'),
('crbs', 'session_auto_set_current_ts', '1717004741'),
('crbs', 'timezone', 'America/Santiago'),
('crbs', 'time_format_period', 'g:i'),
('crbs', 'website', ''),
('features', 'room_groups', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `user_id` int(6) UNSIGNED NOT NULL,
  `department_id` int(6) UNSIGNED DEFAULT NULL,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `firstname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `lastname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `authlevel` tinyint(1) UNSIGNED NOT NULL,
  `displayname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `ext` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `lastlogin` datetime DEFAULT NULL,
  `enabled` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  `created` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`user_id`, `department_id`, `username`, `firstname`, `lastname`, `email`, `password`, `authlevel`, `displayname`, `ext`, `lastlogin`, `enabled`, `created`) VALUES
(1, NULL, 'Admin', NULL, NULL, NULL, '$2y$10$InkyFLx/UQ7MTY/tHsJG6OrmGTkovwdOWEUNICw6o8NS2go8WXd6S', 1, NULL, NULL, '2024-05-29 21:02:42', 1, NULL),
(2, 1, 'Bastian', 'Bastian', 'Pastene', '', '$2y$10$.Jqo86lYhL9Jv0T2hdcfo.WuDSZY8WkPkwXsB7Pwa/X.Xokjl5Rku', 2, 'Bastian', '', '2024-05-28 15:56:38', 1, NULL),
(3, NULL, '17480067-7', '17480067-7', 'Munizaga Contreras', 'luismunizaga1@gmail.com', '$2y$10$uGMRs4P1GDjsnwo9ZkrDV.DXIMX3r2nond/1HrcYiC5EKAqvDXBR2', 2, '17480067-7', '962374434', '2024-05-29 13:51:57', 1, NULL),
(4, NULL, '183882288', NULL, NULL, NULL, '$2y$10$4zkSjz.mYEWI3WnclY/60.E0JYayUhG8pB3Cr0Md8YgHmB02PLer6', 2, '', NULL, '2024-05-28 16:09:12', 1, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `weekdates`
--

CREATE TABLE `weekdates` (
  `week_id` int(6) UNSIGNED NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `weeks`
--

CREATE TABLE `weeks` (
  `week_id` int(6) UNSIGNED NOT NULL,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `fgcol` char(6) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `bgcol` char(6) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `icon` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `weeks`
--

INSERT INTO `weeks` (`week_id`, `name`, `fgcol`, `bgcol`, `icon`) VALUES
(1, 'Semana normal', '', 'FF8000', NULL),
(2, 'semana especial', '', 'FFFF55', NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `access_control`
--
ALTER TABLE `access_control`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_reference` (`reference`),
  ADD KEY `idx_target_id` (`target`,`target_id`),
  ADD KEY `idx_actor_id` (`actor`,`actor_id`),
  ADD KEY `idx_permission` (`permission`);

--
-- Indices de la tabla `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`booking_id`),
  ADD KEY `fk_bookings_repeat` (`repeat_id`),
  ADD KEY `fk_bookings_session` (`session_id`),
  ADD KEY `fk_bookings_period` (`period_id`),
  ADD KEY `fk_bookings_room` (`room_id`),
  ADD KEY `fk_bookings_user` (`user_id`),
  ADD KEY `fk_bookings_department` (`department_id`),
  ADD KEY `fk_bookings_created_user` (`created_by`),
  ADD KEY `fk_bookings_updated_user` (`updated_by`);

--
-- Indices de la tabla `bookings_repeat`
--
ALTER TABLE `bookings_repeat`
  ADD PRIMARY KEY (`repeat_id`),
  ADD KEY `fk_bookings_repeat_session` (`session_id`),
  ADD KEY `fk_bookings_repeat_period` (`period_id`),
  ADD KEY `fk_bookings_repeat_room` (`room_id`),
  ADD KEY `fk_bookings_repeat_user` (`user_id`),
  ADD KEY `fk_bookings_repeat_department` (`department_id`),
  ADD KEY `fk_bookings_repeat_week` (`week_id`),
  ADD KEY `fk_bookings_repeat_created_user` (`created_by`),
  ADD KEY `fk_bookings_repeat_updated_user` (`updated_by`);

--
-- Indices de la tabla `dates`
--
ALTER TABLE `dates`
  ADD PRIMARY KEY (`date`);

--
-- Indices de la tabla `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`department_id`);

--
-- Indices de la tabla `holidays`
--
ALTER TABLE `holidays`
  ADD PRIMARY KEY (`holiday_id`);

--
-- Indices de la tabla `lang`
--
ALTER TABLE `lang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `language_set` (`language`,`set`);

--
-- Indices de la tabla `multi_bookings`
--
ALTER TABLE `multi_bookings`
  ADD PRIMARY KEY (`mb_id`),
  ADD KEY `fk_mb_user` (`user_id`);

--
-- Indices de la tabla `multi_bookings_slots`
--
ALTER TABLE `multi_bookings_slots`
  ADD PRIMARY KEY (`mbs_id`),
  ADD KEY `fk_mbs_mb` (`mb_id`),
  ADD KEY `fk_mbs_period` (`period_id`),
  ADD KEY `fk_mbs_room` (`room_id`);

--
-- Indices de la tabla `periods`
--
ALTER TABLE `periods`
  ADD PRIMARY KEY (`period_id`),
  ADD KEY `fk_periods_schedule` (`schedule_id`);

--
-- Indices de la tabla `roomfields`
--
ALTER TABLE `roomfields`
  ADD PRIMARY KEY (`field_id`);

--
-- Indices de la tabla `roomoptions`
--
ALTER TABLE `roomoptions`
  ADD PRIMARY KEY (`option_id`);

--
-- Indices de la tabla `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`room_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `fk_rooms_group` (`room_group_id`);

--
-- Indices de la tabla `roomvalues`
--
ALTER TABLE `roomvalues`
  ADD PRIMARY KEY (`value_id`);

--
-- Indices de la tabla `room_groups`
--
ALTER TABLE `room_groups`
  ADD PRIMARY KEY (`room_group_id`);

--
-- Indices de la tabla `schedules`
--
ALTER TABLE `schedules`
  ADD PRIMARY KEY (`schedule_id`);

--
-- Indices de la tabla `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`session_id`),
  ADD KEY `fk_sessions_default_schedule` (`default_schedule_id`);

--
-- Indices de la tabla `session_schedules`
--
ALTER TABLE `session_schedules`
  ADD PRIMARY KEY (`session_id`,`room_group_id`),
  ADD KEY `fk_session_schedules_room_group` (`room_group_id`),
  ADD KEY `fk_session_schedules_schedule` (`schedule_id`);

--
-- Indices de la tabla `settings`
--
ALTER TABLE `settings`
  ADD UNIQUE KEY `group_name` (`group`,`name`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `authlevel` (`authlevel`),
  ADD KEY `enabled` (`enabled`);

--
-- Indices de la tabla `weekdates`
--
ALTER TABLE `weekdates`
  ADD KEY `week_id` (`week_id`);

--
-- Indices de la tabla `weeks`
--
ALTER TABLE `weeks`
  ADD PRIMARY KEY (`week_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `access_control`
--
ALTER TABLE `access_control`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `bookings`
--
ALTER TABLE `bookings`
  MODIFY `booking_id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=144;

--
-- AUTO_INCREMENT de la tabla `bookings_repeat`
--
ALTER TABLE `bookings_repeat`
  MODIFY `repeat_id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `departments`
--
ALTER TABLE `departments`
  MODIFY `department_id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `holidays`
--
ALTER TABLE `holidays`
  MODIFY `holiday_id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `lang`
--
ALTER TABLE `lang`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `multi_bookings`
--
ALTER TABLE `multi_bookings`
  MODIFY `mb_id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `multi_bookings_slots`
--
ALTER TABLE `multi_bookings_slots`
  MODIFY `mbs_id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT de la tabla `periods`
--
ALTER TABLE `periods`
  MODIFY `period_id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `roomfields`
--
ALTER TABLE `roomfields`
  MODIFY `field_id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `roomoptions`
--
ALTER TABLE `roomoptions`
  MODIFY `option_id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `rooms`
--
ALTER TABLE `rooms`
  MODIFY `room_id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `roomvalues`
--
ALTER TABLE `roomvalues`
  MODIFY `value_id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT de la tabla `room_groups`
--
ALTER TABLE `room_groups`
  MODIFY `room_group_id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `schedules`
--
ALTER TABLE `schedules`
  MODIFY `schedule_id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `sessions`
--
ALTER TABLE `sessions`
  MODIFY `session_id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `weeks`
--
ALTER TABLE `weeks`
  MODIFY `week_id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `bookings`
--
ALTER TABLE `bookings`
  ADD CONSTRAINT `fk_bookings_created_user` FOREIGN KEY (`created_by`) REFERENCES `users` (`user_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_bookings_department` FOREIGN KEY (`department_id`) REFERENCES `departments` (`department_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_bookings_period` FOREIGN KEY (`period_id`) REFERENCES `periods` (`period_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_bookings_repeat` FOREIGN KEY (`repeat_id`) REFERENCES `bookings_repeat` (`repeat_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_bookings_room` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`room_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_bookings_session` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`session_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_bookings_updated_user` FOREIGN KEY (`updated_by`) REFERENCES `users` (`user_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_bookings_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Filtros para la tabla `bookings_repeat`
--
ALTER TABLE `bookings_repeat`
  ADD CONSTRAINT `fk_bookings_repeat_created_user` FOREIGN KEY (`created_by`) REFERENCES `users` (`user_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_bookings_repeat_department` FOREIGN KEY (`department_id`) REFERENCES `departments` (`department_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_bookings_repeat_period` FOREIGN KEY (`period_id`) REFERENCES `periods` (`period_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_bookings_repeat_room` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`room_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_bookings_repeat_session` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`session_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_bookings_repeat_updated_user` FOREIGN KEY (`updated_by`) REFERENCES `users` (`user_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_bookings_repeat_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_bookings_repeat_week` FOREIGN KEY (`week_id`) REFERENCES `weeks` (`week_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `multi_bookings`
--
ALTER TABLE `multi_bookings`
  ADD CONSTRAINT `fk_mb_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `multi_bookings_slots`
--
ALTER TABLE `multi_bookings_slots`
  ADD CONSTRAINT `fk_mbs_mb` FOREIGN KEY (`mb_id`) REFERENCES `multi_bookings` (`mb_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_mbs_period` FOREIGN KEY (`period_id`) REFERENCES `periods` (`period_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_mbs_room` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`room_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `periods`
--
ALTER TABLE `periods`
  ADD CONSTRAINT `fk_periods_schedule` FOREIGN KEY (`schedule_id`) REFERENCES `schedules` (`schedule_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `rooms`
--
ALTER TABLE `rooms`
  ADD CONSTRAINT `fk_rooms_group` FOREIGN KEY (`room_group_id`) REFERENCES `room_groups` (`room_group_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Filtros para la tabla `sessions`
--
ALTER TABLE `sessions`
  ADD CONSTRAINT `fk_sessions_default_schedule` FOREIGN KEY (`default_schedule_id`) REFERENCES `schedules` (`schedule_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Filtros para la tabla `session_schedules`
--
ALTER TABLE `session_schedules`
  ADD CONSTRAINT `fk_session_schedules_room_group` FOREIGN KEY (`room_group_id`) REFERENCES `room_groups` (`room_group_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_session_schedules_schedule` FOREIGN KEY (`schedule_id`) REFERENCES `schedules` (`schedule_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_session_schedules_session` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`session_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
