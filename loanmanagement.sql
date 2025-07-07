-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 07, 2025 at 06:28 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `loanmanagement`
--

-- --------------------------------------------------------

--
-- Table structure for table `loans`
--

CREATE TABLE `loans` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `tenure_months` int(11) DEFAULT NULL,
  `purpose` text DEFAULT NULL,
  `status` tinyint(4) DEFAULT 0 COMMENT '0 = Pending, 1 = Approved, 2 = Rejected',
  `applied_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `approved_at` timestamp NULL DEFAULT NULL,
  `rejected_at` timestamp NULL DEFAULT NULL,
  `approve_person` text NOT NULL,
  `inactive` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `loans`
--

INSERT INTO `loans` (`id`, `user_id`, `amount`, `tenure_months`, `purpose`, `status`, `applied_at`, `approved_at`, `rejected_at`, `approve_person`, `inactive`) VALUES
(1, NULL, '5000.00', 6, 'test', 1, '0000-00-00 00:00:00', NULL, NULL, '{\"1\":{\"user_id\":\"001\",\"status\":0,\"remarks\":\"\",\"updated_at\":null}}', 1),
(2, NULL, '6000.00', 6, 'test', 1, '2025-07-06 12:48:35', NULL, NULL, '{\"1\":{\"user_id\":\"001\",\"status\":0,\"remarks\":\"\",\"updated_at\":null}}', 1),
(3, 10, '5000.00', 6, 'test', 1, '2025-07-06 12:51:00', NULL, NULL, '{\"1\":{\"user_id\":\"001\",\"status\":0,\"remarks\":\"\",\"updated_at\":null}}', 0),
(4, 14, '10000.00', 12, 'testing', 0, '2025-07-06 18:32:57', NULL, NULL, '{\"1\":{\"user_id\":\"10\",\"status\":0,\"remarks\":\"\",\"updated_at\":null}}', 0),
(5, 14, '12000.00', 6, 'test12', 0, '2025-07-06 18:34:47', NULL, NULL, '{\"1\":{\"user_id\":\"001\",\"status\":0,\"remarks\":\"\",\"updated_at\":null}}', 0),
(6, 14, '12000.00', 6, 'test123', 0, '2025-07-06 18:39:37', NULL, NULL, '{\"1\":{\"user_id\":\"001\",\"status\":0,\"remarks\":\"\",\"updated_at\":null}}', 0),
(7, NULL, '10000.00', 6, 'test', 0, '2025-07-06 19:01:15', NULL, NULL, '{\"1\":{\"user_id\":\"010\",\"status\":0,\"remarks\":\"\",\"updated_at\":null}}', 0),
(8, NULL, '10000.00', 6, 'test', 0, '2025-07-06 19:01:15', NULL, NULL, '{\"1\":{\"user_id\":\"010\",\"status\":0,\"remarks\":\"\",\"updated_at\":null}}', 0),
(9, 16, '150000.00', 6, 'test', 1, '2025-07-06 20:40:35', NULL, NULL, '{\"1\":{\"user_id\":\"10\",\"status\":0,\"remarks\":\"\",\"updated_at\":null}}', 0),
(10, 16, '50000.00', 12, 'testqwert', 2, '2025-07-06 20:44:10', NULL, NULL, '{\"1\":{\"user_id\":\"10\",\"status\":0,\"remarks\":\"\",\"updated_at\":null}}', 0),
(11, 17, '1000000.00', 6, 'test', 0, '2025-07-06 20:57:58', NULL, NULL, '{\"1\":{\"user_id\":\"10\",\"status\":0,\"remarks\":\"\",\"updated_at\":null}}', 0);

-- --------------------------------------------------------

--
-- Table structure for table `loan_approval_person`
--

CREATE TABLE `loan_approval_person` (
  `id` int(11) NOT NULL,
  `approval_person` text NOT NULL,
  `inactive` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `loan_approval_person`
--

INSERT INTO `loan_approval_person` (`id`, `approval_person`, `inactive`) VALUES
(1, '{\"1\": {\"user_id\":\"10\"}}', 0);

-- --------------------------------------------------------

--
-- Table structure for table `repayments`
--

CREATE TABLE `repayments` (
  `id` int(11) NOT NULL,
  `loan_id` int(11) DEFAULT NULL,
  `payment_date` date DEFAULT NULL,
  `amount_paid` decimal(10,2) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `UserType` int(11) NOT NULL DEFAULT 0,
  `inactive` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `UserType`, `inactive`) VALUES
(1, 'Avinash', 'avinash@gmail.com', '1234567890', 0, 1),
(2, 'AVINASH KUMAR DUBEY', 'avinashduey8@gmail.com', '06206267199', 0, 1),
(3, 'Akd', 'avinashduey8@gmail.com', '06206267199', 0, 1),
(4, 'Akd', 'avinashduey8@gmail.com', '06206267199', 0, 1),
(5, 'Akd', 'avinashduey8@gmail.com', '06206267199', 0, 1),
(6, 'Akd', 'avinashduey8@gmail.com', '06206267199', 0, 1),
(7, 'Akd', 'avinashduey8@gmail.com', '06206267199', 0, 1),
(8, 'Akd', 'avinashduey8@gmail.com', '06206267199', 0, 1),
(9, 'Akd', 'avinashduey8@gmail.com', '06206267199', 0, 1),
(10, 'Akd', 'avinashduey8@gmail.com', '06206267199', 1, 0),
(11, NULL, NULL, NULL, 0, 1),
(12, 'Ak', 'Ak@gmail.com', '789456123', 0, 0),
(13, 'AVINASH KUMAR DUBEY1', 'avinashduey8@gmail1.com', '1123457890', 0, 0),
(14, 'Akash', 'avinash@gmail.com', '1234567890', 0, 0),
(15, 'hayat', 'hayat@gmail.com', '9006035369', 0, 0),
(16, 'Iqbal', 'hayat@123.com', '789999999999', 0, 0),
(17, 'Sandeep', 'sandeep@gmail.com', '802158818', 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `loans`
--
ALTER TABLE `loans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `loan_approval_person`
--
ALTER TABLE `loan_approval_person`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `repayments`
--
ALTER TABLE `repayments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `loan_id` (`loan_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `loans`
--
ALTER TABLE `loans`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `loan_approval_person`
--
ALTER TABLE `loan_approval_person`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `repayments`
--
ALTER TABLE `repayments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `loans`
--
ALTER TABLE `loans`
  ADD CONSTRAINT `loans_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `repayments`
--
ALTER TABLE `repayments`
  ADD CONSTRAINT `repayments_ibfk_1` FOREIGN KEY (`loan_id`) REFERENCES `loans` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
