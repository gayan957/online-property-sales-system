-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 07, 2024 at 09:03 AM
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
-- Database: `property_sales_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `a_id` int(5) NOT NULL,
  `a_name` varchar(30) NOT NULL,
  `a_email` varchar(40) NOT NULL,
  `a_password` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`a_id`, `a_name`, `a_email`, `a_password`) VALUES
(1001, 'Ishara Senerath', 'ishara@yahoo.com', 'Ishara@8219'),
(1003, 'Pasan Sandaruwan', 'pasan@net.com', 'Pasan@123'),
(1004, 'kisal Nelaka', 'kisal@net.com', 'Kisal@1234');

-- --------------------------------------------------------

--
-- Table structure for table `agent`
--

CREATE TABLE `agent` (
  `agent_id` int(5) NOT NULL,
  `agent_name` varchar(50) NOT NULL,
  `agent_contact` int(10) NOT NULL,
  `agent_email` varchar(30) NOT NULL,
  `agent_address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contact_form`
--

CREATE TABLE `contact_form` (
  `id` int(6) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact_form`
--

INSERT INTO `contact_form` (`id`, `name`, `email`, `message`, `created_at`, `status`) VALUES
(12, 'Gayan', 'gayan975@gmail.com', 'How can I find Kurunegala are agent.', '2024-10-06 17:02:25', '');

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `s_id` int(5) NOT NULL,
  `user_id` int(5) NOT NULL,
  `s_location` text NOT NULL,
  `s_mobile` int(10) NOT NULL,
  `s_price` decimal(30,0) NOT NULL,
  `s_image` varchar(255) NOT NULL,
  `s_details` varchar(255) NOT NULL,
  `s_approval` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`s_id`, `user_id`, `s_location`, `s_mobile`, `s_price`, `s_image`, `s_details`, `s_approval`) VALUES
(19, 1, 'Thalawathugoda jun', 762986600, 21800000, 'uploads/thumb_5635374_1707805138_5791.jpeg', 'Type: Residential land', 'Yes'),
(20, 1, 'Welivita Road,Malabe', 707103081, 200000000000, 'uploads/2302070902045.jpg', '1.5km to Slit Campus', 'Yes'),
(23, 3, 'Dehiwala 3 BR Apartment', 706415168, 45500000, 'uploads/fitted.jpg', 'Bedrooms:\r\n3\r\nBathrooms:\r\n2\r\nSize:\r\n1,200 sqft\r\nCompletion Status:\r\nReady\r\nFurnished status:\r\nFully furnished\r\nApartment Complex:\r\nOther Apartments', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(5) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `email` varchar(40) NOT NULL,
  `password` varchar(20) NOT NULL,
  `contact` int(10) NOT NULL,
  `address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `fname`, `lname`, `email`, `password`, `contact`, `address`) VALUES
(1, 'Gayan', 'De Silva', 'gayands975@gmail.com', 'Gayan@8219', 763552706, 'Mallawaththa, pahalabadalawa, Maspotha.'),
(3, 'Primesh', 'Marasinghe', 'primesh@yahoo.com', 'Primesh@8219', 789049851, 'kadupaththe inne'),
(5, 'Viraj', 'Buddhika', 'mdviraj@gmail.com', 'Viraj@8219', 740425915, 'Diyathalawa, Bandarawela');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`a_id`);

--
-- Indexes for table `agent`
--
ALTER TABLE `agent`
  ADD PRIMARY KEY (`agent_id`);

--
-- Indexes for table `contact_form`
--
ALTER TABLE `contact_form`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`s_id`),
  ADD KEY `sales_fk` (`user_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `a_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1005;

--
-- AUTO_INCREMENT for table `agent`
--
ALTER TABLE `agent`
  MODIFY `agent_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `contact_form`
--
ALTER TABLE `contact_form`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `s_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `sales`
--
ALTER TABLE `sales`
  ADD CONSTRAINT `sales_fk` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
