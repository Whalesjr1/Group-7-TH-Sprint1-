-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 05, 2022 at 04:25 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `royalty decoration`
--

-- --------------------------------------------------------

--
-- Table structure for table `bill`
--

CREATE TABLE `bill` (
  `bill_address` varchar(14) DEFAULT NULL,
  `bill_name` varchar(14) NOT NULL,
  `bill_info` varchar(13) DEFAULT NULL,
  `register_no` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bill`
--

INSERT INTO `bill` (`bill_address`, `bill_name`, `bill_info`, `register_no`) VALUES
('SW7 4VY', 'fuad bill', 'to be paid', 1117),
('SW13 4ZQ', 'junior bill', 'to be paid', 1111),
('SW8 5AV', 'kasim bill', 'to be paid', 1113),
('SE5 6GH', 'kate bill', 'to be paid', 1118),
('SE4 7FG', 'kennedy bill', 'to be paid', 1115),
('SE1 5NQ', 'kiki bill', 'to be paid', 1112),
('SW3 5CG', 'taiwo bill', 'to be paid', 1114),
('SW3 3RT', 'tosin bill', 'to be paid', 1116);

-- --------------------------------------------------------

--
-- Table structure for table `branches`
--

CREATE TABLE `branches` (
  `branch_id` int(11) NOT NULL,
  `branch_name` varchar(12) DEFAULT NULL,
  `branch_address` varchar(100) DEFAULT NULL,
  `emp_ssn` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `branches`
--

INSERT INTO `branches` (`branch_id`, `branch_name`, `branch_address`, `emp_ssn`) VALUES
(1141, 'PUTNEY', 'SWI5 6NQ', 1131),
(1142, 'EVELYN', 'SW15 4NQ', 1132),
(1143, 'PECKHAM', 'SE15 S45', 1133),
(1144, 'CLAPHAM', 'SW7 YRT', 1134),
(1145, 'LEWISHAM', 'SE20 7UV', 1135),
(1146, 'VICTORIA', 'SW1 2FG', 1136),
(1147, 'DEPFORD', 'E15 8YU', 1137),
(1148, 'STRATFORD', 'E16 9HG', 1138);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `cust_name` varchar(12) DEFAULT NULL,
  `cust_address` varchar(14) DEFAULT NULL,
  `account_info` varchar(12) NOT NULL,
  `register_no` int(11) NOT NULL,
  `proj_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`cust_name`, `cust_address`, `account_info`, `register_no`, `proj_id`) VALUES
('JUNIOR', 'SW13 4ZQ', 'TESCO BANK', 1111, 1121),
('KIKI', 'SE1 5NQ', 'METRO BANK', 1112, 1122),
('KASIM', 'SW8 5AV', 'MONZO BANK', 1113, 1123),
('TAIWO', 'SW3 5CG', 'BARCLAYS BAN', 1114, 1124),
('KENNEDY', 'SE4 7FG', 'LOYD BANK', 1115, 1125),
('TOSIN', 'SW3 3RT', 'SANTADAR BAN', 1116, 1126),
('FUAD', 'SW7 4VY', 'UBA BANK', 1117, 1127),
('KATE', 'SE5 6GH', 'LUNO BANK', 1118, 1128),
('KASIM', 'SW8 5AV', 'MONZO BANK', 1411, 1077),
('KIKI', 'SE1 5NQ', 'METRO BANK', 1413, 1053),
('KIKI', 'SE1 5NQ', 'METRO BANK', 1419, 1053),
('TAIWO', 'SW3 5CG', 'BARCLAYS BAN', 2311, 1078),
('KENNEDY', 'SE4 7FG', 'LOYD BANK', 3453, 1056),
('JUNIOR', 'SW13 4ZQ', 'TESCO BANK', 4444, 1061),
('JUNIOR', 'SW13 4ZQ', 'TESCO BANK', 4534, 1061),
('JUNIOR', 'SW13 4ZQ', 'TESCO BANK', 4539, 1061),
('KATE', 'SE5 6GH', 'LUNO BANK', 5446, 1091),
('FUAD', 'SW7 4VY', 'UBA BANK', 6543, 1081),
('TOSIN', 'SW3 3RT', 'SANTADAR BAN', 8654, 1071);

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `emp_ssn` int(11) NOT NULL,
  `emp_name` varchar(10) DEFAULT NULL,
  `emp_job` varchar(12) DEFAULT NULL,
  `emp_salary` double(7,2) DEFAULT NULL,
  `proj_id` int(11) DEFAULT NULL,
  `mangr_ssn` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`emp_ssn`, `emp_name`, `emp_job`, `emp_salary`, `proj_id`, `mangr_ssn`) VALUES
(1131, 'LOT', 'DRIVER', 1800.00, 1121, 111),
(1132, 'GUY', 'BACKGROUND S', 2000.00, 1122, 112),
(1133, 'RICK', 'TABLE AND CH', 1123.00, 1123, 113),
(1134, 'TOM', 'STAGE SET', 1900.00, 1124, 114),
(1135, 'KOFI', 'FLOWERS SET', 2500.00, 1125, 115),
(1136, 'BALD', 'TABLES AND C', 2100.00, 1126, 116),
(1137, 'SMITH', 'BACKGROUND S', 1700.00, 1127, 117),
(1138, 'ACK', 'STAGE SET', 2100.00, 1128, 118);

-- --------------------------------------------------------

--
-- Stand-in structure for view `empv_1`
-- (See below for the actual view)
--
CREATE TABLE `empv_1` (
`emp_ssn` int(11)
,`emp_name` varchar(10)
,`emp_job` varchar(12)
,`emp_salary` double(7,2)
,`proj_id` int(11)
,`mangr_ssn` int(11)
);

-- --------------------------------------------------------

--
-- Table structure for table `equipment`
--

CREATE TABLE `equipment` (
  `equipment_id` int(11) NOT NULL,
  `type` varchar(10) NOT NULL,
  `availability` varchar(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `equipment`
--

INSERT INTO `equipment` (`equipment_id`, `type`, `availability`) VALUES
(11, 'BACKGROUND', 'ANYTIME'),
(12, 'STAGE', 'ANYTIME'),
(13, 'FLOWERS', 'ANYTIME'),
(14, 'CHAIRS AND', 'ANYTIME'),
(15, 'BALLONS', 'ANYTIME'),
(16, 'TABLE COVE', 'ANYTIME'),
(17, 'CHAIR COVE', 'ANYTIME'),
(18, 'STAGE LIGH', 'ANYTIME');

-- --------------------------------------------------------

--
-- Table structure for table `management`
--

CREATE TABLE `management` (
  `mangr_ssn` int(11) NOT NULL,
  `mangr_name` varchar(10) DEFAULT NULL,
  `mangr_job` varchar(9) DEFAULT NULL,
  `salary` double(7,2) DEFAULT NULL,
  `work_hours` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `management`
--

INSERT INTO `management` (`mangr_ssn`, `mangr_name`, `mangr_job`, `salary`, `work_hours`) VALUES
(111, 'ADEWALE', 'OVERALL M', 5000.00, 8),
(112, 'TUNDE', 'ASS.MANAG', 4000.00, 7),
(113, 'KOLA', 'SALES MAN', 3500.00, 8),
(114, 'WOLE', 'CLERK MAN', 3700.00, 8),
(115, 'GREEN', 'ANALYST', 3400.00, 7),
(116, 'SOPHIE', 'CLERK MAN', 3000.00, 7),
(117, 'ARC', 'SALES MAN', 2900.00, 8),
(118, 'WALES', 'TRANSPORT', 6000.00, 8);

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

CREATE TABLE `project` (
  `proj_id` int(11) NOT NULL,
  `proj_name` varchar(100) DEFAULT NULL,
  `proj_title` varchar(15) DEFAULT NULL,
  `start_date` varchar(12) DEFAULT NULL,
  `end_date` varchar(12) DEFAULT NULL,
  `feedback` varchar(30) DEFAULT NULL,
  `register_no` int(11) DEFAULT NULL,
  `equipment_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `project`
--

INSERT INTO `project` (`proj_id`, `proj_name`, `proj_title`, `start_date`, `end_date`, `feedback`, `register_no`, `equipment_id`) VALUES
(1121, 'PROJECT A', 'BUSINESS', '2020-01-01', '2020-01-13', 'GOOD WORK DONE', 1111, 17),
(1122, 'PROJECT B', 'WEDDING', '2020-08-22', '2020-08-30', 'GOOD WORK DONE', 1112, 13),
(1123, 'PROJECT C', 'BIRTHDAY', '2020-02-24', '2020-02-31', 'GOOD WORK DONE', 1113, 15),
(1124, 'PROJECT D', 'FAMILY', '2021-01-01', NULL, 'GOOD WORK DONE', 1114, 14),
(1125, 'PROJECT E', 'SON', '2021-01-01', '2021-01-13', 'GOOD WORK DONE', 1115, 18),
(1126, 'PROJECT F', 'BROTHER', '2021-01-01', '2021-01-13', 'GOOD WORK DONE', 1116, 16),
(1127, 'PROJECT G', 'UNCLE', '2022-01-01', '2022-01-13', 'GOOD WORK DONE', 1117, 11),
(1128, 'PROJECT H', 'FRIEND', '2022-01-01', '2022-01-13', 'GOOD WORK DONE', 1118, 12);

-- --------------------------------------------------------

--
-- Structure for view `empv_1`
--
DROP TABLE IF EXISTS `empv_1`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `empv_1`  AS SELECT `employee`.`emp_ssn` AS `emp_ssn`, `employee`.`emp_name` AS `emp_name`, `employee`.`emp_job` AS `emp_job`, `employee`.`emp_salary` AS `emp_salary`, `employee`.`proj_id` AS `proj_id`, `employee`.`mangr_ssn` AS `mangr_ssn` FROM `employee` WHERE `employee`.`proj_id` = 1121 ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`bill_name`),
  ADD KEY `customer` (`register_no`);

--
-- Indexes for table `branches`
--
ALTER TABLE `branches`
  ADD PRIMARY KEY (`branch_id`),
  ADD KEY `employee` (`emp_ssn`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`register_no`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`emp_ssn`),
  ADD KEY `management` (`mangr_ssn`),
  ADD KEY `project` (`proj_id`);

--
-- Indexes for table `equipment`
--
ALTER TABLE `equipment`
  ADD PRIMARY KEY (`equipment_id`);

--
-- Indexes for table `management`
--
ALTER TABLE `management`
  ADD PRIMARY KEY (`mangr_ssn`);

--
-- Indexes for table `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`proj_id`),
  ADD KEY `equipment` (`equipment_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bill`
--
ALTER TABLE `bill`
  ADD CONSTRAINT `customer` FOREIGN KEY (`register_no`) REFERENCES `customer` (`register_no`);

--
-- Constraints for table `branches`
--
ALTER TABLE `branches`
  ADD CONSTRAINT `employee` FOREIGN KEY (`emp_ssn`) REFERENCES `employee` (`emp_ssn`);

--
-- Constraints for table `employee`
--
ALTER TABLE `employee`
  ADD CONSTRAINT `management` FOREIGN KEY (`mangr_ssn`) REFERENCES `management` (`mangr_ssn`),
  ADD CONSTRAINT `project` FOREIGN KEY (`proj_id`) REFERENCES `project` (`proj_id`);

--
-- Constraints for table `project`
--
ALTER TABLE `project`
  ADD CONSTRAINT `equipment` FOREIGN KEY (`equipment_id`) REFERENCES `equipment` (`equipment_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
