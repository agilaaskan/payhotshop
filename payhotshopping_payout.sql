-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Dec 08, 2023 at 04:46 AM
-- Server version: 5.7.34
-- PHP Version: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `payhotshopping_payout`
--

-- --------------------------------------------------------

--
-- Table structure for table `app_option`
--

CREATE TABLE `app_option` (
  `id` int(11) NOT NULL,
  `option_value` varchar(255) NOT NULL DEFAULT '',
  `module` varchar(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `app_option`
--

INSERT INTO `app_option` (`id`, `option_value`, `module`) VALUES
(1, 'Haven\'t started processing it', 'merchant_business'),
(2, 'Less than 5 Lakhs', 'merchant_business'),
(3, '5 Lakhs to 25 Lakhs', 'merchant_business'),
(4, '25 Lakhs to 50 Lakhs', 'merchant_business'),
(5, '50 Lakhs to 1 Crore', 'merchant_business'),
(6, 'More than 1 Crore', 'merchant_business'),
(7, 'Marketing', 'merchant_feedback'),
(8, 'Merchant Portal', 'merchant_feedback'),
(9, 'Support', 'merchant_feedback'),
(10, 'Others', 'merchant_feedback'),
(11, 'App', 'blog_category'),
(12, 'Business', 'blog_category'),
(13, 'Design', 'blog_category'),
(14, 'Marketing', 'blog_category'),
(15, 'IT', 'blog_category'),
(16, 'Office', 'blog_category'),
(17, 'Rupayapay', 'blog_category'),
(18, 'Bug', 'merchant_support'),
(19, 'Complaint', 'merchant_support'),
(20, 'Change Request', 'merchant_support'),
(21, 'Query Reuest', 'merchant_support'),
(22, 'Spam Ticket', 'merchant_support'),
(23, 'No Information', 'merchant_support'),
(24, 'GST', 'global_tax_type'),
(25, 'TDS', 'global_tax_type'),
(26, 'Adult goods and services', 'banned_products'),
(27, 'Alcohol', 'banned_products'),
(28, 'Body parts', 'banned_products'),
(29, 'Bulk marketing tools', 'banned_products'),
(30, 'Cable TV,black boxes', 'banned_products'),
(31, 'Child pornography', 'banned_products'),
(32, 'Copyright unlocking devices', 'banned_products'),
(33, 'Copyrighted media', 'banned_products'),
(34, 'Copyrighted software', 'banned_products'),
(35, 'Counterfeit,unauthorized goods', 'banned_products'),
(36, 'Drugs and drug paraphernalia', 'banned_products'),
(37, 'Drug test circumvention aids', 'banned_products'),
(38, 'Endangered species', 'banned_products'),
(39, 'Gaming/gambling', 'banned_products'),
(40, 'Government IDs or documents', 'banned_products'),
(41, 'Hacking,cracking materials', 'banned_products'),
(42, 'Illegal goods', 'banned_products'),
(43, 'Miracle cures', 'banned_products'),
(44, 'Offensive goods', 'banned_products'),
(45, 'Offensive goods', 'banned_products'),
(46, 'online pharmacies', 'banned_products'),
(47, 'Pyrotechnic,hazardous devices', 'banned_products'),
(48, 'Regulated goods', 'banned_products'),
(49, 'Securities', 'banned_products'),
(50, 'Tobacco and cigarettes', 'banned_products'),
(51, 'Traffic devices', 'banned_products'),
(52, 'Weapons', 'banned_products'),
(53, 'Wholesale currency', 'banned_products'),
(54, 'Live animals', 'banned_products'),
(55, 'Marketing schemes', 'banned_products'),
(56, 'Intangible goods', 'banned_products'),
(57, 'Work-at-home', 'banned_products'),
(58, 'Drop-shipped', 'banned_products'),
(59, 'Web-based services', 'banned_products'),
(60, 'Any product or service', 'banned_products'),
(61, 'Complaint', 'customer_support'),
(62, 'No Information', 'customer_support'),
(63, 'Refund', 'customer_support'),
(64, 'Chargeback', 'ryapay_cdr'),
(65, 'Dispute', 'ryapay_cdr'),
(66, 'Resolution', 'ryapay_cdr'),
(67, 'NEFT', 'payment_mode'),
(68, 'RTG', 'payment_mode'),
(69, 'Transfer', 'payment_mode'),
(70, 'Cheque', 'payment_mode'),
(71, 'Cash', 'payment_mode'),
(72, 'collection team', 'mer_emp_type'),
(73, 'Section1', 'gallery'),
(74, 'Section2', 'gallery'),
(75, 'Section4', 'gallery'),
(76, 'Technical', 'career'),
(77, 'Non-Technical', 'career'),
(78, 'Others', 'customer_support');

-- --------------------------------------------------------

--
-- Table structure for table `atom_response`
--

CREATE TABLE `atom_response` (
  `id` int(11) NOT NULL,
  `mmp_txn` varchar(50) NOT NULL,
  `mer_txn` varchar(50) NOT NULL,
  `amt` varchar(50) NOT NULL,
  `surcharge` varchar(50) NOT NULL,
  `prod` varchar(50) DEFAULT NULL,
  `date` varchar(50) NOT NULL,
  `bank_txn` varchar(50) NOT NULL,
  `f_code` varchar(50) NOT NULL,
  `clientcode` varchar(50) DEFAULT NULL,
  `bank_name` varchar(50) DEFAULT NULL,
  `discriminator` varchar(50) DEFAULT NULL,
  `CardNumber` varchar(20) DEFAULT NULL,
  `signature` varchar(255) DEFAULT NULL,
  `merchant_id` varchar(50) DEFAULT NULL,
  `auth_code` varchar(50) DEFAULT NULL,
  `udf1` varchar(255) DEFAULT NULL,
  `udf2` varchar(255) DEFAULT NULL,
  `udf3` varchar(255) DEFAULT NULL,
  `udf4` varchar(255) DEFAULT NULL,
  `udf5` varchar(255) DEFAULT NULL,
  `udf6` varchar(255) DEFAULT NULL,
  `udf7` varchar(255) DEFAULT NULL,
  `udf8` varchar(255) DEFAULT NULL,
  `udf9` varchar(255) DEFAULT NULL,
  `udf10` varchar(255) DEFAULT NULL,
  `udf11` varchar(255) DEFAULT NULL,
  `udf12` varchar(255) DEFAULT NULL,
  `udf13` varchar(255) DEFAULT NULL,
  `udf14` varchar(255) DEFAULT NULL,
  `udf15` varchar(255) DEFAULT NULL,
  `ipg_trn_id` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `business_category`
--

CREATE TABLE `business_category` (
  `id` tinyint(4) NOT NULL,
  `category_name` varchar(50) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `business_category`
--

INSERT INTO `business_category` (`id`, `category_name`) VALUES
(1, 'Financial Services'),
(2, 'Education'),
(3, 'Healthcare'),
(4, 'Utilities'),
(5, 'Government Bodies'),
(6, 'Logistics'),
(7, 'Tours and Travel'),
(8, 'Transport'),
(9, 'Ecommerce'),
(10, 'Food and Beverage'),
(11, 'IT and Software'),
(12, 'Gaming'),
(13, 'Media and Entertainment'),
(14, 'Services'),
(15, 'Housing and Real Estate'),
(16, 'Not-For-Profit'),
(17, 'Social'),
(18, 'Others'),
(19, 'Super Market');

-- --------------------------------------------------------

--
-- Table structure for table `business_sub_category`
--

CREATE TABLE `business_sub_category` (
  `id` smallint(5) NOT NULL,
  `sub_category_name` varchar(100) DEFAULT '',
  `category_id` tinyint(4) NOT NULL DEFAULT '0',
  `status` enum('active','inactive') DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `business_sub_category`
--

INSERT INTO `business_sub_category` (`id`, `sub_category_name`, `category_id`, `status`) VALUES
(1, 'Mutual Fund', 1, 'active'),
(2, 'Lending', 1, 'active'),
(3, 'Cryptocurrency', 1, 'active'),
(4, 'Insurance', 1, 'active'),
(5, 'NBFC', 1, 'active'),
(6, 'Cooperatives', 1, 'active'),
(7, 'Pension Fund', 1, 'active'),
(8, 'Forex', 1, 'active'),
(9, 'Securities', 1, 'active'),
(10, 'Commodities', 1, 'active'),
(11, 'Accounting and Taxes', 1, 'active'),
(12, 'Financial and Investment Advisors/Financial Advisor', 1, 'active'),
(13, 'Crowdfunding Platform', 1, 'active'),
(14, 'Stock Brokerage and Trading', 1, 'active'),
(15, 'Betting', 1, 'active'),
(16, 'Get Rich Schemes', 1, 'active'),
(17, 'College', 2, 'active'),
(18, 'Schools', 2, 'active'),
(19, 'University', 2, 'active'),
(20, 'Professional Courses', 2, 'active'),
(21, 'Distance Learning', 2, 'active'),
(22, 'Pre-School/Day Care', 2, 'active'),
(23, 'Coaching Institute', 2, 'active'),
(24, 'E-Learning', 2, 'active'),
(25, 'Pharmacy', 3, 'active'),
(26, 'Clinic', 3, 'active'),
(27, 'Hospital', 3, 'active'),
(28, 'Lab', 3, 'active'),
(29, 'Dietician/Diet Services', 3, 'active'),
(30, 'Gym and Fitness', 3, 'active'),
(31, 'Health and Lifestyle Coaching', 3, 'active'),
(32, 'Health Products', 3, 'active'),
(33, 'Marketplace/Aggregator', 3, 'active'),
(34, 'Electricity', 4, 'active'),
(35, 'Gas', 4, 'active'),
(36, 'Telecom Service Provider', 4, 'active'),
(37, 'Water', 4, 'active'),
(38, 'Cable operator', 4, 'active'),
(39, 'Broadband', 4, 'active'),
(40, 'DTH', 4, 'active'),
(41, 'Internet service provider', 4, 'active'),
(42, 'Bill Payment and Recharge Aggregators', 4, 'active'),
(43, 'Central Department', 5, 'active'),
(44, 'State Department', 5, 'active'),
(45, 'Freight Consolidation/Management', 6, 'active'),
(46, 'Courier Shipping', 6, 'active'),
(47, 'Public/Contract Warehousing', 6, 'active'),
(48, 'Distribution Management', 6, 'active'),
(49, 'End-to-end logistics', 6, 'active'),
(50, 'Aviation', 7, 'active'),
(51, 'Lodging and Accommodation', 7, 'active'),
(52, 'OTA', 7, 'active'),
(53, 'Tours and Travel Agency', 7, 'active'),
(54, 'Cab/auto hailing', 8, 'active'),
(55, 'Bus ticketing', 8, 'active'),
(56, 'Train and metro ticketing', 8, 'active'),
(57, 'Horizontal Commerce/Marketplace', 9, 'active'),
(58, 'Agricultural products', 9, 'active'),
(59, 'Books and Publications', 9, 'active'),
(60, 'Electronics and Furniture', 9, 'active'),
(61, 'Coupons and deals', 9, 'active'),
(62, 'Product Rental', 9, 'active'),
(63, 'Fashion and Lifestyle', 9, 'active'),
(64, 'Flowers and Gifts', 9, 'active'),
(65, 'Grocery', 9, 'active'),
(66, 'Baby Care and Toys', 9, 'active'),
(67, 'Office Supplies', 9, 'active'),
(68, 'Wholesale/Bulk trade', 9, 'active'),
(69, 'Religious products', 9, 'active'),
(70, 'Pet Care and Supplies', 9, 'active'),
(71, 'Sports goods', 9, 'active'),
(72, 'Arts, crafts and collectibles', 9, 'active'),
(73, 'Sexual Wellness Products', 9, 'active'),
(74, 'Dropshipping', 9, 'active'),
(75, 'Crypto Machinery', 9, 'active'),
(76, 'Tobacco', 9, 'active'),
(77, 'Weapons and Ammunitions', 9, 'active'),
(78, 'Online Food Ordering', 10, 'active'),
(79, 'Restaurants', 10, 'active'),
(80, 'Food Courts/Corporate Cafetaria', 10, 'active'),
(81, 'Catering Services', 10, 'active'),
(82, 'Alcoholic Beverages', 10, 'active'),
(83, 'Restaurant search and reservations', 10, 'active'),
(159, 'SaaS (Software as a service)', 11, 'active'),
(160, 'Platform as a service', 11, 'active'),
(161, 'Infrastructure as a service', 11, 'active'),
(162, 'Consulting and Outsourcing', 11, 'active'),
(163, 'Web designing, development and hosting', 11, 'active'),
(164, 'Technical Support', 11, 'active'),
(165, 'Game developer and publisher', 12, 'active'),
(166, 'E-sports', 12, 'active'),
(167, 'Online Casino', 12, 'active'),
(168, 'Fantasy Sports', 12, 'active'),
(169, 'Game distributor/Marketplace', 12, 'active'),
(170, 'Video on demand', 13, 'active'),
(171, 'Music streaming services', 13, 'active'),
(172, 'Multiplexes', 13, 'active'),
(173, 'Content and Publishing', 13, 'active'),
(174, 'Events and movie ticketing', 13, 'active'),
(175, 'News', 13, 'active'),
(201, 'Repair and cleaning services', 14, 'active'),
(211, 'Interior Designing and Architect', 14, 'active'),
(212, 'Movers and Packers', 14, 'active'),
(213, 'Legal Services', 14, 'active'),
(214, 'Event planning services', 14, 'active'),
(215, 'Service Centre', 14, 'active'),
(216, 'Consulting Services', 14, 'active'),
(217, 'Ad and marketing agencies', 14, 'active'),
(218, 'Services Classifieds', 14, 'active'),
(219, 'Multi-level Marketing', 14, 'active'),
(220, 'Developer', 15, 'active'),
(221, 'Facility Management Company', 15, 'active'),
(222, 'RWA', 15, 'active'),
(223, 'Co-working spaces', 15, 'active'),
(224, 'Real estate classifieds', 15, 'active'),
(225, 'Home or office rentals', 15, 'active'),
(226, 'Charity', 16, 'active'),
(227, 'Educational', 16, 'active'),
(228, 'Religious', 16, 'active'),
(229, 'Personal', 16, 'active'),
(230, 'Dating and Matrimony platforms', 17, 'active'),
(231, 'Social Network', 17, 'active'),
(232, 'Messaging and Communication', 17, 'active'),
(233, 'Professional Network', 17, 'active'),
(234, 'Local/Neighbourhood network', 17, 'active'),
(235, 'Motor Vehicle Supplies', 9, 'active'),
(236, 'Precious Stones and Metals,Watches and Jewelry', 9, 'active'),
(237, 'Shoe Stores', 9, 'active'),
(238, 'Cosmetic Stores', 9, 'active'),
(239, 'Industrial Supplies', 9, 'active'),
(240, 'Computers, Computer Peripheral Equipment, Software', 9, 'active'),
(241, 'Automobile and Truck Dealers-Used Only-Sales', 9, 'active'),
(242, 'Accessory and Apparel Stores-Miscellaneous', 9, 'active'),
(243, 'Furniture and Home Furnishing store', 9, 'active'),
(244, 'Data processing', 11, 'active'),
(245, 'Dental/Laboratory/Medical/Ophthalmic Hospital Equipment and Supplies', 3, 'active'),
(246, 'Health Practitioners, Medical Services-not else where classified', 3, 'active'),
(247, 'Telecom Service including but not ltd to prepaid phone service', 14, 'active'),
(248, 'Recreational and Sporting Camps', 14, 'active'),
(249, 'Photographic studios', 14, 'active'),
(250, 'Professional services', 14, 'active'),
(251, 'National Car Rental', 8, 'active'),
(252, 'Ad/Coupons/Deals Services', 14, 'active'),
(253, 'Cab Service', 7, 'active'),
(254, 'Caterers', 16, 'active'),
(255, 'Computer Programming/Data Processing', 11, 'active'),
(256, 'Consulting/PR Services', 14, 'active'),
(257, 'General Merchandise Stores', 9, 'active'),
(258, 'Health and Beauty Spas', 3, 'active'),
(259, 'Real Estate Agents/Rentals', 15, 'active');

-- --------------------------------------------------------

--
-- Table structure for table `business_type`
--

CREATE TABLE `business_type` (
  `id` tinyint(4) NOT NULL,
  `type_name` varchar(50) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `business_type`
--

INSERT INTO `business_type` (`id`, `type_name`) VALUES
(1, 'Private Limited'),
(2, 'Proprietorship'),
(3, 'Partnership'),
(4, 'Public Limited'),
(5, 'LLP'),
(6, 'Trust'),
(7, 'Society'),
(8, 'NGO'),
(9, 'Not Registered'),
(10, 'Financial Services'),
(11, 'Education'),
(12, 'Healthcare'),
(13, 'Utilities'),
(14, 'Government Bodies'),
(15, 'Logistics'),
(16, 'Tours and Trave'),
(17, 'Transport'),
(18, 'Ecommerce'),
(19, 'Food and Beverage'),
(20, 'IT and Software'),
(21, 'Gaming'),
(22, 'Media and Entertainment'),
(23, 'Services'),
(24, 'Housing and Real Estate'),
(25, 'Not-For-Profit'),
(26, 'Social'),
(27, 'Others');

-- --------------------------------------------------------

--
-- Table structure for table `call_support`
--

CREATE TABLE `call_support` (
  `id` int(11) NOT NULL,
  `sup_category` tinyint(4) DEFAULT NULL,
  `sup_title` varchar(255) DEFAULT NULL,
  `sup_description` text,
  `next_call` datetime DEFAULT NULL,
  `sup_status` enum('open','resolved','closed','pending') DEFAULT 'open',
  `merchant_id` varchar(50) DEFAULT NULL,
  `merchant_mobile` varchar(10) DEFAULT NULL,
  `marchant_email` varchar(50) DEFAULT NULL,
  `merchant_remarks` varchar(255) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `created_user` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `campaign`
--

CREATE TABLE `campaign` (
  `campaign_from` varchar(255) NOT NULL DEFAULT '',
  `campaign_subject` varchar(255) NOT NULL DEFAULT '',
  `campaign_to` varchar(255) NOT NULL DEFAULT '',
  `campaign_message` text,
  `campaign_status` varchar(10) NOT NULL DEFAULT '',
  `campaign_sent` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `case_comment`
--

CREATE TABLE `case_comment` (
  `id` int(11) NOT NULL,
  `case_id` varchar(255) NOT NULL DEFAULT '',
  `comment` text,
  `commented_date` datetime DEFAULT NULL,
  `commented_user` varchar(50) DEFAULT NULL,
  `user_type` enum('customer','merchant','rupayapay') DEFAULT NULL,
  `rupayapay_userid` smallint(9) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cashfree_refund`
--

CREATE TABLE `cashfree_refund` (
  `id` int(11) NOT NULL,
  `payflash_transaction_gid` varchar(50) NOT NULL,
  `payflash_payment_id` int(11) NOT NULL,
  `merchant_id` int(11) DEFAULT NULL,
  `cf_payment_id` varchar(150) NOT NULL,
  `cf_refund_id` varchar(150) NOT NULL,
  `order_id` varchar(150) NOT NULL DEFAULT '',
  `refund_id` varchar(150) DEFAULT NULL,
  `entity` varchar(255) DEFAULT NULL,
  `metadata` varchar(200) DEFAULT NULL,
  `processed_at` varchar(150) DEFAULT '',
  `refund_amount` varchar(150) NOT NULL DEFAULT '',
  `refund_arn` varchar(150) DEFAULT '',
  `refund_charge` varchar(150) DEFAULT '',
  `refund_currency` varchar(150) NOT NULL DEFAULT '',
  `signature` varchar(150) DEFAULT '',
  `refund_mode` varchar(100) DEFAULT NULL,
  `refund_note` varchar(255) DEFAULT NULL,
  `refund_splits` varchar(255) DEFAULT NULL,
  `refund_status` varchar(255) DEFAULT NULL,
  `refund_type` varchar(100) DEFAULT NULL,
  `status_description` varchar(255) NOT NULL,
  `cf_created_at` datetime NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_user` int(11) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `cashfree_refund`
--

INSERT INTO `cashfree_refund` (`id`, `payflash_transaction_gid`, `payflash_payment_id`, `merchant_id`, `cf_payment_id`, `cf_refund_id`, `order_id`, `refund_id`, `entity`, `metadata`, `processed_at`, `refund_amount`, `refund_arn`, `refund_charge`, `refund_currency`, `signature`, `refund_mode`, `refund_note`, `refund_splits`, `refund_status`, `refund_type`, `status_description`, `cf_created_at`, `created_at`, `created_user`, `updated_at`) VALUES
(1, 'YB1704534822022091504201617', 0, 1, '1246822800', 'refund_17832162', 'YB1704534822022091504201617', 'refund_QPid1DoZNGXQjKPE1665914680', 'refund', NULL, NULL, '1', NULL, '0', 'INR', '', 'STANDARD', 'test', '[]', 'PENDING', 'MERCHANT_INITIATED', 'In Progress', '2022-10-16 03:34:40', '2022-10-16 10:04:40', 1, '2022-10-16 10:04:40'),
(2, 'YB1704534822022091504201617', 0, 1, '1246822800', 'refund_17832245', 'YB1704534822022091504201617', 'refund_vZtAc1HAkhbU5TJO1665915232', 'refund', NULL, NULL, '1', NULL, '0', 'INR', '', 'STANDARD', 'test', '[]', 'PENDING', 'MERCHANT_INITIATED', 'In Progress', '2022-10-16 03:43:53', '2022-10-16 10:13:53', 1, '2022-10-16 10:13:53');

-- --------------------------------------------------------

--
-- Table structure for table `cashfree_response`
--

CREATE TABLE `cashfree_response` (
  `id` int(11) NOT NULL,
  `orderId` varchar(150) NOT NULL DEFAULT '',
  `orderAmount` varchar(150) NOT NULL DEFAULT '',
  `referenceId` varchar(150) NOT NULL DEFAULT '',
  `txStatus` varchar(150) NOT NULL DEFAULT '',
  `paymentMode` varchar(150) NOT NULL DEFAULT '',
  `txMsg` varchar(150) NOT NULL DEFAULT '',
  `txTime` varchar(150) NOT NULL DEFAULT '',
  `signature` varchar(150) NOT NULL DEFAULT '',
  `created_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cashfree_upi_response`
--

CREATE TABLE `cashfree_upi_response` (
  `id` int(11) NOT NULL,
  `message` varchar(150) COLLATE utf8_unicode_ci DEFAULT '',
  `orderId` varchar(150) COLLATE utf8_unicode_ci DEFAULT '',
  `referenceId` varchar(150) COLLATE utf8_unicode_ci DEFAULT '',
  `status` varchar(150) COLLATE utf8_unicode_ci DEFAULT '',
  `created_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `created_user` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cashfree_upi_response`
--

INSERT INTO `cashfree_upi_response` (`id`, `message`, `orderId`, `referenceId`, `status`, `created_date`, `created_user`) VALUES
(1, 'Created', 'YBBed9jIEGtJMGytuVIBRGJx', '1216642887', 'OK', '2022-09-03 19:21:52', 1),
(2, 'Created', 'YBBAHEgBxHWtT9rcJ8sn5C2n', '1216829664', 'OK', '2022-09-03 20:26:18', 1),
(3, 'Created', 'YBB4U6i3sKbYpOCGOSauB0z6', '1221841159', 'OK', '2022-09-05 16:02:32', 1),
(4, 'Created', 'YBBuyAnLaO88SB0bjHILW8W5', '1298542778', 'OK', '2022-10-06 02:07:29', 1),
(5, 'Created', 'YBBL4195Dqb16bSViE56T6V9', '1306850152', 'OK', '2022-10-10 00:11:52', 1),
(6, 'Created', 'YBBpMRV7BcOAY6PSAe61ijiT', '1309626599', 'OK', '2022-10-11 13:18:00', 1),
(7, 'Created', 'YBBFB6LKD5z29xggiyd0Ve6d', '1319728978', 'OK', '2022-10-16 13:47:37', 1),
(8, 'Created', 'YBBx4pYn3IkHRz5SviH9bMOC', '1345676070', 'OK', '2022-10-29 13:14:01', 1),
(9, 'Created', 'YBBV3WR0PR66HJX8Nj5l1H65', '1355348873', 'OK', '2022-11-02 13:27:06', 1);

-- --------------------------------------------------------

--
-- Table structure for table `cf_rpay_keys`
--

CREATE TABLE `cf_rpay_keys` (
  `id` int(11) NOT NULL,
  `merchant_id` int(11) NOT NULL DEFAULT '0',
  `app_id` varchar(150) NOT NULL DEFAULT '',
  `secret_key` varchar(150) NOT NULL DEFAULT '',
  `created_date` datetime DEFAULT NULL,
  `created_user` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `chart_of_account`
--

CREATE TABLE `chart_of_account` (
  `id` int(11) NOT NULL,
  `account_code` varchar(20) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `currency` varchar(10) NOT NULL DEFAULT 'INR',
  `account_group` varchar(50) NOT NULL DEFAULT '',
  `main_grouping` varchar(50) NOT NULL DEFAULT '',
  `note_no` varchar(20) NOT NULL DEFAULT '',
  `note_description` varchar(50) NOT NULL DEFAULT '',
  `chart_status` enum('active','inactive') DEFAULT 'active',
  `created_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chart_of_account`
--

INSERT INTO `chart_of_account` (`id`, `account_code`, `description`, `currency`, `account_group`, `main_grouping`, `note_no`, `note_description`, `chart_status`, `created_date`) VALUES
(1, 'AATT01', 'Advanced Tax & TDS Recd', 'INR', 'ASSET', 'Non-current assets', '11', 'Long-term loans and advances', 'active', '2020-05-05 11:46:05'),
(2, 'ABK01', 'Bank Account', 'INR', 'ASSET', 'Current assets', '14', 'Cash & Bank Balances', 'active', '2020-05-05 11:46:05'),
(3, 'ACA01', 'Advances Capital Creditors', 'INR', 'ASSET', 'Non-current assets', '11', 'Long-term loans and advances', 'active', '2020-05-05 11:46:05'),
(4, 'ACD01', 'Deposits Capital Creditors', 'INR', 'ASSET', 'Non-current assets', '11', 'Long-term loans and advances', 'active', '2020-05-05 11:46:05'),
(5, 'ADB01', 'Lic Gratuty Receivable', 'INR', 'ASSET', 'Current assets', '15', 'Short-term loans and advances', 'active', '2020-05-05 11:46:05'),
(6, 'AFA01', 'Air conditioners', 'INR', 'ASSET', 'Non-current assets', '9', 'Fixed Assets Gross Block', 'active', '2020-05-05 11:46:05'),
(7, 'AFA02', 'Computer Hardware', 'INR', 'ASSET', 'Non-current assets', '9', 'Fixed Assets Gross Block', 'active', '2020-05-05 11:46:05'),
(8, 'AFA03', 'Computer Software', 'INR', 'ASSET', 'Non-current assets', '9', 'Fixed Assets Gross Block', 'active', '2020-05-05 11:46:05'),
(9, 'AFA04', 'CCTV System & Camera', 'INR', 'ASSET', 'Non-current assets', '9', 'Fixed Assets Gross Block', 'active', '2020-05-05 11:46:05'),
(10, 'AFA05', 'Furniture & Fixtures', 'INR', 'ASSET', 'Non-current assets', '9', 'Fixed Assets Gross Block', 'active', '2020-05-05 11:46:05'),
(11, 'AFA06', 'Vehicles', 'INR', 'ASSET', 'Non-current assets', '9', 'Fixed Assets Gross Block', 'active', '2020-05-05 11:46:05'),
(12, 'AFA07', 'Office Equipments-Others', 'INR', 'ASSET', 'Non-current assets', '9', 'Fixed Assets Gross Block', 'active', '2020-05-05 11:46:05'),
(13, 'AFA08', 'Intangible Asset-Software', 'INR', 'ASSET', 'Non-current assets', '9', 'Fixed Assets Gross Block', 'active', '2020-05-05 11:46:05'),
(14, 'AFD01', 'Fixed Deposits', 'INR', 'ASSET', 'Current assets', '14', 'Cash & Bank Balances', 'active', '2020-05-05 11:46:05'),
(15, 'AIN01', 'Investement in Equity', 'INR', 'ASSET', 'Non-current assets', '10', 'Investements', 'active', '2020-05-05 11:46:05'),
(16, 'AIRO1', 'Interest Receivable on securities', 'INR', 'ASSET', 'Current assets', '16', 'Other current Assets', 'active', '2020-05-05 11:46:05'),
(17, 'AIRO2', 'Interest Receivable', 'INR', 'ASSET', 'Current assets', '16', 'Other current Assets', 'active', '2020-05-05 11:46:05'),
(18, 'APCO1', 'Pretty Cash - HO', 'INR', 'ASSET', 'Current assets', '14', 'Cash & Bank Balances', 'active', '2020-05-05 11:46:05'),
(19, 'APCO2', 'Pretty Cash - IOU', 'INR', 'ASSET', 'Current assets', '14', 'Cash & Bank Balances', 'active', '2020-05-05 11:46:05'),
(20, 'ARPO1', 'IGST Input Tax', 'INR', 'ASSET', 'Non-current assets', '11', 'Long-term loans and advances', 'active', '2020-05-05 11:46:05'),
(21, 'ARPO2', 'SGST Input Tax', 'INR', 'ASSET', 'Non-current assets', '11', 'Long-term loans and advances', 'active', '2020-05-05 11:46:05'),
(22, 'ARPO3', 'CGST Input Tax', 'INR', 'ASSET', 'Non-current assets', '11', 'Long-term loans and advances', 'active', '2020-05-05 11:46:05'),
(23, 'ATA01', 'Advances Trade Crs', 'INR', 'ASSET', 'Current assets', '15', 'Short-term loans and advances', 'active', '2020-05-05 11:46:05'),
(24, 'ATA02', 'Advance to Employees', 'INR', 'ASSET', 'Current assets', '15', 'Short-term loans and advances', 'active', '2020-05-05 11:46:05'),
(25, 'ATA03', 'Advance to Interest on Loan Creditor', 'INR', 'ASSET', 'Current assets', '15', 'Short-term loans and advances', 'active', '2020-05-05 11:46:05'),
(26, 'ATA04', 'Prepaid Expenses', 'INR', 'ASSET', 'Current assets', '15', 'Short-term loans and advances', 'active', '2020-05-05 11:46:05'),
(27, 'ATA05', 'Employee Mediclaim Receivable', 'INR', 'ASSET', 'Current assets', '15', 'Short-term loans and advances', 'active', '2020-05-05 11:46:05'),
(28, 'ATD01', 'Deposits Trade Crs-Domestic', 'INR', 'ASSET', 'Current assets', '13', 'Trade Receivables', 'active', '2020-05-05 11:46:05'),
(29, 'ATD02', 'Trade Debtors', 'INR', 'ASSET', 'Current assets', '13', 'Trade Receivables', 'active', '2020-05-05 11:46:05'),
(30, 'DEPNO1', 'Depreciation-office Equipment-Mobiles', 'INR', 'EXPENSES', 'Depreciation', '9A', 'Depreciation', 'active', '2020-05-05 13:29:40'),
(31, 'DEPNO2', 'Depreciation-Vehicles', 'INR', 'EXPENSES', 'Depreciation', '9A', 'Depreciation', 'active', '2020-05-05 13:29:40'),
(32, 'DEPNO3', 'Depreciation-Furniture & Fixtures', 'INR', 'EXPENSES', 'Depreciation', '9A', 'Depreciation', 'active', '2020-05-05 13:29:40'),
(33, 'DEPNO4', 'Depreciation-Office Equipment-AC', 'INR', 'EXPENSES', 'Depreciation', '9A', 'Depreciation', 'active', '2020-05-05 13:29:40'),
(34, 'DEPNO5', 'Depreciation-Computer Hardware', 'INR', 'EXPENSES', 'Depreciation', '9A', 'Depreciation', 'active', '2020-05-05 13:29:40'),
(35, 'DEPNO6', 'Depreciation-Computer Software', 'INR', 'EXPENSES', 'Depreciation', '9A', 'Depreciation', 'active', '2020-05-05 13:29:40'),
(36, 'DEPNO7', 'Depreciation-CCTV', 'INR', 'EXPENSES', 'Depreciation', '9A', 'Depreciation', 'active', '2020-05-05 13:29:40'),
(37, 'DEPNO8', 'Depreciation-office Equipment Other', 'INR', 'EXPENSES', 'Non-current assets', '9A', 'Depreciation', 'active', '2020-05-05 13:29:40'),
(38, 'EADO1', 'Bank Charges', 'INR', 'EXPENSES', 'Administrative Expenses', '22', 'Other expenses', 'active', '2020-05-05 13:36:00'),
(39, 'EADO2', 'Books & Periodicals', 'INR', 'EXPENSES', 'Administrative Expenses', '22', 'Other expenses', 'active', '2020-05-05 13:36:00'),
(40, 'EADO3', 'Computer Expenses', 'INR', 'EXPENSES', 'Administrative Expenses', '22', 'Other expenses', 'active', '2020-05-05 13:36:00'),
(41, 'EADO4', 'Courier & Postage Expenses', 'INR', 'EXPENSES', 'Administrative Expenses', '22', 'Other expenses', 'active', '2020-05-05 13:36:00'),
(42, 'EADO5', 'Electricity Expenses', 'INR', 'EXPENSES', 'Administrative Expenses', '22', 'Other expenses', 'active', '2020-05-05 13:36:00'),
(43, 'EADO6', 'Housekeeping Expenses', 'INR', 'EXPENSES', 'Administrative Expenses', '22', 'Other expenses', 'active', '2020-05-05 13:36:00'),
(44, 'EADO7', 'Insurance', 'INR', 'EXPENSES', 'Administrative Expenses', '22', 'Other expenses', 'active', '2020-05-05 13:36:00'),
(45, 'EADO8', 'ISO Audit Fees', 'INR', 'EXPENSES', 'Administrative Expenses', '22', 'Other current Assets', 'active', '2020-05-05 13:36:00'),
(46, 'EADO9', 'Guest Expenditure', 'INR', 'EXPENSES', 'Administrative Expenses', '22', 'Other current Assets', 'active', '2020-05-05 13:36:00'),
(47, 'EAD10', 'Membership & Subscriptions fees', 'INR', 'EXPENSES', 'Administrative Expenses', '22', 'Other expenses', 'active', '2020-05-05 13:36:00'),
(48, 'EAD11', 'Printing & Stationery', 'INR', 'EXPENSES', 'Administrative Expenses', '22', 'Other expenses', 'active', '2020-05-05 13:36:00'),
(49, 'EAD12', 'Rent', 'INR', 'EXPENSES', 'Administrative Expenses', '22', 'Other expenses', 'active', '2020-05-05 13:36:00'),
(50, 'EAD13', 'Rates & Taxes', 'INR', 'EXPENSES', 'Administrative Expenses', '22', 'Other expenses', 'active', '2020-05-05 13:36:00'),
(51, 'EAD14', 'Recruitment Expenses', 'INR', 'EXPENSES', 'Administrative Expenses', '22', 'Other expenses', 'active', '2020-05-05 13:36:00'),
(52, 'EAD15', 'Security Expenses', 'INR', 'EXPENSES', 'Administrative Expenses', '22', 'Other expenses', 'active', '2020-05-05 13:36:00'),
(53, 'EAD16', 'Festival Expenses', 'INR', 'EXPENSES', 'Administrative Expenses', '22', 'Other expenses', 'active', '2020-05-05 13:36:00'),
(54, 'EAD17', 'Pre-employment Expenses', 'INR', 'EXPENSES', 'Administrative Expenses', '2', 'Other expenses', 'active', '2020-05-05 13:36:00'),
(55, 'EAD18', 'Franking Charges', 'INR', 'EXPENSES', 'Administrative Expenses', '22', 'Other expenses', 'active', '2020-05-05 13:36:00'),
(56, 'EAD19', 'Office Maintenance Expenses', 'INR', 'EXPENSES', 'Administrative Expenses', '22', 'Other expenses', 'active', '2020-05-05 13:36:00'),
(57, 'EAD20', 'Profession Tax-Company', 'INR', 'EXPENSES', 'Administrative Expenses', '22', 'Other expenses', 'active', '2020-05-05 13:36:00'),
(58, 'EAD21', 'Gift Expenses', 'INR', 'EXPENSES', 'Administrative Expenses', '22', 'Other expenses', 'active', '2020-05-05 13:36:00'),
(59, 'EAD22', 'Repairs Maintenance-Others', 'INR', 'EXPENSES', 'Administrative Expenses', '22', 'Other expenses', 'active', '2020-05-05 13:36:00'),
(60, 'ECM01', 'Internet Expenses', 'INR', 'EXPENSES', 'Communication Expenses', '22', 'Other expenses', 'active', '2020-05-05 13:36:17'),
(61, 'ECM02', 'Telephone & Mobile Expenses', 'INR', 'EXPENSES', 'Communication Expenses', '22', 'Other expenses', 'active', '2020-05-05 13:36:17'),
(62, 'EDEO1', 'Power', 'INR', 'EXPENSES', 'Direct Expenses', '22', 'Other expenses', 'active', '2020-05-05 13:36:17'),
(63, 'EDEO3', 'Health & Safety Expenses', 'INR', 'EXPENSES', 'Direct Expenses', '22', 'Other expenses', 'active', '2020-05-05 13:36:17'),
(64, 'EDE15', 'Outsources Services', 'INR', 'EXPENSES', 'Direct Expenses', '22', 'Other expenses', 'active', '2020-05-05 13:36:17'),
(65, 'EEBO1', 'Employee Welfare', 'INR', 'EXPENSES', 'Employee benefits expenses', '20', 'Employee benefits expenses', 'active', '2020-05-05 13:36:41'),
(66, 'EEBO2', 'Canteen Expenses', 'INR', 'EXPENSES', 'Employee benefits expenses', '20', 'Employee benefits expenses', 'active', '2020-05-05 13:36:41'),
(67, 'EEBO3', 'Staff Vehicle Expenses', 'INR', 'EXPENSES', 'Employee benefits expenses', '20', 'Employee benefits expenses', 'active', '2020-05-05 13:36:41'),
(68, 'EEBO4', 'Training Expenses', 'INR', 'EXPENSES', 'Employee benefits expenses', '20', 'Employee benefits expenses', 'active', '2020-05-05 13:36:41'),
(69, 'EEBO5', 'Employee Insurance', 'INR', 'EXPENSES', 'Employee benefits expenses', '20', 'Employee benefits expenses', 'active', '2020-05-05 13:36:41'),
(70, 'EEBO6', 'Employee Medical Expenses', 'INR', 'EXPENSES', 'Employee benefits expenses', '20', 'Employee benefits expenses', 'active', '2020-05-05 13:36:41'),
(71, 'EEBO7', 'employee Salaries', 'INR', 'EXPENSES', 'Employee benefits expenses', '20', 'Employee benefits expenses', 'active', '2020-05-05 13:36:41'),
(72, 'EEBO8', 'Stipend', 'INR', 'EXPENSES', 'Employee benefits expenses', '20', 'Employee benefits expenses', 'active', '2020-05-05 13:36:41'),
(73, 'EEBO9', 'Directors Remuneration', 'INR', 'EXPENSES', 'Employee benefits expenses', '20', 'Employee benefits expenses', 'active', '2020-05-05 13:36:41'),
(74, 'EEB10', 'Directors Medical Expenses', 'INR', 'EXPENSES', 'Employee benefits expenses', '20', 'Employee benefits expenses', 'active', '2020-05-05 13:36:41'),
(75, 'EEB11', 'Annual Bonus - Directors', 'INR', 'EXPENSES', 'Employee benefits expenses', '20', 'Employee benefits expenses', 'active', '2020-05-05 13:36:41'),
(76, 'EEB12', 'Annual Bonus - Staff', 'INR', 'EXPENSES', 'Employee benefits expenses', '20', 'Employee benefits expenses', 'active', '2020-05-05 13:36:41'),
(77, 'EEB13', 'Employee Gratuity Exoense', 'INR', 'EXPENSES', 'Employee benefits expenses', '20', 'Employee benefits expenses', 'active', '2020-05-05 13:36:41'),
(78, 'EEB14', 'Overtime employee salaries', 'INR', 'EXPENSES', 'Employee benefits expenses', '20', 'Employee benefits expenses', 'active', '2020-05-05 13:36:41'),
(79, 'EEB15', 'Employee Staff Leave Encashment', 'INR', 'EXPENSES', 'Employee benefits expenses', '20', 'Employee benefits expenses', 'active', '2020-05-05 13:36:41'),
(80, 'EEB16', 'Employee Staff Leave Travel Allowance', 'INR', 'EXPENSES', 'Employee benefits expenses', '20', 'Employee benefits expenses', 'active', '2020-05-05 13:36:41'),
(81, 'EEB17', 'Employer PF Contn', 'INR', 'EXPENSES', 'Employee benefits expenses', '20', 'Employee benefits expenses', 'active', '2020-05-05 13:36:41'),
(82, 'EEB18', 'Employee PF Contn', 'INR', 'EXPENSES', 'Employee benefits expenses', '20', 'Employee benefits expenses', 'active', '2020-05-05 13:36:41'),
(83, 'EEB19', 'EDLI & Admin Charges on PF', 'INR', 'EXPENSES', 'Employee benefits expenses', '20', 'Employee benefits expenses', 'active', '2020-05-05 13:36:41'),
(84, 'EEB20', 'Breakfast Allowance', 'INR', 'EXPENSES', 'Employee benefits expenses', '20', 'Employee benefits expenses', 'active', '2020-05-05 13:36:41'),
(85, 'EEB21', 'Employer ESIC', 'INR', 'EXPENSES', 'Employee benefits expenses', '20', 'Employee benefits expenses', 'active', '2020-05-05 13:36:41'),
(86, 'EEB22', 'Employee ESIC Crs-Domestic', 'INR', 'EXPENSES', 'Employee benefits expenses', '20', 'Employee benefits expenses', 'active', '2020-05-05 13:36:41'),
(87, 'EEB23', 'Employee Joining Bonus', 'INR', 'EXPENSES', 'Employee benefits expenses', '20', 'Employee benefits expenses', 'active', '2020-05-05 13:36:41'),
(88, 'EFCO1', 'Interest on Loan', 'INR', 'EXPENSES', 'Finance Costs', '21', 'Finance Costs', 'active', '2020-05-05 13:38:09'),
(89, 'EFCO2', 'Interest on Car Loans', 'INR', 'EXPENSES', 'Finance Costs', '21', 'Finance Costs', 'active', '2020-05-05 13:38:09'),
(90, 'EFCO3', 'Interest on loans from related parties', 'INR', 'EXPENSES', 'Finance Costs', '21', 'Finance Costs', 'active', '2020-05-05 13:38:09'),
(91, 'EFCO4', 'Interest on Income Tax', 'INR', 'EXPENSES', 'Finance Costs', '21', 'Finance Costs', 'active', '2020-05-05 13:38:09'),
(92, 'EFCO5', 'Interest on Profession Tax', 'INR', 'EXPENSES', 'Finance Costs', '21', 'Finance Costs', 'active', '2020-05-05 13:38:09'),
(93, 'EFCO6', 'Interest on TDS', 'INR', 'EXPENSES', 'Finance Costs', '21', 'Finance Costs', 'active', '2020-05-05 13:38:09'),
(94, 'EITO1', 'Tax Expenses', 'INR', 'EXPENSES', 'Professional Fees', '22', 'Other Expenses', 'active', '2020-05-05 13:38:09'),
(95, 'EITO2', 'Deferred Tax Expense', 'INR', 'EXPENSES', 'Professional Fees', '22', 'Other Expenses', 'active', '2020-05-05 13:38:09'),
(96, 'ELP01', 'Consultancy Fees', 'INR', 'EXPENSES', 'Professional Fees', '22', 'Other Expenses', 'active', '2020-05-05 13:38:09'),
(97, 'ELP02', 'Technical Fees', 'INR', 'EXPENSES', 'Professional Fees', '22', 'Other Expenses', 'active', '2020-05-05 13:38:09'),
(98, 'ELP03', 'Statutory Audit Fees', 'INR', 'EXPENSES', 'Professional Fees', '22', 'Other Expenses', 'active', '2020-05-05 13:38:09'),
(99, 'ELP04', 'Tax Audit Fees', 'INR', 'EXPENSES', 'Professional Fees', '22', 'Other Expenses', 'active', '2020-05-05 13:38:09'),
(100, 'ELP05', 'Returning Filling Fees', 'INR', 'EXPENSES', 'Professional Fees', '22', 'Other Expenses', 'active', '2020-05-05 13:38:09'),
(101, 'ELP06', 'Legal Fees', 'INR', 'EXPENSES', 'Professional Fees', '22', 'Other Expenses', 'active', '2020-05-05 13:38:09'),
(102, 'EOE01', 'Loss on sales of Fixed Asset', 'INR', 'EXPENSES', 'Other Operating Expenses', '18', 'Other Expenses', 'active', '2020-05-05 13:38:09'),
(103, 'EOE03', 'Investment Related Expenses', 'INR', 'EXPENSES', 'Other Operating Expenses', '18', 'Other Expenses', 'active', '2020-05-05 13:38:09'),
(104, 'EOE04', 'Loss on Sale Of Investment', 'INR', 'EXPENSES', 'Other Operating Expenses', '18', 'Other Expenses', 'active', '2020-05-05 13:38:09'),
(105, 'EOE05', 'Miscellanous Expenses', 'INR', 'EXPENSES', 'Other Operating Expenses', '18', 'Other Expenses', 'active', '2020-05-05 13:38:09'),
(106, 'EOE06', 'Donations', 'INR', 'EXPENSES', 'Other Operating Expenses', '18', 'Other Expenses', 'active', '2020-05-05 13:38:09'),
(107, 'EOE07', 'Prior period expenses', 'INR', 'EXPENSES', 'Other Operating Expenses', '22', 'Other Expenses', 'active', '2020-05-05 13:38:09'),
(108, 'EOE08', 'Short Provision written off', 'INR', 'EXPENSES', 'Other Operating Expenses', '22', 'Other Expenses', 'active', '2020-05-05 13:38:09'),
(109, 'EOE09', 'Expense Round off', 'INR', 'EXPENSES', 'Other Operating Expenses', '22', 'Other Expenses', 'active', '2020-05-05 13:38:09'),
(110, 'ESD01', 'Business promotion', 'INR', 'EXPENSES', 'Selling & Distibution', '22', 'Other Expenses', 'active', '2020-05-05 13:38:09'),
(111, 'ESD03', 'Discount allowed', 'INR', 'EXPENSES', 'Selling & Distibution', '22', 'Other Expenses', 'active', '2020-05-05 13:38:09'),
(112, 'ETC01', 'Travelling & Conveyance', 'INR', 'EXPENSES', 'Travelling & Conveyance', '22', 'Other Expenses', 'active', '2020-05-05 13:38:09'),
(113, 'ETC02', 'Motor Car Expense Other', 'INR', 'EXPENSES', 'Travelling & Conveyance', '22', 'Other Expenses', 'active', '2020-05-05 13:38:09'),
(114, 'ARPO3', 'CGST Input Tax', 'INR', 'EXPENSES', 'Non-current assets', '11', 'Long-term loans and advances', 'active', '2020-05-05 13:38:09'),
(115, 'ATA01', 'Advances Trade Crs', 'INR', 'EXPENSES', 'Current assets', '15', 'Short-term loans and advances', 'active', '2020-05-05 13:38:09'),
(116, 'ATA02', 'Advance to Employees', 'INR', 'EXPENSES', 'Current assets', '15', 'Short-term loans and advances', 'active', '2020-05-05 13:38:09'),
(117, 'ATA03', 'Advance to Interest on Loan Creditor', 'INR', 'EXPENSES', 'Current assets', '15', 'Short-term loans and advances', 'active', '2020-05-05 13:38:09'),
(118, 'ATA04', 'Prepaid Expenses', 'INR', 'EXPENSES', 'Current assets', '15', 'Short-term loans and advances', 'active', '2020-05-05 13:38:09'),
(119, 'ATA05', 'Employee Mediclaim Receivable', 'INR', 'EXPENSES', 'Current assets', '15', 'Short-term loans and advances', 'active', '2020-05-05 13:38:09'),
(120, 'IFIO1', 'Interest On FD', 'INR', 'REVENUE', 'Final costs', '18', 'Other Income', 'active', '2020-05-05 15:25:13'),
(121, 'IFIO2', 'Interest on loans given', 'INR', 'REVENUE', 'Final costs', '18', 'Other Income', 'active', '2020-05-05 15:25:13'),
(122, 'IFIO3', 'Interest on bonds/debentures', 'INR', 'REVENUE', 'Final costs', '18', 'Other Income', 'active', '2020-05-05 15:25:13'),
(123, 'IFIO4', 'Interest on assesment', 'INR', 'REVENUE', 'Final costs', '18', 'Other Income', 'active', '2020-05-05 15:25:13'),
(124, 'IFIO5', 'Interest from Banks', 'INR', 'REVENUE', 'Final costs', '21', 'Other Income', 'active', '2020-05-05 15:25:13'),
(125, 'IFIO6', 'Interest on Deposits', 'INR', 'REVENUE', 'Final costs', '18', 'Other Income', 'active', '2020-05-05 15:25:13'),
(126, 'IOIO1', 'Income From Dividends on equity shares', 'INR', 'REVENUE', 'Other Income', '18', 'Other Income', 'active', '2020-05-05 15:25:13'),
(127, 'IOIO2', 'Income From Dividends on mutual funds', 'INR', 'REVENUE', 'Other Income', '18', 'Other Income', 'active', '2020-05-05 15:25:13'),
(128, 'IOIO3', 'Profit on sales of Investments', 'INR', 'REVENUE', 'Other Income', '18', 'Other Income', 'active', '2020-05-05 15:25:13'),
(129, 'IOR01', 'Discount Received', 'INR', 'REVENUE', 'Other Income', '18', 'Other Income', 'active', '2020-05-05 15:25:13'),
(130, 'IOR02', 'Income Round off', 'INR', 'REVENUE', 'Other Income', '18', 'Other Income', 'active', '2020-05-05 15:25:13'),
(131, 'IOR03', 'Profit on sale of fixed asset', 'INR', 'REVENUE', 'Other Income', '18', 'Other Income', 'active', '2020-05-05 15:25:13'),
(132, 'IOR04', 'Miscellanous Income', 'INR', 'REVENUE', 'Other Income', '18', 'Other Income', 'active', '2020-05-05 15:25:13'),
(133, 'IOR05', 'Prior period Income', 'INR', 'REVENUE', 'Other Income', '18', 'Other Income', 'active', '2020-05-05 15:25:13'),
(134, 'ISF01', 'Sales-Fixed assets', 'INR', 'REVENUE', 'Sales Fixed Assets', '9', 'Fixed Assets', 'active', '2020-05-05 15:25:13'),
(135, 'ISS01', 'Sale of Services', 'INR', 'REVENUE', 'Sale Of Services', '17', 'Revenue from operations', 'active', '2020-05-05 15:25:13'),
(136, 'LAD01', 'AC D - Office Equipments(AC)', 'INR', 'LIABILITIES', 'Non-current assets', '9', 'Fixed Assets', 'active', '2020-05-05 15:25:13'),
(137, 'LAD02', 'AC D - Furniture & Fixtures', 'INR', 'LIABILITIES', 'Non-current assets', '9', 'Fixed Assets', 'active', '2020-05-05 15:25:13'),
(138, 'LAD03', 'AC D - Vehicles', 'INR', 'LIABILITIES', 'Non-current assets', '9', 'Fixed Assets', 'active', '2020-05-05 15:25:13'),
(139, 'LAD04', 'AC D - Office Equipments(Others)', 'INR', 'LIABILITIES', 'Non-current assets', '9', 'Fixed Assets', 'active', '2020-05-05 15:25:13'),
(140, 'LAD05', 'AC D - Computer Hardware', 'INR', 'LIABILITIES', 'Non-current assets', '9', 'Fixed Assets', 'active', '2020-05-05 15:25:13'),
(141, 'LAD06', 'AC D - Computer Software', 'INR', 'LIABILITIES', 'Non-current assets', '9', 'Fixed Assets', 'active', '2020-05-05 15:25:13'),
(142, 'LAD07', 'AC D - CCTV', 'INR', 'LIABILITIES', 'Non-current assets', '9', 'Fixed Assets', 'active', '2020-05-05 15:25:13'),
(143, 'LCC06', 'Captial Creditors', 'INR', 'LIABILITIES', 'Current assets', '15', 'Short-term loans and advances', 'active', '2020-05-05 15:25:13'),
(144, 'LEE01', 'Gratuity Payable', 'INR', 'LIABILITIES', 'Non-current liabilities', '4A', 'Long Term Provisions', 'active', '2020-05-05 15:25:13'),
(145, 'LEE02', 'Profession Tax Payable', 'INR', 'LIABILITIES', 'Statutory liabilities', '7', 'Other Current Liabilities', 'active', '2020-05-05 15:25:13'),
(146, 'LEE03', 'ESIC Payable - Employee Contn', 'INR', 'LIABILITIES', 'Statutory liabilities', '7', 'Other Current Liabilities', 'active', '2020-05-05 15:25:13'),
(147, 'LEE04', 'ESIC Payable - Employer Contn', 'INR', 'LIABILITIES', 'Statutory liabilities', '7', 'Other Current Liabilities', 'active', '2020-05-05 15:25:13'),
(148, 'LEE05', 'Providend Fund - Employee Payable', 'INR', 'LIABILITIES', 'Statutory liabilities', '7', 'Other Current Liabilities', 'active', '2020-05-05 15:25:13'),
(149, 'LEE06', 'Providend Fund - Employer Payable', 'INR', 'LIABILITIES', 'Statutory liabilities', '7', 'Other Current Liabilities', 'active', '2020-05-05 15:25:13'),
(150, 'LEE07', 'EDLI & Admin Charges on PF Payable', 'INR', 'LIABILITIES', 'Statutory liabilities', '7', 'Other Current Liabilities', 'active', '2020-05-05 15:25:13'),
(151, 'LEE08', 'Salaries & Wages Payable', 'INR', 'LIABILITIES', 'Employee Liabilities Paypal', '6', 'Trade Payables', 'active', '2020-05-05 15:25:13'),
(152, 'LEE09', 'Salaries & Wages Arrears Payable', 'INR', 'LIABILITIES', 'Employee Liabilities Paypal', '6', 'Trade Payables', 'active', '2020-05-05 15:25:13'),
(153, 'LEE10', 'Employee Bonus Payable', 'INR', 'LIABILITIES', 'Employee Liabilities Paypal', '6', 'Trade Payables', 'active', '2020-05-05 15:25:13'),
(154, 'LEE11', 'Leave Enhancement Payable', 'INR', 'LIABILITIES', 'Employee Liabilities Paypal', '6', 'Trade Payables', 'active', '2020-05-05 15:25:13'),
(155, 'LEE12', 'Employee Welfare', 'INR', 'LIABILITIES', 'Employee Liabilities Paypal', '8', 'Long Term loans and advances', 'active', '2020-05-05 15:25:13'),
(156, 'LIT01', 'Provision for Tax', 'INR', 'REVENUE', 'Non-current assets', '11', 'Long-term loans and advances', 'active', '2020-05-05 15:59:35'),
(157, 'LIT03', 'Deferred Tax Liabilities', 'INR', 'REVENUE', 'Non-current liabilities', '4', 'Deferred Tax Liability', 'active', '2020-05-05 15:59:35'),
(158, 'LPR01', 'Outstading Liabilities', 'INR', 'REVENUE', 'Current liabilities', '6', 'Trade Payables', 'active', '2020-05-05 15:59:35'),
(159, 'LRS01', 'General Reserve', 'INR', 'REVENUE', 'ShareHolder\'s funds', '2', 'Reserves and Surplus', 'active', '2020-05-05 15:59:35'),
(160, 'LRS02', 'Profit & Loss Account', 'INR', 'REVENUE', 'ShareHolder\'s funds', '2', 'Reserves and Surplus', 'active', '2020-05-05 15:59:35'),
(161, 'LSC01', 'Equity Share Capital', 'INR', 'REVENUE', 'ShareHolder\'s funds', '1', 'Share Capital', 'active', '2020-05-05 15:59:35'),
(162, 'LSL01', 'Car Loan', 'INR', 'REVENUE', 'Current liabilities', '5', 'Short-term borrowings', 'active', '2020-05-05 15:59:35'),
(163, 'LSL02', 'Cash credit Account', 'INR', 'REVENUE', 'Current liabilities', '5', 'Short-term borrowings', 'active', '2020-05-05 15:59:35'),
(164, 'LTA01', 'Trade debtors Advance', 'INR', 'REVENUE', 'Current liabilities', '7', 'Other Current Liabilities', 'active', '2020-05-05 15:59:35'),
(165, 'LTC01', 'Trade Creditors', 'INR', 'REVENUE', 'Current liabilities', '6', 'Trade Payables', 'active', '2020-05-05 15:59:35'),
(166, 'LTC02', 'Trade Creditors Employees', 'INR', 'REVENUE', 'Current liabilities', '6', 'Trade Payables', 'active', '2020-05-05 15:59:35'),
(167, 'LTD01', 'TDS on Contractors Payable', 'INR', 'REVENUE', 'Statutory liabilities', '7', 'Other Current liabilities', 'active', '2020-05-05 15:59:35'),
(168, 'LTD02', 'TDS on Prof & Tech Fees Payable', 'INR', 'REVENUE', 'Statutory liabilities', '7', 'Other Current liabilities', 'active', '2020-05-05 15:59:35'),
(169, 'LTD03', 'TDS on Rent Payable(Immov prop)', 'INR', 'REVENUE', 'Statutory liabilities', '7', 'Other Current liabilities', 'active', '2020-05-05 15:59:35'),
(170, 'LTD04', 'TDS on Rent Payable(Mov Prop)', 'INR', 'REVENUE', 'Statutory liabilities', '7', 'Other Current liabilities', 'active', '2020-05-05 15:59:35'),
(171, 'LTD05', 'TDS on Int other than int on sec', 'INR', 'REVENUE', 'Statutory liabilities', '7', 'Other Current liabilities', 'active', '2020-05-05 15:59:35'),
(172, 'LTD06', 'TDS on Salaries Payable', 'INR', 'LIABILITIES', 'Statutory liabilities', '7', 'Other Current liabilities', 'active', '2020-05-05 15:59:35'),
(173, 'LTD07', 'Interest on TDS Payable', 'INR', 'LIABILITIES', 'Statutory liabilities', '7', 'Other Current liabilities', 'active', '2020-05-05 15:59:35'),
(174, 'LUL01', 'Harsha Naik', 'INR', 'LIABILITIES', 'Non-current liabilities', '3', 'Long-term borrowings', 'active', '2020-05-05 15:59:35'),
(175, 'LUL02', 'Supriya Naik', 'INR', 'LIABILITIES', 'Non-current liabilities', '3', 'Long-term borrowings', 'active', '2020-05-05 15:59:35'),
(176, 'MAT01', 'MAT Credit Entitlement', 'INR', 'ASSET', 'Non-current assets', '11', 'Long Term loans and advances', 'active', '2020-05-05 15:59:35'),
(177, '', 'Round OFF', 'INR', 'EXPENSES', 'Other Expenses', '22', 'Other Expenses', 'active', '2020-05-05 15:59:35'),
(178, 'SLR01', 'Saler Return', 'INR', 'EXPENSES', 'Revenue from operations', '17', 'Revenue from operations', 'active', '2020-05-05 15:59:35'),
(179, 'LSC01', 'Equity Share Capital', 'INR', 'REVENUE', 'ShareHolder\'s funds', '1', 'Share Capital', 'active', '2020-05-09 11:52:25');

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `mobile_no` varchar(10) DEFAULT NULL,
  `subject` varchar(200) DEFAULT NULL,
  `message` text,
  `lead_from` enum('registration','contact') DEFAULT 'contact',
  `created_date` datetime DEFAULT NULL,
  `resend_message` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `coupon_option`
--

CREATE TABLE `coupon_option` (
  `id` int(11) NOT NULL,
  `coupon_option` varchar(255) DEFAULT NULL,
  `option_type` enum('type','sub_type') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `coupon_option`
--

INSERT INTO `coupon_option` (`id`, `coupon_option`, `option_type`) VALUES
(1, 'Flat Discount', 'type'),
(2, 'Percentage Discount', 'type'),
(3, 'Free Shipping', 'type'),
(4, 'Entire Order', 'sub_type'),
(5, 'Orders Over', 'sub_type'),
(6, 'Specific Product', 'sub_type');

-- --------------------------------------------------------

--
-- Table structure for table `currency`
--

CREATE TABLE `currency` (
  `id` tinyint(4) NOT NULL,
  `country` varchar(255) DEFAULT NULL,
  `currency` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `currency`
--

INSERT INTO `currency` (`id`, `country`, `currency`) VALUES
(1, 'India', 'INR');

-- --------------------------------------------------------

--
-- Table structure for table `customer_case`
--

CREATE TABLE `customer_case` (
  `id` int(11) NOT NULL,
  `case_gid` varchar(255) NOT NULL DEFAULT '',
  `case_type` tinyint(4) NOT NULL DEFAULT '0',
  `transaction_gid` varchar(255) NOT NULL DEFAULT '',
  `transaction_amount` double(16,2) NOT NULL DEFAULT '0.00',
  `customer_name` varchar(255) NOT NULL DEFAULT '',
  `customer_email` varchar(255) NOT NULL DEFAULT '',
  `customer_mobile` varchar(15) NOT NULL DEFAULT '',
  `customer_reason` text,
  `status` enum('open','under review','cancelled','closed') DEFAULT 'open',
  `customer_caseid` varchar(50) NOT NULL DEFAULT '',
  `customer_url` varchar(255) NOT NULL DEFAULT '',
  `merchant_caseid` varchar(50) NOT NULL DEFAULT '',
  `merchant_url` varchar(255) NOT NULL DEFAULT '',
  `rupayapay_caseid` varchar(50) NOT NULL DEFAULT '',
  `rupayapay_url` varchar(255) NOT NULL DEFAULT '',
  `created_date` datetime DEFAULT NULL,
  `merchant_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `id` int(11) NOT NULL,
  `department_name` varchar(50) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`id`, `department_name`) VALUES
(1, 'Administration'),
(2, 'Account'),
(3, 'Finance'),
(4, 'Settlement'),
(5, 'Technical'),
(6, 'Networking'),
(7, 'Support'),
(8, 'Marketing'),
(9, 'Sales'),
(10, 'Risk & Compliance'),
(11, 'Legal');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `id` int(11) NOT NULL,
  `employee_username` varchar(50) NOT NULL DEFAULT '',
  `first_name` varchar(50) NOT NULL DEFAULT '',
  `last_name` varchar(50) NOT NULL DEFAULT '',
  `designation` varchar(50) DEFAULT '',
  `personal_email` varchar(50) NOT NULL DEFAULT '',
  `official_email` varchar(50) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  `mobile_no` varchar(10) NOT NULL DEFAULT '',
  `department` tinyint(4) NOT NULL DEFAULT '0',
  `user_type` tinyint(4) NOT NULL DEFAULT '0',
  `last_seen_at` datetime DEFAULT NULL,
  `last_password_change` datetime DEFAULT NULL,
  `remember_token` varchar(255) DEFAULT NULL,
  `ft_login` enum('Y','N') DEFAULT 'Y',
  `twofa` enum('Y','N') DEFAULT 'Y',
  `threefa` enum('Y','N') DEFAULT 'Y',
  `mgs_count` tinyint(4) DEFAULT '0',
  `failed_attempts` tinyint(4) DEFAULT '0',
  `employee_status` enum('active','inactive') DEFAULT 'active',
  `created_date` datetime DEFAULT NULL,
  `created_user` int(11) DEFAULT NULL,
  `is_account_locked` enum('Y','N') DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`id`, `employee_username`, `first_name`, `last_name`, `designation`, `personal_email`, `official_email`, `password`, `mobile_no`, `department`, `user_type`, `last_seen_at`, `last_password_change`, `remember_token`, `ft_login`, `twofa`, `threefa`, `mgs_count`, `failed_attempts`, `employee_status`, `created_date`, `created_user`, `is_account_locked`) VALUES
(1, 'PFRajat', 'Rajat', 'Kumar', 'Chief Executive Officer', 'ciamala.askan@gmail.com', 'ciamala.askan@gmail.com', '$2y$10$lKQE.4tY66Lh3C7X8zOxMOm4qNlZgJe9tuMQ9bfaoaQV3g3BQEqU2', '9071116764', 1, 1, '2023-09-11 16:23:24', NULL, 'vIVFhOFAGZj9hJdLSEQpngjNHS4E1mu8ur4qps2yaLhVvBtj2FMMsjorDE4Q', 'N', 'Y', 'Y', 0, 0, 'active', '2023-01-31 11:30:49', 1, 'N'),
(2, 'Faisal', 'Faisal', 'Ali', 'Officer', 'rajat.kumar@finware.tech', 'rajat.kumar@finware.tech', '$2y$10$lKQE.4tY66Lh3C7X8zOxMOm4qNlZgJe9tuMQ9bfaoaQV3g3BQEqU2', '7892419268', 1, 1, NULL, NULL, NULL, 'N', 'Y', 'Y', 0, 0, 'active', '2023-01-31 11:30:49', 1, 'N'),
(3, 'Prakash', 'Prakash', 'Rockpay', 'Accountant', 'prakash.n@yourbackers.org', 'prakash.n@yourbackers.org', '$2y$10$lKQE.4tY66Lh3C7X8zOxMOm4qNlZgJe9tuMQ9bfaoaQV3g3BQEqU2', '7845078719', 1, 3, '2023-02-11 11:39:59', NULL, NULL, 'N', 'Y', 'Y', 0, 0, 'active', '2023-01-31 11:30:49', 1, 'N'),
(4, 'kannan', 'Kannan', 'Raj', 'Chief Technical Officer', 'info@askantech.com', 'kannan@askantech.com', '$2y$10$pYmIpGH9Zc7jNkh0XUcwSO1N0UJBJ4AcP8348wiZigDWkSfPu82.O', '7871997663', 1, 3, '2023-03-07 18:10:25', NULL, NULL, 'N', 'Y', 'Y', 0, 0, 'active', '2023-03-07 17:51:15', 1, 'N'),
(5, 'ganesh', 'Ganesh', 'K', 'Officer', 'ganesh.askan@gmail.com', 'ganesh.askan@gmail.com', '$2y$10$pYmIpGH9Zc7jNkh0XUcwSO1N0UJBJ4AcP8348wiZigDWkSfPu82.O', '9789501590', 1, 3, '2023-03-07 18:10:25', NULL, NULL, 'N', 'Y', 'Y', 0, 2, 'active', '2023-03-07 17:51:15', 1, 'N');

-- --------------------------------------------------------

--
-- Table structure for table `employee_login_activity`
--

CREATE TABLE `employee_login_activity` (
  `id` int(11) NOT NULL,
  `log_ipaddress` varchar(50) NOT NULL DEFAULT '',
  `log_device` varchar(50) NOT NULL DEFAULT '',
  `log_os` varchar(50) NOT NULL DEFAULT '',
  `log_browser` varchar(50) NOT NULL DEFAULT '',
  `log_time` datetime DEFAULT NULL,
  `log_employee` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee_login_activity`
--

INSERT INTO `employee_login_activity` (`id`, `log_ipaddress`, `log_device`, `log_os`, `log_browser`, `log_time`, `log_employee`) VALUES
(1, '122.171.23.79', 'System', 'Windows 10', 'Chrome', '2023-02-06 16:21:54', 1),
(2, '122.171.23.79', 'System', 'Windows 10', 'Chrome', '2023-02-06 16:43:41', 1),
(3, '122.171.23.79', 'System', 'Windows 10', 'Firefox', '2023-02-07 10:58:37', 1),
(4, '117.205.235.84', 'System', 'Windows 10', 'Chrome', '2023-02-07 11:07:39', 3),
(5, '122.171.23.79', 'System', 'Windows 10', 'Firefox', '2023-02-07 18:26:39', 1),
(6, '122.171.22.222', 'System', 'Windows 10', 'Chrome', '2023-02-08 15:28:20', 1),
(7, '117.252.146.208', 'System', 'Windows 10', 'Chrome', '2023-02-11 11:28:43', 3),
(8, '103.98.32.54', 'System', 'Mac OS X', 'Chrome', '2023-03-07 17:48:45', 1),
(9, '103.98.32.54', 'System', 'Mac OS X', 'Chrome', '2023-03-07 18:01:36', 4),
(10, '122.171.20.27', 'System', 'Windows 10', 'Firefox', '2023-03-14 13:13:56', 1),
(11, '122.171.22.10', 'System', 'Windows 10', 'Firefox', '2023-03-15 14:14:20', 1),
(12, '122.171.22.10', 'System', 'Windows 10', 'Chrome', '2023-03-16 16:31:13', 1),
(13, '152.58.224.94', 'System', 'Windows 10', 'Chrome', '2023-06-13 15:00:36', 1),
(14, '152.58.223.249', 'System', 'Windows 10', 'Chrome', '2023-06-15 08:16:08', 1),
(15, '117.196.152.227', 'System', 'Mac OS X', 'Chrome', '2023-07-10 12:29:17', 1),
(16, '117.205.235.240', 'System', 'Mac OS X', 'Chrome', '2023-08-07 10:07:17', 1),
(17, '117.205.235.240', 'System', 'Mac OS X', 'Chrome', '2023-08-07 10:50:19', 1),
(18, '117.205.235.240', 'System', 'Mac OS X', 'Chrome', '2023-08-07 18:11:10', 1),
(19, '59.93.0.55', 'System', 'Mac OS X', 'Chrome', '2023-08-08 10:09:29', 1),
(20, '127.0.0.1', 'System', 'Mac OS X', 'Chrome', '2023-08-08 10:35:30', 1),
(21, '127.0.0.1', 'System', 'Mac OS X', 'Chrome', '2023-08-08 11:00:05', 1),
(22, '127.0.0.1', 'System', 'Mac OS X', 'Chrome', '2023-08-08 11:22:56', 1),
(23, '127.0.0.1', 'System', 'Mac OS X', 'Chrome', '2023-08-18 18:11:06', 1),
(24, '117.247.187.103', 'System', 'Mac OS X', 'Chrome', '2023-09-11 15:52:59', 1),
(25, '117.247.187.103', 'System', 'Mac OS X', 'Chrome', '2023-09-11 16:18:49', 1),
(26, '117.247.187.103', 'System', 'Mac OS X', 'Chrome', '2023-09-11 16:23:12', 1);

-- --------------------------------------------------------

--
-- Table structure for table `emp_academic`
--

CREATE TABLE `emp_academic` (
  `id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL DEFAULT '0',
  `inst_name` varchar(50) NOT NULL DEFAULT '',
  `inst_loc` varchar(255) NOT NULL DEFAULT '',
  `affil_university` varchar(50) NOT NULL DEFAULT '',
  `mobile_no` varchar(10) NOT NULL DEFAULT '',
  `academic` enum('full-time','part-time') DEFAULT NULL,
  `course` varchar(50) NOT NULL DEFAULT '',
  `course_completed` datetime DEFAULT NULL,
  `enroll_or_regno` varchar(50) DEFAULT '',
  `marks_secured` varchar(10) DEFAULT '',
  `created_date` datetime DEFAULT NULL,
  `created_user` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `emp_bgverify`
--

CREATE TABLE `emp_bgverify` (
  `id` int(11) NOT NULL,
  `emp_id` int(11) NOT NULL DEFAULT '0',
  `emp_details` enum('Not Completed','Completed') DEFAULT 'Not Completed',
  `emp_contact_detail` enum('Not Completed','Completed') DEFAULT 'Not Completed',
  `emp_reference` enum('Not Completed','Completed') DEFAULT 'Not Completed',
  `emp_academic` enum('Not Completed','Completed') DEFAULT 'Not Completed',
  `emp_history` enum('Not Completed','Completed') DEFAULT 'Not Completed',
  `created_date` datetime DEFAULT NULL,
  `last_updated` datetime DEFAULT NULL,
  `created_user` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `emp_bgverify`
--

INSERT INTO `emp_bgverify` (`id`, `emp_id`, `emp_details`, `emp_contact_detail`, `emp_reference`, `emp_academic`, `emp_history`, `created_date`, `last_updated`, `created_user`) VALUES
(1, 4, 'Not Completed', 'Not Completed', 'Not Completed', 'Not Completed', 'Not Completed', '2023-03-07 17:51:15', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `emp_contact_detail`
--

CREATE TABLE `emp_contact_detail` (
  `id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL DEFAULT '0',
  `house_no` varchar(255) NOT NULL DEFAULT '',
  `street_name` varchar(255) NOT NULL DEFAULT '',
  `area` varchar(255) NOT NULL DEFAULT '',
  `city` varchar(255) NOT NULL DEFAULT '',
  `district` varchar(255) NOT NULL DEFAULT '',
  `state` tinyint(4) NOT NULL DEFAULT '0',
  `pincode` varchar(10) NOT NULL DEFAULT '',
  `nationality` varchar(20) NOT NULL DEFAULT '',
  `phone_no` varchar(10) DEFAULT NULL,
  `land_line` varchar(10) DEFAULT '',
  `primary_email` varchar(50) NOT NULL DEFAULT '',
  `secondary_email` varchar(50) DEFAULT '',
  `is_address` enum('current','permanent') DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `created_user` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `emp_detail`
--

CREATE TABLE `emp_detail` (
  `id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL DEFAULT '0',
  `first_name` varchar(50) NOT NULL DEFAULT '',
  `middle_name` varchar(50) DEFAULT '',
  `last_name` varchar(50) NOT NULL DEFAULT '',
  `rel_first_name` varchar(50) NOT NULL DEFAULT '',
  `rel_middle_name` varchar(50) DEFAULT '',
  `rel_last_name` varchar(50) NOT NULL DEFAULT '',
  `dob` date DEFAULT NULL,
  `gender` enum('Male','Female') NOT NULL,
  `pan_no` varchar(50) NOT NULL DEFAULT '',
  `passport_no` varchar(50) DEFAULT '',
  `passport_valid` datetime DEFAULT NULL,
  `loc_of_pass_issue` varchar(50) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `created_user` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `emp_document`
--

CREATE TABLE `emp_document` (
  `id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL DEFAULT '0',
  `employee_docs` varchar(255) NOT NULL DEFAULT '',
  `doc_belongs_to` enum('nda','ca') DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `created_user` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `emp_earn_deduct`
--

CREATE TABLE `emp_earn_deduct` (
  `id` int(11) NOT NULL,
  `emp_payslip_id` int(11) NOT NULL DEFAULT '0',
  `element_id` tinyint(4) NOT NULL DEFAULT '0',
  `element_value` double(16,2) NOT NULL DEFAULT '0.00',
  `created_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `emp_history`
--

CREATE TABLE `emp_history` (
  `id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL DEFAULT '0',
  `company_name` varchar(50) NOT NULL DEFAULT '',
  `company_loc` text,
  `company_phone` varchar(10) NOT NULL DEFAULT '',
  `company_code` varchar(20) DEFAULT '',
  `date_of_join` date DEFAULT NULL,
  `designation` varchar(50) NOT NULL DEFAULT '',
  `salary_ctc` varchar(50) DEFAULT '',
  `reason_for_leaving` text,
  `created_date` datetime DEFAULT NULL,
  `created_user` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `emp_password_history`
--

CREATE TABLE `emp_password_history` (
  `id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL DEFAULT '0',
  `password` varchar(255) NOT NULL DEFAULT '',
  `password_change_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `emp_payslip`
--

CREATE TABLE `emp_payslip` (
  `id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL DEFAULT '0',
  `payslip_month` varchar(50) DEFAULT NULL,
  `total_addition` double(16,2) NOT NULL DEFAULT '0.00',
  `total_deduction` double(16,2) NOT NULL DEFAULT '0.00',
  `net_salary` double(16,2) NOT NULL DEFAULT '0.00',
  `check_number` varchar(200) DEFAULT '',
  `bank_name` varchar(200) DEFAULT '',
  `payslip_gdate` datetime DEFAULT NULL,
  `employee_sign` varchar(100) DEFAULT NULL,
  `director_sign` varchar(100) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `created_user` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `emp_reference`
--

CREATE TABLE `emp_reference` (
  `id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL DEFAULT '0',
  `ref_name` varchar(50) NOT NULL DEFAULT '',
  `ref_designation` varchar(50) NOT NULL DEFAULT '',
  `ref_company` varchar(50) NOT NULL DEFAULT '',
  `ref_mobile_no` varchar(50) NOT NULL DEFAULT '',
  `ref_email` varchar(50) NOT NULL DEFAULT '',
  `ref_capacity` text,
  `created_date` datetime DEFAULT NULL,
  `created_user` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `emp_workstatus`
--

CREATE TABLE `emp_workstatus` (
  `id` int(11) NOT NULL,
  `today_date` datetime DEFAULT NULL,
  `today_work` text,
  `nextday_work` text,
  `created_date` datetime DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `created_user` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` int(11) NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `grezpay_mid_keys`
--

CREATE TABLE `grezpay_mid_keys` (
  `id` int(11) NOT NULL,
  `merchant_id` int(11) NOT NULL DEFAULT '0',
  `app_id` varchar(150) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `salt_key` varchar(150) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `secret_key` varchar(150) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `created_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `created_user` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `grezpay_mid_keys`
--

INSERT INTO `grezpay_mid_keys` (`id`, `merchant_id`, `app_id`, `salt_key`, `secret_key`, `created_date`, `created_user`) VALUES
(0, 1, 'grez', 'grez', 'grez', NULL, 1),
(1, 1, '757222173207', 'e411bf0be2d84b81', '', '2022-05-12 13:35:34', 1);

-- --------------------------------------------------------

--
-- Table structure for table `grezpay_response`
--

CREATE TABLE `grezpay_response` (
  `id` int(11) NOT NULL,
  `cust_name` varchar(150) COLLATE utf8_unicode_ci DEFAULT '',
  `txntype` varchar(10) COLLATE utf8_unicode_ci DEFAULT '',
  `amount` varchar(20) COLLATE utf8_unicode_ci DEFAULT '',
  `currency_code` varchar(20) COLLATE utf8_unicode_ci DEFAULT '',
  `order_id` varchar(200) COLLATE utf8_unicode_ci DEFAULT '',
  `app_id` varchar(150) COLLATE utf8_unicode_ci DEFAULT '',
  `trxn_id` varchar(150) COLLATE utf8_unicode_ci DEFAULT '',
  `payment_type` varchar(100) COLLATE utf8_unicode_ci DEFAULT '',
  `mop_type` varchar(50) COLLATE utf8_unicode_ci DEFAULT '',
  `card_mask` varchar(100) COLLATE utf8_unicode_ci DEFAULT '',
  `pg_ref_num` varchar(100) COLLATE utf8_unicode_ci DEFAULT '',
  `response_code` varchar(200) COLLATE utf8_unicode_ci DEFAULT '',
  `response_message` varchar(200) COLLATE utf8_unicode_ci DEFAULT '',
  `hash` varchar(250) COLLATE utf8_unicode_ci DEFAULT '',
  `eci` varchar(150) COLLATE utf8_unicode_ci DEFAULT '',
  `auth_code` varchar(50) COLLATE utf8_unicode_ci DEFAULT '',
  `rrn` varchar(120) COLLATE utf8_unicode_ci DEFAULT '',
  `avr` varchar(200) COLLATE utf8_unicode_ci DEFAULT '',
  `acq_id` varchar(120) COLLATE utf8_unicode_ci DEFAULT '',
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `cust_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `cust_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `cust_phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `pg_txn_message` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `return_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `response_date` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `response_time` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `product_desc` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `card_issuer_bank` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `card_issuer_country` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `total_amount` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `created_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `grezpay_response`
--

INSERT INTO `grezpay_response` (`id`, `cust_name`, `txntype`, `amount`, `currency_code`, `order_id`, `app_id`, `trxn_id`, `payment_type`, `mop_type`, `card_mask`, `pg_ref_num`, `response_code`, `response_message`, `hash`, `eci`, `auth_code`, `rrn`, `avr`, `acq_id`, `status`, `cust_email`, `cust_id`, `cust_phone`, `pg_txn_message`, `return_url`, `response_date`, `response_time`, `product_desc`, `card_issuer_bank`, `card_issuer_country`, `total_amount`, `created_date`) VALUES
(1, 'vishwam', 'SALE', '10000', '356', 'c7oqtmHH5QBpYV', '757222173207', '518322150240', 'UP', '510', NULL, NULL, '400', NULL, 'FFF11BE229FEE36F70EA8E8B385B09315E7278F0A631B5F8621A232C9829EAB4', NULL, NULL, NULL, NULL, NULL, 'Authentication Failed', 'vishwam@neopay.co.in', NULL, '8985100800', NULL, 'https://dev.payflash.in/secure/payment/grezpay/response', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-12 15:02:42'),
(2, 'vishwam', 'SALE', '1000', '356', 'xa0PZFyIYTR7bo', '757222173207', '518622150715', 'NB', '1012', NULL, NULL, '400', NULL, '80895F170B0168B06EAB4E80C4DF1F79F056FABC52F7BA65EB5668BD268B938C', NULL, NULL, NULL, NULL, NULL, 'Authentication Failed', 'vishwam@neopay.co.in', NULL, '8985100800', NULL, 'https://dev.payflash.in/secure/payment/grezpay/response', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-12 15:07:17'),
(3, 'vishwam', 'SALE', '1000', '356', 'Dm4Pxb0aCMkE7T', '757222173207', '546422181822', 'NB', '1030', NULL, NULL, '009', 'Response signature did not match', '04C4A1A7C61F3D17595ED4C2351169E13397BC3615E0DC0C49944A877830A983', NULL, NULL, NULL, NULL, NULL, 'Denied by risk', 'vishwam@neopay.co.in', NULL, '8985100800', NULL, 'https://dev.payflash.in/secure/payment/grezpay/response', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-12 18:18:26'),
(4, 'vishwam', 'SALE', '10000', '356', 'sNrcu93eOGab3T', '757222173207', '547822182129', 'NB', '1063', NULL, NULL, '000', 'SUCCESS', '738D21F478092A7BE0F7C5A9B90A70F64E8A0649247098B9373E14AC80FC296D', NULL, NULL, NULL, NULL, NULL, 'Sent to Bank', 'vishwam@neopay.co.in', NULL, '8985100800', NULL, 'https://dev.payflash.in/secure/payment/grezpay/response', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-12 18:21:54'),
(5, 'Anand', 'SALE', '100', '356', 'RZMsKOnn0zxGyb', '757222173207', '549822182454', 'UP', '510', NULL, '1652360064356854', '000', 'SUCCESS', '2D5E0F1F3AEEBEA44B7A416272C4D23B49D06D4B6D1C1B71EAB8FA4E957E5E8C', NULL, NULL, NULL, NULL, NULL, 'Captured', 'a.kaushal@hotmail.com', NULL, '9970898880', NULL, 'https://dev.payflash.in/secure/payment/grezpay/response', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-12 18:25:32'),
(6, 'vishwam', 'SALE', '100', '356', 'JVlYsR39PnIsFt', '757222173207', '555622184815', 'UP', '510', NULL, '1652361464402886', '000', 'SUCCESS', '56FB4CFEC18FAC9B9D08156998C7861DFF47D77D1E52ECB429642D8C8C7F7F7D', NULL, NULL, NULL, NULL, NULL, 'Captured', 'vishwam@neopay.co.in', NULL, '8985100800', NULL, 'https://dev.payflash.in/secure/payment/grezpay/response', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-12 18:48:42'),
(7, 'vishwam', 'SALE', '10000', '356', 'JhiDzetKy3ryVJ', '757222173207', '584422212819', 'NB', '1063', NULL, NULL, '000', 'SUCCESS', '8D43A2C86231B8A30223EB2B43643DF6634767BFA95D06333D979BCBFABBF28F', NULL, NULL, NULL, NULL, NULL, 'Sent to Bank', 'vishwam@neopay.co.in', NULL, '8985100800', NULL, 'https://dev.payflash.in/secure/payment/grezpay/response', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-12 21:28:54'),
(8, 'vishwam', 'SALE', '10000', '356', '7tOpraV2E8nCtA', '757222173207', '585222213517', 'NB', '1063', NULL, NULL, '000', 'SUCCESS', '33A76E54AD2904F29DDA86700211CA7439A457B5A1B85991634C2B03D73EECB8', NULL, NULL, NULL, NULL, NULL, 'Sent to Bank', 'vishwam@neopay.co.in', NULL, '8985100800', NULL, 'https://dev.payflash.in/secure/payment/grezpay/response', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-12 21:35:42'),
(9, 'vishwam', 'SALE', '10000', '356', 'rbkZODeFbmB86J', '757222173207', '588922215500', 'NB', '1063', NULL, NULL, '000', 'SUCCESS', '096B69510225ED4A5C0E39335C2C66177C220CFC6FECC96298BD4DF6DEB9C0B2', NULL, NULL, NULL, NULL, NULL, 'Sent to Bank', 'vishwam@neopay.co.in', NULL, '8985100800', NULL, 'https://dev.payflash.in/secure/payment/grezpay/response', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-12 21:55:41');

-- --------------------------------------------------------

--
-- Table structure for table `live_customer`
--

CREATE TABLE `live_customer` (
  `id` int(11) NOT NULL,
  `customer_gid` varchar(50) NOT NULL DEFAULT '',
  `customer_name` varchar(255) DEFAULT '',
  `customer_email` varchar(255) DEFAULT '',
  `customer_phone` varchar(255) DEFAULT '',
  `customer_gstno` varchar(255) DEFAULT '',
  `created_date` datetime DEFAULT NULL,
  `created_merchant` int(11) NOT NULL DEFAULT '0',
  `modified_date` datetime DEFAULT NULL,
  `status` enum('active','inactive') DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `live_customer_address`
--

CREATE TABLE `live_customer_address` (
  `id` int(11) NOT NULL,
  `customer_id` smallint(6) NOT NULL DEFAULT '0',
  `address` text NOT NULL,
  `pincode` varchar(20) NOT NULL DEFAULT '',
  `city` varchar(50) NOT NULL DEFAULT '',
  `state_id` smallint(6) NOT NULL DEFAULT '0',
  `status` enum('active','inactive') DEFAULT 'active',
  `created_date` datetime DEFAULT NULL,
  `created_merchant` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `live_dispute`
--

CREATE TABLE `live_dispute` (
  `id` int(11) NOT NULL,
  `dispute_gid` varchar(255) NOT NULL DEFAULT '',
  `payment_id` int(11) NOT NULL DEFAULT '0',
  `dispute_amount` double(16,2) NOT NULL DEFAULT '0.00',
  `dispute_type` enum('retrieval','chargeback','pre_arbitration','arbitration','fraud') DEFAULT NULL,
  `dispute_status` enum('open','under_review','lost','won','closed') DEFAULT 'open',
  `dispute_respond` varchar(255) DEFAULT '',
  `created_date` datetime DEFAULT NULL,
  `created_merchant` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `live_invoice`
--

CREATE TABLE `live_invoice` (
  `id` int(11) NOT NULL,
  `invoice_gid` varchar(50) NOT NULL DEFAULT '',
  `invoice_receiptno` varchar(255) DEFAULT '',
  `merchant_company` varchar(50) NOT NULL DEFAULT '',
  `merchant_gstno` varchar(50) NOT NULL DEFAULT '',
  `merchant_panno` varchar(50) NOT NULL DEFAULT '',
  `invoice_amount` double(16,2) NOT NULL DEFAULT '0.00',
  `invoice_description` varchar(255) DEFAULT '',
  `invoice_billing_to` smallint(6) NOT NULL DEFAULT '0',
  `customer_gstno` varchar(50) DEFAULT '',
  `customer_email` varchar(50) NOT NULL DEFAULT '',
  `customer_phone` varchar(50) NOT NULL DEFAULT '',
  `invoice_billing_address` smallint(6) NOT NULL DEFAULT '0',
  `invoice_shipping_address` smallint(6) NOT NULL DEFAULT '0',
  `invoice_subtotal` double(16,2) NOT NULL DEFAULT '0.00',
  `invoice_tax_amount` double(16,2) NOT NULL DEFAULT '0.00',
  `tax_applied` varchar(10) NOT NULL DEFAULT '',
  `invoice_issue_date` datetime DEFAULT NULL,
  `invoice_expiry_date` datetime DEFAULT NULL,
  `invoice_notes` text,
  `invoice_terms_cond` text,
  `invoice_payid` varchar(50) DEFAULT NULL,
  `invoice_paylink` varchar(255) DEFAULT '',
  `invoice_status` enum('saved','issued','partially_paid','paid','cancelled','expired') DEFAULT 'saved',
  `created_date` datetime DEFAULT NULL,
  `created_merchant` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `live_invoice_item`
--

CREATE TABLE `live_invoice_item` (
  `invoice_id` int(11) NOT NULL,
  `item_id` smallint(6) NOT NULL DEFAULT '0',
  `item_amount` double(16,2) NOT NULL DEFAULT '0.00',
  `item_quantity` smallint(6) NOT NULL DEFAULT '0',
  `item_total` double(16,2) NOT NULL DEFAULT '0.00',
  `created_date` datetime DEFAULT NULL,
  `created_merchant` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `live_item`
--

CREATE TABLE `live_item` (
  `id` int(11) NOT NULL,
  `item_gid` varchar(50) NOT NULL DEFAULT '',
  `item_name` varchar(255) DEFAULT '',
  `item_description` text,
  `item_amount` double(16,2) NOT NULL DEFAULT '0.00',
  `item_status` enum('active','inactive') DEFAULT 'active',
  `created_date` datetime DEFAULT NULL,
  `created_merchant` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `live_merchantapi`
--

CREATE TABLE `live_merchantapi` (
  `id` int(11) NOT NULL,
  `api_key` varchar(255) NOT NULL,
  `api_secret` varchar(255) NOT NULL,
  `api_expiry` datetime DEFAULT NULL,
  `request_hashkey` varchar(255) DEFAULT NULL,
  `request_salt_key` varchar(255) NOT NULL,
  `response_salt_key` varchar(255) NOT NULL,
  `encryption_request_key` varchar(255) NOT NULL,
  `encryption_response_key` varchar(255) NOT NULL,
  `response_hashkey` varchar(255) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `created_merchant` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `live_merchantapi`
--

INSERT INTO `live_merchantapi` (`id`, `api_key`, `api_secret`, `api_expiry`, `request_hashkey`, `request_salt_key`, `response_salt_key`, `encryption_request_key`, `encryption_response_key`, `response_hashkey`, `created_date`, `created_merchant`) VALUES
(1, 'ryapay_live_rCagWQCN8EnIUNar', 'p6Lh9t6FW7BERYnu', NULL, 'hFbR8SU9O38gisfJ', 'gfuhQOV4LZjBL8ZY', 'rPwOHWnmZtALRac3', 'h9U8YFRxENWbLQLZ', 'jnZYy2oNVQaQZIjR', 'zxEUZNz57dswQ7wJ', '2023-03-16 04:36:14', 1);

-- --------------------------------------------------------

--
-- Table structure for table `live_notification`
--

CREATE TABLE `live_notification` (
  `id` int(11) NOT NULL,
  `message` varchar(255) DEFAULT NULL,
  `notify_type` varchar(50) DEFAULT NULL,
  `category` enum('notification','message') DEFAULT 'notification',
  `created_date` datetime DEFAULT NULL,
  `seen` enum('Y','N') DEFAULT 'N',
  `notify_from` int(11) DEFAULT '0',
  `notify_to` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `live_order`
--

CREATE TABLE `live_order` (
  `id` int(11) NOT NULL,
  `order_gid` varchar(255) NOT NULL DEFAULT '',
  `order_amount` double(16,2) NOT NULL DEFAULT '0.00',
  `order_attempts` tinyint(4) NOT NULL DEFAULT '0',
  `order_receipt` varchar(255) DEFAULT '',
  `order_status` enum('Paid','Created','Attempted') DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `created_merchant` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `live_order`
--

INSERT INTO `live_order` (`id`, `order_gid`, `order_amount`, `order_attempts`, `order_receipt`, `order_status`, `created_date`, `created_merchant`) VALUES
(1, 'YBBMic7jE4aCSKGXf9vGfe4z', 1.00, 0, NULL, 'Created', '2023-03-16 16:46:42', 1),
(2, 'YBBpg2veB4zjdL2jurHHsUg5', 1.00, 0, NULL, 'Created', '2023-03-16 16:55:21', 1),
(3, 'YBB8aiht39P0j0z7ci7N0uJz', 1.00, 0, NULL, 'Created', '2023-03-16 16:55:22', 1),
(4, 'YBBd1pNFTBWAo38dv7sA54aq', 1.00, 0, NULL, 'Created', '2023-03-16 16:57:16', 1),
(5, 'YBBq61jXrl0k1MjZJWsM207P', 1.00, 0, NULL, 'Created', '2023-03-16 16:57:44', 1),
(6, 'YBB0uC4ilzg3M41XXH2RHq1A', 1.00, 0, NULL, 'Created', '2023-03-16 16:57:51', 1),
(7, 'YBBvlO8Pve29jr0m154WYcXB', 1.00, 0, NULL, 'Created', '2023-03-16 17:01:13', 1),
(8, 'YBBiPPPtg96h9Vo5LF2b6spJ', 1.00, 0, NULL, 'Created', '2023-03-16 17:01:32', 1),
(9, 'YBB4O4SyKVs7gZQY31m83CMZ', 1.00, 0, NULL, 'Created', '2023-03-16 17:02:17', 1),
(10, 'YBB7I0Sg5XCORC8t8M60yW99', 1.00, 0, NULL, 'Created', '2023-03-16 17:06:24', 1),
(11, 'YBBx2f1O3Y50V8CnLQSI1sf9', 1.00, 0, NULL, 'Created', '2023-03-16 17:06:42', 1),
(12, 'YBBQVHaohT80prH4xKLKoSN2', 1.00, 0, NULL, 'Created', '2023-03-16 17:13:55', 1),
(13, 'YBBlP86LfI58Tcey2J0XoBk4', 1.00, 0, NULL, 'Created', '2023-03-16 17:23:30', 1);

-- --------------------------------------------------------

--
-- Table structure for table `live_order1`
--

CREATE TABLE `live_order1` (
  `id` int(11) NOT NULL,
  `order_gid` varchar(255) NOT NULL DEFAULT '''',
  `payment_id` int(11) NOT NULL DEFAULT '0',
  `order_amount` double(16,2) NOT NULL DEFAULT '0.00',
  `order_attempts` tinyint(4) NOT NULL DEFAULT '0',
  `order_receipt` varchar(255) DEFAULT '''',
  `order_status` enum('Paid','Created','Attempted') DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `created_merchant` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `live_paylink`
--

CREATE TABLE `live_paylink` (
  `id` int(11) NOT NULL,
  `paylink_gid` varchar(255) NOT NULL DEFAULT '',
  `paylink_for` text,
  `paylink_amount` double(16,2) NOT NULL DEFAULT '0.00',
  `paylink_customer_email` varchar(50) DEFAULT '',
  `email_paylink` enum('Y','N') DEFAULT 'N',
  `paylink_customer_mobile` varchar(10) DEFAULT '',
  `mobile_paylink` enum('Y','N') DEFAULT 'N',
  `paylink_receipt` varchar(10) DEFAULT '',
  `paylink_payid` varchar(50) DEFAULT NULL,
  `paylink_expiry` datetime DEFAULT NULL,
  `paylink_link` varchar(255) DEFAULT '',
  `paylink_notes` text,
  `paylink_partial` enum('Y','N') DEFAULT NULL,
  `paylink_partial_amount` double(16,2) NOT NULL DEFAULT '0.00',
  `paylink_status` enum('issued','partially_paid','paid','cancelled','expired','failed') DEFAULT 'issued',
  `paylink_auto_reminder` enum('Y','N') DEFAULT NULL,
  `paylink_type` enum('smart','quick') DEFAULT 'smart',
  `created_date` datetime DEFAULT NULL,
  `created_merchant` int(11) NOT NULL DEFAULT '0',
  `created_employee` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `live_paylink`
--

INSERT INTO `live_paylink` (`id`, `paylink_gid`, `paylink_for`, `paylink_amount`, `paylink_customer_email`, `email_paylink`, `paylink_customer_mobile`, `mobile_paylink`, `paylink_receipt`, `paylink_payid`, `paylink_expiry`, `paylink_link`, `paylink_notes`, `paylink_partial`, `paylink_partial_amount`, `paylink_status`, `paylink_auto_reminder`, `paylink_type`, `created_date`, `created_merchant`, `created_employee`) VALUES
(1, 'plnk_A59r4Zx1Hjy5fCkq', 'test', 1.00, '', 'N', '', 'N', '', 'OoMhCd', '2023-03-17 16:35:59', 'https://pg.rockpay.in/p/s-p/OoMhCd', NULL, NULL, 0.00, 'issued', NULL, 'quick', '2023-03-16 16:35:59', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `live_payment`
--

CREATE TABLE `live_payment` (
  `id` int(11) NOT NULL,
  `transaction_gid` varchar(50) NOT NULL,
  `vendor_transaction_id` varchar(255) DEFAULT '',
  `bank_ref_no` varchar(255) DEFAULT '',
  `order_id` int(11) NOT NULL DEFAULT '0',
  `transaction_response` varchar(255) DEFAULT '',
  `transaction_method_id` int(11) DEFAULT '0',
  `transaction_type` varchar(50) DEFAULT '',
  `transaction_username` varchar(50) DEFAULT '',
  `transaction_email` varchar(50) NOT NULL,
  `transaction_contact` varchar(10) NOT NULL,
  `transaction_amount` double(16,2) NOT NULL,
  `transaction_status` enum('authorized','captured','refunded','failed','cancelled','success','pending') DEFAULT NULL,
  `transaction_mode` varchar(10) DEFAULT NULL,
  `transaction_notes` text,
  `transaction_description` longtext,
  `rupayapay_tax` double(16,2) NOT NULL DEFAULT '0.00',
  `goods_service_tax` double(16,2) NOT NULL DEFAULT '0.00',
  `android_status` enum('Y','N') DEFAULT 'N',
  `adjustment_done` enum('Y','N') DEFAULT 'N',
  `transaction_date` datetime DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `created_merchant` int(11) NOT NULL DEFAULT '0',
  `created_employee` int(11) DEFAULT '0',
  `udf1` varchar(255) DEFAULT '',
  `udf2` varchar(255) DEFAULT '',
  `udf3` varchar(255) DEFAULT '',
  `udf4` varchar(255) DEFAULT '',
  `udf5` varchar(255) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `live_payment`
--

INSERT INTO `live_payment` (`id`, `transaction_gid`, `vendor_transaction_id`, `bank_ref_no`, `order_id`, `transaction_response`, `transaction_method_id`, `transaction_type`, `transaction_username`, `transaction_email`, `transaction_contact`, `transaction_amount`, `transaction_status`, `transaction_mode`, `transaction_notes`, `transaction_description`, `rupayapay_tax`, `goods_service_tax`, `android_status`, `adjustment_done`, `transaction_date`, `created_date`, `created_merchant`, `created_employee`, `udf1`, `udf2`, `udf3`, `udf4`, `udf5`) VALUES
(1, 'YBBEj9NLgjyUXFIDNe9x520T', NULL, NULL, 1, 'https://pg.rockpay.in/pay/smart-pay/response', 1, NULL, 'Vinod', 'gvinod1593@gmail.com', '8073878782', 1.00, 'authorized', NULL, NULL, NULL, 0.00, 0.00, 'N', 'N', NULL, '2023-03-16 16:46:42', 1, 0, NULL, NULL, NULL, NULL, NULL),
(2, 'YBBPc79Z0TROdvkQbm4Frg0P', NULL, NULL, 2, 'https://pg.rockpay.in/pay/smart-pay/response', 1, NULL, 'tesr', 'testing@gmail.com', '9897979797', 1.00, 'authorized', NULL, NULL, NULL, 0.00, 0.00, 'N', 'N', NULL, '2023-03-16 16:55:21', 1, 0, NULL, NULL, NULL, NULL, NULL),
(3, 'YBBlQVDgAj6Ds9e81Y63GneQ', NULL, NULL, 3, 'https://pg.rockpay.in/pay/smart-pay/response', 1, NULL, 'Vinod', 'gvinod1593@gmail.com', '8073878782', 1.00, 'authorized', NULL, NULL, NULL, 0.00, 0.00, 'N', 'N', NULL, '2023-03-16 16:55:22', 1, 0, NULL, NULL, NULL, NULL, NULL),
(4, 'YBB8sE5DP1svh8WxaSNnPM0C', NULL, NULL, 4, 'https://pg.rockpay.in/pay/smart-pay/response', 1, NULL, 'Rajesh', 'testing@gmail.com', '9897979797', 1.00, 'authorized', NULL, NULL, NULL, 0.00, 0.00, 'N', 'N', NULL, '2023-03-16 16:57:16', 1, 0, NULL, NULL, NULL, NULL, NULL),
(5, 'YBB6qdK5v8810ZB0HKcU17DW', NULL, NULL, 5, 'https://pg.rockpay.in/pay/smart-pay/response', 1, NULL, 'Rajesh', 'testing@gmail.com', '9897979797', 1.00, 'authorized', NULL, NULL, NULL, 0.00, 0.00, 'N', 'N', NULL, '2023-03-16 16:57:44', 1, 0, NULL, NULL, NULL, NULL, NULL),
(6, 'YBB6qvBpuXHjKpatu3JdGC7D', NULL, NULL, 6, 'https://pg.rockpay.in/pay/smart-pay/response', 1, NULL, 'Vinod', 'gvinod1593@gmail.com', '8073878782', 1.00, 'authorized', NULL, NULL, NULL, 0.00, 0.00, 'N', 'N', NULL, '2023-03-16 16:57:51', 1, 0, NULL, NULL, NULL, NULL, NULL),
(7, 'YBB5fm9YbbS4cor79IS33pf5', NULL, NULL, 7, 'https://pg.rockpay.in/pay/smart-pay/response', 1, NULL, 'tesr', 'testing@gmail.com', '9897979797', 1.00, 'authorized', NULL, NULL, NULL, 0.00, 0.00, 'N', 'N', NULL, '2023-03-16 17:01:13', 1, 0, NULL, NULL, NULL, NULL, NULL),
(8, 'YBBBK3Yvk5aD29hL1m8Y42Ip', NULL, NULL, 8, 'https://pg.rockpay.in/pay/smart-pay/response', 1, NULL, 'Rajat', 'Testing@gmail.com', '7892419268', 1.00, 'authorized', NULL, NULL, NULL, 0.00, 0.00, 'N', 'N', NULL, '2023-03-16 17:01:32', 1, 0, NULL, NULL, NULL, NULL, NULL),
(9, 'YBBHPgOtSEuTcRlMK0cXfKSJ', NULL, NULL, 9, 'https://pg.rockpay.in/pay/smart-pay/response', 1, NULL, 'Vinod', 'gvinod1593@gmail.com', '8073878782', 1.00, 'authorized', NULL, NULL, NULL, 0.00, 0.00, 'N', 'N', NULL, '2023-03-16 17:02:17', 1, 0, NULL, NULL, NULL, NULL, NULL),
(10, 'YBBrouMPz547ZKQhEfYvIhFk', NULL, NULL, 10, 'https://pg.rockpay.in/pay/smart-pay/response', 1, NULL, 'Vinod', 'gvinod1593@gmail.com', '8073878782', 1.00, 'authorized', NULL, NULL, NULL, 0.00, 0.00, 'N', 'N', NULL, '2023-03-16 17:06:24', 1, 0, NULL, NULL, NULL, NULL, NULL),
(11, 'YBBxGgYP2WSA4xmfZ0cC1uqk', NULL, NULL, 11, 'https://pg.rockpay.in/pay/smart-pay/response', 1, NULL, 'tesr', 'testing@gmail.com', '9897979797', 1.00, 'authorized', NULL, NULL, NULL, 0.00, 0.00, 'N', 'N', NULL, '2023-03-16 17:06:42', 1, 0, NULL, NULL, NULL, NULL, NULL),
(12, 'YBB9tQ7Ydyf7g5fjMBoG9IQP', NULL, NULL, 12, 'https://pg.rockpay.in/pay/smart-pay/response', 1, NULL, 'Vinod', 'gvinod1593@gmail.com', '8073878782', 1.00, 'authorized', NULL, NULL, NULL, 0.00, 0.00, 'N', 'N', NULL, '2023-03-16 17:13:55', 1, 0, NULL, NULL, NULL, NULL, NULL),
(13, 'YBBoDI9Byuvd1bq5Ef4ilP9Y', NULL, NULL, 13, 'https://pg.rockpay.in/pay/smart-pay/response', 1, NULL, 'Vinod', 'gvinod1593@gmail.com', '8073878782', 1.00, 'authorized', NULL, NULL, NULL, 0.00, 0.00, 'N', 'N', NULL, '2023-03-16 17:23:30', 1, 0, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `live_payment_page`
--

CREATE TABLE `live_payment_page` (
  `id` int(11) NOT NULL,
  `page_gid` varchar(50) DEFAULT '',
  `page_logo` varchar(255) DEFAULT '',
  `page_name` varchar(50) DEFAULT '',
  `page_title` varchar(255) DEFAULT '',
  `social_enable` enum('Y','N') DEFAULT 'N',
  `contactus_enable` enum('Y','N') DEFAULT 'N',
  `term_condition_enable` enum('Y','N') DEFAULT 'N',
  `contactus_email` varchar(255) DEFAULT '',
  `contactus_mobile` varchar(255) DEFAULT '',
  `term_condition` text,
  `page_url` varchar(255) DEFAULT '',
  `payment_total` double(16,2) DEFAULT '0.00',
  `page_status` enum('active','inactive') DEFAULT 'active',
  `created_date` datetime DEFAULT NULL,
  `created_merchant` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `live_payment_page_info`
--

CREATE TABLE `live_payment_page_info` (
  `id` int(11) NOT NULL,
  `page_id` int(11) NOT NULL DEFAULT '0',
  `transaction_id` varchar(255) NOT NULL DEFAULT '',
  `order_id` varchar(255) NOT NULL DEFAULT '',
  `payment_page_email` varchar(50) NOT NULL DEFAULT '',
  `payment_page_mobile` varchar(10) NOT NULL DEFAULT '',
  `payment_page_amount` double(16,2) NOT NULL DEFAULT '0.00',
  `payment_page_detail` mediumtext,
  `payment_page_status` enum('paid','failed','cancelled') DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `merchant_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `live_payment_page_input`
--

CREATE TABLE `live_payment_page_input` (
  `payment_page_id` int(11) DEFAULT '0',
  `input_label` varchar(50) DEFAULT '',
  `input_name` varchar(50) DEFAULT '',
  `input_type` varchar(50) DEFAULT '',
  `input_value` varchar(50) DEFAULT '',
  `input_option` varchar(255) DEFAULT '',
  `input_mandatory` enum('true','false') DEFAULT 'false'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `live_refund`
--

CREATE TABLE `live_refund` (
  `id` int(11) NOT NULL,
  `refund_gid` varchar(255) NOT NULL DEFAULT '',
  `payment_id` int(11) DEFAULT NULL,
  `refund_amount` double(16,2) NOT NULL DEFAULT '0.00',
  `refund_notes` varchar(255) DEFAULT NULL,
  `refund_status` enum('processed','processing') DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `created_merchant` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `live_reminder`
--

CREATE TABLE `live_reminder` (
  `id` int(11) NOT NULL,
  `reminder_days` tinyint(4) NOT NULL DEFAULT '0',
  `reminder_for` enum('plwed','plwoed') DEFAULT NULL,
  `send_sms` enum('Y','N') DEFAULT 'N',
  `send_email` enum('Y','N') DEFAULT 'N',
  `create_date` datetime DEFAULT NULL,
  `created_merchant` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `live_settlement`
--

CREATE TABLE `live_settlement` (
  `id` int(11) NOT NULL,
  `settlement_gid` varchar(255) NOT NULL DEFAULT '0',
  `settlement_receiptno_count` bigint(20) DEFAULT NULL,
  `settlement_receiptno` varchar(255) DEFAULT NULL,
  `current_balance` double(16,2) NOT NULL DEFAULT '0.00',
  `settlement_amount` double(16,2) NOT NULL DEFAULT '0.00',
  `settlement_fee` double(16,2) NOT NULL DEFAULT '0.00',
  `settlement_tax` double(16,2) NOT NULL DEFAULT '0.00',
  `settlement_status` enum('Active','Inactive') DEFAULT NULL,
  `settlement_date` datetime DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `created_merchant` int(11) NOT NULL DEFAULT '0',
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `live_webhook`
--

CREATE TABLE `live_webhook` (
  `id` int(11) NOT NULL,
  `webhook_url` varchar(255) DEFAULT NULL,
  `is_active` varchar(255) DEFAULT NULL,
  `secret_key` varchar(255) DEFAULT NULL,
  `payment_failed` varchar(255) DEFAULT NULL,
  `payment_captured` varchar(255) DEFAULT NULL,
  `transfer_processed` varchar(255) DEFAULT NULL,
  `refund_processed` varchar(255) DEFAULT NULL,
  `refund_created` varchar(255) DEFAULT NULL,
  `refund_speed_changed` varchar(255) DEFAULT NULL,
  `order_paid` varchar(255) DEFAULT NULL,
  `dispute_created` varchar(255) DEFAULT NULL,
  `dispute_won` varchar(255) DEFAULT NULL,
  `dispute_lost` varchar(255) DEFAULT NULL,
  `dispute_closed` varchar(255) DEFAULT NULL,
  `settlement_processed` varchar(255) DEFAULT NULL,
  `invoice_paid` varchar(255) DEFAULT NULL,
  `invoice_partially_paid` varchar(255) DEFAULT NULL,
  `invoice_expired` varchar(255) DEFAULT NULL,
  `paylink_paid` varchar(255) DEFAULT NULL,
  `paylink_partially_paid` varchar(255) DEFAULT NULL,
  `paylink_expired` varchar(255) DEFAULT NULL,
  `paylink_cancelled` varchar(255) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `created_merchant` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `merchant`
--

CREATE TABLE `merchant` (
  `id` int(11) NOT NULL,
  `merchant_gid` varchar(255) DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `password` varchar(255) NOT NULL DEFAULT '',
  `mobile_no` varchar(10) NOT NULL DEFAULT '',
  `remember_token` varchar(255) DEFAULT '',
  `merchant_business` enum('Y','N') DEFAULT 'N',
  `app_mode` tinyint(4) NOT NULL DEFAULT '0',
  `tf_auth` tinyint(1) DEFAULT '0',
  `tf_auth_secret` varchar(30) DEFAULT NULL,
  `tf_auth_codes` varchar(300) DEFAULT NULL,
  `documents_upload` enum('Y','N') DEFAULT 'N',
  `bg_verified` enum('Y','N') DEFAULT 'N',
  `doc_verified` varchar(255) DEFAULT NULL,
  `change_app_mode` enum('Y','N') DEFAULT 'N',
  `create_user_enabled` enum('Y','N') DEFAULT 'N',
  `charge_enabled` enum('Y','N') DEFAULT 'N',
  `transaction_limit` double(10,2) DEFAULT '25000.00',
  `verify_token` varchar(50) DEFAULT '',
  `is_verified` enum('Y','N') DEFAULT 'N',
  `is_email_verified` enum('Y','N') DEFAULT 'N',
  `is_mobile_verified` enum('Y','N') DEFAULT 'N',
  `is_reminders_enabled` enum('Y','N') DEFAULT 'N',
  `show_modal` enum('Y','N') DEFAULT 'N',
  `failed_attempts` tinyint(4) DEFAULT '0',
  `i_agree` enum('Y','N') DEFAULT 'N',
  `merchant_status` enum('active','inactive') DEFAULT 'active',
  `created_date` datetime DEFAULT NULL,
  `last_seen_at` datetime DEFAULT NULL,
  `is_account_locked` enum('Y','N') DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `merchant`
--

INSERT INTO `merchant` (`id`, `merchant_gid`, `name`, `email`, `password`, `mobile_no`, `remember_token`, `merchant_business`, `app_mode`, `tf_auth`, `tf_auth_secret`, `tf_auth_codes`, `documents_upload`, `bg_verified`, `doc_verified`, `change_app_mode`, `create_user_enabled`, `charge_enabled`, `transaction_limit`, `verify_token`, `is_verified`, `is_email_verified`, `is_mobile_verified`, `is_reminders_enabled`, `show_modal`, `failed_attempts`, `i_agree`, `merchant_status`, `created_date`, `last_seen_at`, `is_account_locked`) VALUES
(1, 'RP-1', 'Rajat', 'edgetechmediawork@gmail.com', '$2y$10$lKQE.4tY66Lh3C7X8zOxMOm4qNlZgJe9tuMQ9bfaoaQV3g3BQEqU2', '9071116764', '', 'Y', 0, 0, NULL, NULL, 'Y', 'N', 'Y', 'Y', 'N', 'N', 25000.00, '', 'Y', 'Y', 'Y', 'N', 'N', 0, 'Y', 'active', '2023-02-06 13:29:04', '2023-10-12 13:32:42', 'N'),
(2, 'RP-2', 'Prakash', 'nprakash_mca@yahoo.co.in', '$2y$10$r1IcjDW3KMrwNzPDYaxnn.BRaQVA3qfKMCfiLx3ZQX1rpJkobUshm', '7845078719', '', 'Y', 0, 0, NULL, NULL, 'N', 'N', NULL, 'N', 'N', 'N', 25000.00, 'LIlj8g9yTd4TRbYjpwK6UqhHu', 'N', 'N', 'Y', 'N', 'N', 0, 'Y', 'active', '2023-02-06 14:35:44', '2023-02-06 14:54:15', 'N'),
(3, 'RP-3', 'Kannan', 'kannan@askantech.com', '$2y$10$D/Abs5rtom2ipj4sZYoLfOiBRVHK.9JigTYJ3/vvh/mi3B6lDNjM.', '7871997663', '', 'Y', 0, 0, NULL, NULL, 'N', 'N', NULL, 'N', 'N', 'N', 25000.00, 'YngQ7ILYqI9DbuwuiCb0U6JW7', 'N', 'N', 'Y', 'N', 'N', 0, 'Y', 'active', '2023-03-07 17:29:12', '2023-03-07 17:30:24', 'N'),
(4, 'RP-4', 'Ganesh', 'ganesh.askan@gmail.com', '$2y$10$0Sc0FSJ9ezd6XE/56c0djuYjLGOzrK9POrggOfyV4GLlAJqaMbrwy', '123', '', 'Y', 0, 0, NULL, NULL, 'Y', 'N', NULL, 'N', 'N', 'N', 25000.00, 'Iltyy68JDuR6RZB0t1yU35Eke', 'N', 'N', 'Y', 'Y', 'Y', 0, 'Y', 'active', '2023-04-07 18:08:41', '2023-07-25 19:58:40', 'N'),
(5, 'RP-5', 'Ganesh', 'ganesh.k5566@gmail.com', '$2y$10$nTO2Jo71zyZpAwIa5ceC8ebKk7vNAjiEswvFVNcWFptMFaWcfK68K', '9789501590', '', 'Y', 0, 0, NULL, NULL, 'N', 'N', NULL, 'N', 'N', 'N', 25000.00, 'Ki3Ixv2OFO9FTHHbZrFFiiMMr', 'N', 'N', 'Y', 'Y', 'N', 0, 'Y', 'active', '2023-06-13 16:41:52', '2023-06-13 17:19:46', 'N');

-- --------------------------------------------------------

--
-- Table structure for table `merchantemp_login_activity`
--

CREATE TABLE `merchantemp_login_activity` (
  `id` int(11) NOT NULL,
  `log_ipaddress` varchar(50) NOT NULL DEFAULT '',
  `log_device` varchar(50) NOT NULL DEFAULT '',
  `log_os` varchar(50) NOT NULL DEFAULT '',
  `log_browser` varchar(50) NOT NULL DEFAULT '',
  `log_time` datetime DEFAULT NULL,
  `log_merchantemp` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `merchant_business`
--

CREATE TABLE `merchant_business` (
  `id` int(11) NOT NULL,
  `business_type_id` tinyint(4) NOT NULL DEFAULT '0',
  `business_expenditure` tinyint(4) DEFAULT '0',
  `business_category_id` tinyint(4) NOT NULL DEFAULT '0',
  `business_sub_category_id` smallint(9) NOT NULL DEFAULT '0',
  `business_sub_category` varchar(255) DEFAULT '',
  `billing_label` varchar(255) NOT NULL DEFAULT '',
  `webapp_exist` enum('Y','N') DEFAULT 'N',
  `webapp_url` varchar(255) DEFAULT NULL,
  `bank_name` varchar(50) DEFAULT '',
  `bank_acc_no` varchar(50) DEFAULT '',
  `bank_ifsc_code` varchar(15) DEFAULT '',
  `business_logo` varchar(255) DEFAULT '',
  `business_name` varchar(255) DEFAULT '',
  `llpin_number` varchar(255) DEFAULT '',
  `comp_pan_number` varchar(100) DEFAULT '',
  `comp_gst` varchar(100) DEFAULT '',
  `mer_pan_number` varchar(100) DEFAULT '',
  `mer_aadhar_number` varchar(100) DEFAULT '',
  `mer_name` varchar(100) DEFAULT '',
  `address` text,
  `pincode` int(11) NOT NULL DEFAULT '0',
  `city` varchar(255) NOT NULL DEFAULT '',
  `state` tinyint(4) NOT NULL DEFAULT '0',
  `country` varchar(255) DEFAULT '',
  `created_date` datetime DEFAULT NULL,
  `created_merchant` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `merchant_business`
--

INSERT INTO `merchant_business` (`id`, `business_type_id`, `business_expenditure`, `business_category_id`, `business_sub_category_id`, `business_sub_category`, `billing_label`, `webapp_exist`, `webapp_url`, `bank_name`, `bank_acc_no`, `bank_ifsc_code`, `business_logo`, `business_name`, `llpin_number`, `comp_pan_number`, `comp_gst`, `mer_pan_number`, `mer_aadhar_number`, `mer_name`, `address`, `pincode`, `city`, `state`, `country`, `created_date`, `created_merchant`) VALUES
(1, 2, 4, 2, 17, '', '', 'N', NULL, 'hdfc', '2134567987689976', 'HDFC1234567', '', 'Testing PVT Ltd', '', 'CFBCK4523C', NULL, 'CFBPK3412C', '123412341234', 'Test', 'Bangalore', 560041, 'Bangalore', 17, 'India', '2023-02-06 14:15:09', 1),
(2, 1, 4, 0, 0, '', '', 'N', NULL, '', '', '', '', 'NEODIGIBIZ SOLUTIONS PRIVATE LTD', '', '', '', '', '', '', '4, SANKARDOSS STREET\r\nPONDICHERRY-605001', 605001, 'PONDICHERRY', 27, 'India', '2023-02-06 14:40:38', 2),
(3, 1, 3, 0, 0, '', '', 'N', NULL, '', '', '', '', 'Askan Technologies Pvt Ltd', '', '', '', '', '', '', 'Askan Technologies Pvt Ltd,\nNo:48, Pavendhar St, Mariamman Nagar, Mudaliarpet', 605004, 'Pondicherry', 27, 'India', '2023-03-07 17:30:01', 3),
(4, 9, 1, 0, 0, '', '', 'N', NULL, '', '', '', '', 'Test', '', '', '', '', '', '', 'test', 605009, 'Pondicherry', 27, 'India', '2023-04-07 18:09:39', 4),
(5, 1, 1, 1, 1, '', '', 'N', NULL, 'test', '1234567899', '12345678956', '', 'test', '', 'CFBCF6214H', NULL, 'CFBPF6214H', '123456743434', 'TEST1234567', 'test', 605009, 'test', 27, 'India', '2023-06-13 16:42:48', 5);

-- --------------------------------------------------------

--
-- Table structure for table `merchant_charge_detail`
--

CREATE TABLE `merchant_charge_detail` (
  `id` int(11) NOT NULL,
  `merchant_id` int(11) NOT NULL DEFAULT '0',
  `dc_visa` double(4,2) DEFAULT '0.00',
  `dc_master` double(4,2) DEFAULT '0.00',
  `dc_rupay` double(4,2) DEFAULT '0.00',
  `cc_visa` double(4,2) DEFAULT '0.00',
  `cc_master` double(4,2) DEFAULT '0.00',
  `cc_rupay` double(4,2) DEFAULT '0.00',
  `amex` double(4,2) DEFAULT '0.00',
  `upi` double(4,2) DEFAULT '0.00',
  `wallet` double(4,2) DEFAULT '0.00',
  `dap` double(4,2) DEFAULT '0.00',
  `qrcode` double(4,2) DEFAULT '0.00',
  `net_sbi` double(4,2) DEFAULT '0.00',
  `net_hdfc` double(4,2) DEFAULT '0.00',
  `net_axis` double(4,2) DEFAULT '0.00',
  `net_icici` double(4,2) DEFAULT '0.00',
  `net_yes_kotak` double(4,2) DEFAULT '0.00',
  `net_others` double(4,2) DEFAULT '0.00',
  `business_type_id` tinyint(4) DEFAULT '0',
  `created_date` datetime DEFAULT NULL,
  `created_user` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `merchant_charge_detail`
--

INSERT INTO `merchant_charge_detail` (`id`, `merchant_id`, `dc_visa`, `dc_master`, `dc_rupay`, `cc_visa`, `cc_master`, `cc_rupay`, `amex`, `upi`, `wallet`, `dap`, `qrcode`, `net_sbi`, `net_hdfc`, `net_axis`, `net_icici`, `net_yes_kotak`, `net_others`, `business_type_id`, `created_date`, `created_user`) VALUES
(1, 1, 2.00, 2.00, 2.00, 2.00, 2.00, 2.00, 2.00, 2.00, 2.00, 2.00, 2.00, 2.00, 2.00, 2.00, 2.00, 2.00, 2.00, 2, '2023-03-16 16:34:29', 1);

-- --------------------------------------------------------

--
-- Table structure for table `merchant_coupon`
--

CREATE TABLE `merchant_coupon` (
  `id` int(11) NOT NULL,
  `coupon_gid` varchar(255) NOT NULL DEFAULT '',
  `coupon_type` tinyint(4) NOT NULL,
  `coupon_currency` tinyint(4) NOT NULL,
  `coupon_discount` varchar(50) DEFAULT '',
  `coupon_on` tinyint(4) NOT NULL,
  `coupon_maxdisc_amount` double(16,2) DEFAULT NULL,
  `coupon_ordermax_amount` double(16,2) DEFAULT NULL,
  `coupon_onproduct` int(11) DEFAULT NULL,
  `coupon_validfrom` datetime DEFAULT NULL,
  `coupon_validto` datetime DEFAULT NULL,
  `coupon_maxuse` varchar(50) DEFAULT NULL,
  `coupon_usermaxuse` varchar(50) DEFAULT NULL,
  `coupon_status` enum('active','inactive') DEFAULT 'active',
  `created_date` datetime DEFAULT NULL,
  `created_merchant` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `merchant_document`
--

CREATE TABLE `merchant_document` (
  `id` int(11) NOT NULL,
  `comp_pan_card` varchar(255) DEFAULT '',
  `comp_gst_doc` varchar(255) DEFAULT '',
  `bank_statement` varchar(255) DEFAULT '',
  `aoa_doc` varchar(255) DEFAULT '',
  `mer_pan_card` varchar(255) DEFAULT '',
  `mer_aadhar_card` varchar(255) DEFAULT '',
  `moa_doc` varchar(255) DEFAULT '',
  `cancel_cheque` varchar(255) DEFAULT '',
  `cin_doc` varchar(255) DEFAULT '',
  `partnership_deed` varchar(255) DEFAULT '',
  `llp_agreement` varchar(255) DEFAULT '',
  `registration_doc` varchar(255) DEFAULT '',
  `trust_constitutional` varchar(255) DEFAULT '' COMMENT 'Trust Deed / Bye-laws / Constitutional Document (If unregistered, notarized copy to be obtained)',
  `no_objection_doc` varchar(255) DEFAULT '',
  `doc_verified_by` int(11) DEFAULT '0',
  `verified_status` enum('pending','approved') DEFAULT 'pending',
  `created_date` datetime DEFAULT NULL,
  `created_merchant` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `merchant_document`
--

INSERT INTO `merchant_document` (`id`, `comp_pan_card`, `comp_gst_doc`, `bank_statement`, `aoa_doc`, `mer_pan_card`, `mer_aadhar_card`, `moa_doc`, `cancel_cheque`, `cin_doc`, `partnership_deed`, `llp_agreement`, `registration_doc`, `trust_constitutional`, `no_objection_doc`, `doc_verified_by`, `verified_status`, `created_date`, `created_merchant`) VALUES
(1, '', 'compgstdoc.pdf', 'bankstatement.pdf', '', 'merpancard.pdf', 'meraadharcard.pdf', '', 'cancelcheque.pdf', '', '', '', '', '', '', 1, 'approved', '2023-03-07 18:05:42', 1);

-- --------------------------------------------------------

--
-- Table structure for table `merchant_employee`
--

CREATE TABLE `merchant_employee` (
  `id` int(11) NOT NULL,
  `employee_gid` varchar(255) NOT NULL DEFAULT '',
  `employee_name` varchar(255) NOT NULL DEFAULT '',
  `employee_email` varchar(255) NOT NULL DEFAULT '',
  `employee_mobile` varchar(10) NOT NULL DEFAULT '',
  `employee_type` int(11) NOT NULL DEFAULT '0',
  `employee_password` varchar(255) NOT NULL DEFAULT '',
  `remember_token` varchar(255) DEFAULT '',
  `employee_modules` varchar(255) DEFAULT '',
  `employee_status` enum('active','inactive') DEFAULT 'active',
  `tf_auth` tinyint(1) DEFAULT '0',
  `tf_auth_secret` varchar(30) DEFAULT NULL,
  `tf_auth_codes` varchar(300) DEFAULT NULL,
  `failed_attempts` tinyint(4) DEFAULT '0',
  `is_account_locked` enum('Y','N') DEFAULT 'N',
  `created_date` datetime DEFAULT NULL,
  `created_merchant` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `merchant_extra_doc`
--

CREATE TABLE `merchant_extra_doc` (
  `id` int(11) NOT NULL,
  `merchant_id` int(11) NOT NULL DEFAULT '0',
  `doc_name` varchar(255) NOT NULL DEFAULT '',
  `doc_file` varchar(255) NOT NULL DEFAULT '',
  `created_date` datetime DEFAULT NULL,
  `created_user` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `merchant_feedback`
--

CREATE TABLE `merchant_feedback` (
  `id` int(11) NOT NULL,
  `feed_subject` tinyint(4) NOT NULL,
  `feed_rating` enum('1','2','3','4','5') DEFAULT NULL,
  `feedback` text,
  `created_date` datetime DEFAULT NULL,
  `created_merchant` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `merchant_feedback`
--

INSERT INTO `merchant_feedback` (`id`, `feed_subject`, `feed_rating`, `feedback`, `created_date`, `created_merchant`) VALUES
(1, 7, '2', 'testr', '2023-04-19 13:54:01', 4);

-- --------------------------------------------------------

--
-- Table structure for table `merchant_login_activity`
--

CREATE TABLE `merchant_login_activity` (
  `id` int(11) NOT NULL,
  `log_ipaddress` varchar(50) NOT NULL DEFAULT '',
  `log_device` varchar(50) NOT NULL DEFAULT '',
  `log_os` varchar(50) NOT NULL DEFAULT '',
  `log_browser` varchar(50) NOT NULL DEFAULT '',
  `log_time` datetime DEFAULT NULL,
  `log_merchant` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `merchant_login_activity`
--

INSERT INTO `merchant_login_activity` (`id`, `log_ipaddress`, `log_device`, `log_os`, `log_browser`, `log_time`, `log_merchant`) VALUES
(1, '122.171.23.79', 'System', 'Windows 10', 'Firefox', '2023-02-06 14:03:16', 1),
(2, '173.211.42.67', 'System', 'Windows 10', 'Chrome', '2023-02-06 14:38:02', 2),
(3, '122.171.22.222', 'System', 'Windows 10', 'Chrome', '2023-02-09 09:54:26', 1),
(4, '122.171.16.17', 'System', 'Windows 10', 'Chrome', '2023-02-13 10:18:18', 1),
(5, '122.171.16.17', 'System', 'Windows 10', 'Chrome', '2023-02-13 10:19:14', 1),
(6, '122.171.21.60', 'System', 'Windows 10', 'Chrome', '2023-03-01 16:20:59', 1),
(7, '103.98.32.54', 'System', 'Mac OS X', 'Chrome', '2023-03-07 17:29:45', 3),
(8, '122.171.21.60', 'System', 'Windows 10', 'Firefox', '2023-03-07 18:04:22', 1),
(9, '122.171.22.10', 'System', 'Windows 10', 'Chrome', '2023-03-16 16:14:21', 1),
(10, '122.171.22.10', 'System', 'Windows 10', 'Firefox', '2023-03-16 16:20:26', 1),
(11, '117.196.156.193', 'System', 'Windows 10', 'Chrome', '2023-04-07 18:09:10', 4),
(12, '117.205.238.61', 'System', 'Windows 10', 'Chrome', '2023-04-10 20:21:24', 4),
(13, '106.195.36.204', 'MOBILE', 'iPhone', 'Handheld Browser', '2023-04-17 14:55:41', 4),
(14, '59.93.0.29', 'System', 'Windows 10', 'Chrome', '2023-04-17 17:06:31', 4),
(15, '106.195.36.204', 'MOBILE', 'iPhone', 'Handheld Browser', '2023-04-17 18:27:30', 4),
(16, '202.189.246.142', 'System', 'Mac OS X', 'Chrome', '2023-04-18 10:04:19', 4),
(17, '117.205.237.109', 'System', 'Windows 10', 'Chrome', '2023-04-19 12:19:11', 4),
(18, '117.205.237.109', 'System', 'Windows 10', 'Firefox', '2023-04-19 12:26:46', 4),
(19, '117.205.237.109', 'System', 'Windows 10', 'Chrome', '2023-04-19 13:11:20', 4),
(20, '117.205.236.87', 'System', 'Mac OS X', 'Safari', '2023-04-19 13:42:28', 4),
(21, '103.98.32.54', 'System', 'Windows 10', 'Chrome', '2023-04-19 14:49:22', 4),
(22, '103.98.32.54', 'System', 'Windows 10', 'Firefox', '2023-04-19 14:55:10', 4),
(23, '117.205.236.87', 'System', 'Windows 10', 'Chrome', '2023-04-19 16:06:11', 4),
(24, '106.195.33.119', 'MOBILE', 'iPhone', 'Handheld Browser', '2023-04-19 17:48:46', 4),
(25, '157.48.190.76', 'MOBILE', 'Android', 'Handheld Browser', '2023-04-23 19:40:02', 4),
(26, '49.43.202.26', 'System', 'Mac OS X', 'Chrome', '2023-04-24 11:12:18', 4),
(27, '117.252.149.253', 'System', 'Windows 10', 'Chrome', '2023-05-23 19:49:19', 4),
(28, '103.98.33.45', 'System', 'Windows 10', 'Chrome', '2023-05-24 07:14:04', 4),
(29, '103.98.33.45', 'System', 'Windows 10', 'Chrome', '2023-05-24 07:15:28', 4),
(30, '152.58.214.189', 'System', 'Windows 10', 'Chrome', '2023-05-24 10:14:04', 4),
(31, '61.3.127.133', 'System', 'Windows 10', 'Chrome', '2023-05-26 15:43:51', 4),
(32, '117.213.76.204', 'System', 'Windows 10', 'Chrome', '2023-05-29 15:29:41', 4),
(33, '117.196.149.107', 'System', 'Windows 10', 'Chrome', '2023-05-30 10:01:25', 4),
(34, '117.205.237.221', 'System', 'Windows 10', 'Chrome', '2023-06-08 16:00:09', 4),
(35, '152.58.224.94', 'System', 'Windows 10', 'Chrome', '2023-06-13 16:29:55', 4),
(36, '152.58.224.94', 'System', 'Windows 10', 'Chrome', '2023-06-13 16:42:20', 5),
(37, '117.205.234.205', 'System', 'Mac OS X', 'Chrome', '2023-06-19 13:40:17', 4),
(38, '59.93.228.93', 'System', 'Mac OS X', 'Chrome', '2023-06-19 16:11:05', 4),
(39, '210.18.139.146', 'MOBILE', 'iPhone', 'Handheld Browser', '2023-07-25 14:22:56', 4),
(40, '210.18.139.146', 'System', 'Windows 10', 'Chrome', '2023-07-25 19:58:25', 4),
(41, '127.0.0.1', 'System', 'Mac OS X', 'Chrome', '2023-08-08 13:20:47', 1),
(42, '127.0.0.1', 'System', 'Mac OS X', 'Chrome', '2023-08-10 11:02:02', 1),
(43, '127.0.0.1', 'System', 'Mac OS X', 'Chrome', '2023-08-16 10:20:48', 1),
(44, '127.0.0.1', 'System', 'Mac OS X', 'Chrome', '2023-08-17 16:45:11', 1),
(45, '127.0.0.1', 'System', 'Mac OS X', 'Chrome', '2023-08-18 17:08:12', 1),
(46, '127.0.0.1', 'System', 'Mac OS X', 'Chrome', '2023-08-21 10:31:58', 1),
(47, '127.0.0.1', 'System', 'Mac OS X', 'Chrome', '2023-08-22 16:58:50', 1),
(48, '127.0.0.1', 'System', 'Mac OS X', 'Chrome', '2023-08-23 11:37:29', 1),
(49, '127.0.0.1', 'System', 'Mac OS X', 'Chrome', '2023-08-23 19:11:26', 1),
(50, '127.0.0.1', 'System', 'Mac OS X', 'Chrome', '2023-08-30 13:44:38', 1),
(51, '127.0.0.1', 'System', 'Mac OS X', 'Chrome', '2023-08-31 13:13:09', 1),
(52, '127.0.0.1', 'System', 'Mac OS X', 'Chrome', '2023-09-01 10:21:16', 1),
(53, '127.0.0.1', 'System', 'Mac OS X', 'Chrome', '2023-09-01 19:13:59', 1),
(54, '127.0.0.1', 'System', 'Mac OS X', 'Chrome', '2023-09-04 12:12:03', 1),
(55, '127.0.0.1', 'System', 'Mac OS X', 'Chrome', '2023-09-05 12:08:28', 1),
(56, '127.0.0.1', 'System', 'Mac OS X', 'Chrome', '2023-09-06 11:03:13', 1),
(57, '127.0.0.1', 'System', 'Mac OS X', 'Chrome', '2023-09-06 16:20:44', 1),
(58, '127.0.0.1', 'System', 'Mac OS X', 'Chrome', '2023-09-07 11:10:10', 1),
(59, '127.0.0.1', 'System', 'Mac OS X', 'Chrome', '2023-09-07 16:07:10', 1),
(60, '127.0.0.1', 'System', 'Mac OS X', 'Chrome', '2023-09-08 10:35:55', 1),
(61, '127.0.0.1', 'System', 'Mac OS X', 'Chrome', '2023-09-08 15:19:58', 1),
(62, '117.247.187.103', 'System', 'Mac OS X', 'Chrome', '2023-09-11 15:35:12', 1),
(63, '117.247.187.103', 'System', 'Mac OS X', 'Chrome', '2023-09-11 15:49:47', 1),
(64, '117.247.187.103', 'System', 'Mac OS X', 'Chrome', '2023-09-13 18:31:31', 1),
(65, '117.247.187.103', 'System', 'Mac OS X', 'Chrome', '2023-09-14 14:48:04', 1),
(66, '117.247.187.103', 'System', 'Mac OS X', 'Chrome', '2023-09-22 15:07:19', 1),
(67, '117.247.187.103', 'System', 'Mac OS X', 'Chrome', '2023-10-06 11:03:00', 1),
(68, '127.0.0.1', 'System', 'Mac OS X', 'Chrome', '2023-10-12 12:42:52', 1);

-- --------------------------------------------------------

--
-- Table structure for table `merchant_menus`
--

CREATE TABLE `merchant_menus` (
  `menu_id` int(11) NOT NULL,
  `menu_name` varchar(200) NOT NULL,
  `menu_no` bigint(20) NOT NULL,
  `menu_under` int(11) NOT NULL,
  `menu_level` int(11) NOT NULL,
  `menu_link` varchar(200) NOT NULL,
  `menu_icon` varchar(200) NOT NULL,
  `menu_color` varchar(100) NOT NULL,
  `menu_msg` varchar(200) NOT NULL,
  `insert_link` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `merchant_menus`
--

INSERT INTO `merchant_menus` (`menu_id`, `menu_name`, `menu_no`, `menu_under`, `menu_level`, `menu_link`, `menu_icon`, `menu_color`, `menu_msg`, `insert_link`) VALUES
(1, 'Dashboard', 1, 0, 1, 'merchant/dashboard', 'fa fa-dashboard', '', '', 1),
(2, 'Transactions', 2, 0, 1, 'merchant/transactions', 'fa fa-exchange fa-lg', 'lightgreen', '', 1),
(3, 'Payout', 3, 0, 1, '', 'fa fa-money fa-lg', 'gold', '', 0),
(4, 'Pay Links', 4, 0, 1, 'merchant/paylinks', 'fa fa-link fa-lg', 'yellow', '', 1),
(5, 'Invoices', 5, 0, 1, 'merchant/invoices', 'fa fa-file-pdf-o fa-lg', 'fuchsia', '', 1),
(6, 'Settlements', 6, 0, 1, 'merchant/settlements', 'fa fa-handshake-o fa-lg', 'orange', '', 1),
(7, 'Settings', 7, 0, 1, 'merchant/settings', 'fa fa-cog fa-lg', 'rgb(250, 144, 144)', '', 1),
(8, 'Resolution Center', 8, 0, 1, 'merchant/resolution-center', 'fa fa-universal-access fa-lg', 'lightgreen', '', 1),
(9, 'Utilities', 9, 0, 1, '', 'fa fa-code-fork fa-lg', 'chocolate', '', 0),
(10, 'Reports', 10, 0, 1, '', 'fa fa-file-text fa-lg', 'antiquewhite', '', 0),
(11, 'Users', 11, 0, 1, '', 'fa fa-users fa-lg', 'lightblue', '', 0),
(12, 'My Account', 12, 0, 1, 'merchant/my-account', 'fa fa-user-circle-o fa-lg', 'lightsalmon', '', 1),
(13, 'Payout Banks', 13, 0, 1, 'merchant/payout_banks', 'fa fa-money fa-lg', 'lightgreen', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `merchant_payout_apikeys`
--

CREATE TABLE `merchant_payout_apikeys` (
  `id` int(11) NOT NULL,
  `merchant_id` int(11) NOT NULL,
  `client_id` varchar(28) COLLATE utf8_unicode_ci NOT NULL,
  `secret_key` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `hash_key` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `merchant_payout_apikeys`
--

INSERT INTO `merchant_payout_apikeys` (`id`, `merchant_id`, `client_id`, `secret_key`, `hash_key`, `created_at`) VALUES
(31, 1, 'R5HZM19ZTQ0KCI7UF9NPH1MLYX4A', 'dx5imh7gokalaxi9zw5f75yqy60v8f10bgv1urds', 'KOK0FDM12A', '2022-09-05 06:08:10'),
(34, 1, '5ZVFGNP80SYTU1YMKM8IF9S20U8E', 'ehkg5so72zio5byrivvnvwng6ufzigro4m5tp9el', '27M0Q0S7VE', '2022-09-06 08:54:12'),
(35, 1, 'TADS32WA85V8VTTIPW00FTFHFHO4', 'tmaskthth2o9zb3qj4d19zuc5x8w5rs1nz061cee', 'SD35FWF5AI', '2022-10-09 18:43:05'),
(36, 1, 'QZT8O6STFAL5RUUX27BNAIVIG9W6', 'vxvf34terhf5kamx7k2kjzcb1oovaxw8feddcrxt', 'WTEC8U2168', '2022-10-11 13:28:12'),
(37, 1, '546EGKRH2CCU5V9BCDPHI780RH7M', '2rf7gmvhuevz0kx9tpqn4ck2yz2b555xv0utw6d8', 'FMAF3NRKAN', '2022-10-18 04:42:38'),
(38, 1, 'NJPSJ89QU2VS8JMU5NDB0AIWAGIF', '156vg5ky3nicbzxf58g7lgfeyb3venugvbtjj7mk', '8HCIYMCAVL', '2023-08-17 11:21:27');

-- --------------------------------------------------------

--
-- Table structure for table `merchant_payout_charges`
--

CREATE TABLE `merchant_payout_charges` (
  `id` int(11) NOT NULL,
  `merchant_id` int(11) NOT NULL,
  `min_range` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `max_range` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `IMPS` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `NEFT` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `RTGS` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `UPI` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `PAYTM` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `AMAZON` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `udf1` int(11) NOT NULL,
  `udf2` int(11) NOT NULL,
  `udf3` int(11) NOT NULL,
  `udf4` int(11) NOT NULL,
  `type` enum('flat','percentage') COLLATE utf8_unicode_ci NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `merchant_payout_charges`
--

INSERT INTO `merchant_payout_charges` (`id`, `merchant_id`, `min_range`, `max_range`, `IMPS`, `NEFT`, `RTGS`, `UPI`, `PAYTM`, `AMAZON`, `udf1`, `udf2`, `udf3`, `udf4`, `type`, `created_date`) VALUES
(3, 1, '0', '10000', '5.5', '5.5', '6', '1.8', '2', '3.2', 0, 0, 0, 0, 'percentage', '2022-09-15 09:36:08'),
(5, 1, '10000', '20000', '5', '10', '7', '4', '3', '5', 0, 0, 0, 0, 'flat', '2022-09-15 06:10:41'),
(6, 2, '10', '1000', '5', '4', '1', '3', '2', '5', 0, 0, 0, 0, 'flat', '2022-09-16 05:40:20'),
(13, 6, '0', '100', '1', '1', '1', '1', '1', '1', 0, 0, 0, 0, 'flat', '2022-09-19 11:02:52'),
(14, 6, '100', '1000', '2', '2', '2', '2', '2', '2', 0, 0, 0, 0, 'flat', '2022-09-19 11:02:52'),
(15, 6, '1000', '5000', '3', '3', '3', '3', '3', '3', 0, 0, 0, 0, 'flat', '2022-09-19 11:02:52');

-- --------------------------------------------------------

--
-- Table structure for table `merchant_payout_ipwhitelist`
--

CREATE TABLE `merchant_payout_ipwhitelist` (
  `id` int(11) NOT NULL,
  `merchant_id` int(11) NOT NULL,
  `ipwhitelist` varchar(105) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `merchant_payout_ipwhitelist`
--

INSERT INTO `merchant_payout_ipwhitelist` (`id`, `merchant_id`, `ipwhitelist`, `created_at`) VALUES
(4, 1, '223.177.33.155', '2022-09-05 09:13:27'),
(5, 1, '27.57.194.87', '2022-10-12 12:01:11'),
(6, 1, '152.57.182.107', '2022-09-27 21:18:59'),
(7, 1, '152.57.72.146', '2022-09-27 21:30:17'),
(8, 1, '152.57.167.234', '2022-10-05 21:20:53'),
(9, 1, '152.57.17.19', '2022-10-05 21:53:37');

-- --------------------------------------------------------

--
-- Table structure for table `merchant_payout_vendor`
--

CREATE TABLE `merchant_payout_vendor` (
  `id` int(11) NOT NULL,
  `merchant_id` int(11) DEFAULT NULL,
  `imps` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `neft` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rtgs` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `upi` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `paytm` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `amazon` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `udf1` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `udf2` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `udf3` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `udf4` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `merchant_payout_vendor`
--

INSERT INTO `merchant_payout_vendor` (`id`, `merchant_id`, `imps`, `neft`, `rtgs`, `upi`, `paytm`, `amazon`, `udf1`, `udf2`, `udf3`, `udf4`, `created_at`) VALUES
(2, 1, '2', '6', '11', '3', '4', '9', NULL, NULL, NULL, NULL, '2022-09-14 12:29:08'),
(3, 6, '1', '2', '4', '6', '4', '6', NULL, NULL, NULL, NULL, '2022-09-14 12:29:32');

-- --------------------------------------------------------

--
-- Table structure for table `merchant_requests`
--

CREATE TABLE `merchant_requests` (
  `id` int(11) NOT NULL,
  `request` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `is_service` int(2) NOT NULL DEFAULT '1',
  `merchant_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `merchant_requests`
--

INSERT INTO `merchant_requests` (`id`, `request`, `status`, `is_service`, `merchant_id`, `created_at`) VALUES
(3, 'payout', 1, 1, 1, '2022-11-24 11:43:14'),
(4, 'payout', 0, 1, 4, '2023-04-19 15:09:59');

-- --------------------------------------------------------

--
-- Table structure for table `merchant_services`
--

CREATE TABLE `merchant_services` (
  `id` int(11) NOT NULL,
  `merchant_id` int(11) NOT NULL,
  `payout` int(11) NOT NULL,
  `payin` int(11) NOT NULL,
  `pennydrop` int(11) NOT NULL,
  `udf1` int(11) DEFAULT NULL,
  `udf2` int(11) DEFAULT NULL,
  `udf3` int(11) DEFAULT NULL,
  `udf4` int(11) DEFAULT NULL,
  `udf5` int(11) DEFAULT NULL,
  `created_user` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `merchant_services`
--

INSERT INTO `merchant_services` (`id`, `merchant_id`, `payout`, `payin`, `pennydrop`, `udf1`, `udf2`, `udf3`, `udf4`, `udf5`, `created_user`, `created_at`) VALUES
(1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, 1, '2022-11-02 07:12:08'),
(2, 2, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-13 11:31:44'),
(3, 31, 1, 1, 0, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-20 07:01:47');

-- --------------------------------------------------------

--
-- Table structure for table `merchant_status_log`
--

CREATE TABLE `merchant_status_log` (
  `id` int(11) NOT NULL,
  `merchant_id` int(11) NOT NULL,
  `status` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `merchant_status_log`
--

INSERT INTO `merchant_status_log` (`id`, `merchant_id`, `status`, `created_at`) VALUES
(1, 1, 'inactive', '2022-11-02 09:58:28'),
(2, 1, 'active', '2022-11-02 09:58:37');

-- --------------------------------------------------------

--
-- Table structure for table `merchant_submenus`
--

CREATE TABLE `merchant_submenus` (
  `submenu_id` int(11) NOT NULL,
  `submenu_name` varchar(200) NOT NULL,
  `submenu_no` bigint(20) NOT NULL,
  `submenu_under` int(11) NOT NULL,
  `submenu_level` int(11) NOT NULL,
  `submenu_link` varchar(200) NOT NULL,
  `submenu_icon` varchar(200) NOT NULL,
  `submenu_color` varchar(100) NOT NULL,
  `submenu_msg` varchar(200) NOT NULL,
  `insert_link` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `merchant_submenus`
--

INSERT INTO `merchant_submenus` (`submenu_id`, `submenu_name`, `submenu_no`, `submenu_under`, `submenu_level`, `submenu_link`, `submenu_icon`, `submenu_color`, `submenu_msg`, `insert_link`) VALUES
(1, 'Payout Dashboard', 1, 3, 2, 'merchant/payout_overview', '', '', '', 0),
(2, 'Payout', 2, 3, 2, 'merchant/payout', '', '', '', 0),
(3, 'Beneficiaries', 3, 3, 2, 'merchant/beneficiaries', '', '', '', 0),
(4, 'Contacts', 4, 3, 2, 'merchant/contacts', '', '', '', 0),
(5, 'Groups', 5, 3, 2, 'merchant/beneficiary_groups', '', '', '', 0),
(6, 'Fund Transfer', 6, 3, 2, 'merchant/fund_transfer', '', '', '', 0),
(7, 'Settings', 7, 3, 2, 'merchant/payout_setting', '', '', '', 0),
(8, 'Accounts', 8, 3, 2, 'merchant/payout_account', '', '', '', 0),
(9, 'Reports', 9, 3, 2, 'merchant/payout_reports', '', '', '', 0),
(10, 'Flashpage', 1, 9, 2, 'merchant/tools', '', '', '', 0),
(11, 'Feed back', 2, 9, 2, 'merchant/feed-back', '', '', '', 0),
(12, 'Help & Support', 3, 9, 2, 'merchant/help-support', '', '', '', 0),
(13, 'Refer & Earn', 4, 9, 2, 'merchant/refer-earn', '', '', '', 0),
(14, 'Transaction Report', 1, 10, 2, 'merchant/transactionreport', '', '', '', 0),
(15, 'Gst Invoice', 2, 10, 2, 'merchant/gstinvoicereport', '', '', '', 0),
(16, 'Datatable Exports', 3, 10, 2, 'merchant/datatable_export', '', '', '', 0),
(17, 'Miscellaneous', 4, 10, 2, 'merchant/miscellaneous', '', '', '', 0),
(18, 'Employee', 1, 11, 2, 'merchant/employee', '', '', '', 0),
(19, 'Types', 2, 11, 2, 'merchant/employee-types', '', '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `merchant_support`
--

CREATE TABLE `merchant_support` (
  `id` int(11) NOT NULL,
  `sup_gid` varchar(50) NOT NULL DEFAULT '',
  `sup_category` tinyint(4) NOT NULL DEFAULT '0',
  `title` varchar(50) NOT NULL DEFAULT '',
  `sup_description` text,
  `sup_file_path` varchar(255) DEFAULT '',
  `sup_from` enum('live','test') DEFAULT NULL,
  `sup_status` enum('open','resolved','closed','pending') DEFAULT NULL,
  `created_by` enum('merchant','employee') DEFAULT 'merchant',
  `created_date` datetime DEFAULT NULL,
  `merchant_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `merchant_type_permissions`
--

CREATE TABLE `merchant_type_permissions` (
  `id` int(11) NOT NULL,
  `merchant_employee_id` int(11) NOT NULL,
  `menus` longtext NOT NULL,
  `submenus` longtext NOT NULL,
  `created_date` datetime NOT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  `updated_date` datetime DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `merchant_type_permissions`
--

INSERT INTO `merchant_type_permissions` (`id`, `merchant_employee_id`, `menus`, `submenus`, `created_date`, `created_by`, `updated_date`, `updated_at`, `updated_by`) VALUES
(3, 1, '[\"1\",\"2\",\"3\",\"4\",\"5\",\"6\",\"7\",\"8\",\"9\",\"10\",\"12\"]', '[\"1\",\"2\",\"3\",\"4\",\"5\",\"6\",\"7\",\"8\",\"9\",\"10\",\"11\",\"12\",\"13\",\"14\",\"15\",\"16\",\"17\"]', '2022-10-07 03:34:45', 1, '2022-10-07 04:02:18', '2022-10-06 22:32:18', 1),
(4, 2, '[\"1\",\"2\"]', '', '2022-10-07 18:02:46', 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `merchant_vendor_bank`
--

CREATE TABLE `merchant_vendor_bank` (
  `id` int(11) NOT NULL,
  `merchant_id` int(11) NOT NULL DEFAULT '0',
  `cc_card` int(11) NOT NULL DEFAULT '0',
  `dc_card` int(11) NOT NULL DEFAULT '0',
  `net` int(11) NOT NULL DEFAULT '0',
  `upi` int(11) NOT NULL DEFAULT '0',
  `qrcode` int(11) DEFAULT '0',
  `wallet` int(11) NOT NULL DEFAULT '0',
  `business_type_id` int(11) NOT NULL DEFAULT '0',
  `created_date` datetime DEFAULT NULL,
  `created_user` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `merchant_vendor_bank`
--

INSERT INTO `merchant_vendor_bank` (`id`, `merchant_id`, `cc_card`, `dc_card`, `net`, `upi`, `qrcode`, `wallet`, `business_type_id`, `created_date`, `created_user`) VALUES
(1, 1, 4, 4, 4, 4, 4, 4, 2, '2023-03-16 16:35:13', 1);

-- --------------------------------------------------------

--
-- Table structure for table `mid_keys_atom`
--

CREATE TABLE `mid_keys_atom` (
  `id` int(11) NOT NULL,
  `merchant_id` int(11) NOT NULL,
  `userid` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `hash_request_key` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `hash_response_key` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `aes_request_key` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `aes_request_salt_iv_key` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `aes_response_key` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `aes_response_salt_iv_key` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `mid_keys_atom`
--

INSERT INTO `mid_keys_atom` (`id`, `merchant_id`, `userid`, `hash_request_key`, `hash_response_key`, `aes_request_key`, `aes_request_salt_iv_key`, `aes_response_key`, `aes_response_salt_iv_key`, `created_date`, `created_user`) VALUES
(4, 2, 'demo_new_atom', 'demo_new_atom', 'demo_new_atom', 'demo_new_atom', 'demo_new_atom', 'demo_new_atom', 'demo_new_atom', '2022-09-12 12:30:48', 1),
(5, 6, 'FSL', 'ghsldfjl', 'lkfjsdlkj', 'Demofl;as', 'demofnlasdkn', 'demoflsakd', 'demofjldskjaf', '2022-09-13 06:36:50', 1);

-- --------------------------------------------------------

--
-- Table structure for table `mid_keys_paytm`
--

CREATE TABLE `mid_keys_paytm` (
  `id` int(11) NOT NULL,
  `merchant_id` int(11) NOT NULL,
  `paytm_merchant_id` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `merchant_key` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `website` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `industry_type` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `channel_id_website` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `channel_id_mobileapp` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `mid_keys_paytm`
--

INSERT INTO `mid_keys_paytm` (`id`, `merchant_id`, `paytm_merchant_id`, `merchant_key`, `website`, `industry_type`, `channel_id_website`, `channel_id_mobileapp`, `created_date`, `created_user`) VALUES
(1, 1, 'demo', 'demo', 'demo', 'demo', 'demo', 'demo', '2022-09-09 09:04:14', 1);

-- --------------------------------------------------------

--
-- Table structure for table `mid_keys_razorpay`
--

CREATE TABLE `mid_keys_razorpay` (
  `id` int(11) NOT NULL,
  `merchant_id` int(11) NOT NULL,
  `key_id` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `key_secret` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `mid_keys_razorpay`
--

INSERT INTO `mid_keys_razorpay` (`id`, `merchant_id`, `key_id`, `key_secret`, `created_date`, `created_user`) VALUES
(2, 1, 'razr_Demo', 'razr', '2022-09-09 12:17:35', 1);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(11) NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2023_08_10_121827_payment_gateways_list', 1);

-- --------------------------------------------------------

--
-- Table structure for table `navigation`
--

CREATE TABLE `navigation` (
  `id` int(11) NOT NULL,
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hyperlink` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `hyperlinkid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `parent_id` smallint(5) DEFAULT NULL,
  `user_type` tinyint(4) NOT NULL DEFAULT '0',
  `department_id` tinyint(4) NOT NULL DEFAULT '0',
  `nav_status` enum('active','inactive') COLLATE utf8mb4_unicode_ci DEFAULT 'active',
  `created_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `navigation`
--

INSERT INTO `navigation` (`id`, `link_name`, `hyperlink`, `hyperlinkid`, `parent_id`, `user_type`, `department_id`, `nav_status`, `created_date`) VALUES
(1, 'Account', '/payhot/account', '', 0, 1, 1, 'active', '2020-05-02 11:17:28'),
(2, 'Finance', '/payhot/finance', '', 0, 1, 1, 'active', '2020-05-02 11:17:28'),
(3, 'Settlement', '/payhot/settlement', '', 0, 1, 1, 'active', '2020-05-02 11:17:28'),
(4, 'Technical', '/payhot/technical', '', 0, 1, 1, 'active', '2020-05-02 11:17:28'),
(5, 'Networking', '/payhot/networking', '', 0, 1, 1, 'active', '2020-05-02 11:17:28'),
(6, 'Support', '/payhot/support', '', 0, 1, 1, 'active', '2020-05-02 11:17:28'),
(7, 'Marketing', '/payhot/marketing', '', 0, 1, 1, 'active', '2020-05-02 11:17:28'),
(8, 'Sales', '/payhot/sales', '', 0, 1, 1, 'active', '2020-05-02 11:17:28'),
(9, 'Risk & Complaince', '/payhot/risk-complaince', '', 0, 1, 1, 'active', '2020-05-02 11:17:28'),
(10, 'Legal', '/payhot/legal', '', 0, 1, 1, 'active', '2020-05-02 11:17:28'),
(11, 'Purchase', '/payhot/account/payable-management/ryapay-XYFGXwnY', '', 1, 1, 1, 'active', '2020-05-02 11:29:23'),
(12, 'Sales', '/payhot/account/receivable-management/ryapay-VfWlmhwZ', '', 1, 1, 1, 'active', '2020-05-02 11:29:23'),
(13, 'Fixed Assests Accounting', '/payhot/account/fixed-assets-accounting/ryapay-2eZDqgsL', '', 1, 1, 1, 'active', '2020-05-02 11:29:23'),
(14, 'Global Taxation Solution', '/payhot/account/global-taxation-solution/ryapay-TZ4rElGj', '', 1, 1, 1, 'active', '2020-05-02 11:29:23'),
(15, 'Payable Management', '/payhot/finance/payable-management/ryapay-fRg1gbzX', '', 2, 1, 1, 'active', '2020-05-02 11:29:23'),
(16, 'Receivable Management', '/payhot/finance/receivable-management/ryapay-yKzVIkqM', '', 2, 1, 1, 'active', '2020-05-02 11:29:23'),
(34, 'Purchase Bill Booking', '', 'ryapay-XYFGXwnY', 11, 1, 1, 'inactive', '2020-05-04 10:45:41'),
(35, 'Purchase Order', '', 'ryapay-XYFGXwnY', 11, 1, 1, 'inactive', '2020-05-04 10:45:41'),
(36, 'Order base Supplier Invoice booking', '', 'ryapay-XYFGXwnY', 11, 1, 1, 'inactive', '2020-05-04 10:45:41'),
(37, 'Direct Expense Supplier Invocie Booking', '', 'ryapay-XYFGXwnY', 11, 1, 1, 'active', '2020-05-04 10:45:41'),
(38, 'Supplier Debit Note Credit Note Booking', '', 'ryapay-XYFGXwnY', 11, 1, 1, 'active', '2020-05-04 10:45:41'),
(97, 'HRM', '/payhot/hrm', '', 0, 1, 1, 'active', '2020-05-04 18:16:48'),
(99, 'Employee Details', '/payhot/hrm/employee-details/ryapay-SXuz2t3Z', '', 97, 1, 1, 'active', '2020-05-04 18:19:38'),
(100, 'NDA', '/payhot/hrm/nda/ryapay-c7lNqTsO', '', 97, 1, 1, 'active', '2020-05-04 18:19:38'),
(101, 'BVF', '/payhot/hrm/bvf/ryapay-Mvrucsfy', '', 97, 1, 1, 'active', '2020-05-04 18:19:38'),
(102, 'Employee Attendance', '/payhot/hrm/employee-attendance/ryapay-NcNaSKMw', '', 97, 1, 1, 'active', '2020-05-04 18:19:38'),
(103, 'Payroll', '/payhot/hrm/payroll/ryapay-iIBwDDuu', '', 97, 1, 1, 'active', '2020-05-04 18:19:38'),
(104, 'Performance Appraisal', '/payhot/hrm/performance-appraisal/ryapay-uS4rUYz3', '', 97, 1, 1, 'active', '2020-05-04 18:19:38'),
(105, 'Confidentiality Agreement', '/payhot/hrm/confidentiality-agreement/ryapay-aaY5sIe3', '', 97, 1, 1, 'active', '2020-05-04 18:19:38'),
(106, 'Transactions', '/payhot/settlement/transactions/ryapay-YBxqOZ30', '', 3, 1, 1, 'active', '2020-05-04 16:50:25'),
(107, 'Chargeback/Dispute/Resolution', '/payhot/settlement/cdr/ryapay-DlcU03aC', '', 3, 1, 1, 'active', '2020-05-04 16:50:25'),
(108, 'Reports', '/payhot/settlement/reports/ryapay-sghXxSUl', '', 3, 1, 1, 'active', '2020-05-04 16:50:25'),
(109, 'Settings', '/payhot/settlement/settings/ryapay-AXIqkAKj', '', 3, 1, 1, 'active', '2020-05-04 16:50:25'),
(111, 'Merchant Settings', '/payhot/technical/l2-tickets/ryapay-9hAosQ4C', '', 4, 1, 1, 'active', '2020-05-04 16:57:57'),
(112, 'Live Merchants', '/payhot/technical/work-status/ryapay-UJMw4ZWp', '', 4, 1, 1, 'active', '2020-05-04 16:57:57'),
(113, 'Network Status', '/payhot/networking/network-status/ryapay-kUMU1Xop', '', 5, 1, 1, 'active', '2020-05-04 16:57:57'),
(114, 'Client Desk', '/payhot/support/client-desk/ryapay-2OjYRr4O', '', 6, 1, 1, 'active', '2020-05-04 16:57:57'),
(115, 'Merchant Status', '/payhot/support/merchant-status/ryapay-yp9slYdc', '', 6, 1, 1, 'active', '2020-05-04 16:57:57'),
(116, 'Call List', '/payhot/support/call-list/ryapay-lcAKnFKA', '', 6, 1, 1, 'active', '2020-05-04 16:57:57'),
(117, 'Offline Marketing', '/payhot/maroketing/offline-marketing/ryapay-Hcvg4x9i', '', 7, 1, 1, 'active', '2020-05-04 17:06:26'),
(118, 'Online Marketing', '/payhot/marketing/online-marketing/ryapay-bqcP77Bq', '', 7, 1, 1, 'active', '2020-05-04 17:06:26'),
(119, 'SEO', '', 'ryapay-bqcP77Bq', 118, 1, 1, 'active', '2020-05-04 17:06:26'),
(120, 'SMO', '', 'ryapay-bqcP77Bq', 118, 1, 1, 'active', '2020-05-04 17:06:26'),
(121, 'Content Writer', '', 'ryapay-bqcP77Bq', 118, 1, 1, 'active', '2020-05-04 17:06:26'),
(122, 'Leads Status', '/payhot/sales/lead-status/ryapay-0wFGLU8N', '', 8, 1, 1, 'active', '2020-05-04 17:06:26'),
(123, 'Leads Sheat', '', 'ryapay-0wFGLU8N', 122, 1, 1, 'active', '2020-05-04 17:06:26'),
(124, 'Daily Tracker', '', 'ryapay-0wFGLU8N', 122, 1, 1, 'active', '2020-05-04 17:06:26'),
(125, 'Merchant Transactions', '/payhot/sales/merchant-transactions/ryapay-jmGcXynF', '', 8, 1, 1, 'active', '2020-05-04 17:06:26'),
(126, 'Merchant Document', '/payhot/risk-complaince/merchant-document/ryapay-7WRwwggm', '', 9, 1, 1, 'active', '2020-05-04 17:20:22'),
(127, 'Background Verification', '/payhot/risk-complaince/background-verification/ryapay-OXS3k7jc', '', 9, 1, 1, 'active', '2020-05-04 17:20:22'),
(128, 'Customer Case', '/payhot/legal/customer-case/ryapay-NjYZ6hfD', '', 10, 1, 1, 'active', '2020-05-04 17:20:22'),
(129, 'Rpay Capital', '/payhot/legal/capital/ryapay-mg2CmEqa', '', 10, 1, 1, 'inactive', '2020-05-04 17:20:22'),
(130, 'Rpay Express Case', '/payhot/legal/express-case/ryapay-l8uzkkmn', '', 10, 1, 1, 'inactive', '2020-05-04 17:20:22'),
(131, 'Rpay Wallet/Gullak/Sanddok Case', '/payhot/legal/wallet-gullak-sanddok/ryapay-FS4YTU2P', '', 10, 1, 1, 'inactive', '2020-05-04 17:20:22'),
(132, 'Rpay POS Case', '/payhot/legal/pos-case/ryapay-0Gzp8WIR', '', 10, 1, 1, 'inactive', '2020-05-04 17:20:22'),
(133, 'Rpay Credit Card Case', '/payhot/legal/credit-card-case/ryapay-wdxnhgpQ', '', 10, 1, 1, 'inactive', '2020-05-04 17:20:22'),
(134, 'Rpay IVR pay Case', '/payhot/legal/ivr-pay-case/ryapay-Ov8wWNON', '', 10, 1, 1, 'inactive', '2020-05-04 17:20:22'),
(135, 'Sales Bill Booking', '', 'ryapay-VfWlmhwZ', 12, 1, 1, 'inactive', '2020-05-05 18:45:01'),
(136, 'Sales Order', '', 'ryapay-VfWlmhwZ', 12, 1, 1, 'active', '2020-05-05 18:45:17'),
(137, 'Order base Sale Invoice booking', '', 'ryapay-VfWlmhwZ', 12, 1, 1, 'active', '2020-05-05 18:45:28'),
(138, 'Order base Sale Invoice booking', '', 'ryapay-VfWlmhwZ', 12, 1, 1, 'inactive', '2020-05-05 18:45:36'),
(139, 'Customer Debit Note Credit Note Booking', '', 'ryapay-VfWlmhwZ', 12, 1, 1, 'active', '2020-05-05 18:45:48'),
(140, 'Asset Creation', '', 'ryapay-2eZDqgsL', 13, 1, 1, 'active', '2020-05-05 18:47:41'),
(141, 'Asset Capitalization', '', 'ryapay-2eZDqgsL', 13, 1, 1, 'active', '2020-05-05 18:47:41'),
(142, 'Process Depreciation', '', 'ryapay-2eZDqgsL', 13, 1, 1, 'active', '2020-05-05 18:47:41'),
(143, 'Sale of Asset', '', 'ryapay-2eZDqgsL', 13, 1, 1, 'active', '2020-05-05 18:47:41'),
(144, 'Tax Settlement', '', 'ryapay-TZ4rElGj', 14, 1, 1, 'active', '2020-05-05 18:49:12'),
(145, 'Tax Adjustment', '', 'ryapay-TZ4rElGj', 14, 1, 1, 'active', '2020-05-05 18:49:12'),
(146, 'Tax Payment', '', 'ryapay-TZ4rElGj', 14, 1, 1, 'active', '2020-05-05 18:49:12'),
(147, 'Tax Returns', '', 'ryapay-TZ4rElGj', 14, 1, 1, 'inactive', '2020-05-05 18:49:12'),
(148, 'Payment Entry', '', 'ryapay-fRg1gbzX', 15, 1, 1, 'inactive', '2020-05-05 18:50:40'),
(149, 'Supplier Pay Batch Entry', '', 'ryapay-fRg1gbzX', 15, 1, 1, 'inactive', '2020-05-05 18:50:40'),
(150, 'Sundry Payment Entry ', '', 'ryapay-fRg1gbzX', 15, 1, 1, 'active', '2020-05-05 18:50:40'),
(151, 'Contra Entry ', '', 'ryapay-fRg1gbzX', 15, 1, 1, 'active', '2020-05-05 18:50:40'),
(152, 'Receipt Entry', '', 'ryapay-yKzVIkqM', 16, 1, 1, 'inactive', '2020-05-05 18:51:35'),
(153, 'Customer Direct Receipt Entry', '', 'ryapay-yKzVIkqM', 16, 1, 1, 'inactive', '2020-05-05 18:51:35'),
(154, 'Sundry Receipt Entry ', '', 'ryapay-yKzVIkqM', 16, 1, 1, 'active', '2020-05-05 18:51:35'),
(187, 'Employee Details', '/payhot/hrm/employee-details/ryapay-TiwVw9Al', '', 99, 1, 1, 'inactive', '2020-05-07 06:25:55'),
(188, 'Add Employee', '/payhot/hrm/add-employee/ryapay-ltzasSUi', '', 99, 1, 1, 'inactive', '2020-05-07 06:25:55'),
(189, 'Chart Of Accounts', '/payhot/account/account-charts/ryapay-6q1947ay', '', 1, 1, 1, 'active', '2020-05-09 13:08:39'),
(191, 'Accounts Details', '', 'ryapay-6q1947ay', 189, 1, 1, 'active', '2020-05-09 15:46:21'),
(193, 'Add Chart Of Account', '', 'ryapay-6q1947ay', 189, 1, 1, 'active', '2020-05-09 15:48:48'),
(194, 'My Account', '/payhot/my-account/', '', 0, 1, 1, 'inactive', '2020-05-10 20:53:36'),
(195, 'Book Keeping', '/payhot/account/book-keeping/ryapay-T0Xk89gf', '', 1, 1, 1, 'active', '2020-05-12 20:32:19'),
(196, 'Chart Of Account', '', 'ryapay-T0Xk89gf', 195, 1, 1, 'inactive', '2020-05-12 20:32:19'),
(197, 'Maintain Cost Center', '', 'ryapay-T0Xk89gf', 195, 1, 1, 'inactive', '2020-05-12 20:32:19'),
(198, 'General Voucher Entries', '', 'ryapay-T0Xk89gf', 195, 1, 1, 'active', '2020-05-12 20:32:19'),
(203, 'Master', '/payhot/account/invoice/ryapay-d6zhbMJQ', '', 1, 1, 1, 'active', '2020-05-13 05:10:45'),
(204, 'Invoices', '', 'ryapay-d6zhbMJQ', 203, 1, 1, 'inactive', '2020-05-13 05:20:25'),
(205, 'Items', '', 'ryapay-d6zhbMJQ', 203, 1, 1, 'active', '2020-05-13 05:20:25'),
(206, 'Customers', '', 'ryapay-d6zhbMJQ', 203, 1, 1, 'active', '2020-05-13 05:20:25'),
(220, 'Sales Sheet', '', 'ryapay-0wFGLU8N', 122, 1, 1, 'active', '2020-05-15 22:29:39'),
(225, 'Merchant', '/payhot/merchant', '', 0, 1, 1, 'active', '2020-06-16 10:12:28'),
(226, 'Transactions', '/payhot/merchant/transactions/ryapay-Ma42px1Z', '', 225, 1, 1, 'active', '2020-06-16 10:39:34'),
(227, 'Transaction Methods', '/payhot/merchant/transaction/methods/ryapay-7xnYf8Yy', '', 225, 1, 1, 'active', '2020-06-16 10:39:34'),
(228, 'Details', '/payhot/merchant/details/ryapay-G6VFQPKr', '', 225, 1, 1, 'active', '2020-06-16 10:39:34'),
(229, 'Routes', '/payhot/merchant/routes/ryapay-VnUZJTRX', '', 225, 1, 1, 'active', '2020-06-16 10:39:34'),
(230, 'Cases', '/payhot/merchant/cases/ryapay-VwAPGcs2', '', 225, 1, 1, 'active', '2020-06-16 10:39:34'),
(231, 'Adjustments', '/payhot/merchant/adjustments/ryapay-cw1kdlTJ', '', 225, 1, 1, 'active', '2020-06-16 10:39:34'),
(233, 'Suppliers', '', 'ryapay-d6zhbMJQ', 203, 1, 1, 'active', '2020-07-08 18:58:16'),
(234, 'Grievence Cell', '/payhot/risk-complaince/grievence-cell/ryapay-MMsTfgSk', '', 9, 1, 1, 'active', '2020-08-06 17:13:21'),
(235, 'Banned Products', '/payhot/risk-complaince/banned-products/ryapay-Q28dM8vD', '', 9, 1, 1, 'active', '2020-08-06 17:14:27'),
(236, 'Contact', '', 'ryapay-bqcP77Bq', 118, 1, 1, 'active', '2020-09-23 11:14:53'),
(237, 'Subscribe', '', 'ryapay-bqcP77Bq', 118, 1, 1, 'active', '2020-09-23 11:14:53'),
(238, 'Gallery', '', 'ryapay-bqcP77Bq', 118, 1, 1, 'active', '2020-09-23 11:14:53'),
(239, 'Events', '', 'ryapay-bqcP77Bq', 118, 1, 1, 'active', '2020-09-23 11:14:53'),
(240, 'CSRBlog', '', 'ryapay-bqcP77Bq', 118, 1, 1, 'active', '2020-09-23 11:14:53'),
(241, 'Career', '/payhot/hrm/career/ryapay-7Cd8CjUY', '', 97, 1, 1, 'active', '2020-09-23 15:30:43'),
(242, 'Press Release', '', 'ryapay-bqcP77Bq', 118, 1, 1, 'active', '2020-10-07 12:18:48'),
(243, 'Merchant Charges', '', 'ryapay-9hAosQ4C', 111, 1, 1, 'active', '2020-10-08 14:14:25'),
(244, 'Adjustment Charges', '', 'ryapay-9hAosQ4C', 111, 1, 1, 'active', '2020-11-03 16:45:06'),
(245, 'Merchant Document', '', 'ryapay-7WRwwggm', 126, 1, 1, 'active', '2021-01-08 17:38:00'),
(246, 'Merchant Extra Document', '', 'ryapay-7WRwwggm', 126, 1, 1, 'active', '2021-01-08 17:45:29'),
(247, 'Merchant Gateway Route', '', 'ryapay-9hAosQ4C', 111, 1, 1, 'active', '2021-01-15 11:56:46'),
(248, 'Vendor Configuration', '', 'ryapay-9hAosQ4C', 111, 1, 1, 'active', '2021-02-15 13:38:21'),
(249, 'Merchant Commercials', '/payhot/sales/merchant-commercials/ryapay-pLDmFs9A', '', 8, 1, 1, 'active', '2021-02-15 11:12:46'),
(250, 'Products Modes', '/payhot/sales/product-modes/ryapay-GPKG8yPX', '', 8, 1, 1, 'active', '2021-02-15 11:13:46'),
(251, 'Campaigning', '', 'ryapay-0wFGLU8N', 122, 1, 1, 'active', '2021-02-15 11:00:00'),
(252, 'Transactions', '/payhot/technical/transactions', '', 4, 1, 1, 'active', '2022-10-07 00:00:00'),
(253, 'Merchant Services', '/payhot/technical/merchant_services', '', 4, 1, 1, 'active', '2022-10-13 04:00:00'),
(254, 'Merchant Request', '/payhot/technical/merchant_request_listing', '', 4, 1, 1, 'active', '2022-10-19 00:00:00'),
(255, 'Payout', '/payhot/payout', '', 0, 1, 1, 'active', '2022-11-16 00:00:00'),
(256, 'Dashboard', '/payhot/payout_dashboard', '', 255, 1, 1, 'active', '2022-11-16 00:00:00'),
(260, 'Payout Transactions', '/payhot/payout_transactions', '', 255, 1, 1, 'active', '2022-11-17 00:00:00'),
(261, 'Price Setting', '/payhot/price_setting', '', 255, 1, 1, 'active', '2022-11-17 00:00:00'),
(262, 'Routing Config', '/payhot/routing_config', '', 255, 1, 1, 'active', '2022-11-17 00:00:00'),
(263, 'Contacts', '/payhot/contacts', '', 255, 1, 1, 'active', '2023-08-08 07:20:20'),
(264, 'Transfers', '/payhot/transfers', '', 255, 1, 1, 'active', '2023-08-08 07:20:20'),
(265, 'Account Statements', '/payhot/statements', '', 255, 1, 1, 'active', '2023-08-08 07:20:20'),
(266, 'Payout Links', '/payhot/payout-links', '', 255, 1, 1, 'active', '2023-08-08 07:20:20');

-- --------------------------------------------------------

--
-- Table structure for table `nav_permission`
--

CREATE TABLE `nav_permission` (
  `id` int(11) NOT NULL,
  `account` varchar(255) DEFAULT '',
  `finance` varchar(255) DEFAULT '',
  `settlement` varchar(255) DEFAULT '',
  `technical` varchar(255) DEFAULT '',
  `networking` varchar(255) DEFAULT '',
  `support` varchar(255) DEFAULT '',
  `marketing` varchar(255) DEFAULT '',
  `sales` varchar(255) DEFAULT '',
  `risk_complaince` varchar(255) DEFAULT '',
  `legal` varchar(255) DEFAULT '',
  `hrm` varchar(255) DEFAULT '',
  `merchant` varchar(255) DEFAULT '',
  `payout` varchar(255) NOT NULL,
  `employee_id` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nav_permission`
--

INSERT INTO `nav_permission` (`id`, `account`, `finance`, `settlement`, `technical`, `networking`, `support`, `marketing`, `sales`, `risk_complaince`, `legal`, `hrm`, `merchant`, `payout`, `employee_id`, `created_date`) VALUES
(1, '', '', '3+106+107+108+109+248', '4+111+112+247+252+253+254', '', '6+114+115+116', '7+117+118', '8+122+125+249+250+251', '9+126+127+234+235', '10+126', '97+99+100+101+102+103+104+105+241', '225+226+227+228+229+230+231', '255+256+260+261+262+263+264+265+266', 1, '2020-09-07 18:11:15'),
(2, '', '', '', '', '', '', '7+118', '', '', '', '', '', '', 2, '2020-09-14 12:43:38'),
(3, '', '', '3+106+107+108+109', '4+111+112+252+253+254', '', '6+114+115+116', '', '8+122+125+249+250', '9+126+127+234+235', '', '97+99', '225+226+227+228+229+230+231', '255+256+260+261+262+263+264+265+266', 3, '2020-10-21 13:42:14'),
(4, '1+11+12+13+14+189+195+203', '2+15+16', '3+106+107+108+109', '4+111+112+252+253+254', '5+113', '6+114+115+116', '7+117+118', '8+122+125+249+250', '9+126+127+234+235', '10+128+129+130+131+132+133+134', '97+99+100+101+102+103+104+105+241', '225+226+227+228+229+230+231', '255+256+260+261+262+263+264+265+266', 4, '2020-10-21 13:42:53'),
(5, '1+11+12+13+14+189+195+203', '2+15+16', '3+106+107+108+109', '4+111+112+252+253+254', '5+113', '6+114+115+116', '7+117+118', '8+122+125+249+250', '9+126+127+234+235', '10+128+129+130+131+132+133+134', '97+99+100+101+102+103+104+105+241', '225+226+227+228+229+230+231', '255+256+260+261+262+263+264+265+266', 5, '2020-10-30 16:33:34'),
(6, '', '', '', '', '', '', '', '', '', '', '97+99+100+101+102+103+104+105+241', '', '', 6, '2020-10-30 16:34:16'),
(7, '', '', '', '', '', '', '', '', '9+126+127+234+235', '', '', '', '', 7, '2021-02-15 17:28:39'),
(8, '', '', '', '', '', '', '', '', '9+126+127+234+235', '', '', '', '', 8, '2021-02-18 14:12:01'),
(9, '', '', '', '', '', '', '', '8+122+125+249+250+251', '', '', '', '228', '', 9, '2021-02-22 12:01:01');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_token`
--

CREATE TABLE `oauth_access_token` (
  `token_id` varchar(256) DEFAULT NULL,
  `token` mediumblob,
  `authentication_id` varchar(256) NOT NULL,
  `user_name` varchar(256) DEFAULT NULL,
  `client_id` varchar(256) DEFAULT NULL,
  `authentication` mediumblob,
  `refresh_token` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_approvals`
--

CREATE TABLE `oauth_approvals` (
  `userId` varchar(256) DEFAULT NULL,
  `clientId` varchar(256) DEFAULT NULL,
  `scope` varchar(256) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  `expiresAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `lastModifiedAt` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_client_details`
--

CREATE TABLE `oauth_client_details` (
  `client_id` varchar(255) NOT NULL,
  `client_secret` varchar(255) NOT NULL,
  `web_server_redirect_uri` varchar(2048) DEFAULT NULL,
  `scope` varchar(255) DEFAULT NULL,
  `access_token_validity` int(11) DEFAULT NULL,
  `refresh_token_validity` int(11) DEFAULT NULL,
  `resource_ids` varchar(1024) DEFAULT NULL,
  `authorized_grant_types` varchar(1024) DEFAULT NULL,
  `authorities` varchar(1024) DEFAULT NULL,
  `additional_information` varchar(4096) DEFAULT NULL,
  `autoapprove` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_client_token`
--

CREATE TABLE `oauth_client_token` (
  `token_id` varchar(256) DEFAULT NULL,
  `token` mediumblob,
  `authentication_id` varchar(256) NOT NULL,
  `user_name` varchar(256) DEFAULT NULL,
  `client_id` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_code`
--

CREATE TABLE `oauth_code` (
  `code` varchar(256) DEFAULT NULL,
  `authentication` mediumblob
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_token`
--

CREATE TABLE `oauth_refresh_token` (
  `token_id` varchar(256) DEFAULT NULL,
  `token` mediumblob,
  `authentication` mediumblob
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_gateways_list`
--

CREATE TABLE `payment_gateways_list` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `encryption_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `supportedPayment` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_gateways_list`
--

INSERT INTO `payment_gateways_list` (`id`, `name`, `client_id`, `secret_key`, `encryption_key`, `supportedPayment`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Kotak', 'l776a88b7dd210479aa65bfcac28e1dcf4', '787ee4c7ce6a4ab5bb393911a842ba12', '787ee4c7ce6a4ab5bb393911a842ba12', 'NEFT-NEFT, RTGS-RTGS, IMPS-IMPS, IFT-FT', 1, '2023-08-10 06:57:11', '2023-09-14 09:46:00'),
(2, 'Axis', '56b9c082856448adc730aad5903f87ba', '1cbd8152f791563b0b9c66c680086f4f', '466AC871F60D3F5680AB8AE7DA30B41B', 'RT-RTGS, NE-NEFT, PA-IMPS, FT - FT', 0, '2023-08-10 10:47:07', '2023-09-08 09:54:35');

-- --------------------------------------------------------

--
-- Table structure for table `payment_settlement_response`
--

CREATE TABLE `payment_settlement_response` (
  `id` int(11) NOT NULL,
  `payflash_transaction_gid` varchar(50) NOT NULL,
  `payment_id` varchar(150) NOT NULL,
  `settlement_id` varchar(150) NOT NULL,
  `entity` varchar(255) DEFAULT NULL,
  `order_id` varchar(150) NOT NULL DEFAULT '',
  `order_amount` float(10,3) NOT NULL,
  `order_currency` varchar(150) NOT NULL DEFAULT '',
  `transfer_id` varchar(150) DEFAULT NULL,
  `service_charge` float NOT NULL,
  `service_tax` float NOT NULL,
  `settlement_amount` float NOT NULL,
  `settlement_currency` varchar(150) NOT NULL DEFAULT '',
  `status_description` varchar(255) NOT NULL,
  `payment_time` datetime NOT NULL,
  `transfer_time` datetime NOT NULL,
  `transfer_utr` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `payment_settlement_response`
--

INSERT INTO `payment_settlement_response` (`id`, `payflash_transaction_gid`, `payment_id`, `settlement_id`, `entity`, `order_id`, `order_amount`, `order_currency`, `transfer_id`, `service_charge`, `service_tax`, `settlement_amount`, `settlement_currency`, `status_description`, `payment_time`, `transfer_time`, `transfer_utr`, `created_at`, `updated_at`) VALUES
(1, 'YBBUzp7FvRnL0QkI21H5cJjs', '1315717536', '815386604', 'settlement', 'YBBUzp7FvRnL0QkI21H5cJjs', 2.000, 'INR', '6593230', 0.04, 0.01, 1.95, 'INR', '', '2022-10-14 12:38:22', '2022-10-15 11:01:21', 'PGZ6593230', '2022-10-20 20:44:07', '2022-10-20 20:44:07');

-- --------------------------------------------------------

--
-- Table structure for table `payout_account`
--

CREATE TABLE `payout_account` (
  `id` int(11) NOT NULL,
  `merchant_id` int(11) NOT NULL,
  `bank_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `account_holder_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `account_number` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `ifsc_code` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `account_id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `payout_account`
--

INSERT INTO `payout_account` (`id`, `merchant_id`, `bank_name`, `account_holder_name`, `account_number`, `ifsc_code`, `account_id`, `created_at`) VALUES
(1, 1, 'Union Bank', 'Faisal Ali', 'UBI48465113', 'UB1254', 'payflash_6132', '2022-07-27 06:47:54');

-- --------------------------------------------------------

--
-- Table structure for table `payout_add_fund`
--

CREATE TABLE `payout_add_fund` (
  `id` int(11) NOT NULL,
  `merchant_id` int(11) NOT NULL,
  `amount` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mode` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(100) COLLATE utf8_unicode_ci DEFAULT '1',
  `prev_balance` float(20,0) NOT NULL DEFAULT '0',
  `current_balance` float(20,0) NOT NULL DEFAULT '0',
  `credit_date` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `payout_add_fund`
--

INSERT INTO `payout_add_fund` (`id`, `merchant_id`, `amount`, `mode`, `status`, `prev_balance`, `current_balance`, `credit_date`) VALUES
(4, 1, '12', 'banktransfer', '1', 0, 12, '2022-10-10 11:25:22'),
(5, 1, '100', 'banktransfer', '1', 0, 100, '2022-10-10 11:25:32'),
(6, 1, '100', 'banktransfer', '1', 0, 100, '2022-10-18 04:39:41'),
(7, 1, '50', 'banktransfer', '1', 0, 50, '2022-10-18 04:41:11'),
(8, 1, '100', 'imps', '1', 0, 100, '2022-10-20 06:14:58');

-- --------------------------------------------------------

--
-- Table structure for table `payout_benificiary`
--

CREATE TABLE `payout_benificiary` (
  `id` int(11) NOT NULL,
  `beneficiary_id` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL,
  `upi_id` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `account_number` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ifsc_code` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `group_id` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact_id` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `merchant_id` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_deleted` int(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `payout_benificiary`
--

INSERT INTO `payout_benificiary` (`id`, `beneficiary_id`, `upi_id`, `account_number`, `ifsc_code`, `group_id`, `contact_id`, `merchant_id`, `is_deleted`, `created_at`) VALUES
(19, 'BEN1002', '9893611140@gpay', 'SB613215254254', 'HDFC0000001', NULL, '23', '1', 0, '2022-07-23 09:30:35'),
(20, 'BEN1003', '9893611158@gpay', 'SB613212445245', 'HDFC0000001', NULL, '27', '1', 0, '2022-07-23 09:30:35'),
(28, 'BEN1007', '9893611148@gpay', 'SBI897651613', 'UBIN0894654', '6', '21', '1', 0, '2022-08-10 06:31:35'),
(29, 'BEN1008', '9898651311@paytm.com', 'SBI89745613132', 'SBII0123546', '6', '35', '1', 0, '2022-08-12 10:14:30'),
(31, 'BEN1010', '9893611142@paytm', 'PNB98465132132', 'SCGI0588977', '7', '36', '1', 0, '2022-08-16 05:27:56'),
(34, 'BEN1011', '9893611148@paytm', 'SBI495451321321', 'SBIN613213', NULL, '37', '1', 0, '2022-08-29 13:08:34'),
(35, 'BEN1012', '9893611148@paytm', 'SBI495451321321', 'SBIN0004582', NULL, '34', '1', 1, '2022-08-30 05:39:41'),
(36, 'BEN1013', '9893611150@paytm', 'SBI4945131321', 'SBIN0613213', NULL, '39', '1', 1, '2022-08-30 06:08:57'),
(37, 'BEN1014', '9893611250@paytm', 'SBI49451313789', 'SBIN0004582', NULL, '40', '1', 0, '2022-08-30 08:54:58'),
(38, 'BEN1015', '9896515789@gpay', 'SBI4945131789', 'SBIN0004582', NULL, '41', '1', 0, '2022-08-30 09:59:24'),
(39, 'BEN1016', '9893611148@paytm', 'SBI495451321321', 'SBIN0645812', NULL, '42', '1', 0, '2022-09-02 09:39:13'),
(46, 'BEN1017', '9893612148@paytm', 'SBI491451321321', 'SBIN0613213', '8', '49', '1', 0, '2022-09-05 09:23:12'),
(47, 'BEN1018', 'ciamala@okicici', '1234567890', 'SBIN0123', NULL, '50', '1', 0, '2023-09-05 12:10:03');

-- --------------------------------------------------------

--
-- Table structure for table `payout_benificiary_group`
--

CREATE TABLE `payout_benificiary_group` (
  `id` int(11) NOT NULL,
  `group_name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `merchant_id` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `payout_benificiary_group`
--

INSERT INTO `payout_benificiary_group` (`id`, `group_name`, `merchant_id`, `created_at`) VALUES
(6, 'Faisal\'s Group', '1', '2022-08-24 12:07:54'),
(7, 'New Group', '1', '2022-08-25 10:19:07'),
(8, NULL, '1', '2022-10-17 13:51:46'),
(9, NULL, '1', '2023-08-08 07:52:59');

-- --------------------------------------------------------

--
-- Table structure for table `payout_contacts`
--

CREATE TABLE `payout_contacts` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `mobile` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `contact` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` varchar(4) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pincode` varchar(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `merchant_id` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_deleted` int(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `payout_contacts`
--

INSERT INTO `payout_contacts` (`id`, `name`, `mobile`, `contact`, `address`, `state`, `pincode`, `merchant_id`, `is_deleted`, `created_at`) VALUES
(21, 'Anand', '9970898880', 'anandkaushal@gmail.com', 'Nagpur', '21', '44004', '1', 0, '2022-07-23 05:42:42'),
(23, 'Fazil', '9806818722', 'fazil@gmail.com', 'hno 67 power house roa', '21', '462010', '1', 0, '2022-07-23 09:23:43'),
(27, 'Faisal', '8846131317', 'faisal@gmail.com', 'hno 67 power house roa', '20', '462010', '1', 0, '2022-07-23 09:26:13'),
(28, 'Dhaneshwar', '9745613132', 'fazil@gmail.com', 'hno 67 power house roa', '21', '462010', '1', 0, '2022-07-23 09:26:13'),
(29, 'Dharmendra', '9893611148', 'fazil@gmail.com', 'hno 67 power house roa', '21', '462010', '1', 0, '2022-07-23 09:26:13'),
(30, 'Anand', '9970898880', 'anandkaushal.in@gmail.com', 'Nagpur', '21', '440044', '1', 0, '2022-07-25 09:59:38'),
(32, 'Zippi', '9893611154', 'king@gmail.com', 'hno 78 raj kila', '4', '462010', '1', 0, '2022-07-26 12:44:47'),
(33, 'Anand', '78644916131', 'anand@gmail.com', 'House no 78', '21', '5421564', '1', 0, '2022-08-05 05:45:37'),
(34, 'Shyam', '9832132213', 'sh@gmail.com', 'house no 78', '12', '462015', '1', 0, '2022-08-05 10:36:06'),
(35, 'Siddharth Shukla', '9897896451', 'sid@gmail.com', 'Hno 67 Gurugram', '13', '468574', '1', 0, '2022-08-12 10:14:30'),
(36, 'Adil', '9893611142', 'kgn@gmail.com', 'Hno 58', '5', '465841', '1', 0, '2022-08-16 05:27:56'),
(40, 'Faisal Api', '9806818722', 'knig975232@gmail.com', 'Hno 67', '5', '462010', '1', 0, '2022-08-29 13:08:34'),
(41, 'Shubhit', '9893658878', 'shubg@gmail.com', 'hno 78', '5', '462010', '1', 0, '2022-08-30 09:59:24'),
(42, 'Faisal Api', '9806818722', 'knig975232@gmail.com', 'Hno 67', 'Madh', '462010', '1', 0, '2022-09-02 09:39:13'),
(43, 'Faisal Api', '9806818722', 'knig975232@gmail.com', 'Hno 67', 'Madh', '462010', '1', 0, '2022-09-02 09:51:49'),
(44, 'Faisal Api', '9806818722', 'knig975232@gmail.com', 'Hno 67', 'Madh', '462010', '1', 0, '2022-09-02 12:41:25'),
(45, 'Faisal Api', '9806818722', 'knig975232@gmail.com', 'Hno 67', 'Madh', '462010', '1', 0, '2022-09-02 12:41:32'),
(46, 'Faisal Api', '9806818722', 'knig975232@gmail.com', 'Hno 67', 'Madh', '462010', '1', 0, '2022-09-02 12:41:46'),
(47, 'Faisal Api', '9806818722', 'knig975232@gmail.com', 'Hno 67', 'Madh', '462010', '1', 0, '2022-09-02 12:41:50'),
(48, 'Faisal Api', '9806818722', 'knig975232@gmail.com', 'Hno 67', 'Madh', '462010', '1', 0, '2022-09-02 12:41:54'),
(49, 'Faisal Api', '9806818722', 'knig975232@gmail.com', 'Hno 67', 'Madh', '462010', '1', 0, '2022-09-05 09:23:12'),
(50, 'Ciamala', '09789560967', 'ciamala.askan@gmail.com', 'Pondicherry', '27', '605004', '1', 0, '2023-09-05 12:10:03');

-- --------------------------------------------------------

--
-- Table structure for table `payout_link`
--

CREATE TABLE `payout_link` (
  `id` int(11) NOT NULL,
  `payout_link_gid` varchar(255) NOT NULL,
  `payout_link_for` text,
  `payout_link_amount` double(16,2) NOT NULL DEFAULT '0.00',
  `payout_link_transfer_method` varchar(255) DEFAULT NULL,
  `payout_link_customer_email` varchar(50) DEFAULT NULL,
  `payout_link_email` enum('Y','N') DEFAULT 'N',
  `payout_link_customer_mobile` varchar(10) DEFAULT NULL,
  `payout_link_mobile` enum('Y','N') DEFAULT 'N',
  `payout_link_receipt` varchar(10) DEFAULT NULL,
  `payout_link_payid` varchar(50) DEFAULT NULL,
  `payout_link_expiry` datetime DEFAULT NULL,
  `payout_link_link` varchar(255) DEFAULT NULL,
  `payout_link_notes` text,
  `payout_link_partial` enum('Y','N') DEFAULT NULL,
  `payout_link_partial_amount` double(16,2) NOT NULL DEFAULT '0.00',
  `payout_link_status` varchar(255) DEFAULT 'issued',
  `payout_transaction_id` int(11) DEFAULT NULL,
  `payout_link_auto_reminder` enum('Y','N') DEFAULT NULL,
  `payout_link_type` enum('smart','quick') DEFAULT 'smart',
  `created_date` datetime DEFAULT NULL,
  `created_merchant` int(11) NOT NULL DEFAULT '0',
  `created_employee` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payout_link`
--

INSERT INTO `payout_link` (`id`, `payout_link_gid`, `payout_link_for`, `payout_link_amount`, `payout_link_transfer_method`, `payout_link_customer_email`, `payout_link_email`, `payout_link_customer_mobile`, `payout_link_mobile`, `payout_link_receipt`, `payout_link_payid`, `payout_link_expiry`, `payout_link_link`, `payout_link_notes`, `payout_link_partial`, `payout_link_partial_amount`, `payout_link_status`, `payout_transaction_id`, `payout_link_auto_reminder`, `payout_link_type`, `created_date`, `created_merchant`, `created_employee`) VALUES
(1, 'plnk_1CgOraz5gePqe3gp', 'testing', 100.00, 'quick', NULL, 'N', NULL, 'N', NULL, 'x0zRkp', '2023-09-07 12:48:28', 'http://127.0.0.1:8000/payout/x0zRkp', NULL, NULL, 0.00, 'issued', NULL, NULL, 'quick', '2023-09-06 12:48:28', 1, 0),
(2, 'plnk_UvjnhpojNHdHjGe0', 'test', 100.00, 'RT', 'N', 'N', 'N', 'N', NULL, 'LQRbJS', '2023-09-07 13:15:06', 'http://127.0.0.1:8000/payout/LQRbJS', NULL, NULL, 0.00, 'issued', NULL, NULL, 'quick', '2023-09-06 13:15:06', 1, 0),
(3, 'plnk_9DMpr3RghXIcz1Za', 'test', 100.00, 'RT', 'N', 'N', 'N', 'N', NULL, 'UQmASp', '2023-09-07 13:33:57', 'http://127.0.0.1:8000/payout/UQmASp', NULL, NULL, 0.00, 'issued', NULL, NULL, 'quick', '2023-09-06 13:33:57', 1, 0),
(4, 'plnk_rGQQG6pCo68xWjjP', 'test', 100.00, 'RT', NULL, 'N', NULL, 'N', NULL, 'eLkjcZ', '2023-09-07 16:30:24', 'http://127.0.0.1:8000/payout/eLkjcZ', NULL, NULL, 0.00, 'issued', NULL, NULL, 'quick', '2023-09-06 16:30:24', 1, 0),
(5, 'plnk_nxbjQCzvfIPGE8aS', 'tests', 100.00, 'RT', NULL, 'N', NULL, 'N', NULL, 'G1Z1G7', '2023-09-07 16:33:47', 'http://127.0.0.1:8000/payout/G1Z1G7', NULL, NULL, 0.00, 'issued', NULL, NULL, 'quick', '2023-09-06 16:33:47', 1, 0),
(6, 'plnk_XPp393hWG1S9IRd1', 'test', 100.00, 'RT', NULL, 'N', 'N', 'N', NULL, 'eGx0ky', '2023-09-07 16:35:26', 'http://127.0.0.1:8000/payout/eGx0ky', NULL, NULL, 0.00, 'issued', NULL, NULL, 'quick', '2023-09-06 16:35:26', 1, 0),
(7, 'plnk_Qc5nv5uolIXZsNst', 'test', 100.00, 'RT', NULL, 'N', 'N', 'N', NULL, 'qkQJWI', '2023-09-07 16:35:27', 'http://127.0.0.1:8000/payout/qkQJWI', NULL, NULL, 0.00, 'issued', NULL, NULL, 'quick', '2023-09-06 16:35:27', 1, 0),
(8, 'plnk_OVbUY6ikyEFnPhsg', 'test', 100.00, 'RT', NULL, 'N', 'N', 'N', NULL, 'wSXw2c', '2023-09-07 16:35:27', 'http://127.0.0.1:8000/payout/wSXw2c', NULL, NULL, 0.00, 'issued', NULL, NULL, 'quick', '2023-09-06 16:35:27', 1, 0),
(9, 'plnk_bEZk47mV6dxvVH3q', 'test', 100.00, 'RT', NULL, 'N', 'N', 'N', NULL, 'wol4rE', '2023-09-07 16:35:28', 'http://127.0.0.1:8000/payout/wol4rE', NULL, NULL, 0.00, 'issued', NULL, NULL, 'quick', '2023-09-06 16:35:28', 1, 0),
(10, 'plnk_U3USVpKZ2BYs94UW', 'test', 100.00, 'RT', NULL, 'N', 'N', 'N', NULL, 'RANNkB', '2023-09-07 16:35:43', 'http://127.0.0.1:8000/payout/RANNkB', NULL, NULL, 0.00, 'issued', NULL, NULL, 'quick', '2023-09-06 16:35:43', 1, 0),
(11, 'plnk_MxL4zT6ZEMXeFLWB', 'test', 100.00, 'RT', 'N', 'N', 'N', 'N', NULL, 'cZRSfV', '2023-09-07 16:47:37', 'http://127.0.0.1:8000/payout/cZRSfV', NULL, NULL, 0.00, 'issued', NULL, NULL, 'quick', '2023-09-06 16:47:37', 1, 0),
(12, 'plnk_znpIyjZv5Nk2cgg2', 'test', 100.00, 'RT', NULL, 'N', NULL, 'N', NULL, 'w0KyWC', '2023-09-07 18:11:18', 'http://127.0.0.1:8000/payout/w0KyWC', NULL, NULL, 0.00, 'issued', NULL, NULL, 'quick', '2023-09-06 18:11:18', 1, 0),
(13, 'plnk_vs7MU4rJhBI2TZc7', 'test', 100.00, 'RT', 'cias.askan@gmail.com', 'N', '6767676776', 'N', NULL, 'JluFUL', '2023-09-07 18:16:55', 'http://127.0.0.1:8000/payout/JluFUL', NULL, NULL, 0.00, 'issued', NULL, NULL, 'quick', '2023-09-06 18:16:55', 1, 0),
(14, 'plnk_Nr0fXeA6aKfxmUHc', 'test', 100.00, 'RT', 'cias.askan@gmail.com', 'Y', '6789678909', 'Y', NULL, 'NIpOPn', '2023-09-07 18:18:17', 'http://127.0.0.1:8000/payout/NIpOPn', NULL, NULL, 0.00, 'issued', NULL, NULL, 'quick', '2023-09-06 18:18:17', 1, 0),
(15, 'plnk_zpapsHGSuOqDzJ19', 'test', 100.00, 'RT', NULL, 'N', NULL, 'N', NULL, '1sHDdl', '2023-09-07 18:18:37', 'http://127.0.0.1:8000/payout/1sHDdl', NULL, NULL, 0.00, 'issued', NULL, NULL, 'quick', '2023-09-06 18:18:37', 1, 0),
(16, 'plnk_qldf1iC2jLKsqZRF', 'test', 100.00, 'RT', 'cias.askan@gmail.com', 'Y', NULL, 'N', NULL, 'uRugtO', '2023-09-07 18:18:57', 'http://127.0.0.1:8000/payout/uRugtO', NULL, NULL, 0.00, 'issued', NULL, NULL, 'quick', '2023-09-06 18:18:57', 1, 0),
(17, 'plnk_CyvApUw7VbRA3EFm', 'test', 100.00, 'RT', 'ciamala@gmail.com', 'Y', '9909909090', 'Y', NULL, '6vL9IF', '2023-09-08 12:46:55', 'http://127.0.0.1:8000/payout/6vL9IF', NULL, NULL, 0.00, 'REJECTED', 68, NULL, 'quick', '2023-09-07 12:46:55', 1, 0),
(18, 'plnk_KIXdxD2XZ2HfffY6', 'testing Axis payout link', 1000.00, 'NE', 'cias.askan@gmail.com', 'Y', NULL, 'N', NULL, 'isp8XQ', '2023-09-09 15:22:40', 'http://127.0.0.1:8000/payout/isp8XQ', NULL, NULL, 0.00, 'PENDING', 69, NULL, 'quick', '2023-09-08 15:22:40', 1, 0),
(19, 'plnk_Gz3ktcEohpj2SSaF', 'Test Kotak Payout Link', 1000.00, 'NEFT', 'cias.askan@gmail.com', 'Y', NULL, 'N', NULL, 'LXtpAr', '2023-09-09 15:25:15', 'http://127.0.0.1:8000/payout/LXtpAr', NULL, NULL, 0.00, 'PENDING', 70, NULL, 'quick', '2023-09-08 15:25:15', 1, 0),
(20, 'plnk_xfztTXbhbn1TRZXB', 'testing', 200.00, 'NEFT', 'cias.askan@gmail.com', 'N', NULL, 'N', NULL, 'vVdpfQ', '2023-09-09 15:48:49', 'http://127.0.0.1:8000/payout/vVdpfQ', NULL, NULL, 0.00, 'issued', NULL, NULL, 'quick', '2023-09-08 15:48:49', 1, 0),
(21, 'plnk_zySFmDL2VQ1SOLxH', 'testing', 200.00, 'NEFT', NULL, 'N', NULL, 'N', NULL, 'JIYb3k', '2023-09-09 15:50:58', 'http://127.0.0.1:8000/payout/JIYb3k', NULL, NULL, 0.00, 'issued', NULL, NULL, 'quick', '2023-09-08 15:50:58', 1, 0),
(22, 'plnk_jjSqH5xogWVWpXSo', 'test', 500.00, 'NEFT', NULL, 'N', NULL, 'N', NULL, 'lyxK71', '2023-09-09 15:51:13', 'http://127.0.0.1:8000/payout/lyxK71', NULL, NULL, 0.00, 'issued', NULL, NULL, 'quick', '2023-09-08 15:51:13', 1, 0),
(23, 'plnk_UwSfgqokbQaUOq2x', 'testng', 300.00, 'NEFT', 'cias.askan@gmail.com', 'N', NULL, 'N', NULL, 'KT1Z9d', '2023-09-09 15:53:13', 'http://127.0.0.1:8000/payout/KT1Z9d', NULL, NULL, 0.00, 'PENDING', 71, NULL, 'quick', '2023-09-08 15:53:13', 1, 0),
(24, 'plnk_9a3payiP0dStVSjR', 'test', 200.00, 'NEFT', 'ciamala2318@gmail.com', 'N', NULL, 'N', NULL, 'KqoH84', '2023-09-09 16:18:56', 'http://127.0.0.1:8000/payout/KqoH84', NULL, NULL, 0.00, 'PENDING', 72, NULL, 'quick', '2023-09-08 16:18:56', 1, 0),
(25, 'plnk_9XRV2L0kk4QC7CYV', 'testing', 100.00, 'NEFT', 'ciamala18@gmail.com', 'Y', NULL, 'N', NULL, '1Df1WR', '2023-10-07 11:24:33', 'https://payout.payhotshopping.com/payout/1Df1WR', NULL, NULL, 0.00, 'issued', NULL, NULL, 'quick', '2023-10-06 11:24:33', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `payout_methods`
--

CREATE TABLE `payout_methods` (
  `id` int(11) NOT NULL,
  `payout_mode` enum('IMPS','NEFT','RTGS','UPI','PAYTM','AMAZON') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'IMPS',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payout_response_sent`
--

CREATE TABLE `payout_response_sent` (
  `id` int(11) NOT NULL,
  `merchant_id` int(11) NOT NULL,
  `sent_on_link` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sent_log` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payout_transactions`
--

CREATE TABLE `payout_transactions` (
  `id` int(11) NOT NULL,
  `merchant_id` int(20) NOT NULL,
  `reference_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `utr` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `transfer_id` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ben_id` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ben_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ben_phone` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ben_email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ben_upi` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ben_card_no` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ben_ifsc` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ben_bank_acc` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `amount` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `transfer_mode` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `payout_link_id` int(11) DEFAULT NULL,
  `vendor` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `payment_date` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bankName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `statusCode` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remarks` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `purpose` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `transfer_desc` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `vendor_charges` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `goods_service_tax` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `transfer_type` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `payout_transactions`
--

INSERT INTO `payout_transactions` (`id`, `merchant_id`, `reference_id`, `utr`, `transfer_id`, `ben_id`, `ben_name`, `ben_phone`, `ben_email`, `ben_upi`, `ben_card_no`, `ben_ifsc`, `ben_bank_acc`, `amount`, `transfer_mode`, `payout_link_id`, `vendor`, `status`, `contact_name`, `payment_date`, `bankName`, `statusCode`, `remarks`, `purpose`, `transfer_desc`, `vendor_charges`, `goods_service_tax`, `created_at`, `transfer_type`) VALUES
(17, 1, '23639351', '', 'PFL7897311', 'BEN1015', 'Shubhit', '9893658878', 'shubg@gmail.com', NULL, NULL, 'SBIN0004582', 'SBI4945131789', '900', 'banktransfer', NULL, 'Atom', 'PENDING', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-30 12:08:32', NULL),
(18, 1, '23639352', '', 'PFL1651321', 'BEN1014', 'Faisal Api', '9806818722', 'knig975232@gmail.com', NULL, NULL, 'SBIN0004582', 'SBI49451313789', '500', 'IMPS', NULL, 'SafePay', 'PENDING', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-09 12:09:58', NULL),
(19, 1, '23639355', '', 'PFL78947311', 'BEN1015', 'Shubhit', '9893658878', 'shubg@gmail.com', NULL, NULL, 'SBIN0004582', 'SBI4945131789', '5000', 'NEFT', NULL, 'Paytm', 'PENDING', NULL, NULL, NULL, NULL, 'No remark', NULL, NULL, NULL, NULL, '2022-09-01 12:11:32', NULL),
(24, 2, '23648447', '', 'PFLSH7915465', 'BEN1015', 'Shubhit', '9893658878', 'shubg@gmail.com', NULL, NULL, 'SBIN0004582', 'SBI4945131789', '900', 'banktransfer', NULL, 'Paytm', 'FAILED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-14 12:02:07', NULL),
(25, 2, '23648448', '', 'PFLSH75915465', 'BEN1015', 'Shubhit', '9893658878', 'shubg@gmail.com', NULL, NULL, 'SBIN0004582', 'SBI4945131789', '9000', 'banktransfer', NULL, 'Grezpay', 'FAILED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-07 12:02:20', NULL),
(26, 6, '23648451', '', 'PFLSH755465', 'BEN1012', 'Shyam', '9832132213', 'sh@gmail.com', NULL, NULL, 'SBIN0004582', 'SBI495451321321', '9000', 'AMAZON', NULL, 'Worldline', 'FAILED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-19 12:06:37', NULL),
(27, 6, '23648453', '', 'PFLSH75585', 'BEN1012', 'Shyam', '9832132213', 'sh@gmail.com', NULL, NULL, 'SBIN0004582', 'SBI495451321321', '5000', 'PAYTM', NULL, 'Grezpay', 'FAILED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-14 12:06:51', NULL),
(28, 6, '23648459', '', 'PFL75585', 'BEN1012', 'Shyam', '9832132213', 'sh@gmail.com', NULL, NULL, 'SBIN0004582', 'SBI495451321321', '5000', 'banktransfer', NULL, 'PayU', 'FAILED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-15 12:11:14', NULL),
(29, 1, '23685362', '', '1000', 'BEN1002', 'Fazil', '9806818722', 'fazil@gmail.com', NULL, NULL, 'HDFC0000001', 'SB613215254254', '100', 'imps', NULL, '', 'FAILED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-10 05:37:51', NULL),
(30, 1, '23685396', '', '1234', 'BEN1002', 'Fazil', '9806818722', 'fazil@gmail.com', NULL, NULL, 'HDFC0000001', 'SB613215254254', '200', 'banktransfer', NULL, '', 'FAILED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-10 06:24:16', NULL),
(31, 1, '23687076', '', 'PFLSH791465789', 'BEN1015', 'Shubhit', '9893658878', 'shubg@gmail.com', NULL, NULL, 'SBIN0004582', 'SBI4945131789', '900', 'banktransfer', NULL, '', 'FAILED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-12 06:35:43', NULL),
(32, 1, '23687500', '', 'PFLTEST791465789', 'BEN1015', 'Shubhit', '9893658878', 'shubg@gmail.com', NULL, NULL, 'SBIN0004582', 'SBI4945131789', '900', 'banktransfer', NULL, '', 'FAILED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-12 12:01:28', NULL),
(33, 1, '2147483647', '', '1', 'BEN1002', 'Fazil', '9806818722', 'fazil@gmail.com', NULL, NULL, 'HDFC0000001', 'SB613215254254', '1', 'neft', NULL, '', 'FAILED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-09-01 08:24:52', NULL),
(34, 1, '2147483647', '', 'PFLSH791465789', 'BEN1002', 'Fazil', '9806818722', 'fazil@gmail.com', NULL, NULL, 'HDFC0000001', 'SB613215254254', '12', 'imps', NULL, '', 'FAILED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-09-01 08:27:09', NULL),
(35, 1, '2147483647', '', '1', 'BEN1003', 'Faisal', '8846131317', 'faisal@gmail.com', NULL, NULL, 'HDFC0000001', 'SB613212445245', '1', 'RTGS', NULL, '', 'FAILED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-09-04 08:21:05', NULL),
(36, 1, '2147483647', '', '1', 'BEN1002', 'Fazil', '9806818722', 'fazil@gmail.com', NULL, NULL, 'HDFC0000001', 'SB613215254254', '1', 'NEFT', NULL, '', 'FAILED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-09-04 10:09:01', NULL),
(37, 1, '2147483647', '', '1', 'BEN1007', 'Anand', '9970898880', 'anandkaushal@gmail.com', NULL, NULL, 'UBIN0894654', 'SBI897651613', '1', 'NEFT', NULL, '', 'FAILED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-09-04 11:07:00', NULL),
(38, 1, '2147483647', '20230904165859724082', '1', 'BEN1003', 'Faisal', '8846131317', 'faisal@gmail.com', NULL, NULL, 'HDFC0000001', 'SB613212445245', '1', 'NEFT', NULL, '', '20230904165859724082 received and in progress. Ple', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-09-04 11:29:01', NULL),
(39, 1, '2147483647', '20230904171441741605', '123', 'BEN1003', 'Faisal', '8846131317', 'faisal@gmail.com', NULL, NULL, 'HDFC0000001', 'SB613212445245', '12', 'NEFT', NULL, '', '', NULL, NULL, 'kotak', '007', NULL, NULL, NULL, NULL, NULL, '2023-09-04 11:44:43', NULL),
(40, 1, '2147483647', '20230904171708110269', '10', 'BEN1003', 'Faisal', '8846131317', 'faisal@gmail.com', NULL, NULL, 'HDFC0000001', 'SB613212445245', '100', 'RTGS', NULL, '', '', NULL, NULL, 'kotak', '007', NULL, NULL, NULL, NULL, NULL, '2023-09-04 11:47:10', NULL),
(41, 1, '2147483647', '20230904171855493301', '1', 'BEN1008', 'Siddharth Shukla', '9897896451', 'sid@gmail.com', NULL, NULL, 'SBII0123546', 'SBI89745613132', '1', 'NEFT', NULL, '', '', NULL, NULL, 'kotak', '007', NULL, NULL, NULL, NULL, NULL, '2023-09-04 11:48:57', NULL),
(42, 1, '2147483647', '', '1', 'BEN1007', 'Anand', '9970898880', 'anandkaushal@gmail.com', NULL, NULL, 'UBIN0894654', 'SBI897651613', '1', 'RT', NULL, '', 'REJECTED', NULL, NULL, 'Axis', 'F403', NULL, NULL, NULL, NULL, NULL, '2023-09-04 14:25:28', NULL),
(43, 1, '2147483647', '', '1', 'BEN1002', 'Fazil', '9806818722', 'fazil@gmail.com', NULL, NULL, 'HDFC0000001', 'SB613215254254', '1', 'NEFT', NULL, '', '', NULL, NULL, 'kotak', '', NULL, NULL, NULL, NULL, NULL, '2023-09-05 07:02:48', NULL),
(44, 1, '2147483647', '', '1', 'BEN1007', 'Anand', '9970898880', 'anandkaushal@gmail.com', NULL, NULL, 'UBIN0894654', 'SBI897651613', '1', 'NEFT', NULL, '', '', NULL, NULL, 'kotak', '', NULL, NULL, NULL, NULL, NULL, '2023-09-05 07:19:08', NULL),
(45, 1, '2147483647', '20230905125619222182', '1', 'BEN1002', 'Fazil', '9806818722', 'fazil@gmail.com', NULL, NULL, 'HDFC0000001', 'SB613215254254', '1', 'NEFT', NULL, '', 'PENDING', NULL, NULL, 'Kotak', '007', NULL, NULL, NULL, NULL, NULL, '2023-09-05 07:26:21', NULL),
(46, 1, '2147483647', '', '1', 'BEN1002', 'Fazil', '9806818722', 'fazil@gmail.com', NULL, NULL, 'HDFC0000001', 'SB613215254254', '1', 'NE', NULL, '', 'PENDING', NULL, NULL, 'Axis-1', 'PEN', NULL, NULL, NULL, NULL, NULL, '2023-09-05 07:28:07', NULL),
(47, 1, '2147483647', '', '21', 'BEN1002', 'Fazil', '9806818722', 'fazil@gmail.com', NULL, NULL, 'HDFC0000001', 'SB613215254254', '1', 'NE', NULL, '', 'PENDING', NULL, NULL, 'Axis-1', 'PEN', NULL, NULL, NULL, NULL, NULL, '2023-09-05 08:02:27', NULL),
(48, 1, '20230905133403314166', 'AXISCN0185408088', '21', 'BEN1002', 'Fazil', '9806818722', 'fazil@gmail.com', NULL, NULL, 'HDFC0000001', 'SB613215254254', '1', 'NE', NULL, '', 'PENDING', NULL, NULL, 'Axis', '000', NULL, NULL, 'To be Processed', NULL, NULL, '2023-09-05 08:04:05', NULL),
(49, 1, '20230905143744095171', '', '1', 'BEN1002', 'Fazil', '9806818722', 'fazil@gmail.com', NULL, NULL, 'HDFC0000001', 'SB613215254254', '1', 'NE', NULL, '', '', 'Fazil', '2023-09-05', 'Axis', '', NULL, NULL, NULL, NULL, NULL, '2023-09-05 09:08:59', NULL),
(50, 1, '20230905144145543624', '20230905144145543624', '1', 'BEN1002', 'Fazil', '9806818722', 'fazil@gmail.com', NULL, NULL, 'HDFC0000001', 'SB613215254254', '1', 'NEFT', NULL, '', 'SUCCESS', 'Fazil', '2023-09-05', 'Kotak', 'U', NULL, NULL, 'Processed - 20230905144145543624', NULL, NULL, '2023-09-05 09:11:48', NULL),
(51, 1, '20230905152532480648', '20230905152532480648', 'test123', 'BEN1002', 'Fazil', '9806818722', 'fazil@gmail.com', NULL, NULL, 'HDFC0000001', 'SB613215254254', '100', 'NEFT', NULL, '', 'REJECTED', 'Fazil', '2023-09-05', 'Kotak', 'R', NULL, NULL, '20230905152532480648 Not found. Kindly reinitiate with same Message ID. - ', NULL, NULL, '2023-09-05 09:55:35', NULL),
(52, 1, '20230905152721179882', '20230905152721179882', 'testing', 'BEN1002', 'Fazil', '9806818722', 'fazil@gmail.com', NULL, NULL, 'HDFC0000001', 'SB613215254254', '1100', 'NEFT', NULL, '', 'REJECTED', 'Fazil', '2023-09-05', 'Kotak', 'R', NULL, NULL, '20230905152721179882 Not found. Kindly reinitiate with same Message ID. - ', NULL, NULL, '2023-09-05 09:57:24', NULL),
(53, 1, '20230905152854808287', '', 'testing', 'BEN1002', 'Fazil', '9806818722', 'fazil@gmail.com', NULL, NULL, 'HDFC0000001', 'SB613215254254', '100', 'RT', NULL, '', 'REJECTED', 'Fazil', '2023-09-05', 'Axis', 'F304', NULL, NULL, NULL, NULL, NULL, '2023-09-05 09:58:56', NULL),
(54, 1, '20230905152910912580', '', 'test', 'BEN1002', 'Fazil', '9806818722', 'fazil@gmail.com', NULL, NULL, 'HDFC0000001', 'SB613215254254', '1000', 'RT', NULL, '', 'REJECTED', 'Fazil', '2023-09-05', 'Axis', 'F304', NULL, NULL, NULL, NULL, NULL, '2023-09-05 09:59:12', NULL),
(55, 1, '20230905153206750027', 'AXISCN0185408120', 'testing', 'BEN1002', 'Fazil', '9806818722', 'fazil@gmail.com', NULL, NULL, 'HDFC0000001', 'SB613215254254', '100', 'NE', NULL, '', 'PENDING', 'Fazil', '2023-09-05', 'Axis', '000', NULL, NULL, 'To be Processed', NULL, NULL, '2023-09-05 10:02:08', NULL),
(56, 1, '20230905154651974067', '20230905154651974067', '1', 'BEN1002', 'Fazil', '9806818722', 'fazil@gmail.com', NULL, NULL, 'HDFC0000001', 'SB613215254254', '100', 'RTGS', NULL, '', 'REJECTED', 'Fazil', '2023-09-05', 'Kotak', 'R', NULL, NULL, '20230905154651974067 Not found. Kindly reinitiate with same Message ID. - ', NULL, NULL, '2023-09-05 10:16:54', NULL),
(57, 1, '20230905170925310333', '', 'rockpay123', 'BEN1002', 'Fazil', '9806818722', 'fazil@gmail.com', NULL, NULL, 'HDFC0000001', 'SB613215254254', '100', 'NE', NULL, '', 'PENDING', 'Fazil', '2023-09-05', 'Axis', 'PEN', NULL, NULL, NULL, NULL, NULL, '2023-09-05 11:39:27', NULL),
(58, 1, '20230905174223507959', '', '20230905174223507959', 'BEN1018', 'Ciamala', '09789560967', 'ciamala.askan@gmail.com', NULL, NULL, 'SBIN0123', '1234567890', '100', 'NE', NULL, '', 'REJECTED', 'Ciamala', '2023-09-05', 'Axis', 'F403', NULL, NULL, NULL, NULL, NULL, '2023-09-05 12:12:24', NULL),
(59, 1, '20230907185432333142', '', '20230907185432333142', '', NULL, NULL, NULL, NULL, NULL, 'HDFC0000001', 'SB613215254254', '100', 'RT', 17, '', 'REJECTED', '', '2023-09-07', 'Axis', 'F203', NULL, NULL, NULL, NULL, NULL, '2023-09-07 13:24:33', NULL),
(60, 1, '20230907191304991410', '', '20230907191304991410', '', NULL, NULL, NULL, NULL, NULL, 'HDFC0000001', 'SB613215254254', '100', 'RT', 17, '', 'REJECTED', '', '2023-09-07', 'Axis', 'F203', NULL, NULL, NULL, NULL, NULL, '2023-09-07 13:43:06', NULL),
(61, 1, '20230907191336161857', '', '20230907191336161857', '', NULL, NULL, NULL, NULL, NULL, 'HDFC0000001', 'SB613215254254', '100', 'RT', 17, '', 'REJECTED', '', '2023-09-07', 'Axis', 'F203', NULL, NULL, NULL, NULL, NULL, '2023-09-07 13:43:37', NULL),
(62, 1, '20230907191540934095', '', '20230907191540934095', '', NULL, NULL, NULL, NULL, NULL, 'HDFC0000001', 'SB613215254254', '100', 'RT', 17, '', 'REJECTED', '', '2023-09-07', 'Axis', 'F203', NULL, NULL, NULL, NULL, NULL, '2023-09-07 13:45:42', NULL),
(63, 1, '20230907193134057601', '', '20230907193134057601', 'BEN1002', 'Fazil', '9806818722', 'fazil@gmail.com', NULL, NULL, 'HDFC0000001', 'SB613215254254', '100', 'RT', NULL, '', 'REJECTED', 'Fazil', '2023-09-07', 'Axis', 'F304', NULL, NULL, NULL, NULL, NULL, '2023-09-07 14:01:35', NULL),
(64, 1, '20230908110852032185', '', '20230908110852032185', '', NULL, NULL, NULL, NULL, NULL, 'HDFC0000001', 'SB613215254254', '100', 'RT', 17, '', '', '', '2023-09-08', 'Axis', '', NULL, NULL, NULL, NULL, NULL, '2023-09-08 05:40:07', NULL),
(65, 1, '20230908112120184820', '', '20230908112120184820', '', NULL, NULL, NULL, NULL, NULL, 'HDFC0000001', 'SB613215254254', '100', 'RT', 17, '', '', '', '2023-09-08', 'Axis', '', NULL, NULL, NULL, NULL, NULL, '2023-09-08 05:52:35', NULL),
(66, 1, '20230908112747485658', '', '20230908112747485658', '', 'Ciam', NULL, NULL, NULL, NULL, 'HDFC0000001', 'SB613215254254', '100', 'RT', 17, '', '', '', '2023-09-08', 'Axis', '', NULL, NULL, NULL, NULL, NULL, '2023-09-08 05:59:02', NULL),
(67, 1, '20230908113005908505', '', '20230908113005908505', '', 'Ciam', NULL, NULL, NULL, NULL, 'HDFC0000001', 'SB613215254254', '100', 'RT', 17, '', 'REJECTED', '', '2023-09-08', 'Axis', 'F304', NULL, NULL, NULL, NULL, NULL, '2023-09-08 06:00:07', NULL),
(68, 1, '20230908113555369803', '', '20230908113555369803', '', 'Ciam', NULL, NULL, NULL, NULL, 'HDFC0000001', 'SB613215254254', '100', 'RT', 17, '', 'REJECTED', '', '2023-09-08', 'Axis', 'F304', NULL, NULL, NULL, NULL, NULL, '2023-09-08 06:05:56', NULL),
(69, 1, '20230908152326754277', '', '20230908152326754277', '', 'Ciam', NULL, NULL, NULL, NULL, 'HDFC0000001', 'SB613215254254', '1000', 'NE', 18, '', 'PENDING', '', '2023-09-08', 'Axis', 'PEN', NULL, NULL, NULL, NULL, NULL, '2023-09-08 09:53:34', NULL),
(70, 1, '20230908152608969390', '20230908152608969390', '20230908152608969390', '', 'Ciam', NULL, NULL, NULL, NULL, 'HDFC0000001', 'SB613215254254', '1000', 'NEFT', 19, '', 'PENDING', '', '2023-09-08', 'Kotak', '007', NULL, NULL, NULL, NULL, NULL, '2023-09-08 09:56:12', NULL),
(71, 1, '20230908161459316038', '20230908161459316038', '20230908161459316038', '', 'Ciam', NULL, NULL, NULL, NULL, 'HDFC0000001', 'SB613215254254', '400', 'NEFT', 23, '', 'PENDING', '', '2023-09-08', 'Kotak', '007', NULL, NULL, NULL, NULL, NULL, '2023-09-08 10:45:02', NULL),
(72, 1, '20230908162018332059', '20230908162018332059', '20230908162018332059', '', 'test', NULL, NULL, NULL, NULL, 'HDFC0000001', 'SB613215254254', '200', 'NEFT', 24, '', 'PENDING', '', '2023-09-08', 'Kotak', '007', NULL, NULL, NULL, NULL, NULL, '2023-09-08 10:50:20', NULL),
(73, 1, '20230914151621225933', '', '20230914151621225933', 'BEN1002', 'Fazil', '9806818722', 'fazil@gmail.com', NULL, NULL, 'HDFC0000001', 'SB613215254254', '100', 'NEFT', NULL, '', '', 'Fazil', '2023-09-14', 'Kotak', '', NULL, NULL, NULL, NULL, NULL, '2023-09-14 15:16:23', NULL),
(74, 1, '20230914152522568512', '', '20230914152522568512', 'BEN1002', 'Fazil', '9806818722', 'fazil@gmail.com', NULL, NULL, 'HDFC0000001', 'SB613215254254', '100', 'NEFT', NULL, '', 'Invalid Client Code.', 'Fazil', '2023-09-14', 'Kotak', '', NULL, NULL, NULL, NULL, NULL, '2023-09-14 15:25:26', NULL),
(75, 1, '20230914152729779157', '', '20230914152729779157', 'BEN1002', 'Fazil', '9806818722', 'fazil@gmail.com', NULL, NULL, 'HDFC0000001', 'SB613215254254', '100', 'NEFT', NULL, '', 'Invalid Client Code.', 'Fazil', '2023-09-14', 'Kotak', '', NULL, NULL, NULL, NULL, NULL, '2023-09-14 15:27:31', NULL),
(76, 1, '20230914154059591412', '', '20230914154059591412', 'BEN1002', 'Fazil', '9806818722', 'fazil@gmail.com', NULL, NULL, 'HDFC0000001', 'SB613215254254', '100', 'NEFT', NULL, '', 'Invalid Client Code.', 'Fazil', '2023-09-14', 'Kotak', '', NULL, NULL, NULL, NULL, NULL, '2023-09-14 15:41:09', NULL),
(77, 1, '20230914154222671046', '', '20230914154222671046', 'BEN1002', 'Fazil', '9806818722', 'fazil@gmail.com', NULL, NULL, 'HDFC0000001', 'SB613215254254', '100', 'NEFT', NULL, '', 'Invalid Client Code.', 'Fazil', '2023-09-14', 'Kotak', '', NULL, NULL, NULL, NULL, NULL, '2023-09-14 15:42:36', NULL),
(78, 1, '20230922150754971493', '', '20230922150754971493', 'BEN1002', 'Fazil', '9806818722', 'fazil@gmail.com', NULL, NULL, 'HDFC0000001', 'SB613215254254', '100', 'NEFT', NULL, '', 'All Instruments rejected due to data validation fa', 'Fazil', '2023-09-22', 'Kotak', '', NULL, NULL, NULL, NULL, NULL, '2023-09-22 15:08:01', NULL),
(79, 1, '20230922152825335123', '', '20230922152825335123', 'BEN1002', 'Fazil', '9806818722', 'fazil@gmail.com', NULL, NULL, 'HDFC0000001', 'SB613215254254', '102', 'NEFT', NULL, '', '', 'Fazil', '2023-09-22', 'Kotak', '', NULL, NULL, NULL, NULL, NULL, '2023-09-22 15:28:30', NULL),
(80, 1, '20230922152943297791', '20230922152943297791', '20230922152943297791', 'BEN1002', 'Fazil', '9806818722', 'fazil@gmail.com', NULL, NULL, 'HDFC0000001', 'SB613215254254', '101', 'NEFT', NULL, '', 'DELETED', 'Fazil', '2023-09-22', 'Kotak', 'DL', NULL, NULL, 'Deleted - 20230922152943297791', NULL, NULL, '2023-09-22 15:29:48', NULL),
(81, 1, '20230922153605869096', '20230922153605869096', '20230922153605869096', 'BEN1002', 'Fazil', '9806818722', 'fazil@gmail.com', NULL, NULL, 'HDFC0000001', 'SB613215254254', '100', 'NEFT', NULL, '', 'DELETED', 'Fazil', '2023-09-22', 'Kotak', 'DL', NULL, NULL, 'Deleted - 20230922153605869096', NULL, NULL, '2023-09-22 15:36:10', NULL),
(82, 1, '20230922155730562517', '20230922155730562517', '20230922155730562517', 'BEN1002', 'Fazil', '9806818722', 'fazil@gmail.com', NULL, NULL, 'HDFC0000001', 'SB613215254254', '100', 'NEFT', NULL, '', 'DELETED', 'Fazil', '2023-09-22', 'Kotak', 'DL', NULL, NULL, 'Deleted - 20230922155730562517', NULL, NULL, '2023-09-22 15:57:37', NULL),
(83, 1, '20231006112158511773', '20231006112158511773', '20231006112158511773', 'BEN1002', 'Fazil', '9806818722', 'fazil@gmail.com', NULL, NULL, 'HDFC0000001', 'SB613215254254', '100', 'NEFT', NULL, '', 'PENDING', 'Fazil', '2023-10-06', 'Kotak', '007', NULL, NULL, NULL, NULL, NULL, '2023-10-06 11:22:02', NULL),
(84, 1, '20231006112311897709', '20231006112311897709', '20231006112311897709', 'BEN1002', 'Fazil', '9806818722', 'fazil@gmail.com', NULL, NULL, 'HDFC0000001', 'SB613215254254', '10', 'NEFT', NULL, '', 'PENDING', 'Fazil', '2023-10-06', 'Kotak', '007', NULL, NULL, NULL, NULL, NULL, '2023-10-06 11:23:16', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `payout_vendor`
--

CREATE TABLE `payout_vendor` (
  `id` int(11) NOT NULL,
  `vendor_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payout_vendor_bank`
--

CREATE TABLE `payout_vendor_bank` (
  `id` int(11) NOT NULL,
  `bank_name` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payout_vendor_bank`
--

INSERT INTO `payout_vendor_bank` (`id`, `bank_name`) VALUES
(0, 'NA'),
(1, 'Atom'),
(2, 'Razorpay'),
(3, 'EaseBuzz'),
(4, 'CashFree'),
(5, 'IndusInd'),
(6, 'Worldline'),
(7, 'PayU'),
(8, 'Grezpay'),
(9, 'ISGpay'),
(10, 'CCAvenue'),
(11, 'Paytm'),
(12, 'IppoPay'),
(13, 'SafePay'),
(14, 'SambhavPay'),
(15, 'OmniWare');

-- --------------------------------------------------------

--
-- Table structure for table `payout_verify_account`
--

CREATE TABLE `payout_verify_account` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `mobile` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `bank_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `account_no` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ifsc_code` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `upi_id` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `verified_by` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `verified_time` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payout_wallet`
--

CREATE TABLE `payout_wallet` (
  `id` int(11) NOT NULL,
  `merchant_id` int(10) NOT NULL,
  `balance` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payslip_element`
--

CREATE TABLE `payslip_element` (
  `id` int(11) NOT NULL,
  `element_label` varchar(255) NOT NULL DEFAULT '',
  `element_name` varchar(255) NOT NULL DEFAULT '',
  `element_type` enum('earning','deduction') DEFAULT NULL,
  `created_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payslip_element`
--

INSERT INTO `payslip_element` (`id`, `element_label`, `element_name`, `element_type`, `created_date`) VALUES
(1, 'Basic & DA', 'basic-da', 'earning', '2020-05-16 11:44:43'),
(2, 'HRA', 'hra', 'earning', '2020-05-16 11:44:43'),
(3, 'Conveyance', 'conveyance', 'earning', '2020-05-16 11:44:43'),
(4, 'Professional Tax', 'pf', 'deduction', '2020-05-16 11:46:31'),
(5, 'TSD/IT', 'tsd-it', 'deduction', '2020-05-16 11:46:31'),
(6, 'Loan', 'loan', 'deduction', '2020-05-16 11:46:31');

-- --------------------------------------------------------

--
-- Table structure for table `payu_mid_keys`
--

CREATE TABLE `payu_mid_keys` (
  `id` int(11) NOT NULL,
  `merchant_id` int(11) NOT NULL DEFAULT '0',
  `merchant_mid` varchar(150) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `merchant_key` varchar(150) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `salt_key` varchar(150) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `created_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `created_user` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `payu_mid_keys`
--

INSERT INTO `payu_mid_keys` (`id`, `merchant_id`, `merchant_mid`, `merchant_key`, `salt_key`, `created_date`, `created_user`) VALUES
(1, 1, 'Payudemo', 'Payudemo', 'Payudemo', '2022-09-08 00:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `payu_response`
--

CREATE TABLE `payu_response` (
  `id` int(11) NOT NULL,
  `mihpayid` varchar(150) COLLATE utf8_unicode_ci DEFAULT '',
  `mode` varchar(10) COLLATE utf8_unicode_ci DEFAULT '',
  `status` varchar(20) COLLATE utf8_unicode_ci DEFAULT '',
  `payu_key` varchar(20) COLLATE utf8_unicode_ci DEFAULT '',
  `txnid` varchar(200) COLLATE utf8_unicode_ci DEFAULT '',
  `amount` varchar(50) COLLATE utf8_unicode_ci DEFAULT '',
  `discount` varchar(50) COLLATE utf8_unicode_ci DEFAULT '',
  `offer` varchar(100) COLLATE utf8_unicode_ci DEFAULT '',
  `productinfo` varchar(50) COLLATE utf8_unicode_ci DEFAULT '',
  `firstname` varchar(100) COLLATE utf8_unicode_ci DEFAULT '',
  `lastname` varchar(100) COLLATE utf8_unicode_ci DEFAULT '',
  `address1` varchar(200) COLLATE utf8_unicode_ci DEFAULT '',
  `address2` varchar(200) COLLATE utf8_unicode_ci DEFAULT '',
  `city` varchar(50) COLLATE utf8_unicode_ci DEFAULT '',
  `state` varchar(50) COLLATE utf8_unicode_ci DEFAULT '',
  `country` varchar(50) COLLATE utf8_unicode_ci DEFAULT '',
  `zipcode` varchar(20) COLLATE utf8_unicode_ci DEFAULT '',
  `email` varchar(200) COLLATE utf8_unicode_ci DEFAULT '',
  `phone` varchar(20) COLLATE utf8_unicode_ci DEFAULT '',
  `udf10` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `udf9` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `udf8` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `udf7` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `udf6` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `udf5` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `udf4` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `udf3` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `udf2` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `udf1` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `hash` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `error` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `bankcode` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `PG_TYPE` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `bank_ref_num` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `shipping_firstname` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `shipping_lastname` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `shipping_address1` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `shipping_address2` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `shipping_city` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `shipping_state` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `shipping_country` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `shipping_zipcode` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `shipping_phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `unmappedstatus` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `created_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `price_detail`
--

CREATE TABLE `price_detail` (
  `id` int(11) NOT NULL,
  `business_category` varchar(100) DEFAULT '',
  `visa_master_per` varchar(20) DEFAULT NULL,
  `rupay_per` varchar(20) DEFAULT NULL,
  `credit_card_per` varchar(20) DEFAULT NULL,
  `amex_per` varchar(20) DEFAULT NULL,
  `upi_per` varchar(20) DEFAULT NULL,
  `sbi_per` varchar(20) DEFAULT NULL,
  `hdfc_per` varchar(20) DEFAULT NULL,
  `axis_per` varchar(20) DEFAULT NULL,
  `icici_per` varchar(20) DEFAULT NULL,
  `yes_kotak_per` varchar(20) DEFAULT NULL,
  `others_per` varchar(20) DEFAULT NULL,
  `payment_gateway` enum('payu','payflash') DEFAULT NULL,
  `created_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `product_gid` varchar(50) NOT NULL DEFAULT '',
  `product_title` varchar(50) NOT NULL DEFAULT '',
  `product_price` double(16,2) NOT NULL DEFAULT '0.00',
  `product_description` text,
  `status` enum('active','inactive') DEFAULT 'active',
  `created_date` datetime DEFAULT NULL,
  `created_merchant` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `product_gid`, `product_title`, `product_price`, `product_description`, `status`, `created_date`, `created_merchant`) VALUES
(1, 'prod_UPWp4tY5QOh8aecP', 'Apple', 1000.00, 'Testing', 'active', '2023-03-16 16:27:37', 1);

-- --------------------------------------------------------

--
-- Table structure for table `razorpay_order`
--

CREATE TABLE `razorpay_order` (
  `id` int(11) NOT NULL,
  `amount` double NOT NULL,
  `amount_paid` double DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `amount_due` double DEFAULT NULL,
  `currency` varchar(10) DEFAULT NULL,
  `receipt` varchar(100) DEFAULT NULL,
  `order_id` varchar(100) DEFAULT NULL,
  `offer_id` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `attempts` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `created_merchant` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `razorpay_payment`
--

CREATE TABLE `razorpay_payment` (
  `id` int(11) NOT NULL,
  `notes` longtext,
  `description` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `amount_refunded` int(11) DEFAULT NULL,
  `bank` varchar(50) DEFAULT NULL,
  `error_reason` varchar(255) DEFAULT NULL,
  `error_description` varchar(255) DEFAULT NULL,
  `acquirer_data` varchar(255) DEFAULT NULL,
  `captured` varchar(255) DEFAULT NULL,
  `contact` varchar(255) DEFAULT NULL,
  `invoice_id` varchar(255) DEFAULT NULL,
  `currency` varchar(10) DEFAULT NULL,
  `pay_id` varchar(255) DEFAULT NULL,
  `international` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `refund_status` varchar(255) DEFAULT NULL,
  `wallet` varchar(255) DEFAULT NULL,
  `method` varchar(255) DEFAULT NULL,
  `vpa` varchar(255) DEFAULT NULL,
  `error_source` varchar(255) DEFAULT NULL,
  `error_step` varchar(255) DEFAULT NULL,
  `tax` int(11) DEFAULT NULL,
  `fee` int(11) DEFAULT '0',
  `card_id` varchar(255) DEFAULT NULL,
  `error_code` varchar(255) DEFAULT NULL,
  `order_id` varchar(255) DEFAULT NULL,
  `entity` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `created_merchant` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `refer_earn`
--

CREATE TABLE `refer_earn` (
  `id` int(11) NOT NULL,
  `referrer_code` varchar(50) NOT NULL DEFAULT '',
  `name` varchar(50) NOT NULL DEFAULT '',
  `email` varchar(50) NOT NULL DEFAULT '',
  `mobile_no` varchar(10) NOT NULL DEFAULT '',
  `refer_amount` double(16,2) NOT NULL DEFAULT '0.00',
  `created_merchant` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `role_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ryapay_address`
--

CREATE TABLE `ryapay_address` (
  `id` int(11) NOT NULL,
  `address_id` smallint(5) NOT NULL DEFAULT '0',
  `address` text NOT NULL,
  `pincode` varchar(20) NOT NULL DEFAULT '',
  `city` varchar(50) NOT NULL DEFAULT '',
  `state_id` smallint(5) NOT NULL DEFAULT '0',
  `address_module` enum('customer','supplier','rupayapay') DEFAULT 'rupayapay',
  `status` enum('active','inactive') DEFAULT 'active',
  `created_date` datetime DEFAULT NULL,
  `created_user` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ryapay_adjustment`
--

CREATE TABLE `ryapay_adjustment` (
  `id` int(11) NOT NULL,
  `merchant_id` varchar(50) DEFAULT '',
  `merchant_traxn_id` varchar(50) DEFAULT '',
  `traxn_amount` double(16,2) DEFAULT '0.00',
  `adjustment_amount` double(16,2) DEFAULT '0.00',
  `adjustment_date` datetime DEFAULT NULL,
  `bank_id` varchar(50) DEFAULT '',
  `bankname` varchar(50) DEFAULT '',
  `adjustment_status` varchar(50) DEFAULT '',
  `vendor` varchar(20) DEFAULT '',
  `traxn_date` datetime DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `created_user` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ryapay_adjustment_charge`
--

CREATE TABLE `ryapay_adjustment_charge` (
  `id` int(11) NOT NULL,
  `merchant_id` int(11) NOT NULL DEFAULT '0',
  `business_type_id` tinyint(4) DEFAULT '0',
  `vendor_id` int(11) NOT NULL DEFAULT '0',
  `dc_visa` double(4,2) DEFAULT '0.00',
  `dc_master` double(4,2) DEFAULT '0.00',
  `dc_rupay` double(4,2) DEFAULT '0.00',
  `cc_visa` double(4,2) DEFAULT '0.00',
  `cc_master` double(4,2) DEFAULT '0.00',
  `cc_rupay` double(4,2) DEFAULT '0.00',
  `amex` double(4,2) DEFAULT '0.00',
  `upi` double(4,2) DEFAULT '0.00',
  `net_sbi` double(4,2) DEFAULT '0.00',
  `net_hdfc` double(4,2) DEFAULT '0.00',
  `net_axis` double(4,2) DEFAULT '0.00',
  `net_icici` double(4,2) DEFAULT '0.00',
  `net_yes_kotak` double(4,2) DEFAULT '0.00',
  `net_others` double(4,2) DEFAULT '0.00',
  `created_date` datetime DEFAULT NULL,
  `created_user` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ryapay_adjustment_charge`
--

INSERT INTO `ryapay_adjustment_charge` (`id`, `merchant_id`, `business_type_id`, `vendor_id`, `dc_visa`, `dc_master`, `dc_rupay`, `cc_visa`, `cc_master`, `cc_rupay`, `amex`, `upi`, `net_sbi`, `net_hdfc`, `net_axis`, `net_icici`, `net_yes_kotak`, `net_others`, `created_date`, `created_user`) VALUES
(1, 1, 2, 0, 2.00, 2.00, 2.00, 2.00, 2.00, 2.00, 2.00, 2.00, 2.00, 2.00, 2.00, 2.00, 2.00, 2.00, '2023-03-16 16:34:45', 1);

-- --------------------------------------------------------

--
-- Table structure for table `ryapay_adjustment_detail`
--

CREATE TABLE `ryapay_adjustment_detail` (
  `id` int(11) NOT NULL,
  `vendor_adjustment_id` int(11) NOT NULL DEFAULT '0',
  `merchant_id` int(11) NOT NULL DEFAULT '0',
  `merchant_transaction_id` varchar(255) NOT NULL DEFAULT '',
  `transaction_mode` varchar(50) DEFAULT '',
  `transaction_amount` double(16,2) DEFAULT '0.00',
  `charges_per` varchar(10) NOT NULL DEFAULT '',
  `charges_on_transaction` double(16,2) DEFAULT '0.00',
  `gst_per` varchar(10) NOT NULL DEFAULT '',
  `gst_on_transaction` double(16,2) DEFAULT '0.00',
  `total_amt_charged` double(16,2) DEFAULT '0.00',
  `adjustment_amount` double(16,2) DEFAULT '0.00',
  `created_date` datetime DEFAULT NULL,
  `created_user` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ryapay_adjustment_trans`
--

CREATE TABLE `ryapay_adjustment_trans` (
  `id` int(11) NOT NULL,
  `merchant_id` varchar(50) DEFAULT '',
  `merchant_traxn_id` varchar(50) DEFAULT '',
  `tranx_id` varchar(50) DEFAULT '',
  `transaction_gid` varchar(50) DEFAULT NULL,
  `merchant_traxn_method` varchar(10) DEFAULT '',
  `adjustment_charges_per` varchar(10) DEFAULT '',
  `adjustment_charges` double(16,2) DEFAULT '0.00',
  `adjustment_gst_per` varchar(10) DEFAULT '',
  `adjustment_gst` double(16,2) DEFAULT '0.00',
  `total_charge` double(16,2) DEFAULT '0.00',
  `traxn_amount` double(16,2) DEFAULT '0.00',
  `adjustment_amount` double(16,2) DEFAULT '0.00',
  `adjustment_date` datetime DEFAULT NULL,
  `bank_id` varchar(50) DEFAULT '',
  `bankname` varchar(50) DEFAULT '',
  `adjustment_status` varchar(200) DEFAULT '',
  `vendor` varchar(255) DEFAULT NULL,
  `traxn_date` datetime DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `created_user` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ryapay_applicant`
--

CREATE TABLE `ryapay_applicant` (
  `id` int(11) NOT NULL,
  `job_id` varchar(255) NOT NULL DEFAULT '',
  `applicant_name` varchar(50) NOT NULL DEFAULT '',
  `applicant_email` varchar(50) NOT NULL DEFAULT '',
  `applicant_mobile` varchar(50) NOT NULL DEFAULT '',
  `applicant_resume` varchar(50) NOT NULL DEFAULT '',
  `applicant_status` varchar(100) DEFAULT '',
  `created_date` datetime DEFAULT NULL,
  `modified_user` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ryapay_bank_info`
--

CREATE TABLE `ryapay_bank_info` (
  `id` int(11) NOT NULL,
  `bank_name` varchar(50) DEFAULT '',
  `bank_accno` varchar(50) DEFAULT '',
  `status` enum('active','inactive') DEFAULT 'active',
  `created_date` datetime DEFAULT NULL,
  `created_user` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ryapay_bgcheck`
--

CREATE TABLE `ryapay_bgcheck` (
  `id` int(11) NOT NULL,
  `merchant_id` int(11) DEFAULT '0',
  `tele_verify` enum('Y','N') DEFAULT 'N',
  `business_type_id` tinyint(4) DEFAULT '0',
  `business_category_id` tinyint(4) DEFAULT '0',
  `business_sub_category_id` smallint(5) DEFAULT '0',
  `business_sub_category` varchar(255) DEFAULT '',
  `website_exists` enum('Y','N') DEFAULT 'N',
  `website_url` varchar(100) DEFAULT '',
  `website_contains` varchar(20) DEFAULT '',
  `ban_product` enum('Y','N') DEFAULT 'N',
  `ban_product_id` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `created_user` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ryapay_blog`
--

CREATE TABLE `ryapay_blog` (
  `id` int(11) NOT NULL,
  `post_category` int(11) DEFAULT '0',
  `post_gid` varchar(255) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `description` text,
  `image` varchar(255) DEFAULT '',
  `post_from` enum('blog','csr','press-release') DEFAULT 'blog',
  `post_status` enum('active','inactive') DEFAULT 'active',
  `created_date` datetime DEFAULT NULL,
  `created_user` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ryapay_cdr`
--

CREATE TABLE `ryapay_cdr` (
  `id` int(11) NOT NULL,
  `cdr_id` int(11) DEFAULT '0',
  `cdr_desc` text,
  `transaction_gid` varchar(50) DEFAULT '',
  `transaction_date` date DEFAULT NULL,
  `adjustment_trans_id` int(11) DEFAULT '0',
  `total_amount` double(16,2) DEFAULT '0.00',
  `remarks` text,
  `created_date` datetime DEFAULT NULL,
  `created_user` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ryapay_cdr`
--

INSERT INTO `ryapay_cdr` (`id`, `cdr_id`, `cdr_desc`, `transaction_gid`, `transaction_date`, `adjustment_trans_id`, `total_amount`, `remarks`, `created_date`, `created_user`) VALUES
(1, 64, 'ada', '121', '2023-08-09', NULL, 1.00, '1w', '2023-08-07 10:25:25', 1);

-- --------------------------------------------------------

--
-- Table structure for table `ryapay_contra_entry`
--

CREATE TABLE `ryapay_contra_entry` (
  `id` int(11) NOT NULL,
  `contra_no` varchar(50) DEFAULT '',
  `contra_date` date DEFAULT NULL,
  `debit_bank_id` tinyint(4) DEFAULT '0',
  `credit_bank_id` tinyint(4) DEFAULT '0',
  `payment_mode` int(11) DEFAULT '0',
  `payment_amount` double(16,2) DEFAULT '0.00',
  `remarks` text,
  `created_date` datetime DEFAULT NULL,
  `created_user` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ryapay_customer`
--

CREATE TABLE `ryapay_customer` (
  `id` int(11) NOT NULL,
  `customer_gid` varchar(50) NOT NULL DEFAULT '',
  `customer_name` varchar(255) DEFAULT '',
  `customer_email` varchar(255) DEFAULT '',
  `customer_phone` varchar(255) DEFAULT '',
  `customer_gstno` varchar(255) DEFAULT '',
  `created_date` datetime DEFAULT NULL,
  `created_user` int(11) NOT NULL DEFAULT '0',
  `modified_date` datetime DEFAULT NULL,
  `status` enum('active','inactive') DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ryapay_customer_case`
--

CREATE TABLE `ryapay_customer_case` (
  `id` int(11) NOT NULL,
  `case_gid` varchar(50) DEFAULT '',
  `service_id` tinyint(4) DEFAULT '0',
  `case_nature` tinyint(4) DEFAULT '0',
  `type_of_case` tinyint(4) DEFAULT '0',
  `status` enum('open','close','review') DEFAULT 'open',
  `case_doc` varchar(255) DEFAULT '',
  `case_filed` enum('Y','N') DEFAULT 'N',
  `created_date` datetime DEFAULT NULL,
  `created_user` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ryapay_customer_cdnote`
--

CREATE TABLE `ryapay_customer_cdnote` (
  `id` int(11) NOT NULL,
  `customer_id` mediumint(9) NOT NULL DEFAULT '0',
  `note_date` date DEFAULT NULL,
  `note_number` varchar(50) DEFAULT '',
  `note_payterms` varchar(50) DEFAULT '',
  `note_due` date DEFAULT NULL,
  `note_expense_code` int(11) DEFAULT '0',
  `note_amount` double(16,2) DEFAULT '0.00',
  `note_remarks` text,
  `note_status` enum('credit','debit') DEFAULT 'debit',
  `created_date` datetime DEFAULT NULL,
  `created_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ryapay_custorder_invoice`
--

CREATE TABLE `ryapay_custorder_invoice` (
  `id` int(11) NOT NULL,
  `customer_id` mediumint(9) NOT NULL DEFAULT '0',
  `sorder_id` int(11) NOT NULL DEFAULT '0',
  `custorder_due` date DEFAULT NULL,
  `custorder_payterms` varchar(50) DEFAULT '',
  `custorder_invdate` date DEFAULT NULL,
  `custorder_invno` varchar(50) DEFAULT '',
  `custorder_subtotal` double(16,2) DEFAULT '0.00',
  `custorder_tax` double(16,2) DEFAULT '0.00',
  `custorder_tax_applied` varchar(20) DEFAULT '',
  `custorder_total` double(16,2) DEFAULT '0.00',
  `custorder_remarks` text,
  `custorder_status` enum('saved','issued','completed') DEFAULT 'saved',
  `created_date` datetime DEFAULT NULL,
  `created_user` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ryapay_custorder_item`
--

CREATE TABLE `ryapay_custorder_item` (
  `custorder_id` int(11) NOT NULL DEFAULT '0',
  `item_id` smallint(5) NOT NULL DEFAULT '0',
  `item_amount` double(16,2) NOT NULL DEFAULT '0.00',
  `item_quantity` smallint(5) NOT NULL DEFAULT '0',
  `item_total` double(16,2) NOT NULL DEFAULT '0.00',
  `created_date` datetime DEFAULT NULL,
  `created_user` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ryapay_cust_rcptentry`
--

CREATE TABLE `ryapay_cust_rcptentry` (
  `id` int(11) NOT NULL,
  `receipt_no` varchar(50) DEFAULT '',
  `receipt_date` date DEFAULT NULL,
  `customer_id` mediumint(9) NOT NULL DEFAULT '0',
  `receipt_invtype` int(11) DEFAULT '0',
  `receipt_invno` varchar(50) DEFAULT '',
  `bank_id` int(11) DEFAULT '0',
  `receipt_mode` int(11) DEFAULT '0',
  `receipt_amount` double(16,2) DEFAULT '0.00',
  `remarks` text,
  `created_date` datetime DEFAULT NULL,
  `created_user` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ryapay_docscheck`
--

CREATE TABLE `ryapay_docscheck` (
  `id` int(11) NOT NULL,
  `merchant_id` int(11) DEFAULT '0',
  `doc_name` varchar(50) DEFAULT '',
  `file_name` varchar(100) DEFAULT '',
  `file_ext` varchar(100) DEFAULT '',
  `doc_verified` enum('Y','N') DEFAULT 'N',
  `created_date` datetime DEFAULT NULL,
  `uploaded_user` int(11) NOT NULL DEFAULT '0',
  `created_user` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ryapay_docscheck`
--

INSERT INTO `ryapay_docscheck` (`id`, `merchant_id`, `doc_name`, `file_name`, `file_ext`, `doc_verified`, `created_date`, `uploaded_user`, `created_user`) VALUES
(1, 1, 'bank_statement', 'Bank Statement', 'bankstatement.pdf', 'Y', '2023-03-16 16:33:42', 0, 1),
(2, 1, 'mer_pan_card', 'Authorized Signatory Pan Card', 'merpancard.pdf', 'Y', '2023-03-16 16:33:42', 0, 1),
(3, 1, 'mer_aadhar_card', 'Authorized Signatory Aadhar Card', 'meraadharcard.pdf', 'Y', '2023-03-16 16:33:42', 0, 1),
(4, 1, 'moa_doc', 'MOA Doc', '', 'Y', '2023-03-16 16:33:42', 0, 1),
(5, 1, 'comp_gst_doc', 'Company GST', 'compgstdoc.pdf', 'Y', '2023-03-16 16:33:42', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ryapay_emails_log`
--

CREATE TABLE `ryapay_emails_log` (
  `id` int(11) NOT NULL,
  `app` varchar(50) DEFAULT '',
  `module` varchar(50) DEFAULT '',
  `email_to` varchar(255) DEFAULT '',
  `email_cc` varchar(255) DEFAULT '',
  `email_bcc` varchar(255) DEFAULT '',
  `email_status` varchar(255) DEFAULT '',
  `created_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ryapay_emails_log`
--

INSERT INTO `ryapay_emails_log` (`id`, `app`, `module`, `email_to`, `email_cc`, `email_bcc`, `email_status`, `created_date`) VALUES
(1, 'Merchant', 'Password Reset Successful Email', 'ganesh.askan@gmail.com', '', '', 'Success', '2023-06-13 16:55:19'),
(2, 'Merchant', 'Password Reset Successful Email', 'ciamala.askan@gmail.com', '', '', 'Success', '2023-09-05 18:31:38');

-- --------------------------------------------------------

--
-- Table structure for table `ryapay_event`
--

CREATE TABLE `ryapay_event` (
  `id` int(11) NOT NULL,
  `event_name` varchar(255) NOT NULL DEFAULT '',
  `event_description` text,
  `event_venue` varchar(255) NOT NULL DEFAULT '',
  `event_date` datetime DEFAULT NULL,
  `event_time` varchar(20) NOT NULL DEFAULT '',
  `event_image` varchar(20) NOT NULL DEFAULT '',
  `event_short_url` varchar(50) NOT NULL DEFAULT '',
  `event_register` enum('free','paid') DEFAULT 'free',
  `register_open` enum('Y','N') DEFAULT 'Y',
  `event_status` enum('active','inactive') DEFAULT 'active',
  `created_date` datetime DEFAULT NULL,
  `created_user` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ryapay_fixed_asset`
--

CREATE TABLE `ryapay_fixed_asset` (
  `id` int(11) NOT NULL,
  `asset_gid` varchar(50) NOT NULL DEFAULT '',
  `asset_name` varchar(50) DEFAULT '',
  `asset_description` text,
  `account_id` int(11) NOT NULL DEFAULT '0',
  `asset_amount` double(16,2) DEFAULT '0.00',
  `asset_capital_amount` double(16,2) DEFAULT '0.00',
  `asset_depre_amount` double(16,2) DEFAULT '0.00',
  `asset_sale_amount` double(16,2) DEFAULT '0.00',
  `remark` text,
  `asset_status` enum('create','capitalization','depreciation','sale') DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `created_user` int(11) NOT NULL DEFAULT '0',
  `modified_date` datetime DEFAULT NULL,
  `status` enum('active','inactive') DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ryapay_gallery`
--

CREATE TABLE `ryapay_gallery` (
  `id` int(11) NOT NULL,
  `image_name` varchar(255) NOT NULL DEFAULT '',
  `image_content` text,
  `image_heading` varchar(50) DEFAULT '',
  `image_position` int(11) DEFAULT '0',
  `image_height` varchar(20) NOT NULL DEFAULT '',
  `image_width` varchar(20) NOT NULL DEFAULT '',
  `image_status` enum('active','inactive') DEFAULT 'active',
  `created_date` datetime DEFAULT NULL,
  `created_user` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ryapay_invoice`
--

CREATE TABLE `ryapay_invoice` (
  `id` int(11) NOT NULL,
  `invoice_gid` varchar(50) NOT NULL DEFAULT '',
  `invoice_receiptno` varchar(255) DEFAULT '',
  `company` varchar(50) NOT NULL DEFAULT '',
  `gstno` varchar(50) NOT NULL DEFAULT '',
  `panno` varchar(50) NOT NULL DEFAULT '',
  `invoice_amount` double(16,2) NOT NULL DEFAULT '0.00',
  `invoice_description` varchar(255) DEFAULT '',
  `invoice_billing_to` smallint(5) NOT NULL DEFAULT '0',
  `customer_gstno` varchar(50) DEFAULT '',
  `customer_email` varchar(50) NOT NULL DEFAULT '',
  `customer_phone` varchar(50) NOT NULL DEFAULT '',
  `invoice_billing_address` smallint(5) NOT NULL DEFAULT '0',
  `invoice_shipping_address` smallint(5) NOT NULL DEFAULT '0',
  `invoice_subtotal` double(16,2) NOT NULL DEFAULT '0.00',
  `invoice_tax_amount` double(16,2) NOT NULL DEFAULT '0.00',
  `tax_applied` varchar(10) NOT NULL DEFAULT '',
  `invoice_issue_date` datetime DEFAULT NULL,
  `invoice_expiry_date` datetime DEFAULT NULL,
  `invoice_notes` text,
  `invoice_terms_cond` text,
  `invoice_payid` varchar(50) DEFAULT NULL,
  `invoice_paylink` varchar(255) DEFAULT '',
  `invoice_status` enum('saved','issued','partially_paid','paid','cancelled','expired') DEFAULT 'saved',
  `created_date` datetime DEFAULT NULL,
  `created_user` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ryapay_invoice_item`
--

CREATE TABLE `ryapay_invoice_item` (
  `invoice_id` int(11) NOT NULL DEFAULT '0',
  `item_id` smallint(5) NOT NULL DEFAULT '0',
  `item_amount` double(16,2) NOT NULL DEFAULT '0.00',
  `item_quantity` smallint(5) NOT NULL DEFAULT '0',
  `item_total` double(16,2) NOT NULL DEFAULT '0.00',
  `created_date` datetime DEFAULT NULL,
  `created_user` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ryapay_item`
--

CREATE TABLE `ryapay_item` (
  `id` int(11) NOT NULL,
  `item_gid` varchar(50) NOT NULL DEFAULT '',
  `item_name` varchar(255) DEFAULT '',
  `item_description` text,
  `item_amount` double(16,2) NOT NULL DEFAULT '0.00',
  `item_status` enum('active','inactive') DEFAULT 'active',
  `created_date` datetime DEFAULT NULL,
  `created_user` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ryapay_job`
--

CREATE TABLE `ryapay_job` (
  `id` int(11) NOT NULL,
  `job_category` int(11) NOT NULL DEFAULT '0',
  `job_title` varchar(255) NOT NULL DEFAULT '',
  `job_description` text,
  `job_location` varchar(50) NOT NULL DEFAULT '',
  `job_status` enum('active','inactive') DEFAULT 'active',
  `created_date` datetime DEFAULT NULL,
  `created_user` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ryapay_journal_voucher`
--

CREATE TABLE `ryapay_journal_voucher` (
  `id` int(11) NOT NULL,
  `voucher_no` varchar(20) DEFAULT '',
  `debit_account_code` int(11) DEFAULT '0',
  `debit_amount` double(16,2) DEFAULT '0.00',
  `credit_account_code` int(11) DEFAULT '0',
  `credit_amount` double(16,2) DEFAULT '0.00',
  `voucher_total` double(16,2) DEFAULT '0.00',
  `remark` text,
  `voucher_date` datetime DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `created_user` int(11) NOT NULL DEFAULT '0',
  `modified_date` datetime DEFAULT NULL,
  `status` enum('active','inactive') DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ryapay_porder`
--

CREATE TABLE `ryapay_porder` (
  `id` int(11) NOT NULL,
  `supplier_id` mediumint(9) NOT NULL DEFAULT '0',
  `porder_no` varchar(50) DEFAULT '',
  `porder_date` date DEFAULT NULL,
  `porder_due` date DEFAULT NULL,
  `porder_bill_street` text,
  `porder_bill_city` varchar(50) DEFAULT '',
  `porder_bill_state` tinyint(4) DEFAULT '0',
  `porder_bill_country` varchar(50) DEFAULT '',
  `porder_ship_street` text,
  `porder_ship_city` varchar(50) DEFAULT '',
  `porder_ship_state` tinyint(4) DEFAULT '0',
  `porder_ship_country` varchar(50) DEFAULT '',
  `porder_subtotal` double(16,2) DEFAULT '0.00',
  `porder_tax` double(16,2) DEFAULT '0.00',
  `porder_tax_applied` varchar(20) DEFAULT '',
  `porder_total` double(16,2) DEFAULT '0.00',
  `porder_terms_cond` text,
  `porder_description` text,
  `porder_status` enum('saved','issued','completed') DEFAULT 'saved',
  `created_date` datetime DEFAULT NULL,
  `created_user` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ryapay_porder_item`
--

CREATE TABLE `ryapay_porder_item` (
  `porder_id` int(11) NOT NULL DEFAULT '0',
  `item_id` smallint(5) NOT NULL DEFAULT '0',
  `item_amount` double(16,2) NOT NULL DEFAULT '0.00',
  `item_quantity` smallint(5) NOT NULL DEFAULT '0',
  `item_total` double(16,2) NOT NULL DEFAULT '0.00',
  `created_date` datetime DEFAULT NULL,
  `created_user` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ryapay_refund`
--

CREATE TABLE `ryapay_refund` (
  `id` int(11) NOT NULL,
  `merchant_id` varchar(50) DEFAULT '',
  `merchant_traxn_id` varchar(50) DEFAULT '',
  `amount` double(16,2) DEFAULT '0.00',
  `refund_code` varchar(20) DEFAULT '',
  `refund_message` varchar(255) DEFAULT '',
  `refund_status` varchar(50) DEFAULT '',
  `vendor` varchar(20) DEFAULT '',
  `created_date` datetime DEFAULT NULL,
  `created_user` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ryapay_rnccheck`
--

CREATE TABLE `ryapay_rnccheck` (
  `id` int(11) NOT NULL,
  `merchant_id` int(11) DEFAULT '0',
  `field_name` varchar(50) DEFAULT '',
  `field_label` varchar(100) DEFAULT '',
  `field_value` varchar(100) DEFAULT '',
  `field_verified` enum('Y','N') DEFAULT 'N',
  `created_date` datetime DEFAULT NULL,
  `created_user` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ryapay_rnccheck`
--

INSERT INTO `ryapay_rnccheck` (`id`, `merchant_id`, `field_name`, `field_label`, `field_value`, `field_verified`, `created_date`, `created_user`) VALUES
(1, 1, 'name', 'Name', 'Rajat', 'Y', '2023-03-16 16:33:42', 1),
(2, 1, 'email', 'Email', 'edgetechmediawork@gmail.com', 'Y', '2023-03-16 16:33:42', 1),
(3, 1, 'mobile_no', 'Mobile No', '9071116764', 'Y', '2023-03-16 16:33:42', 1),
(4, 1, 'type_name', 'Business Type', 'Proprietorship', 'Y', '2023-03-16 16:33:42', 1),
(5, 1, 'category_name', 'Business Category', 'Education', 'Y', '2023-03-16 16:33:42', 1),
(6, 1, 'expenditure', 'Company Expenditure', '25 Lakhs to 50 Lakhs', 'Y', '2023-03-16 16:33:42', 1),
(7, 1, 'sub_category_name', 'Business Sub Category', 'College', 'Y', '2023-03-16 16:33:42', 1),
(8, 1, 'business_name', 'Company Name', 'Testing PVT Ltd', 'Y', '2023-03-16 16:33:42', 1),
(9, 1, 'address', 'Company Address', 'Bangalore', 'Y', '2023-03-16 16:33:42', 1),
(10, 1, 'pincode', 'Pincode', '560041', 'Y', '2023-03-16 16:33:42', 1),
(11, 1, 'city', 'City', 'Bangalore', 'Y', '2023-03-16 16:33:42', 1),
(12, 1, 'state_name', 'State', 'Karnataka', 'Y', '2023-03-16 16:33:42', 1),
(13, 1, 'country', 'Country', 'India', 'Y', '2023-03-16 16:33:42', 1),
(14, 1, 'website', 'Website', 'No Website', 'Y', '2023-03-16 16:33:42', 1),
(15, 1, 'bank_name', 'Bank Name', 'hdfc', 'Y', '2023-03-16 16:33:42', 1),
(16, 1, 'bank_acc_no', 'Bank Account No', '2134567987689976', 'Y', '2023-03-16 16:33:42', 1),
(17, 1, 'bank_ifsc_code', 'Bank IFSC Code', 'HDFC1234567', 'Y', '2023-03-16 16:33:42', 1),
(18, 1, 'comp_pan_number', 'Company Pan No', 'CFBCK4523C', 'Y', '2023-03-16 16:33:42', 1),
(19, 1, 'comp_gst', 'Company GST', NULL, 'Y', '2023-03-16 16:33:42', 1),
(20, 1, 'mer_pan_number', 'Merchant Pan No', 'CFBPK3412C', 'Y', '2023-03-16 16:33:42', 1),
(21, 1, 'mer_aadhar_number', 'Merchant Aadhar No', '123412341234', 'Y', '2023-03-16 16:33:42', 1),
(22, 1, 'mer_name', 'Merchant Name', 'Test', 'Y', '2023-03-16 16:33:42', 1);

-- --------------------------------------------------------

--
-- Table structure for table `ryapay_sale`
--

CREATE TABLE `ryapay_sale` (
  `id` int(11) NOT NULL,
  `merchant_name` varchar(50) NOT NULL DEFAULT '',
  `merchant_mobile` varchar(10) NOT NULL DEFAULT '',
  `merchant_email` varchar(100) NOT NULL DEFAULT '',
  `service_id` tinyint(4) NOT NULL DEFAULT '0',
  `company_name` varchar(100) NOT NULL DEFAULT '',
  `business_category` tinyint(11) NOT NULL DEFAULT '0',
  `company_type` varchar(255) DEFAULT '',
  `company_turnover` varchar(255) DEFAULT '',
  `company_transaction` varchar(255) DEFAULT '',
  `company_payment_method` varchar(255) DEFAULT '',
  `company_address` text,
  `city` varchar(100) DEFAULT '',
  `state` tinyint(4) NOT NULL DEFAULT '0',
  `visited` datetime DEFAULT NULL,
  `merchant_status` varchar(100) DEFAULT '',
  `next_call` datetime DEFAULT NULL,
  `remark` text,
  `sale_status` enum('lead','daily','sales') DEFAULT 'lead',
  `sales_from` enum('inside','field') DEFAULT 'inside',
  `created_date` datetime DEFAULT NULL,
  `created_user` int(11) DEFAULT NULL,
  `assigned_to` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ryapay_service`
--

CREATE TABLE `ryapay_service` (
  `id` int(11) NOT NULL,
  `service_name` varchar(50) NOT NULL DEFAULT '',
  `service_description` text,
  `status` enum('active','inactive') DEFAULT 'active',
  `created_date` datetime DEFAULT NULL,
  `created_user` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ryapay_sms_log`
--

CREATE TABLE `ryapay_sms_log` (
  `id` int(11) NOT NULL,
  `app` varchar(50) DEFAULT '',
  `module` varchar(50) DEFAULT '',
  `sms_to` varchar(255) DEFAULT '',
  `sms_status` varchar(255) DEFAULT '',
  `created_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ryapay_sorder`
--

CREATE TABLE `ryapay_sorder` (
  `id` int(11) NOT NULL,
  `customer_id` mediumint(9) NOT NULL DEFAULT '0',
  `sorder_no` varchar(50) DEFAULT '',
  `sorder_date` date DEFAULT NULL,
  `sorder_due` date DEFAULT NULL,
  `sorder_bill_street` text,
  `sorder_bill_city` varchar(50) DEFAULT '',
  `sorder_bill_state` tinyint(4) DEFAULT '0',
  `sorder_bill_country` varchar(50) DEFAULT '',
  `sorder_ship_street` text,
  `sorder_ship_city` varchar(50) DEFAULT '',
  `sorder_ship_state` tinyint(4) DEFAULT '0',
  `sorder_ship_country` varchar(50) DEFAULT '',
  `sorder_subtotal` double(16,2) DEFAULT '0.00',
  `sorder_tax` double(16,2) DEFAULT '0.00',
  `sorder_tax_applied` varchar(20) DEFAULT '',
  `sorder_total` double(16,2) DEFAULT '0.00',
  `sorder_terms_cond` text,
  `sorder_description` text,
  `sorder_status` enum('saved','issued','completed') DEFAULT 'saved',
  `created_date` datetime DEFAULT NULL,
  `created_user` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ryapay_sorder_item`
--

CREATE TABLE `ryapay_sorder_item` (
  `sorder_id` int(11) NOT NULL DEFAULT '0',
  `item_id` smallint(5) NOT NULL DEFAULT '0',
  `item_amount` double(16,2) NOT NULL DEFAULT '0.00',
  `item_quantity` smallint(5) NOT NULL DEFAULT '0',
  `item_total` double(16,2) NOT NULL DEFAULT '0.00',
  `created_date` datetime DEFAULT NULL,
  `created_user` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ryapay_subscribe`
--

CREATE TABLE `ryapay_subscribe` (
  `id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL DEFAULT '',
  `send_mail` enum('Y','N') DEFAULT 'Y',
  `created_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ryapay_sund_payentry`
--

CREATE TABLE `ryapay_sund_payentry` (
  `id` int(11) NOT NULL,
  `sund_pay_no` varchar(255) DEFAULT '',
  `sund_pay_date` date DEFAULT NULL,
  `supplier_id` mediumint(9) NOT NULL DEFAULT '0',
  `expense_code` int(11) DEFAULT '0',
  `bank_id` tinyint(4) DEFAULT '0',
  `payment_mode` int(11) DEFAULT '0',
  `payment_amount` double(16,2) DEFAULT '0.00',
  `remarks` text,
  `created_date` datetime DEFAULT NULL,
  `created_user` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ryapay_sund_rcptentry`
--

CREATE TABLE `ryapay_sund_rcptentry` (
  `id` int(11) NOT NULL,
  `sundry_rcpt_no` varchar(50) DEFAULT '',
  `receipt_date` date DEFAULT NULL,
  `customer_id` mediumint(9) NOT NULL DEFAULT '0',
  `revenue_code` int(11) DEFAULT '0',
  `bank_id` tinyint(4) DEFAULT '0',
  `receipt_mode` int(11) DEFAULT '0',
  `receipt_amount` double(16,2) DEFAULT '0.00',
  `remarks` text,
  `created_date` datetime DEFAULT NULL,
  `created_user` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ryapay_supexp_invoice`
--

CREATE TABLE `ryapay_supexp_invoice` (
  `id` int(11) NOT NULL,
  `supplier_id` mediumint(9) NOT NULL DEFAULT '0',
  `supexp_due` date DEFAULT NULL,
  `supexp_payterms` varchar(50) DEFAULT '',
  `supexp_invdate` date DEFAULT NULL,
  `supexp_invno` varchar(50) DEFAULT '',
  `supexp_subtotal` double(16,2) DEFAULT '0.00',
  `supexp_tax` double(16,2) DEFAULT '0.00',
  `supexp_tax_applied` varchar(20) DEFAULT '',
  `supexp_total` double(16,2) DEFAULT '0.00',
  `supexp_remarks` text,
  `supexp_status` enum('saved','issued','completed') DEFAULT 'saved',
  `created_date` datetime DEFAULT NULL,
  `created_user` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ryapay_supexp_item`
--

CREATE TABLE `ryapay_supexp_item` (
  `supexp_id` int(11) NOT NULL DEFAULT '0',
  `item_id` smallint(5) NOT NULL DEFAULT '0',
  `item_amount` double(16,2) NOT NULL DEFAULT '0.00',
  `item_quantity` smallint(5) NOT NULL DEFAULT '0',
  `item_total` double(16,2) NOT NULL DEFAULT '0.00',
  `created_date` datetime DEFAULT NULL,
  `created_user` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ryapay_suporder_invoice`
--

CREATE TABLE `ryapay_suporder_invoice` (
  `id` int(11) NOT NULL,
  `supplier_id` mediumint(9) NOT NULL DEFAULT '0',
  `porder_id` int(11) NOT NULL DEFAULT '0',
  `suporder_due` date DEFAULT NULL,
  `suporder_payterms` varchar(50) DEFAULT '',
  `suporder_invdate` date DEFAULT NULL,
  `suporder_invno` varchar(50) DEFAULT '',
  `suporder_subtotal` double(16,2) DEFAULT '0.00',
  `suporder_tax` double(16,2) DEFAULT '0.00',
  `suporder_tax_applied` varchar(20) DEFAULT '',
  `suporder_total` double(16,2) DEFAULT '0.00',
  `suporder_remarks` text,
  `suporder_status` enum('saved','issued','completed') DEFAULT 'saved',
  `created_date` datetime DEFAULT NULL,
  `created_user` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ryapay_suporder_item`
--

CREATE TABLE `ryapay_suporder_item` (
  `suporder_id` int(11) NOT NULL DEFAULT '0',
  `item_id` smallint(5) NOT NULL DEFAULT '0',
  `item_amount` double(16,2) NOT NULL DEFAULT '0.00',
  `item_quantity` smallint(5) NOT NULL DEFAULT '0',
  `item_total` double(16,2) NOT NULL DEFAULT '0.00',
  `created_date` datetime DEFAULT NULL,
  `created_user` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ryapay_supplier`
--

CREATE TABLE `ryapay_supplier` (
  `id` int(11) NOT NULL,
  `supplier_gid` varchar(50) NOT NULL DEFAULT '',
  `supplier_company` varchar(100) DEFAULT '',
  `supplier_name` varchar(50) DEFAULT '',
  `supplier_email` varchar(50) DEFAULT '',
  `supplier_phone` varchar(10) DEFAULT '',
  `supplier_gstno` varchar(20) DEFAULT '',
  `supplier_address` text,
  `supplier_city` varchar(50) DEFAULT '',
  `supplier_pincode` varchar(6) DEFAULT '',
  `supplier_state` tinyint(4) DEFAULT '0',
  `created_date` datetime DEFAULT NULL,
  `created_user` int(11) NOT NULL DEFAULT '0',
  `modified_date` datetime DEFAULT NULL,
  `status` enum('active','inactive') DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ryapay_supplier_cdnote`
--

CREATE TABLE `ryapay_supplier_cdnote` (
  `id` int(11) NOT NULL,
  `supplier_id` mediumint(9) NOT NULL DEFAULT '0',
  `note_date` date DEFAULT NULL,
  `note_number` varchar(50) DEFAULT '',
  `note_payterms` varchar(50) DEFAULT '',
  `note_due` date DEFAULT NULL,
  `note_expense_code` int(11) DEFAULT '0',
  `note_amount` double(16,2) DEFAULT '0.00',
  `note_remarks` text,
  `note_status` enum('credit','debit') DEFAULT 'debit',
  `created_date` datetime DEFAULT NULL,
  `created_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ryapay_sup_payentry`
--

CREATE TABLE `ryapay_sup_payentry` (
  `id` int(11) NOT NULL,
  `batch_no` varchar(50) DEFAULT '',
  `batch_pay_date` date DEFAULT NULL,
  `supplier_id` mediumint(9) NOT NULL DEFAULT '0',
  `batch_invtype` int(11) DEFAULT '0',
  `batch_invno` varchar(50) DEFAULT '',
  `bank_id` int(11) DEFAULT '0',
  `payment_mode` int(11) DEFAULT '0',
  `payment_amount` double(16,2) DEFAULT '0.00',
  `remarks` text,
  `created_date` datetime DEFAULT NULL,
  `created_user` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ryapay_tax_adjustment`
--

CREATE TABLE `ryapay_tax_adjustment` (
  `id` int(11) NOT NULL,
  `tax_type` int(11) DEFAULT '0',
  `tax_description` text,
  `tax_adjustment_no` varchar(50) DEFAULT '',
  `adjustment_date` date DEFAULT NULL,
  `debit_document` int(11) DEFAULT '0',
  `credit_document` int(11) DEFAULT '0',
  `amount_debit` double(16,2) DEFAULT '0.00',
  `amount_credit` double(16,2) DEFAULT '0.00',
  `tax_total` double(16,2) DEFAULT '0.00',
  `remarks` text,
  `created_date` datetime DEFAULT NULL,
  `created_user` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ryapay_tax_payment`
--

CREATE TABLE `ryapay_tax_payment` (
  `id` int(11) NOT NULL,
  `tax_type` int(11) DEFAULT '0',
  `tax_description` text,
  `tax_payment_no` varchar(50) DEFAULT '',
  `tax_payment_date` date DEFAULT NULL,
  `debit_document` int(11) DEFAULT '0',
  `credit_document` int(11) DEFAULT '0',
  `amount_debit` double(16,2) DEFAULT '0.00',
  `amount_credit` double(16,2) DEFAULT '0.00',
  `tax_total` double(16,2) DEFAULT '0.00',
  `remarks` text,
  `created_date` datetime DEFAULT NULL,
  `created_user` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ryapay_tax_settlement`
--

CREATE TABLE `ryapay_tax_settlement` (
  `id` int(11) NOT NULL,
  `tax_type` int(11) DEFAULT '0',
  `tax_description` text,
  `tax_settlement_no` varchar(50) DEFAULT '',
  `tax_date_from` date DEFAULT NULL,
  `tax_date_to` date DEFAULT NULL,
  `debit_account_code` int(11) DEFAULT '0',
  `credit_account_code` int(11) DEFAULT '0',
  `amount_debit` double(16,2) DEFAULT '0.00',
  `amount_credit` double(16,2) DEFAULT '0.00',
  `tax_total` double(16,2) DEFAULT '0.00',
  `remarks` text,
  `created_date` datetime DEFAULT NULL,
  `created_user` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ryapay_trans_track`
--

CREATE TABLE `ryapay_trans_track` (
  `id` int(11) NOT NULL,
  `merchant_id` varchar(50) DEFAULT '',
  `merchant_traxn_id` varchar(50) DEFAULT '',
  `traxn_amount` double(16,2) DEFAULT '0.00',
  `bank_id` varchar(50) DEFAULT '',
  `bankname` varchar(50) DEFAULT '',
  `trans_track_status` varchar(50) DEFAULT '',
  `vendor` varchar(20) DEFAULT '',
  `traxn_date` datetime DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `created_user` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `state`
--

CREATE TABLE `state` (
  `id` tinyint(11) NOT NULL,
  `state_name` varchar(50) DEFAULT NULL,
  `gst_code` varchar(10) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `state`
--

INSERT INTO `state` (`id`, `state_name`, `gst_code`) VALUES
(1, 'Andaman And Nicobar', '35'),
(2, 'Andhra Pradesh', '37'),
(3, 'Arunachal Pradesh', '12'),
(4, 'Assam', '18'),
(5, 'Bihar', '10'),
(6, 'Chandigarh', '04'),
(7, 'Chattisgarh', '22'),
(8, 'Dadra And Nagar Haveli', '26'),
(9, 'Daman And Diu', '26'),
(10, 'Delhi', '07'),
(11, 'Goa', '30'),
(12, 'Gujarat', '24'),
(13, 'Haryana', '06'),
(14, 'Himachal Pradesh', '02'),
(15, 'Jammu And Kashmir', '01'),
(16, 'Jharkhand', '20'),
(17, 'Karnataka', '29'),
(18, 'Kerala', '32'),
(19, 'Lakshadweep', '31'),
(20, 'Madhya Pradesh', '23'),
(21, 'Maharashtra', '27'),
(22, 'Manipur', '14'),
(23, 'Meghalaya', '17'),
(24, 'Mizoram', '15'),
(25, 'Nagaland', '13'),
(26, 'Orissa', '21'),
(27, 'Pondicherry', '34'),
(28, 'Punjab', '03'),
(29, 'Rajasthan', '08'),
(30, 'Sikkim', '11'),
(31, 'Telangana', '36'),
(32, 'Tamilnadu', '33'),
(33, 'Tripura', '16'),
(34, 'Uttar Pradesh', '09'),
(35, 'Uttarakhand', '05'),
(36, 'West Bengal', '19');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_apilog_dts`
--

CREATE TABLE `tbl_apilog_dts` (
  `id` int(11) NOT NULL,
  `service_id` varchar(100) NOT NULL,
  `api_id` varchar(10) NOT NULL,
  `api_name` varchar(100) NOT NULL,
  `api_method` varchar(100) NOT NULL,
  `api_url` text NOT NULL,
  `order_id` varchar(100) DEFAULT NULL,
  `group_id` text,
  `user_id` varchar(10) NOT NULL,
  `request_input` text NOT NULL,
  `request` text NOT NULL,
  `response` text NOT NULL,
  `access_type` enum('APP','WEB') NOT NULL DEFAULT 'APP',
  `is_deleted` int(10) NOT NULL DEFAULT '0',
  `updated_on` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `transaction_id` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_apilog_dts`
--

INSERT INTO `tbl_apilog_dts` (`id`, `service_id`, `api_id`, `api_name`, `api_method`, `api_url`, `order_id`, `group_id`, `user_id`, `request_input`, `request`, `response`, `access_type`, `is_deleted`, `updated_on`, `transaction_id`) VALUES
(1, '7', '13', 'hypto', 'doFundTransfer', 'https://partners.hypto.in/api/transfers/initiate', 'SP70604', NULL, '2', '{\"amount\":\"10\",\"payment_type\":\"UPI\",\"upi_id\":\"8374913154@ybl\",\"note\":\"Fund Transfer\",\"reference_number\":\"SP70604\"}', '{\"amount\":\"10\",\"payment_type\":\"UPI\",\"upi_id\":\"8374913154@ybl\",\"note\":\"Fund Transfer\",\"reference_number\":\"SP70604\"}', '{\"success\":false,\"message\":\"You have exceeded the number of attempts. Please try again after sometime\"}', 'APP', 0, '2021-08-30 21:28:56', NULL),
(2, '7', '13', 'hypto', 'doFundTransfer', 'https://partners.hypto.in/api/transfers/initiate', 'SP70605', NULL, '2', '{\"amount\":\"10\",\"payment_type\":\"UPI\",\"upi_id\":\"8374913154@ybl\",\"note\":\"Fund Transfer\",\"reference_number\":\"SP70605\"}', '{\"amount\":\"10\",\"payment_type\":\"UPI\",\"upi_id\":\"8374913154@ybl\",\"note\":\"Fund Transfer\",\"reference_number\":\"SP70605\"}', '{\"success\":false,\"message\":\"You have exceeded the number of attempts. Please try again after sometime\"}', 'APP', 0, '2021-08-30 21:30:18', NULL),
(3, '7', '14', 'RAZORPAY', 'doFundTransfer', 'https://api.razorpay.com/v1/payouts', 'SP70606', NULL, '2', '\"{\\n                        \\\"account_number\\\": \\\"4564567550186219\\\",\\n                        \\\"fund_account_id\\\": \\\"\\\",\\n                        \\\"amount\\\": 1000,\\n                        \\\"currency\\\": \\\"INR\\\",\\n                        \\\"mode\\\": \\\"UPI\\\",\\n                        \\\"purpose\\\": \\\"payout\\\",\\n                        \\\"queue_if_low_balance\\\": true,\\n                        \\\"reference_id\\\": \\\"SP70606\\\"\\n                      }\"', '\"{\\n                        \\\"account_number\\\": \\\"4564567550186219\\\",\\n                        \\\"fund_account_id\\\": \\\"\\\",\\n                        \\\"amount\\\": 1000,\\n                        \\\"currency\\\": \\\"INR\\\",\\n                        \\\"mode\\\": \\\"UPI\\\",\\n                        \\\"purpose\\\": \\\"payout\\\",\\n                        \\\"queue_if_low_balance\\\": true,\\n                        \\\"reference_id\\\": \\\"SP70606\\\"\\n                      }\"', '{\"error\":{\"code\":\"BAD_REQUEST_ERROR\",\"description\":\"The fund account id field is required when fund account is not present.\",\"source\":null,\"step\":null,\"reason\":null,\"metadata\":[],\"field\":\"fund_account_id\"}}', 'WEB', 0, '2021-08-30 21:45:59', NULL),
(4, '7', '14', 'RAZORPAY', 'doFundTransfer', 'https://partners.hypto.in/api/verify/upi_id', 'SP70607', NULL, '2', '{\"upi_id\":\"7273813332@ybl\",\"reference_number\":\"SP70607\"}', '{\"upi_id\":\"7273813332@ybl\",\"reference_number\":\"SP70607\"}', '{\"success\":true,\"message\":\"success\",\"data\":{\"id\":47351297,\"txn_time\":\"2021-08-30 21:58:53\",\"created_at\":\"2021-08-30 21:58:53\",\"txn_type\":\"Verify UPI\",\"status\":\"COMPLETED\",\"amount\":0,\"charges_gst\":1.770000000000000017763568394002504646778106689453125,\"settled_amount\":1.770000000000000017763568394002504646778106689453125,\"bank_ref_num\":\"124286245062\",\"closing_balance\":827.220000000000027284841053187847137451171875,\"payment_type\":\"HYPTO_TRANSFER\",\"reference_number\":\"SP70607\",\"verify_reason\":\"\",\"verify_upi_id\":\"7273813332@ybl\",\"verify_upi_id_holder\":\"Mr Ashish Budhraja\"}}', 'APP', 0, '2021-08-30 21:58:55', NULL),
(5, '7', '13', 'hypto', 'doFundTransfer', 'https://partners.hypto.in/api/transfers/initiate', 'SP70608', NULL, '2', '{\"amount\":\"1\",\"payment_type\":\"UPI\",\"upi_id\":\"7273813332@ybl\",\"note\":\"Fund Transfer\",\"reference_number\":\"SP70608\"}', '{\"amount\":\"1\",\"payment_type\":\"UPI\",\"upi_id\":\"7273813332@ybl\",\"note\":\"Fund Transfer\",\"reference_number\":\"SP70608\"}', '{\"success\":false,\"message\":\"You have exceeded the number of attempts. Please try again after sometime\"}', 'APP', 0, '2021-08-30 22:08:08', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_transaction_dtls`
--

CREATE TABLE `tbl_transaction_dtls` (
  `id` int(11) NOT NULL,
  `service_id` varchar(100) DEFAULT NULL,
  `order_id` varchar(100) DEFAULT NULL,
  `group_id` text,
  `user_id` varchar(100) NOT NULL,
  `mobileno` varchar(100) NOT NULL,
  `operator_id` varchar(100) DEFAULT NULL,
  `api_id` varchar(10) NOT NULL,
  `recipient_id` varchar(100) DEFAULT NULL,
  `transaction_status` varchar(10) NOT NULL,
  `transaction_id` varchar(100) DEFAULT NULL,
  `transaction_type` varchar(100) DEFAULT NULL,
  `trans_date` varchar(100) NOT NULL,
  `imps_name` varchar(100) DEFAULT NULL,
  `bank_transaction_id` varchar(100) DEFAULT NULL,
  `total_amount` varchar(100) NOT NULL,
  `charge_amount` varchar(100) NOT NULL,
  `basic_amount` varchar(100) DEFAULT NULL,
  `debit_amount` varchar(100) DEFAULT NULL,
  `credit_amount` varchar(100) DEFAULT NULL,
  `charges_tax` varchar(100) DEFAULT NULL,
  `commission` varchar(100) DEFAULT NULL,
  `commission_tax` varchar(100) DEFAULT NULL,
  `commission_tds` varchar(100) DEFAULT NULL,
  `balance` varchar(100) DEFAULT NULL,
  `order_status` enum('SUCCESS','FAILED','PENDING','REFUNDED','Refund Pending') NOT NULL DEFAULT 'FAILED',
  `id_deleted` int(10) NOT NULL DEFAULT '0',
  `updated_on` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `transaction_msg` text,
  `remarks` text,
  `CCFcharges` varchar(80) DEFAULT NULL,
  `Cashback` varchar(90) DEFAULT NULL,
  `TDSamount` varchar(50) DEFAULT NULL,
  `PayableCharge` varchar(50) DEFAULT NULL,
  `FinalAmount` varchar(50) DEFAULT NULL,
  `response_msg` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `txnRespType` text,
  `inputParams` text,
  `CustConvFee` text,
  `RespAmount` text,
  `RespBillDate` varchar(100) DEFAULT NULL,
  `RespBillNumber` varchar(100) DEFAULT NULL,
  `RespBillPeriod` varchar(100) DEFAULT NULL,
  `RespCustomerName` text,
  `RespDueDate` varchar(100) DEFAULT NULL,
  `request_amount` text,
  `sync_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `billerID` text,
  `billPayType` text,
  `bill_orderId` text,
  `access_type` varchar(20) DEFAULT NULL,
  `ip_address` varchar(100) DEFAULT NULL,
  `source` varchar(20) DEFAULT NULL,
  `bank_account_no` text,
  `account_holder_name` text,
  `transactionamount` int(123) DEFAULT NULL,
  `superMerchantId` varchar(200) DEFAULT NULL,
  `rrnno` text,
  `client_reference_id` text,
  `aadharnumber` text,
  `aeps_balance` text,
  `aeps_bank_id` text,
  `retailer_commision` text,
  `distributor_commision` text,
  `admin_commision` text,
  `fpTransactionId` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_transaction_dtls`
--

INSERT INTO `tbl_transaction_dtls` (`id`, `service_id`, `order_id`, `group_id`, `user_id`, `mobileno`, `operator_id`, `api_id`, `recipient_id`, `transaction_status`, `transaction_id`, `transaction_type`, `trans_date`, `imps_name`, `bank_transaction_id`, `total_amount`, `charge_amount`, `basic_amount`, `debit_amount`, `credit_amount`, `charges_tax`, `commission`, `commission_tax`, `commission_tds`, `balance`, `order_status`, `id_deleted`, `updated_on`, `transaction_msg`, `remarks`, `CCFcharges`, `Cashback`, `TDSamount`, `PayableCharge`, `FinalAmount`, `response_msg`, `txnRespType`, `inputParams`, `CustConvFee`, `RespAmount`, `RespBillDate`, `RespBillNumber`, `RespBillPeriod`, `RespCustomerName`, `RespDueDate`, `request_amount`, `sync_time`, `billerID`, `billPayType`, `bill_orderId`, `access_type`, `ip_address`, `source`, `bank_account_no`, `account_holder_name`, `transactionamount`, `superMerchantId`, `rrnno`, `client_reference_id`, `aadharnumber`, `aeps_balance`, `aeps_bank_id`, `retailer_commision`, `distributor_commision`, `admin_commision`, `fpTransactionId`) VALUES
(28, '7', 'SP70637', NULL, '2', '9000040257', '42', '12', NULL, '', '', 'UPI_VERIFICATION', '2021-09-04 10:54:04', 'Tati Srikanth', '', '3', '', NULL, '', NULL, '', NULL, NULL, NULL, '', 'SUCCESS', 0, '2021-09-04 10:54:04', '', '', '', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '2021-09-04 05:24:04', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(29, '7', 'SP70638', NULL, '2', '9000040257', '42', '12', NULL, '', '', 'UPI_VERIFICATION', '2021-09-04 10:54:25', 'Tati Srikanth', '', '3', '', NULL, '', NULL, '', NULL, NULL, NULL, '', 'SUCCESS', 0, '2021-09-04 10:54:25', '', '', '', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '2021-09-04 05:24:25', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(30, '7', 'SP70639', NULL, '2', '9000040257', '42', '12', NULL, '', '', 'UPI_VERIFICATION', '2021-09-04 10:57:03', 'Tati Srikanth', '', '3', '', NULL, '', NULL, '', NULL, NULL, NULL, '', 'SUCCESS', 0, '2021-09-04 10:57:03', '', '', '', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '2021-09-04 05:27:03', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(31, '7', 'SP70640', NULL, '2', '9000040257', '42', '12', NULL, '', '', 'UPI_VERIFICATION', '2021-09-04 20:47:07', 'Tati Srikanth', '', '3', '', NULL, '', NULL, '', NULL, NULL, NULL, '', 'SUCCESS', 0, '2021-09-04 20:47:07', '', '', '', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '2021-09-04 15:17:07', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32, '7', 'SP70641', NULL, '2', '9000040257', '42', '12', NULL, '', '', 'UPI_VERIFICATION', '2021-09-04 20:48:31', 'Tati Srikanth', '', '3', '', NULL, '', NULL, '', NULL, NULL, NULL, '', 'SUCCESS', 0, '2021-09-04 20:48:31', '', '', '', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '2021-09-04 15:18:31', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(33, '7', 'SP70642', NULL, '2', '9000040257', '42', '12', '8', 'FAILED', '0', 'UPI', '2021-09-04 20:48:56', 'Tati Srikanth', '', '10', '0', NULL, '0', NULL, '0', '0', '0', '0', '0', 'FAILED', 0, '2021-09-30 16:57:02', '', '', '10', '2', '0.1', '8.1', '18.1', NULL, '', '', '', '', '', '', '', '', '', '10', '2021-09-04 15:18:56', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(34, '7', 'SP70642', NULL, '2', '9000040257', '42', '12', '8', 'UNAUTHORIZ', '', 'UPI', '2021-09-04 20:48:57', 'Tati Srikanth', '', '10', '', NULL, '', NULL, '', '', '', '', '', 'FAILED', 0, '2021-09-04 20:48:57', 'Remote IP not whitelisted. Please ask your admin to whitelist Remote IP: 119.18.54.51 from Payouts dashboard under developer\'s setting', '', '', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '10', '2021-09-04 15:18:57', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(37, '7', 'SP70645', NULL, '2', '9000040257', '42', '14', '8', 'FAILED', '0', 'UPI', '2021-09-04 21:02:45', 'Tati Srikanth', '', '6', '0', NULL, '0', NULL, '0', '0', '0', '0', '0', 'FAILED', 0, '2021-09-30 16:56:44', '', '', '10', '2', '0.1', '8.1', '14.1', NULL, '', '', '', '', '', '', '', '', '', '6', '2021-09-04 15:32:45', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(38, '7', 'SP70646', NULL, '2', '9000040257', '42', '14', '8', 'FAILED', '0', 'UPI', '2021-09-04 21:07:52', 'Tati Srikanth', '', '6', '0', NULL, '0', NULL, '0', '0', '0', '0', '0', 'FAILED', 0, '2021-09-30 16:56:28', '', '', '10', '2', '0.1', '8.1', '14.1', NULL, '', '', '', '', '', '', '', '', '', '6', '2021-09-04 15:37:52', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(39, '7', 'SP70647', NULL, '2', '7036989198', '42', '14', NULL, '', '48432893', 'UPI_VERIFICATION', '2021-09-04 21:09:10', 'Tati Srikanth', '124751980985', '3', '', NULL, '1.77', NULL, '1.77', NULL, NULL, NULL, '764.64', 'SUCCESS', 0, '2021-09-04 21:09:10', '', '', '', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '2021-09-04 15:39:10', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_wallet_trans_dtls`
--

CREATE TABLE `tbl_wallet_trans_dtls` (
  `id` int(11) NOT NULL,
  `service_id` varchar(100) DEFAULT NULL,
  `order_id` varchar(100) DEFAULT NULL,
  `group_id` text,
  `user_id` varchar(100) NOT NULL,
  `operator_id` varchar(100) DEFAULT NULL,
  `api_id` varchar(10) DEFAULT NULL,
  `transaction_status` varchar(191) DEFAULT NULL,
  `response_msg` text,
  `bank_trans_id` varchar(100) DEFAULT NULL,
  `transaction_type` varchar(100) NOT NULL,
  `transaction_id` varchar(100) NOT NULL,
  `trans_date` varchar(100) NOT NULL,
  `payment_type` enum('LOAD_WALLET','SERVICE','COMMISSION','REFUND','OFFICE_EXPENSES') DEFAULT NULL,
  `payment_mode` varchar(191) DEFAULT NULL,
  `gateway_mode` varchar(100) DEFAULT NULL,
  `expense_category` int(11) DEFAULT NULL,
  `total_amount` varchar(100) NOT NULL,
  `charge_amount` varchar(100) DEFAULT NULL,
  `balance` varchar(100) DEFAULT NULL,
  `remarks` text,
  `CCFcharges` varchar(80) DEFAULT NULL,
  `Cashback` varchar(90) DEFAULT NULL,
  `TDSamount` varchar(90) DEFAULT NULL,
  `PayableCharge` varchar(90) DEFAULT NULL,
  `FinalAmount` varchar(90) DEFAULT NULL,
  `id_deleted` int(10) NOT NULL DEFAULT '0',
  `updated_on` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_wallet_trans_dtls`
--

INSERT INTO `tbl_wallet_trans_dtls` (`id`, `service_id`, `order_id`, `group_id`, `user_id`, `operator_id`, `api_id`, `transaction_status`, `response_msg`, `bank_trans_id`, `transaction_type`, `transaction_id`, `trans_date`, `payment_type`, `payment_mode`, `gateway_mode`, `expense_category`, `total_amount`, `charge_amount`, `balance`, `remarks`, `CCFcharges`, `Cashback`, `TDSamount`, `PayableCharge`, `FinalAmount`, `id_deleted`, `updated_on`) VALUES
(1, NULL, 'BY SRIKANTH', NULL, '2', NULL, NULL, 'SUCCESS', '', 'BY SRIKANTH', 'CREDIT', '', '2021-08-28 13:27:05', 'LOAD_WALLET', 'DIRECT TRANSFER', NULL, NULL, '2000', NULL, '2000', NULL, NULL, NULL, NULL, NULL, NULL, 0, '2021-08-28 07:57:05'),
(2, '7', 'SP70602', NULL, '2', '42', '13', NULL, NULL, NULL, 'DEBIT', '', '2021-08-30 21:28:12', 'SERVICE', 'Bank Verification Charges', NULL, NULL, '3', '0.00', '1997', NULL, NULL, NULL, NULL, NULL, NULL, 0, '2021-08-30 21:28:12'),
(3, '7', 'SP70602', NULL, '1', '42', '13', '', NULL, NULL, 'CREDIT', '', '2021-08-30 21:28:12', 'COMMISSION', 'Commission by bank verification', NULL, NULL, '3', '0.00', '13119.836', NULL, NULL, NULL, NULL, NULL, NULL, 0, '2021-08-30 21:28:12'),
(4, '7', 'SP70604', NULL, '2', '42', '13', 'Success', NULL, NULL, 'DEBIT', '', '2021-08-30 21:28:54', 'SERVICE', 'Money Transfer By Wallet Balance', NULL, NULL, '18.1', '0.00', '1978.9', NULL, '10', '2', '0.1', '8.1', '18.1', 0, '2021-08-30 21:28:54'),
(5, '7', 'SP70604', NULL, '2', '42', '13', 'Success', NULL, NULL, 'CREDIT', '', '2021-08-30 21:28:56', 'SERVICE', 'Money Transfer By Wallet Balance', NULL, NULL, '18.1', '0.00', '1997', NULL, NULL, NULL, NULL, NULL, NULL, 0, '2021-08-30 21:28:56'),
(6, '7', 'SP70605', NULL, '2', '42', '13', 'Success', NULL, NULL, 'DEBIT', '', '2021-08-30 21:30:16', 'SERVICE', 'Money Transfer By Wallet Balance', NULL, NULL, '18.1', '0.00', '1978.9', NULL, '10', '2', '0.1', '8.1', '18.1', 0, '2021-08-30 21:30:16'),
(7, '7', 'SP70605', NULL, '2', '42', '13', 'Success', NULL, NULL, 'CREDIT', '', '2021-08-30 21:30:18', 'SERVICE', 'Money Transfer By Wallet Balance', NULL, NULL, '18.1', '0.00', '1997', NULL, NULL, NULL, NULL, NULL, NULL, 0, '2021-08-30 21:30:18'),
(8, '7', 'SP70606', NULL, '2', '42', '14', 'Success', NULL, NULL, 'DEBIT', '', '2021-08-30 21:45:58', 'SERVICE', 'Money Transfer By Wallet Balance', NULL, NULL, '18.1', '0.00', '1978.9', NULL, '10', '2', '0.1', '8.1', '18.1', 0, '2021-08-30 21:45:58'),
(9, '7', 'SP70606', NULL, '2', '42', '14', NULL, NULL, NULL, 'CREDIT', '', '2021-08-30 21:45:59', 'SERVICE', 'Money Transfer By Wallet Balance', NULL, NULL, '18.1', '0.00', '1997', NULL, NULL, NULL, NULL, NULL, NULL, 0, '2021-08-30 21:45:59'),
(10, '7', 'SP70607', NULL, '2', '42', '14', NULL, NULL, NULL, 'DEBIT', '47351297', '2021-08-30 21:58:55', 'SERVICE', 'Bank Verification Charges', NULL, NULL, '3', '0.00', '1994', NULL, NULL, NULL, NULL, NULL, NULL, 0, '2021-08-30 21:58:55');

-- --------------------------------------------------------

--
-- Table structure for table `test_customer`
--

CREATE TABLE `test_customer` (
  `id` int(11) NOT NULL,
  `customer_gid` varchar(50) NOT NULL DEFAULT '',
  `customer_name` varchar(255) DEFAULT '',
  `customer_email` varchar(255) DEFAULT '',
  `customer_phone` varchar(255) DEFAULT '',
  `customer_gstno` varchar(255) DEFAULT '',
  `created_date` datetime DEFAULT NULL,
  `created_merchant` int(11) NOT NULL DEFAULT '0',
  `modified_date` datetime DEFAULT NULL,
  `status` enum('active','inactive') DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `test_customer_address`
--

CREATE TABLE `test_customer_address` (
  `id` int(11) NOT NULL,
  `customer_id` smallint(5) NOT NULL DEFAULT '0',
  `address` text NOT NULL,
  `pincode` varchar(20) NOT NULL DEFAULT '',
  `city` varchar(50) NOT NULL DEFAULT '',
  `state_id` smallint(5) NOT NULL DEFAULT '0',
  `status` enum('active','inactive') DEFAULT 'active',
  `created_date` datetime DEFAULT NULL,
  `created_merchant` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `test_dispute`
--

CREATE TABLE `test_dispute` (
  `id` int(11) NOT NULL,
  `dispute_gid` varchar(255) NOT NULL DEFAULT '',
  `payment_id` int(11) NOT NULL DEFAULT '0',
  `dispute_amount` double(16,2) NOT NULL DEFAULT '0.00',
  `dispute_type` enum('retrieval','chargeback','pre_arbitration','arbitration','fraud') DEFAULT NULL,
  `dispute_status` enum('open','under_review','lost','won','closed') DEFAULT 'open',
  `dispute_respond` varchar(255) DEFAULT '',
  `created_date` datetime DEFAULT NULL,
  `created_merchant` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `test_invoice`
--

CREATE TABLE `test_invoice` (
  `id` int(11) NOT NULL,
  `invoice_gid` varchar(50) NOT NULL DEFAULT '',
  `invoice_receiptno` varchar(255) DEFAULT '',
  `merchant_company` varchar(50) NOT NULL DEFAULT '',
  `merchant_gstno` varchar(50) NOT NULL DEFAULT '',
  `merchant_panno` varchar(50) NOT NULL DEFAULT '',
  `invoice_amount` double(16,2) NOT NULL DEFAULT '0.00',
  `invoice_description` varchar(255) DEFAULT '',
  `invoice_billing_to` smallint(5) NOT NULL DEFAULT '0',
  `customer_gstno` varchar(50) DEFAULT '',
  `customer_email` varchar(50) NOT NULL DEFAULT '',
  `customer_phone` varchar(50) NOT NULL DEFAULT '',
  `invoice_billing_address` smallint(5) NOT NULL DEFAULT '0',
  `invoice_shipping_address` smallint(5) NOT NULL DEFAULT '0',
  `invoice_subtotal` double(16,2) NOT NULL DEFAULT '0.00',
  `invoice_tax_amount` double(16,2) NOT NULL DEFAULT '0.00',
  `tax_applied` varchar(10) NOT NULL DEFAULT '',
  `invoice_issue_date` datetime DEFAULT NULL,
  `invoice_expiry_date` datetime DEFAULT NULL,
  `invoice_notes` text,
  `invoice_terms_cond` text,
  `invoice_payid` varchar(50) DEFAULT NULL,
  `invoice_paylink` varchar(255) DEFAULT '',
  `invoice_status` enum('saved','issued','partially_paid','paid','cancelled','expired') DEFAULT 'saved',
  `created_date` datetime DEFAULT NULL,
  `created_merchant` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `test_invoice_item`
--

CREATE TABLE `test_invoice_item` (
  `invoice_id` int(11) NOT NULL DEFAULT '0',
  `item_id` smallint(5) NOT NULL DEFAULT '0',
  `item_amount` double(16,2) NOT NULL DEFAULT '0.00',
  `item_quantity` smallint(5) NOT NULL DEFAULT '0',
  `item_total` double(16,2) NOT NULL DEFAULT '0.00',
  `created_date` datetime DEFAULT NULL,
  `created_merchant` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `test_item`
--

CREATE TABLE `test_item` (
  `id` int(11) NOT NULL,
  `item_gid` varchar(50) NOT NULL DEFAULT '',
  `item_name` varchar(255) DEFAULT '',
  `item_description` text,
  `item_amount` double(16,2) NOT NULL DEFAULT '0.00',
  `item_status` enum('active','inactive') DEFAULT 'active',
  `created_date` datetime DEFAULT NULL,
  `created_merchant` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `test_merchantapi`
--

CREATE TABLE `test_merchantapi` (
  `id` int(11) NOT NULL,
  `api_key` varchar(255) NOT NULL,
  `api_secret` varchar(255) NOT NULL,
  `api_expiry` datetime DEFAULT NULL,
  `request_hashkey` varchar(255) DEFAULT NULL,
  `request_salt_key` varchar(255) NOT NULL,
  `response_salt_key` varchar(255) NOT NULL,
  `encryption_request_key` varchar(255) NOT NULL,
  `encryption_response_key` varchar(255) NOT NULL,
  `response_hashkey` varchar(255) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `created_merchant` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `test_merchantapi`
--

INSERT INTO `test_merchantapi` (`id`, `api_key`, `api_secret`, `api_expiry`, `request_hashkey`, `request_salt_key`, `response_salt_key`, `encryption_request_key`, `encryption_response_key`, `response_hashkey`, `created_date`, `created_merchant`) VALUES
(1, 'ryapay_test_CaLCDWK9TDSxa0d2', '6iR7KNBDJmALn38H', NULL, '5QVz1GewFX8oxcz2', '0nBE5CtNTSe1p9rz', 'cyrjlOgZQooI66Hj', 'qxc2ULiPscI0bL69', 'Gr7ETZPpBXjNaBZG', '3s4M2WeV1aG2yAvZ', '2023-03-16 04:20:50', 1),
(2, 'ryapay_test_2iCOHdH8fWCDdGmf', 'm4DkQARHJy35hIo7', NULL, 'mDZMTp4NqqSCDbtH', 'qGW5sRNjiGsCYulx', 'nPMhr5MWTNzoDFd8', 'NrgLlQ1DbppYCMy4', 'U8uyE1f6EeM2NjLJ', 's5JGFe2f3g7asNER', '2023-06-13 04:53:42', 5),
(3, 'ryapay_test_IBlpGzf3M2QDV0CJ', 'Xp0LEFHdu9xrLtWi', NULL, 'etyd6WlzWfo0VMRj', '33eoD9z6OMT0KzlP', 'oab96T4yF7OJZgVY', 'SJxNUyHPUJGpvH9Z', 'ZBO47HYPZBjTa8hA', 'TDPP5HoOpnN80Lip', '2023-06-13 04:53:46', 5);

-- --------------------------------------------------------

--
-- Table structure for table `test_notification`
--

CREATE TABLE `test_notification` (
  `id` int(11) NOT NULL,
  `message` varchar(255) DEFAULT NULL,
  `notify_type` varchar(50) DEFAULT NULL,
  `category` enum('notification','message') DEFAULT 'notification',
  `created_date` datetime DEFAULT NULL,
  `seen` enum('Y','N') DEFAULT 'N',
  `notify_from` int(11) DEFAULT '0',
  `notify_to` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `test_order`
--

CREATE TABLE `test_order` (
  `id` int(11) NOT NULL,
  `order_gid` varchar(255) NOT NULL DEFAULT '',
  `order_amount` double(16,2) NOT NULL DEFAULT '0.00',
  `order_attempts` tinyint(4) NOT NULL DEFAULT '0',
  `order_receipt` varchar(255) DEFAULT '',
  `order_status` enum('Paid','Created','Attempted') DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `created_merchant` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `test_paylink`
--

CREATE TABLE `test_paylink` (
  `id` int(11) NOT NULL,
  `paylink_gid` varchar(255) NOT NULL DEFAULT '',
  `paylink_for` text,
  `paylink_amount` double(16,2) NOT NULL DEFAULT '0.00',
  `paylink_customer_email` varchar(50) DEFAULT '',
  `email_paylink` enum('Y','N') DEFAULT 'N',
  `paylink_customer_mobile` varchar(10) DEFAULT '',
  `mobile_paylink` enum('Y','N') DEFAULT 'N',
  `paylink_receipt` varchar(10) DEFAULT '',
  `paylink_payid` varchar(50) DEFAULT NULL,
  `paylink_expiry` datetime DEFAULT NULL,
  `paylink_link` varchar(255) DEFAULT '',
  `paylink_notes` text,
  `paylink_partial` enum('Y','N') DEFAULT NULL,
  `paylink_partial_amount` double(16,2) NOT NULL DEFAULT '0.00',
  `paylink_status` enum('issued','partially_paid','paid','cancelled','expired','failed') DEFAULT 'issued',
  `paylink_auto_reminder` enum('Y','N') DEFAULT NULL,
  `paylink_type` enum('smart','quick') DEFAULT 'smart',
  `created_date` datetime DEFAULT NULL,
  `created_merchant` int(11) NOT NULL DEFAULT '0',
  `created_employee` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `test_paylink`
--

INSERT INTO `test_paylink` (`id`, `paylink_gid`, `paylink_for`, `paylink_amount`, `paylink_customer_email`, `email_paylink`, `paylink_customer_mobile`, `mobile_paylink`, `paylink_receipt`, `paylink_payid`, `paylink_expiry`, `paylink_link`, `paylink_notes`, `paylink_partial`, `paylink_partial_amount`, `paylink_status`, `paylink_auto_reminder`, `paylink_type`, `created_date`, `created_merchant`, `created_employee`) VALUES
(1, 'plnk_GnHOyyd3ijurCQEE', 'test', 10.00, '', 'N', '', 'N', '', 'E3nFw0', '2023-02-14 10:19:41', 'https://pg.rockpay.in/t/p/s-p/E3nFw0', NULL, NULL, 0.00, 'issued', NULL, 'quick', '2023-02-13 10:19:41', 1, 0),
(2, 'plnk_d1BenLq1hKoYsbcJ', 'test', 1.00, '', 'N', '', 'N', '', 'nNeIva', '2023-03-17 16:17:02', 'https://pg.rockpay.in/t/p/s-p/nNeIva', NULL, NULL, 0.00, 'issued', NULL, 'quick', '2023-03-16 16:17:02', 1, 0),
(3, 'plnk_cUSUVH0WOiul7sqq', 'test', 11.00, '', 'N', '', 'N', '', 'ZYPh7N', '2023-03-17 16:31:48', 'https://pg.rockpay.in/t/p/s-p/ZYPh7N', NULL, NULL, 0.00, 'issued', NULL, 'quick', '2023-03-16 16:31:48', 1, 0),
(4, 'plnk_Dh0UY0qHydHDsqZF', 'test', 1.00, 'ganesh.askan@gmail.com', 'Y', '9789501590', 'Y', 'test', 'sV75Yz', NULL, 'https://rockpay.bestdemo.site/t/p/s-p/sV75Yz', NULL, 'N', 0.00, 'issued', 'N', 'smart', '2023-06-13 16:55:17', 5, 0),
(5, 'plnk_4CeJLv0xuQZwR4rB', 'testing', 100.00, '', 'N', '', 'N', '', 'gmOO2D', '2023-09-06 18:30:39', 'http://127.0.0.1:8000/t/p/s-p/gmOO2D', NULL, NULL, 0.00, 'issued', NULL, 'quick', '2023-09-05 18:30:39', 1, 0),
(6, 'plnk_cO4lnrTZKrf9hm9C', 'testing', 100.00, 'ciamala.askan@gmail.com', 'Y', '9750070004', 'Y', 'test', '39EYEs', '2023-09-05 00:00:00', 'http://127.0.0.1:8000/t/p/s-p/39EYEs', 'test', 'N', 0.00, 'issued', 'N', 'smart', '2023-09-05 18:31:35', 1, 0),
(7, 'plnk_ReaBEfT7SrDtLYiE', '111', 100.00, '', 'N', '', 'N', '', 'Snq7Uf', '2023-09-06 18:58:42', 'http://127.0.0.1:8000/t/p/s-p/Snq7Uf', NULL, NULL, 0.00, 'issued', NULL, 'quick', '2023-09-05 18:58:42', 1, 0),
(8, 'plnk_tWpnfOxbk8TprBVB', '1', 1.00, '', 'N', '', 'N', '', 'QRGOih', '2023-09-07 19:23:48', 'http://127.0.0.1:8000/t/p/s-p/QRGOih', NULL, NULL, 0.00, 'issued', NULL, 'quick', '2023-09-06 19:23:48', 1, 0),
(9, 'plnk_rjoNBWiltnCkNE4M', '2', 2.00, '', 'N', '', 'N', '', 'le98MB', '2023-09-07 19:23:52', 'http://127.0.0.1:8000/t/p/s-p/le98MB', NULL, NULL, 0.00, 'issued', NULL, 'quick', '2023-09-06 19:23:52', 1, 0),
(10, 'plnk_46RWUipH0wTbi1t3', '3', 3.00, '', 'N', '', 'N', '', 'vcPer8', '2023-09-07 19:23:55', 'http://127.0.0.1:8000/t/p/s-p/vcPer8', NULL, NULL, 0.00, 'issued', NULL, 'quick', '2023-09-06 19:23:55', 1, 0),
(11, 'plnk_WJ1W0O43loNFHtvh', '4', 4.00, '', 'N', '', 'N', '', 'b4XvLV', '2023-09-07 19:23:58', 'http://127.0.0.1:8000/t/p/s-p/b4XvLV', NULL, NULL, 0.00, 'issued', NULL, 'quick', '2023-09-06 19:23:58', 1, 0),
(12, 'plnk_vxz7P1yR2GeRnLen', '5', 5.00, '', 'N', '', 'N', '', '0iC2jM', '2023-09-07 19:24:03', 'http://127.0.0.1:8000/t/p/s-p/0iC2jM', NULL, NULL, 0.00, 'issued', NULL, 'quick', '2023-09-06 19:24:03', 1, 0),
(13, 'plnk_npOnQzyN5kKHO08m', '6', 6.00, '', 'N', '', 'N', '', 'SGpAdb', '2023-09-07 19:24:06', 'http://127.0.0.1:8000/t/p/s-p/SGpAdb', NULL, NULL, 0.00, 'issued', NULL, 'quick', '2023-09-06 19:24:06', 1, 0),
(14, 'plnk_TyIUW3HmvpkhJ4Ha', 'test', 100.00, NULL, 'N', NULL, 'N', NULL, 'ggi67u', NULL, 'http://127.0.0.1:8000/t/p/s-p/ggi67u', NULL, 'N', 0.00, 'issued', 'N', 'smart', '2023-09-07 13:21:12', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `test_payment`
--

CREATE TABLE `test_payment` (
  `id` int(11) NOT NULL,
  `transaction_gid` varchar(255) NOT NULL,
  `vendor_transaction_id` varchar(255) DEFAULT '',
  `bank_ref_no` varchar(255) DEFAULT '',
  `order_id` int(11) NOT NULL,
  `transaction_response` varchar(255) DEFAULT '',
  `transaction_method_id` int(11) DEFAULT '0',
  `transaction_type` varchar(50) DEFAULT '',
  `transaction_username` varchar(50) DEFAULT '',
  `transaction_email` varchar(255) NOT NULL,
  `transaction_contact` varchar(10) NOT NULL,
  `transaction_amount` double(16,2) NOT NULL,
  `transaction_status` enum('authorized','captured','refunded','failed','cancelled','success','pending') DEFAULT NULL,
  `transaction_mode` varchar(10) DEFAULT NULL,
  `transaction_notes` varchar(255) DEFAULT NULL,
  `transaction_description` longtext,
  `rupayapay_tax` double(16,2) NOT NULL,
  `goods_service_tax` double(16,2) NOT NULL,
  `android_status` enum('Y','N') DEFAULT 'N',
  `adjustment_done` enum('Y','N') DEFAULT 'N',
  `transaction_date` datetime DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `created_merchant` int(11) NOT NULL,
  `created_employee` int(11) DEFAULT '0',
  `udf1` varchar(255) DEFAULT '',
  `udf2` varchar(255) DEFAULT '',
  `udf3` varchar(255) DEFAULT '',
  `udf4` varchar(255) DEFAULT '',
  `udf5` varchar(255) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `test_payment_page`
--

CREATE TABLE `test_payment_page` (
  `id` int(11) NOT NULL,
  `page_gid` varchar(50) DEFAULT '',
  `page_logo` varchar(255) DEFAULT '',
  `page_name` varchar(50) DEFAULT '',
  `page_title` varchar(255) DEFAULT '',
  `social_enable` enum('Y','N') DEFAULT 'N',
  `contactus_enable` enum('Y','N') DEFAULT 'N',
  `term_condition_enable` enum('Y','N') DEFAULT 'N',
  `contactus_email` varchar(255) DEFAULT '',
  `contactus_mobile` varchar(255) DEFAULT '',
  `term_condition` text,
  `page_url` varchar(255) DEFAULT '',
  `payment_total` double(16,2) DEFAULT '0.00',
  `page_status` enum('active','inactive') DEFAULT 'active',
  `created_date` datetime DEFAULT NULL,
  `created_merchant` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `test_payment_page`
--

INSERT INTO `test_payment_page` (`id`, `page_gid`, `page_logo`, `page_name`, `page_title`, `social_enable`, `contactus_enable`, `term_condition_enable`, `contactus_email`, `contactus_mobile`, `term_condition`, `page_url`, `payment_total`, `page_status`, `created_date`, `created_merchant`) VALUES
(1, 'VknLhE', '', 'singleproductpage', 'test', 'N', 'N', 'N', NULL, NULL, NULL, '6WmoFlX3', 11.00, 'active', '2023-03-01 16:21:21', 1);

-- --------------------------------------------------------

--
-- Table structure for table `test_payment_page_info`
--

CREATE TABLE `test_payment_page_info` (
  `id` int(11) NOT NULL,
  `page_id` int(11) NOT NULL DEFAULT '0',
  `transaction_id` varchar(255) NOT NULL DEFAULT '',
  `order_id` varchar(255) NOT NULL DEFAULT '',
  `payment_page_email` varchar(50) NOT NULL DEFAULT '',
  `payment_page_mobile` varchar(10) NOT NULL DEFAULT '',
  `payment_page_amount` double(16,2) NOT NULL DEFAULT '0.00',
  `payment_page_detail` mediumtext,
  `payment_page_status` enum('paid','failed','cancelled') DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `merchant_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `test_payment_page_input`
--

CREATE TABLE `test_payment_page_input` (
  `payment_page_id` int(11) DEFAULT '0',
  `input_label` varchar(50) DEFAULT '',
  `input_name` varchar(50) DEFAULT '',
  `input_type` varchar(50) DEFAULT '',
  `input_value` varchar(50) DEFAULT '',
  `input_option` varchar(255) DEFAULT '',
  `input_mandatory` enum('true','false') DEFAULT 'false'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `test_payment_page_input`
--

INSERT INTO `test_payment_page_input` (`payment_page_id`, `input_label`, `input_name`, `input_type`, `input_value`, `input_option`, `input_mandatory`) VALUES
(1, 'Email', 'input_email', 'INPUT', '', '', 'false'),
(1, 'Mobile', 'input_mobile', 'INPUT', '', '', 'false'),
(1, 'Amount', 'input_amount', 'INPUT', '11', '', 'false');

-- --------------------------------------------------------

--
-- Table structure for table `test_refund`
--

CREATE TABLE `test_refund` (
  `id` int(11) NOT NULL,
  `refund_gid` varchar(255) NOT NULL DEFAULT '',
  `payment_id` int(11) DEFAULT NULL,
  `refund_amount` double(16,2) NOT NULL DEFAULT '0.00',
  `refund_notes` varchar(255) DEFAULT NULL,
  `refund_status` enum('processed','processing') DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `created_merchant` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `test_reminder`
--

CREATE TABLE `test_reminder` (
  `id` int(11) NOT NULL,
  `reminder_days` tinyint(4) NOT NULL DEFAULT '0',
  `reminder_for` enum('plwed','plwoed') DEFAULT NULL,
  `send_sms` enum('Y','N') DEFAULT 'N',
  `send_email` enum('Y','N') DEFAULT 'N',
  `create_date` datetime DEFAULT NULL,
  `created_merchant` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `test_settlement`
--

CREATE TABLE `test_settlement` (
  `id` int(11) NOT NULL,
  `settlement_gid` varchar(255) NOT NULL DEFAULT '0',
  `settlement_receiptno_count` bigint(20) DEFAULT NULL,
  `settlement_receiptno` varchar(255) DEFAULT NULL,
  `current_balance` double(16,2) NOT NULL DEFAULT '0.00',
  `settlement_amount` double(16,2) NOT NULL DEFAULT '0.00',
  `settlement_fee` double(16,2) NOT NULL DEFAULT '0.00',
  `settlement_tax` double(16,2) NOT NULL DEFAULT '0.00',
  `settlement_status` enum('Active','Inactive') DEFAULT NULL,
  `settlement_date` datetime DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `created_merchant` int(11) NOT NULL DEFAULT '0',
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `test_webhook`
--

CREATE TABLE `test_webhook` (
  `id` int(11) NOT NULL,
  `webhook_url` varchar(255) DEFAULT NULL,
  `is_active` varchar(255) DEFAULT NULL,
  `secret_key` varchar(255) DEFAULT NULL,
  `payment_failed` varchar(255) DEFAULT NULL,
  `payment_captured` varchar(255) DEFAULT NULL,
  `transfer_processed` varchar(255) DEFAULT NULL,
  `refund_processed` varchar(255) DEFAULT NULL,
  `refund_created` varchar(255) DEFAULT NULL,
  `refund_speed_changed` varchar(255) DEFAULT NULL,
  `order_paid` varchar(255) DEFAULT NULL,
  `dispute_created` varchar(255) DEFAULT NULL,
  `dispute_won` varchar(255) DEFAULT NULL,
  `dispute_lost` varchar(255) DEFAULT NULL,
  `dispute_closed` varchar(255) DEFAULT NULL,
  `settlement_processed` varchar(255) DEFAULT NULL,
  `invoice_paid` varchar(255) DEFAULT NULL,
  `invoice_partially_paid` varchar(255) DEFAULT NULL,
  `invoice_expired` varchar(255) DEFAULT NULL,
  `paylink_paid` varchar(255) DEFAULT NULL,
  `paylink_partially_paid` varchar(255) DEFAULT NULL,
  `paylink_expired` varchar(255) DEFAULT NULL,
  `paylink_cancelled` varchar(255) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `created_merchant` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `transaction_report_log`
--

CREATE TABLE `transaction_report_log` (
  `id` int(11) NOT NULL,
  `from` varchar(50) DEFAULT '',
  `to` varchar(50) DEFAULT '',
  `payment_mode` varchar(50) DEFAULT NULL,
  `transaction_status` varchar(100) DEFAULT NULL,
  `report_type` varchar(100) DEFAULT NULL,
  `mode` varchar(50) DEFAULT '',
  `created_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `transaction_report_log`
--

INSERT INTO `transaction_report_log` (`id`, `from`, `to`, `payment_mode`, `transaction_status`, `report_type`, `mode`, `created_date`) VALUES
(1, '01-May-2022', '23-Sep-2022', 'all', 'all', 'payment', '1', '2022-09-23 04:42:36'),
(2, '01-May-2022', '23-Sep-2022', 'all', 'all', 'refund', '1', '2022-09-23 04:42:42'),
(3, '01-May-2022', '23-Sep-2022', 'all', 'all', 'settlement', '1', '2022-09-23 04:42:47'),
(4, '1-Jan-2022', '26-Sep-2022', 'all', 'all', 'payment', '1', '2022-09-26 11:24:37'),
(5, '27-Sep-2022', '27-Sep-2022', 'all', 'all', 'customer', '1', '2022-09-27 05:09:41'),
(6, '18-Oct-2022', '18-Oct-2022', 'all', 'all', 'payment', '0', '2022-10-18 09:52:33'),
(7, '01-Sep-2022', '31-Oct-2022', 'all', 'all', 'payment', '1', '2022-10-31 11:35:20'),
(8, '01-Oct-2022', '31-Oct-2022', 'all', 'all', 'payment', '1', '2022-10-31 11:37:40'),
(9, '01-Jul-2022', '31-Oct-2022', 'all', 'all', 'settlement', '1', '2022-10-31 11:38:11'),
(10, '01-Jul-2022', '31-Oct-2022', 'all', 'all', 'settlement', '1', '2022-10-31 11:38:21'),
(11, '01-Jul-2022', '31-Oct-2022', 'all', 'all', 'payment', '1', '2022-10-31 11:38:45'),
(12, '04-Sep-2023', '04-Sep-2023', 'DC', 'all', 'refund', '0', '2023-09-04 13:23:50');

-- --------------------------------------------------------

--
-- Table structure for table `upi_initiate_res`
--

CREATE TABLE `upi_initiate_res` (
  `id` int(11) NOT NULL,
  `pspRefNo` varchar(255) DEFAULT '',
  `upiTransRefNo` varchar(255) DEFAULT '',
  `npciTransId` varchar(255) DEFAULT '',
  `custRefNo` varchar(255) DEFAULT '',
  `amount` varchar(255) DEFAULT '',
  `txnAuthDate` varchar(255) DEFAULT '',
  `status` varchar(255) DEFAULT '',
  `statusDesc` varchar(255) DEFAULT '',
  `payerVPA` varchar(255) DEFAULT '',
  `payeeVPA` varchar(255) DEFAULT '',
  `pgMerchantId` varchar(255) DEFAULT '',
  `created_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `upi_initiate_res`
--

INSERT INTO `upi_initiate_res` (`id`, `pspRefNo`, `upiTransRefNo`, `npciTransId`, `custRefNo`, `amount`, `txnAuthDate`, `status`, `statusDesc`, `payerVPA`, `payeeVPA`, `pgMerchantId`, `created_date`) VALUES
(1, 'xMOZOMIGJF0MIuAe', '478383753', 'INDBBBB754151DCE6F48E053307C180A182', '105110287585', '10.00', '2021-02-20 10:34:47 AM', 'S', 'Collect request initiated successfully.', 'vishwamparsa@oksbi', 'rupayapay@indus', 'INDB000000660030', '2021-02-20 10:34:47'),
(2, 'qmSOxtidqJi4OSkv', '478391301', 'INDBBBB544F657264CCAE053307C180A32C', '105110288942', '10.00', '2021-02-20 10:39:01 AM', 'S', 'Collect request initiated successfully.', 'vishwamparsa@oksbi', 'rupayapay@indus', 'INDB000000660030', '2021-02-20 10:39:01'),
(3, 'pkEiZCZrVULE1bkh', '478556299', 'INDBBBB7547B7F826F36E053307C180AB72', '105111313460', '10.00', '2021-02-20 11:58:32 AM', 'S', 'Collect request initiated successfully.', 'vishwamparsa@oksbi', 'rupayapay@indus', 'INDB000000660030', '2021-02-20 11:58:33');

-- --------------------------------------------------------

--
-- Table structure for table `upi_keys`
--

CREATE TABLE `upi_keys` (
  `id` int(11) NOT NULL,
  `bank_name` varchar(255) DEFAULT '',
  `client_id` varchar(255) DEFAULT '',
  `client_secret` varchar(255) DEFAULT '',
  `pg_merchant_id` varchar(255) DEFAULT '',
  `vpa` varchar(255) DEFAULT '',
  `encryption_key` varchar(255) DEFAULT '',
  `mode` enum('test','live') DEFAULT 'test',
  `created_date` datetime DEFAULT NULL,
  `vendor_bank_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `upi_keys`
--

INSERT INTO `upi_keys` (`id`, `bank_name`, `client_id`, `client_secret`, `pg_merchant_id`, `vpa`, `encryption_key`, `mode`, `created_date`, `vendor_bank_id`) VALUES
(1, 'indusind', '2691cba8-80c4-47aa-86e2-0d9d224935c0', 'tD0bG1hX2gI7yR5eW4sG2lY6xG0wM8fL1hN0mO5vK6gR6lV5fY', 'INDB000000660030', 'rupayapay@indus', '7925ebe32228112ffb6dfd61ed25609e', 'live', '2021-02-19 09:09:08', 5);

-- --------------------------------------------------------

--
-- Table structure for table `upi_res`
--

CREATE TABLE `upi_res` (
  `id` int(11) NOT NULL,
  `pspRefNo` varchar(255) DEFAULT '',
  `upiTransRefNo` varchar(255) DEFAULT '',
  `npciTransId` varchar(255) DEFAULT '',
  `custRefNo` varchar(255) DEFAULT '',
  `amount` varchar(255) DEFAULT '',
  `txnAuthDate` varchar(255) DEFAULT '',
  `responseCode` varchar(255) DEFAULT '',
  `approvalNumber` varchar(255) DEFAULT '',
  `status` varchar(255) DEFAULT '',
  `addInfo1` varchar(255) DEFAULT '',
  `addInfo2` varchar(255) DEFAULT '',
  `addInfo3` varchar(255) DEFAULT '',
  `payerVPA` varchar(255) DEFAULT '',
  `payeeVPA` varchar(255) DEFAULT '',
  `orderNo` varchar(255) DEFAULT '',
  `currentStatusDesc` varchar(255) DEFAULT '',
  `txnNote` varchar(255) DEFAULT '',
  `txnType` varchar(255) DEFAULT '',
  `refUrl` varchar(255) DEFAULT '',
  `created_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `upi_res`
--

INSERT INTO `upi_res` (`id`, `pspRefNo`, `upiTransRefNo`, `npciTransId`, `custRefNo`, `amount`, `txnAuthDate`, `responseCode`, `approvalNumber`, `status`, `addInfo1`, `addInfo2`, `addInfo3`, `payerVPA`, `payeeVPA`, `orderNo`, `currentStatusDesc`, `txnNote`, `txnType`, `refUrl`, `created_date`) VALUES
(1, 'NA', '0', 'INDBBBB544F657264CCAE053307C180A32C', '105110288942', '10.0', '2021:02:20 10:39:00', '00', '718872', 'SUCCESS', '8985100800', '00000020226587967', 'VISHWAM  PARSA', 'vishwamparsa@oksbi', 'rupayapay@indus', 'qmSOxtidqJi4OSkv', 'Transaction success', 'Aikon Texonic Pvt Ltd', 'COLLECT', 'http://www.indusind.com', '2021-02-20 10:39:43'),
(2, 'NA', '0', 'INDBBBB7547B7F826F36E053307C180AB72', '105111313460', '10.0', '2021:02:20 11:58:32', '00', '281308', 'SUCCESS', '8985100800', '00000020226587967', 'VISHWAM  PARSA', 'vishwamparsa@oksbi', 'rupayapay@indus', 'pkEiZCZrVULE1bkh', 'Transaction success', 'Aikon Texonic Pvt Ltd', 'COLLECT', 'http://www.indusind.com', '2021-02-20 11:59:03'),
(3, 'NA', '0', 'INDBBBB754151DCE6F48E053307C180A182', '105110287585', '10.0', '2021:02:20 10:34:47', 'U69', 'NA', 'FAILED', 'NA', 'NA', 'NA', 'vishwamparsa@oksbi', 'rupayapay@indus', 'xMOZOMIGJF0MIuAe', 'Transaction fail:Collect request expired.', 'Aikon Texonic Pvt Ltd', 'COLLECT', 'http://www.indusind.com', '2021-02-20 12:34:48');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(1024) NOT NULL,
  `email` varchar(1024) NOT NULL,
  `enabled` tinyint(4) NOT NULL,
  `accountNonExpired` tinyint(4) NOT NULL,
  `credentialsNonExpired` tinyint(4) NOT NULL,
  `accountNonLocked` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_type`
--

CREATE TABLE `user_type` (
  `id` int(11) NOT NULL,
  `designation` varchar(50) NOT NULL DEFAULT '',
  `short_code` varchar(10) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_type`
--

INSERT INTO `user_type` (`id`, `designation`, `short_code`) VALUES
(1, 'Chief Executive Officer', 'CEO'),
(2, 'Chief Finance Officer', 'CFO'),
(3, 'Chief Technical Officer', 'CTO'),
(4, 'IT Operation Head', 'ITOH'),
(5, 'Chief Marketing Officer', 'CMO'),
(6, 'Chief Operational Officer', 'COO'),
(7, 'Human Resource Manager', 'HRM'),
(8, 'Accounting Head', 'AH'),
(9, 'Finance Head', 'FH'),
(10, 'Settlement Head', 'SH'),
(11, 'Technical Head', 'TH'),
(12, 'Networking Head', 'NH'),
(13, 'Support Head', 'SH'),
(14, 'Marketing Head', 'MH'),
(15, 'Sales Head', 'SH'),
(16, 'Risk & Compliance Head', 'RH'),
(17, 'Legal', 'LH'),
(18, 'Employee', 'EMP');

-- --------------------------------------------------------

--
-- Table structure for table `vendor_adjustment_resp`
--

CREATE TABLE `vendor_adjustment_resp` (
  `id` int(11) NOT NULL,
  `merchant_id` varchar(50) DEFAULT '',
  `merchant_traxn_id` varchar(50) DEFAULT '',
  `amount` double(16,2) DEFAULT '0.00',
  `settlement_amount` double(16,2) DEFAULT '0.00',
  `settlement_date` datetime DEFAULT NULL,
  `verified` varchar(50) DEFAULT '',
  `bank_id` varchar(50) DEFAULT '',
  `bankname` varchar(50) DEFAULT '',
  `vendor_traxn_id` varchar(50) DEFAULT '',
  `descriminator` varchar(10) DEFAULT '',
  `surcharge` double(16,2) DEFAULT '0.00',
  `card_number` varchar(50) DEFAULT '',
  `traxn_date` datetime DEFAULT NULL,
  `recon_status` varchar(10) DEFAULT '',
  `vendor_from` enum('atom') DEFAULT NULL,
  `ryapay_adjustment_status` enum('Y','N') DEFAULT 'N',
  `transaction_type` varchar(10) DEFAULT '',
  `created_date` datetime DEFAULT NULL,
  `created_user` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vendor_bank`
--

CREATE TABLE `vendor_bank` (
  `id` int(11) NOT NULL,
  `bank_name` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vendor_bank`
--

INSERT INTO `vendor_bank` (`id`, `bank_name`) VALUES
(0, 'NA'),
(1, 'Atom'),
(2, 'Razorpay'),
(3, 'EaseBuzz'),
(4, 'CashFree'),
(5, 'IndusInd'),
(6, 'Worldline'),
(7, 'PayU'),
(8, 'Grezpay'),
(9, 'ISGpay'),
(10, 'CCAvenue'),
(11, 'Paytm'),
(12, 'IppoPay'),
(13, 'SafePay'),
(14, 'SambhavPay'),
(15, 'OmniWare');

-- --------------------------------------------------------

--
-- Table structure for table `vendor_bank_info`
--

CREATE TABLE `vendor_bank_info` (
  `id` int(11) NOT NULL,
  `vendor_gid` varchar(50) NOT NULL DEFAULT '',
  `vendor_id` varchar(50) NOT NULL DEFAULT '',
  `vendor_name` varchar(100) DEFAULT '',
  `vendor_url` varchar(255) NOT NULL DEFAULT '',
  `vendor_adjustment_url` varchar(255) DEFAULT '',
  `vendor_txncurr` varchar(50) DEFAULT '',
  `vendor_clientcode` varchar(50) DEFAULT '',
  `vendor_custacc` varchar(50) DEFAULT '',
  `vendor_secure_key` varchar(255) NOT NULL DEFAULT '',
  `vendor_secure_pwd` varchar(255) NOT NULL DEFAULT '',
  `vendor_hash_request` varchar(255) DEFAULT '',
  `vendor_hash_response` varchar(255) DEFAULT '',
  `vendor_product` varchar(255) DEFAULT '',
  `vendor_request` varchar(255) DEFAULT '',
  `vendor_salt_request` varchar(255) DEFAULT '',
  `vendor_response` varchar(255) DEFAULT '',
  `vendor_mode` enum('test','live') DEFAULT 'test',
  `vendor_salt_response` varchar(255) DEFAULT '',
  `category_id` varchar(255) DEFAULT '',
  `created_date` datetime DEFAULT NULL,
  `created_user` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vendor_bank_info`
--

INSERT INTO `vendor_bank_info` (`id`, `vendor_gid`, `vendor_id`, `vendor_name`, `vendor_url`, `vendor_adjustment_url`, `vendor_txncurr`, `vendor_clientcode`, `vendor_custacc`, `vendor_secure_key`, `vendor_secure_pwd`, `vendor_hash_request`, `vendor_hash_response`, `vendor_product`, `vendor_request`, `vendor_salt_request`, `vendor_response`, `vendor_mode`, `vendor_salt_response`, `category_id`, `created_date`, `created_user`) VALUES
(1, 'rupay_132', '6', 'Worldline', 'https://www.tpsl-india.in/PaymentGateway/services/TransactionDetailsNew?wsdl', '', 'INR', 'T733936', '', '5768921168WUHHYV', '5997377168JKGXCD', '', '', '', '', '', '', 'test', '', '', '2022-03-31 13:56:47', 0),
(2, 'rupay_133', '7', 'PayU', 'https://test.payu.in/_payment', '', 'INR', '115841', '', 'EnuMgE', 'h2epuUBeUiC1RdgRDjSMKYRhesr073GC', '', '', '', '', '', '', 'test', '', '', '2022-04-04 13:56:47', 0),
(3, 'rupay_134', '8', 'Grezpay', 'https://secure.grezpay.com/pgui/jsp/merchantpay', '', 'INR', '', '', '', '', '', '', '', '', '', '', 'live', '', '', '2022-05-12 13:56:47', 0);

-- --------------------------------------------------------

--
-- Table structure for table `vendor_bank_list`
--

CREATE TABLE `vendor_bank_list` (
  `id` int(11) NOT NULL,
  `bank_id` varchar(100) NOT NULL DEFAULT '',
  `bank_name` varchar(255) NOT NULL DEFAULT '',
  `vendor` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vendor_bank_list`
--

INSERT INTO `vendor_bank_list` (`id`, `bank_id`, `bank_name`, `vendor`) VALUES
(1, '1056', 'Allahabad Bank - Retail', 1),
(2, '1075', 'Bank of Baroda Net Banking Corporate', 1),
(3, '1076', 'Bank of Baroda Net Banking Retail', 1),
(4, '1012', 'Bank of India', 1),
(5, '1033', 'Bank of Maharashtra', 1),
(6, '1034', 'Canara Bank DebitCard', 1),
(7, '1030', 'Canara Bank NetBanking', 1),
(8, '1028', 'Central Bank of India', 1),
(9, '1020', 'City Union Bank', 1),
(10, '1031', 'CSB Bank', 1),
(11, '1047', 'DBS Bank Ltd', 1),
(12, '1027', 'DCB Bank', 1),
(13, '1024', 'Deutsche Bank', 1),
(14, '1038', 'Dhanlaxmi Bank', 1),
(15, '1063', 'Equitas Bank', 1),
(16, '1019', 'Fedral Bank', 1),
(17, '1006', 'HDFC Bank', 1),
(18, '1002', 'ICICI Bank', 1),
(19, '1007', 'IDBI Bank', 1),
(20, '1073', 'IDFC FIRST Bank Limited', 1),
(21, '1026', 'Indian Bank', 1),
(22, '1029', 'Indian Overseas Bank', 1),
(23, '1015', 'Indusind Bank', 1),
(24, '1001', 'Jammu and Kashmir Bank', 1),
(25, '1072', 'Janata Sahakari Bank LTD Pune', 1),
(26, '1008', 'Karnataka Bank', 1),
(27, '1018', 'Karur Vysya Bank', 1),
(28, '1013', 'Kotak Mahindra Bank', 1),
(29, '1009', 'Lakshmi Vilas Bank NetBanking', 1),
(30, '1041', 'PNB (Erstwhile- United Bank of India)', 1),
(31, '1035', 'PNB (Erstwhile-Oriental Bank of Commerce)', 1),
(32, '1055', 'Punjab & Sind Bank', 1),
(33, '1077', 'Punjab National Bank - Corporate', 1),
(34, '1049', 'Punjab National Bank [Retail]', 1),
(35, '1066', 'RBL Bank', 1),
(36, '1050', 'Royal Bank Of Scotland', 1),
(37, '1053', 'SaraSwat Bank', 1),
(38, '1051', 'Standard Chartered Bank', 1),
(39, '1014', 'State Bank of India', 1),
(40, '1044', 'Tamilnad Mercantile Bank', 1),
(41, '1057', 'UCO Bank', 1),
(42, '1016', 'Union Bank of India - Retail', 1),
(43, '1004', 'Union Bank of India(Erst. Corporation Bank)', 1),
(44, '1058', 'Union Bank of India(Erst.Andhra Bank)', 1),
(45, '1005', 'Yes Bank', 1),
(46, 'AUBL', 'AU Small Finance Bank', 2),
(47, 'AIRP', 'Airtel Payments Bank', 2),
(48, 'ALLA', 'Allahabad Bank', 2),
(49, 'ANDB', 'Andhra Bank', 2),
(50, 'UTIB', 'Axis Bank', 2),
(51, 'BBKM', 'Bank of Bahrein and Kuwait', 2),
(52, 'BARB_C', 'Bank of Baroda - Corporate Banking', 2),
(53, 'BARB_R', 'Bank of Baroda - Retail Banking', 2),
(54, 'BKID', 'Bank of India', 2),
(55, 'MAHB', 'Bank of Maharashtra', 2),
(56, 'CNRB', 'Canara Bank', 2),
(57, 'CSBK', 'Catholic Syrian Bank', 2),
(58, 'CBIN', 'Central Bank of India', 2),
(59, 'CIUB', 'City Union Bank', 2),
(60, 'COSB', 'Cosmos Co-operative Bank', 2),
(61, 'DCBL', 'DCB Bank', 2),
(62, 'BKDN', 'Dena Bank', 2),
(63, 'DEUT', 'Deutsche Bank', 2),
(64, 'DBSS', 'Development Bank of Singapore', 2),
(65, 'DLXB', 'Dhanlaxmi Bank', 2),
(66, 'ESFB', 'Equitas Small Finance Bank', 2),
(67, 'FDRL', 'Federal Bank', 2),
(68, 'HDFC', 'HDFC Bank', 2),
(69, 'ICIC', 'ICICI Bank', 2),
(70, 'ICIC_C', 'ICICI Bank - Corporate Banking', 2),
(71, 'IBKL', 'IDBI', 2),
(72, 'IDFB', 'IDFC FIRST Bank', 2),
(73, 'IDIB', 'Indian Bank', 2),
(74, 'IOBA', 'Indian Overseas Bank', 2),
(75, 'INDB', 'Indusind Bank', 2),
(76, 'JAKA', 'Jammu and Kashmir Bank', 2),
(77, 'JSBP', 'Janata Sahakari Bank (Pune)', 2),
(78, 'KARB', 'Karnataka Bank', 2),
(79, 'KVBL', 'Karur Vysya Bank', 2),
(80, 'KKBK', 'Kotak Mahindra Bank', 2),
(81, 'LAVB_C', 'Lakshmi Vilas Bank - Corporate Banking', 2),
(82, 'LAVB_R', 'Lakshmi Vilas Bank - Retail Banking', 2),
(83, 'NKGS', 'NKGSB Co-operative Bank', 2),
(84, 'ORBC', 'PNB (Erstwhile-Oriental Bank of Commerce)', 2),
(85, 'UTBI', 'PNB (Erstwhile-United Bank of India)', 2),
(86, 'PSIB', 'Punjab &amp; Sind Bank', 2),
(87, 'PUNB_R', 'Punjab National Bank - Retail Banking', 2),
(88, 'RATN', 'RBL Bank', 2),
(89, 'SRCB', 'Saraswat Co-operative Bank', 2),
(90, 'SVCB', 'Shamrao Vithal Co-operative Bank', 2),
(91, 'SIBL', 'South Indian Bank', 2),
(92, 'SCBL', 'Standard Chartered Bank', 2),
(93, 'SBBJ', 'State Bank of Bikaner and Jaipur', 2),
(94, 'SBHY', 'State Bank of Hyderabad', 2),
(95, 'SBIN', 'State Bank of India', 2),
(96, 'SBMY', 'State Bank of Mysore', 2),
(97, 'STBP', 'State Bank of Patiala', 2),
(98, 'SBTR', 'State Bank of Travancore', 2),
(99, 'SYNB', 'Syndicate Bank', 2),
(100, 'TMBL', 'Tamilnadu Mercantile Bank', 2),
(101, 'TNSC', 'Tamilnadu State Apex Co-operative Bank', 2),
(102, 'UCBA', 'UCO Bank', 2),
(103, 'UBIN', 'Union Bank of India', 2),
(104, 'CORP', 'Union Bank of India (Erstwhile Corporation Bank)', 2),
(105, 'VIJB', 'Vijaya Bank', 2),
(106, 'YESB', 'Yes Bank', 2),
(151, 'KTB', 'Kotak Mahindra Bank', 3),
(152, 'ALB', 'Allahabad Bank', 3),
(153, 'CUB', 'City Union Ban', 3),
(154, 'AXB', 'Axis Bank', 3),
(155, 'ANB', 'Andhra Ban', 3),
(156, 'ANBC', 'Andhra Bank Corporate', 3),
(157, 'BOBCB', 'Bank of Baroda - Corporate Banking', 3),
(158, 'BOBAK', 'Bank of Bahrain and Kuwait', 3),
(159, 'BOB', 'Bank of Baroda - Retail nking', 3),
(160, 'BOMH', 'Bank of Maharashtr', 3),
(161, 'CBOI', 'Central Bank of India', 3),
(162, 'CANB', 'Canara Ban', 3),
(163, 'COSB', 'Cosmos Ban', 3),
(164, 'PNBCB', 'Punjab National Bank - Corporate Banking', 3),
(165, 'CORPB', 'Corporation Bank', 3),
(166, 'CSB', 'Catholic Syrian Bank', 3),
(167, 'DEUTB', 'Deutsche Bank', 3),
(168, 'DCB', 'Development Credit Ban', 3),
(169, 'DENAB', 'Dena Bank', 3),
(170, 'DHANB', 'Dhanlakshmi Bank', 3),
(171, 'FEDB', 'Federal Bank', 3),
(172, 'IDBIB', 'IDBI Bank', 3),
(173, 'INDUSB', 'IndusInd Bank', 3),
(174, 'INB', 'Indian Ban', 3),
(175, 'IOB', 'Indian Overseas Bank', 3),
(176, 'JKB', 'Jammu & Kashmir Bank', 3),
(177, 'KBL', 'Karnataka Bank Ltd', 3),
(178, 'KVB', 'Karur Vysya Bank', 3),
(179, 'LVBCNB', 'Laxmi Vilas Bank - Corporate Net Banking', 3),
(180, 'LVBRNB', 'Laxmi Vilas Bank - Retail Net Banking', 3),
(181, 'OBOC', 'Oriental Bank of Commerce', 3),
(182, 'PAMCB', 'Punjab & Maharashtra Co-op Ban', 3),
(183, 'PNBRB', 'Punjab National Bank - Retail Banking', 3),
(184, 'PASB', 'Punjab & Sind Bank', 3),
(185, 'RBLBL', 'RBL Bank Limited', 3),
(186, 'SCB', 'Standard Chartered Ban', 3),
(187, 'SIB', 'South Indian Bank', 3),
(188, 'SVCB', 'Shamrao Vithal Co-op Bank', 3),
(189, 'ICICIB', 'ICICI Bank', 3),
(190, 'SARB', 'Saraswat Bank', 3),
(191, 'SYNB', 'Syndicate Bank', 3),
(192, 'TMBL', 'Tamilnad Mercantile Bank Ltd.', 3),
(193, 'TNSCB', 'Tamil Nadu State Co-operative Bank', 3),
(194, 'UBOI', 'Union Bank of Indi', 3),
(195, 'UCOB', 'UCO Bank', 3),
(196, 'UNBOI', 'United Bank of India', 3),
(197, 'VIJB', 'Vijaya Ban', 3),
(198, 'YESBL', 'Yes Bank Ltd', 3),
(199, 'DCBC', 'Development Credit Bank - Corporat', 3),
(200, 'JSBLP', 'Janata Sahakari Bank Ltd Pune', 3),
(201, 'NKGSBC', 'NKGSB Co-op Bank', 3),
(202, 'FBSP', 'Federal Bank Scan & Pa', 3),
(203, 'BMB', 'Bharatiya Mahila Bank', 3),
(204, 'TJSBB', 'TJSB Bank', 3),
(205, 'KJSBB', 'KJSB Bank', 3),
(206, 'MUCB', 'Mehsana urban Co-op Bank', 3),
(207, 'BAN', 'Bandhan Bank', 3),
(208, 'ACNB', 'Axis Corporate Net banking', 3),
(209, 'HDFCB', 'HDFC Bank', 3),
(210, 'SBOH', 'State Bank of Hyderaba', 3),
(211, 'SBOI', 'State Bank Of India', 3),
(212, 'SBOBJ', 'State Bank of Bikaner and Jaipur', 3),
(213, 'SBOM', 'State Bank of Mysore', 3),
(214, 'SBOP', 'State Bank of Patiala', 3),
(215, 'IDFCFB', 'IDFC First Ban', 3),
(216, 'BCCB', 'Bassien Catholic Co-Operative Bank', 3),
(217, 'SBOT', 'State Bank of Travancore', 3),
(218, 'TKCCBL', 'The Kalupur Commercial Cooperative Bank Limite', 3),
(219, 'DCBB', 'DCB Bank', 3),
(220, 'LVB', 'Lakshmi Vilas Bank', 3),
(221, 'BOIND', 'Bank of India', 3),
(222, 'FEDB', 'Fedral Ban', 3),
(223, 'EQSFB', 'Equitas Small Finance Bank', 3),
(224, 'DBSB', 'DBS Bank', 3),
(225, 'RBO', 'Royal Bank Of Scotland', 3),
(226, 'KAGB', 'Karnataka Gramin Bank', 3),
(227, 'FIB', 'Fincare Bank', 3),
(228, 'BABC', 'Bandhan Bank Corporate', 3),
(229, '3001', 'Allahabad Bank', 4),
(230, '3002', 'Andhra Bank', 4),
(231, '3003', 'Axis Bank', 4),
(232, '3005', 'Bank of Baroda - Retail Banking', 4),
(233, '3006', 'Bank of India', 4),
(234, '3007', 'Bank of Maharashtra', 4),
(235, '3009', 'Canara Bank', 4),
(236, '3010', 'Catholic Syrian Bank', 4),
(237, '3011', 'Central Bank of India', 4),
(238, '3012', 'City Union Bank', 4),
(239, '3013', 'Corporation Bank', 4),
(240, '3015', 'Dena Bank', 4),
(241, '3016', 'Deutsche Bank', 4),
(242, '3017', 'DBS Bank Ltd', 4),
(243, '3018', 'DCB Bank - Personal', 4),
(244, '3019', 'Dhanlakshmi Bank', 4),
(245, '3020', 'Federal Bank', 4),
(246, '3021', 'HDFC Bank', 4),
(247, '3022', 'ICICI Bank', 4),
(248, '3023', 'IDBI Bank', 4),
(249, '3024', 'IDFC Bank', 4),
(250, '3026', 'Indian Bank', 4),
(251, '3027', 'Indian Overseas Bank', 4),
(252, '3028', 'IndusInd Bank', 4),
(253, '3029', 'Jammu and Kashmir Bank', 4),
(254, '3030', 'Karnataka Bank Ltd', 4),
(255, '3031', 'Karur Vysya Bank', 4),
(256, '3032', 'Kotak Mahindra Bank', 4),
(257, '3033', 'Laxmi Vilas Bank - Retail Net Banking', 4),
(258, '3035', 'PNB (Erstwhile Oriental Bank of Commerce)', 4),
(259, '3037', 'Punjab & Sind Bank', 4),
(260, '3038', 'Punjab National Bank - Retail Banking', 4),
(261, '3039', 'RBL Bank', 4),
(262, '3040', 'Saraswat Bank', 4),
(263, '3042', 'South Indian Bank', 4),
(264, '3043', 'Standard Chartered Bank', 4),
(265, '3044', 'State Bank Of India', 4),
(266, '3050', 'Syndicate Bank', 4),
(267, '3052', 'Tamilnad Mercantile Bank Ltd', 4),
(268, '3054', 'UCO Bank', 4),
(269, '3055', 'Union Bank of India', 4),
(270, '3056', 'PNB (Erstwhile United Bank of India)', 4),
(271, '3057', 'Vijaya Bank', 4),
(272, '3058', 'Yes Bank Ltd', 4),
(273, '3060', 'Bank of Baroda - Corporate', 4),
(274, '3061', 'Bank of India - Corporate', 4),
(275, '3062', 'DCB Bank - Corporate', 4),
(276, '3064', 'Lakshmi Vilas Bank - Corporate', 4),
(277, '3065', 'Punjab National Bank - Corporate', 4),
(278, '3066', 'State Bank of India - Corporate', 4),
(279, '3067', 'Union Bank of India - Corporate', 4),
(280, '3070', 'Andhra Bank Corporate', 4),
(281, '3071', 'Axis Bank Corporate', 4),
(282, '3072', 'Dhanlaxmi Bank Corporate', 4),
(283, '3073', 'ICICI Corporate Netbanking', 4),
(284, '3074', 'Ratnakar Corporate Banking', 4),
(285, '3075', 'Shamrao Vithal Bank Corporate', 4),
(286, '3076', 'Equitas Small Finance Bank', 4),
(287, '3077', 'Yes Bank Corporate', 4),
(288, '3078', 'UBI (Erstwhile Corporation Bank) - Corporate', 4),
(289, '3079', 'Bandhan Bank- Corporate banking', 4),
(290, '3080', 'Barclays Corporate- Corporate Banking - Corporate', 4),
(291, '3081', 'Indian Overseas Bank Corporate', 4),
(292, '3082', 'PNB (Erstwhile Oriental Bank of Commerce) - Corporate', 4),
(293, '3083', 'City Union Bank of Corporate', 4),
(294, '3084', 'HDFC Corporate', 4),
(295, '3085', 'Allahabad Corporate', 4),
(296, '3041', 'Shamrao Vitthal Co-operative Bank', 4),
(297, '3051', 'Tamil Nadu State Co-operative Bank', 4),
(298, 'AIRNB', 'Airtel Payments Bank', 7),
(299, 'AXIB', 'Axis NB', 7),
(300, 'BOIB', 'Bank Of India', 7),
(301, 'BOMB', 'Bank Of Maharashtra', 7),
(302, 'BHNB', 'Bharat Co-Op Bank', 7),
(303, 'CABB', 'Canara Bank', 7),
(304, 'CSBN', 'Catholic Syrian Bank', 7),
(305, 'CBIB', 'Central Bank of India', 7),
(306, 'CUBB', 'City Union Bank', 7),
(307, 'CRBP', 'Corporation Bank', 7),
(308, 'CSMSNB', 'Cosmos Bank', 7),
(309, 'DENN', 'Dena Bank', 7),
(310, 'DSHB', 'Deutsche Bank', 7),
(311, 'DCBB', 'Development Credit Bank', 7),
(312, 'DLSB', 'Dhanlaxmi Bank', 7),
(313, 'HDFB', 'HDFC Bank', 7),
(314, 'ICIB', 'ICICI', 7),
(315, 'IDFCNB', 'IDFC', 7),
(316, 'INDB', 'Indian Bank', 7),
(317, 'INOB', 'Indian Overseas Bank', 7),
(318, 'INIB', 'IndusInd Bank', 7),
(319, 'IDBB', 'Industrial Development Bank of India (IDBI)', 7),
(320, 'JAKB', 'Jammu and Kashmir Bank', 7),
(321, 'JSBNB', 'Janata Sahakari Bank Pune', 7),
(322, 'KRKB', 'Karnataka Bank', 7),
(323, 'KRVBC', 'Karur Vysya - Corporate Netbanking', 7),
(324, '162B', 'Kotak Mahindra Bank', 7),
(325, 'LVCB', 'Lakshmi Vilas Bank - Corporate Netbanking', 7),
(326, 'LVRB', 'Lakshmi Vilas Bank - Retail Netbanking', 7),
(327, 'TBON', 'Nainital Bank', 7),
(328, 'OBCB', 'Oriental Bank of Commerce', 7),
(329, 'PMNB', 'Punjab And Maharashtra Co-operative Bank Limited', 7),
(330, 'PSBNB', 'Punjab And Sind Bank', 7),
(331, 'CPNB', 'Punjab National Bank - Corporate Banking', 7),
(332, 'PNBB', 'Punjab National Bank - Retail Banking', 7),
(333, 'SRSWT', 'Saraswat bank', 7),
(334, 'SBIB', 'SBI Netbanking', 7),
(335, 'SVCNB', 'Shamrao Vithal Co-operative Bank Ltd', 7),
(336, 'SYNDB', 'Syndicate Bank', 7),
(337, 'TMBB', 'Tamilnad Mercantile Bank', 7),
(338, 'FEDB', 'The Federal Bank', 7),
(339, 'KRVB', 'The Karur Vysya Bank', 7),
(340, 'SOIB', 'The South Indian Bank', 7),
(341, 'UCOB', 'UCO Bank', 7),
(342, 'UBIBC', 'Union Bank - Corporate Netbanking', 7),
(343, 'UBIB', 'Union Bank Of India', 7),
(344, 'VJYB', 'Vijaya Bank', 7),
(345, '1005', 'AXIS_BANK', 8),
(346, '1009', 'BANK_OF_INDIA', 8),
(347, '1064', 'BANK_OF_MAHARASHTRA', 8),
(348, '1025', 'CANARA_BANK', 8),
(349, '1063', 'CENTRAL_BANK_OF_INDIA', 8),
(350, '1043', 'CITY_UNION_BANK', 8),
(351, '1034', 'CORPORATION_BANK', 8),
(352, '1026', 'DEUTSCHE_BANK', 8),
(353, '1040', 'DEVELOPMENT_CREDIT_BANK', 8),
(354, '1027', 'FEDERAL_BANK', 8),
(355, '1004', 'HDFC_BANK', 8),
(356, '1013', 'ICICI_BANK', 8),
(357, '1069', 'INDIAN_BANK', 8),
(358, '1049', 'INDIAN_OVERSEAS_BANK', 8),
(359, '1054', 'INDUSIND_BANK', 8),
(360, '1003', 'INDUSTRIAL_DEVELOPMENT_BANK_OF_INDIA', 8),
(361, '1041', 'JAMMU_AND_KASHMIR_BANK', 8),
(362, '1032', 'KARNATAKA_BANK_LTD', 8),
(363, '1048', 'KARUR_VYSYA_BANK', 8),
(364, '1012', 'KOTAK_BANK', 8),
(365, '1042', 'ORIENTAL_BANK_OF_COMMERCE', 8),
(366, '1053', 'RATNAKAR_BANK', 8),
(367, '1045', 'SOUTH_INDIAN_BANK', 8),
(368, '1050', 'STATE_BANK_OF_BIKANER_AND_JAIPUR', 8),
(369, '1030', 'STATE_BANK_OF_INDIA', 8),
(370, '1038', 'UNION_BANK_OF_INDIA', 8),
(371, '1046', 'UNITED_BANK_OF_INDIA', 8),
(372, '1044', 'VIJAYA_BANK', 8),
(373, '1001', 'YES_BANK', 8),
(374, '1091', 'ANDHRA_BANK', 8),
(375, '1093', 'BANK_OF_BARODA_RETAIL_ACCOUNTS', 8),
(376, '1094', 'CATHOLIC_SYRIAN_BANK', 8),
(377, '1103', 'UCO_BANK', 8),
(378, '1000', 'ALLAHABAD_BANK', 8),
(379, '1135', 'AU_SMALL_FINANCE_BANK', 8);

-- --------------------------------------------------------

--
-- Table structure for table `vendor_pricing_detail`
--

CREATE TABLE `vendor_pricing_detail` (
  `id` int(11) NOT NULL,
  `vendor_id` int(11) NOT NULL DEFAULT '0',
  `vendor_category_id` int(11) NOT NULL DEFAULT '0',
  `dc_visa` double(4,2) DEFAULT '0.00',
  `dc_master` double(4,2) DEFAULT '0.00',
  `dc_rupay` double(4,2) DEFAULT '0.00',
  `cc_visa` double(4,2) DEFAULT '0.00',
  `cc_master` double(4,2) DEFAULT '0.00',
  `cc_rupay` double(4,2) DEFAULT '0.00',
  `amex` double(4,2) DEFAULT '0.00',
  `upi` double(4,2) DEFAULT '0.00',
  `net_sbi` double(4,2) DEFAULT '0.00',
  `net_hdfc` double(4,2) DEFAULT '0.00',
  `net_axis` double(4,2) DEFAULT '0.00',
  `net_icici` double(4,2) DEFAULT '0.00',
  `net_yes_kotak` double(4,2) DEFAULT '0.00',
  `net_others` double(4,2) DEFAULT '0.00',
  `created_date` datetime DEFAULT NULL,
  `created_user` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vendor_refund_resp`
--

CREATE TABLE `vendor_refund_resp` (
  `id` int(11) NOT NULL,
  `merchant_id` varchar(50) DEFAULT '',
  `merchant_traxn_id` varchar(50) DEFAULT '',
  `amount` double(16,2) DEFAULT '0.00',
  `status_code` varchar(10) DEFAULT '',
  `status_message` varchar(225) DEFAULT '',
  `vendor_from` enum('atom') DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `created_user` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vendor_transtrack_resp`
--

CREATE TABLE `vendor_transtrack_resp` (
  `id` int(11) NOT NULL,
  `merchant_id` varchar(50) DEFAULT '',
  `merchant_traxn_id` varchar(50) DEFAULT '',
  `amount` double(16,2) DEFAULT '0.00',
  `verified` varchar(50) DEFAULT '',
  `bank_id` varchar(50) DEFAULT '',
  `bankname` varchar(50) DEFAULT '',
  `vendor_traxn_id` varchar(50) DEFAULT '',
  `descriminator` varchar(10) DEFAULT '',
  `surcharge` double(16,2) DEFAULT '0.00',
  `card_number` varchar(50) DEFAULT '',
  `traxn_date` datetime DEFAULT NULL,
  `udf9` varchar(50) DEFAULT '',
  `vendor_from` enum('atom') DEFAULT NULL,
  `recon_status` varchar(10) DEFAULT '',
  `sdt` varchar(50) DEFAULT '',
  `created_date` datetime DEFAULT NULL,
  `created_user` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vendor_wallet_list`
--

CREATE TABLE `vendor_wallet_list` (
  `id` int(11) NOT NULL,
  `wallet_id` varchar(100) DEFAULT '',
  `wallet_name` varchar(255) DEFAULT '',
  `vendor` varchar(50) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vendor_wallet_list`
--

INSERT INTO `vendor_wallet_list` (`id`, `wallet_id`, `wallet_name`, `vendor`) VALUES
(1, '4001', 'FreeCharge', '4'),
(2, '4002', 'MobiKwik', '4'),
(3, '4003', 'Ola Money', '4'),
(4, '4004', 'Reliance Jio Money', '4'),
(5, '4006', 'Airtel Money', '4'),
(6, '4007', 'Paytm', '4'),
(7, '4008', 'Amazon Pay', '4'),
(8, '4009', 'PhonePe', '4'),
(9, 'AIRTLM', 'Airtel Money', '3'),
(10, 'PAYTM', 'PayTM', '3'),
(11, 'MOBKWK', 'Mobikwik', '3'),
(12, 'OXW', 'Oxigen Wallet (Wallet)', '3'),
(13, 'ICCCC', 'ICC Cash Card', '3'),
(14, 'ITZCC', 'ITZ Cash Card', '3'),
(15, 'FREC', 'Freecharge', '7'),
(16, 'AMZPAY', 'Amazon Pay', '7'),
(17, 'AMON', 'Airtel Money', '7'),
(18, 'OXYCASH', 'Oxigen', '7'),
(19, 'OLAM', 'Ola Money', '7'),
(20, 'JIOM', 'Jio Money', '7'),
(21, 'ITZC', 'ItzCash', '7'),
(22, 'PAYZ', 'HDFC PayZapp', '7'),
(23, 'YESW', 'Yes Bank', '7');

-- --------------------------------------------------------

--
-- Table structure for table `worldline_mid_keys`
--

CREATE TABLE `worldline_mid_keys` (
  `id` int(11) NOT NULL,
  `merchant_id` int(11) NOT NULL,
  `merchant_code` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `scheme_code` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `enc_key` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `enc_iv` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `worldline_mid_keys`
--

INSERT INTO `worldline_mid_keys` (`id`, `merchant_id`, `merchant_code`, `scheme_code`, `enc_key`, `enc_iv`, `created_date`, `created_user`) VALUES
(1, 1, 'fsadf', 'dsaf', 'dsafdsf', 'fsdafas', '2022-09-09 12:27:05', 1);

-- --------------------------------------------------------

--
-- Table structure for table `worldline_response`
--

CREATE TABLE `worldline_response` (
  `id` int(11) NOT NULL,
  `txn_status` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `txn_msg` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `txn_err_msg` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `clnt_txn_ref` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `tpsl_bank_cd` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `tpsl_txn_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `txn_amt` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `mob` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `custname` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `tpsl_txn_time` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `tpsl_rfnd_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `bal_amt` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `rqst_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `hash` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `created_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `app_option`
--
ALTER TABLE `app_option`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `atom_response`
--
ALTER TABLE `atom_response`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `business_category`
--
ALTER TABLE `business_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `business_sub_category`
--
ALTER TABLE `business_sub_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `business_type`
--
ALTER TABLE `business_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `call_support`
--
ALTER TABLE `call_support`
  ADD PRIMARY KEY (`id`),
  ADD KEY `created_user` (`created_user`);

--
-- Indexes for table `case_comment`
--
ALTER TABLE `case_comment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cashfree_refund`
--
ALTER TABLE `cashfree_refund`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `cashfree_response`
--
ALTER TABLE `cashfree_response`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cashfree_upi_response`
--
ALTER TABLE `cashfree_upi_response`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cf_rpay_keys`
--
ALTER TABLE `cf_rpay_keys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chart_of_account`
--
ALTER TABLE `chart_of_account`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupon_option`
--
ALTER TABLE `coupon_option`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currency`
--
ALTER TABLE `currency`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_case`
--
ALTER TABLE `customer_case`
  ADD PRIMARY KEY (`id`),
  ADD KEY `merchant_id` (`merchant_id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee_login_activity`
--
ALTER TABLE `employee_login_activity`
  ADD PRIMARY KEY (`id`),
  ADD KEY `log_employee` (`log_employee`);

--
-- Indexes for table `emp_academic`
--
ALTER TABLE `emp_academic`
  ADD PRIMARY KEY (`id`),
  ADD KEY `employee_id` (`employee_id`),
  ADD KEY `created_user` (`created_user`);

--
-- Indexes for table `emp_bgverify`
--
ALTER TABLE `emp_bgverify`
  ADD PRIMARY KEY (`id`),
  ADD KEY `created_user` (`created_user`);

--
-- Indexes for table `emp_contact_detail`
--
ALTER TABLE `emp_contact_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `employee_id` (`employee_id`),
  ADD KEY `created_user` (`created_user`);

--
-- Indexes for table `emp_detail`
--
ALTER TABLE `emp_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `employee_id` (`employee_id`),
  ADD KEY `created_user` (`created_user`);

--
-- Indexes for table `emp_document`
--
ALTER TABLE `emp_document`
  ADD PRIMARY KEY (`id`),
  ADD KEY `employee_id` (`employee_id`),
  ADD KEY `created_user` (`created_user`);

--
-- Indexes for table `emp_earn_deduct`
--
ALTER TABLE `emp_earn_deduct`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `emp_history`
--
ALTER TABLE `emp_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `employee_id` (`employee_id`),
  ADD KEY `created_user` (`created_user`);

--
-- Indexes for table `emp_password_history`
--
ALTER TABLE `emp_password_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `employee_id` (`employee_id`);

--
-- Indexes for table `emp_payslip`
--
ALTER TABLE `emp_payslip`
  ADD PRIMARY KEY (`id`),
  ADD KEY `employee_id` (`employee_id`),
  ADD KEY `created_user` (`created_user`);

--
-- Indexes for table `emp_reference`
--
ALTER TABLE `emp_reference`
  ADD PRIMARY KEY (`id`),
  ADD KEY `employee_id` (`employee_id`),
  ADD KEY `created_user` (`created_user`);

--
-- Indexes for table `emp_workstatus`
--
ALTER TABLE `emp_workstatus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `grezpay_mid_keys`
--
ALTER TABLE `grezpay_mid_keys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `grezpay_response`
--
ALTER TABLE `grezpay_response`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `live_customer`
--
ALTER TABLE `live_customer`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `created_merchant` (`created_merchant`) USING BTREE;

--
-- Indexes for table `live_customer_address`
--
ALTER TABLE `live_customer_address`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `customer_id` (`customer_id`) USING BTREE,
  ADD KEY `created_merchant` (`created_merchant`) USING BTREE;

--
-- Indexes for table `live_dispute`
--
ALTER TABLE `live_dispute`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payment_id` (`payment_id`),
  ADD KEY `created_merchant` (`created_merchant`);

--
-- Indexes for table `live_invoice`
--
ALTER TABLE `live_invoice`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `invoice_billing_to` (`invoice_billing_to`) USING BTREE,
  ADD KEY `invoice_billing_address` (`invoice_billing_address`) USING BTREE,
  ADD KEY `invoice_shipping_address` (`invoice_shipping_address`) USING BTREE,
  ADD KEY `create_merchant` (`created_merchant`) USING BTREE;

--
-- Indexes for table `live_invoice_item`
--
ALTER TABLE `live_invoice_item`
  ADD KEY `invoice_id` (`invoice_id`) USING BTREE,
  ADD KEY `item_id` (`item_id`) USING BTREE,
  ADD KEY `create_merchant` (`created_merchant`) USING BTREE;

--
-- Indexes for table `live_item`
--
ALTER TABLE `live_item`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `create_merchant` (`created_merchant`) USING BTREE;

--
-- Indexes for table `live_merchantapi`
--
ALTER TABLE `live_merchantapi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `created_merchant` (`created_merchant`);

--
-- Indexes for table `live_notification`
--
ALTER TABLE `live_notification`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notify_to` (`notify_to`);

--
-- Indexes for table `live_order`
--
ALTER TABLE `live_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `created_merchant` (`created_merchant`);

--
-- Indexes for table `live_order1`
--
ALTER TABLE `live_order1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `live_paylink`
--
ALTER TABLE `live_paylink`
  ADD PRIMARY KEY (`id`),
  ADD KEY `created_merchant` (`created_merchant`);

--
-- Indexes for table `live_payment`
--
ALTER TABLE `live_payment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `payment_method` (`transaction_response`(191)),
  ADD KEY `created_merchant` (`created_merchant`);

--
-- Indexes for table `live_payment_page`
--
ALTER TABLE `live_payment_page`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `live_payment_page_info`
--
ALTER TABLE `live_payment_page_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `live_refund`
--
ALTER TABLE `live_refund`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payment_id` (`payment_id`),
  ADD KEY `created_merchant` (`created_merchant`);

--
-- Indexes for table `live_reminder`
--
ALTER TABLE `live_reminder`
  ADD PRIMARY KEY (`id`),
  ADD KEY `created_merchant` (`created_merchant`);

--
-- Indexes for table `live_settlement`
--
ALTER TABLE `live_settlement`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `created_merchant` (`created_merchant`) USING BTREE;

--
-- Indexes for table `live_webhook`
--
ALTER TABLE `live_webhook`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `merchant`
--
ALTER TABLE `merchant`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `merchantemp_login_activity`
--
ALTER TABLE `merchantemp_login_activity`
  ADD PRIMARY KEY (`id`),
  ADD KEY `log_merchantemp` (`log_merchantemp`);

--
-- Indexes for table `merchant_business`
--
ALTER TABLE `merchant_business`
  ADD PRIMARY KEY (`id`),
  ADD KEY `created_merchant` (`created_merchant`);

--
-- Indexes for table `merchant_charge_detail`
--
ALTER TABLE `merchant_charge_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `merchant_coupon`
--
ALTER TABLE `merchant_coupon`
  ADD PRIMARY KEY (`id`),
  ADD KEY `created_merchant` (`created_merchant`);

--
-- Indexes for table `merchant_document`
--
ALTER TABLE `merchant_document`
  ADD PRIMARY KEY (`id`),
  ADD KEY `created_merchant` (`created_merchant`);

--
-- Indexes for table `merchant_employee`
--
ALTER TABLE `merchant_employee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `merchant_extra_doc`
--
ALTER TABLE `merchant_extra_doc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `merchant_feedback`
--
ALTER TABLE `merchant_feedback`
  ADD PRIMARY KEY (`id`),
  ADD KEY `created_merchant` (`created_merchant`);

--
-- Indexes for table `merchant_login_activity`
--
ALTER TABLE `merchant_login_activity`
  ADD PRIMARY KEY (`id`),
  ADD KEY `log_merchant` (`log_merchant`);

--
-- Indexes for table `merchant_menus`
--
ALTER TABLE `merchant_menus`
  ADD PRIMARY KEY (`menu_id`) USING BTREE;

--
-- Indexes for table `merchant_payout_apikeys`
--
ALTER TABLE `merchant_payout_apikeys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `merchant_payout_charges`
--
ALTER TABLE `merchant_payout_charges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `merchant_payout_ipwhitelist`
--
ALTER TABLE `merchant_payout_ipwhitelist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `merchant_payout_vendor`
--
ALTER TABLE `merchant_payout_vendor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `merchant_requests`
--
ALTER TABLE `merchant_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `merchant_services`
--
ALTER TABLE `merchant_services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `merchant_status_log`
--
ALTER TABLE `merchant_status_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `merchant_submenus`
--
ALTER TABLE `merchant_submenus`
  ADD PRIMARY KEY (`submenu_id`) USING BTREE;

--
-- Indexes for table `merchant_support`
--
ALTER TABLE `merchant_support`
  ADD PRIMARY KEY (`id`),
  ADD KEY `created_merchant` (`merchant_id`);

--
-- Indexes for table `merchant_type_permissions`
--
ALTER TABLE `merchant_type_permissions`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `created_merchant` (`created_by`) USING BTREE;

--
-- Indexes for table `merchant_vendor_bank`
--
ALTER TABLE `merchant_vendor_bank`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mid_keys_atom`
--
ALTER TABLE `mid_keys_atom`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mid_keys_paytm`
--
ALTER TABLE `mid_keys_paytm`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `mid_keys_razorpay`
--
ALTER TABLE `mid_keys_razorpay`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `navigation`
--
ALTER TABLE `navigation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `navigation_user_type_foreign` (`user_type`),
  ADD KEY `navigation_department_id_foreign` (`department_id`);

--
-- Indexes for table `nav_permission`
--
ALTER TABLE `nav_permission`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_token`
--
ALTER TABLE `oauth_access_token`
  ADD PRIMARY KEY (`authentication_id`);

--
-- Indexes for table `oauth_client_details`
--
ALTER TABLE `oauth_client_details`
  ADD PRIMARY KEY (`client_id`);

--
-- Indexes for table `oauth_client_token`
--
ALTER TABLE `oauth_client_token`
  ADD PRIMARY KEY (`authentication_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`(191));

--
-- Indexes for table `payment_gateways_list`
--
ALTER TABLE `payment_gateways_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_settlement_response`
--
ALTER TABLE `payment_settlement_response`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `payout_account`
--
ALTER TABLE `payout_account`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payout_add_fund`
--
ALTER TABLE `payout_add_fund`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `payout_benificiary`
--
ALTER TABLE `payout_benificiary`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payout_benificiary_group`
--
ALTER TABLE `payout_benificiary_group`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payout_contacts`
--
ALTER TABLE `payout_contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payout_link`
--
ALTER TABLE `payout_link`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payout_methods`
--
ALTER TABLE `payout_methods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payout_response_sent`
--
ALTER TABLE `payout_response_sent`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payout_transactions`
--
ALTER TABLE `payout_transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payout_vendor`
--
ALTER TABLE `payout_vendor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payout_vendor_bank`
--
ALTER TABLE `payout_vendor_bank`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payout_verify_account`
--
ALTER TABLE `payout_verify_account`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payout_wallet`
--
ALTER TABLE `payout_wallet`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payslip_element`
--
ALTER TABLE `payslip_element`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payu_mid_keys`
--
ALTER TABLE `payu_mid_keys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payu_response`
--
ALTER TABLE `payu_response`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `price_detail`
--
ALTER TABLE `price_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `created_merchant` (`created_merchant`);

--
-- Indexes for table `razorpay_order`
--
ALTER TABLE `razorpay_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `created_merchant` (`created_merchant`);

--
-- Indexes for table `razorpay_payment`
--
ALTER TABLE `razorpay_payment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `created_merchant` (`created_merchant`);

--
-- Indexes for table `refer_earn`
--
ALTER TABLE `refer_earn`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD KEY `role_id` (`role_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `ryapay_address`
--
ALTER TABLE `ryapay_address`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_id` (`address_id`),
  ADD KEY `created_user` (`created_user`);

--
-- Indexes for table `ryapay_adjustment`
--
ALTER TABLE `ryapay_adjustment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ryapay_adjustment_charge`
--
ALTER TABLE `ryapay_adjustment_charge`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ryapay_adjustment_detail`
--
ALTER TABLE `ryapay_adjustment_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ryapay_adjustment_trans`
--
ALTER TABLE `ryapay_adjustment_trans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ryapay_applicant`
--
ALTER TABLE `ryapay_applicant`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ryapay_bank_info`
--
ALTER TABLE `ryapay_bank_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ryapay_bgcheck`
--
ALTER TABLE `ryapay_bgcheck`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ryapay_blog`
--
ALTER TABLE `ryapay_blog`
  ADD PRIMARY KEY (`id`),
  ADD KEY `created_user` (`created_user`);

--
-- Indexes for table `ryapay_cdr`
--
ALTER TABLE `ryapay_cdr`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ryapay_contra_entry`
--
ALTER TABLE `ryapay_contra_entry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ryapay_customer`
--
ALTER TABLE `ryapay_customer`
  ADD PRIMARY KEY (`id`),
  ADD KEY `created_user` (`created_user`);

--
-- Indexes for table `ryapay_customer_case`
--
ALTER TABLE `ryapay_customer_case`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ryapay_customer_cdnote`
--
ALTER TABLE `ryapay_customer_cdnote`
  ADD PRIMARY KEY (`id`),
  ADD KEY `created_user` (`created_user`);

--
-- Indexes for table `ryapay_custorder_invoice`
--
ALTER TABLE `ryapay_custorder_invoice`
  ADD PRIMARY KEY (`id`),
  ADD KEY `created_user` (`created_user`);

--
-- Indexes for table `ryapay_custorder_item`
--
ALTER TABLE `ryapay_custorder_item`
  ADD KEY `custorder_id` (`custorder_id`),
  ADD KEY `item_id` (`item_id`),
  ADD KEY `created_user` (`created_user`);

--
-- Indexes for table `ryapay_cust_rcptentry`
--
ALTER TABLE `ryapay_cust_rcptentry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ryapay_docscheck`
--
ALTER TABLE `ryapay_docscheck`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ryapay_emails_log`
--
ALTER TABLE `ryapay_emails_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ryapay_event`
--
ALTER TABLE `ryapay_event`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ryapay_fixed_asset`
--
ALTER TABLE `ryapay_fixed_asset`
  ADD PRIMARY KEY (`id`),
  ADD KEY `created_user` (`created_user`);

--
-- Indexes for table `ryapay_gallery`
--
ALTER TABLE `ryapay_gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ryapay_invoice`
--
ALTER TABLE `ryapay_invoice`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoice_billing_to` (`invoice_billing_to`),
  ADD KEY `invoice_billing_address` (`invoice_billing_address`),
  ADD KEY `invoice_shipping_address` (`invoice_shipping_address`),
  ADD KEY `created_user` (`created_user`);

--
-- Indexes for table `ryapay_invoice_item`
--
ALTER TABLE `ryapay_invoice_item`
  ADD KEY `invoice_id` (`invoice_id`),
  ADD KEY `item_id` (`item_id`),
  ADD KEY `created_user` (`created_user`);

--
-- Indexes for table `ryapay_item`
--
ALTER TABLE `ryapay_item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `created_user` (`created_user`);

--
-- Indexes for table `ryapay_job`
--
ALTER TABLE `ryapay_job`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ryapay_journal_voucher`
--
ALTER TABLE `ryapay_journal_voucher`
  ADD PRIMARY KEY (`id`),
  ADD KEY `created_user` (`created_user`);

--
-- Indexes for table `ryapay_porder`
--
ALTER TABLE `ryapay_porder`
  ADD PRIMARY KEY (`id`),
  ADD KEY `created_user` (`created_user`);

--
-- Indexes for table `ryapay_porder_item`
--
ALTER TABLE `ryapay_porder_item`
  ADD KEY `porder_id` (`porder_id`),
  ADD KEY `item_id` (`item_id`),
  ADD KEY `created_user` (`created_user`);

--
-- Indexes for table `ryapay_refund`
--
ALTER TABLE `ryapay_refund`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ryapay_rnccheck`
--
ALTER TABLE `ryapay_rnccheck`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ryapay_sale`
--
ALTER TABLE `ryapay_sale`
  ADD PRIMARY KEY (`id`),
  ADD KEY `service_id` (`service_id`),
  ADD KEY `business_category` (`business_category`),
  ADD KEY `state` (`state`),
  ADD KEY `created_user` (`created_user`);

--
-- Indexes for table `ryapay_service`
--
ALTER TABLE `ryapay_service`
  ADD PRIMARY KEY (`id`),
  ADD KEY `created_user` (`created_user`);

--
-- Indexes for table `ryapay_sms_log`
--
ALTER TABLE `ryapay_sms_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ryapay_sorder`
--
ALTER TABLE `ryapay_sorder`
  ADD PRIMARY KEY (`id`),
  ADD KEY `created_user` (`created_user`);

--
-- Indexes for table `ryapay_sorder_item`
--
ALTER TABLE `ryapay_sorder_item`
  ADD KEY `sorder_id` (`sorder_id`),
  ADD KEY `item_id` (`item_id`),
  ADD KEY `created_user` (`created_user`);

--
-- Indexes for table `ryapay_subscribe`
--
ALTER TABLE `ryapay_subscribe`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ryapay_sund_payentry`
--
ALTER TABLE `ryapay_sund_payentry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ryapay_sund_rcptentry`
--
ALTER TABLE `ryapay_sund_rcptentry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ryapay_supexp_invoice`
--
ALTER TABLE `ryapay_supexp_invoice`
  ADD PRIMARY KEY (`id`),
  ADD KEY `created_user` (`created_user`);

--
-- Indexes for table `ryapay_supexp_item`
--
ALTER TABLE `ryapay_supexp_item`
  ADD KEY `supexp_id` (`supexp_id`),
  ADD KEY `item_id` (`item_id`),
  ADD KEY `created_user` (`created_user`);

--
-- Indexes for table `ryapay_suporder_invoice`
--
ALTER TABLE `ryapay_suporder_invoice`
  ADD PRIMARY KEY (`id`),
  ADD KEY `created_user` (`created_user`);

--
-- Indexes for table `ryapay_suporder_item`
--
ALTER TABLE `ryapay_suporder_item`
  ADD KEY `suporder_id` (`suporder_id`),
  ADD KEY `item_id` (`item_id`),
  ADD KEY `created_user` (`created_user`);

--
-- Indexes for table `ryapay_supplier`
--
ALTER TABLE `ryapay_supplier`
  ADD PRIMARY KEY (`id`),
  ADD KEY `created_user` (`created_user`);

--
-- Indexes for table `ryapay_supplier_cdnote`
--
ALTER TABLE `ryapay_supplier_cdnote`
  ADD PRIMARY KEY (`id`),
  ADD KEY `created_user` (`created_user`);

--
-- Indexes for table `ryapay_sup_payentry`
--
ALTER TABLE `ryapay_sup_payentry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ryapay_tax_adjustment`
--
ALTER TABLE `ryapay_tax_adjustment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `created_user` (`created_user`);

--
-- Indexes for table `ryapay_tax_payment`
--
ALTER TABLE `ryapay_tax_payment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `created_user` (`created_user`);

--
-- Indexes for table `ryapay_tax_settlement`
--
ALTER TABLE `ryapay_tax_settlement`
  ADD PRIMARY KEY (`id`),
  ADD KEY `created_user` (`created_user`);

--
-- Indexes for table `ryapay_trans_track`
--
ALTER TABLE `ryapay_trans_track`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `state`
--
ALTER TABLE `state`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_apilog_dts`
--
ALTER TABLE `tbl_apilog_dts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_transaction_dtls`
--
ALTER TABLE `tbl_transaction_dtls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_wallet_trans_dtls`
--
ALTER TABLE `tbl_wallet_trans_dtls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `test_customer`
--
ALTER TABLE `test_customer`
  ADD PRIMARY KEY (`id`),
  ADD KEY `created_merchant` (`created_merchant`);

--
-- Indexes for table `test_customer_address`
--
ALTER TABLE `test_customer_address`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `created_merchant` (`created_merchant`);

--
-- Indexes for table `test_dispute`
--
ALTER TABLE `test_dispute`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payment_id` (`payment_id`),
  ADD KEY `created_merchant` (`created_merchant`);

--
-- Indexes for table `test_invoice`
--
ALTER TABLE `test_invoice`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoice_billing_to` (`invoice_billing_to`),
  ADD KEY `invoice_billing_address` (`invoice_billing_address`),
  ADD KEY `invoice_shipping_address` (`invoice_shipping_address`),
  ADD KEY `create_merchant` (`created_merchant`);

--
-- Indexes for table `test_invoice_item`
--
ALTER TABLE `test_invoice_item`
  ADD KEY `invoice_id` (`invoice_id`),
  ADD KEY `item_id` (`item_id`),
  ADD KEY `create_merchant` (`created_merchant`);

--
-- Indexes for table `test_item`
--
ALTER TABLE `test_item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `create_merchant` (`created_merchant`);

--
-- Indexes for table `test_merchantapi`
--
ALTER TABLE `test_merchantapi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `test_notification`
--
ALTER TABLE `test_notification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `test_order`
--
ALTER TABLE `test_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `test_paylink`
--
ALTER TABLE `test_paylink`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `test_payment`
--
ALTER TABLE `test_payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `test_payment_page`
--
ALTER TABLE `test_payment_page`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `test_payment_page_info`
--
ALTER TABLE `test_payment_page_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `test_refund`
--
ALTER TABLE `test_refund`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `test_reminder`
--
ALTER TABLE `test_reminder`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `test_settlement`
--
ALTER TABLE `test_settlement`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `test_webhook`
--
ALTER TABLE `test_webhook`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaction_report_log`
--
ALTER TABLE `transaction_report_log`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `upi_initiate_res`
--
ALTER TABLE `upi_initiate_res`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `upi_keys`
--
ALTER TABLE `upi_keys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `upi_res`
--
ALTER TABLE `upi_res`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_type`
--
ALTER TABLE `user_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vendor_adjustment_resp`
--
ALTER TABLE `vendor_adjustment_resp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vendor_bank`
--
ALTER TABLE `vendor_bank`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vendor_bank_info`
--
ALTER TABLE `vendor_bank_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vendor_bank_list`
--
ALTER TABLE `vendor_bank_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vendor_pricing_detail`
--
ALTER TABLE `vendor_pricing_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vendor_refund_resp`
--
ALTER TABLE `vendor_refund_resp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vendor_transtrack_resp`
--
ALTER TABLE `vendor_transtrack_resp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vendor_wallet_list`
--
ALTER TABLE `vendor_wallet_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `worldline_mid_keys`
--
ALTER TABLE `worldline_mid_keys`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `app_option`
--
ALTER TABLE `app_option`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `atom_response`
--
ALTER TABLE `atom_response`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `call_support`
--
ALTER TABLE `call_support`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `case_comment`
--
ALTER TABLE `case_comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cashfree_refund`
--
ALTER TABLE `cashfree_refund`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `cashfree_response`
--
ALTER TABLE `cashfree_response`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cashfree_upi_response`
--
ALTER TABLE `cashfree_upi_response`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `cf_rpay_keys`
--
ALTER TABLE `cf_rpay_keys`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `coupon_option`
--
ALTER TABLE `coupon_option`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `customer_case`
--
ALTER TABLE `customer_case`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `employee_login_activity`
--
ALTER TABLE `employee_login_activity`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `emp_academic`
--
ALTER TABLE `emp_academic`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `emp_bgverify`
--
ALTER TABLE `emp_bgverify`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `emp_contact_detail`
--
ALTER TABLE `emp_contact_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `emp_detail`
--
ALTER TABLE `emp_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `emp_document`
--
ALTER TABLE `emp_document`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `emp_earn_deduct`
--
ALTER TABLE `emp_earn_deduct`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `emp_history`
--
ALTER TABLE `emp_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `emp_password_history`
--
ALTER TABLE `emp_password_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `emp_payslip`
--
ALTER TABLE `emp_payslip`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `emp_reference`
--
ALTER TABLE `emp_reference`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `emp_workstatus`
--
ALTER TABLE `emp_workstatus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `grezpay_response`
--
ALTER TABLE `grezpay_response`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `live_customer`
--
ALTER TABLE `live_customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `live_customer_address`
--
ALTER TABLE `live_customer_address`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `live_dispute`
--
ALTER TABLE `live_dispute`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `live_invoice`
--
ALTER TABLE `live_invoice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `live_invoice_item`
--
ALTER TABLE `live_invoice_item`
  MODIFY `invoice_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `live_item`
--
ALTER TABLE `live_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `live_merchantapi`
--
ALTER TABLE `live_merchantapi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `live_notification`
--
ALTER TABLE `live_notification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `live_order`
--
ALTER TABLE `live_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `live_order1`
--
ALTER TABLE `live_order1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `live_paylink`
--
ALTER TABLE `live_paylink`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `live_payment`
--
ALTER TABLE `live_payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `live_payment_page`
--
ALTER TABLE `live_payment_page`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `live_payment_page_info`
--
ALTER TABLE `live_payment_page_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `live_refund`
--
ALTER TABLE `live_refund`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `live_reminder`
--
ALTER TABLE `live_reminder`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `live_settlement`
--
ALTER TABLE `live_settlement`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `live_webhook`
--
ALTER TABLE `live_webhook`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `merchant`
--
ALTER TABLE `merchant`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `merchantemp_login_activity`
--
ALTER TABLE `merchantemp_login_activity`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `merchant_business`
--
ALTER TABLE `merchant_business`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `merchant_charge_detail`
--
ALTER TABLE `merchant_charge_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `merchant_coupon`
--
ALTER TABLE `merchant_coupon`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `merchant_document`
--
ALTER TABLE `merchant_document`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `merchant_employee`
--
ALTER TABLE `merchant_employee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `merchant_extra_doc`
--
ALTER TABLE `merchant_extra_doc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `merchant_feedback`
--
ALTER TABLE `merchant_feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `merchant_login_activity`
--
ALTER TABLE `merchant_login_activity`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `merchant_menus`
--
ALTER TABLE `merchant_menus`
  MODIFY `menu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `merchant_payout_apikeys`
--
ALTER TABLE `merchant_payout_apikeys`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `merchant_payout_charges`
--
ALTER TABLE `merchant_payout_charges`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `merchant_payout_ipwhitelist`
--
ALTER TABLE `merchant_payout_ipwhitelist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `merchant_payout_vendor`
--
ALTER TABLE `merchant_payout_vendor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `merchant_requests`
--
ALTER TABLE `merchant_requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `merchant_services`
--
ALTER TABLE `merchant_services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `merchant_status_log`
--
ALTER TABLE `merchant_status_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `merchant_submenus`
--
ALTER TABLE `merchant_submenus`
  MODIFY `submenu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `merchant_support`
--
ALTER TABLE `merchant_support`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `merchant_type_permissions`
--
ALTER TABLE `merchant_type_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `merchant_vendor_bank`
--
ALTER TABLE `merchant_vendor_bank`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `mid_keys_atom`
--
ALTER TABLE `mid_keys_atom`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `mid_keys_paytm`
--
ALTER TABLE `mid_keys_paytm`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `mid_keys_razorpay`
--
ALTER TABLE `mid_keys_razorpay`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `navigation`
--
ALTER TABLE `navigation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=267;

--
-- AUTO_INCREMENT for table `nav_permission`
--
ALTER TABLE `nav_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `payment_gateways_list`
--
ALTER TABLE `payment_gateways_list`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `payment_settlement_response`
--
ALTER TABLE `payment_settlement_response`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `payout_account`
--
ALTER TABLE `payout_account`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `payout_add_fund`
--
ALTER TABLE `payout_add_fund`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `payout_benificiary`
--
ALTER TABLE `payout_benificiary`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `payout_benificiary_group`
--
ALTER TABLE `payout_benificiary_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `payout_contacts`
--
ALTER TABLE `payout_contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `payout_link`
--
ALTER TABLE `payout_link`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `payout_methods`
--
ALTER TABLE `payout_methods`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payout_response_sent`
--
ALTER TABLE `payout_response_sent`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payout_transactions`
--
ALTER TABLE `payout_transactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT for table `payout_vendor`
--
ALTER TABLE `payout_vendor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payout_vendor_bank`
--
ALTER TABLE `payout_vendor_bank`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `payout_verify_account`
--
ALTER TABLE `payout_verify_account`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payout_wallet`
--
ALTER TABLE `payout_wallet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payslip_element`
--
ALTER TABLE `payslip_element`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `payu_response`
--
ALTER TABLE `payu_response`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `price_detail`
--
ALTER TABLE `price_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `razorpay_order`
--
ALTER TABLE `razorpay_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `razorpay_payment`
--
ALTER TABLE `razorpay_payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `refer_earn`
--
ALTER TABLE `refer_earn`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ryapay_address`
--
ALTER TABLE `ryapay_address`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ryapay_adjustment`
--
ALTER TABLE `ryapay_adjustment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ryapay_adjustment_charge`
--
ALTER TABLE `ryapay_adjustment_charge`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ryapay_adjustment_detail`
--
ALTER TABLE `ryapay_adjustment_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ryapay_adjustment_trans`
--
ALTER TABLE `ryapay_adjustment_trans`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ryapay_applicant`
--
ALTER TABLE `ryapay_applicant`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ryapay_bank_info`
--
ALTER TABLE `ryapay_bank_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ryapay_bgcheck`
--
ALTER TABLE `ryapay_bgcheck`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ryapay_blog`
--
ALTER TABLE `ryapay_blog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ryapay_cdr`
--
ALTER TABLE `ryapay_cdr`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ryapay_contra_entry`
--
ALTER TABLE `ryapay_contra_entry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ryapay_customer`
--
ALTER TABLE `ryapay_customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ryapay_customer_case`
--
ALTER TABLE `ryapay_customer_case`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ryapay_customer_cdnote`
--
ALTER TABLE `ryapay_customer_cdnote`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ryapay_custorder_invoice`
--
ALTER TABLE `ryapay_custorder_invoice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ryapay_cust_rcptentry`
--
ALTER TABLE `ryapay_cust_rcptentry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ryapay_docscheck`
--
ALTER TABLE `ryapay_docscheck`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `ryapay_emails_log`
--
ALTER TABLE `ryapay_emails_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ryapay_event`
--
ALTER TABLE `ryapay_event`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ryapay_fixed_asset`
--
ALTER TABLE `ryapay_fixed_asset`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ryapay_gallery`
--
ALTER TABLE `ryapay_gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ryapay_invoice`
--
ALTER TABLE `ryapay_invoice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ryapay_item`
--
ALTER TABLE `ryapay_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ryapay_job`
--
ALTER TABLE `ryapay_job`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ryapay_journal_voucher`
--
ALTER TABLE `ryapay_journal_voucher`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ryapay_porder`
--
ALTER TABLE `ryapay_porder`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ryapay_refund`
--
ALTER TABLE `ryapay_refund`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ryapay_rnccheck`
--
ALTER TABLE `ryapay_rnccheck`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `ryapay_sale`
--
ALTER TABLE `ryapay_sale`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ryapay_service`
--
ALTER TABLE `ryapay_service`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ryapay_sms_log`
--
ALTER TABLE `ryapay_sms_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ryapay_sorder`
--
ALTER TABLE `ryapay_sorder`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ryapay_subscribe`
--
ALTER TABLE `ryapay_subscribe`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ryapay_sund_payentry`
--
ALTER TABLE `ryapay_sund_payentry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ryapay_sund_rcptentry`
--
ALTER TABLE `ryapay_sund_rcptentry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ryapay_supexp_invoice`
--
ALTER TABLE `ryapay_supexp_invoice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ryapay_suporder_invoice`
--
ALTER TABLE `ryapay_suporder_invoice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ryapay_supplier`
--
ALTER TABLE `ryapay_supplier`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ryapay_supplier_cdnote`
--
ALTER TABLE `ryapay_supplier_cdnote`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ryapay_sup_payentry`
--
ALTER TABLE `ryapay_sup_payentry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ryapay_tax_adjustment`
--
ALTER TABLE `ryapay_tax_adjustment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ryapay_tax_payment`
--
ALTER TABLE `ryapay_tax_payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ryapay_tax_settlement`
--
ALTER TABLE `ryapay_tax_settlement`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ryapay_trans_track`
--
ALTER TABLE `ryapay_trans_track`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_apilog_dts`
--
ALTER TABLE `tbl_apilog_dts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_transaction_dtls`
--
ALTER TABLE `tbl_transaction_dtls`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `tbl_wallet_trans_dtls`
--
ALTER TABLE `tbl_wallet_trans_dtls`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `test_customer`
--
ALTER TABLE `test_customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `test_customer_address`
--
ALTER TABLE `test_customer_address`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `test_dispute`
--
ALTER TABLE `test_dispute`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `test_invoice`
--
ALTER TABLE `test_invoice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `test_item`
--
ALTER TABLE `test_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `test_merchantapi`
--
ALTER TABLE `test_merchantapi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `test_notification`
--
ALTER TABLE `test_notification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `test_order`
--
ALTER TABLE `test_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `test_paylink`
--
ALTER TABLE `test_paylink`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `test_payment`
--
ALTER TABLE `test_payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `test_payment_page`
--
ALTER TABLE `test_payment_page`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `test_payment_page_info`
--
ALTER TABLE `test_payment_page_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `test_refund`
--
ALTER TABLE `test_refund`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `test_reminder`
--
ALTER TABLE `test_reminder`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `test_settlement`
--
ALTER TABLE `test_settlement`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `test_webhook`
--
ALTER TABLE `test_webhook`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transaction_report_log`
--
ALTER TABLE `transaction_report_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `upi_initiate_res`
--
ALTER TABLE `upi_initiate_res`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `upi_keys`
--
ALTER TABLE `upi_keys`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `upi_res`
--
ALTER TABLE `upi_res`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_type`
--
ALTER TABLE `user_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `vendor_adjustment_resp`
--
ALTER TABLE `vendor_adjustment_resp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vendor_bank`
--
ALTER TABLE `vendor_bank`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `vendor_bank_info`
--
ALTER TABLE `vendor_bank_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `vendor_bank_list`
--
ALTER TABLE `vendor_bank_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=380;

--
-- AUTO_INCREMENT for table `vendor_pricing_detail`
--
ALTER TABLE `vendor_pricing_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vendor_refund_resp`
--
ALTER TABLE `vendor_refund_resp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vendor_transtrack_resp`
--
ALTER TABLE `vendor_transtrack_resp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vendor_wallet_list`
--
ALTER TABLE `vendor_wallet_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `worldline_mid_keys`
--
ALTER TABLE `worldline_mid_keys`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
