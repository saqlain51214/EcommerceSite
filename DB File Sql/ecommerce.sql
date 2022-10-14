-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 12, 2022 at 06:06 PM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.1.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `products_id` int(11) NOT NULL,
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_color` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8,2) NOT NULL,
  `quantity` int(11) NOT NULL,
  `user_email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `products_id`, `product_name`, `product_code`, `product_color`, `size`, `price`, `quantity`, `user_email`, `session_id`, `created_at`, `updated_at`) VALUES
(4, 6, 28, 'T&R Jeans', 'SKU-Lexus Red', 'Blue', 'L', 12.00, 1, 'weshare@gmail.com', '804GccGewFcgEqz80D3eeVn0mhUOIZlhibEBzEdU', '2022-10-12 10:49:02', '2022-10-12 10:49:02');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `name`, `description`, `url`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(12, 0, 'Man Cloths', 'Man Category', 'http://127.0.0.1:8000/', 1, NULL, '2022-10-22 21:32:33', '2022-10-10 13:33:16'),
(10, 0, 'Women Shoes', 'Women Category', 'http://wornnarith.cambosoft.com', 1, NULL, '2022-10-22 21:31:29', '2018-11-16 02:05:53'),
(11, 0, 'T-Shirts', 'Man Category', 'http://127.0.0.1:8000/', 1, NULL, '2022-10-22 21:31:29', '2022-10-10 13:34:20'),
(13, 0, 'Winter Cloths', 'Winter Category', 'http://wornnarith.cambosoft.com', 1, NULL, '2022-10-22 21:31:29', '2018-11-16 02:05:43'),
(14, 0, 'Cloths', 'Cloths Category', 'http://127.0.0.1:8000/', 1, NULL, '2022-10-22 21:31:29', '2022-10-10 13:32:48'),
(15, 12, 'Jeans', 'Jeans Sub Category of Man', 'http://127.0.0.1:8000/', 1, NULL, '2022-10-22 21:31:29', '2022-10-10 13:33:04'),
(16, 12, 'Man shirts', 'Man shirts Sub Category', 'http://127.0.0.1:8000/', 1, NULL, '2022-10-22 21:31:29', '2022-10-10 13:33:36'),
(17, 17, 'Man Shoes', 'Man Shoes Sub Category of Shoes', 'http://wornnarith.cambosoft.com', 1, NULL, '2022-10-22 21:31:29', '2022-10-10 14:19:48'),
(25, 0, 'Women Cloths', 'Women Cloths', 'http://127.0.0.1:8000/', 1, NULL, '2022-10-22 21:31:29', '2022-10-10 13:35:13'),
(26, 25, 'Women Stuff', 'Women Stuff cloths', 'http://127.0.0.1:8000/', 1, NULL, '2022-10-22 21:31:29', '2022-10-10 13:36:11'),
(27, 0, 'test', 'test', 'http://127.0.0.1:8000', 1, NULL, '2022-10-11 12:53:10', '2022-10-11 12:53:10');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `email` varchar(191) DEFAULT NULL,
  `phone` varchar(191) DEFAULT NULL,
  `address` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `name`, `email`, `phone`, `address`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'saqlain raza', 'saqlain@gmail.com', '03123234222', 'pakistan', '2022-10-11 11:57:36', '2022-10-11 11:57:36', NULL),
(2, 'saqlain', 'saqlain@gmail.com', '092345678', 'qwerty', '2022-10-11 12:45:06', '2022-10-11 12:45:06', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(10) UNSIGNED NOT NULL,
  `country_code` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
(2, 'AL', 'Albania', NULL, NULL),
(3, 'DZ', 'Algeria', NULL, NULL),
(4, 'DS', 'American Samoa', NULL, NULL),
(5, 'AD', 'Andorra', NULL, NULL),
(6, 'AO', 'Angola', NULL, NULL),
(7, 'AI', 'Anguilla', NULL, NULL),
(8, 'AQ', 'Antarctica', NULL, NULL),
(9, 'AG', 'Antigua and Barbuda', NULL, NULL),
(10, 'AR', 'Argentina', NULL, NULL),
(11, 'AM', 'Armenia', NULL, NULL),
(12, 'AW', 'Aruba', NULL, NULL),
(13, 'AU', 'Australia', NULL, NULL),
(14, 'AT', 'Austria', NULL, NULL),
(15, 'AZ', 'Azerbaijan', NULL, NULL),
(16, 'BS', 'Bahamas', NULL, NULL),
(17, 'BH', 'Bahrain', NULL, NULL),
(18, 'BD', 'Bangladesh', NULL, NULL),
(19, 'BB', 'Barbados', NULL, NULL),
(20, 'BY', 'Belarus', NULL, NULL),
(21, 'BE', 'Belgium', NULL, NULL),
(22, 'BZ', 'Belize', NULL, NULL),
(23, 'BJ', 'Benin', NULL, NULL),
(24, 'BM', 'Bermuda', NULL, NULL),
(25, 'BT', 'Bhutan', NULL, NULL),
(26, 'BO', 'Bolivia', NULL, NULL),
(27, 'BA', 'Bosnia and Herzegovina', NULL, NULL),
(28, 'BW', 'Botswana', NULL, NULL),
(29, 'BV', 'Bouvet Island', NULL, NULL),
(30, 'BR', 'Brazil', NULL, NULL),
(31, 'IO', 'British Indian Ocean Territory', NULL, NULL),
(32, 'BN', 'Brunei Darussalam', NULL, NULL),
(33, 'BG', 'Bulgaria', NULL, NULL),
(34, 'BF', 'Burkina Faso', NULL, NULL),
(35, 'BI', 'Burundi', NULL, NULL),
(36, 'KH', 'Cambodia', NULL, NULL),
(37, 'CM', 'Cameroon', NULL, NULL),
(38, 'CA', 'Canada', NULL, NULL),
(39, 'CV', 'Cape Verde', NULL, NULL),
(40, 'KY', 'Cayman Islands', NULL, NULL),
(41, 'CF', 'Central African Republic', NULL, NULL),
(42, 'TD', 'Chad', NULL, NULL),
(43, 'CL', 'Chile', NULL, NULL),
(44, 'CN', 'China', NULL, NULL),
(45, 'CX', 'Christmas Island', NULL, NULL),
(46, 'CC', 'Cocos (Keeling) Islands', NULL, NULL),
(47, 'CO', 'Colombia', NULL, NULL),
(48, 'KM', 'Comoros', NULL, NULL),
(49, 'CG', 'Congo', NULL, NULL),
(50, 'CK', 'Cook Islands', NULL, NULL),
(51, 'CR', 'Costa Rica', NULL, NULL),
(52, 'AF', 'Afghanistan', NULL, NULL),
(53, 'AL', 'Albania', NULL, NULL),
(54, 'DZ', 'Algeria', NULL, NULL),
(55, 'DS', 'American Samoa', NULL, NULL),
(56, 'AD', 'Andorra', NULL, NULL),
(57, 'AO', 'Angola', NULL, NULL),
(58, 'AI', 'Anguilla', NULL, NULL),
(59, 'AQ', 'Antarctica', NULL, NULL),
(60, 'AG', 'Antigua and Barbuda', NULL, NULL),
(61, 'AR', 'Argentina', NULL, NULL),
(62, 'AM', 'Armenia', NULL, NULL),
(63, 'AW', 'Aruba', NULL, NULL),
(64, 'AU', 'Australia', NULL, NULL),
(65, 'AT', 'Austria', NULL, NULL),
(66, 'AZ', 'Azerbaijan', NULL, NULL),
(67, 'BS', 'Bahamas', NULL, NULL),
(68, 'BH', 'Bahrain', NULL, NULL),
(69, 'BD', 'Bangladesh', NULL, NULL),
(70, 'BB', 'Barbados', NULL, NULL),
(71, 'BY', 'Belarus', NULL, NULL),
(72, 'BE', 'Belgium', NULL, NULL),
(73, 'BZ', 'Belize', NULL, NULL),
(74, 'BJ', 'Benin', NULL, NULL),
(75, 'BM', 'Bermuda', NULL, NULL),
(76, 'BT', 'Bhutan', NULL, NULL),
(77, 'BO', 'Bolivia', NULL, NULL),
(78, 'BA', 'Bosnia and Herzegovina', NULL, NULL),
(79, 'BW', 'Botswana', NULL, NULL),
(80, 'BV', 'Bouvet Island', NULL, NULL),
(81, 'BR', 'Brazil', NULL, NULL),
(82, 'IO', 'British Indian Ocean Territory', NULL, NULL),
(83, 'BN', 'Brunei Darussalam', NULL, NULL),
(84, 'BG', 'Bulgaria', NULL, NULL),
(85, 'BF', 'Burkina Faso', NULL, NULL),
(86, 'BI', 'Burundi', NULL, NULL),
(87, 'KH', 'Cambodia', NULL, NULL),
(88, 'CM', 'Cameroon', NULL, NULL),
(89, 'CA', 'Canada', NULL, NULL),
(90, 'CV', 'Cape Verde', NULL, NULL),
(91, 'KY', 'Cayman Islands', NULL, NULL),
(92, 'CF', 'Central African Republic', NULL, NULL),
(93, 'TD', 'Chad', NULL, NULL),
(94, 'CL', 'Chile', NULL, NULL),
(95, 'CN', 'China', NULL, NULL),
(96, 'CX', 'Christmas Island', NULL, NULL),
(97, 'CC', 'Cocos (Keeling) Islands', NULL, NULL),
(98, 'CO', 'Colombia', NULL, NULL),
(99, 'KM', 'Comoros', NULL, NULL),
(100, 'CG', 'Congo', NULL, NULL),
(101, 'CK', 'Cook Islands', NULL, NULL),
(102, 'CR', 'Costa Rica', NULL, NULL),
(103, 'HR', 'Croatia (Hrvatska)', NULL, NULL),
(104, 'CU', 'Cuba', NULL, NULL),
(105, 'CY', 'Cyprus', NULL, NULL),
(106, 'CZ', 'Czech Republic', NULL, NULL),
(107, 'DK', 'Denmark', NULL, NULL),
(108, 'DJ', 'Djibouti', NULL, NULL),
(109, 'DM', 'Dominica', NULL, NULL),
(110, 'DO', 'Dominican Republic', NULL, NULL),
(111, 'TP', 'East Timor', NULL, NULL),
(112, 'EC', 'Ecuador', NULL, NULL),
(113, 'EG', 'Egypt', NULL, NULL),
(114, 'SV', 'El Salvador', NULL, NULL),
(115, 'GQ', 'Equatorial Guinea', NULL, NULL),
(116, 'ER', 'Eritrea', NULL, NULL),
(117, 'EE', 'Estonia', NULL, NULL),
(118, 'ET', 'Ethiopia', NULL, NULL),
(119, 'FK', 'Falkland Islands (Malvinas)', NULL, NULL),
(120, 'FO', 'Faroe Islands', NULL, NULL),
(121, 'FJ', 'Fiji', NULL, NULL),
(122, 'FI', 'Finland', NULL, NULL),
(123, 'FR', 'France', NULL, NULL),
(124, 'FX', 'France, Metropolitan', NULL, NULL),
(125, 'GF', 'French Guiana', NULL, NULL),
(126, 'PF', 'French Polynesia', NULL, NULL),
(127, 'TF', 'French Southern Territories', NULL, NULL),
(128, 'GA', 'Gabon', NULL, NULL),
(129, 'GM', 'Gambia', NULL, NULL),
(130, 'GE', 'Georgia', NULL, NULL),
(131, 'DE', 'Germany', NULL, NULL),
(132, 'GH', 'Ghana', NULL, NULL),
(133, 'GI', 'Gibraltar', NULL, NULL),
(134, 'GK', 'Guernsey', NULL, NULL),
(135, 'GR', 'Greece', NULL, NULL),
(136, 'GL', 'Greenland', NULL, NULL),
(137, 'GD', 'Grenada', NULL, NULL),
(138, 'GP', 'Guadeloupe', NULL, NULL),
(139, 'GU', 'Guam', NULL, NULL),
(140, 'GT', 'Guatemala', NULL, NULL),
(141, 'GN', 'Guinea', NULL, NULL),
(142, 'GW', 'Guinea-Bissau', NULL, NULL),
(143, 'GY', 'Guyana', NULL, NULL),
(144, 'HT', 'Haiti', NULL, NULL),
(145, 'HM', 'Heard and Mc Donald Islands', NULL, NULL),
(146, 'HN', 'Honduras', NULL, NULL),
(147, 'HK', 'Hong Kong', NULL, NULL),
(148, 'HU', 'Hungary', NULL, NULL),
(149, 'IS', 'Iceland', NULL, NULL),
(150, 'IN', 'India', NULL, NULL),
(151, 'IM', 'Isle of Man', NULL, NULL),
(152, 'ID', 'Indonesia', NULL, NULL),
(153, 'IR', 'Iran (Islamic Republic of)', NULL, NULL),
(154, 'IQ', 'Iraq', NULL, NULL),
(155, 'IE', 'Ireland', NULL, NULL),
(156, 'IL', 'Israel', NULL, NULL),
(157, 'IT', 'Italy', NULL, NULL),
(158, 'CI', 'Ivory Coast', NULL, NULL),
(159, 'JE', 'Jersey', NULL, NULL),
(160, 'JM', 'Jamaica', NULL, NULL),
(161, 'JP', 'Japan', NULL, NULL),
(162, 'JO', 'Jordan', NULL, NULL),
(163, 'KZ', 'Kazakhstan', NULL, NULL),
(164, 'KE', 'Kenya', NULL, NULL),
(165, 'KI', 'Kiribati', NULL, NULL),
(166, 'KP', 'Korea, Democratic People\'s Republic of', NULL, NULL),
(167, 'KR', 'Korea, Republic of', NULL, NULL),
(168, 'XK', 'Kosovo', NULL, NULL),
(169, 'KW', 'Kuwait', NULL, NULL),
(170, 'KG', 'Kyrgyzstan', NULL, NULL),
(171, 'LA', 'Lao People\'s Democratic Republic', NULL, NULL),
(172, 'LV', 'Latvia', NULL, NULL),
(173, 'LB', 'Lebanon', NULL, NULL),
(174, 'LS', 'Lesotho', NULL, NULL),
(175, 'LR', 'Liberia', NULL, NULL),
(176, 'LY', 'Libyan Arab Jamahiriya', NULL, NULL),
(177, 'LI', 'Liechtenstein', NULL, NULL),
(178, 'LT', 'Lithuania', NULL, NULL),
(179, 'LU', 'Luxembourg', NULL, NULL),
(180, 'MO', 'Macau', NULL, NULL),
(181, 'MK', 'Macedonia', NULL, NULL),
(182, 'MG', 'Madagascar', NULL, NULL),
(183, 'MW', 'Malawi', NULL, NULL),
(184, 'MY', 'Malaysia', NULL, NULL),
(185, 'MV', 'Maldives', NULL, NULL),
(186, 'ML', 'Mali', NULL, NULL),
(187, 'MT', 'Malta', NULL, NULL),
(188, 'MH', 'Marshall Islands', NULL, NULL),
(189, 'MQ', 'Martinique', NULL, NULL),
(190, 'MR', 'Mauritania', NULL, NULL),
(191, 'MU', 'Mauritius', NULL, NULL),
(192, 'TY', 'Mayotte', NULL, NULL),
(193, 'MX', 'Mexico', NULL, NULL),
(194, 'FM', 'Micronesia, Federated States of', NULL, NULL),
(195, 'MD', 'Moldova, Republic of', NULL, NULL),
(196, 'MC', 'Monaco', NULL, NULL),
(197, 'MN', 'Mongolia', NULL, NULL),
(198, 'ME', 'Montenegro', NULL, NULL),
(199, 'MS', 'Montserrat', NULL, NULL),
(200, 'MA', 'Morocco', NULL, NULL),
(201, 'MZ', 'Mozambique', NULL, NULL),
(202, 'MM', 'Myanmar', NULL, NULL),
(203, 'NA', 'Namibia', NULL, NULL),
(204, 'NR', 'Nauru', NULL, NULL),
(205, 'NP', 'Nepal', NULL, NULL),
(206, 'NL', 'Netherlands', NULL, NULL),
(207, 'AN', 'Netherlands Antilles', NULL, NULL),
(208, 'NC', 'New Caledonia', NULL, NULL),
(209, 'NZ', 'New Zealand', NULL, NULL),
(210, 'NI', 'Nicaragua', NULL, NULL),
(211, 'NE', 'Niger', NULL, NULL),
(212, 'NG', 'Nigeria', NULL, NULL),
(213, 'NU', 'Niue', NULL, NULL),
(214, 'NF', 'Norfolk Island', NULL, NULL),
(215, 'MP', 'Northern Mariana Islands', NULL, NULL),
(216, 'NO', 'Norway', NULL, NULL),
(217, 'OM', 'Oman', NULL, NULL),
(218, 'PK', 'Pakistan', NULL, NULL),
(219, 'PW', 'Palau', NULL, NULL),
(220, 'PS', 'Palestine', NULL, NULL),
(221, 'PA', 'Panama', NULL, NULL),
(222, 'PG', 'Papua New Guinea', NULL, NULL),
(223, 'PY', 'Paraguay', NULL, NULL),
(224, 'PE', 'Peru', NULL, NULL),
(225, 'PH', 'Philippines', NULL, NULL),
(226, 'PN', 'Pitcairn', NULL, NULL),
(227, 'PL', 'Poland', NULL, NULL),
(228, 'PT', 'Portugal', NULL, NULL),
(229, 'PR', 'Puerto Rico', NULL, NULL),
(230, 'QA', 'Qatar', NULL, NULL),
(231, 'RE', 'Reunion', NULL, NULL),
(232, 'RO', 'Romania', NULL, NULL),
(233, 'RU', 'Russian Federation', NULL, NULL),
(234, 'RW', 'Rwanda', NULL, NULL),
(235, 'KN', 'Saint Kitts and Nevis', NULL, NULL),
(236, 'LC', 'Saint Lucia', NULL, NULL),
(237, 'VC', 'Saint Vincent and the Grenadines', NULL, NULL),
(238, 'WS', 'Samoa', NULL, NULL),
(239, 'SM', 'San Marino', NULL, NULL),
(240, 'ST', 'Sao Tome and Principe', NULL, NULL),
(241, 'SA', 'Saudi Arabia', NULL, NULL),
(242, 'SN', 'Senegal', NULL, NULL),
(243, 'RS', 'Serbia', NULL, NULL),
(244, 'SC', 'Seychelles', NULL, NULL),
(245, 'SL', 'Sierra Leone', NULL, NULL),
(246, 'SG', 'Singapore', NULL, NULL),
(247, 'SK', 'Slovakia', NULL, NULL),
(248, 'SI', 'Slovenia', NULL, NULL),
(249, 'SB', 'Solomon Islands', NULL, NULL),
(250, 'SO', 'Somalia', NULL, NULL),
(251, 'ZA', 'South Africa', NULL, NULL),
(252, 'GS', 'South Georgia South Sandwich Islands', NULL, NULL),
(253, 'SS', 'South Sudan', NULL, NULL),
(254, 'ES', 'Spain', NULL, NULL),
(255, 'LK', 'Sri Lanka', NULL, NULL),
(256, 'SH', 'St. Helena', NULL, NULL),
(257, 'PM', 'St. Pierre and Miquelon', NULL, NULL),
(258, 'SD', 'Sudan', NULL, NULL),
(259, 'SR', 'Suriname', NULL, NULL),
(260, 'SJ', 'Svalbard and Jan Mayen Islands', NULL, NULL),
(261, 'SZ', 'Swaziland', NULL, NULL),
(262, 'SE', 'Sweden', NULL, NULL),
(263, 'CH', 'Switzerland', NULL, NULL),
(264, 'SY', 'Syrian Arab Republic', NULL, NULL),
(265, 'TW', 'Taiwan', NULL, NULL),
(266, 'TJ', 'Tajikistan', NULL, NULL),
(267, 'TZ', 'Tanzania, United Republic of', NULL, NULL),
(268, 'TH', 'Thailand', NULL, NULL),
(269, 'TG', 'Togo', NULL, NULL),
(270, 'TK', 'Tokelau', NULL, NULL),
(271, 'TO', 'Tonga', NULL, NULL),
(272, 'TT', 'Trinidad and Tobago', NULL, NULL),
(273, 'TN', 'Tunisia', NULL, NULL),
(274, 'TR', 'Turkey', NULL, NULL),
(275, 'TM', 'Turkmenistan', NULL, NULL),
(276, 'TC', 'Turks and Caicos Islands', NULL, NULL),
(277, 'TV', 'Tuvalu', NULL, NULL),
(278, 'UG', 'Uganda', NULL, NULL),
(279, 'UA', 'Ukraine', NULL, NULL),
(280, 'AE', 'United Arab Emirates', NULL, NULL),
(281, 'GB', 'United Kingdom', NULL, NULL),
(282, 'US', 'United States', NULL, NULL),
(283, 'UM', 'United States minor outlying islands', NULL, NULL),
(284, 'UY', 'Uruguay', NULL, NULL),
(285, 'UZ', 'Uzbekistan', NULL, NULL),
(286, 'VU', 'Vanuatu', NULL, NULL),
(287, 'VA', 'Vatican City State', NULL, NULL),
(288, 'VE', 'Venezuela', NULL, NULL),
(289, 'VN', 'Vietnam', NULL, NULL),
(290, 'VG', 'Virgin Islands (British)', NULL, NULL),
(291, 'VI', 'Virgin Islands (U.S.)', NULL, NULL),
(292, 'WF', 'Wallis and Futuna Islands', NULL, NULL),
(293, 'EH', 'Western Sahara', NULL, NULL),
(294, 'YE', 'Yemen', NULL, NULL),
(295, 'ZR', 'Zaire', NULL, NULL),
(296, 'ZM', 'Zambia', NULL, NULL),
(297, 'ZW', 'Zimbabwe', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` int(10) UNSIGNED NOT NULL,
  `coupon_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` int(11) NOT NULL,
  `amount_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiry_date` date NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `coupon_code`, `amount`, `amount_type`, `expiry_date`, `status`, `created_at`, `updated_at`) VALUES
(6, 'Coupon001', 10, 'Percentage', '2019-12-06', 1, '2018-12-05 20:19:15', '2018-12-05 20:19:15');

-- --------------------------------------------------------

--
-- Table structure for table `delivery_address`
--

CREATE TABLE `delivery_address` (
  `id` int(10) UNSIGNED NOT NULL,
  `users_id` int(11) NOT NULL,
  `users_email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pincode` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `delivery_address`
--

INSERT INTO `delivery_address` (`id`, `users_id`, `users_email`, `name`, `address`, `city`, `state`, `country`, `pincode`, `mobile`, `created_at`, `updated_at`) VALUES
(2, 4, 'weshare@gmail.com', 'weshare', 'address', 'city', 'state', 'Cambodia', 'pincode', 'mobile', NULL, NULL),
(3, 1, 'demo@gmail.com', 'WeShare', '123 Street', 'Phnom Penh', 'PP', 'Cambodia', '12252', '010313234', NULL, NULL),
(4, 6, 'admin@gmail.com', 'admin', 'pakistan', 'panjab', 'islamabad', 'Pakistan', '14300', '9123456789', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(3, '2014_10_12_000000_create_users_table', 2),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(8, '2018_10_20_040609_create_categories_table', 3),
(9, '2018_10_24_075802_create_products_table', 4),
(10, '2018_11_08_024109_create_product_att_table', 5),
(11, '2018_11_20_055123_create_tblgallery_table', 6),
(12, '2018_11_26_070031_create_cart_table', 7),
(13, '2018_11_28_072535_create_coupons_table', 8),
(15, '2018_12_01_042342_create_countries_table', 10),
(19, '2018_12_03_043804_add_more_fields_to_users_table', 14),
(17, '2018_12_03_093548_create_delivery_address_table', 12),
(18, '2018_12_05_024718_create_orders_table', 13);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `users_id` int(11) NOT NULL,
  `users_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pincode` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_charges` double(8,2) NOT NULL,
  `coupon_code` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `coupon_amount` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_status` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_method` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `grand_total` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `users_id`, `users_email`, `name`, `address`, `city`, `state`, `pincode`, `country`, `mobile`, `shipping_charges`, `coupon_code`, `coupon_amount`, `order_status`, `payment_method`, `grand_total`, `created_at`, `updated_at`) VALUES
(3, 6, 'admin@gmail.com', 'admin', 'pakistan', 'panjab', 'islamabad', '14300', 'Pakistan', '9123456789', 0.00, 'NO Coupon', '0', 'success', 'COD', '12', '2022-10-12 10:49:41', '2022-10-12 10:49:41');

-- --------------------------------------------------------

--
-- Table structure for table `orders_product`
--

CREATE TABLE `orders_product` (
  `id` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `product_name` varchar(191) DEFAULT NULL,
  `product_code` varchar(191) DEFAULT NULL,
  `product_size` varchar(191) DEFAULT NULL,
  `product_color` varchar(191) DEFAULT NULL,
  `product_qty` varchar(11) DEFAULT NULL,
  `price` varchar(191) DEFAULT NULL,
  `session_id` varchar(191) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders_product`
--

INSERT INTO `orders_product` (`id`, `order_id`, `user_id`, `product_id`, `product_name`, `product_code`, `product_size`, `product_color`, `product_qty`, `price`, `session_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(3, NULL, 6, 28, 'T&R Jeans', 'SKU-Lexus Red', 'L', 'Blue', '1', '12', 'aIMFbdeBPe1BabVxmrCcBqv18IGYz3zPzTihulVj', NULL, '2022-10-12 10:45:30', '2022-10-12 10:45:30'),
(4, NULL, 6, 28, 'T&R Jeans', 'SKU-Lexus Red', 'L', 'Blue', '1', '12', '804GccGewFcgEqz80D3eeVn0mhUOIZlhibEBzEdU', NULL, '2022-10-12 10:49:41', '2022-10-12 10:49:41');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `categories_id` int(11) NOT NULL,
  `p_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `p_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `p_color` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8,2) NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `categories_id`, `p_name`, `p_code`, `p_color`, `description`, `price`, `image`, `created_at`, `updated_at`) VALUES
(28, 25, 'T&R Jeans', '12152', 'Blue', 'T&amp;R Blue Jeans', 15.00, '1665428389-tr-jeans.png', '2018-12-05 19:35:12', '2022-10-10 14:04:02'),
(27, 26, 'Full Body Abaya', 'Black', 'Black', 'Full Body Black Abaya', 20.00, '1665428464-full-body-abaya.png', '2018-12-05 19:30:25', '2022-10-10 14:01:18'),
(36, 12, 'Test product', 'QWERTY', 'BLUE', 'TEST', 20.00, '1665511063-test-product.jpg', '2022-10-11 12:57:43', '2022-10-11 12:57:43'),
(29, 25, 'New Fashion Cloths', '1252', 'Blue', 'New Fashion Women Cloths', 5.00, '1665428311-new-fashion-cloths.png', '2018-12-05 19:38:44', '2022-10-10 13:58:36'),
(30, 16, 'HR&M Shirt', 'L_1252', 'Black', 'Black&nbsp;<b></b>HR&amp;M Shirt', 10.00, '1665428182-hrm-shirt.png', '2018-12-05 19:42:22', '2022-10-10 13:56:25'),
(31, 10, 'Black H&M', '5214', 'White and Black', 'Black White H&amp;M&nbsp;', 10.00, '1665427900-black-hm.png', '2018-12-05 19:47:10', '2022-10-10 13:51:42'),
(32, 17, 'Vionic Shoes Brand', '5265', 'All Colors', 'Man Shoes', 12.00, '1544064607-vionic-shoes-brand.jpg', '2018-12-05 19:50:07', '2022-10-10 13:40:59'),
(33, 17, 'Cole Haan', 'KHR 775659.29', 'Brown', 'Men\'s Original Grand Wingtip Oxfords', 5.00, '1544064903-cole-haan.jpg', '2018-12-05 19:55:03', '2018-12-05 19:55:03'),
(34, 17, 'H&M SHORTS', '1252', 'White H&M SHORTS', 'White H&amp;M SHORTS', 2.00, '1665427727-hm-shorts.png', '2018-12-05 20:02:12', '2022-10-10 13:48:59'),
(35, 14, 'Cloths', 'The Man', 'Black', 'Cloths Description here', 2.00, '1544065493-cloths.png', '2018-12-05 20:04:54', '2018-12-05 20:04:54');

-- --------------------------------------------------------

--
-- Table structure for table `product_att`
--

CREATE TABLE `product_att` (
  `id` int(10) UNSIGNED NOT NULL,
  `products_id` int(11) NOT NULL,
  `sku` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8,2) NOT NULL,
  `stock` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_att`
--

INSERT INTO `product_att` (`id`, `products_id`, `sku`, `size`, `price`, `stock`, `created_at`, `updated_at`) VALUES
(14, 34, 'SKU-Lenovo X1', '15 inch', 10.00, 2, '2018-12-05 20:08:43', '2018-12-05 20:08:43'),
(13, 35, 'SKU-Red', 'S', 2.00, 5, '2018-12-05 20:08:08', '2022-10-11 12:54:12'),
(12, 35, 'SKU-White', 'L', 6.00, 2, '2018-12-05 20:07:42', '2022-10-11 12:54:12'),
(11, 35, 'SKU-Black', 'M', 5.00, 10, '2018-12-05 20:07:11', '2022-10-11 12:54:12'),
(15, 34, 'SKU-Carbon', '14 inch', 4.00, 5, '2018-12-05 20:09:05', '2018-12-05 20:09:05'),
(16, 33, 'SKU-Haan1', '25', 12.00, 3, '2018-12-05 20:09:45', '2018-12-05 20:09:45'),
(17, 33, 'SKU-Haan2', '22', 10.00, 1, '2018-12-05 20:09:58', '2018-12-05 20:09:58'),
(18, 33, 'SKU-Haan3', '19', 2.00, 3, '2018-12-05 20:10:16', '2018-12-05 20:10:16'),
(19, 32, 'SKU-Vionic1', '20', 10.00, 5, '2018-12-05 20:11:02', '2018-12-05 20:11:02'),
(20, 32, 'SKU-Vionic2', '20', 15.00, 4, '2018-12-05 20:11:24', '2018-12-05 20:11:24'),
(21, 32, 'SKU-Vionic3', '30', 20.00, 1, '2018-12-05 20:11:38', '2018-12-05 20:11:38'),
(22, 31, 'SKU-House1', '8', 25.00, 4, '2018-12-05 20:12:13', '2022-10-10 14:14:25'),
(23, 31, 'SKU-House2', '12', 20.00, 2, '2018-12-05 20:12:30', '2022-10-10 14:14:25'),
(24, 31, 'SKU-House3', '14', 20.00, 5, '2018-12-05 20:12:46', '2022-10-10 14:14:25'),
(25, 30, 'SKU-Link House1', 'Small', 10.00, 5, '2018-12-05 20:13:06', '2018-12-05 20:13:06'),
(26, 30, 'SKU-House2', 'Medium', 15.00, 23, '2018-12-05 20:13:23', '2018-12-05 20:13:23'),
(27, 30, 'SKU-House3', 'Large', 5.00, 2, '2018-12-05 20:14:55', '2018-12-05 20:14:55'),
(28, 29, 'SKU-Prius1', 'M', 12.00, 2, '2018-12-05 20:15:43', '2022-10-10 14:15:29'),
(29, 28, 'SKU-Lexus Red', 'L', 12.00, 12, '2018-12-05 20:16:28', '2022-10-10 14:16:09'),
(30, 28, 'SKU-Lexus2', 'M', 11.00, 22, '2018-12-05 20:16:48', '2022-10-10 14:16:09'),
(31, 28, 'SKU-Lexus3', 'S', 12.00, 2, '2018-12-05 20:17:02', '2022-10-10 14:16:09'),
(32, 27, 'SKU-Hilander', 'L', 50.00, 10, '2018-12-05 20:17:35', '2022-10-10 14:12:35'),
(33, 27, 'SKU-Hilander1', 'M', 20.00, 10, '2018-12-05 20:17:46', '2022-10-10 14:12:35'),
(34, 27, 'SKU-Hilande3', 'S', 20.00, 10, '2018-12-05 20:18:01', '2022-10-10 14:12:35'),
(35, 35, 'SKU-RED', 'M', 10.00, 12, '2022-10-11 12:54:03', '2022-10-11 12:54:12'),
(36, 36, 'SKU', 'M', 10.00, 1, '2022-10-11 12:58:48', '2022-10-11 12:58:48'),
(37, 36, 'SKU-BLUE', 'L', 10.00, 1, '2022-10-11 12:59:08', '2022-10-11 12:59:08');

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `id` int(11) NOT NULL,
  `image` varchar(191) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`id`, `image`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '1665498895-slider.jpg', 1, '2022-10-11 09:34:55', '2022-10-11 09:34:55', NULL),
(2, '1665498903-slider.jpg', 1, '2022-10-11 09:35:03', '2022-10-11 09:35:03', NULL),
(3, '1665498910-slider.jpg', 1, '2022-10-11 09:35:10', '2022-10-11 09:35:10', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblgallery`
--

CREATE TABLE `tblgallery` (
  `id` int(10) UNSIGNED NOT NULL,
  `products_id` int(11) NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tblgallery`
--

INSERT INTO `tblgallery` (`id`, `products_id`, `image`, `created_at`, `updated_at`) VALUES
(35, 33, '3402551665510877.jpg', '2022-10-11 12:54:40', '2022-10-11 12:54:40'),
(36, 36, '7388521665511102.jpg', '2022-10-11 12:58:22', '2022-10-11 12:58:22');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin` tinyint(4) DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pincode` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `admin`, `remember_token`, `created_at`, `updated_at`, `address`, `city`, `state`, `country`, `pincode`, `mobile`) VALUES
(1, 'WeShare', 'demo@gmail.com', NULL, '$2y$10$WGrLqq.xRv1VASAFte6WP.YvLheNTToA8elno6s3GQ8fp8msqt25q', 1, 'eXRJYaZCo6qXgGfTHiOFvShGWta2eLgaIhcBVfa9ppQnN5SFFH7yo516DQs1', '2018-10-15 02:32:54', '2018-12-05 01:39:52', '123 Street', 'Phnom Penh', 'PP', 'Cambodia', '12252', '010313234'),
(4, 'weshare', 'weshare@gmail.com', NULL, '$2y$10$3Ccxg17LYw/.qS7ib5Xcr.T5po6AXUsnjEcEI4IHcQ0MGkcuRfO.O', NULL, 'za7FtmzYvfzBYmkQtE5tfvStl7dY3Z6uZKSpuRtBRIvlbXzM0csZEQYzjuEb', '2018-12-06 01:40:27', '2018-12-06 01:40:27', NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'saqlain raza', 'saqlain.raza.ciit@gmail.com', NULL, '$2y$10$WGrLqq.xRv1VASAFte6WP.YvLheNTToA8elno6s3GQ8fp8msqt25q', 1, NULL, '2022-10-10 13:21:59', '2022-10-10 13:21:59', NULL, NULL, NULL, NULL, NULL, NULL),
(6, 'admin', 'admin@gmail.com', NULL, '$2y$10$H3EZf5bTprP2b0kXXDbJ3uNdcCrzbHYYfyHhvYY2vzDLWV5yNX1ZO', 1, 'Hk2QfLJwNkLyzJUhqXxx2TlC4NUkH7K37USLXEKClQfrlwHPA9D3feWX8PxB', '2022-10-10 13:24:11', '2022-10-10 13:24:11', 'pakistan', 'panjab', 'islamabad', 'Pakistan', '14300', '9123456789');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`name`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `delivery_address`
--
ALTER TABLE `delivery_address`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders_product`
--
ALTER TABLE `orders_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_att`
--
ALTER TABLE `product_att`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblgallery`
--
ALTER TABLE `tblgallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=298;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `delivery_address`
--
ALTER TABLE `delivery_address`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `orders_product`
--
ALTER TABLE `orders_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `product_att`
--
ALTER TABLE `product_att`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblgallery`
--
ALTER TABLE `tblgallery`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
