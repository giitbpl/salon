-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 09, 2019 at 07:43 AM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `salon`
--

-- --------------------------------------------------------

--
-- Table structure for table `inv_acc_groups`
--

CREATE TABLE IF NOT EXISTS `inv_acc_groups` (
  `gid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `nature` varchar(50) NOT NULL,
  `uid` int(11) NOT NULL,
  `type` varchar(15) NOT NULL,
  `maingroupid` int(11) NOT NULL,
  PRIMARY KEY (`gid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=34 ;

--
-- Dumping data for table `inv_acc_groups`
--

INSERT INTO `inv_acc_groups` (`gid`, `name`, `nature`, `uid`, `type`, `maingroupid`) VALUES
(1, 'Branch / Divisions', 'Liabilities', 0, 'Primary', 0),
(2, 'Capital Account', 'Liabilities', 0, 'Primary', 0),
(3, 'Current Assets', 'Assets', 0, 'Primary', 0),
(4, 'Current Liabilities', 'Liabilities', 0, 'Primary', 0),
(5, 'Direct Expenses', 'Expenses', 0, 'Primary', 0),
(6, 'Direct Incomes', 'Income', 0, 'Primary', 0),
(7, 'Fixed Assets', 'Assets', 0, 'Primary', 0),
(8, 'Indirect Expenses', 'Expenses', 0, 'Primary', 0),
(9, 'Indirect Incomes', 'Income', 0, 'Primary', 0),
(10, 'Investments', 'Assets', 0, 'Primary', 0),
(11, 'Loans (Liability)', 'Liabilities', 0, 'Primary', 0),
(12, 'Misc. Expenses (ASSET)', 'Assets', 0, 'Primary', 0),
(13, 'Purchase Accounts', 'Expenses', 0, 'Primary', 0),
(14, 'Sales Accounts', 'Income', 0, 'Primary', 0),
(15, 'Suspense A/c', 'Liabilities', 0, 'Primary', 0),
(21, 'Reserves & Surplus', 'Liabilities', 0, 'Sub Group', 2),
(22, 'Bank Accounts', 'Assets', 0, 'Sub Group', 3),
(23, 'Bank OD A/c', 'Liabilities', 0, 'Sub Group', 11),
(24, 'Cash-in-hand', 'Assets', 0, 'Sub Group', 3),
(25, 'Deposits (Asset)', 'Assets', 0, 'Sub Group', 3),
(26, 'Duties & Taxes', 'Liabilities', 0, 'Sub Group', 4),
(27, 'Loans & Advances (Asset)', 'Assets', 0, 'Sub Group', 3),
(28, 'Provisions', 'Liabilities', 0, 'Sub Group', 4),
(29, 'Secured Loans', 'Liabilities', 0, 'Sub Group', 11),
(30, 'Stock-in-hand', 'Assets', 0, 'Sub Group', 3),
(31, 'Sundry Creditors', 'Liabilities', 0, 'Sub Group', 4),
(32, 'Sundry Debtors', 'Assets', 0, 'Sub Group', 3),
(33, 'Unsecured Loans', 'Liabilities', 0, 'Sub Group', 11);

-- --------------------------------------------------------

--
-- Table structure for table `inv_acc_ledger`
--

CREATE TABLE IF NOT EXISTS `inv_acc_ledger` (
  `lid` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `gstn` varchar(15) NOT NULL,
  `address` text NOT NULL,
  `city` text NOT NULL,
  `state` text NOT NULL,
  `gid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  PRIMARY KEY (`lid`),
  KEY `gid` (`gid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `inv_acc_ledger`
--

INSERT INTO `inv_acc_ledger` (`lid`, `name`, `gstn`, `address`, `city`, `state`, `gid`, `uid`) VALUES
(3, 'Cash', '', '', '', '', 24, 0),
(6, 'Furniture', '', '', '', '', 3, 10),
(8, 'building', '', '', '', '', 3, 10),
(9, 'ravi sales', '111111111111111', '456', 'icchawar', 'Madhya Pradesh / à¤®à¤§à¥à¤¯ à¤ªà¥à¤°à¤¦à¥‡à¤¶    ', 31, 10),
(10, 'sdsd', '', '77', '', 'Madhya Pradesh / à¤®à¤§à¥à¤¯ à¤ªà¥à¤°à¤¦à¥‡à¤¶    ', 1, 10);

-- --------------------------------------------------------

--
-- Table structure for table `inv_acc_measure_units`
--

CREATE TABLE IF NOT EXISTS `inv_acc_measure_units` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `short_name` text NOT NULL,
  `long_name` text NOT NULL,
  `uid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `inv_acc_measure_units`
--

INSERT INTO `inv_acc_measure_units` (`id`, `short_name`, `long_name`, `uid`) VALUES
(1, 'KG', 'KILLOGRAM', 10),
(3, 'LT', 'LITER', 10);

-- --------------------------------------------------------

--
-- Table structure for table `inv_acc_purchase`
--

CREATE TABLE IF NOT EXISTS `inv_acc_purchase` (
  `pid` int(11) NOT NULL AUTO_INCREMENT,
  `invoice_no` text NOT NULL,
  `ladger_id` bigint(20) NOT NULL COMMENT 'ladgerid',
  `tdate` varchar(10) NOT NULL,
  `items` text NOT NULL,
  `tcgst` double(10,2) NOT NULL,
  `tsgst` double(10,2) NOT NULL,
  `tigst` double(10,2) NOT NULL,
  `total_tax` double(10,2) NOT NULL,
  `taxable_amt` double(10,2) NOT NULL,
  `total_amount` double(10,2) NOT NULL,
  `uid` int(11) NOT NULL,
  PRIMARY KEY (`pid`),
  KEY `uid` (`uid`),
  KEY `ladger_id` (`ladger_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `inv_acc_purchase`
--

INSERT INTO `inv_acc_purchase` (`pid`, `invoice_no`, `ladger_id`, `tdate`, `items`, `tcgst`, `tsgst`, `tigst`, `total_tax`, `taxable_amt`, `total_amount`, `uid`) VALUES
(1, '222', 6, '17-11-2017', '[{"itemid":"13","itemname":"BASMATI A","qty":"5","rate":"55","cgst":"13.10","sgst":"8.01","igst":"0.00","tval":"253.90","ttax":"21.10","amt":"275"}]', 13.10, 8.01, 0.00, 21.11, 253.90, 275.01, 10),
(2, '1233', 9, '16-11-2017', '[{"itemid":"13","itemname":"BASMATI A","qty":"5","rate":"55","cgst":"13.10","sgst":"8.01","igst":"0.00","tval":"253.90","ttax":"21.10","amt":"275"},{"itemid":"14","itemname":"BASMATI B","qty":"5","rate":"80","cgst":"0.00","sgst":"0.00","igst":"0.00","tval":"400.00","ttax":"0.00","amt":"400"}]', 13.10, 8.01, 0.00, 21.11, 653.90, 675.01, 10),
(3, '23232323', 8, '19-11-2017', '[{"itemid":"13","itemname":"BASMATI A","qty":"3","rate":"55","cgst":"7.86","sgst":"4.81","igst":"0.00","tval":"152.34","ttax":"12.66","amt":"165"},{"itemid":"14","itemname":"BASMATI B","qty":"3","rate":"80","cgst":"0.00","sgst":"0.00","igst":"0.00","tval":"240.00","ttax":"0.00","amt":"240"},{"itemid":"20","itemname":"A123","qty":"5","rate":"550.25","cgst":"203.80","sgst":"203.80","igst":"227.17","tval":"2116.49","ttax":"634.76","amt":"2751.25"}]', 211.66, 208.61, 227.17, 647.44, 2508.83, 3156.27, 10);

-- --------------------------------------------------------

--
-- Table structure for table `inv_acc_stock`
--

CREATE TABLE IF NOT EXISTS `inv_acc_stock` (
  `sid` int(11) NOT NULL AUTO_INCREMENT,
  `itemid` bigint(11) NOT NULL,
  `stock` double(14,2) NOT NULL,
  `unitid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  PRIMARY KEY (`sid`),
  KEY `unitid` (`unitid`),
  KEY `itemid` (`itemid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `inv_acc_stock`
--

INSERT INTO `inv_acc_stock` (`sid`, `itemid`, `stock`, `unitid`, `uid`) VALUES
(1, 1, 0.00, 3, 10),
(2, 2, 0.00, 3, 10);

-- --------------------------------------------------------

--
-- Table structure for table `inv_acc_stock_group`
--

CREATE TABLE IF NOT EXISTS `inv_acc_stock_group` (
  `sgid` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `uid` int(11) NOT NULL,
  PRIMARY KEY (`sgid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `inv_acc_stock_group`
--

INSERT INTO `inv_acc_stock_group` (`sgid`, `name`, `uid`) VALUES
(10, 'SHAVING CREAM', 10),
(11, 'HAIR COLOR', 10);

-- --------------------------------------------------------

--
-- Table structure for table `inv_acc_stock_items`
--

CREATE TABLE IF NOT EXISTS `inv_acc_stock_items` (
  `itemid` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `hsncode` text NOT NULL,
  `price` float(10,2) NOT NULL,
  `unitid` int(11) NOT NULL,
  `cgst` float(5,2) NOT NULL DEFAULT '0.00',
  `sgst` float(5,2) NOT NULL DEFAULT '0.00',
  `igst` float(5,2) NOT NULL DEFAULT '0.00',
  `sgid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  PRIMARY KEY (`itemid`),
  KEY `sgid` (`sgid`),
  KEY `unitid` (`unitid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `inv_acc_stock_items`
--

INSERT INTO `inv_acc_stock_items` (`itemid`, `name`, `hsncode`, `price`, `unitid`, `cgst`, `sgst`, `igst`, `sgid`, `uid`) VALUES
(1, 'VIJHON', '0', 0.00, 3, 0.00, 0.00, 0.00, 10, 10),
(2, 'GODREJ', '0', 100.00, 3, 0.00, 0.00, 0.00, 11, 10);

-- --------------------------------------------------------

--
-- Table structure for table `inv_acc_voucher`
--

CREATE TABLE IF NOT EXISTS `inv_acc_voucher` (
  `vid` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `typeid` bigint(20) NOT NULL,
  `uid` int(11) NOT NULL,
  PRIMARY KEY (`vid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

--
-- Dumping data for table `inv_acc_voucher`
--

INSERT INTO `inv_acc_voucher` (`vid`, `name`, `typeid`, `uid`) VALUES
(1, 'Contra', 1, 0),
(2, 'Credit Note', 2, 0),
(3, 'Debit Note', 3, 0),
(4, 'Delivery Note', 4, 0),
(5, 'Journal', 5, 0),
(6, 'Payment', 6, 0),
(7, 'Physical Stock', 7, 0),
(8, 'Purchases', 8, 0),
(9, 'Purchases Order ', 9, 0),
(10, 'Receipt', 10, 0),
(11, 'Receipt Note ', 11, 0),
(12, 'Rejections In:', 12, 0),
(13, 'Rejections Out', 13, 0),
(14, 'Reverse Journal', 14, 0),
(15, 'Sales ', 15, 0),
(16, 'Sales Order', 16, 0),
(17, 'Stock Journal', 17, 0),
(20, 'adasd', 6, 10);

-- --------------------------------------------------------

--
-- Table structure for table `inv_bank_detail`
--

CREATE TABLE IF NOT EXISTS `inv_bank_detail` (
  `bankid` bigint(20) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `bname` text NOT NULL,
  `ac_holder_name` text NOT NULL,
  `ifsc_code` text NOT NULL,
  `b_address` text NOT NULL,
  `ac_no` text NOT NULL,
  PRIMARY KEY (`bankid`),
  KEY `uid` (`uid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `inv_bank_detail`
--

INSERT INTO `inv_bank_detail` (`bankid`, `uid`, `bname`, `ac_holder_name`, `ifsc_code`, `b_address`, `ac_no`) VALUES
(6, 10, 'Canara Bank', 'abc', '3asdads', 'adasdsadsa', '22222'),
(7, 10, 'Ahmedabad Mercantile Co-Op Bank Ltd', 'abc', '3asdads', 'adadads', '22222'),
(8, 10, 'Bank Of Maharashtra', 'abc', '3asdads', 'adadads', '22222'),
(9, 10, 'Ahmedabad Mercantile Co-Op Bank Ltd', 'abc', '3asdads', 'adadads', '22222'),
(10, 10, 'Ahmedabad Mercantile Co-Op Bank Ltd', 'abc', '3asdads', 'adadads', '22222'),
(11, 10, 'Ahmedabad Mercantile Co-Op Bank Ltd', 'amit sharma', '145789', 'a12234', '1234567'),
(12, 10, 'Axis Bank', 'amit sharma', '145789', 'a12234', '1234567');

-- --------------------------------------------------------

--
-- Table structure for table `inv_bill`
--

CREATE TABLE IF NOT EXISTS `inv_bill` (
  `bid` bigint(20) NOT NULL AUTO_INCREMENT,
  `cname` text NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `particular` text NOT NULL,
  `bdate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `tcgst` double(10,2) NOT NULL,
  `tsgst` double(10,2) NOT NULL,
  `tigst` double(10,2) NOT NULL,
  `taxable_amt` double(10,2) NOT NULL,
  `total_amt` double(10,2) NOT NULL,
  `amtrec` float NOT NULL,
  `amtdue` float NOT NULL,
  `pmode` varchar(10) NOT NULL,
  `status` varchar(15) NOT NULL,
  `uid` int(11) NOT NULL,
  PRIMARY KEY (`bid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=43 ;

--
-- Dumping data for table `inv_bill`
--

INSERT INTO `inv_bill` (`bid`, `cname`, `mobile`, `particular`, `bdate`, `tcgst`, `tsgst`, `tigst`, `taxable_amt`, `total_amt`, `amtrec`, `amtdue`, `pmode`, `status`, `uid`) VALUES
(29, 'nitin gupta', '9826452519', '[{"itemname":"FACE WASH","itemid":"2","qty":"1","rate":"450","eid":"4","dis":"0"},{"itemname":"FACIAL","itemid":"4","qty":"1","rate":"500","eid":"4","dis":"0"}]', '2018-04-16 00:00:00', 50.90, 50.90, 0.00, 848.21, 950.00, 950, 0, 'Cash', 'Done', 10),
(30, 'bbbbbb', '7777777777', '[{"itemname":"FACE WASH","itemid":"2","qty":"1","rate":"450","eid":"4","dis":"0"},{"itemname":"FACIAL","itemid":"4","qty":"1","rate":"500","eid":"4","dis":"0"}]', '2018-04-16 00:00:00', 50.90, 50.90, 0.00, 848.21, 950.00, 500, 450, 'Cash', 'Done', 10),
(31, 'bbbbbb', '7777777777', '[{"itemname":"FACE WASH","itemid":"2","qty":"1","rate":"450","eid":"4","dis":"0"}]', '2018-04-16 00:00:00', 24.11, 24.11, 0.00, 401.79, 450.00, 250, 200, 'Cash', 'Pending', 10),
(32, '1222', '1111111111', '[{"itemname":"FACE WASH","itemid":"2","qty":"1","rate":"450","eid":"4","dis":"0"}]', '2018-04-25 15:18:03', 24.11, 24.11, 0.00, 401.79, 450.00, 450, 0, 'Cash', 'Done', 10),
(33, 'bbbbbb', '7777777777', '[{"itemname":"FACIAL","itemid":"4","qty":"1","rate":"800","eid":"4","dis":"0"}]', '2018-04-25 15:20:11', 42.85, 42.85, 0.00, 714.29, 800.00, 800, 0, 'Cash', 'Done', 10),
(34, 'bbbbbb', '7777777777', '[{"itemname":"FACE WASH","itemid":"2","qty":"1","rate":"450","eid":"4","dis":"0"}]', '2018-04-25 15:22:39', 24.11, 24.11, 0.00, 401.79, 450.00, 450, 0, 'Cash', 'Done', 10),
(35, 'bbbbbb', '7777777777', '[{"itemname":"FACE WASH","itemid":"2","qty":"1","rate":"450","eid":"4","dis":"0"}]', '2018-04-25 15:24:34', 24.11, 24.11, 0.00, 401.79, 450.00, 450, 0, 'Cash', 'Done', 10),
(36, 'bbbbbb', '7777777777', '[{"itemname":"FACE WASH","itemid":"2","qty":"1","rate":"450","eid":"4","dis":"0"}]', '2018-04-25 15:28:54', 24.11, 24.11, 0.00, 401.79, 450.00, 450, 0, 'Cash', 'Done', 10),
(37, 'bbbbbb', '7777777777', '[{"itemname":"FACIAL","itemid":"4","qty":"1","rate":"500","eid":"4","dis":"0"}]', '2018-04-25 15:29:35', 26.79, 26.79, 0.00, 446.43, 500.00, 500, 0, 'Cash', 'Done', 10),
(38, 'bbbbbb', '7777777777', '[{"itemname":"FACE WASH","itemid":"2","qty":"1","rate":"450","eid":"4","dis":"0"}]', '2018-04-25 15:30:06', 24.11, 24.11, 0.00, 401.79, 450.00, 450, 0, 'Cash', 'Done', 10),
(39, 'bbbbbb', '7777777777', '[{"itemname":"FACIAL","itemid":"4","qty":"1","rate":"500","eid":"4","dis":"0"}]', '2018-04-25 15:40:11', 26.79, 26.79, 0.00, 446.43, 500.00, 500, 0, 'Cash', 'Done', 10),
(40, 'bbbbbb', '7777777777', '[{"itemname":"FACE WASH","itemid":"2","qty":"1","rate":"450","eid":"4","dis":"0"}]', '2018-04-25 15:40:51', 24.11, 24.11, 0.00, 401.79, 450.00, 450, 0, 'Cash', 'Done', 10),
(41, 'nitin gupta', '9826452519', '[{"itemname":"FACE WASH","itemid":"2","qty":"1","rate":"450","eid":"4","dis":"0"}]', '2018-04-25 22:29:05', 24.11, 24.11, 0.00, 401.79, 450.00, 450, 0, 'Cash', 'Done', 10),
(42, 'bbbbbb', '7777777777', '[{"itemname":"A233","itemid":"7","qty":"1","rate":"100","eid":"4","dis":"0"}]', '2018-05-22 10:50:18', 5.36, 5.36, 0.00, 89.29, 100.00, 100, 0, 'Cash', 'Done', 10);

-- --------------------------------------------------------

--
-- Table structure for table `inv_business_type`
--

CREATE TABLE IF NOT EXISTS `inv_business_type` (
  `bid` int(5) NOT NULL AUTO_INCREMENT,
  `bus_type` varchar(34) DEFAULT NULL,
  PRIMARY KEY (`bid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1086 ;

--
-- Dumping data for table `inv_business_type`
--

INSERT INTO `inv_business_type` (`bid`, `bus_type`) VALUES
(1001, 'Advertising'),
(1002, 'Agriculture'),
(1003, 'Airlines'),
(1004, 'Architectural'),
(1005, 'Arts, Events & Occasions'),
(1006, 'Astrology'),
(1007, 'Automobile'),
(1008, 'Automobiles'),
(1009, 'Bakery'),
(1011, 'Banquet'),
(1012, 'Building Materials'),
(1013, 'Business Marketing'),
(1014, 'Chemical'),
(1015, 'Company'),
(1016, 'Computer'),
(1017, 'Construction & Real Estate'),
(1018, 'Consultants'),
(1019, 'Cosmetics'),
(1020, 'Courier & Delivery'),
(1021, 'Dhall Manufacturers'),
(1022, 'Dhall Mill'),
(1023, 'Dining & Leisure'),
(1024, 'Doctors'),
(1025, 'Education'),
(1026, 'Electronics Components'),
(1027, 'Elevator'),
(1028, 'Energy & Power'),
(1029, 'Entertainment'),
(1030, 'Event Management'),
(1031, 'Fashion'),
(1032, 'Finance'),
(1033, 'Fitness'),
(1034, 'Flour Mill'),
(1035, 'Food & Beverage'),
(1036, 'Food companies'),
(1037, 'Foot Wear & Leather'),
(1038, 'Furniture & Furnishing'),
(1039, 'Gas'),
(1040, 'Gifts & Crafts'),
(1041, 'Government'),
(1042, 'Hardware'),
(1043, 'Health & Beauty'),
(1044, 'Home Hardware & Tools'),
(1045, 'Hospitality'),
(1046, 'Hotels'),
(1047, 'House Keeping'),
(1048, 'Information technology (IT)'),
(1049, 'Jewelers'),
(1050, 'Jobs'),
(1051, 'Kitchen'),
(1052, 'Legal & Financial'),
(1053, 'Manufacturers'),
(1054, 'Matrimonial'),
(1055, 'Medical Shop'),
(1056, 'Milk'),
(1057, 'Mobile Phones'),
(1058, 'Optical'),
(1059, 'Other'),
(1060, 'Packages'),
(1061, 'Pets'),
(1062, 'Plastic'),
(1063, 'Plastic Pipe & PVC'),
(1064, 'Printing'),
(1065, 'Public Service'),
(1066, 'Real Estate'),
(1067, 'Refrigeration and Air conditioning'),
(1068, 'Reporter'),
(1069, 'Rice'),
(1070, 'Sago'),
(1071, 'Security & Administration'),
(1072, 'Shopping'),
(1073, 'Solar products'),
(1074, 'Solar Water Pump'),
(1075, 'Sport'),
(1076, 'Super Market'),
(1077, 'Taxis'),
(1078, 'Telecom'),
(1079, 'Textile'),
(1080, 'tour'),
(1081, 'Transporting'),
(1082, 'Travel'),
(1083, 'Water Pump Manufacturers'),
(1084, 'Water service'),
(1085, 'Welding Products');

-- --------------------------------------------------------

--
-- Table structure for table `inv_bus_client`
--

CREATE TABLE IF NOT EXISTS `inv_bus_client` (
  `uid` int(11) NOT NULL,
  `bid` int(11) NOT NULL,
  KEY `cid` (`uid`,`bid`),
  KEY `bid` (`bid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inv_bus_client`
--

INSERT INTO `inv_bus_client` (`uid`, `bid`) VALUES
(10, 1001),
(10, 1002),
(10, 1003),
(10, 1004);

-- --------------------------------------------------------

--
-- Table structure for table `inv_client`
--

CREATE TABLE IF NOT EXISTS `inv_client` (
  `uid` int(11) NOT NULL,
  `owner_name` varchar(100) NOT NULL,
  `business_name` text,
  `business_type` text NOT NULL,
  `gstn` varchar(15) NOT NULL,
  `pan` varchar(10) NOT NULL,
  `aadhar` varchar(12) NOT NULL,
  `address` text NOT NULL,
  `city` varchar(50) NOT NULL,
  `state` varchar(50) NOT NULL,
  `mobile` varchar(10) DEFAULT NULL,
  `gstcal` tinyint(1) NOT NULL DEFAULT '0',
  `serve` text,
  `speciality` text,
  `actdate` datetime NOT NULL COMMENT 'membership activation date',
  `expdate` datetime NOT NULL COMMENT 'membership expire date',
  `renewdate` datetime DEFAULT NULL,
  PRIMARY KEY (`uid`),
  UNIQUE KEY `uid_2` (`uid`),
  UNIQUE KEY `mobile` (`mobile`),
  KEY `uid` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inv_client`
--

INSERT INTO `inv_client` (`uid`, `owner_name`, `business_name`, `business_type`, `gstn`, `pan`, `aadhar`, `address`, `city`, `state`, `mobile`, `gstcal`, `serve`, `speciality`, `actdate`, `expdate`, `renewdate`) VALUES
(2, 'administrator', 'Administrator', 'administrator', '', '', '', '', '', '', '0000000000', 0, '', NULL, '2018-11-30 00:00:00', '0000-00-00 00:00:00', NULL),
(8, 'aaa', 'demo', '1001,1002,', '111111111111111', 'aaaaaaaaaa', '111111111111', 'ad ', 'a', 'Andhra Pradesh', '2222222222', 0, '1.Male Adult,', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(10, 'abc', 'Sample Spa And salon', '1001,1002,1003,1004,1005,1006,1007,1008,1009,1011,', '111111111111111', 'aaaaaaaaaa', '111111111111', 'abc', 'bhopal', 'Andhra Pradesh', '9826452519', 0, '1.Male Adult,2.Female Adult,', 'sdfssfd,sdf,sdf,sfd', '2018-04-01 10:00:00', '2018-05-31 23:59:59', NULL),
(32, 'demo', 'demo salon', '', '', '', '', '', '', '', '9826412345', 0, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(33, '', '', '', '', '', '', '', '', '', '', 0, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `inv_client_login`
--

CREATE TABLE IF NOT EXISTS `inv_client_login` (
  `cid` bigint(20) NOT NULL AUTO_INCREMENT,
  `email` varchar(320) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `pass` text NOT NULL,
  `name` text NOT NULL,
  `salt` text NOT NULL,
  `status` text NOT NULL,
  PRIMARY KEY (`cid`),
  UNIQUE KEY `email` (`email`,`mobile`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=42 ;

--
-- Dumping data for table `inv_client_login`
--

INSERT INTO `inv_client_login` (`cid`, `email`, `mobile`, `pass`, `name`, `salt`, `status`) VALUES
(41, 'aaa@aaa.com', '1111111111', '123', 'nitin gupta', '', 'not verify');

-- --------------------------------------------------------

--
-- Table structure for table `inv_client_otp`
--

CREATE TABLE IF NOT EXISTS `inv_client_otp` (
  `uid` bigint(20) NOT NULL,
  `otp` int(11) NOT NULL,
  `time` datetime NOT NULL,
  PRIMARY KEY (`uid`),
  UNIQUE KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inv_client_otp`
--

INSERT INTO `inv_client_otp` (`uid`, `otp`, `time`) VALUES
(41, 8689, '2019-02-25 13:31:56');

-- --------------------------------------------------------

--
-- Table structure for table `inv_customer`
--

CREATE TABLE IF NOT EXISTS `inv_customer` (
  `cid` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `uid` int(11) NOT NULL,
  PRIMARY KEY (`cid`),
  KEY `uid` (`uid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `inv_customer`
--

INSERT INTO `inv_customer` (`cid`, `name`, `mobile`, `uid`) VALUES
(4, 'HARRY POTTER', '7894561230', 10);

-- --------------------------------------------------------

--
-- Table structure for table `inv_employees`
--

CREATE TABLE IF NOT EXISTS `inv_employees` (
  `eid` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `designation` text,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `intime` time DEFAULT NULL,
  `outtime` time DEFAULT NULL,
  `weekoff` text,
  `uid` int(11) NOT NULL,
  PRIMARY KEY (`eid`),
  KEY `uid` (`uid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `inv_employees`
--

INSERT INTO `inv_employees` (`eid`, `name`, `mobile`, `designation`, `status`, `intime`, `outtime`, `weekoff`, `uid`) VALUES
(4, 'ABC', '1111111111', 'AAAAA', 1, '12:00:00', '09:00:00', 'Sunday', 10),
(5, 'SAM', '2222222222', 'AAAAA', 1, '10:00:00', '07:00:00', 'Sunday', 10),
(9, 'HARRY', '1111111111', 'aaaaa', 1, '10:00:00', '07:00:00', 'Sunday', 10),
(10, 'RAKESH', '1111111111', 'ASDLALDJ', 1, '09:30:00', '07:00:00', 'Sunday', 10);

-- --------------------------------------------------------

--
-- Table structure for table `inv_employees_attendence`
--

CREATE TABLE IF NOT EXISTS `inv_employees_attendence` (
  `aid` int(11) NOT NULL AUTO_INCREMENT,
  `eid` int(11) NOT NULL,
  `reason` text NOT NULL,
  `date` date NOT NULL,
  `intime` time NOT NULL,
  `outtime` time NOT NULL,
  `uid` int(11) NOT NULL,
  PRIMARY KEY (`aid`),
  KEY `eid` (`eid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `inv_employees_attendence`
--

INSERT INTO `inv_employees_attendence` (`aid`, `eid`, `reason`, `date`, `intime`, `outtime`, `uid`) VALUES
(4, 5, 'Absent', '2018-05-10', '10:00:00', '07:00:00', 10);

-- --------------------------------------------------------

--
-- Table structure for table `inv_enquiry`
--

CREATE TABLE IF NOT EXISTS `inv_enquiry` (
  `eid` bigint(20) NOT NULL AUTO_INCREMENT,
  `btype` text NOT NULL,
  `baname` text NOT NULL,
  `address` text NOT NULL,
  `bno` varchar(10) NOT NULL,
  `wno` varchar(10) NOT NULL,
  `bemail` text,
  `website` text NOT NULL,
  `holiday` text NOT NULL,
  `nemp` smallint(6) NOT NULL,
  `fromh` text,
  `toh` text,
  `oname` text NOT NULL,
  `ono` varchar(10) NOT NULL,
  `cemail` text NOT NULL,
  `newsletter` varchar(5) NOT NULL,
  `empid` int(11) NOT NULL DEFAULT '0',
  `comments` text NOT NULL,
  PRIMARY KEY (`eid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=23 ;

--
-- Dumping data for table `inv_enquiry`
--

INSERT INTO `inv_enquiry` (`eid`, `btype`, `baname`, `address`, `bno`, `wno`, `bemail`, `website`, `holiday`, `nemp`, `fromh`, `toh`, `oname`, `ono`, `cemail`, `newsletter`, `empid`, `comments`) VALUES
(1, '12SalonFitness CenterGentsLadies', 'aaa', 'ssss', '1111111111', '1111111111', NULL, 'wwwqq', 'Monday', 1, NULL, NULL, 'www', '2222222222', '2efed@111', 'yes', 0, ''),
(2, '12SalonFitness CenterGentsLadies', 'aaa', 'ssss', '1111111111', '1111111111', 'q1@aa.com', 'wwwqq', 'Monday', 1, NULL, NULL, 'www', '2222222222', '2efed@111', 'yes', 0, ''),
(3, '12SalonFitness CenterGentsLadies', 'aaa', 'ssss', '1111111111', '1111111111', 'q1@aa.com', 'wwwqq', 'Monday', 1, NULL, NULL, 'www', '2222222222', '2efed@111', 'yes', 0, ''),
(4, '12SalonFitness CenterGentsLadies', 'aaa', 'ssss', '1111111111', '1111111111', 'q1@aa.com', 'wwwqq', 'Monday', 1, '3:25 PM', '3:25 AM', 'www', '2222222222', '2efed@111', 'yes', 0, ''),
(5, 'Fitness Center', 'ff', 'ssss', '1111111111', '1111111111', 'q1@aa.com', 'wwwqq', 'Monday', 1, '', '', 'www', '222', '2efed@111', 'no', 0, '    dfgdgd'),
(6, '1Fitness Center', 'aaa', 'ssss', '1111111111', '1111111111', 'q1@aa.com', 'wwwqq', 'Monday', 1, '6:18 PM', '6:18 AM', 'www', '9826452519', '2efed@111', 'yes', 0, ''),
(7, '1Fitness Center', 'aaa', 'ssss', '1111111111', '1111111111', 'q1@aa.com', 'wwwqq', 'Monday', 2, '9:41 PM', '9:41 AM', 'www', '9826452519', '2efed@111', 'yes', 0, ''),
(8, '1Fitness Center', 'aaa', 'ssss', '1111111111', '1111111111', 'q1@aa.com', 'wwwqq', 'Monday', 2, '', '', 'www', '9826452519', '2efed@111', 'yes', 0, ''),
(9, '1Fitness Center', 'aaa', 'ssss', '1111111111', '1111111111', 'q1@aa.com', 'wwwqq', 'Monday', 2, '', '', 'www', '9826452519', '2efed@111', 'yes', 0, ''),
(10, '1Fitness Center', 'nitin gupta', 'ssss', '1111111111', '1111111111', 'q1@aa.com', 'wwwqq', 'Monday', 2, '', '', 'www', '9826452519', '2efed@111', 'yes', 0, ''),
(11, '1Fitness Center', 'nitin gupta', 'ssss', '1111111111', '1111111111', 'q1@aa.com', 'wwwqq', 'Monday', 2, '', '', 'www', '9826452519', '2efed@111', 'yes', 0, ''),
(12, '1Fitness Center', 'nitin gupta', 'ssss', '1111111111', '1111111111', 'q1@aa.com', 'wwwqq', 'Monday', 2, '', '', 'www', '9826452519', '2efed@111', 'yes', 0, ''),
(13, '1Fitness Center', 'nitin gupta', 'ssss', '1111111111', '1111111111', 'q1@aa.com', 'wwwqq', 'Monday', 2, '', '', 'www', '9826452519', '2efed@111', 'yes', 0, ''),
(14, '1Fitness Center', 'nitin gupta', 'ssss', '1111111111', '1111111111', 'q1@aa.com', 'wwwqq', 'Monday', 2, '', '', 'www', '9826452519', '2efed@111', 'yes', 0, ''),
(15, '1Fitness Center', 'Abhishek', 'ssss', '1111111111', '1111111111', 'q1@aa.com', 'wwwqq', 'Monday', 2, '', '', 'www', '9770719477', '2efed@111', 'yes', 0, ''),
(16, '', 'aaa', '', '1111111111', '', '', '', 'Monday', 1, '', '', 'www', '9826452519', '2efed@111', 'yes', 0, '   6y5y5y5'),
(17, '', 'nitin gupta', 'ssss', '', '', '', '', 'Monday', 0, '', '', '', '9826452519', '2efed@111', 'yes', 0, ''),
(18, '1Fitness Center', 'nitin gupta', '', '', '', '', '', 'Monday', 0, '', '', '', '9826452519', '', 'yes', 0, ''),
(19, '1Fitness Center', 'nitin gupta', '', '', '', '', '', 'Monday', 0, '', '', '', '9826452519', '', 'yes', 0, ''),
(20, '1Fitness Center', 'nitin gupta', '', '', '', '', '', 'Monday', 0, '', '', '', '9826452519', '', 'yes', 0, ''),
(21, '', 'Abhishek', '', '', '', '', '', 'Monday', 0, '', '', '', '9770719477', '', 'yes', 0, ''),
(22, '12SalonFitness CenterGentsLadies', 'nitin gupta', 'ssss', '1111111111', '1111111111', 'q1@aa.com', 'wwwqq', 'Monday', 1, '', '', 'www', '9826452519', '2efed@111', 'yes', 0, '    hnhn');

-- --------------------------------------------------------

--
-- Table structure for table `inv_help_token`
--

CREATE TABLE IF NOT EXISTS `inv_help_token` (
  `tid` int(11) NOT NULL AUTO_INCREMENT,
  `subject` text NOT NULL,
  `query` text NOT NULL,
  `response` text,
  `rdate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` varchar(20) NOT NULL DEFAULT 'Open',
  `cdate` datetime DEFAULT NULL,
  `uid` int(11) NOT NULL,
  PRIMARY KEY (`tid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `inv_help_token`
--

INSERT INTO `inv_help_token` (`tid`, `subject`, `query`, `response`, `rdate`, `status`, `cdate`, `uid`) VALUES
(1, '', 'ASDADSA', 'slxhskxhskxhskjxhskx ksxkjsxkshkx', '2018-05-18 20:14:08', 'Close', '2018-05-21 23:22:01', 10),
(2, 'demo', 'JHJHJ', 'azxxxz jjhjh', '2018-05-18 20:51:49', 'Close', '2018-05-21 23:23:16', 10);

-- --------------------------------------------------------

--
-- Table structure for table `inv_login`
--

CREATE TABLE IF NOT EXISTS `inv_login` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(30) NOT NULL,
  `password` char(128) NOT NULL,
  `email` text NOT NULL,
  `role` varchar(6) NOT NULL,
  `salt` char(128) NOT NULL,
  `status` varchar(8) NOT NULL COMMENT 'client status active (1) deactive(0)',
  `last_login` datetime NOT NULL,
  PRIMARY KEY (`uid`),
  UNIQUE KEY `user_name` (`user_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=34 ;

--
-- Dumping data for table `inv_login`
--

INSERT INTO `inv_login` (`uid`, `user_name`, `password`, `email`, `role`, `salt`, `status`, `last_login`) VALUES
(2, 'admin', 'd24a99402b77979a083d7ca9d781416c5b3f54b6dc5dc63b9f9b237bfd0c55532247c5d824ec2a846f0044a77b5c19df39cea88bd90e01e24065e6263f736ef8', 'nitinmonugupta@gmail.com', 'admin', '2b31f2ad45c836cf296d5b811226e74f91512124e5c13d99e865ef50fba6995edf1587bbba18465345bcb4a3ea015b1c674eb904d0193aec1a2a5dbe434e9be9', 'Active', '2019-01-19 04:39:07'),
(8, 'demo', '17714b56cc491ee498923ab09cf87a8bd32228385b995f4ebd30673190a6ca7f1f9fc72e16cc2ddc5acf78f15abcaedb9cc037ae2d4e5249023083515e40c2e7', 'abc@abc.com', 'client', '0c9b36e17e0a90b349a0972791d0e6152d3098a2bcc9832c7026cc90a507af7b177535a724f27998f96a9acd7a2866c21ee3895bc2e73d398bfff4073c56f0b7', 'Active', '2018-04-04 11:11:50'),
(10, 'demo123', '04b4ce58a9f6c548e938c07ce01af5a8852ed9ac66fa9653fd1b4fa5a6701ea64c1be78f126c53d3c1e47b2fcadce3e087d372e91a93cb4293421f102b56e37e', 'abc@abc.com', 'client', '4a45e7b5c4fdef1706f232f8f6a43cbdd802be37ea2431e8e12f32c9be245a64ad54ce6bf5f4f6c9cf6a2ab2db64fb273bc4409b6af2ab5fd03e9a6be2b41c24', 'Active', '2019-01-19 04:39:35'),
(32, 'garvgupta', '03d34d7cb4fec93e17dc45659eaaed15844cb481e86f913e59ea4e47c27ed210a3ce7963dafcc009d482f030702bc5246432826b1a6dcbc045a4fe06f019eb07', 'aa@aa.com', 'client', '5760da7ae076887e6d74546b28aa04046a6fd35c5e040daac14cbf80745047848b90fcfab8990252bf610e5cefb81a55d685498ecd7b9237659b11c906c6634d', 'Active', '2018-04-04 09:33:07'),
(33, '17092017191356', 'ef750d67a701917524afe209ca270ca5bd153c4c5be4c84f3c02bda0e1e4161a800038a097cb1cef8248ee532e8f96ae43329935f0e551edde0e5fac67fc266d', '', 'client', 'dbd96becbb2263b67357e57bc5fdc077b22b4f986c75556b526f35b0b6f458bd8dc2d148e6bb1bd95c5c80e9193059b8904ad674334eea542ca72f20b3d5c6fd', 'DeActive', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `inv_login_attempts`
--

CREATE TABLE IF NOT EXISTS `inv_login_attempts` (
  `uid` int(11) DEFAULT NULL,
  `time` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `inv_notification`
--

CREATE TABLE IF NOT EXISTS `inv_notification` (
  `nid` bigint(20) NOT NULL DEFAULT '0',
  `msg` text NOT NULL,
  `priority` tinyint(4) NOT NULL,
  `uid` text NOT NULL,
  PRIMARY KEY (`nid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `inv_promotion_msg`
--

CREATE TABLE IF NOT EXISTS `inv_promotion_msg` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `text` text NOT NULL,
  `mobile` text NOT NULL,
  `date` datetime NOT NULL,
  `uid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `inv_promotion_msg`
--

INSERT INTO `inv_promotion_msg` (`id`, `text`, `mobile`, `date`, `uid`) VALUES
(2, 'hello', '9826452519,7777777777,1111111111,', '2018-06-14 11:25:02', 10),
(3, '10% discount on all service till 20 June 2018 hurry now.\nSample Spa And salon', '9826452519,7777777777,1111111111,', '2018-06-14 11:32:57', 10),
(4, '10% discount on all service till 20 June 2018 hurry now.\nSample Spa And salon', '9826452519,7777777777,1111111111,', '2018-06-14 11:38:35', 10);

-- --------------------------------------------------------

--
-- Table structure for table `inv_services`
--

CREATE TABLE IF NOT EXISTS `inv_services` (
  `sid` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `mprice` float NOT NULL DEFAULT '0' COMMENT 'male price',
  `fprice` float NOT NULL DEFAULT '0' COMMENT 'female price',
  `mcprice` float NOT NULL DEFAULT '0',
  `fcprice` float NOT NULL DEFAULT '0',
  `uid` int(11) NOT NULL,
  PRIMARY KEY (`sid`),
  KEY `uid` (`uid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `inv_services`
--

INSERT INTO `inv_services` (`sid`, `name`, `mprice`, `fprice`, `mcprice`, `fcprice`, `uid`) VALUES
(2, 'FACE WASH', 450, 800, 200, 250, 10),
(3, 'HAIR CUT', 100, 150, 70, 150, 10),
(4, 'FACIAL', 500, 800, 0, 0, 10),
(5, 'ABC', 200, 200, 0, 0, 8),
(6, 'ABC', 100, 0, 0, 0, 10),
(7, 'A233', 100, 0, 0, 0, 10);

-- --------------------------------------------------------

--
-- Table structure for table `inv_sms_log`
--

CREATE TABLE IF NOT EXISTS `inv_sms_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `inv_sms_log`
--

INSERT INTO `inv_sms_log` (`id`, `uid`, `date`, `status`) VALUES
(1, 10, '2018-04-25 15:30:06', NULL),
(2, 10, '2018-04-25 15:40:51', 'Success'),
(3, 10, '2018-04-25 22:29:07', 'Sent'),
(4, 10, '2018-05-22 10:50:19', 'Sent'),
(5, -1, '2018-05-29 22:45:42', NULL),
(6, 10, '2018-06-14 11:33:30', 'Sent'),
(7, 10, '2018-06-14 11:33:31', 'Sent'),
(8, 10, '2018-06-14 11:33:32', 'failed'),
(9, 10, '2018-06-14 11:38:15', 'Sent'),
(10, 10, '2018-06-14 11:38:16', 'Sent'),
(11, 10, '2018-06-14 11:38:17', 'failed'),
(12, 10, '2018-06-14 11:38:36', 'Sent'),
(13, 10, '2018-06-14 11:38:39', 'Sent'),
(14, 10, '2018-06-14 11:38:40', 'failed');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `inv_acc_ledger`
--
ALTER TABLE `inv_acc_ledger`
  ADD CONSTRAINT `inv_acc_ledger_ibfk_1` FOREIGN KEY (`gid`) REFERENCES `inv_acc_groups` (`gid`);

--
-- Constraints for table `inv_acc_purchase`
--
ALTER TABLE `inv_acc_purchase`
  ADD CONSTRAINT `inv_acc_purchase_ibfk_1` FOREIGN KEY (`ladger_id`) REFERENCES `inv_acc_ledger` (`lid`) ON UPDATE CASCADE;

--
-- Constraints for table `inv_acc_stock`
--
ALTER TABLE `inv_acc_stock`
  ADD CONSTRAINT `inv_acc_stock_ibfk_1` FOREIGN KEY (`itemid`) REFERENCES `inv_acc_stock_items` (`itemid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `inv_acc_stock_items`
--
ALTER TABLE `inv_acc_stock_items`
  ADD CONSTRAINT `inv_acc_stock_items_ibfk_1` FOREIGN KEY (`unitid`) REFERENCES `inv_acc_measure_units` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `inv_bank_detail`
--
ALTER TABLE `inv_bank_detail`
  ADD CONSTRAINT `inv_bank_detail_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `inv_login` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `inv_bus_client`
--
ALTER TABLE `inv_bus_client`
  ADD CONSTRAINT `inv_bus_client_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `inv_login` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `inv_bus_client_ibfk_2` FOREIGN KEY (`bid`) REFERENCES `inv_business_type` (`bid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `inv_client`
--
ALTER TABLE `inv_client`
  ADD CONSTRAINT `client` FOREIGN KEY (`uid`) REFERENCES `inv_login` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `inv_customer`
--
ALTER TABLE `inv_customer`
  ADD CONSTRAINT `inv_customer_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `inv_login` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `inv_employees_attendence`
--
ALTER TABLE `inv_employees_attendence`
  ADD CONSTRAINT `inv_employees_attendence_ibfk_1` FOREIGN KEY (`eid`) REFERENCES `inv_employees` (`eid`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
