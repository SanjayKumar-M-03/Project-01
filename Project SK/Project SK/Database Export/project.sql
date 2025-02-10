-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 14, 2024 at 09:34 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Table structure for table `data`
--

CREATE TABLE `data` (
  `uname` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `msg` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `data`
--

INSERT INTO `data` (`uname`, `email`, `msg`) VALUES
('Ajay', '21bit102@americancollege.edu.in', 'Your Product is Good..!!'),
('Sanjay Kumar M', 'sanjay989433@gmail.com', 'vanakkam'),
('Marshaal_The_Mr', 'sanjay@gmail.com', 'Hi');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `user_id` varchar(50) DEFAULT NULL,
  `payment_id` varchar(50) DEFAULT NULL,
  `amount` varchar(50) DEFAULT NULL,
  `product_id` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`user_id`, `payment_id`, `amount`, `product_id`) VALUES
(NULL, 'pay_NucI95ex4yCYSg', '1000', '1'),
(NULL, 'pay_NucMuv84Qupt2t', '1753', NULL),
(NULL, 'pay_NucP6jjqfXtmVo', '1753', NULL),
(NULL, 'pay_Nucb5DscaXiaDP', '1753', NULL),
(NULL, 'pay_NucdBS2BDscAAX', '2071', NULL),
(NULL, 'pay_Numb5OB9AnN2LH', '3253', NULL),
(NULL, 'pay_Nup0H9hpDZzPgf', '253', NULL),
(NULL, 'pay_NuqdKzUxDBtTMh', '4518', NULL),
(NULL, 'pay_NureLYn9dxLAdA', '1500', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `uname` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `pswd` varchar(100) NOT NULL,
  `pswd1` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`uname`, `email`, `pswd`, `pswd1`) VALUES
('ex', 'abi@gmail.com', '123', '123'),
('sanjay', 'kumar@gmail.com', '123', '123'),
('sk', 'marshaal@gmail.com', '123', '123'),
('marshaal', 'sanjay@gmail.com', '123', '123'),
('marshaal', 'sk@gmail.com', '123', '123'),
('sriram', 'sriram@gmail.com', '123', '123');

-- --------------------------------------------------------

--
-- Table structure for table `sec1`
--

CREATE TABLE `sec1` (
  `PID` int(50) DEFAULT NULL,
  `PNAME` varchar(200) DEFAULT NULL,
  `BNAME` varchar(100) DEFAULT NULL,
  `PRICE` int(50) DEFAULT NULL,
  `DES` varchar(500) DEFAULT NULL,
  `PIC` varchar(200) DEFAULT NULL,
  `PIC1` varchar(200) DEFAULT NULL,
  `PIC2` varchar(200) DEFAULT NULL,
  `PIC3` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sec1`
--

INSERT INTO `sec1` (`PID`, `PNAME`, `BNAME`, `PRICE`, `DES`, `PIC`, `PIC1`, `PIC2`, `PIC3`) VALUES
(1, 'STANLEY Steel hammer with Wooden handle Forged.', 'Golder Co.', 1500, 'STANLEY 51-152 Claw Hammer with Steel Shaft for Masonry, Woodwork, Fittings for Home, DIY, Mechanic, Industrial &amp; Professional Use', 'hammer.jpg', 'hammer1.jpg', 'hammer2.jpg', 'hammer3.jpg'),
(2, 'Taparia 1171-8/1171N-8 205mm Steel Single Sided Adjustable Spanner Wrench (Grey)', 'Taparia', 253, 'Heat treated spanner wrench for home or commercial use. High quality tool for all relevant purposes. Long term Rust free. Easy to grip.', 'wrench.jpg', 'wrench1.jpg', 'wrench2.jpg', 'wrench3.jpg'),
(3, 'Taparia DEP-08 Double Ended Spanner Set', 'Taparia', 365, 'Drop forged from high grade Chrome - Vanadium steel. Heat treated to give maximum strength and wear resistance. Good accessibility in confined spaces due to thin walled rings and are light and handy in use.', 'spanner.jpg', 'spanner1.jpg', 'spanner2.jpg', 'spanner3.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `sec2`
--

CREATE TABLE `sec2` (
  `PID` int(50) DEFAULT NULL,
  `PNAME` varchar(200) DEFAULT NULL,
  `BNAME` varchar(100) DEFAULT NULL,
  `PRICE` int(50) DEFAULT NULL,
  `DES` varchar(500) DEFAULT NULL,
  `PIC` varchar(200) DEFAULT NULL,
  `PIC1` varchar(200) DEFAULT NULL,
  `PIC2` varchar(200) DEFAULT NULL,
  `PIC3` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sec2`
--

INSERT INTO `sec2` (`PID`, `PNAME`, `BNAME`, `PRICE`, `DES`, `PIC`, `PIC1`, `PIC2`, `PIC3`) VALUES
(101, 'Electronic Spices Screw Type Solid Wall Fixing keel,Nails With Hard Plastic Plug, (0.4 inch x 2.5 inch) - Pack of 20', 'Electronic Spices', 250, 'PACK OF 20 Means 20pcs design increases holding power. The screws will go in easily and securely without breaking. PACKAGE CONTAINS -PAIR OF 20 (20PCS NAILS 20PCS SLEEVES ) Perfect for blinds, shelves, arts, and so on. Providing a flush, clean appearance in drywall Comes in a handy Plastic organizer case with size compartments', 'screwfix.jpg', 'screwfix1.jpg', 'screwfix2.jpg', 'screwfix3.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `sec3`
--

CREATE TABLE `sec3` (
  `PID` int(50) DEFAULT NULL,
  `PNAME` varchar(200) DEFAULT NULL,
  `BNAME` varchar(100) DEFAULT NULL,
  `PRICE` int(50) DEFAULT NULL,
  `DES` varchar(500) DEFAULT NULL,
  `PIC` varchar(200) DEFAULT NULL,
  `PIC1` varchar(200) DEFAULT NULL,
  `PIC2` varchar(200) DEFAULT NULL,
  `PIC3` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sec3`
--

INSERT INTO `sec3` (`PID`, `PNAME`, `BNAME`, `PRICE`, `DES`, `PIC`, `PIC1`, `PIC2`, `PIC3`) VALUES
(1001, 'Link® Atoot 40mm Lock | Double Locking | Steel Body | Hardened Shackle | 5 Brass Levers | Made in India |1 Padlock|3 Keys with Free Keychain', 'Link', 318, 'LOCKING-SYSTEM-Double locking refers to a locking mechanism in which a lock has two locking points that must be engaged in order for the lock to be secure.', 'doublelock.jpg', 'doublelock1.jpg', 'doublelock2.jpg', 'doublelock3.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data`
--
ALTER TABLE `data`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`email`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
