-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 21, 2021 at 04:37 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rms`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `id` int(11) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`id`, `username`, `password`) VALUES
(0, 'admin', 'admin123');

-- --------------------------------------------------------

--
-- Table structure for table `activity`
--

CREATE TABLE `activity` (
  `Act_id` int(100) NOT NULL,
  `Act_desc` varchar(255) NOT NULL,
  `Act_time` varchar(255) NOT NULL,
  `Act_user` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `activity`
--

INSERT INTO `activity` (`Act_id`, `Act_desc`, `Act_time`, `Act_user`) VALUES
(1, 'Login Failed', '06/13/2021 - 09:46', 'admin'),
(2, 'Login Success', '06/13/2021 - 09:46', 'admin'),
(3, 'Add Employee Information', '06/13/2021 - 09:46', 'admin'),
(4, 'Add Employee Information', '06/13/2021 - 09:47', 'admin'),
(5, 'Add Project Record : Cavite State University', '06/13/2021 - 09:48', 'admin'),
(6, '1', '06/13/2021 - 09:48', 'admin'),
(7, '1', '06/13/2021 - 09:49', 'admin'),
(8, 'Add Employee to Project: Cavite State University', '06/13/2021 - 09:50', 'admin'),
(9, 'Update Salary Information of Francis C.  Ong ', '06/13/2021 - 09:52', 'admin'),
(10, 'Add Allowance Record of Francis C.  Ong  in Project: Cavite State University', '06/13/2021 - 09:53', 'admin'),
(11, 'Update Allowance Information of Francis C.  Ong ', '06/13/2021 - 09:53', 'admin'),
(12, 'Add Cash Advance Record of Francis C.  Ong  in Project: Cavite State University', '06/13/2021 - 09:54', 'admin'),
(13, 'Add Allowance Record of Francis C.  Ong  in Project: Cavite State University', '06/13/2021 - 09:55', 'admin'),
(14, 'Removed Allowance Record of Francis C.  Ong  in Project: Cavite State University', '06/13/2021 - 09:56', 'admin'),
(15, 'Add Cash Advance Record of Francis C.  Ong  in Project: Cavite State University', '06/13/2021 - 09:57', 'admin'),
(16, 'Removed Cash Record of Francis C.  Ong  in Project: Cavite State University', '06/13/2021 - 09:57', 'admin'),
(17, 'Add Employee to Project: Cavite State University', '06/13/2021 - 09:58', 'admin'),
(18, 'Update Daily Time Record of  Ong, Francis C.', '06/13/2021 - 09:59', 'admin'),
(19, '1', '06/13/2021 - 10:00', 'admin'),
(20, '1', '06/13/2021 - 10:01', 'admin'),
(21, 'Update Daily Time Record of  Ong, Francis C.', '06/13/2021 - 10:05', 'admin'),
(22, 'Update Daily Time Record of  Ong, Francis C.', '06/13/2021 - 10:05', 'admin'),
(23, 'Update Daily Time Record of  Ong, Francis C.', '06/13/2021 - 10:10', 'admin'),
(24, 'Update Daily Time Record of  Ong, Francis C.', '06/13/2021 - 10:10', 'admin'),
(25, 'Update Daily Time Record of  Ong, Francis C.', '06/13/2021 - 10:13', 'admin'),
(26, 'Transaction Record Added from Project: Cavite State University', '06/13/2021 - 10:24', 'admin'),
(27, 'Updated Transaction Record from Project: Cavite State University', '06/13/2021 - 10:25', 'admin'),
(28, 'Login Failed', '09/13/2021 - 10:27', 'admin'),
(29, 'Login Success', '09/13/2021 - 10:27', 'admin'),
(30, 'Login Failed', '06/13/2021 - 10:31', 'admin'),
(31, 'Login Success', '06/13/2021 - 10:31', 'admin'),
(32, 'Account Logged Out', '06/13/2021 - 10:33', 'admin'),
(33, 'Login Failed', '06/18/2021 - 09:09', 'admin'),
(34, 'Login Success', '06/18/2021 - 09:09', 'admin'),
(35, '1', '06/18/2021 - 09:09', 'admin'),
(36, 'Login Failed', '06/18/2021 - 09:11', 'admin'),
(37, 'Login Success', '06/18/2021 - 09:11', 'admin'),
(38, '1', '06/18/2021 - 09:11', 'admin'),
(39, 'Update Daily Time Record of  Ong, Francis C.', '06/18/2021 - 09:12', 'admin'),
(40, 'Update Daily Time Record of  Ong, Francis C.', '06/18/2021 - 09:12', 'admin'),
(41, 'Update Daily Time Record of  Ong, Francis C.', '06/18/2021 - 09:13', 'admin'),
(42, 'Update Daily Time Record of  Ong, Francis C.', '06/18/2021 - 09:13', 'admin'),
(43, 'Login Failed', '06/18/2021 - 09:17', 'admin'),
(44, 'Login Success', '06/18/2021 - 09:17', 'admin'),
(45, '1', '06/18/2021 - 09:17', 'admin'),
(46, 'Login Failed', '06/18/2021 - 09:18', 'admin'),
(47, 'Login Success', '06/18/2021 - 09:18', 'admin'),
(48, '1', '06/18/2021 - 09:18', 'admin'),
(49, 'Add Allowance Record of Francis C.  Ong  in Project: Cavite State University', '06/18/2021 - 09:18', 'admin'),
(50, 'Removed Allowance Record of Francis C.  Ong  in Project: Cavite State University', '06/18/2021 - 09:18', 'admin'),
(51, 'Login Success', '06/18/2021 - 09:19', 'admin'),
(52, '1', '06/18/2021 - 09:19', 'admin'),
(53, 'Add Allowance Record of Francis C.  Ong  in Project: Cavite State University', '06/18/2021 - 09:20', 'admin'),
(54, 'Add Cash Advance Record of Francis C.  Ong  in Project: Cavite State University', '06/18/2021 - 09:20', 'admin'),
(55, 'Add Project Record : 45Dfg', '06/18/2021 - 09:20', 'admin'),
(56, '2', '06/18/2021 - 09:20', 'admin'),
(57, 'Login Success', '06/18/2021 - 09:31', 'admin'),
(58, 'Login Success', '06/18/2021 - 09:33', 'admin'),
(59, 'Login Success', '06/18/2021 - 09:36', 'admin'),
(60, '1', '06/18/2021 - 09:36', 'admin'),
(61, 'Login Success', '06/18/2021 - 09:37', 'admin'),
(62, 'Login Success', '06/18/2021 - 09:43', 'admin'),
(63, 'Login Success', '06/18/2021 - 09:44', 'admin'),
(64, 'Login Failed', '06/18/2021 - 09:45', 'admin'),
(65, 'Login Success', '06/18/2021 - 09:45', 'admin'),
(66, 'Login Failed', '06/18/2021 - 09:46', 'admin'),
(67, 'Login Success', '06/18/2021 - 09:46', 'admin'),
(68, 'Login Failed', '06/18/2021 - 10:03', 'admin'),
(69, 'Login Success', '06/18/2021 - 10:03', 'admin'),
(70, 'Login Failed', '06/18/2021 - 10:06', 'admin'),
(71, 'Login Success', '06/18/2021 - 10:06', 'admin'),
(72, 'Login Success', '06/18/2021 - 10:06', 'admin'),
(73, 'Login Failed', '06/18/2021 - 10:07', 'admin'),
(74, 'Login Success', '06/18/2021 - 10:07', 'admin'),
(75, 'Login Failed', '06/18/2021 - 10:08', 'admin'),
(76, 'Login Success', '06/18/2021 - 10:08', 'admin'),
(77, 'Add Project Record : Fghjfdf', '06/18/2021 - 10:08', 'admin'),
(78, '3', '06/18/2021 - 10:08', 'admin'),
(79, 'Login Failed', '06/20/2021 - 20:04', 'admin'),
(80, 'Login Failed', '06/20/2021 - 20:05', 'admin'),
(81, 'Login Success', '06/20/2021 - 20:05', 'admin'),
(82, 'Add Employee Information', '06/20/2021 - 20:06', 'admin'),
(83, 'Login Success', '06/20/2021 - 20:06', 'admin'),
(84, 'Add Project Record : Asdasd', '06/20/2021 - 20:07', 'admin'),
(85, 'Update Project Record : Asdasd', '06/20/2021 - 20:07', 'admin'),
(86, 'Update Project Record : Asdasd', '06/20/2021 - 20:07', 'admin'),
(87, 'Update Project Record : Asdasd', '06/20/2021 - 20:08', 'admin'),
(88, '1', '06/20/2021 - 20:10', 'admin'),
(89, 'Update Salary Information of Francis C.  Ong ', '06/20/2021 - 20:10', 'admin'),
(90, 'Login Success', '06/20/2021 - 20:13', 'admin'),
(91, '1', '06/20/2021 - 20:13', 'admin'),
(92, 'Login Success', '06/20/2021 - 20:13', 'admin'),
(93, '1', '06/20/2021 - 20:13', 'admin'),
(94, 'Update Salary Information of Francis C.  Ong ', '06/20/2021 - 20:13', 'admin'),
(95, 'Login Success', '06/20/2021 - 20:14', 'admin'),
(96, '1', '06/20/2021 - 20:14', 'admin'),
(97, 'Update Salary Information of Francis C.  Ong ', '06/20/2021 - 20:15', 'admin'),
(98, 'Login Success', '06/20/2021 - 20:19', 'admin'),
(99, '1', '06/20/2021 - 20:19', 'admin'),
(100, 'Update Salary Information of Francis C.  Ong ', '06/20/2021 - 20:20', 'admin'),
(101, 'Add Allowance Record of Francis C.  Ong  in Project: Cavite State University', '06/20/2021 - 20:21', 'admin'),
(102, 'Update Allowance Information of Francis C.  Ong ', '06/20/2021 - 20:22', 'admin'),
(103, 'Add Allowance Record of Francis C.  Ong  in Project: Cavite State University', '06/20/2021 - 20:22', 'admin'),
(104, 'Update Allowance Information of Francis C.  Ong ', '06/20/2021 - 20:22', 'admin'),
(105, 'Login Success', '06/20/2021 - 20:26', 'admin'),
(106, '1', '06/20/2021 - 20:26', 'admin'),
(107, 'Update Allowance Information of Francis C.  Ong ', '06/20/2021 - 20:27', 'admin'),
(108, 'Login Success', '06/20/2021 - 20:28', 'admin'),
(109, '1', '06/20/2021 - 20:28', 'admin'),
(110, 'Update Cash Advance Information of Francis C.  Ong ', '06/20/2021 - 20:29', 'admin'),
(111, 'Update Cash Advance Information of Francis C.  Ong ', '06/20/2021 - 20:29', 'admin'),
(112, 'Add Cash Advance Record of Ran  C. Bellon  in Project: Cavite State University', '06/20/2021 - 20:30', 'admin'),
(113, '1', '06/20/2021 - 20:31', 'admin'),
(114, 'Add Cash Advance Record of Francis C.  Ong  in Project: Cavite State University', '06/20/2021 - 20:32', 'admin'),
(115, 'Removed Allowance Record of Francis C.  Ong  in Project: Cavite State University', '06/20/2021 - 20:34', 'admin'),
(116, 'Removed Allowance Record of Francis C.  Ong  in Project: Cavite State University', '06/20/2021 - 20:34', 'admin'),
(117, 'Login Success', '06/20/2021 - 20:39', 'admin'),
(118, '1', '06/20/2021 - 20:39', 'admin'),
(119, 'Update Cash Advance Information of Francis C.  Ong ', '06/20/2021 - 20:40', 'admin'),
(120, 'Updated Transaction Record from Project: Cavite State University', '06/20/2021 - 20:43', 'admin'),
(121, 'Updated Transaction Record from Project: Cavite State University', '06/20/2021 - 20:43', 'admin'),
(122, 'Updated Transaction Record from Project: Cavite State University', '06/20/2021 - 20:43', 'admin'),
(123, 'Updated Transaction Record from Project: Cavite State University', '06/20/2021 - 20:44', 'admin'),
(124, 'Transaction Record Added from Project: Cavite State University', '06/20/2021 - 20:44', 'admin'),
(125, 'Login Success', '06/20/2021 - 20:47', 'admin'),
(126, '1', '06/20/2021 - 20:48', 'admin'),
(127, 'Transaction Record Added from Project: Cavite State University', '06/20/2021 - 20:48', 'admin'),
(128, 'Updated Transaction Record from Project: Cavite State University', '06/20/2021 - 20:50', 'admin'),
(129, 'Updated Transaction Record from Project: Cavite State University', '06/20/2021 - 20:50', 'admin'),
(130, 'Updated Transaction Record from Project: Cavite State University', '06/20/2021 - 20:50', 'admin'),
(131, 'Update Daily Time Record of  Ong, Francis C.', '06/20/2021 - 20:53', 'admin'),
(132, 'Update Daily Time Record of  Ong, Francis C.', '06/20/2021 - 20:53', 'admin'),
(133, 'Update Daily Time Record of  Ong, Francis C.', '06/20/2021 - 20:54', 'admin'),
(134, 'Update Daily Time Record of  Ong, Francis C.', '06/20/2021 - 20:54', 'admin'),
(135, 'Update Daily Time Record of  Ong, Francis C.', '06/20/2021 - 20:54', 'admin'),
(136, 'Update Daily Time Record of  Ong, Francis C.', '06/20/2021 - 20:54', 'admin'),
(137, 'Update Daily Time Record of  Ong, Francis C.', '06/20/2021 - 20:55', 'admin'),
(138, 'Update Daily Time Record of  Ong, Francis C.', '06/20/2021 - 20:56', 'admin'),
(139, 'Update Daily Time Record of  Ong, Francis C.', '06/20/2021 - 20:56', 'admin'),
(140, 'Update Daily Time Record of  Ong, Francis C.', '06/20/2021 - 20:56', 'admin'),
(141, 'Update Daily Time Record of  Ong, Francis C.', '06/20/2021 - 20:56', 'admin'),
(142, 'Login Success', '06/20/2021 - 21:04', 'admin'),
(143, '1', '06/20/2021 - 21:04', 'admin'),
(144, 'Login Success', '06/20/2021 - 21:06', 'admin'),
(145, '1', '06/20/2021 - 21:06', 'admin'),
(146, 'Updated Transaction Record from Project: Cavite State University', '06/20/2021 - 21:06', 'admin'),
(147, 'Login Success', '06/20/2021 - 21:07', 'admin'),
(148, '1', '06/20/2021 - 21:07', 'admin'),
(149, 'Updated Transaction Record from Project: Cavite State University', '06/20/2021 - 21:09', 'admin'),
(150, 'Login Success', '06/20/2021 - 21:09', 'admin'),
(151, '1', '06/20/2021 - 21:09', 'admin'),
(152, 'Updated Transaction Record from Project: Cavite State University', '06/20/2021 - 21:10', 'admin'),
(153, 'Login Success', '06/20/2021 - 21:16', 'admin'),
(154, '4', '06/20/2021 - 21:17', 'admin'),
(155, 'Transaction Record Added from Project: Asdasd', '06/20/2021 - 21:19', 'admin'),
(156, 'Login Success', '06/20/2021 - 21:20', 'admin'),
(157, '1', '06/20/2021 - 21:20', 'admin'),
(158, '4', '06/20/2021 - 21:20', 'admin'),
(159, 'Login Success', '06/20/2021 - 21:20', 'admin'),
(160, '4', '06/20/2021 - 21:20', 'admin'),
(161, 'Updated Transaction Record from Project: Asdasd', '06/20/2021 - 21:22', 'admin'),
(162, 'Updated Transaction Record from Project: Asdasd', '06/20/2021 - 21:23', 'admin'),
(163, '1', '06/20/2021 - 21:23', 'admin'),
(164, 'Login Success', '06/20/2021 - 21:31', 'admin'),
(165, '1', '06/20/2021 - 21:32', 'admin'),
(166, 'Update Project Record : Cavite State University', '06/20/2021 - 21:32', 'admin'),
(167, 'Add Project Record : 111', '06/20/2021 - 21:33', 'admin'),
(168, '5', '06/20/2021 - 21:33', 'admin'),
(169, '1', '06/20/2021 - 21:33', 'admin'),
(170, 'Transaction Record Added from Project: Cavite State University', '06/20/2021 - 21:34', 'admin'),
(171, 'Updated Transaction Record from Project: Cavite State University', '06/20/2021 - 21:34', 'admin'),
(172, 'Login Success', '06/20/2021 - 21:46', 'admin'),
(173, '1', '06/20/2021 - 21:46', 'admin'),
(174, 'Updated Transaction Record from Project: Cavite State University', '06/20/2021 - 21:48', 'admin'),
(175, 'Login Success', '06/20/2021 - 21:48', 'admin'),
(176, '1', '06/20/2021 - 21:48', 'admin'),
(177, 'Login Success', '06/20/2021 - 21:54', 'admin'),
(178, '1', '06/20/2021 - 21:54', 'admin'),
(179, 'Login Success', '06/20/2021 - 21:55', 'admin'),
(180, '1', '06/20/2021 - 21:55', 'admin'),
(181, 'Updated Transaction Record from Project: Cavite State University', '06/20/2021 - 21:55', 'admin'),
(182, 'Updated Transaction Record from Project: Cavite State University', '06/20/2021 - 21:56', 'admin'),
(183, 'Updated Transaction Record from Project: Cavite State University', '06/20/2021 - 21:56', 'admin'),
(184, 'Login Success', '06/20/2021 - 21:57', 'admin'),
(185, '1', '06/20/2021 - 21:57', 'admin'),
(186, 'Login Success', '06/20/2021 - 22:00', 'admin'),
(187, '1', '06/20/2021 - 22:00', 'admin'),
(188, 'Updated Transaction Record from Project: Cavite State University', '06/20/2021 - 22:00', 'admin'),
(189, 'Login Success', '06/20/2021 - 22:03', 'admin'),
(190, '1', '06/20/2021 - 22:03', 'admin'),
(191, 'Updated Transaction Record from Project: Cavite State University', '06/20/2021 - 22:04', 'admin'),
(192, 'Updated Transaction Record from Project: Cavite State University', '06/20/2021 - 22:04', 'admin'),
(193, 'Updated Transaction Record from Project: Cavite State University', '06/20/2021 - 22:04', 'admin'),
(194, 'Updated Transaction Record from Project: Cavite State University', '06/20/2021 - 22:05', 'admin'),
(195, 'Removed Cash Record of Ran  C. Bellon  in Project: Cavite State University', '06/20/2021 - 22:06', 'admin'),
(196, 'Ran  C. Bellon  has been removed from the Project: Cavite State University', '06/20/2021 - 22:07', 'admin'),
(197, 'Add Employee to Project: Cavite State University', '06/20/2021 - 22:08', 'admin'),
(198, 'Login Failed', '06/20/2021 - 22:15', 'admin'),
(199, 'Login Failed', '06/20/2021 - 22:15', 'admin'),
(200, 'Login Success', '06/20/2021 - 22:16', 'admin'),
(201, '1', '06/20/2021 - 22:16', 'admin'),
(202, 'Update Daily Time Record of  Ong, Francis C.', '06/20/2021 - 22:16', 'admin'),
(203, 'Login Success', '06/20/2021 - 22:18', 'admin'),
(204, '1', '06/20/2021 - 22:18', 'admin'),
(205, 'Update Daily Time Record of  Ong, Francis C.', '06/20/2021 - 22:19', 'admin'),
(206, 'Update Daily Time Record of  Ong, Francis C.', '06/20/2021 - 22:19', 'admin'),
(207, 'Login Success', '06/20/2021 - 22:20', 'admin'),
(208, '1', '06/20/2021 - 22:20', 'admin'),
(209, 'Update Daily Time Record of  Ong, Francis C.', '06/20/2021 - 22:20', 'admin'),
(210, 'Update Daily Time Record of  Ong, Francis C.', '06/20/2021 - 22:20', 'admin'),
(211, 'Login Failed', '06/20/2021 - 22:21', 'admin'),
(212, 'Login Success', '06/20/2021 - 22:21', 'admin'),
(213, '1', '06/20/2021 - 22:21', 'admin'),
(214, 'Update Daily Time Record of  Ong, Francis C.', '06/20/2021 - 22:21', 'admin'),
(215, 'Login Success', '06/20/2021 - 22:23', 'admin'),
(216, '1', '06/20/2021 - 22:23', 'admin'),
(217, 'Update Daily Time Record of  Ong, Francis C.', '06/20/2021 - 22:23', 'admin'),
(218, 'Update Daily Time Record of  Ong, Francis C.', '06/20/2021 - 22:23', 'admin'),
(219, 'Login Success', '06/20/2021 - 22:24', 'admin'),
(220, '1', '06/20/2021 - 22:24', 'admin'),
(221, 'Update Daily Time Record of  Ong, Francis C.', '06/20/2021 - 22:25', 'admin'),
(222, 'Update Daily Time Record of  Ong, Francis C.', '06/20/2021 - 22:25', 'admin'),
(223, 'Login Success', '06/20/2021 - 22:29', 'admin'),
(224, '1', '06/20/2021 - 22:29', 'admin'),
(225, 'Update Daily Time Record of  Ong, Francis C.', '06/20/2021 - 22:29', 'admin'),
(226, 'Login Success', '06/21/2021 - 07:53', 'admin'),
(227, 'Password Updated Successfully', '06/21/2021 - 07:53', 'admin'),
(228, 'Add Project Record : General Hospital Project', '06/21/2021 - 07:55', 'admin'),
(229, 'Login Success', '06/21/2021 - 07:59', 'admin'),
(230, 'Login Success', '06/21/2021 - 08:01', 'admin'),
(231, 'Add Project Record : Sad', '06/21/2021 - 08:02', 'admin'),
(232, 'Update Project Record : Sad', '06/21/2021 - 08:02', 'admin'),
(233, 'Update Project Record : Sad', '06/21/2021 - 08:02', 'admin'),
(234, 'Login Success', '06/21/2021 - 08:06', 'admin'),
(235, '7', '06/21/2021 - 08:06', 'admin'),
(236, 'Login Success', '06/21/2021 - 08:08', 'admin'),
(237, 'Update Project Record : Sad', '06/21/2021 - 08:08', 'admin'),
(238, '7', '06/21/2021 - 08:09', 'admin'),
(239, '7', '06/21/2021 - 08:11', 'admin'),
(240, 'Login Success', '06/21/2021 - 08:16', 'admin'),
(241, 'Update Employee Information of : Yahaha C.  Ong', '06/21/2021 - 08:17', 'admin'),
(242, 'Update Employee Information of : Yahaha C.  Ong', '06/21/2021 - 08:17', 'admin'),
(243, 'Update Employee Information of : Yahaha C.  Ong', '06/21/2021 - 08:17', 'admin'),
(244, 'Update Employee Information of : Francis C.  Ong', '06/21/2021 - 08:17', 'admin'),
(245, 'Add Employee Information', '06/21/2021 - 08:18', 'admin'),
(246, 'Update Employee Information of : Henry T. Agaton', '06/21/2021 - 08:19', 'admin'),
(247, 'Update Employee Information of : Henry T. Agaton', '06/21/2021 - 08:19', 'admin'),
(248, 'Login Success', '06/21/2021 - 08:20', 'admin'),
(249, 'Update Project Record : Cavite State University', '06/21/2021 - 08:21', 'admin'),
(250, 'Update Employee Information of : Francis C. Cruz', '06/21/2021 - 08:22', 'admin'),
(251, 'Update Employee Information of : Francis C. Ong', '06/21/2021 - 08:22', 'admin'),
(252, 'Login Success', '06/21/2021 - 08:23', 'admin'),
(253, 'Add Project Record : Salinas General Hospital', '06/21/2021 - 08:24', 'admin'),
(254, 'Update Project Record : Salinas General Hospital', '06/21/2021 - 08:25', 'admin'),
(255, '8', '06/21/2021 - 08:25', 'admin'),
(256, 'Add Employee to Project: Salinas General Hospital', '06/21/2021 - 08:25', 'admin'),
(257, 'Update Salary Information of Henry T. Agaton ', '06/21/2021 - 08:26', 'admin'),
(258, 'Add Allowance Record of Henry T. Agaton  in Project: Salinas General Hospital', '06/21/2021 - 08:26', 'admin'),
(259, 'Update Allowance Information of Henry T. Agaton ', '06/21/2021 - 08:26', 'admin'),
(260, 'Update Allowance Information of Henry T. Agaton ', '06/21/2021 - 08:26', 'admin'),
(261, 'Add Cash Advance Record of Henry T. Agaton  in Project: Salinas General Hospital', '06/21/2021 - 08:27', 'admin'),
(262, 'Update Daily Time Record of Agaton, Henry T.', '06/21/2021 - 08:27', 'admin'),
(263, 'Update Daily Time Record of Agaton, Henry T.', '06/21/2021 - 08:27', 'admin'),
(264, 'Update Daily Time Record of Agaton, Henry T.', '06/21/2021 - 08:28', 'admin'),
(265, 'Update Daily Time Record of Agaton, Henry T.', '06/21/2021 - 08:28', 'admin'),
(266, 'Update Daily Time Record of Agaton, Henry T.', '06/21/2021 - 08:28', 'admin'),
(267, 'Update Daily Time Record of Agaton, Henry T.', '06/21/2021 - 08:29', 'admin'),
(268, 'Update Daily Time Record of Agaton, Henry T.', '06/21/2021 - 08:29', 'admin'),
(269, 'Update Daily Time Record of Agaton, Henry T.', '06/21/2021 - 08:29', 'admin'),
(270, 'Update Daily Time Record of Agaton, Henry T.', '06/21/2021 - 08:29', 'admin'),
(271, 'Update Daily Time Record of Agaton, Henry T.', '06/21/2021 - 08:29', 'admin'),
(272, 'Update Daily Time Record of Agaton, Henry T.', '06/21/2021 - 08:30', 'admin'),
(273, '8', '06/21/2021 - 08:30', 'admin'),
(274, '1', '06/21/2021 - 08:31', 'admin'),
(275, 'Update Daily Time Record of Ong, Francis C.', '06/21/2021 - 08:32', 'admin'),
(276, 'Update Daily Time Record of Ong, Francis C.', '06/21/2021 - 08:32', 'admin'),
(277, 'Update Daily Time Record of Ong, Francis C.', '06/21/2021 - 08:33', 'admin'),
(278, 'Removed Cash Record of Francis C. Ong  in Project: Cavite State University', '06/21/2021 - 08:33', 'admin'),
(279, 'Removed Cash Record of Francis C. Ong  in Project: Cavite State University', '06/21/2021 - 08:33', 'admin'),
(280, 'Removed Allowance Record of Francis C. Ong  in Project: Cavite State University', '06/21/2021 - 08:33', 'admin'),
(281, '1', '06/21/2021 - 08:33', 'admin'),
(282, 'Update Daily Time Record of Dela Cruz, Jason C.', '06/21/2021 - 08:34', 'admin'),
(283, 'Update Daily Time Record of Dela Cruz, Jason C.', '06/21/2021 - 08:34', 'admin'),
(284, 'Update Daily Time Record of Dela Cruz, Jason C.', '06/21/2021 - 08:35', 'admin'),
(285, 'Update Daily Time Record of Dela Cruz, Jason C.', '06/21/2021 - 08:35', 'admin'),
(286, 'Update Daily Time Record of Dela Cruz, Jason C.', '06/21/2021 - 08:35', 'admin'),
(287, 'Update Daily Time Record of Dela Cruz, Jason C.', '06/21/2021 - 08:36', 'admin'),
(288, 'Update Daily Time Record of Dela Cruz, Jason C.', '06/21/2021 - 08:36', 'admin'),
(289, 'Update Daily Time Record of Dela Cruz, Jason C.', '06/21/2021 - 08:36', 'admin'),
(290, '8', '06/21/2021 - 08:37', 'admin'),
(291, 'Login Success', '06/21/2021 - 08:37', 'admin'),
(292, '1', '06/21/2021 - 08:37', 'admin'),
(293, 'Update Salary Information of Francis C. Ong ', '06/21/2021 - 08:38', 'admin'),
(294, 'Update Salary Information of Francis C. Ong ', '06/21/2021 - 08:38', 'admin'),
(295, 'Login Failed', '06/21/2021 - 08:47', 'admin'),
(296, 'Login Failed', '06/21/2021 - 08:47', 'admin'),
(297, 'Login Success', '06/21/2021 - 08:47', 'admin'),
(298, 'Update Employee Information of : Francis C. Ong', '06/21/2021 - 08:48', 'admin'),
(299, 'Update Employee Information of : Jason C. Dela Cruz', '06/21/2021 - 08:48', 'admin'),
(300, '8', '06/21/2021 - 08:50', 'admin'),
(301, '1', '06/21/2021 - 08:50', 'admin'),
(302, '1', '06/21/2021 - 09:05', 'admin'),
(303, 'Update Daily Time Record of Ong, Francis C.', '06/21/2021 - 09:06', 'admin'),
(304, 'Update Daily Time Record of Ong, Francis C.', '06/21/2021 - 09:06', 'admin'),
(305, 'Update Daily Time Record of Ong, Francis C.', '06/21/2021 - 09:08', 'admin'),
(306, 'Update Daily Time Record of Ong, Francis C.', '06/21/2021 - 09:08', 'admin'),
(307, 'Update Daily Time Record of Ong, Francis C.', '06/21/2021 - 09:08', 'admin'),
(308, 'Update Daily Time Record of Ong, Francis C.', '06/21/2021 - 09:09', 'admin'),
(309, 'Update Daily Time Record of Ong, Francis C.', '06/21/2021 - 09:10', 'admin'),
(310, 'Update Daily Time Record of Ong, Francis C.', '06/21/2021 - 09:10', 'admin'),
(311, 'Update Daily Time Record of Ong, Francis C.', '06/21/2021 - 09:28', 'admin'),
(312, 'Update Daily Time Record of Ong, Francis C.', '06/21/2021 - 09:29', 'admin'),
(313, 'Update Daily Time Record of Ong, Francis C.', '06/21/2021 - 09:31', 'admin'),
(314, 'Login Success', '06/21/2021 - 09:49', 'admin'),
(315, '1', '06/21/2021 - 09:49', 'admin'),
(316, 'Update Daily Time Record of Ong, Francis C.', '06/21/2021 - 09:49', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` int(11) NOT NULL,
  `Last_name` varchar(25) NOT NULL,
  `First_name` varchar(25) NOT NULL,
  `MI` varchar(1) NOT NULL,
  `Suffix` varchar(25) DEFAULT NULL,
  `Sex` varchar(10) NOT NULL,
  `Birthday` varchar(50) NOT NULL,
  `Age` int(10) NOT NULL,
  `Contact_Number` varchar(11) NOT NULL,
  `Status` varchar(25) NOT NULL,
  `Nationality` varchar(50) DEFAULT NULL,
  `Address` varchar(100) NOT NULL,
  `Work_Status` varchar(15) NOT NULL,
  `Current_Site` varchar(50) DEFAULT NULL,
  `Date_Hired` varchar(50) NOT NULL,
  `Job_Position` varchar(25) NOT NULL,
  `Image` longblob DEFAULT NULL,
  `Designated` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `Last_name`, `First_name`, `MI`, `Suffix`, `Sex`, `Birthday`, `Age`, `Contact_Number`, `Status`, `Nationality`, `Address`, `Work_Status`, `Current_Site`, `Date_Hired`, `Job_Position`, `Image`, `Designated`) VALUES
(1, 'Ong', 'Francis', 'C', 'N/A', 'Male', '1997,4,25', 23, '3535635353', 'Single', 'Filipino', 'Salinas 1', 'Active', 'Imus Cavite', '2021,6,13', 'General Manager', 0x89504e470d0a1a0a0000000d494844520000008300000083080200000021ff3f31000001786943435073524742206275696c742d696e00002891a590b14bc34018c55f5b45d14a071d1c1c3214076941eae2a875284829a556b0ea92a4492b246d4852441c1d5c3b745171b18aff816ee23f2008823ab9e8eca0208294f8ae29c4a19dfcc2ddf7e3ddbdcbdd03c24d43359da179c0acb976219396364a9b12fe94ac3ad6723e9fc5c0fa7a4448f487a4386bf0bebe355ed61c15088d921755cb76c94be4dcae6b096e92a7d4aa5c269f9313362f48be17bae2f39be08acfdf82ed6261050847c952c5e78460c567f11649adda26d920c74da3a1f6ee235e12d56aeb6bec33dde1a0800cd290a0a0811d18709164af31b3febe54d797439d1e95b3853dd8745450a53741b5c15335769dbac6cfe00e56907d90a9a32fa4fc3f445781e157cffb9c03464e80cea1e7fd9c795ea70d449e81db56e0afb718e73bf566a0c54f81d80170751368ca0570cd8ca75f2cd996bb528423acebc0c7253051022699f5d8d67fd7fdbc7beb683f01c57d207b071c1d03b3dc1fdbfe05f48c736b33a38348000000097048597300000ec400000ec401952b0e1b0000200049444154789cec7d67b86d5575e81863ceb9da2e679f763b204d118d49ec060951a3c6f66c80a80802a25840a291aa20469022d1a854414105058d1a5e822189e525beef99985862898d7ab9e5dc53775d6dce31de8f79cebadb73ebb9f7fa9ef9be8cef7ee7eeb3cf5a73cd35c71cbd4cbcf72daf83ff86df02a0ffdf13f86f5884ffc6c46f0bfc37267e5be0bf31f1db027af77f16a2288a105110f761742502a01c82a5c2f6f291a0e18401998198585029263f2e09008055164181381400004110041410040214840214b1d3c0822c842086041000800104900140000080114814c0e2ed28fe6bac064401b72fefb4ef90f7fbc4e2e72600cb1ebe074c0000fb7bf669d205816220019bd9206e1614159492008900a0c3b2d4542d36121003003b11225a9c3232080132082270201611099443622005cc088ec0e3c3a11a7eba00a1102000f0d2fc19aa774190ffb798d8fde3f68c89fd7cb62013eb304c1e1c1429c10897f550478c81384364091845102cb0b31ce7ca02e42219b36541cb808c4240a250a3620a24514a092a400560d8950416c12169a7081c2e911700303a0006a0ffc72bbe6ff09bc5846610004bd0298a8bafff5436d988dab92b8a371effaaf1469c04519d4c5996595998282caddcf98d7b7ff1e0664410ad52e784001188484410910b8e045ef647cf7ad6938e32c5602289eb1c2805c2a51202206b8400ac080020225b875c1a63841918598448ed71ceffbf00776fd9095110458808b46f72020a22256cb37c23c57f7ad32da58e568d4fb058d2bab065ac145b41050004c08a751004d65a22027125a22003631019b62200221886a6ccfbf39bb79469f68e534f9c0039726282d966022e574569594129222896200cb4410e11c995a1a280908800001111919cece90d0e24e4fdbe72bb9413fb8b091470045e4c0a022291132d0e500b054c65bbdf0d83489cee39fac9b6d98ffecdbd711c074180883a308808007e75608893226225b42b015b411044ccccccfd856deda9d98bce79ebf4ccec27efbc3b47d04a3bb100c4c8810502a0a5773eee694f7dc651474e34eb9867239136087513b158e7ca30d2cc4ca211d139c70a0120f0ff913811410140900080891d282a5194f06f11263c3002809080b6da29cc75e9f2a2ae028bb507a7a7b328f8f81d776e2b8abe136d226b6d18868d464344a22832c6f8a5dffb57121122d25aa3c0b6cd9bfaed767db49934464b6799d939a7940200258bf813116626ad66bbf392e7b580ecc06984f3df726a446898eb4625dac4c281d645962641000096d06ec7bf2ced0956a81984018215ea5ebf594c300a09a20001309045a74549c11d250b1aafbefdae47a6db0e606cf53a07d41a1fedcecfd4eb751149d3d4af2611795eb1a2b7020011294a97f57b04cc4051ad2e6c991900b4d6b08400600142711c44a1632ab2bcd91a19f4bba4cc60309b777b817575456bc6265ef527cf9d688d04b64c0042448d84888a8884494090192c00e5200010925ea922f09bc58423518c4ac0095a105076901633295d72eb6766016aabc6a230544c46544881522ad776d9081e07fb86090b020e84994518590978bc7aa2a9ae5c940d02869991589011180959189c388b88d61583c180d394d35c033ce571871dffd217e7fd2e810a0835a015760cccd271fc837ff93fa7beec25c6f65734e1dd63e200e84e28c0400e3105999acbbffbe0435ff9fe0fddf8d8389810c0b0c2403361a11880152f0a4c7faf2ce939fbf668020b4ab3d2010a0003e3b29187419073cd8c00000204e042214674a8803008223109b5445ca9907edaee9f7feb6d83415f011132093182304189ad43d7f2fcb663e6161e5b23cf060f08ac18135e44d3afbfa6202ce4c57f6ed9fce12f7fcd8c8cd61b132cb6c8fbd2685ad45e0d25f12bbe7c81f6190d00a088589018000181914c85da4ae60f5f0ea294805a7aa2352c22c400620d1a224024cb0a3425ad565c8eca98200b007b22239648c76d657bddb42e344c76fb0f2bc38457632c8166300c4cd08c9b1ba7a67aa42eb9fef66d00ab366c70ce095b4554afb50808018197964464d9baef0f1a1011441378e719022c97fcbbe2e316b6db7e08080880ca02088a80905600c0d60102208042000401418883d8b13201060e5aa14204d9e18df61956860959722d10332215e2540a8fe4f2be4fdf4ead64c4c400a0940ac3108616e540cdf5370d3b9da788a8453085434bdcb9ff814bcf3c456946543bf2c07d86157327c540cc21eabe755dc0af3cf8e3bbeeb96f6cdd211645290116634cb553feabe060a720225ecf76ce054190f6b3308cb73cf08bf79c70c2218d582b3e800401fb262710b114d89ada6beffec2cf59eae313a1066d41004d1878d5e5bf340e3c28a59c73bd5eafd7ebf5fb7d678bd8f2a56f3eeda03808480c50b983ccdb1f5899cc6104a72143de920e3e7af75d3f5c48d7eb55cda496abcc4636d006052a0df2bf3a32981911b5d6ab56ad8ae33849a20bdf7aea44afdb30ce12803dc06fb7079af06e7d41ef7326414e549097f0cd2d8f7cbfc80f1a5d97c70c0c0a42adb5b73968bff952c57c2bf2da4f65777fa68188d6dac9c94906b9faae2f0773ddf79c78fc13378c490d5d01e4900001d891eca7cb776534414ced34fffeecec17effde6786dcc1af67335c61c90659225f09fcbb264e6b22cf77fe47d005c020060660db461f5fac9df7fc2f9777fe9612b33ed12990870c9fbb4bfafbf628d78a1844b6eff7c32b6be1134545d03c03e388e76031e0dcc5c14c5962d5bb66cd95214c50119797fa6a49462e6b2740ef5c14f3ceabd377dfadfb7b5e78ab24414200200d95fdb6205125b447aa5fbe04d9f1edbb0d63268b6d6da4847fbe635dae9f8fea7b576dbb66dc69866b319c7b17722edcdedbf21f68588cc2c040c60dad90805c961475dff37ff7355995ff8e6d3d74426940360e3ad600444ec14e5c6d219424585231b8a564a1d40bec4ccbd5e6f6a6a6a7474b45eaf379b4d63ccde9bb2bc040750cd5ff604879cb13546ad79cc6176ed21975e7feb5c51581011b79f43efe125ad62027048203c1814f7f7d370a455968e000148ab606f6c6644f4fe998a7a8625b0c781df77fd7e3fcbb256ab8588de3cac46d81b7c5738f0fe953d5ebf22400114628292ca41968275619c14f591f77df2b3d3c090678ce0040994127024bcc2fdb967c2f7de1b138459bf77f3e7efaeadde00d5d2ec2990a794d25a1b6382200080ed9103a53c0554f239cbb2a228b66ddbd66c3689c818a3b55e29c31191b9b9b956abb538f3df00b3420104f4938f82607cdd86077ef6930766dbb5463c226849581cfa149215c21e6842312901044e4bdb66e80a58bbe8d6de4bbe5496655996699a6659e65796887c1441294544de931045d1e6cd9b9bcda647d5708c73ef175429353939b979f3666bed6f54e5f59195b816d51af5237ee777afbde3af7e9aebacc8498415975a14835a59406f4f345191182a121d89dece8e96b1ef9dbeb9dff5d65a1f11caf3dc2b429533b90ae9a469ba18be060882a0c204111151bd5eaf5028224551888873db59b3a7217fd7d4d4941f7f5724c5ccc317ec6887566cd37f504a55e2cacfa7fa2ba28a9bf5c73cf10957dc7ceb4de79e3929da0867c8cbc2bd7b037bc08443700882e0acedf68aa436b2188bdf59406647f09cc739e79cd35a7b864344ce39ff927e4d9979e3c68de3e3e322522d28544137803ccfa328aa56c13fbda2ad0a945283c1a0ba7e576451abd5a228f21c72d86c5c265a861139fcc15fc9cc0a0985958972548f39f2c8cffdc337defadc1746019166472ba6893d70a7c081254001744891d65afb7954afb1f74fb2d66659e69cf3fb7a58c971cee5795e96a567561547f23f9d7383c160301878795e711eef8da8f66f5996ed76db939dff13ec2c5e04009e5b7a36eb7139bcdf3d782dc37f1e9ed2f05b338820ba3c0b8d5161f4cf3f79a813482e8561bd0ffac29ebc1d3e0f0fc05b92fbef75f062a312007ec0611cf8cb2a0cf90f4aa92ccbbcbfdd5a5b71153f42453a5e01f3dba52ccb6adf2c9b7059964aa9344d3d9956581f5ebee15b2a43c7fff424ee53172aa780133ef4c8a337f73acd5a546754b062a37baf8c2612104424162e00e2fdc1c4f05a57bcc57f6066bfb830f4da5bb76e1d19194992c4339c8a7d554ad7f0f55e1455e30ffbaf96cd21cb322fa2fc6a7a9aa8a4574516fe574f3d151dffdaca10f9ef11b16f079ffad25f5ffcfa13ea0694c081d662c5a76d0801bb3ccfb34118c630a4dbece5632aa3a1daa4c3f69797bdfead2a395ca9b9455138e7a2280280613754951be8a3085e0e97651986a117215e38ed942c10d16f6dafb9555ba11a7937f26318861153af279ba6ca39476b02089078853ef33dc8894a2d0eb48e0253a4d93e3b15fcea30b3b5d6ffccb2acd3e9f47a3dcffdab48c0603048d3140098b9d96cb65aad9191916127a35f1de79c77110240511465591645f1f9cf7f7eeddab55a6b6bade721fe825dada617514551f8eb6189c555770db3a00af115787c9765996519d87274edc13ff8f9fdb9cb79a59ad35e70a7c5ecb752440392da47bee417a2dbed22a23146294504466953335e014dd3344992385e647d5a6ba5d4e6cd9b8320180c06b55acdefdc8a1779b9e2b7bc73aedfef1f71c411a79f7e7a1445575f7df5e9a79fee17b4288a20088675a465b3aab6bf4743599632145ff15039be3c5686b5e74a214644575a93d4fff6ebdf7af1d187871a0097e75dec1ef684096402a7847a2423109685c83e0582fcc5cd66d3ff4a4408a402d05a9b20b0960f3ffcf0cd9b3672946842440c828099c75aa345512c19e45e655ad49ae238f6b984ccdc6ab53efef18f8f8e8ef6fb691445fff44fdf1e1d1d7fe491478c515ed44751e471e6d7dd0ba48ab83d822bac0c4bb24a71d8d57b0dbb559c80b5690ad065dd02f195097bbf447baa6401604464a98741d92d13b36818effd033c2c63d6cc4c2ad45a936266560a07835e5caf3133e8008958105065b648f3b49ed4acb5c618bf4d95521e4f9d4ee7d8638f3dfffcf39552499268adc7c7c711f1d4534f7de94b5ffaf297bf7c30e8f95decb94da5f0f8b8b427a94a61db7f9b5c105d69475a230376b9957885a9507b5cd3c50b98add14408ceb9cae1b12ba8b658c54f87f574220ac3d0aba459897969e7e6e62e79ff65a7bcf14d0a9dd1e47d7fdd6ef7ca2baf8ce3d039e7957e91451dbfdd6e23e29d77def9810f7c607c7c7c6262c2fbcf83401ba3b4a666b3feb18f7dd4afb873ce6f9d288a922469369ba3a3a34992f83ff5fbfd6eb75b31fd1d4db9bd0741d6a847c657dff8b9cf0d764d46bb823d62625137c8729b164e883c5fdedd0dcc7e9571c95751d94ddebf648c319a22c58385e9fed4436630bfb646375d75d9bd77dd2e6927ebb5f33c77ce8546d68c8e9c77eeb95168449cb742bc51b97efdfadb6ebb6d7272d20b0f6b6d9ee7599679ef56bfdfd75a1f79e49137de78e3cccc4c9665fe46af74553e024f5bb55aad56ab1963bc3fa35201f6c1341364147248d3fd0cd48a5335f66cd991882039d462c25ec631f3ee43375e5bf772b2e26315ffb54e4058d889cd62cd1fbfe6d291d8d862108471bfe0ef3db8f52f6fbc95b02ed6e5fdfe79e7bed384bab730474120c8e82008924d9b361d77dc71f7df7fffaa55abc2309425f70900882c6eff300c9d73ab57afbef9e69bcf3aeb2c2f18bc00af385235254fbb4aa9858505efe0da37039611340023a50e3a83c178a3bea2db97afa962b00482ac991c98428375b64ec9cc74e75d9fbdb9b6ae6594f1e1d29daab31614499e15f9969985105c441204260c4367330076ce8dc4b5c8c01b4e78c564abde48820dad208e63800400c698c79a07abd34ffcf0a7bf6ce2fa98cecf7fe36b1442eae4aa4fdc9a4a80261e647deecf3dffc9879bb907dab30f50100e0683e9e9e999e9e9a228d22c9f9f9feff7fb3e6b39b52ecdfa8f19338ea85423f3dd7ea24a670b060344a4954644600011f61512d0e974bc9eb64c63de9ba524d104d609e930225373829a56405bbbdbdd2212952a4f8247a2e092cfdd1144a3da367548bb89c310010ac671dc18195765ff4f9e76f40b9f735cad16f7bbed858579440c038dae48e22820512895b301bc9bbdb07ff0a4a3df73bab9ee939f5eb776ac594b46925a9ae797bde7dc2f7eedebdffeb71f43636c7ccd869b6fbbf3ca8bdfdd0aa4560f373f3a3bb1ae6157c5e04405a62c1c83dbb0e16054402580b88265d342efa2abfe22564121318aa8c22a04b2202602244474cc80303636f6f0c30f13910fd9ee4af7dd2388489a6710262bba4bbdfea9bf33fc3b2e96060932e402bfeadb8b6ebeedabdff99770d5ea204a4c108491a98cd21d6982500180090c0a74a7375d70e6eb368cd547eb06b27e4dcb48a822e592400548222ed026ae35865d0b84caf02001fbbc639ffd074f7fb2b665a028d45a8b7bca131ffff2173def87dffbd785854e3fcbffedbbdf79da937f6f2c029ba61a5cac28542a400e9524816ad5a34612c65ad5028a4333d16a1e7dc4e146ec2f1eb83f3068451c6a87865d49442c88a44440d8b55aadad5bb77aa657190a7b5cf7c50f0024e0008b7eff0f9f74d444182c0ba4b9b2a4a54229d841c3dd392600250aa24e515e74c71782831ed31c9dd08251d39886c97ad9d4d4549224c3aa7705cc820822a815469cbeea85c78d34ebe2a4d71f0883a002d0829a5131694053abc5955a8c88029028c8fa5da575801c6a8dc0201c68a591374cb65efabc67bffa952f7be6539f3adf6edffbf7fff0074ffebdacb0484648232a4002328c1827232a084a45562900452c906587ae5dfdcca73fe1c73ffc374174caf42d4750b2b0730e8401498445646464646666a6280a2fc3772f332a87a052ca9b720ec095f9b38e3e722234cbd4a1dd6362e7dc0905d234d541f0b4c71cf4a3ad5bd4aad51006e2246df7373dba79cd9a353bbdab428752812269d4a2303442c84e4a67f3bc404454b4ddf7b9e412d8ee952229ac581d3906c556900496fcd528a45412240972b02a7cfc9b4e62529867aeb4b0a402a20000130001a380f6af0d2c24a85c2dc24382dae57f7ace96b9f6fffef71f7dfb5fbedb13c340da44d616dec5eb9fd56c36cbb27cf4d1475badd6d8d8d86e5f1644647a7abad56a857124a87c56f93e28c1cb31e17de000440663b66f7eceb3ba4134cb4e6bfd68b7fcf817be383939b91bcb8e11084811238a03411310702e72e5ad5fe81540e834c8aac989273de189ebd6ae0657a67131e8ce359248132884c844837ebf9ba64ab860b18091561a35994429ae2541661d02366af5453b05ac634480007307da12284046f0461c11315be7448110e9521c224508874db60efee3671d7fdc53e77a45696d1135bef3c31fffe0dffec566f92fb77624a9e7a5ab857add9ab53a307e9cddaca0526a6c6c6c6666a6b5764dcce8487506fd90028354d900fb82890afc268dc3308ce2491366b66c0f7a65bee87bd8d55d468400044264bb766c5c83008089eb9ffedc17fa6ca2284ab3d2dac29625bab2c8ed0d375fffe8a38fe6e980501480b5a2149645ee8a7c7262ecd867ff01e4fd4069a5b3271e754837f596f676c0201c002df4d200d8216b2cc0a792d40516fa8b5297c53937dbcd9cb55e7d5d14c548f546a03172263ae9c5c7bde384e72fe472cfd7bf73e7bdff58820908a3241eb6f57605de3125225c5a671483d3c27ae5c9cb7b324048945895b1b02449b4e6a0f545e97653d2e4c43a20125048ad5603415099a8313ab9e1d0110c89c8820260b1ce0b992bfef26605c2cc085c9665518ab02d8a82407afdce6b4f7c0dd852139536fffdc3d79dffb653ccd2cbfbc765a8efbce76b73a9b3b6643424b6627d44048e0180009d736c2d8068b5e8ecf3f868b767b35e2f4a1a35831fbaf8dd13cde4a94f7aec5fddf77510551919cb02123bc2527a6089020cc29639b706dc8a0802f688899cada1809041d17ffcf0a7a9758152956e376c522c3acb9472f92026d71df4c3c74ffa349c82d10a99302470064400516b9fbe1845c176dd43a4ca190080f9f979938ce479da731634fefcc18d96b74738fc72eb28bae1d6cf4a6dac2c4b40254ac3521a0322e679698c41166bad3866b1be4ecb3b36d2347de14b5e3a3ab1a6cb30b3b06d734f9e58e7665293b2401d8a887776ed5431a9a0b2109552c45270498075802430bbba651f31a11914832360915673542d657f7a6d61984df9cf5ac5f960ebf39ff1acd593ab1efad52f511090903411210880032404f2bd3410008011b7dbe1004c8ba55aa4b5d60a0b60011252fd6e3fcb32897f2dd70d51355ba31c8f315b4445b468882d6e64421171251ba35048900501804550c4b5db5d0d62cbd20ad5469aa92d4a1723696bd9af4a85d1dd2fd1f69d21ec04c4f1b14f7d32b11daac9df2bd87346818784d4daf1318692d821d8126c898e0099947f3db64e6bede61e79d7ab5ef2dc67fceefad1d6ccc2bc16b46569b42644100788007abb57510080449c8813000186c5a6028bb14c6164473a0c95094987b6fc35931511c1846022161fcf404401014451a4944285a44985a1212224202485e4bfd4a4c431a1132905d839b9f7de7b2d32331ba3bc037ad942ef143c85f948171310e9ad535b5ef2bb4f190f635ea1fab4074c54c15825d00c82fedc2c9362411260e71804c581108b1297f7a6369e7ddac987ad5d15688a02dd4f7b4e980851418962490900880371220e44103c9351880a77e0aa4aa9934e3a696cd59a4663b2519b0452265a4ef2ca68101eea25e47b082dfd1c06ac36a8cf5642e79c0a62a6902811340f3fb48941bcc3aa0ab855218a5d81c753afd70b82c0969c9659532040a714ae284cb4c37477001f9f00c03ccdc634ad0be30200d068a729030687ec44044402975df8d6931f7ff8fa46a4152ce6d19465616d9176177a73b3dba6a6a6a7a7676767db9d4e6f90a65951b058072c8b7ac6f016121163cc0b5ef4bc7ebfafa911844da514e0726fbcec71a976015ea497ac6a8d55abd61fda1c99f8c33f7cf632f9bc37037b0781f778a2904377e62b5ed61c4b3a791f57a83eed3907500908026809b93ce5452ff8d057efa1c9b5060d882b9d040ac4e66967ee7def7cd3e1e38114832854030541140df2e2a10737ae9e185d7870f35bdf7e3e85b52836858a50ab93dff0c6273df9296bd6ac2176ad56ab14564ad1afc7a088288aa276bb2dd86cd66b3a0eeb51b06c81fcf5ce815e6181ba8868ad8320523ab2ac08e5994f7b322ee5e65822d9211370a78328a5bc49188621882b37cf1cd11a31925368c0e18a126df618b32314124167282173e848232a5c7f30af928940489c6d67d675663e70de3b8e5a3f4e453f054614c79896dc1ee4b303a7bb29b33dfb8c93e6e7e7c74746a6da9d556bd7253abdfe03e73ff4d02325d07bdf7fd921871d591b1b4f6a8d5aad264b29204aa9b5abd7ad5d3d31325effc90fbf7ff315ef6e2691b7a82bf0fae83e142ff800ede4c428ea8885e7a7a7eae1f6b4448a6b7b334895a0e64d8a32ed5d72faa913499000e5823bf60fd8c3687b7b9d524ad1582dbaea9d6f76fd7e216589024245511cb46aece94f38eca035131b366c084d802660c1cf7ef6760578cb1d777ee4e69b374d4f4fcf4e9392ac3f3f1961527446b87bceeb5e7ad59fbde582b3cfec6c79f04da79c78c6a96fd8f8f023b3b3b3d65ab7940645e8eefafced91b1f77cf5f3eb57afe272871cb2bc1011ef68dbfbb7f6c80e82e0f2cb2e41b084767c24a8c75a0997ec50f9d6287bb606509120e465e1d33b8a766f12a9518fc031395c6995d18a3ba86c697736abf89acfdd15345bb530305c7ef492731fbb7edc3907522ac0344da7163a6956d6465a8e21b7a563fcc637ffd74f7ef6f37ebf0fce9e71da1b1245473ee6a0f1d1b1cc15a52b0685ed9474db1df7cc64f6ba9b3ed91a5b556f24461148c1a5145697c5c2d47f7e572d6c25fcb505e2b0f998673ccf85639ad8e1de068e6529e16a7666eb57effdfadd777ce6b2734e1d97b616f9d6cfb67de0ba4f396652c08e7cead4ceb9134b102756cbaffee347754185f8f1b79fd2d4a6668c38bbd302c803dccba637c8dac2338057ddf8d9d58f39f482734e3b7275bdae25aa8fa0674d4e44c4593191765916843a2f9d134807f9c0ba6e019ff8c4f5699afee171cf79ce739e9704e9681406008ea154fa175be66ffdcc177a8eeebee76b69ee56af1a23d28ec1e59d47bef7cfbabdd56b24db8dc1203ef4e92f70d11869045c710a9000cccccc41da5978e007d8d9b4d04bcfbcf0eae952c1620239f9b20fda212b5e441452a8c3cc9573bffac59fbee6f85575b3b6514b5480c0ce95fb8089e55ef1e580a87c3067695f8481691a1a8d83a38e7efc0f7ffab3d7bcf4b835cd280a156200040848441a21d0a040b45680a8492ba5e3286c26f1481c1dfb07cf78f631c78c8e8efef9e597ffefef7fffc9bffbb4c8448a240aa919e2337eff494f3cfaa8f3cfbbe0d8e38e638046a3990d0aad6c7fea61530c2c2f3a2a3c32a244c7f1988411040698f65283af32774acbe5a07dce19271fbe66b43db3b56dd557fee1dbac234200445fdab1a38dedbfd1c604b56866cbe6735ef7daa347e30d3520d12816841961a7527e5fbce2bb02464014129282c7ebf583d7b446eba15608808e406d6f4c42241ef37af899081c298e6ac158b33ed608af7eff7bda857cf0aa0f9f7af21b0e3b64dd1851a868aca6a2c05c79d13b2f7adbe9d81cb9f1e6db47c75611bb322f94884f0ca8bce80b735369f9f3839e3ac92086f74aea55acc93937f5e8c367bcf6d5af7ceeb3f2de3c3afbe8c2fcc03210071abc820a3b8b4c30b3310608e7da73e9ccccfa841242ef4fe3a5555ea931012ba50941700a444c21fada9b6e7af77bdf3331d208089114a322703e9f4b100414a3c2c5ee12ac4408448098b420392ee340879ac602f394673ef3affffebebfbbefbedf7becd161122aa250932178ce314f3be4f0c75e72c965cf7ef6b3157177dbc67c61766676767676b6dbed763a9d4ea733182c6429ae3be2f1651c1ad155c063d9f20d2bbe3e17647e7e7ed3a64da79d74fc1b5efde2d110228d837e76fd1d5fa468a49f155a2120edaaba99888c31ecdcfc96a90b4e7fed211a62a052454c96c96362e7c4b97b9a58b102185ac5ca1665bf571f99ac5148cc488ca4c40110e36277310456e210d8f735660446f0b103042640e744eb80e2604dd3bcfdb52f7ffb996fbae296cf6cdad2eef77283a05c1660794890bfedb52f7edb596f7cf8fefb1f79e081d9d9696b6d599604565ceaca7e91a9b9b98d9fb9e92f37fee2d18d5b363bb7dd4568b9142e409cb04560619ba6fd76bb3d35bded673ffb734c31e20000200049444154e95b4e3ff9ac538e7fdb097f7c588b9a867386e9021e5a90ce208f42234b04b10c5000514c80364b1178d0e91c49498dc2c2b0e24c31fa7ffb4010b00f1d5464894568adaba4ae95c2760f2e9052528ba35564ce3fe72d575d75d5a5175fa84b89c9687193a32d549d8bcf3c69e30ffe2951ae2c32e79c75306b55276321bd36c1d82837b7f0e6d7bf62f5c4c455d7dd42a89bad11519a48030022735908f3fcec4c69f36f7df39ffef62b5fc474eeada79e8859478915574a587b78d3fcd5d77f8aea93b0543cb0e37b09824348c8184b1db18fdeffcb0fbfe34c2525230a8212dccfded8fbd27dce1ba89e5deed110dd3d202208185206cad8e5af3bf5f40f5e75eda5175f68423200a540a4541071e2d4d46c174cbc90a6a4d4c7aebf11499b283ee7d493228d878c37cf3af1c58d24b9e682776edab2b51408e2ba436c8c8cf67a3d9ba56531888d41766f3ff3b4f7bcf195a349b0f981ffacc5262fca9e339b17ba7ff1c9cf497d1c86bcdc3b620205421d5845595e147373e7bdf6f51b8093901c892f10065c59406219ec631f40ef9ff109c23bd5b865a916a8aa0baa0a058733d294b0d73e6b51588f238ae2534f39f9c65b6e7bc75bce1831aa60b6a0a7b66ec94b9e9aefdff685cf6090bcf6a4134e3ef9645be6ccee8ebbbffc8657bd78b4559f8c4da4ca735ff75211690ffa4a074e988100c0202885511846c6a04d11557fd0a7b8b65042a7902ffded3f7eef670fd9b001a868284ddd4fafda6744146863b33c536efae1073ff4fad71d96987aa42c08092283db3f34c0be71273fbf344d6767679335abfc0eaa6247d5655e3f01005f6f4a4455027d359a12f6bdda050d206e180df3b478f8e1873b8341329a446205ac52865cb96672e2dcb79ed6eb0e90dced5ff9cad6b985b79f7deeab5e7372640a660602a594512a0882380c9d2b19412378fb1b112d8b03011d8b2b66e7a681d916f9e51fff4c0a46c2ba38094944992ae832ec15f7d52e857019e1cc4f1f3cfff8130f6ee82874051966091d0172a144adb48a687f304102881297aa1b86c5c2a06f9b96734311b8a566eea8961223a5dfeff7fbfd3ccf2b17bfd67a7474b4722e81ef7e0000e89df9521476ac999c7bced91fbbe196f7fee9594a210059b161623abdded7fefeefff73d3fce38f38f475af79553336495028642212d228dc1c1d23e2924b2085142800068788c288200102382e819d754e148128e1b4dfe5b04949add18cdb9df950b6fb767d1a759ee72292a6a99ff0739ffbdc7b1f7af0a0d551431927861c13a0230680fd44c38a3181028052128f4a74e9dbceb8e0cf2fbdfda39728424226246071e200607676763018c852571a7fafa792858585388e7725e705c8281c69d4d25ebf37c81aad1adbc5229f380c5ffea2171f3bdfab27713d0a150281f09259edab607c7c07814918003453c90e4898c4228841728bbd1110318aa2abdf73563bb55bdbd9ad777d796aaa13270911f99ce5a228a6a7a7e338eef57ab55aedc61b6ff4e57edffdc6dff9423f2bb2df8d847e0d56a8f9a008b225499cac0da2bc184ccdf433cba48cef5f5214c5a64d9bfafd7e55b95611845f7d5f80bdabe1198814d4a360cd9a5583c222699fd1edabaf62a3378c35271b895e74cf6daffc59bd7ab588002a44542000905bf768bfbc7fbab3797e905944159268cf676089f5afa9076b6a6add684d034cae5a333e3e3e3e3eee851f224e4e4e02c0adb7de7af8e1878f8c8c1c72c8218d46e337d7a16585981004f1b13726b617bde9cc8f7eec964ebf5081b1d6b6dbedcd9b37fb72e82a985c31a26af6bbc99610040d121a3cfed5afbcebee2ff5b24c19dd1a1b0d4d106823e244730eb9d3c24a582f9600ad5bb7ce27122222b263661dd5bab95cf8d11bcebefcaa6baebbd959a282c82e56e4e35271514e5117e24f7df16f4bd33051cdd799f99fbe07bdef388288cd66b32aa4a47d6dbfbd7b581977724800a49d2d8ca8002607f9e6a9d91fffec977170447f616631ab65b77d647c83945d3f015138208a8270f3b6d9c2967164a2285abb76eddcf44c9ee740c0cc5aa9a2b051a46acd96af2692a56c62442c596666161e99ee4c6dded68ca28bcf7b57a8043117000042c4f1f171df51a293da8fdcfaf947bb0ca422ca10a32a4907978a3f2a556af701edfd87154aec25af3d3303426cf485af7ddd05577fe22fae7cff486042c950c491202814206021aca4854f0b6f341abbf43303a0882542919838cd8abc141124654ca026d6ae16c7689796091011c528112111459067d9a01434d1b6f6e03377fdd5831b377df882b327466a4d83a4c0810029b46c0847ea35c075330b9d0f7de2d33383829446421c2a91f78bee6d261f95039fd704a2c82c32125c6999ef1e601fec09ae9c5c82d06806579f7ec6651fbcfcacb3de74f0aa66ac9900451ca03fbd695123f451add5ab57fb6eb2bb1a9a001c824f494e92c4733902161283048a6c2802c0828c08842acb7518e54e7a99f4536ab7bbb77efa13799e9ffd8eb3269a49330a8dd2408b4512e41c2038a041e96607f6fdd75eb7ad07960508880828a8a2435e8af88aca20083c5ff24d12c017811e582400c0fe77786f684c9af1c527bdf1bc0fdff06717bfedf05a941822eff6035a8a8462a3d168b55a7b5fb4eaa360c882e20034b008080944804e98052c4be95c9739eb75e63abd0fffe5f5a4cc61871e74c105e791cb6371352da48d20125840165ecc839a4ff387a77b177de8dab941192735652200d03e297d097c80da3917c7b131a6d3e978e177a01abced14f6171398668509468cfe8bb79ef3be2baf3ff5b4e37feff187079c8b73a495cf2a6bb55af57a7d2fcb1116a7a5751445bdb24c72a70a71ae44df26c52900284b5b3af78d6f7df3073f7f301df45af5f8e277bd3d346ab49944a6d4a141880491974219a4cdc2602080d3f3bd6ffdeb0fefbce76b854aa8d6602809409b5f6bae06430d559efef4a78761982489c741a58cece7a2edfc95f7f37e8b262c713e84228597bfe2848f7ce6ee4bcf3b775d0c6349cc56a2463c3939e9cdd415f9a69452dbb66dfbc087ae692631019a4089886328b4b2aea885c1e31f7fd4f3fef8b9cf7bfe0b81ed78338935103b51a401059d20392404201604e865a553c9b66e7ef6fb3eaca25a417501d0e00015a99d7450f1b2bad3e91c7ffcf1be5e98963a211dc0630e96c17ed38440e664a697bef7b3b71556539c5c72edc73f72c13923a80e39781d98258f1a8baf2a587cdb457fd94e823b2820fedc33e477bffb3d491818ad99ad31c666793d0a51240c28200c8d2ecbb4d91c2d9c0521d26129e8c029b1c205018860c9d419649bb6cd7df023376e9c694f3ee6a85e3f152a10ac0687a6a6946257567a979f43c59abc7e3c9c6ea2f58a8f62d94bd85f4c88719bbbee1d9fbc2d8e026de202d04170d50db75f7efe3bb72ccc8d8f361542480183a0325c1d68b49414bb0c133e9b5500d36c30d6684cd6c389d688577a110521593ac4c27f838951d65a2414b08e4513307309e8c0a479c6cc5b17d2775d7a4d7b50e82891646c7e7e160040849442651481d1f4f0a6ade3e3e3be430b2cf517f1ec3449129fcee45d380c64852d0a00222880fded87390cfb88892a983c9df3559fbedd2280360ca251290a667af9db2fbc2c527ccb47af6884a6969840690460c1401c00b0ec2c6112407ca21bb022260544a0941011089378ad45313a1225c4c884c02cb2e8f512294b5b307633dbcfdd439bb67ee2539fdfb6d0ee6465e1a4192b1319708badc23dfff11ec9e137f2d61c11f57abd9b6fbe390cc376bb3d3cc37d8bc7ec0dec97579c996706bc853969b6943852042cc0c44192825ec87a6f78d79f1f7ef0baf3cf796b43bbd5cd388974ee402190300308e81dd2615144904410e6dbfd3ccffb835ea095423440005c80101143090e442405ed989d40a737b0ecb64c777efa8b07bef0d5bfe917dc1e6459a99bb16a46510f8584424246edd1e073ddadb5699a2eee77661189e358448aa2d8b061c3dab56bbd90a804c9b2ce7807964bed2f779aeb7479a46e9c524b95613a300e69aed3ad27d17cae7eb271eef43fbb6422946b2ebba815473a0e9ba10904109151d40e3b0c811de37c27dddacecebdf40ae2f2252f7cc1131e7f746c346a658200008c31599695655942b46d76e6a69b6fa120eef5fbed9cfb835405e1202d01a9119af50dbae8cfde71d1d537a2090cb225054b5d147c7dffa38f3e1a86a1b7d27d57166f3a5c77dd75de5359c9361181df8093a382fde54e06c1a1c40c1a25430c0d214abfd3ae472109b32d9c0d99d4c69e3df53d573722fd676f7bfda1abc6368cb5e23004ad87990300788bc93a69e76e3ee3fba70771627e79c7bd845f0b7ce13401a258cb4440a4c5baac2c419b341ff831a2304ed3540144060f3d64f49a0bde827986644169816258f07ac7b0af6f5c74af5aeb67f2e52f7f19008c3155c727effc70f2dbc49d1841100207226095ae9940cdf6ca71a3058c20032a80b2c84c920052588bc0276607da89cc177cf1476eab477ad5487cd13bdfda8a8256a222ad14ba204a008da006c80b27fff2fd9f14a543a06ce0a5e292f5fb6b7329091400812d170b0004d394b5d6e311dd70cd656b27a3f1249c5b48ebb56000a513138671805058db4f07b5b076cc31c77cfbdbdf6e341a49924c4d4d8d8d8d5d71c515471c71846f5beb03f52222e20058c41934b2943f422b2cdeda23ac18132404c2c0ec480dc4d9308ee290c1f74047a516bbc62cf3562e05c294a0c9987eb9a57dce073e32128727bee8b97f74ccd3271ab16636aa280105685096fff8ad7f12118dccb2f8c602be58fcd7b6a42023f8f350810898a816d06327eb575d74fe21ab2724602d2ec28018496b634210b1a4481bdb1fd4c79373cf3df78c33ceb8e8a28b56ad5a75cd35d7ac59b3c6c7b2bc57dc095b10225242219ba054253a12406047e890f63f3a340cfb703a0e030a2ad5b6bcc5f1e5377fca2535571442ac6131fa48437dac16eff2424f84d85acbcae87e610b079ffcd2d76effd2dfbcecf9cf7ed50bfea86664754b392e944882e595ef3df763377d7aebdc429a97d601e81044b438c743baa30e98191c1301a26c18a95d7ec1b9476d688e44210522284a1011392fb76cfc95387000938f39f4e8c71d7dcd1557ae5a3f3932323a3e3e7ed75d7755ce701f955a74e3972e0c8c05290dcd95699907193ba708d02816586191ef1e619fe2d8843d27d3ac2ebdf953b61e298a504a21df3dd16a4d5553b16167b5bf1dc911020b222021a696b72c74eefa9b6fddf3b5af9ff8ca979cf0fc3f340afa7911297ed2c163d75d7951bb577ce42f6f7ce0d1adb940b7970280460059cc2b15612237d64cd68c364f3ff594df3b7872f568d3b9d4845ac811238888a63851e79d799aeea57fffdd7f3fefa3d74e4eac5f333a9e9123c020087cbf85c5e90ded1e0270cea5693a33b3cd15bd992d737ff777f76dfed52f6a2f780e8a30d28165502bce5046100b325fc8bb3e7eab3df4b0f6c24c506884128c033128a414b6db6d1facaecaa72b41b718b8062261438625cb4b299c8db48a0d8d6b78ef85efdeb66deab0430f3a7c75c30e3a4e68be932fa46ecbd4dccdb7df319f3322fa4e4d411044461e7bf8c16f7add4993359a1c69c635284aa8d75add7657390680828ba9a2f8d417fefa71cd89f526da88f8fbaf7ed5c11b1e37d61cdd9677ea2af02a130e25456c5796804a765b363e74ea0927e4d3d367bde1f5f5586bb607a10b35a44a1fd81368f74013c4e4909c964890581c8a06879636829a8e83c6b6999000950320710820805c148bea79a5b6c350e46ee92c196f4dbb6e7ba0948a8c41c4ccca162767bfefea30808f5c7e21678366d2b080f5a4b6dec191eb5acf7cd2455901659903a320073a34c60541608c0ab406149bb3cd6d8fdb79592aa5a6a7a7074effe8a16df77df3dfef437df0aaf13f39f69847fef39787ac3d3ccfd30605fe4c156b0da2202a2487420010a880888c483717d72b8f3beaf0e7bdf2f9a175469814111937540b7aa0604f980067d8814502b1048542742a6777d5c76eb146a754f833ae7129556b31a230140baaba2d2ce3545e85f7cddf2bd3c9b108532fcd2eb9e2aaeb2e39cf983008020641c2c0a800a02920922c9d988d8a0a1012c1bc7022d2069517d09d6f777b83871fddf4993bee5e480b0e9b45d074ce7df7e70fac7fdc13be3bf77f8e7ac61f45856465ae8459248e06804888e2038e84411817ce0a9448fa9fbffbeda31e77444d93110bfa401e25b8324ca4864b035a8c2aa4604e91fb84298322088da1a5f67255acd1376d554bd5f3c36651f519979ab3f77abd2a70b4e828248d4861106018fef9476ffcd8fbde65683136e61dec8e591899d98138c78585dc16a575bdac6c777a377df68e7637cd9debf40a32c63a4e4b609b2bad6b49d21c9fb8f71fbf411a7ff4bffeb915c5bd4117c90d5b0c86152812522a30481a35c6497df3fdbfbcfcac37865a9140297b6e1ef11bc10422b6209ae9da39450f4ecfdf78f797b486d00220d8301056a0b677f6f47b7c30185467a954935eaa865b4498d7af7c4bf7e130bdbf098045f4422feb6ceb3f3cdb69c4a18814b65464dabdae09e2d2d92c2deefad25f4d4d6f1b70d8edf62da07590651968a5b5060a4a30ec9406088c1fb0e0dc06480ae17f3cf7b8274e8cad8a8c151b832285c2b078a0ab220661c1dc960c12ea28b360fee8d816582e4b0b6a6f0b34f6097627b14564a180079dbbf64b5f8d46578903cba53007011505cf2f746a89d63af06840c46ddbb6d56ab54a855db67d16f79d314494a669afd74b92c5ae60b40400a0012930693e902c6b462111006118c69d5e974010c584516101155916464d80699ad6ebf5ad5bb726b5c520b9d28852a9ce3ee64c5a07045c4e6dfdf03967ac361a8941a9ead00b003002799eabc5880559290b2701e9443900b268f6536d5d99c456c2e5628c536c693e74dfdf3ebcd08d474601402bd42a7020486202989c185b589811415f0295e7b9dfe03ef4b8cc2b30dc131a007c5be46184555a3c19e39c632ba4a3a95e1a044110049d32470c018050b2c24b1d0051808e65d12dd16834fae9208962a5f4702f69f61d974018043028036d19509c556162ad11a2d217cb93552e3601e3628183411d2a0000117207da7ad81176f4a2300010631044f316ee9f9e6b8c4e68528422c840a20850402b540ac7c626b4d6dd6eb72ccb8585852adba592c015e825f0cf88e378c78cff456148e813204d1878f4540c10d1b79b0744244042a1a58738e7c230f408f04dc896e5e9222200972e2f9d455744cc61e9727039496aa01b4037e492d0a1ff470ea95068091d28870645a11c8053dd7703cb47f7c7ba040ed8e156ebeaa3635e191d5eb56165298ee3388e3b9d4ea58f0ff700dd95a631cc132af0d2626161c1393732325205932b756b8fd27278f57db3ad6a64bf0f4889519403cdb3d51818514882a0942fb75952b10998973ab21130eef7a9817b033be0d9c770508ab27c70d32654ba12a7bc747c89efaa30ecd8f0c7cf79e2f08e33bde467dda9b4288ac2773d1cfed25b1eceb924492a5dcb279cd3503ff09dbe4685aa65911f584a99f1f3cc3a5956d08537dc3e9ac0cbffc7ab274333de68866225cf236d465a912d4a243140e29cb22e89e2d415a09c65108400f7e5b095bd84e598402121b0c40e65c3e824ca4f00b6fbf4f33c5fd6f67658371d1b1bcbb2acdbed567515b043918bd794aa75af946018d26e9749fbea9be1672d9f3622220641e0c5d5f0f76afbb96dce4a3136b9c64ad621d738e289dffbc58f7ffc9daf739a65fd5e14e81165a6b76c3de3b453c71b094a503324833cd21488848a163b82fde6b45881c59a516fba3b2f3f1150ca7a62b25ebfde1ac5a1c2dbd9d9d9388e9bcde6707a6bb552711c4751d4ed76d334f5cdc3ab0baa8bf33caf8e8e1a4e95c025ef5bb5ef7c64dfc7127654c686c1ffb55eafcfcece565f0ee7f538e7482346d0cfbab591ba52ea778efe9da73fe519c589657f30b8f6231fbee2431f6cb6c6c43a10f98f7ffbd7db3e7d2b14657f61b6985b78dbc9af1f2195188a356b4d4613f9c446508b870621f00acf38d8192690917dcc1e00b964677301000e828540fb0c9f8a231963c6c7c7f33c9f9e9e1e1f1f1fb6a571a833b4c7d3c2c2c26030a8d7eb7e84ea549b6eb75b3539ad28c63fa2dfef7bb2b0d62aa51a8d46b7dbf57453f1a89da2c15f8f88cd66d313a5d70e86af1707b5a0b1b0b0304a230818d48c891439282cd66bf1c11b0e8aa2280802adf521871cf4e257bc424adb6d770a5bbaacf8d3b79fdd9d9bb6b67de649278db16c886297f69d2b29368c40828ab72b57fb1656d524641503000a901305bc00f4e3d9ce27efb9cfd59ac9c8182c953ef81b7cf7f6300ca7a6a6c6c7c7979d4b2a4b09fa88d86ab598b9dbede6795ef5eb9e9b9b8be3b85ac16aa7fb413c255524e82d704f1332742c142eb57a1f4686a71e7f20020c694d301461f4b49865d955575d154591736e7676f6861b6e78fffbdf4f44c6184fc7fea5d8bab85603803ccfeffcebbfeaa683395714b3f317bcfd6de5e6a9779c714a4b068a14960e8918643ff99626c15c010ad775e4847e3e3bf7e1bbeed9a2a391756b8dc2aad556c5c4fd0e65e6f1f1f16eb7eb338efdec97b151bf2b5bad963f5c607676b6526487e5aa73ce574ef67a3d5fdfe097cc0f5596659ee7de64f1ec0b86ca32861f5751c6b007c5ffa94261afd7ab240a330f06835b6eb9e5b2cb2e3be8a083a228aa02da8b59a34619a300408586016aadd1830a4cc7f22ffedd7d9dbc7fc2ab5f593cfce87b4f79e31a24a68cea8036f0b32259b4d95786091f0d0b1c21863f9a9dbee4ae7beaab37349843612cc52e9de2e44f6ba838af67059e53cdcdcd8d8f8f2feb9a874b35136a095aad565996bd5e2f4d537f404eb546fd7edff72cf6df5746495114c32dbe6189f57b2eb76379800c9dd958093600f07e465f67b666cd9acb2ebb2c4992c16070edb5d75e72c925ebd7af4f92c453431553a9c62406854afcf18a4a023601ebc946eb7bdff8cecc42f791e947cf3aedf58745e1692ffc93440646ef437bd245c0fbde7c52ae282ea153c807efb967a3d202ba1127aa2ca6fb4561737fdeb09febb05ba2eace2922f3f3f3a3a3a3c3559b153efcbb555aaf57edcbb2f42705fac5aafa780fe9398b4ca92ad3ab9e3bbce8c358872505afdd6e7bf6524d264dd3b22c2727274746463ef4a10fd56ab5c160e00d97638e392649127fe4e3b0a88325d3ca1b93be0d849f8675028a944214d74f732e61d3830f9ef08a975d7ad28b56474942bbb27b24ef0f76e3edf0ddbd34026c76dd9f2ff48dae8561580a675a374692b1b1d6f8f8f8e8e8a817a7be7d5cbfdff7475ef93737c6b45aade9e96918f26a54eb054b9c6df87314456363631b366cd8b0614365780fabaad53136fea02fdca1407a5887ae8efa93a583d73ca71a0c06febc95b1b1317f6ecb95575ed9f8bfcd5d6b6c13d9153ef7ce8ced893d7662c74e4c4222444b9bb254a5e51701b685a552b5c0966a2b1ab6481b2d2b54ba3fb6201e6a550448bca2564a79065611152285eeb250d1e54ffaa04ba9905a55ea9fa5954a1705ad143b715e769cb1e7716f7f9ccc65622726c98496f32b0ffbcebdf7cc3d8fef9c7b8ea6198631323272e1c285356bd60483413c7662fb9e4a4ea7b203f61b158f9328489c8165134e35b52a14f4372d6dfef86f7fbd74f7ef7d062980aceb3ac80a239c11ce8032a018b9a97c2664e09473db0096a7c424c009d0a9560dee0ee63a20c0a7eb7a26930100ec244e08c11e41a9542a9148c0748972eef717552b38be456d6d6d7f7f3f26219440e88cb142a18006825b6e5057df1de4018a32eeaacaab691a5a6bf8c48d1b376edebc99529acfe7d3e9f4d5ab574f9f3e1d0804f0349473b7f2ae21a139a7280a666c7ef8fead57dbbe0d03a91fbdbaa996e68301897061d93ebbf0968cd7134cceff9d1a8e36d453f67442ee350bddc0184384833196cfe7474747a3d1281a2df1787c707070f2f2e154069490f0fb5007600f4d34660cc3c0d4a3aaaa2a54e600800d53c5b0e284212f45931be28449b8d3c413d35b4f9e3c89e6a9aeeba954aabbbbfbe2c58b9aa6e18b5532cfd97bd1c83371e10542e1dfdceefdf84fbf3ff2ceae63ed6fc82693804bdc9665793600a20c94003718f7ddfedd5f587dad447d255b267850a2334dd3443b756c6c8c731e8bc564590e87c3a3a3a3881a5570c4dcaba594c6e3f1969696ad5bb7168bc5b367cf32c686878751eea191234040775163c10c3e1584e7ce7d326c66b77fff7e047453a9542e97ebe9e9397dfa34a624d3b21c947910737a7de7991dab8e7cfd958deccc99233f78e7c76fbe11f6d3a0446400c2d9334d29a9ed6b5fe5601836bdf38f4f242d2c0121ae06166e15ed9e31da51b8925028140c06c587d10a72fb0ae554a28139e7636363ebd7af4f2693ab56ad7af0e081aeeb28f484752f12f7d049244e08d66d2c89f1755d5755f5c489139b366dc234e44c26d3ddddddd7d7d7d9d9198bc5f00089ef7a618638825584e860fa25fef9fa66a6d57c74f3fd97967daecae7a3840361048855b913c8db6bd710bf9dd3f5de4ffec5d5a04c25ee9a9998a81b9a16bf42d9b9a694fa7cbea1a121e4cd4c8b748b119478434343e9747ae5ca958140a0b5b575eddab5c80ff424c0816fddb680e034a67a20f268184630183c7efcf8b66ddb107a191b1b334db3ababebd0a1436d6d6d91480413f4c5d73d9e09311f4e88426559f29904bef0a52f5efae046b4ba76697da2c80a00d4cfa9611a956a9e99d678c166435535bac93522cdd51f2959068685c3e1707f7f7f32999ce9638250d04b92148fc743a1d0f8f8b8a6698897ecdfbf3f12891c3972a45028e0083e9f0f37ddadbdd10bc9e572914864c78e1d4b962cf1f97c9aa6018065595832a4a7a7a7a3a3a3b1b1112f57cf6d85b326e674ded4344d55d53bb7ef7c7febe6e6fa9a2421014aac67c152e4c6dbaf15a49ab7ba7e198dd505aa9422b709a7e56762960b4027c3b66d2cb51d0a8566fababb5c80a2289d9d9d353535070f1e6c6e6edeb061432010c0c628b95c2e180ca6d3e9aeaeae6c368ba6b3384c3e9f2f9148ecdcb9133d649fcf170e87b1cc06f6b3bd7cf9b26559972e5daaafaf1751c5cafdf83c12be2e8c3155f23f493dd9f28dd69f6c7dbd5ea5a0d876b650a936e6cfdabe79eed7bd994834a20629588c4e71cdca31beca24cc50d334b3d9ac48f515afb08060913d882adab67df9f2e565cb96a552a9c78f1f1f3b766cf7eedd680e241209f409d0b7c033212afda3452452f045f7c1542a75f7eedd274f9e1c3870a08113f1640000056949444154a5a505db19ce7209de69128900962d168df1894d2b961ffde15b51951606872bc5b1ff991ae9f70562aa0644e74c2e014c662adf3413894ffafdfe68349a4ea71389841b8fa2aedef09c738cf7ddba752b1a8d524aebeaea24493a77eedcdebd7b73b9dc9e3d7b1e3d7a944824504b2320812c9904e99c9ba008dfe6f3f942a1d0dddd6d59d6d1a3471389045e7b154522666fa17a21dc340bcc44b8e6b39c59bdfca5befc845c604ae562f1219986127514080023649afbc6d32ae7671277fabea2c381f244b85aa669a2516418c6952b57162d5a844822ee2cca96e1e1e1c3870f8f8e8e2a8ad2dede8e90351ab2e867a03f85ad36b17de9eddbb7f3f9fcf9f3e75555756be6b96fa657a2743293cdb4a0ffb3beb66fbdf2eeb6ef3691a269e4fd45ca0831259b4ef5f5483c1e1745e4a69df4bc3981db343c3c8c9014c2dde0e8ded1d1d1bababa8e8e8ea6a6a6643289dd49c1e50de0bd928181814c2673e3c68d870f1f62c490739e4c26354d1b1c1c9c989828168ba8cc0e1f3edcdcdc8c2505dc7985f3dd4c4f44b09e85444d0e6099e9c79fbef99dd7deddbc212981ad339b0223a5b73d653413b9ab22dc02ce465194783c9ec96462b198fb11a8d2474646e2f178496b3ce1dbe389696c6c5cbc78f18a152bb2d92c42498045d829658c2177fd7e3f621bb66d070201fcaf7b1aff1ba1e426c618e754a2841026fb7da144dc0c558d2b7e39af1b142c0a0a8392fc66d2d0d020665c3ee25c6d273789f5a32cc24a4de25f08ed5dbb76ada9a949c48e661ac159db94d25de07274e63dc9e74994104224a094160a854f1ffde77b2faf3edbf63a0d280cb81f9805538c23b9c2ecbdfb3e6e4f183587602dda3ca87b45e463daaf8313e770ff203ec0a706855e1ce240396712630478400ed4d536a8b5c91155a9664c266095c5319e7acee5637917b5d4c95972eb00248cc262adc0670a46f18192a90a4fdb0dc5bf2044265175ce39a71ca2d5d5576e7c38684fc68019295df2537859fc49206b9ea74298ab08a0fb84e16940bba83cbe544e25bb4c5ce4fe8bc709cf44155ed64ac46d028c716233b029e3b21dae4b7e70e7cf138c73852865198552381c2e7f307515585b90154ea6e039d79bb11c43341addbe7d7b757535427bde9fb2e0e48e8280b7ad2012954d3664e7f385f13a9392b2778f343636967f8d7a2b75479ccc25ea64ea83f366211684370c7b7a7a92c924c688e6f7a0e74df8d28c8c8c80537ed3cb5459be9057cc97577cf9a71b3726aa2411ac449aae8eb917ce3b221b118892f20a98991089446459be70e1424d4d0d06e35e584e00806559d96c7660602097cb791987700868413079d3d2e5c3aabffc4c4c13e6f4721ad0694028c26d5c8aa89f6559ededed376fde5cba74696d6d2d714a3fcdef71cf95b893298201da4824e271c0a26da98afaf33367aefef623ddb039e74008963c06606579b1ded403e7dc2dd91026423450d3b453a74eb5b4b4887c35cbb2fe2f6ed72c8938699cf7eedd6b6d6df5381aa3008c29fe80bf5aa56a2863f8c301c9e486043e8981259b53cec4fc808d1272c77330ae27cbf2f5ebd7efdfbfbf6edd3a779060c1bdfa8525e148f6f6f6829348e781185022311a0b462f5eb976fd8f7fc89b459900059b1300a053462f0908cf834a94b36ddbe3e3e3efbdf75e53531356e871631eb33f0d738af2cf63da150871463cc1de4acf51461870db2ffb6b1635f4739ea592ca6d0acc264462d325117921c1489cbd61185bb66c696e6ec60a3d0b2e88ca9da10524219d3021c1eb681c24462dca82aa521550bfb27af5885c55b4803b296ea537853c3e4fc83784892449dab56b971be498d368336db4302bdc090fcf894cd3d475dd7d356d7e4438481c6cca0ae6444895f6eddbf78bee5f4d58040038e11287ff020fadfa539f5899c30000000049454e44ae426082, 'Yes');
INSERT INTO `employees` (`id`, `Last_name`, `First_name`, `MI`, `Suffix`, `Sex`, `Birthday`, `Age`, `Contact_Number`, `Status`, `Nationality`, `Address`, `Work_Status`, `Current_Site`, `Date_Hired`, `Job_Position`, `Image`, `Designated`) VALUES
(2, 'Bellon', 'Ran ', 'C', 'N/A', 'Male', '1999,1,1', 22, '9467567567', 'Single', 'Filipino', 'Salinas 1', 'Active', 'None', '2021,6,13', 'General Manager', 0x89504e470d0a1a0a0000000d494844520000008300000083080200000021ff3f31000000097048597300000ec400000ec401952b0e1b0000200049444154789cedbd799c5d55952ffe5d7bef33dea9aa52a9cc6404421813c3a00c51940602044104956e876ea7e689d8ca53faa9ede3a37ed0d793bcd72afdeb6e15445b0405c320d0c818c23c0f2184cc63a5e63b9d69efbd7e7f9c5b952220092d902ae5fbc92775eeb9e7deb3ee5e67edbde64d376f9d81b7310620f635016fa385b7393156f03627c60adee6c458c1db9c182b789b1363056f7362ace06d4e8c15bccd89b102b587f739000068108352c0802c58000408588f6c0100280325806566009026bf92accc992d18002ce1e5c702ac401ad0901ab0060cf6c00a3600242863b2c400b8454febee40eb21b2807de346635f624f9c00c002f4cab36278443488010d5890250800cc0a948f9ec847cc8efa865dc73947f38b5b039a8fb805590640166026507e9aecaeff5bd7fe91b0017be60425bbd8c00a50adf16502042883ea8148f277190eac0708b0642b406c895a0397b36db76302594b4460878c4f44600d328066590559b20af9ed297f20ec68568105d8191191f18e3d724203f9d8895d0c18014b4600ab765dd9e28ac8d9c7d47a9a41f9a7ece86302934c5b73147c6609cee911603b3cad713e13da9614e6df00302cc41f091300ecc5ec6480d62f07cbe1931664763d98b608566007106c539021910aa9891856bdb65220a9c0cc00315b0b23c85ab2008815d80a801860c52444ebeea2351f51be42983f9a096a8f9ca051ab2583699807e9f0f95c5c68785272019069870e053bb0b918fd5e48e930524309d32051423212f942c24a301165c377b68c1171cc5717091810ffc97082472e108006c1d8046046420204a1b3ace0150606aa957092ce445a2b6ddd5cfbd9bf3df4f8fdc8aaf924f3fb4180822aa050c6314b82c317cd3cead839536716b4891acd41296566fbc282aad6faa4a442251c1aea77dc7c1d72815c44fe48d80080f614291a995b6c3e21b8ae03c0d88c992d274aa5a19ca693364f2f7aeaf1cd575c7e73f776ec580b82c389221841968888a8a5e08e028bcc10e040106c0a72316d364e3b6bfefc43271dbca820543333fd71d2983029b09cf40c6e2a970bda1a40587600095662f7af1cc7d823277299d0c3f3325ca7680d19ed5a236054c10d93a16977deb6eaefffee698ee13a659365c6440430e3cf4e3e3167830031733e51e58b3813c0e2fefb1f6a36622144a61390950e8c6d4d751d13b1f4dc19871c31f95def3e20353b635e6b654d793193b5b94cb023ec5e68e1e3047b2713a487e701c1c6b7c6615d9222706902c7c5eb7efaf8bffdcb7332734ce4020498c0cf2eb8e0aff79f33ef831f390f22970800d88d1364e57fdd7acf9a356bd6ad5f7bedaf7e1ec50d80b30c424aab0920f859650afee1ff9e356f4147c33ee5f80d237b98ac850224b32b5f7bf61b57a09bb74d067b1602a4057659b0200b76919b5514034cd6830d859969e3f0856707d6bdb4fdf187363cff683cb80d20051302f4e31fffdfc30f9bbf70d1a1604fc72c7c998ffe281d76d7b18025d8b419b96121bfefea175efcfef77ff8d4534fdcbbe23e00d20d2c69e684427ce9eb0bdffd67078be27a883acb46cb3ca44cec32307385db6d7dfd68db653c806eecae4077301c50429448e16699012cc3f8cea42cd3495a0f03dd6cd4cade5c17536fb87adbe635e9af7eba0a9cabb620025b4c9f3afbfcf3cfffce77bfd9f240e44b3db514ac9679f1f263025ece1da469eabaeee0e0e0e5975f7edb6db73df4c803d642906f2d54319ebbc0fd8feb3eb5b5efd109d3aacd7408640529362133a5495fdb0495c609db36b004651011761928e300b4bcbb03a60476004514590c2ae541770a96a9ddea3ab6187655774c7130eb6b9fbff6f1079bba06304a05a75ecf000481df6cc69ff9cc67aeb8e28ac1c1c1b6b6b63f90206b2d334b2901540787aebdf6da4f7dfa330c0b0155802a62f681f8d7abff7c6bcfd395894332306922d90a4f39713aa0940407600932a014184f32213ffca50e10728d92c02c1a9ee7d506499227bd2187bc6aaf08f8989ffeeb83b7fce7361ba94ab98d6d1cc7462af81e9a91fece77be73f1c5178761e8fbfe1f484d92248ee310511445524acf09162e5cd437b0a57f707bff40dd66d0317ab761c9fb0e9e37675e94744326828c122a4d8cebfa9c3bb25a76bddc65098d07d0f22d0741d6014dac00e12a5babd53a2a53a2a6761caf181ffbec233d9ffef35f77754cd8b903003a277ae79f7fd6257ffba5eddb7ab66feb5dba746996658ee3bc5104596b0108218c31524800b5e6ce52c1ffc1bffefb8f7ff4f3471f7e1ed0703228dcf7d417b8b07a307b16a45d2fd0a94344101148835db21e8b04d06f14616f3668f9e6c3490e82225026ac1fba9dfd033de532d7ab6642b8e4bb5f78ecce5b37588d2486e71498f9daebae39e9a49394528e92006af546a9540090655996656118fe21d4586b85c8bdb94c44691abbae1b45511004c6d0a68d5be7cf9f6fad31888b251c7fd2b48f5d744cc7cc4d03f5cd6d1314db62aaada00864c9bae0f1c6891bb71c04518788a468920d3829b9ae2b057b62bfaffcd5b30fdcd464cb958aadd69a3bfb36968b13250500865d0f11e0ec956bfdbf8906007001b9135660a8d67df79db77fe0ec8f16c3f6d49ac854ef7afe73313da7da9e27c78d1a16b9338485b09e11d93832c20528dba5ffb190ca56ab433bb752cfe6c2c3f7776b4b81eb0f0d353ff5a90f150a857cea00301c51780b7ea718ad72552ae533ce387dee9c99f5663d8e0532ef37bf7cb8bd304f67224e6aa00c9493680143e369998000454456908bac9d4c28e008d3116d3df693672f4ffa1550ef9a5ed49cfee08aab4ca61cd785d490c3da3a82375320001480000290800404d294e244ad5ebbee57375cc388143a2ffff6c3975f76a7c8e6480a59e856541100a5bb624ae301021064156b10914021b4efea5d77f0c7dfffe3eaf64a50a07fffd10f5f5cbb3e4925c3f1c38a058004885a96d95ba423664002640cebb87e50280d566ba79d79fa19ef7fb7c6768ef18b1fad35b545cd6a05360069c00082c68f259143105c6b0433836222b1e63973e9df5e17861d49524be2ecbc8f7ca89944d211498666cc0c87f3e71462971dfb264203b9635c30641e9ca8359352b99259fd852f7d61e6ec7600acf1d0fd1b60ca6017e0e158f75bf6a0bc31a05b764e89eab1e7842a99e9c4479cf6ce1fc40d0000a35eef0bc3f2c8fc43a34d646037f3f8cdc1684e0b0c5be6c3f37ff6e29aa70f3974b1cee094f1bb273fbfadfa0be9a76d95ce38a92a59b4e32a8ea4d22c5652846ed1c3fe0fdcd31b3710f88e54d909c79de2ba018d1ee8dd433e6fc113b7fb2de86584d0b469fbe90c6158680e45d190d3d5b95fa477b00600221e57861d84273a1ce55707e8c7df7ffa2b5ff825092469f6d54bfee9a6e5bf355a8eed8428e1b9c5b3cf3aa3596f08c7f9a7cb7e6c1b737ca79ce918ecf2b8120800822008bea7265d7fcd13a609e50084cf7fee6fac867dcdc0e718807094f7894ffc6557571733df7547ff232bb7e8948858086797c23d4e2024b2923cf4f94764df06270c3b1d854b2ffd9f6180284210bc613e8c370de2f4d3962d5fbe9c4d963570f93757ba3449b02f104849e34c8bd5264aeaa53b6e7916f0a37a63c99263bf70d117e304c5128cd9d7d4ed09cc00c4e1871feebb1e27e8de045f76b2f1891c29e5389b9dac497e75d5ea3b6fdc098e18d195fff1cb62d8e5061602a07dcf8a91e8f729a79c42444b962c59bb76edaef3046be138dec927fd9984cf9977cfed5bdac3c394f4ccd87f8e5e0e41a6f4f08a55491d1006848913a7820528631a2b895df57a3dcbb2175e78a1582cbef0c20baeeb0288e318006005812d9d77de79d61a49deddb73f9736cb69aaa574c6b6bab13b68c5c60fbe6fe1b5f10008f2fcf3cffce94faf6523485a86b510720cfc18adb552aa56abdd7df7ddc562f13def794f7ebed9ac2b4fb822341a52e8c0f7134dece8bff8ebf9677f4e7ac588918c23e34e796296b50041c03be1f8138d4ea5f48d162c32dad742d16c36c3304cd35429e5baee19679c01204d5366164204610864590a4701249444a6b53178fa894de7070b325317728f771843101b57856904d747216c3b68fe11cc1664d9420a2f89b27d4b9c520a401886c618cff3b22cb3d6baae4b448ee318ad01384e2b29fdc3e79fab1460fde79e6afa6202ccb891861c42e836183812471f73f83b8f7d97902e00e58260bff5cd6ffee4273f6166adf74dbc255f1200e4616dc771f238527e5e2997e0580b66b0c121872d4a0d40b18e91353a1de1d3b8cac15177fdd70360341a98b7ff2c638ceb2a6b75bd31e828efb2cb2e036cb1583ce79c73f2ab1b8d46a150d8b714ef06210c20d318279d74d29469eddbb60e4080d3b213860906f73575af03a2d1681001c0fefbef4f90711c0b21caa5721004a552a9bdbd3d1a0680b1c60666061100add342a1d8228fd1b3b3cf1a1e5fba930ac3a2143016279cf06ec72132ad09a1d96c56abad672a4f43ca75987d47ea2b6189acce32e5f861c19d5198b174e9d2ffb7f63fac31460b25c37dbccabd4e882c335a83b99554a19448d3144018b65266acb5f95b4463d10d2524000b023357caed563300adad196f3221c02d655567adf56d649d6c5d21449ec8942f9b630c560cebaa424aadad541e1844f21599e9631d6254209a809132c5f1825645e5ab8422c68f4d9763f8678cb727e8e578b5411f578e58bcc999196f368619c062d44b1ece001a670fd7e8b0fb3813e71658ec7e303e2152b296213c0245c3d394053286ca1faad1eee5111f759aa66f86db596bfdaab7cb91ab70cc9c6559ad568be3d8e655fb642132b6800dac8c21001b80c77e98eb651090101e59cdb54675f8645e00d1926f29659aa6238aac312677fe482993247963a9514ae5b9c9f95d76d39b8510434343b9d3e9e5a9e936cf7f6522505eb421c1727c49899830d1b72983f1b39ffdac516f251701c87f12802449f2c4e12ccb8c31524a2184b536cb32cff3de586ab4d64424a5ccef929f1c918c66b3b972e5caa38e3a2a67c6e85f31ac7a88d6034466dc4db6eae043e6900bd6b25aad4bf92ab6dbc870e763946559fee40a21f28cee37929a611b3ef7396aad7ddfafd7ebf9ad070606962e5d0a200cc366b3d9d3d333a173e2f04747568bfccf38539c0008bf34c419a089487abe02765ffaaebaeaaa65cb965d78e185030303f98c4144b91dfecac2de3f1cc61866ce5992db98f7dd77df25975cd2dede3e7dfaf462b108406b7dd451474d9c3871381b2e2f6041abf10403221a3e3f6ea00c0640909ebf69e396eddbb74f9d3a05402bd912b8fefadffcc33ffcc3ead5abadb52fbcf0c2fcf9f32fbcf0c2030e38209fcdf388cd1b48cd086bebf57a7f7fff5d77ddf5cc33cffcec673febeeee66e642a150afd73dcf5bb66cd9c5175facb516ea95667fbe8627e34e2cd4f4d950014c6cd7ad5bf7c4938f4c99bc8c0890ad59626060a0afaf2f97803beeb863c58a15575c7185d67ac992254b962cb9e8a28b8410a36beb4626fa91e3d7be3d11e5ab4ece5163ccb7bef5adbbeebaebc9279f6c341acc6cadf57d5f299565591cc7dff8c637962d5bb668d1a2fc230c6b2d31b394a2a76fdb0d37fc9ab5850f276830456fd698bd395085b23116000606061e7ae881a5a72c033092f0f8f18f7f7c7070f0dbdffe767f7f3f80388ef351bee79e7beebdf7deebafbfbeababebdc73cf9d3973e671c71d1786a152ca5a1bc7b1ebba7be9b88da288887cdf7ff1c517bff6b5af5d7ffdf5bb05a672ede0b8e38e7bdffbdef7b5af7d4d4a992b0e711cbbbe638c5152c671b276ed8bebd6bf947fa4634290a4ddd2194f6241ffb5fee8cf9ffbfcaa47a3b0e01d7feca2dfde742f61b88d1350ab56cbe5721e497ef2c92757ac5871d96597edd8b14308110441aefba7699a3fda5996e57ccacf974aa520085efbf6cd66b35eaf8fbcece8e8181a1a2a954a83838353a74efde217bfd8d6d676e699677676761a63b4d6b9677e44896058ca4b5d08a72d3bfeb7373fc820b8d98a0d4bebf15aeb34c7919dad98ea6ded252002d0d3d3bddbdbf90ae9ba2e332f5ab4e888238ee8eaeabae38e3baebefaea46a331fa4a6b6d1004232aafe779711cd76ab53d524044f9022084c8256f7070f0739ffbdcd9679fbd78f1e262b148444992789e27a5f43ccf5a9bcb84d65a2a610c4b4100eebd770548c062ca0c24694daa71153b0568f94b53affb7fb3affac1fdae4096c1244c002498f22c1bc471ecfb7efee347149bdcb6d8b265cb238f3c72f7dd773ffbecb3b9644451e4795eb55a5db366cd5e523077eedc42a120a524a2b973e75e71c515edededf8fde1903c6cd53ad6992b1d63f0bb3b6f3ffdcc93b304aa88fffdddd3179fba8965cdaa3c272aef36989767fbc32bb905658004bb801dae6f53c36fd9971f8f78aceda877c5a8ba053bbaa106588165abe3517edf91f3ad8bd3e13323ade08c723cf58ec587dcd4f5587f77ec39d8b2a177c6f44e486426163264607470622444e1388ee338f3e6cd9b376fde59679d95a6691cc7b91fc2f7fdfefefe5b6eb9254dd33d5607a7697aeaa9a74e99320580b5b6b3b333ef7af31a2ad9e8f08920a7d9e0b040ffebab5f1610aee77ce013c5e3978655d3745c0f884029d8033b100d0071ecb99ec36c48584b0d6142b2452f8036752148a70e60213428830d2c9956070d08b20e90379ed40c6be18085a00c9ca7d35ba20494728b0d01d82336a01494810c40601736000448e7f580cc1ea05a2f45837eb37eea14ffbc9ffc70e5bf7de7219de2d39fb8e88a7ffb5eca438ef213eb7842bc5ecb2dcf47f23ccf18b3471d377ff0472cc4119fca6b2b5d8d46c3711cd77519889bfa7f7df52bdfffe13f6903df736f79e20399f75c82fe72b9ad1eef040053860de06c071987a61a5bd726d55a0bf20502e59a241d721cc7189652825db0cc25c6926512c4423024e7d2602cc1906561014b2c84cdc7dd69b5a89083a00cb0164aea320088044cb0855671a988c0045b022ccb689837096455092152ac3b74d104a20210ad5c79efda352f4d9b5b063ce7f5d80a235d1e46a7c6ec31753e4dd3dcb7917fc3de58ecd6da3c73a0d1688485c217bf74d1d557ff24cb00e08003e77a9e8c4cac7c5babf7d1489091f2468f20a2346b1682909d0273a04d6a6c4404630c580d57d3e63d5f12c6c8c7adcd53849918022c81dce1662192bc9f21380004d8011990068385a656cf4807ec01b995a381fca50527ad8f00b09e10420ca50f1d71ac4cb306237c76f5139ffa1f1ff69d0220c52bcb887e3f8410bb8557f3a5fbb5911b1f3903f297af2d10699a0a21b66edd0ae0a5975ebaf0f3ffe3ca2b7f5c6f342b6de478d8d1bdc5702c952d961dcb91e582e18a159995d57c6a6ed623648c6452757b9ba9b70baf996aedf91d997649fa96034bd6cac8aaaa250d76c18a65c38a2603cc0e73c9da027300dd06dd015bb09056c456d6ad6c5832967d6bcb564f4136152c9834b3c3502c12964d169a3960f82c1216d170b71d0736800d9550324b4d3dd97cca791d77df5c454677ddfd686f8f0e43c70b20f72415b9553c327679e7086636c6ec8d3de1ba6eee76ddcb7e13aeebc6713c6ddab41b6eb8e1acb3ce727dcf64560a39346800f4f6d4b2d46a89bede8142a114c7058058a6643db20a64958c3c37fcded71fbde9171612373f7f68e0ba3ab102128841696b4ed79db03e418192bc7b83a5bc1540064a89b2bc4f8b600553b2a49986fd2bac08103010cd7c78e07403797f2607ec0db738ce0d260131dc34174218c346bb51d4b8e0e2a513a7ea346341ce5ffcf95f29e9ea6c97d39b995fd5cbb4db239c0f2811ed7d3e8e9472341b46221faf7abb344d7ddfbfecb2cb2ebae822a594353006fbed376bdedc9944301902bf22c871546834c2220f553742f426e976d7533056099945b4f1458b0c7e1964559a0c787e53a9aab13d10dbaded234e7d55c8926621441ad714799c399e1b689da659ac130b1d94838926cde2647be08beaa011b6c426945436a9ab44398dac231d1857274a92628389edfb453549d6333a2d04bee0a2a2b2e378d66aa658b9dad858809d7271927465a1ebc52b6ffc0be5c31af7d6db6fda7fce619ed72a06c9bd1db95ebf97e3fbdf469ef69a24496ecae52747d69b2bafbc72f6ecd9975e7a694f4f8f524a6766ddda0dab9e7f71fe81074b11809de79e79c9752a6c3d4240ac3bdada024c9b583930501d933a6714c34aa53475ed2ac07807cd07d028b861528fdaca9d3ecd54d1e113dc63959d9ee9dea9533c89a814142ade214acf811159dadfd651f38241d74db3a4a7bde44e6e9bc571d85e98a96882350989412fe88e9235c500a6997554c2b8d12c6051854ee8df124e9b38bf59ab076aa24826579cf9138b87939e4a5c74bc344a76164a42a589161c653a4e4d6d72fb44e1038d06586cd9bee99ebbef7ec7918b3db7902fc2b946f4a6b2614477da6545336759e6baeeead5ab57ad5a75f1c51757abd5dc55d5dedefec94f7d74f6eca9003a3a3a75a60151ab35952c401391e8efdb5a0aba9a3d331f7a7acd8eed9ba2385bbaf4e8f6b609cd1ac09832b5832c25cdd2d080eadd9676b6cf4e6aa59baebd71faec70fe617e9d9dbe1deaf1475f4893fe7abdfefe0f2d2e7ac5819e551d13cadd5bfa27b71fd0bd2d7ae89e754c6ea4317de6e4438f9c6ab25e52fd9e4b36f6bb37a5dd5b878aa5e9dbd616efbdf391b088f689ceb14b0e1dec8fd66fad3db4f2493ff48e3f6541fbc4f6341d2a570a8d7a1db7f71e74f3d699bfeb9f7b7bf78ce5eb26fd6ed5051ffcd4019020c095b8e1fa5f6ddab4294f5266e6dc2bf76623cbb25c15ae56abccbc7cf9f233cf3c73379e1d7ae8a1cca619d7d2346e36eb57fdf4478002bccb7fb9f881def7ddbe7dfe1ddd0b6e7c69fae7fe11700107d406048087634f9f0c0770f1ddab0fbf6bd3bbcfbb702a0a4011fb1d0e784007de7f01fef3fe25a77eac2442c08128c3ef027cf83370d7c6f396af9e77dfb6c5b317030120011f0821bbe0cec665d71c7bebe639f7f4ec7feac74105f8133067215086d3d1a2e1c39f5d880a50021c5009938ec4777fbde0c6cdd36edede71f3f64ec148a532d666ca91aeab327ae9735f3c138c20843138fbac73befef5af6bad73cbe00f6c1ab4f73291af1c42882bafbcf2031ff8c06f7ef31bc771f22a8a62b1f8bdef7d2fb71c7dcf711c19049ee3e416af6d341ac618904dd2e89995a55fff080050c0055f762efabb8900eebf6b0700f898341db5c1a1f52f6d930449d8b41613f7c3b127e2bc8f1cf3ef3fb8e7b7d7d4acc5810b71e125fb1db4082040a3af3b2915c3679f59b5fe697844a79e5df8bbcb164ed91f2641da8bc71f5acbd68d1b7ac38be026e2016c780917fecfae0ffe850f86a3fc5f5cfdc4bb4fc5855fe968ef14dc44f77a6c5a5f037b422866528919020b6810b49088e95155ecffd1cd675ef78bfb6ef9793f69ffca2b7f79e5953f9d3bebc06baef9cf771c7530300078d6944148b27ae085c0ef0ddebd72d51d71228d9cc9bd17b9ca4b443b76ec78f8e1872fbdf4d2d5ab576badf32e68aeeba6695a2e977ffef39f9f7cf2c9b9f5ee388e362042a61b41d9075972ecfd776e3a6ce14c551e28c8fdbffdf995d660def1f8c6ff39b9636a77564f38c9febfef0dc611c0a84c9db8e5919d1b9e82312144f39a07dfd1de1e535469f475fdee5a2015dfbdea9885c7162cf57fe4b30b8e9e776b3c801bae7be42f2f9a3d63ceb45faeecac94da0a852c4d38ac9cfed52fdf6412f4f7ef4036310ca7bfb87a3d3ccc390e5ffefa7be64d8f543ae1e7dfbfd9d8ecc853ca7f73d91497ddfb7e3d50dd0123317d5660b92650306987e256ab18412c003d695a5b7feff60316cefa68e9bd0facb8766043040bcf75d66ed8f0e94f5f70e27b8efeeb8bceed689f54299701f85ec84cc6ec8a49bc72dc5f79326743aee9e6f1d1fcf1dfb061c3f2e5cb6fbae9a6871f7e38cf61c83585dc01be74e9d265cb962d5dba34f7fb0a219224733d0780ebfab366cf044929a1931059b91896ea7d94d591591c71348a13d1489aa5d09931b3e8c8c1d8017cf805d406a3c10140269df3d035839acdad2e855b3677234318865d5d5308a23e484953874534530c0d468d9aed98302b4b6a9bb7aeaf0f198277f58fd6992a0a9330790a8890c6d22480c5fc7788f6e989e3a5433b0708b0d6cc3ea883bc585aaa559980523bca6d9284d1da127c051b90f55a99109445cdd47179b0f978dbd4f6ebfeebac5f5dbde6f6df3efbd2e31954f6f8538fbdb07af53f5f7eb9613b75ea9c050b0eb9e082cf968ac1e4299dd3a74f2f954a3cdc49f135d0dbdbbb65cb961d3b76ac5dbbf6c61b6f2c954a2b57aedcb973a7522a49923c402d84c8ed0c29e5ac59b3aeb9e69a458b16455194732eaf67c9b2ccf31c6e499e396cfea1b04a4756c7e5a23fdb66eb36aeab590b304e79df9f3922f17c8e8792e660bb4eb6480f071c06a136deffc09a9481a239e39cfd7a76f697cb1d8542f0dcaafb8587665affc4077f0502522077dc31bca05e294cfff2677f79ff2d0050ec42a180a16d1d48fd34ee3beeb8858e433b360d21066cd7e9a71e52a90caacc7df4e1d524c012679cb9bf314fba72f2e68d100a8b8ef4e6cc9d466eb5d96c78225394dbdf90795082c0d6c62a8c85ed6f34ea1ff8d8a293ce58fc8d8b7ff2ec13403369268923436b92bebecd8f3e3a78f6d9b7150bc1d4695db366cdeae8e8d8a3bf08c0f6eddb57ad5ad56c3699b95eaffbbe9f2449ee17f17dbfd96ce6e50149922c58b0e0924b2e39e69863e6cd9b9737a01bfd3d8ee358ab4988e1ce2a0c08e178037d491a2b8f832ccb72b7b8eff86cfba56ab88ef7dc331b616034e6cee93449f9f96701a073320e3ebccbf31a51b3e1abb85e3742c0021ffe6b541b0845a919d702df19aa66c72e9959ab0eaebc1b8536744dc7df7c7dc2e489077ce1a38f6eab66b36662f2a492a774cff67e48003b4b159da50da34b5b36d6f33d1c2a1d648c134541deae7eda8c36c7b3463011835245a20a64600f36001014c228ad7b4a1893b268f49b3bc3299dff7cd532650bcfdc9fbef0d4d0bffed3bdac4d620ce97e00dad0dab56bd7ac59932f097b9409c771acb55aeb3c692a8f67586b274d9ae438ce473ffad173ce39a7bdbd7dd6ac59185e428c31391bf202c8fc7b86a3a7466b48e5445115b012f289c7b7dcbfe2b12567b35750e403199e7f6af58973266589e1ccbbf5b7559698320def39f130d794d63ef798e3e2c8e330ef1047392c9db2203ae0a02ead7782f0898f2ff3cb3bd2c6c46d9beb5b37459d5deeec83f4230f3c2e0dde755ce73f7eff933dcd9be26a61dbc64c855872f284f649036934e9b60525a65a00000d9b494441549b569202bbe89a4896dd2deb79c55d095b14ca709d1a30edf107ea60648c25ef3bc07055ebd80f5cce1205ca7deb02a40074770ffa818aa38c488641d90f926a7d7b66335f140f59fc8e77bd73c9bf7cf78e7c2ce21885a2dba8e73100e449377b4c0ccc2fc8277adff70f3bec3029e582050b4e3ef9e42ccb962d5b9647a546f2db4673370cc32ccb9839b7fef28c1aa504803028fa9eab75eafb6846118bb4d4ae5880090fddbfe188a367fba5e9eb560f55072081cec9a8b441a7cc16d271a6cea4b068e3242328e1da7907cc70cb3bd3213cfcc0f60587541a55fbbbdb5ebcf247dbe7cdc7bfffe2a84a5b5147bd1b37f63eb8f299e97366dcbafc1958e8186d1dcad838aeab2d1b2104d80738b6c60cf4377b7b21142aedd0baeaa8b69d3b7a852218ee9a1c32868c318e43c61805dd99eb7f7957492fd00c2b44007632ed64910dfc32895e363d6ca7defcdbe7618520efbdef5df8c31ffe60f6cc4385106bd6ac1142388eb3372904ccecfbfed4a953473306c36b7bae2b8f249fbdaa488dba9e014916cc20499ec7998e8d05441a9bee8e699df38ec0bae7f1bbeb93dfdd7a2b08ca012c0ce1dd4bcb071e219f7bee713888395b78d47e9606b32c090b95a17af7e4995de77fb67df96f06fef7258fe83a4400dbc4418bd4073eb268a8d13b6d76c9ebc0fab5f8f4c76e5601f69f23e1401600d710b5df7edb63ab5e84611c7f224a25aed593fb1e7cbebf061470cc7b7d43ddcd5a7adf036b5289a00b61a5a66dd3f38266b3a9845442b7b5021a22022c88c196732911c6a1f638aaf981932649d267efb9eb312004ab771d73f2dcd987b215d662fffdf7ff7d5aecab22f79f33731cc7a3679b577534ed0df23b2b45c61857425b6b39d276e86fbff5ae5b7ff3d875d726c6e2d81370c2f1c72cbffe4137c09c836d5fe3e938eb997d28820a0a65a33c7613376a26820c8ba1d3ce99dd3629fafedfc78e872cc17e87e3a2afbe6bfa6c87ddcdc5b0f8a98ba6fecbdf6f03e1fde7e3f4a5effdde3fde5ead437936cbbc66da77c0a1b006472f917d031b1acd5a7b170e5c8c8e361cb4b05cacd0e0404fe734cc3a1c6d9d20119b2c954c523ad66aba65e322a62c0f1b81f4a8e6df797e6397d6a9c090d013fef12b6bee5cde445a064c1c0db9ae6cf55ea6964a9a1b047b1c38661ec91f1c8949fcb772092dc390758c81d18393274faed6132370e449ea3b3f9dd568a649336b2b4d70a9936dca228be2c40a47b80618241632ab10bb9aa258f6b34803af4869e85012a77dca4b41933ccc4a62131435b83ed458ab3c4752c9a6420abf582c379a96a8b0b3e7c562d909c3f66d5bfb3b27b4a56993a410e47a1e69bd338a6bca99e8ba934d42249bcadf0eed1853c9b2766d22c7eb0720a4362623828268be3c063b528b60411a3672140beb2ad1f9c2d34f4143c0f8217b3e0396ad206a45dc72fd676f12d1f241cfdde6237d7af9e5def5d7c18cbcad85103367ce7ce699174118ecd75a0b08e985da885a338b041b82cd442add30d24d49288713e2c4b84e5f960d798562aa6d923402e966091ce56baaa671ada937b88eea1faa83522f646be3b8292aa5c97d03dbd8ed1d6a4664baa6cdece8eddf6848cf98d9313454f54b46089202fd7d8d4aa5e081a22c02f7c071d9a6d2badaa6da0c0a0fc264d6a64af9604124856001d54db29f4495a05b31585bc863bf9640ce40a677280a9b031d3bd6836cc90de25f5cfb83c4ec4c4cbf4136327cbfcfb87bf5f1b376b4db7c8f01a2d700093020857bda696730242c607d85090e8590ca320b9908c5162484d0dc209505456fa8d1cb4ecd2958e11a4779cd5a12161d5042c2612e086a7744874553ba89e37a840ec1d3052686c542a399960ab3a2a692c2ed9a16f60ef4ba7e71b05a6da47d5624cd2462c19640d2cf624fa022a5f403f6436358371b8e94051246f94d8d41e500b04228477944a418ce70b022dfa72069d5e490150ccd70dd8eb86fe63f7ff34e322143fff987ce3bf9bde73ac2b5248d19d9bce0f5e10dcae114d67a5264ae476c7dbfe45932805af35c8cb822685029668606e5c5a9424a01097675d3bad205743d0251216d362a8530ab03d0103500c87c8886ef2b630cc82837d30600ac85509141a4945250b5c1214f393028786dd070250095450022df032365c0952a6b6a407b1290c61848e1d9c80622c84b55861dfe6a0fad3c254496e2a5d53d2beeeb735d09e8534f3dcd75837ca39b7d5e8c9aaff1c61aad317ffe7c3ff000908092fe1e93dec61a86fb13efd6e776b85cd011a14b936ef8cf55364394d4dadbc3b3cff990350c166c60781f179f13411b6d8c560a871fb6b8a3a313b09c41206c36c64d6ff71c02fc4ab118cecd0227b10dd484679ea8090b10baba26804514456c410449a07d9a922d0486d37390a586729a186cddd7de476f0c42bcfc1f4625bb0b4096dd993bd6a9be4d94d541848f7dfcc3000ac5504a088280c63ee5040029c8759410902250d20519107abb33416f6e28e50dc7eed290fb9cd9125bb206642b2f3ebb13990f56c71db7f0137ff59723555ff9f56f31b9bf079681b973e7ce983103168e8ffedea6185f7db646c9416b0b83e1bc0a0a8282b5e2a995033ffefe03807055e1eb5ffbd6a489535ac647abb4700fdb9abe2510008480209c70c2bb0164311cd9693235ce2a1e771d52ab63bb10c25a18c34663f5733bd6ad861426d5e941f30f01446b4fda577e7c5f804755d511608c114e5e55e4baee1fba69d25b8c3c617624d5d932b331aca493c4360c2aab9f6c5006cf8f2774b44f9fb61fe000496b8f07b2c0beee3fb9cb536569f81982c6638f3c3f8ef64fcb21466dad923b9995d65a08653403e2f147b72a20c9b060c102a3f3eb73ed708cac10186e0c61993163c67e3080c0b6addd5a8f1d0af70a824c21df17d112590e0c8c1ba86aad2f2c3765f39d7dddc81846e3339ffdcbe185bad4da1f655f4f4d68b93a1c4608085238f3f4d3c15012512356c21d0b14ee3d466a34f218a4326c2d8cefbb4a62f3da0601443463fa8cb973670f57413a63840dc3d23cac8253926519183a832b73991e4f10a31527c04a29b344b375936670d3f23bd9424af9c94f7ef298638ec19b5380fdc6c2731d2111450930feb4d87cedcddb745b498a99080e6cb869fd0e0044b468d122ec757dc33e84d1d65a6b33bcf4d2c681fea1ff9673729f41b030233b0e11338c75a5eb88b28fd98f3d6895832ccb4e3cf14463ccd863c3ee33e48c1933b2cc48476cde84dedef1d4a214806ae91ef9164bc38e3f1dc3c890a3d686e26f7612e61b05c72540785ea09c065b81bce7d0388118ae676ac527a494699cf9aa7d607b080d0179c20927e4b978184edf1f93b0cc1680e706cd5a6c347426acddbdd0662c4300c242d856dcb46563fb5e71b0df80a1b59e3163469e0d8651bd66c62c980126c741e017f7352daf0f235e580590c8cbc98464231fbc67352c5cd75fbc78318679f0c6f64b7923b03b3d523a60b206593a0efbc50e2712b482fbd6da1d5b76de71db430262c18205679c71465ed080e1b64b6316496cf21d42e218838343fb9a9cd7877ca14e411aac72ef13b3881a34d00382337dfaf4b6b6b63c451e637a76b260e9ba3217dab481de9edaf80a1609b0035985ac8225281130c80a2beed85e1d04ac7aff99e7140a85bc31dfbe26f55531e25c32049724161f7938c880f1dc937d820a2395f7fb90c4bd8468a9b09cabb0824808a106faea4420a2830e3a28af6fc8a5618c6f12c716954a253f1e93bdb75f0b02a4c11e204109d84b62234570dfdd3bd8c2703677eedc91cea1fc4677387bc3d1ea36309ccdb6afc9797dc81bffa9bc29055811380c2ab5e186a561188e7d06ec02c1184342309065e36bd3030890013b2d99809054a90fb9d1101c1785d02f14bcbce51880bccbccbe26f8b5600d7b9e9713b9974d0fc60e1446f61ca70cb06cdc2c71c0c8121c73f4426b315cac008c79635548d25ac35ac8f1373bbd3cd240a9a7a66d5a9b08013066cc98328efc36e31d2fcf7122e3c8caf6adf5dcb93f6ddab47d46d79f1e721b3bf78a4b50521d100fae5863532325ce3afbccb114affe23c7481f3a0000e9462dedef6d003019baba3af71d617f7210520968212195d18ab39e4d7ef77a05a0522ecd9d77c05e9609ed2b100421cfcd9510300642284970141a3bca2e5530dc1cf875d59fed1308664344b98d4d2c36acd931d01783501daae971a7920bf85e688cb11add5babe0f164660b63582a22c16c25716160a016d51a5261dad4696abca9e44438f7dc73cbe5a231d8b0a1775f93f3fa20c0949b6c04c5c68d9a290093c10fdc3d7e78ac214d6d5757d7701fe77d4dcdeb846226633266764559379d7bef79180008b366ed67358b31eb057f35388ea8d7ebd65adf1f5f791d406ed93133b3053b5687590a00cac161871d26c69b3b536bce6b299304633ba6f52a10aee30bc98e4b49243cb1df8ecd00914e316ddad47d4ddbeb86949477e6648652bbda028f0bcf87d0da10719ac6e5e22493740000f3dc79b3f27d68dec65b0621a503406b1d477a67f7104900a8542a1d13dac659b3fa710e91261ab09ee711dcea00730a72bc238f3cb252a9d038894afc7140b85edebc579bcc5ae300e0343960de819e179af1568230ae21a05262a164482c56dcf5380c88d0566ed7a9904ef6b607f02d43de4f4982a9d168f6f70de66d93e6cc9933668a24fe5420922455d24b1384417bb361044922f1ce771eab248dbb1284718d7ca301c94ccd46dad73b24a5632d1a8d86d6ad2ac27d4de19f0a84e7b946b3ef1556afdab0fad9344db5effbeded15e5204dc79b9d3a9ef1ff03c2fce998608eeecd0000000049454e44ae426082, 'No'),
(3, 'Dela Cruz', 'Jason', 'C', 'N/A', 'Male', '1999,11,17', 21, '7634534534', 'Single', 'Filipino', 'Salinas 1', 'Active', 'Imus Cavite', '2021,6,20', 'General Manager', 0x89504e470d0a1a0a0000000d494844520000008300000083080200000021ff3f31000000097048597300000ec400000ec401952b0e1b00001bf349444154789ced5d7b5c5555f65fe7dc0b722f4f7918c8205e300484311f7105912c1ff9c267694a9a45669a59939aaf26713454307f4d6266339335537e1a24b51cca7ce44f2b35cdc457a013988e8f104140b870ef3de7ecdf1f8bbbdd9c73ef11b5a6f3f97dcef7c3e7c33eebacfd3877ef75f6da6bafbd0e4708011d1a00ff5b3740470bf49ed00af49ed00af49ed00af49ed00af49ed00af49ed00af49ed00af49ed00af49ed00a8cbf7503fe9fe3d8b163656565a228c6c4c4a4a5a5a970ea32a115dcad4c1000ee2eb2e7e6e6060606020021c4cfcf2f3232322323a35dbb762a594a4b4b77edda6530186a6b6b172f5eec96273f3fdf6c368ba2387bf66ce5dde2e2e273e7ce719c9b863b1c8e891327868787e3a5d3e9fcf39fff6c3299dcd6e2e3e3939d9deda99d76bb7de4c891252525757575f8743131319b366dbaf7de7bddf2eb32a11990bb8373cbc7627ebeb872a5f0fd913bc8ae6c0fc771d3a74f57c9326fde3cf5c65fba7489325454542819060e1ca8f283ecdebd9b72d6d4d4a870060404786a646d6dadd96c769bebcb2fbf749b459709cd4065f4b505ce5ebd440011c03965ca1d64f7d4aaf1e3c77bcaf2c8238f50b63367ce28193efffc73cab06ddb3625c3f8f1e3557e9003070e50cefafa7a15cef0f070b72dacadad6ddfbebd4ac63d7bf62873ddbe4cc87ebd86060e800320d7aeb581bbad282c2c2c2d2d757b8b7df99c3e7d5ac9b075eb569afef1c71fddb449759b52fd2e0bb7733e006465655dbf7e5d25e3c30f3fac24ea6f27ade0367a4200104f9d9411894b7ef90b17d8b1440084afbe16ef42c59d3973a65b7a5555154d7ff9e5974a863d7bf6d0744949c91d37e0ceb073e7cee2e262751e4110860d1b2623ea32a119dc6a4e6d8148887dc3067be74e526bba3328480290001c6121727e83c151fc998c5f863b689bbfbf3f65e8dbb7af7a99e9e9e94a86471f7d54a5d26fbef98672aacfd8111111eacd53c7c58b17d98cba4c68056dea0902209c3c69983eddf8d30591a18b44e26cb6968bda1b6c0e8948465184e1c39c3f9eb963872ab79acf8d1b372b3a75ea947a09172f5ebcdd4aed767b1b391b1b1b65943d7bf6b0cd0380e8e8e8cccccccccccc9898181973bf7efdd84b5d26b482365900c5069b212303000880b4762d79fef91695c8eee01d8e1626a7835a030970d21f1773000600e18187c4733f19bdbdd4ab484949e9d6ad5b6d6ded8e1d3b9a9a9a90b87bf7ee2e5dbaa8e442e31aabd7cb84a0baba5abddee9d3a73be82300389dce8e1d3bbae51c3b762c1a2b111cc729ed193283e3b871e3962f5f1e1f1f0f00e5e5e5b9b9b9efbefb2ebd7beedc3996599709cd4055b56981bda65a0068b16a7408135c74b1ae4e0040dd490470bae802214e9e130124002780b3b1d153c9b4196bd7ae1545b1a9a969efdebd943864c810952c881b376eb07777ecd871cb076475274288c0c0e974b29cacee545252c2728aa2280882ac64b6de3e7dfa343737b37725497ae9a59728c3faf5ebd9bbba4c68069e462b0b8110a76bec3b009c3f5f46ba585f27b9e8122313ce53a744caefdd4e6549419bb17af56a4abce79e7b90e8d6ec2c6bff9123adacf14b962cb9e503ca644205ac4c1c3e7c589df9e8d1a36cbd3281a0a0b38b8cde2699e001b8c8484c1b01a4b18f08008eddbb9c7dd25a59381ec8100e7e2d02f0a9a937e7d08e116db178489244d323468cc0444343838cadb6b65646f9e4934fd8cb5b5a1aee186c0bdd62fefcf9349d9d9ded69e7b1b2b21214cd067dc6d60edad4131c00f4bc8f5e1a0f1ce07296f283061b7f38cd8e777eff575cbffee47f5e27ccea860c1a70bb6d0a0b0bf374ebf2e5cb320a3bc3436b9b39422946bf128e1c3942d3cb972ff7c4e6e7e7376ad4a8912347cae8ba4c68056dee89cc4c9ae40060698e41919907e045917b696e2baaa2f36f099551acdc3e3a78f0207b79e5ca151983faa6cd2f054110eaeaea301d1e1e4ebd43dce21ffff88792a8cb8456d0d69e90fab77addabab43b45002601836fc76db74f8f0614c180c06d9ad6fbffd56de3046a5713a9dcad2d42ddb6d47484888ca5dd60b64dcb871ea45b9b59ceb32a115b4d507d0706f2b4b9c8a4cc8270f5e3eaeddc2cfcf0f13a5a5a5df7fff3da67bf7ee2d63a3b382d168140401d30d0d0d98fdd8b1634cbd3c8acb850b17ba77efeea9de9c9c9ce6e6667a2908c2ac59b33a77eeace47cfdf5d7590b20cff32693e98f7ffc235e9e3c79735ff9c9279f547b540fd065422b68ab4c701e5c608982ad150c6dede94f3ef9a4b2b2b2a1a1e16f7ffb1b2566320a1b82aa55fdfaf5a32b89b367cff6ecd91300befefa6ba4444646da6c36d49afefdef7fabd4bb74e9521965e8d0a16e65e2edb7df965158996037b5b031b70b8f3d4100b8d63f3e31709c48643c629758437ca22409dc91efa0aa4ad6134250906c5fc29347f3175f7cf1c5175fc888cae50fed89a4a4a403070ee0fedac18307f1e13ffae823bc9b9c9cbc6fdf3e4c2bd77aeaf0e445a9445050104db3dab3273f2875e86f27adc07d4f4800c2ce2f586f25e15c05cf08040110bc0ce2e622e3b7876173a1a1e863eef469d8b0416cfdbe3254d708753797692280b867f72d0c690cba75eb26a3fcfcf3cf98f0f3f3ebd0a103a6a9d64bada18989895453bce5b69d0c4a736f5b8076bdbb812e135a81db9e2004807f780899bff0e618ef934a870a011012e30d75f58647c671c1c1bc8f0f6732f16161fc33cf4055a5d431821df552af5e7829898238f35969e0a036ca44fffefd9544aab976edda35232303d374a2a6abbc010306fcee77bfc3b427ffda5f16d4d471c7d065422b70df13c2d9320e80cf5b09539f142e5e14ce9de3af5ee55cf22144461a8e1ee34d669eb41adf1c4886d00ee4c44929c0df4501437985547d4d387b561c37965fbfc1d8e6d3601b366c50b96bb158e886129acad9055a4c4c4c545414a6efc0e5e90ec0d67e67d065422b70db131cb76245cb52eefdf7b89123c9ece7e8409600b8eddb791f1f00004e6edae0000c2121d2968fd155108f56482fbc002386f39f6ce7f172d3a65b36ebe5975f8e8b8b931159635f4848083d548be3f1cc9933f4aec562494c4cc4f4edee14293dfb3c819d1b7cf007b90be832a115b859631300c3a7ff02d788361c3b261d6b79b97300c2b265c61e3d544ae401da0d18e4983d937ff32d2c81fb7093815d5d2f5b069326a994f0dc73cfad5ab54a4967b74edbb76f2f73d6a31a1400b46bd72e212101d336eab9eb0ecb972f671d619d4e67d7ae5d3db52a3838985ea205905efafafaaad4d216e832a119281d7284fa7a27e3c5c4fe3918a72616b29387371a1a044204cf8548a2889cb419a3468da2e979f3e6b9f514624fd5d9ed76363b2164e2c48998eed4a9132164f7eedd9e9ef1cefc9ddc9eaea458b870611bcbf40437322111e251d1cc5be576b7e1c30f3fa4e9aaaaaaa4a46e060061f62cf78504f881285fdecd983183a6fffad7bfbacdc75ad9bcbdbd0180359ad2ad0babd50a007465f74b417d3ffceeabd3df4e5a819b9e30040448af2d539ac1080037772e072008c2071f7cc0be1cd81325fefefef6663b007079f96e0b211f7dc479c935858a8a8a9494144c7b1a7d67cf9e9551d8d9f53ffff90f26f0c0365dd9c19d1af56e0bac4cb0fa74dba1cb8456e0a6277802fca25764f66d02200d1f6ae07800a8aeae9e3c7932ab1d5273745e5e5e5e5e1eaa7486763e2439095a172284861a87baf1f6b0d96ceca4e7f6d896ece807000c183080f28b62cbc1335cf1b12ae67fc10d30393999a6953eaf6d812e135a81bb9ee0c000001f7d24b5160b69452eea54b8b2679d910441c003eb6fbffdf692254b50b1e10988afbc22132cfe5fff72dbf992248d1e3d9a5ebaf52bfde9a79f3081e50340af5ebd3091979747d9f095cd6e61d28cbf1ee8b615309bb8b7055d26b4028f3d619c30418c8d6547349f7c1f005cba74e99a22584a6565e5b469d300202c2cccd7d797e3384208c78171fc84565295723f67b5aab4c6cbabc501e19ffffca7f22ef59fa07a117d3bbbf534a556b9ffc26691afafafd1d8a2101e3b764cfdb0c5cb2fbfac24ea32a11578ec090ec0505878d3181ed9117b7cecd8b17ff8c31f64cc0683e1fcf9f3e08a8070f9f2e5b973e73a9d4e0e80185ba61309806cdd6a50d5ecfbf4e943d3f42c30c5d5ab57311111118189d0d050194f6c6c2c4d53a782bbdfee6f0b58ff87bffce52f9ed8ae5fbf9e9f9f4f573f146a32c1b31e54d94fe3ffc3870f1f3a740800388e5bb468d1d8b16301c06eb7979494646767e3a2acaeae6ecd9a35e5e5e50020b95c1389d1e0d531527dc7eef1c71fa7e903070ec8ee522f60baa0e3384eb631909474536fa6fe486565656ab5fe4278eaa9a7689a35dec8804e5cf8bbb1d0df4e5a815a4fb41abe8fde8cf9865e720683e1e8d1a36ca8b77dfbf6f9f9f91142e8dc4500b8c727b7d424b0213fdc63cc983134ad9c84e9fb8af55c96c5c3484f4fa769fa76ba65788fb680fa507bc273cf3d47d38410b7015277edda85fb28df7df79d6cbda9cb8456a0e6a12c9d388162210140b724d95d9bcd66369b7d7d7de9eb9baef57055c5711c0f20a5a410d7f61fd4d741402078067bd671ebd6adefbdf79e5b36d6183e7cf8f01f7ef8815eb21148939393f10000cb20c39b6fbec9aa0682204c9d3a35d275e499c5c68d1b434343d905a3c9646207beecdccddab56b2322229e7ffe7914264992b66cd9c26e8d6466667ef5d557f4529709cdc0d316924488e3bd775b626ff03c8d500100d1d1d1009093938363849a1cba76ed1a161666369bd11a5156564608114451a4313f4abe97d5429b91979787142bb3f4f3c4fcfdf737cb911d85bf7af52abdf5ca2baf20d16c36b3e5a8c73c6323ebaa9f0c93154b0859b060818c67c48811f9f9f96bd6ac51c6bd964560d0654233f02413841061d142dc8b7676eac40ecce8e8688ee394c74ce2e2e23a74e860329950264a4b4b318b3320400410009c9b37df522658f3d989132728271b85e9ca952b942e8b31c616be76ed5a241a0c86b6cbc4ddc4019435461dc5c5c5ba4c6811f29e409d9f60c8a623875b1485e86896c76834721c47f51c6aa3f6f6f6e6799ee33854306e1a8a233bb63803feef5ee2f2f0f064f560434de7e4e4d03435750000eb77c4aaf9b2cf13508728ba89f46bc3cfcf8f0db6ad8288880859c8d8565a2c01e09a9b85f317c8968fe19d0dfc4fe7b1270c5dbb16efd871fac4894e9d3a01c0b56bd70821f4b425b53b5eb972a5b9b919e34f01c0ba75ebdab56be700f24a6232292d2300fcbab7a4bd7bc59933b8c1438c9d3b83979b907468c04007cb2d5bb6503adb13b4ef5b9ec1750e5576c0cdd3971e7e556cdebcb92da7bbd04cc7427f3b6906eca42111e27862b2181848f5ce9637c9aa55b39e7f5ee9327c4b242424cc5fbc98cc7e91ba9db5941c1c2ccc98413c44da1a3efce6463725d2cd61d9f44b08a18e974b972e65e96cdc00963e61c20495361f3c78b08d3370c78e1d893bb0c767dd62d1a245ca5cba4c6806b29e71d261cbfc3957adaab97efde79f7f66bf87724b4c9f3e1d43c339b2b395650aaddd90580fcc8d1b3752fa1b6fbc8144d6e62c6b33dd003f7efcb8ec16cd42556a42882c64ae0c3b76eca09ceaa7257d7c7cdcca04214425bed3cc9933dd66d165422b905b008d73e6009dfa71316534928103db070501405e5e5e7a7afab56bd7eaebeb9b9a9aec767b4040808f8f4f5d5d5d535313cff346a3d16c36070606f6e8d1836a3286316338b399331ac16020763b0070eddaa1e2f4cc33cff8f8f84892c4ce0d13264c387cf8303a4dd1687abd7bf70e0e0e763a9dca2f69cd9f3fbf53a74e369bedf7bfffbdec567676b6d96c1604811aea0160debc79a9a9a968f8e3388e6a6284109bcdc64e8766b3393b3b3b202080e338aa13a2122f0842404080a79f75f1e2c5b1b1b193264d22addd0f0b0a0a58e3390b5d26b4024ed669d74411d56151923a188d0050e974dee352fcebebeb4d269317b30eb878f162454545af5ebdd8a31c68300780eaea6a5f5f5fdce06c02a8771555258a3c00d4d6060606e268adafafa7d199309292288ab84ea4c5daed761491ebd7af1b8d46dc081245b1a1a1818d32b36fdfbe4b972e0d1932845d00b2d8bd7b77bf7efda8b489a2c8b900009224d5d4d4701ce7e7e7c7f250a337fe621cc74992545f5fcfc68c3870e0c0b973e7468c1881ed1104a1b8b81843fe2627270f1f3edcd7d7b7b9b979d3a64d8f3df6982c2c852e139a816c064f4c4ab2c4c4586262423b74686a6a6ab2d9828283f7efdf8f77870e1d3a6cd830cafce69b6f6221414141478f1e45e2d9b367030303316e6d7c7cfc14d737bd0a0a0a225c0a78977befb5c4c4582c96b0b03049921c0e476868a8c562b1582c0909098490efbefb2e2a2a2a363676f4e8d198a5b9b9d96c36d7d6d61242323232060f1e8cf413274e040707d3262d5ab4089b141d1d7df2e449a58a82d167dab76f8f2d2c2b2b8b88888889898989891939722421a4b0b0302a2aca62b18c193306b34c9e3cb943870eb404abd5faf0c30f1342d2d2d2323333297df5ead558754242c2f9f3e791181717979696969a9a9a9c9c8c94071e7800dc7da2449709cd40d633eccbaba1a1011dc21f7cf041bc9b94949494948469d9f70f83828230d83a6e553a1c0e4208aa25c8bf6cd9329a66671a4992641fdf20847cf3cd37f472eddab5281300505d5d4d0841f3171685515a314d83a521626262943241efce9a350b458a526263630921ec8709366fde4c5c8b035a82d168c4af50464646f6ecd913896c8301e0befbee9355072edd8c5ebefbeebb6a32e1ededddb16347abd59a989888ea1a30d171fdfdfde9cc3c75ea5400c8ccccfcf0c30fa3a2a26a6b6bd12081333066c4b91aa304984c269e6fa9cec7c7c762b158add6ae5dbb721c8793a1d56ab55aad18ae030b79e8a187c0f551072c103971aedebf7f3fb4de3d1e346810003cfbecb3b836aca8a8903d1d9e0f5bb3660db84e53d3aa535353d12f0447cf830f3e082e47e9c18307b3bf26ee750380d96ca62a35fa2fcd9831e3ef7fff3b00949494d0da636363535252f07cf8f6eddb01a0b0b01014e76bf4b793662013dec0c0c0152b56d04beaf780db677dfaf44949492184a0c59fddb4a245e1192cfc9003ae7de6cc994308c9cfcfe7791e79fcfdfd8b8a8a685eb469b3cdc068a4c4153b9f10826fb0ebd7af1342d0ef11e7407c23d136d0af795dbb760d1da559e0891b42c8c68d1b455124aef3ac2ccf071f7c809469d3a6e14e35da3c0e1d3a44084177429cedbb74e942ab03806eddba611a3da9297dfbf6edb4f075ebd6797b7b13429e7aea2959db7499d00adcf484dbf8b773e6cc612f71a3a3a8a88852d059d62da8b2ab5e8bdb703043860c511271acb181410160e7ce9de07a050340484888d2591f1d068b8a8aa64e9d4a272db78d0180010306a0b0e20a11274b0c842afba201dea2ce4bb1b1b1d81804ab8f582c1687c3515a5aaab49ceb32a115c82d801cc7edddbb97e7f9a6a626ba8d9c9292b26bd72e96edf8f1e3e03a5b88b07a38a2d2b76f5f998687282a2aaaa8a8686c6ca406e4bcbc3c9ee7bdbcbce82735cacbcbe972890521243e3ebeacacece8d1a37468e3c9783698873202075a26a64d9b26db6dcecdcd351a8df7dc73cfd34fb7b8c45fb87061ddba75d4113d383818cbdfb973272b4c88bd7bf77a7b7bb35f62462d0e51585878e6cc99868686dcdc5cfc0af0b871e3946e89ba4c6806b2199cb567353434a0ee84ab279bcd4675278c3543dc41a63b61e887828282d5ab57b3ba13ad053f82256b12ea4e38c0d1d2c0ea4e898989f8a5e0891327a27412429e7cf249d6ece10953a64c0180356bd6e0251b0b049531d49db0ea41830621db430f3d84ebc4e8e8e8d4d4542452dd69f2e4c99d18973016ca9f1abfc274faf4695d77d228dad413785e61d5aa5574bf85d573366edcb872e5ca152b56503f5416555555168b252727c7d3be8a8a4f0a0674628f6850dcb87163e8d0a1dbb66da3dfdcb0d96cd436fec61b6fac5ab56ae5ca95686261f1fefbef0300fb5d39b72dc1aad7af5f8f9753a64c4175f1fcf9f334680e456363e32d4f5750a069e0fefbef97d1e533362164c284095959590e87c36432a10fa4cd66b35aadefbcf34e7a7a3a3688dd385bb66c198d1ea0dcbfadabab9b3f7ffeb3cf3eebe5e5c54aeb0b2fbc3070e0c0a6a626fafcdbb66de3388e3549797b7b272626ba0dd37de3c68d77de79272a2a8a6e359bcd661af0233737977ed09c86fea658b468516e6eeeebafbf4e55f3a2a2222f2f2f763fc3cbcb2b2d2d8d9eda7be28927d0c201ad7de310269349f999318ab973e7666464506fd2b8b8b8a143877efef9e7df7efb2dabe6e86f27cd40366f040606fee94f7fa2973863575757e3572cbb77ef8e33f6a79f7e4af3f6efdfdfd7d717c7b272c65eb060011a20333232d8197bd3a64db4169cb1d94ff1e18c3d69d2a4a0a020a4c8666cdc3c00573c7e420846cd47e6eeddbbfbfbfb1b0c06b7ee179224711c97989848676c8cdb85c0197bf4e8d132af7a7085cdaeafaf470a9db1172c586032999415612ed6ae8340e323ee7253e832a115b8e909e52b8f10824b92e3c78fe36b1dbd28f0a06e7e7efe8e1d3b1212123c7dd5102795fdfbf7b353a2d2215e19d6e9d5575f550f43d3b3674fb4330340dfbe7dc165812f2828d8b76f5fe7ce9dd9284f08b40cce9e3d9bf54c553666c68c194a22fa5c29bf32d4b76fdfa6a626d60f9a3d772c7b849a9a9a808080d8d858368424e8f38476e0a6273c29646cb8161c6bb83dd2bb77eff4f4f413274eb0a70d65503a0fb24b48046b2d40a0b942f9a1658a575f7d95a6718b292b2b0b00d2d3d37bf4e8515e5e3e7dfa7496bfb2b2120f1bf4efdf9fb5fa29638ca2b982fdf051972e5d4e9d3ac5c640a0c0b8dad482525555455d7565cf75e8d0213ce91c1f1f2f5bcfea32a119c8a6f5a0a0a06eddba656565656666daed76d49df0c0c45b6fbd050056ab1539714f312b2babb8b8180f65e0778b95ba13716d7a53376f7f7f7fabd58ab550dd69fcf8f193264d7ae2892708b353042e370899ee3476ec584aa44f818bc779f3e67dfae9a76800973d1d1e3b7cfffdf7434343719b0b75a7f1e3c76765652d5cb890303b4500c0eee7600008ac57a63b11d78efdd2a54bb76ddb866145f0470380d4d4d4499326e193e20e3cdacca9d544d79d3406d9a8619de91a1b1b7129505555450841dda657af5ec829dbaf0f0f0f473aaa0d28137e7e7ed409bc7dfbf6743dc1be974551946dd41042d0044d08c1f73e1dfe3535358490b8b8b851a3466151ecd8ffecb3cfd8727af7ee2d7b3a3692e0d34f3f4d08610349c4c7c71342d025801092969616121242f3a2cfc7faf5eb29c562b1f4e9d387bd4bd1a54b17a4cb9e8bdd5bbb856f878edf0cb251c3deb2d96cf80980caca4a2a31e8a38758bc783165a607147094e18219005e7cf145a4a3395a598b2449b2504e8410d4b50921f831349bcd86d2892fdff0f0f00103066051050505ec5350eb100094979713056854dacb972f1342d0a88e409940333e210437621b1b1b31237a46e1717f4470703066413cf6d863b428caa6fca9e9a24a7485f46ee19435d466b3353737373737db6c36a4d0a61042ec763b6b9320841c3c78302727079f8a8266b1d96cf89a228488a2c8d2b1162505eb952489bd858d6e6868400a1e18505687282e2e7eedb5d768bd324892b472e5ca1f7ef8815ed2aaf1d1d876ca4a965d363535c97e8d2d5bb6bcf6da6bb2b6c99eb4bebe7ec99225f4e7a5d0df4e5a81dc6b5fc76f055d26b402bd27b402bd27b402bd27b402bd27b402bd27b402bd27b402bd27b402bd27b402bd27b402bd27b402bd27b402bd27b402bd27b482ff03b96f694e2ba31e030000000049454e44ae426082, 'Yes');
INSERT INTO `employees` (`id`, `Last_name`, `First_name`, `MI`, `Suffix`, `Sex`, `Birthday`, `Age`, `Contact_Number`, `Status`, `Nationality`, `Address`, `Work_Status`, `Current_Site`, `Date_Hired`, `Job_Position`, `Image`, `Designated`) VALUES
(4, 'Agaton', 'Henry', 'T', 'N/A', 'Male', '2000,10,18', 20, '9454545454', 'Single', 'Filipino', 'Salinas 1', 'Active', 'Salinas 1', '2021,6,21', 'General Manager', 0x89504e470d0a1a0a0000000d494844520000008300000083080200000021ff3f31000000097048597300000ec400000ec401952b0e1b00001bf349444154789ced5d7b5c5555f65fe7dc0b722f4f7918c8205e300484311f7105912c1ff9c267694a9a45669a59939aaf26713454307f4d6266339335537e1a24b51cca7ce44f2b35cdc457a013988e8f104140b870ef3de7ecdf1f8bbbdd9c73ef11b5a6f3f97dcef7c3e7c33eebacfd3877ef75f6da6bafbd0e4708011d1a00ff5b3740470bf49ed00af49ed00af49ed00af49ed00af49ed00af49ed00af49ed00af49ed00af49ed00a8cbf7503fe9fe3d8b163656565a228c6c4c4a4a5a5a970ea32a115dcad4c1000ee2eb2e7e6e6060606020021c4cfcf2f3232322323a35dbb762a594a4b4b77edda6530186a6b6b172f5eec96273f3fdf6c368ba2387bf66ce5dde2e2e273e7ce719c9b863b1c8e891327868787e3a5d3e9fcf39fff6c3299dcd6e2e3e3939d9deda99d76bb7de4c891252525757575f8743131319b366dbaf7de7bddf2eb32a11990bb8373cbc7627ebeb872a5f0fd913bc8ae6c0fc771d3a74f57c9326fde3cf5c65fba7489325454542819060e1ca8f283ecdebd9b72d6d4d4a870060404786a646d6dadd96c769bebcb2fbf749b459709cd4065f4b505ce5ebd440011c03965ca1d64f7d4aaf1e3c77bcaf2c8238f50b63367ce28193efffc73cab06ddb3625c3f8f1e3557e9003070e50cefafa7a15cef0f070b72dacadad6ddfbebd4ac63d7bf62873ddbe4cc87ebd86060e800320d7aeb581bbad282c2c2c2d2d757b8b7df99c3e7d5ac9b075eb569afef1c71fddb449759b52fd2e0bb7733e006465655dbf7e5d25e3c30f3fac24ea6f27ade0367a4200104f9d9411894b7ef90b17d8b1440084afbe16ef42c59d3973a65b7a5555154d7ff9e5974a863d7bf6d0744949c91d37e0ceb073e7cee2e262751e4110860d1b2623ea32a119dc6a4e6d8148887dc3067be74e526bba3328480290001c6121727e83c151fc998c5f863b689bbfbf3f65e8dbb7af7a99e9e9e94a86471f7d54a5d26fbef98672aacfd8111111eacd53c7c58b17d98cba4c68056dea0902209c3c69983eddf8d30591a18b44e26cb6968bda1b6c0e8948465184e1c39c3f9eb963872ab79acf8d1b372b3a75ea947a09172f5ebcdd4aed767b1b391b1b1b65943d7bf6b0cd0380e8e8e8cccccccccccc9898181973bf7efdd84b5d26b482365900c5069b212303000880b4762d79fef91695c8eee01d8e1626a7835a030970d21f1773000600e18187c4733f19bdbdd4ab484949e9d6ad5b6d6ded8e1d3b9a9a9a90b87bf7ee2e5dbaa8e442e31aabd7cb84a0baba5abddee9d3a73be82300389dce8e1d3bbae51c3b762c1a2b111cc729ed193283e3b871e3962f5f1e1f1f0f00e5e5e5b9b9b9efbefb2ebd7beedc3996599709cd4055b56981bda65a0068b16a7408135c74b1ae4e0040dd490470bae802214e9e130124002780b3b1d153c9b4196bd7ae1545b1a9a969efdebd943864c810952c881b376eb07777ecd871cb076475274288c0c0e974b29cacee545252c2728aa2280882ac64b6de3e7dfa343737b37725497ae9a59728c3faf5ebd9bbba4c68069e462b0b8110a76bec3b009c3f5f46ba585f27b9e8122313ce53a744caefdd4e6549419bb17af56a4abce79e7b90e8d6ec2c6bff9123adacf14b962cb9e503ca644205ac4c1c3e7c589df9e8d1a36cbd3281a0a0b38b8cde2699e001b8c8484c1b01a4b18f08008eddbb9c7dd25a59381ec8100e7e2d02f0a9a937e7d08e116db178489244d323468cc0444343838cadb6b65646f9e4934fd8cb5b5a1aee186c0bdd62fefcf9349d9d9ded69e7b1b2b21214cd067dc6d60edad4131c00f4bc8f5e1a0f1ce07296f283061b7f38cd8e777eff575cbffee47f5e27ccea860c1a70bb6d0a0b0bf374ebf2e5cb320a3bc3436b9b39422946bf128e1c3942d3cb972ff7c4e6e7e7376ad4a8912347cae8ba4c68056dee89cc4c9ae40060698e41919907e045917b696e2baaa2f36f099551acdc3e3a78f0207b79e5ca151983faa6cd2f054110eaeaea301d1e1e4ebd43dce21ffff88792a8cb8456d0d69e90fab77addabab43b45002601836fc76db74f8f0614c180c06d9ad6fbffd56de3046a5713a9dcad2d42ddb6d47484888ca5dd60b64dcb871ea45b9b59ceb32a115b4d507d0706f2b4b9c8a4cc8270f5e3eaeddc2cfcf0f13a5a5a5df7fff3da67bf7ee2d63a3b382d168140401d30d0d0d98fdd8b1634cbd3c8acb850b17ba77efeea9de9c9c9ce6e6667a2908c2ac59b33a77eeace47cfdf5d7590b20cff32693e98f7ffc235e9e3c79735ff9c9279f547b540fd065422b68ab4c701e5c608982ad150c6dede94f3ef9a4b2b2b2a1a1e16f7ffb1b2566320a1b82aa55fdfaf5a32b89b367cff6ecd91300befefa6ba4444646da6c36d49afefdef7fabd4bb74e9521965e8d0a16e65e2edb7df965158996037b5b031b70b8f3d4100b8d63f3e31709c48643c629758437ca22409dc91efa0aa4ad6134250906c5fc29347f3175f7cf1c5175fc888cae50fed89a4a4a403070ee0fedac18307f1e13ffae823bc9b9c9cbc6fdf3e4c2bd77aeaf0e445a9445050104db3dab3273f2875e86f27adc07d4f4800c2ce2f586f25e15c05cf08040110bc0ce2e622e3b7876173a1a1e863eef469d8b0416cfdbe3254d708753797692280b867f72d0c690cba75eb26a3fcfcf3cf98f0f3f3ebd0a103a6a9d64bada18989895453bce5b69d0c4a736f5b8076bdbb812e135a81db9e2004807f780899bff0e618ef934a870a011012e30d75f58647c671c1c1bc8f0f6732f16161fc33cf4055a5d431821df552af5e7829898238f35969e0a036ca44fffefd9544aab976edda35232303d374a2a6abbc010306fcee77bfc3b427ffda5f16d4d471c7d065422b70df13c2d9320e80cf5b09539f142e5e14ce9de3af5ee55cf22144461a8e1ee34d669eb41adf1c4886d00ee4c44929c0df4501437985547d4d387b561c37965fbfc1d8e6d3601b366c50b96bb158e886129acad9055a4c4c4c545414a6efc0e5e90ec0d67e67d065422b70db131cb76245cb52eefdf7b89123c9ece7e8409600b8eddb791f1f00004e6edae0000c2121d2968fd155108f56482fbc002386f39f6ce7f172d3a65b36ebe5975f8e8b8b931159635f4848083d548be3f1cc9933f4aec562494c4cc4f4edee14293dfb3c819d1b7cf007b90be832a115b859631300c3a7ff02d788361c3b261d6b79b97300c2b265c61e3d544ae401da0d18e4983d937ff32d2c81fb7093815d5d2f5b069326a994f0dc73cfad5ab54a4967b74edbb76f2f73d6a31a1400b46bd72e212101d336eab9eb0ecb972f671d619d4e67d7ae5d3db52a3838985ea205905efafafaaad4d216e832a119281d7284fa7a27e3c5c4fe3918a72616b29387371a1a044204cf8548a2889cb419a3468da2e979f3e6b9f514624fd5d9ed76363b2164e2c48998eed4a9132164f7eedd9e9ef1cefc9ddc9eaea458b870611bcbf40437322111e251d1cc5be576b7e1c30f3fa4e9aaaaaaa4a46e060061f62cf78504f881285fdecd983183a6fffad7bfbacdc75ad9bcbdbd0180359ad2ad0babd50a007465f74b417d3ffceeabd3df4e5a819b9e30040448af2d539ac1080037772e072008c2071f7cc0be1cd81325fefefef6663b007079f96e0b211f7dc479c935858a8a8a9494144c7b1a7d67cf9e9551d8d9f53ffff90f26f0c0365dd9c19d1af56e0bac4cb0fa74dba1cb8456e0a6277802fca25764f66d02200d1f6ae07800a8aeae9e3c7932ab1d5273745e5e5e5e5e1eaa7486763e2439095a172284861a87baf1f6b0d96ceca4e7f6d896ece807000c183080f28b62cbc1335cf1b12ae67fc10d30393999a6953eaf6d812e135a81bb9ee0c000001f7d24b5160b69452eea54b8b2679d910441c003eb6fbffdf692254b50b1e10988afbc22132cfe5fff72dbf992248d1e3d9a5ebaf52bfde9a79f3081e50340af5ebd3091979747d9f095cd6e61d28cbf1ee8b615309bb8b7055d26b4028f3d619c30418c8d6547349f7c1f005cba74e99a22584a6565e5b469d300202c2cccd7d797e3384208c78171fc84565295723f67b5aab4c6cbabc501e19ffffca7f22ef59fa07a117d3bbbf534a556b9ffc26691afafafd1d8a2101e3b764cfdb0c5cb2fbfac24ea32a11578ec090ec0505878d3181ed9117b7cecd8b17ff8c31f64cc0683e1fcf9f3e08a8070f9f2e5b973e73a9d4e0e80185ba61309806cdd6a50d5ecfbf4e943d3f42c30c5d5ab57311111118189d0d050194f6c6c2c4d53a782bbdfee6f0b58ff87bffce52f9ed8ae5fbf9e9f9f4f573f146a32c1b31e54d94fe3ffc3870f1f3a740800388e5bb468d1d8b16301c06eb7979494646767e3a2acaeae6ecd9a35e5e5e50020b95c1389d1e0d531527dc7eef1c71fa7e903070ec8ee522f60baa0e3384eb631909474536fa6fe486565656ab5fe4278eaa9a7689a35dec8804e5cf8bbb1d0df4e5a815a4fb41abe8fde8cf9865e720683e1e8d1a36ca8b77dfbf6f9f9f91142e8dc4500b8c727b7d424b0213fdc63cc983134ad9c84e9fb8af55c96c5c3484f4fa769fa76ba65788fb680fa507bc273cf3d47d38410b7015277edda85fb28df7df79d6cbda9cb8456a0e6a12c9d388162210140b724d95d9bcd66369b7d7d7de9eb9baef57055c5711c0f20a5a410d7f61fd4d741402078067bd671ebd6adefbdf79e5b36d6183e7cf8f01f7ef8815eb21148939393f10000cb20c39b6fbec9aa0682204c9d3a35d275e499c5c68d1b434343d905a3c9646207beecdccddab56b2322229e7ffe7914264992b66cd9c26e8d6466667ef5d557f4529709cdc0d316924488e3bd775b626ff03c8d500100d1d1d1009093938363849a1cba76ed1a161666369bd11a5156564608114451a4313f4abe97d5429b91979787142bb3f4f3c4fcfdf737cb911d85bf7af52abdf5ca2baf20d16c36b3e5a8c73c6323ebaa9f0c93154b0859b060818c67c48811f9f9f96bd6ac51c6bd964560d0654233f02413841061d142dc8b7676eac40ecce8e8688ee394c74ce2e2e23a74e860329950264a4b4b318b3320400410009c9b37df522658f3d989132728271b85e9ca952b942e8b31c616be76ed5a241a0c86b6cbc4ddc4019435461dc5c5c5ba4c6811f29e409d9f60c8a623875b1485e86896c76834721c47f51c6aa3f6f6f6e6799ee33854306e1a8a233bb63803feef5ee2f2f0f064f560434de7e4e4d03435750000eb77c4aaf9b2cf13508728ba89f46bc3cfcf8f0db6ad8288880859c8d8565a2c01e09a9b85f317c8968fe19d0dfc4fe7b1270c5dbb16efd871fac4894e9d3a01c0b56bd70821f4b425b53b5eb972a5b9b919e34f01c0ba75ebdab56be700f24a6232292d2300fcbab7a4bd7bc59933b8c1438c9d3b83979b907468c04007cb2d5bb6503adb13b4ef5b9ec1750e5576c0cdd3971e7e556cdebcb92da7bbd04cc7427f3b6906eca42111e27862b2181848f5ce9637c9aa55b39e7f5ee9327c4b242424cc5fbc98cc7e91ba9db5941c1c2ccc98413c44da1a3efce6463725d2cd61d9f44b08a18e974b972e65e96cdc00963e61c20495361f3c78b08d3370c78e1d893bb0c767dd62d1a245ca5cba4c6806b29e71d261cbfc3957adaab97efde79f7f66bf87724b4c9f3e1d43c339b2b395650aaddd90580fcc8d1b3752fa1b6fbc8144d6e62c6b33dd003f7efcb8ec16cd42556a42882c64ae0c3b76eca09ceaa7257d7c7cdcca04214425bed3cc9933dd66d165422b905b008d73e6009dfa71316534928103db070501405e5e5e7a7afab56bd7eaebeb9b9a9aec767b4040808f8f4f5d5d5d535313cff346a3d16c36070606f6e8d1836a3286316338b399331ac16020763b0070eddaa1e2f4cc33cff8f8f84892c4ce0d13264c387cf8303a4dd1687abd7bf70e0e0e763a9dca2f69cd9f3fbf53a74e369bedf7bfffbdec567676b6d96c1604811aea0160debc79a9a9a968f8e3388e6a6284109bcdc64e8766b3393b3b3b202080e338aa13a2122f0842404080a79f75f1e2c5b1b1b193264d22addd0f0b0a0a58e3390b5d26b4024ed669d74411d56151923a188d0050e974dee352fcebebeb4d269317b30eb878f162454545af5ebdd8a31c68300780eaea6a5f5f5fdce06c02a8771555258a3c00d4d6060606e268adafafa7d199309292288ab84ea4c5daed761491ebd7af1b8d46dc081245b1a1a1818d32b36fdfbe4b972e0d1932845d00b2d8bd7b77bf7efda8b489a2c8b900009224d5d4d4701ce7e7e7c7f250a337fe621cc74992545f5fcfc68c3870e0c0b973e7468c1881ed1104a1b8b81843fe2627270f1f3edcd7d7b7b9b979d3a64d8f3df6982c2c852e139a816c064f4c4ab2c4c4586262423b74686a6a6ab2d9828283f7efdf8f77870e1d3a6cd830cafce69b6f6221414141478f1e45e2d9b367030303316e6d7c7cfc14d737bd0a0a0a225c0a78977befb5c4c4582c96b0b03049921c0e476868a8c562b1582c0909098490efbefb2e2a2a2a363676f4e8d198a5b9b9d96c36d7d6d61242323232060f1e8cf413274e040707d3262d5ab4089b141d1d7df2e449a58a82d167dab76f8f2d2c2b2b8b88888889898989891939722421a4b0b0302a2aca62b18c193306b34c9e3cb943870eb404abd5faf0c30f1342d2d2d2323333297df5ead558754242c2f9f3e791181717979696969a9a9a9c9c8c94071e7800dc7da2449709cd40d633eccbaba1a1011dc21f7cf041bc9b94949494948469d9f70f83828230d83a6e553a1c0e4208aa25c8bf6cd9329a66671a4992641fdf20847cf3cd37f472eddab5281300505d5d4d0841f3171685515a314d83a521626262943241efce9a350b458a526263630921ec8709366fde4c5c8b035a82d168c4af50464646f6ecd913896c8301e0befbee9355072edd8c5ebefbeebb6a32e1ededddb16347abd59a989888ea1a30d171fdfdfde9cc3c75ea5400c8ccccfcf0c30fa3a2a26a6b6bd12081333066c4b91aa304984c269e6fa9cec7c7c762b158add6ae5dbb721c8793a1d56ab55aad18ae030b79e8a187c0f551072c103971aedebf7f3fb4de3d1e346810003cfbecb3b836aca8a8903d1d9e0f5bb3660db84e53d3aa535353d12f0447cf830f3e082e47e9c18307b3bf26ee750380d96ca62a35fa2fcd9831e3ef7fff3b00949494d0da636363535252f07cf8f6eddb01a0b0b01014e76bf4b793662013dec0c0c0152b56d04beaf780db677dfaf44949492184a0c59fddb4a245e1192cfc9003ae7de6cc994308c9cfcfe7791e79fcfdfd8b8a8a685eb469b3cdc068a4c4153b9f10826fb0ebd7af1342d0ef11e7407c23d136d0af795dbb760d1da559e0891b42c8c68d1b455124aef3ac2ccf071f7c809469d3a6e14e35da3c0e1d3a44084177429cedbb74e942ab03806eddba611a3da9297dfbf6edb4f075ebd6797b7b13429e7aea2959db7499d00adcf484dbf8b773e6cc612f71a3a3a8a88852d059d62da8b2ab5e8bdb703043860c511271acb181410160e7ce9de07a050340484888d2591f1d068b8a8aa64e9d4a272db78d0180010306a0b0e20a11274b0c842afba201dea2ce4bb1b1b1d81804ab8f582c1687c3515a5aaab49ceb32a115c82d801cc7edddbb97e7f9a6a626ba8d9c9292b26bd72e96edf8f1e3e03a5b88b07a38a2d2b76f5f998687282a2aaaa8a8686c6ca406e4bcbc3c9ee7bdbcbce82735cacbcbe972890521243e3ebeacacece8d1a37468e3c9783698873202075a26a64d9b26db6dcecdcd351a8df7dc73cfd34fb7b8c45fb87061ddba75d4113d383818cbdfb973272b4c88bd7bf77a7b7bb35f62462d0e51585878e6cc99868686dcdc5cfc0af0b871e3946e89ba4c6806b2199cb567353434a0ee84ab279bcd4675278c3543dc41a63b61e887828282d5ab57b3ba13ad053f82256b12ea4e38c0d1d2c0ea4e898989f8a5e0891327a27412429e7cf249d6ece10953a64c0180356bd6e0251b0b049531d49db0ea41830621db430f3d84ebc4e8e8e8d4d4542452dd69f2e4c99d18973016ca9f1abfc274faf4695d77d228dad413785e61d5aa5574bf85d573366edcb872e5ca152b56503f5416555555168b252727c7d3be8a8a4f0a0674628f6850dcb87163e8d0a1dbb66da3dfdcb0d96cd436fec61b6fac5ab56ae5ca95686261f1fefbef0300fb5d39b72dc1aad7af5f8f9753a64c4175f1fcf9f334680e456363e32d4f5750a069e0fefbef97d1e533362164c284095959590e87c36432a10fa4cd66b35aadefbcf34e7a7a3a3688dd385bb66c198d1ea0dcbfadabab9b3f7ffeb3cf3eebe5e5c54aeb0b2fbc3070e0c0a6a626fafcdbb66de3388e3549797b7b272626ba0dd37de3c68d77de79272a2a8a6e359bcd661af0233737977ed09c86fea658b468516e6eeeebafbf4e55f3a2a2222f2f2f763fc3cbcb2b2d2d8d9eda7be28927d0c201ad7de310269349f999318ab973e7666464506fd2b8b8b8a143877efef9e7df7efb2dabe6e86f27cd40366f040606fee94f7fa2973863575757e3572cbb77ef8e33f6a79f7e4af3f6efdfdfd7d717c7b272c65eb060011a20333232d8197bd3a64db4169cb1d94ff1e18c3d69d2a4a0a020a4c8666cdc3c00573c7e420846cd47e6eeddbbfbfbfb1b0c06b7ee179224711c97989848676c8cdb85c0197bf4e8d132af7a7085cdaeafaf470a9db1172c586032999415612ed6ae8340e323ee7253e832a115b8e909e52b8f10824b92e3c78fe36b1dbd28f0a06e7e7efe8e1d3b1212123c7dd5102795fdfbf7b353a2d2215e19d6e9d5575f550f43d3b3674fb4330340dfbe7dc165812f2828d8b76f5fe7ce9dd9284f08b40cce9e3d9bf54c553666c68c194a22fa5c29bf32d4b76fdfa6a626d60f9a3d772c7b849a9a9a808080d8d858368424e8f38476e0a6273c29646cb8161c6bb83dd2bb77eff4f4f413274eb0a70d65503a0fb24b48046b2d40a0b942f9a1658a575f7d95a6718b292b2b0b00d2d3d37bf4e8515e5e3e7dfa7496bfb2b2120f1bf4efdf9fb5fa29638ca2b982fdf051972e5d4e9d3ac5c640a0c0b8dad482525555455d7565cf75e8d0213ce91c1f1f2f5bcfea32a119c8a6f5a0a0a06eddba656565656666daed76d49df0c0c45b6fbd050056ab1539714f312b2babb8b8180f65e0778b95ba13716d7a53376f7f7f7fabd58ab550dd69fcf8f193264d7ae2892708b353042e370899ee3476ec584aa44f818bc779f3e67dfae9a76800973d1d1e3b7cfffdf7434343719b0b75a7f1e3c76765652d5cb890303b4500c0eee7600008ac57a63b11d78efdd2a54bb76ddb866145f0470380d4d4d4499326e193e20e3cdacca9d544d79d3406d9a8619de91a1b1b7129505555450841dda657af5ec829dbaf0f0f0f473aaa0d28137e7e7ed409bc7dfbf6743dc1be974551946dd41042d0044d08c1f73e1dfe3535358490b8b8b851a3466151ecd8ffecb3cfd8727af7ee2d7b3a3692e0d34f3f4d08610349c4c7c71342d025801092969616121242f3a2cfc7faf5eb29c562b1f4e9d387bd4bd1a54b17a4cb9e8bdd5bbb856f878edf0cb251c3deb2d96cf80980caca4a2a31e8a38758bc783165a607147094e18219005e7cf145a4a3395a598b2449b2504e8410d4b50921f831349bcd86d2892fdff0f0f00103066051050505ec5350eb100094979713056854dacb972f1342d0a88e409940333e210437621b1b1b31237a46e1717f4470703066413cf6d863b428caa6fca9e9a24a7485f46ee19435d466b3353737373737db6c36a4d0a61042ec763b6b9320841c3c78302727079f8a8266b1d96cf89a228488a2c8d2b1162505eb952489bd858d6e6868400a1e18505687282e2e7eedb5d768bd324892b472e5ca1f7ef8815ed2aaf1d1d876ca4a965d363535c97e8d2d5bb6bcf6da6bb2b6c99eb4bebe7ec99225f4e7a5d0df4e5a81dc6b5fc76f055d26b402bd27b402bd27b402bd27b402bd27b402bd27b402bd27b402bd27b402bd27b402bd27b402bd27b402bd27b402bd27b402bd27b482ff03b96f694e2ba31e030000000049454e44ae426082, 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `projectdtr`
--

CREATE TABLE `projectdtr` (
  `id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `date` varchar(50) NOT NULL,
  `AM_TimeIn` int(50) DEFAULT NULL,
  `AM_TimeOut` int(50) DEFAULT NULL,
  `PM_TimeIn` int(50) DEFAULT NULL,
  `PM_TimeOut` int(50) DEFAULT NULL,
  `RH` int(11) DEFAULT NULL,
  `OT` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `projectdtr`
--

INSERT INTO `projectdtr` (`id`, `project_id`, `employee_id`, `date`, `AM_TimeIn`, `AM_TimeOut`, `PM_TimeIn`, `PM_TimeOut`, `RH`, `OT`) VALUES
(1, 1, 1, '2021,06,13', 9, 12, 4, 5, 4, 0),
(2, 1, 1, '2021,06,14', 8, 12, 1, 5, 8, 0),
(3, 1, 1, '2021,06,15', 8, 12, 1, 5, 8, 0),
(4, 1, 1, '2021,06,16', 8, 12, 3, 5, 6, 0),
(5, 1, 1, '2021,06,17', 8, 12, 1, 5, 8, 0),
(6, 1, 1, '2021,06,18', 8, 12, 1, 5, 8, 0),
(7, 1, 1, '2021,06,19', 8, 12, 1, 5, 8, 0),
(8, 1, 1, '2021,06,20', 8, 12, 1, 5, 8, 0),
(9, 1, 1, '2021,06,21', 8, 12, 1, 5, 8, 0),
(10, 1, 1, '2021,06,22', 8, 12, 1, 5, 8, 0),
(11, 1, 1, '2021,06,23', 8, 12, 1, 5, 8, 0),
(12, 1, 1, '2021,06,24', 8, 12, 1, 5, 8, 0),
(13, 1, 1, '2021,06,25', 8, 12, 1, 5, 8, 0),
(14, 1, 1, '2021,06,26', 8, 12, 1, 5, 8, 0),
(15, 1, 1, '2021,06,27', 8, 12, 1, 5, 8, 0),
(16, 1, 1, '2021,06,28', 8, 12, 1, 5, 8, 0),
(17, 1, 1, '2021,06,29', 8, 12, 1, 5, 8, 0),
(18, 1, 1, '2021,06,30', 8, 12, 1, 5, 8, 0),
(19, 1, 1, '2021,07,01', 8, 12, 1, 5, 8, 0),
(20, 1, 1, '2021,07,02', 8, 12, 1, 5, 8, 0),
(21, 1, 1, '2021,07,03', 8, 12, 1, 5, 8, 0),
(22, 1, 1, '2021,07,04', 0, 0, 0, 0, 0, 0),
(23, 1, 1, '2021,07,05', 0, 0, 0, 0, 0, 0),
(24, 1, 1, '2021,07,06', 0, 0, 0, 0, 0, 0),
(25, 1, 1, '2021,07,07', 0, 0, 0, 0, 0, 0),
(26, 1, 1, '2021,07,08', 0, 0, 0, 0, 0, 0),
(27, 1, 1, '2021,07,09', 0, 0, 0, 0, 0, 0),
(28, 1, 1, '2021,07,10', 0, 0, 0, 0, 0, 0),
(29, 1, 1, '2021,07,11', 0, 0, 0, 0, 0, 0),
(30, 1, 1, '2021,07,12', 0, 0, 0, 0, 0, 0),
(31, 1, 1, '2021,07,13', 0, 0, 0, 0, 0, 0),
(32, 1, 1, '2021,07,14', 0, 0, 0, 0, 0, 0),
(33, 1, 1, '2021,07,15', 0, 0, 0, 0, 0, 0),
(34, 1, 1, '2021,07,16', 0, 0, 0, 0, 0, 0),
(35, 1, 1, '2021,07,17', 0, 0, 0, 0, 0, 0),
(36, 1, 1, '2021,07,18', 0, 0, 0, 0, 0, 0),
(37, 1, 1, '2021,07,19', 0, 0, 0, 0, 0, 0),
(38, 1, 1, '2021,07,20', 0, 0, 0, 0, 0, 0),
(39, 1, 1, '2021,07,21', 0, 0, 0, 0, 0, 0),
(40, 1, 1, '2021,07,22', 0, 0, 0, 0, 0, 0),
(41, 1, 1, '2021,07,23', 0, 0, 0, 0, 0, 0),
(42, 1, 1, '2021,07,24', 0, 0, 0, 0, 0, 0),
(43, 1, 1, '2021,07,25', 0, 0, 0, 0, 0, 0),
(44, 1, 1, '2021,07,26', 0, 0, 0, 0, 0, 0),
(125, 1, 3, '2021,06,13', 8, 12, 1, 5, 8, 0),
(126, 1, 3, '2021,06,14', 8, 12, 1, 5, 8, 0),
(127, 1, 3, '2021,06,15', 8, 12, 1, 5, 8, 0),
(128, 1, 3, '2021,06,16', 8, 12, 1, 5, 8, 0),
(129, 1, 3, '2021,06,17', 8, 12, 1, 5, 8, 0),
(130, 1, 3, '2021,06,18', 8, 12, 1, 5, 8, 0),
(131, 1, 3, '2021,06,19', 8, 12, 1, 5, 8, 0),
(132, 1, 3, '2021,06,20', 8, 12, 1, 5, 8, 0),
(133, 1, 3, '2021,06,21', 8, 12, 1, 5, 8, 0),
(134, 1, 3, '2021,06,22', 8, 12, 1, 5, 8, 0),
(135, 1, 3, '2021,06,23', 8, 12, 1, 5, 8, 0),
(136, 1, 3, '2021,06,24', 8, 12, 1, 5, 8, 0),
(137, 1, 3, '2021,06,25', 8, 12, 1, 5, 8, 0),
(138, 1, 3, '2021,06,26', 8, 12, 1, 5, 8, 0),
(139, 1, 3, '2021,06,27', 8, 12, 1, 5, 8, 0),
(140, 1, 3, '2021,06,28', 8, 12, 1, 5, 8, 0),
(141, 1, 3, '2021,06,29', 8, 12, 1, 5, 8, 0),
(142, 1, 3, '2021,06,30', 8, 12, 1, 5, 8, 0),
(143, 1, 3, '2021,07,01', 8, 12, 1, 5, 8, 0),
(144, 1, 3, '2021,07,02', 8, 12, 1, 5, 8, 0),
(145, 1, 3, '2021,07,03', 8, 12, 1, 5, 8, 0),
(146, 1, 3, '2021,07,04', 0, 0, 0, 0, 0, 0),
(147, 1, 3, '2021,07,05', 0, 0, 0, 0, 0, 0),
(148, 1, 3, '2021,07,06', 0, 0, 0, 0, 0, 0),
(149, 1, 3, '2021,07,07', 0, 0, 0, 0, 0, 0),
(150, 1, 3, '2021,07,08', 0, 0, 0, 0, 0, 0),
(151, 1, 3, '2021,07,09', 0, 0, 0, 0, 0, 0),
(152, 1, 3, '2021,07,10', 0, 0, 0, 0, 0, 0),
(153, 1, 3, '2021,07,11', 0, 0, 0, 0, 0, 0),
(154, 1, 3, '2021,07,12', 0, 0, 0, 0, 0, 0),
(155, 1, 3, '2021,07,13', 0, 0, 0, 0, 0, 0),
(156, 1, 3, '2021,07,14', 0, 0, 0, 0, 0, 0),
(157, 1, 3, '2021,07,15', 0, 0, 0, 0, 0, 0),
(158, 1, 3, '2021,07,16', 0, 0, 0, 0, 0, 0),
(159, 1, 3, '2021,07,17', 0, 0, 0, 0, 0, 0),
(160, 1, 3, '2021,07,18', 0, 0, 0, 0, 0, 0),
(161, 1, 3, '2021,07,19', 0, 0, 0, 0, 0, 0),
(162, 1, 3, '2021,07,20', 0, 0, 0, 0, 0, 0),
(163, 1, 3, '2021,07,21', 0, 0, 0, 0, 0, 0),
(164, 1, 3, '2021,07,22', 0, 0, 0, 0, 0, 0),
(165, 1, 3, '2021,07,23', 0, 0, 0, 0, 0, 0),
(166, 1, 3, '2021,07,24', 0, 0, 0, 0, 0, 0),
(167, 1, 3, '2021,07,25', 0, 0, 0, 0, 0, 0),
(168, 1, 3, '2021,07,26', 0, 0, 0, 0, 0, 0),
(169, 1, 3, '2021,07,27', 0, 0, 0, 0, 0, 0),
(170, 1, 3, '2021,07,28', 0, 0, 0, 0, 0, 0),
(171, 1, 3, '2021,07,29', 0, 0, 0, 0, 0, 0),
(172, 1, 3, '2021,07,30', 0, 0, 0, 0, 0, 0),
(173, 1, 3, '2021,07,31', 0, 0, 0, 0, 0, 0),
(174, 1, 3, '2021,08,01', 0, 0, 0, 0, 0, 0),
(175, 1, 3, '2021,08,02', 0, 0, 0, 0, 0, 0),
(176, 1, 3, '2021,08,03', 0, 0, 0, 0, 0, 0),
(177, 1, 3, '2021,08,04', 0, 0, 0, 0, 0, 0),
(178, 1, 3, '2021,08,05', 0, 0, 0, 0, 0, 0),
(179, 1, 3, '2021,08,06', 0, 0, 0, 0, 0, 0),
(180, 1, 3, '2021,08,07', 0, 0, 0, 0, 0, 0),
(181, 1, 3, '2021,08,08', 0, 0, 0, 0, 0, 0),
(182, 1, 3, '2021,08,09', 0, 0, 0, 0, 0, 0),
(183, 1, 3, '2021,08,10', 0, 0, 0, 0, 0, 0),
(184, 1, 3, '2021,08,11', 0, 0, 0, 0, 0, 0),
(185, 1, 3, '2021,08,12', 0, 0, 0, 0, 0, 0),
(186, 1, 3, '2021,08,13', 0, 0, 0, 0, 0, 0),
(187, 8, 4, '2021,06,21', 8, 12, 1, 5, 8, 0),
(188, 8, 4, '2021,06,22', 8, 12, 1, 5, 8, 0),
(189, 8, 4, '2021,06,23', 8, 12, 1, 5, 8, 0),
(190, 8, 4, '2021,06,24', 8, 12, 1, 5, 8, 0),
(191, 8, 4, '2021,06,25', 8, 12, 1, 5, 8, 0),
(192, 8, 4, '2021,06,26', 8, 12, 1, 5, 8, 0),
(193, 8, 4, '2021,06,27', 8, 12, 1, 5, 8, 0),
(194, 8, 4, '2021,06,28', 8, 12, 1, 5, 8, 0),
(195, 8, 4, '2021,06,29', 8, 12, 1, 5, 8, 0),
(196, 8, 4, '2021,06,30', 8, 12, 1, 5, 8, 0),
(197, 8, 4, '2021,07,01', 8, 12, 1, 5, 8, 0),
(198, 8, 4, '2021,07,02', 8, 12, 1, 5, 8, 0),
(199, 8, 4, '2021,07,03', 8, 12, 1, 5, 8, 0),
(200, 8, 4, '2021,07,04', 8, 12, 1, 5, 8, 0),
(201, 8, 4, '2021,07,05', 0, 0, 0, 0, 0, 0),
(202, 8, 4, '2021,07,06', 0, 0, 0, 0, 0, 0),
(203, 8, 4, '2021,07,07', 0, 0, 0, 0, 0, 0),
(204, 8, 4, '2021,07,08', 0, 0, 0, 0, 0, 0),
(205, 8, 4, '2021,07,09', 0, 0, 0, 0, 0, 0),
(206, 8, 4, '2021,07,10', 0, 0, 0, 0, 0, 0),
(207, 8, 4, '2021,07,11', 0, 0, 0, 0, 0, 0),
(208, 8, 4, '2021,07,12', 0, 0, 0, 0, 0, 0),
(209, 8, 4, '2021,07,13', 0, 0, 0, 0, 0, 0),
(210, 8, 4, '2021,07,14', 0, 0, 0, 0, 0, 0),
(211, 8, 4, '2021,07,15', 0, 0, 0, 0, 0, 0),
(212, 8, 4, '2021,07,16', 0, 0, 0, 0, 0, 0),
(213, 8, 4, '2021,07,17', 0, 0, 0, 0, 0, 0),
(214, 8, 4, '2021,07,18', 0, 0, 0, 0, 0, 0),
(215, 8, 4, '2021,07,19', 0, 0, 0, 0, 0, 0),
(216, 8, 4, '2021,07,20', 0, 0, 0, 0, 0, 0),
(217, 8, 4, '2021,07,21', 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `projecte`
--

CREATE TABLE `projecte` (
  `projectE_id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `rate` double DEFAULT NULL,
  `work_start` varchar(50) DEFAULT NULL,
  `work_end` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `projecte`
--

INSERT INTO `projecte` (`projectE_id`, `project_id`, `employee_id`, `rate`, `work_start`, `work_end`) VALUES
(1, 1, 1, 62.5, '2021,6,13', '2021,7,26'),
(3, 1, 3, 62.5, '2021,6,13', '2021,8,13'),
(4, 8, 4, 62.5, '2021,6,21', '2021,7,21');

-- --------------------------------------------------------

--
-- Table structure for table `projecte_balance`
--

CREATE TABLE `projecte_balance` (
  `id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `date` varchar(50) NOT NULL,
  `balance` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `projecte_balance`
--

INSERT INTO `projecte_balance` (`id`, `project_id`, `employee_id`, `title`, `date`, `balance`) VALUES
(1, 1, 1, 'Add Allowance', '2021,6,13', 300),
(9, 1, 1, 'Add Cash Advance', '2021,6,13', 200),
(10, 1, 1, 'Less Cash Advance', '2021,6,13', -200),
(17, 8, 4, 'Add Allowance', '2021,6,21', 500),
(18, 8, 4, 'Add Cash Advance', '2021,6,21', 200),
(19, 8, 4, 'Less Cash Advance', '2021,6,21', -200);

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `project_id` int(100) NOT NULL,
  `project_title` varchar(100) NOT NULL,
  `project_clientname` varchar(50) NOT NULL,
  `project_site` varchar(150) NOT NULL,
  `project_start` varchar(50) NOT NULL,
  `project_end` varchar(50) NOT NULL,
  `project_category` varchar(25) NOT NULL,
  `project_quantity` int(100) NOT NULL,
  `project_unit` varchar(50) NOT NULL,
  `project_unitprice` double NOT NULL,
  `project_amount` double NOT NULL,
  `project_scope` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`project_id`, `project_title`, `project_clientname`, `project_site`, `project_start`, `project_end`, `project_category`, `project_quantity`, `project_unit`, `project_unitprice`, `project_amount`, `project_scope`) VALUES
(1, 'Cavite State University', 'Juan Dela Cruz', 'Imus Cavite', '2021,6,13', '2021,8,13', 'Mechanical Works', 1, 'Lot', 100000, 100000, 'Civil With Interior Design'),
(8, 'Salinas General Hospital', 'Juan Dela Cruz', 'Salinas 1', '2021,6,21', '2021,7,21', 'Mechanical Works', 1, 'Lot', 100000, 100000, 'Sample Scope');

-- --------------------------------------------------------

--
-- Table structure for table `project_payroll`
--

CREATE TABLE `project_payroll` (
  `id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `startDate` varchar(50) NOT NULL,
  `endDate` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `position` varchar(25) NOT NULL,
  `rateHrs` double NOT NULL,
  `TRH` int(11) NOT NULL,
  `OT` int(11) NOT NULL,
  `Allowance` double NOT NULL,
  `CashAdv` double NOT NULL,
  `LessCA` double NOT NULL,
  `Balance` double NOT NULL,
  `Netpay` double NOT NULL,
  `rateDay` double NOT NULL,
  `AmountReg` double NOT NULL,
  `AmountOT` double NOT NULL,
  `TotalAmount` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `project_payroll`
--

INSERT INTO `project_payroll` (`id`, `project_id`, `employee_id`, `startDate`, `endDate`, `name`, `position`, `rateHrs`, `TRH`, `OT`, `Allowance`, `CashAdv`, `LessCA`, `Balance`, `Netpay`, `rateDay`, `AmountReg`, `AmountOT`, `TotalAmount`) VALUES
(1, 1, 1, '2021,06,13', '2021,06,19', ' Ong , Francis C.', 'General Manager', 62.5, 50, 0, 300, 200, -200, 0, 3225, 500, 3125, 0, 3425),
(2, 1, 1, '2021,06,20', '2021,06,26', ' Ong , Francis C.', 'General Manager', 62.5, 56, 0, 0, 0, 0, 0, 3500, 500, 3500, 0, 3500),
(3, 1, 1, '2021,06,27', '2021,07,03', ' Ong , Francis C.', 'General Manager', 62.5, 56, 0, 0, 0, 0, 0, 3500, 500, 3500, 0, 3500),
(4, 1, 1, '2021,07,04', '2021,07,10', ' Ong , Francis C.', 'General Manager', 62.5, 0, 0, 0, 0, 0, 0, 0, 500, 0, 0, 0),
(5, 1, 1, '2021,07,11', '2021,07,17', ' Ong , Francis C.', 'General Manager', 62.5, 0, 0, 0, 0, 0, 0, 0, 500, 0, 0, 0),
(6, 1, 1, '2021,07,18', '2021,07,24', ' Ong , Francis C.', 'General Manager', 62.5, 0, 0, 0, 0, 0, 0, 0, 500, 0, 0, 0),
(7, 1, 1, '2021,07,25', '2021,07,31', ' Ong , Francis C.', 'General Manager', 62.5, 0, 0, 0, 0, 0, 0, 0, 500, 0, 0, 0),
(8, 1, 1, '2021,08,01', '2021,08,07', ' Ong , Francis C.', 'General Manager', 62.5, 0, 0, 0, 0, 0, 0, 0, 500, 0, 0, 0),
(9, 1, 1, '2021,08,08', '2021,08,13', ' Ong , Francis C.', 'General Manager', 62.5, 0, 0, 0, 0, 0, 0, 0, 500, 0, 0, 0),
(19, 1, 3, '2021,06,13', '2021,06,19', 'Dela Cruz , Jason C.', 'General Manager', 62.5, 56, 0, 0, 0, 0, 0, 3500, 500, 3500, 0, 3500),
(20, 1, 3, '2021,06,20', '2021,06,26', 'Dela Cruz , Jason C.', 'General Manager', 62.5, 56, 0, 0, 0, 0, 0, 3500, 500, 3500, 0, 3500),
(21, 1, 3, '2021,06,27', '2021,07,03', 'Dela Cruz , Jason C.', 'General Manager', 62.5, 56, 0, 0, 0, 0, 0, 3500, 500, 3500, 0, 3500),
(22, 1, 3, '2021,07,04', '2021,07,10', 'Dela Cruz , Jason C.', 'General Manager', 62.5, 0, 0, 0, 0, 0, 0, 0, 500, 0, 0, 0),
(23, 1, 3, '2021,07,11', '2021,07,17', 'Dela Cruz , Jason C.', 'General Manager', 62.5, 0, 0, 0, 0, 0, 0, 0, 500, 0, 0, 0),
(24, 1, 3, '2021,07,18', '2021,07,24', 'Dela Cruz , Jason C.', 'General Manager', 62.5, 0, 0, 0, 0, 0, 0, 0, 500, 0, 0, 0),
(25, 1, 3, '2021,07,25', '2021,07,31', 'Dela Cruz , Jason C.', 'General Manager', 62.5, 0, 0, 0, 0, 0, 0, 0, 500, 0, 0, 0),
(26, 1, 3, '2021,08,01', '2021,08,07', 'Dela Cruz , Jason C.', 'General Manager', 62.5, 0, 0, 0, 0, 0, 0, 0, 500, 0, 0, 0),
(27, 1, 3, '2021,08,08', '2021,08,13', 'Dela Cruz , Jason C.', 'General Manager', 62.5, 0, 0, 0, 0, 0, 0, 0, 500, 0, 0, 0),
(28, 8, 4, '2021,06,21', '2021,06,27', 'Agaton , Henry T.', 'General Manager', 62.5, 56, 0, 500, 200, -200, 0, 3800, 500, 3500, 0, 4000),
(29, 8, 4, '2021,06,28', '2021,07,04', 'Agaton , Henry T.', 'General Manager', 62.5, 56, 0, 0, 0, 0, 0, 3500, 500, 3500, 0, 3500),
(30, 8, 4, '2021,07,05', '2021,07,11', 'Agaton , Henry T.', 'General Manager', 62.5, 0, 0, 0, 0, 0, 0, 0, 500, 0, 0, 0),
(31, 8, 4, '2021,07,12', '2021,07,18', 'Agaton , Henry T.', 'General Manager', 62.5, 0, 0, 0, 0, 0, 0, 0, 500, 0, 0, 0),
(32, 8, 4, '2021,07,19', '2021,07,21', 'Agaton , Henry T.', 'General Manager', 62.5, 0, 0, 0, 0, 0, 0, 0, 500, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `receipt_no` int(11) NOT NULL,
  `trans_date` varchar(25) NOT NULL,
  `supplier` varchar(100) NOT NULL,
  `address` text NOT NULL,
  `articles` text NOT NULL,
  `unit` varchar(25) NOT NULL,
  `unit_price` double NOT NULL,
  `quantity` double NOT NULL,
  `total` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`id`, `project_id`, `receipt_no`, `trans_date`, `supplier`, `address`, `articles`, `unit`, `unit_price`, `quantity`, `total`) VALUES
(1, 1, 3434, '2021,6,13', 'Hardware', 'Salinas', 'Sample/Nails', '12', 1, 2, 2),
(2, 1, 3435, '2021,6,13', 'sadasdsad', 'asdas', 'dasdasd', 'kg', 0.5, 2, 1),
(3, 1, 21321, '2021,6,13', 'asd', 'asdasd', 'sadasd', '11', 1, 1, 1),
(5, 1, 3435, '2021,6,13', '1', '1', '1', '1', 1, 3, 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `activity`
--
ALTER TABLE `activity`
  ADD PRIMARY KEY (`Act_id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projectdtr`
--
ALTER TABLE `projectdtr`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projecte`
--
ALTER TABLE `projecte`
  ADD PRIMARY KEY (`projectE_id`);

--
-- Indexes for table `projecte_balance`
--
ALTER TABLE `projecte_balance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`project_id`);

--
-- Indexes for table `project_payroll`
--
ALTER TABLE `project_payroll`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity`
--
ALTER TABLE `activity`
  MODIFY `Act_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=317;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `projectdtr`
--
ALTER TABLE `projectdtr`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=218;

--
-- AUTO_INCREMENT for table `projecte`
--
ALTER TABLE `projecte`
  MODIFY `projectE_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `projecte_balance`
--
ALTER TABLE `projecte_balance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `project_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `project_payroll`
--
ALTER TABLE `project_payroll`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
