-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 11, 2020 at 09:27 AM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `testrestapi`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `last_login` datetime NOT NULL DEFAULT current_timestamp(),
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `name`, `last_login`, `created_at`, `updated_at`) VALUES
(1, 'admin', '$1$Dtqyvz7/$wZSaZbfHgn0UbLlVi1HHp0', 'Admin', '2020-11-11 15:25:59', '2015-12-25 10:35:16', '2015-12-25 10:35:16');

-- --------------------------------------------------------

--
-- Table structure for table `users_authentication`
--

CREATE TABLE `users_authentication` (
  `id` int(11) NOT NULL,
  `users_id` int(11) NOT NULL,
  `token` varchar(255) NOT NULL,
  `expired_at` datetime NOT NULL DEFAULT current_timestamp(),
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users_authentication`
--

INSERT INTO `users_authentication` (`id`, `users_id`, `token`, `expired_at`, `created_at`, `updated_at`) VALUES
(1, 1, '$1$6fjNSBRR$7lx.mxo/q1LbNO7f5.7w8.', '2015-12-27 23:28:00', '2015-12-27 11:28:00', '2015-12-27 11:28:00'),
(2, 1, '$1$HY2H7rB0$2U.dlCsoHX21s/gvjCypG/', '2015-12-27 23:28:10', '2015-12-27 11:28:10', '2015-12-27 11:28:10'),
(4, 1, '$1$0MwYvDtD$0Ku3V0cuu7puWqhqRh6/i/', '2020-11-12 03:09:34', '2020-11-11 13:39:34', '2020-11-11 13:39:34'),
(5, 1, 'Y18y1BcUleDnPQ', '2020-11-12 03:16:51', '2020-11-11 13:46:51', '2020-11-11 13:46:51'),
(6, 1, '3H68FUf9Dtbiw', '2020-11-12 03:17:02', '2020-11-11 13:47:02', '2020-11-11 13:47:02'),
(7, 1, '9QaOaTVtrFeuIw', '2020-11-12 03:17:54', '2020-11-11 13:47:54', '2020-11-11 13:47:54'),
(8, 1, 'RkrEMy1OdbA4tA', '2020-11-12 03:23:48', '2020-11-11 13:53:48', '2020-11-11 13:53:48'),
(9, 1, 'mtXQxp9csegk8Q', '2020-11-12 03:23:59', '2020-11-11 13:53:59', '2020-11-11 13:53:59'),
(10, 1, 'AlAPt0DvZjLorA', '2020-11-12 03:24:38', '2020-11-11 13:54:38', '2020-11-11 13:54:38'),
(11, 1, '8sYEQQGIxptsw', '2020-11-12 03:25:59', '2020-11-11 13:55:59', '2020-11-11 13:55:59');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`);

--
-- Indexes for table `users_authentication`
--
ALTER TABLE `users_authentication`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users_authentication`
--
ALTER TABLE `users_authentication`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
