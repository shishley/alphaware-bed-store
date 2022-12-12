-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 23, 2022 at 08:53 AM
-- Server version: 10.1.24-MariaDB
-- PHP Version: 7.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `alphaware`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `adminid` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adminid`, `username`, `password`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `contact_id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `message` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customerid` int(11) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `mi` varchar(1) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL,
  `country` varchar(50) NOT NULL,
  `zipcode` varchar(20) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `telephone` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(50) NOT NULL,
  `product_price` varchar(50) NOT NULL,
  `product_size` varchar(50) NOT NULL,
  `product_image` varchar(500) NOT NULL,
  `brand` varchar(100) NOT NULL,
  `category` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `product_name`, `product_price`, `product_size`, `product_image`, `brand`, `category`) VALUES
(47137, 'Sealy Crown Jewel Plush Bed', '10000', 'King', '17494614146083542sely.jpg', 'Sealy', 'basketball'),
(9137
, 'Restonic iDream Supreme Bed', '12000', 'Queen', '224035854725683841141103372nike15..jpg', 'Restonic', 'basketball'),
(648204, 'Sleepmasters SoftieZone Bed', '7000', 'Double', '66465588493403440Slepmiddbl.JPG', 'Sleepmasters', 'football'),
(533028
, 'Restonic Comfort Zone Bed', '6000', 'King', '75471609322159440restmidk.jpg', 'Restonic', 'football'),
(307541, 'Sleepmasters Pebble Sleeper Couch', '5000', 'Sleepr Couch', '96785877143183559sleepcouc.jpg', 'Sleepmasters', 'football'),
(1677, 'Sealy Posture Firm Bed', '7000', 'Queen', '85665808996398485selymidking.jpg', 'Sealy', 'football'),
(8702110
, 'Comfort Time Cush Bed', '3000', 'Single', '13684121698370868cftlowsin.jpg', 'Comfort Time', 'Running'),
(731174
, 'Sealy Bounce Sleeper Couch', '2000', 'Sleeper Couch', '18591948152777205lowslepc.jpg', 'Sealy', 'Running'),
(70657, 'Sleepmasters Single Blow Up', '400', 'Blow Up Bed', '31664342995796696blow two.jpg', 'Sleepmasters', 'Running'),
(67400, 'Restonic Soft Touch Bed', '4000', 'Double', '60699654744768211best sell.jpg', 'Restonic', 'Running'),
(24794, 'Campmaster Double Blow Up', '500', 'Blow Up Bed', '72005600725194404blow.jpg', 'Campmaster', 'Running'),
(4503, 'Campmaster Double Blow Up', '500', 'Blow Up Bed', '60424788644381021blow.jpg', 'Campmaster', 'feature'),
(75291, 'Sleepmasters Pebble Sleeper Couch', '5000', 'Sleeper Couch', '95766551031229430sleepcouc.jpg', 'Sleepmasters', 'feature'),
(83347, 'Sealy Posture Firm Bed', '7000', 'Queen', '92055866776704030selymidking.jpg', 'Sealy', 'feature');

-- --------------------------------------------------------

--
-- Table structure for table `stock`
--

CREATE TABLE `stock` (
  `stock_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stock`
--

INSERT INTO `stock` (`stock_id`, `product_id`, `qty`) VALUES
(1, 83347, 11),
(2, 75291, 15),
(3, 4503, 12),
(4, 24794, 12),
(5, 67400, 9),
(6, 70657, 9),
(7, 731174, 12),
(8, 8702110, 11),
(9, 1677, 11),
(10, 307541, 15),
(11, 533028, 10),
(12, 648204, 8),
(13, 9137, 10),
(14, 47137, 8);

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `transaction_id` int(11) NOT NULL,
  `customerid` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `order_stat` varchar(100) NOT NULL,
  `order_date` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `transaction_detail`
--

CREATE TABLE `transaction_detail` (
  `transacton_detail_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `order_qty` int(11) NOT NULL,
  `transaction_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`adminid`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`contact_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customerid`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `stock`
--
ALTER TABLE `stock`
  ADD PRIMARY KEY (`stock_id`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`transaction_id`);

--
-- Indexes for table `transaction_detail`
--
ALTER TABLE `transaction_detail`
  ADD PRIMARY KEY (`transacton_detail_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `adminid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `contact_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customerid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `stock`
--
ALTER TABLE `stock`
  MODIFY `stock_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT for table `transaction_detail`
--
ALTER TABLE `transaction_detail`
  MODIFY `transacton_detail_id` int(11) NOT NULL AUTO_INCREMENT;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
