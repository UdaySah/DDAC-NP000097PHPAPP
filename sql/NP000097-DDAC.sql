-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 05, 2019 at 12:11 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `np000097-ddac`
--

-- --------------------------------------------------------

--
-- Table structure for table `container`
--

CREATE TABLE `container` (
  `container_id` int(10) NOT NULL,
  `Model` varchar(50) DEFAULT NULL,
  `description` varchar(150) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `container`
--

INSERT INTO `container` (`container_id`, `Model`, `description`, `status`) VALUES
(1, 'CONTAINER1', 'Maximum Weight of Container  500 KG', 'Delivered'),
(2, 'CONTAINER2', 'Maximum Weight of Container  1000 KG', 'Loaded'),
(3, 'CONTAINER11', 'Maximum Weight of Container  500 KG', 'Available'),
(4, 'CONTAINER7', 'Maximum Weight 4500KG', 'Loaded'),
(5, 'CONTAINER12', 'Maximum Weight of Container  500 KG', 'Loaded'),
(6, 'CONTAINER26', 'Maximum Weight 5000KG', 'Loaded'),
(7, 'CONTAINER72', 'Maximum Weight 8500KG', 'Delivered');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `Order_ID` int(10) NOT NULL,
  `Destination` varchar(20) NOT NULL,
  `Receiver_name` varchar(20) NOT NULL,
  `Receiver_Phone` varchar(20) NOT NULL,
  `Depature` varchar(20) NOT NULL,
  `Sender_name` varchar(20) NOT NULL,
  `Sender_Phone` varchar(20) NOT NULL,
  `container_model` varchar(20) NOT NULL,
  `status` varchar(20) NOT NULL,
  `containe_container_id` int(10) DEFAULT NULL,
  `schedule_schedule_id` int(10) DEFAULT NULL,
  `user_id` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`Order_ID`, `Destination`, `Receiver_name`, `Receiver_Phone`, `Depature`, `Sender_name`, `Sender_Phone`, `container_model`, `status`, `containe_container_id`, `schedule_schedule_id`, `user_id`) VALUES
(0, 'London', 'Nandesh', '9813151323', 'Sydney', 'Sushil', '9880818218', 'CONTAINER1', 'Delivered', NULL, NULL, NULL),
(1, 'Malbourne', 'Uday Kumar Sah', '9813151323', 'Cape Town', 'Uday Kumar Sah', '9813151323', 'CONTAINER2', 'Loaded', NULL, NULL, NULL),
(2, 'London', 'Uday Kumar Sah', '9813151323', 'Sydney', 'Uday Kumar Sah', '9813151323', 'CONTAINER7', 'Delivered', NULL, NULL, NULL),
(3, 'New York', 'ranjit', '9815339431', 'Cape Town', 'Uday Kumar Sah', '9813151323', 'CONTAINER11', 'Delivered', NULL, NULL, NULL),
(4, 'Malbourne', 'das', '9813151323', 'Mumbai', 'Uday Kumar Sah', '9813151323', 'CONTAINER12', 'Loaded', NULL, NULL, NULL),
(5, 'San  Francisco', 'Nandesh', '9813151323', 'Cape town', 'Uday Kumar Sah', '9813151323', 'CONTAINER12', 'Loaded', NULL, NULL, NULL),
(6, 'Sydney', 'Nandesh Sah', '9813151323', 'London', 'Uday Kumar Sah', '9813151323', 'CONTAINER7', 'Process', NULL, NULL, NULL),
(7, 'Auckland', 'Ramesh', '9860818218', 'Dubai', 'Uday', '9813151323', 'CONTAINER72', 'Delivered', NULL, NULL, NULL),
(8, 'Sydney', 'Uday Kumar Sah', '9813151323', 'Tokyo', 'Uday Kumar Sah', '9813151323', 'CONTAINER26', 'Process', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `schedule`
--

CREATE TABLE `schedule` (
  `Schedule_id` int(10) NOT NULL,
  `Destination` varchar(20) NOT NULL,
  `Arrival` time NOT NULL,
  `Warehouse_Location` varchar(20) NOT NULL,
  `Depart` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `schedule`
--

INSERT INTO `schedule` (`Schedule_id`, `Destination`, `Arrival`, `Warehouse_Location`, `Depart`) VALUES
(3, 'Europe', '01:30:00', 'Australia', '11:00:00'),
(4, 'Asia', '00:00:00', 'Europe', '05:00:00'),
(5, 'New York', '11:00:00', 'Cape Town', '10:00:00'),
(6, 'San Francisco', '11:00:00', 'Sydney', '10:00:00'),
(7, 'Europe', '11:00:00', 'Sydney', '10:00:00'),
(8, 'San Francisco', '11:00:00', 'Sydney', '10:00:00'),
(10, 'Malbourne', '11:00:00', 'Sydney', '10:00:00'),
(11, 'Auckland', '08:00:00', 'Dubai', '12:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(10) NOT NULL,
  `email` varchar(40) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `role` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `email`, `username`, `password`, `role`) VALUES
(0, 'rahul@gmail.com', 'rahul', 'rahul@123', '2'),
(1, 'udaysah8@gmail.com', 'uday', 'uday', '1'),
(2, 'ram@gmail.com', 'ram', 'ram', '2'),
(3, 'rahul@gmail.com', 'rahul', 'rahul', '2'),
(4, 'ramesh@gmail.com', 'ramesh', 'ramesh', '2');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `container`
--
ALTER TABLE `container`
  ADD PRIMARY KEY (`container_id`),
  ADD UNIQUE KEY `Model` (`Model`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`Order_ID`),
  ADD KEY `containe_container_id` (`containe_container_id`),
  ADD KEY `schedule_schedule_id` (`schedule_schedule_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `schedule`
--
ALTER TABLE `schedule`
  ADD PRIMARY KEY (`Schedule_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `container`
--
ALTER TABLE `container`
  MODIFY `container_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `Order_ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `schedule`
--
ALTER TABLE `schedule`
  MODIFY `Schedule_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`containe_container_id`) REFERENCES `container` (`container_id`),
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`schedule_schedule_id`) REFERENCES `schedule` (`Schedule_id`),
  ADD CONSTRAINT `orders_ibfk_3` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
