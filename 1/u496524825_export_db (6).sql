-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Aug 20, 2024 at 12:03 PM
-- Server version: 10.11.8-MariaDB-cll-lve
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u496524825_export_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(100) NOT NULL,
  `name` varchar(200) NOT NULL,
  `password` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `name`, `password`) VALUES
(2, 'admin', '21232f297a57a5a743894a0e4a801fc3');

-- --------------------------------------------------------

--
-- Table structure for table `buyer`
--

CREATE TABLE `buyer` (
  `buyer_id` int(100) NOT NULL,
  `buyer_name` varchar(200) NOT NULL,
  `buyer_email` varchar(200) NOT NULL,
  `buyer_phone` int(19) NOT NULL,
  `enquiry_for` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `buyer`
--

INSERT INTO `buyer` (`buyer_id`, `buyer_name`, `buyer_email`, `buyer_phone`, `enquiry_for`) VALUES
(1, 'Rktika', 'abc@gmail.com', 15252525, '');

-- --------------------------------------------------------

--
-- Table structure for table `buyleads`
--

CREATE TABLE `buyleads` (
  `buyleads_id` int(100) NOT NULL,
  `buyer_name` varchar(200) NOT NULL,
  `queiry_for` varchar(255) NOT NULL,
  `number` varchar(200) NOT NULL,
  `accessed_at` date NOT NULL DEFAULT current_timestamp(),
  `user_id` int(100) NOT NULL,
  `buyer_email` varchar(100) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp(),
  `buyer_location` varchar(100) NOT NULL,
  `quantity` varchar(100) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `country_name` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `buyleads`
--

INSERT INTO `buyleads` (`buyleads_id`, `buyer_name`, `queiry_for`, `number`, `accessed_at`, `user_id`, `buyer_email`, `date`, `buyer_location`, `quantity`, `product_name`, `country_name`, `state`) VALUES
(4, 'varun kumar', 'car', '3453453455', '2024-06-14', 0, 'varun@gmail.com', '2024-06-14', 'delhi', '', 'car', 'india', 'delhi'),
(5, 'shanu kumar', 'singing products', '45345345', '2024-06-14', 0, 'shanu@gmail.com', '2024-06-14', 'US', '', 'spices', '', ''),
(6, 'varun kumar', 'apple  mango juse', '23245345345', '2024-07-11', 0, 'abc@gmail.com', '2024-07-11', 'delhi', '', 'mango', '', ''),
(7, 'Arun', 'mango juice', '53534443', '2024-07-12', 0, 'arn@gmail.com', '2024-07-12', 'delhi , shyan kund 110031', '', '', 'india', 'goa'),
(8, 'deepak', 'toy car', '23245345345', '2024-07-12', 0, 'abc@gmail.com', '2024-07-12', 'delhi , shyan kund 110031', '', 'toy car', '', ''),
(9, 'Varun', 'Car Cleaning Cloth ', '23245345345', '2024-07-12', 0, 'abc@gmail.com', '2024-07-12', 'delhi , shyan kund 110031', '12kg', 'Car Cleaning  ', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `cat_id` int(100) NOT NULL,
  `cat_name` text NOT NULL,
  `cat_image` varchar(255) NOT NULL,
  `cat_long_image` varchar(255) NOT NULL,
  `cat_slug` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`cat_id`, `cat_name`, `cat_image`, `cat_long_image`, `cat_slug`) VALUES
(10, 'Agriculture', 'extra_image/Agriculture.jpg', 'extra_image/new.jpg', 'agri'),
(11, 'Apparel & Fashion ', 'extra_image/Apparel & Fashion.jpg', '', 'fasi'),
(12, 'Automobile ', 'extra_image/automobile.jpg', '', 'auto'),
(13, 'home decoration', 'extra_image/image-asset.jpg', 'extra_image/home_decor_long.jpg', 'home-decor'),
(14, 'Electronics', 'extra_image/Electronics.jpg', 'extra_image/electronics_long.jpg', 'electronics'),
(15, 'Fashion', 'extra_image/GettyImages-615595706-scaled.jpg', 'extra_image/fashion_long.jpg', 'fashion'),
(16, 'Food Products & Beverage ', 'extra_image/foodanddrink.jpg', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `countries_id` int(100) NOT NULL,
  `country_name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`countries_id`, `country_name`) VALUES
(1, 'Afghanistan'),
(2, 'Albania'),
(3, 'Algeria'),
(4, 'Andorra'),
(5, 'Angola'),
(6, 'Antigua and Barbuda'),
(7, 'Argentina'),
(8, 'Armenia'),
(9, 'Australia'),
(10, 'Austria'),
(11, 'Azerbaijan'),
(12, 'Bahamas'),
(13, 'Bahrain'),
(14, 'Bangladesh'),
(15, 'Barbados'),
(16, 'Belarus'),
(17, 'Belgium'),
(18, 'Belize'),
(19, 'Benin'),
(20, 'Bhutan'),
(21, 'Bolivia'),
(22, 'Bosnia and Herzegovina'),
(23, 'Botswana'),
(24, 'Brazil'),
(25, 'Brunei'),
(26, 'Bulgaria'),
(27, 'Burkina Faso'),
(28, 'Burundi'),
(29, 'Cabo Verde'),
(30, 'Cambodia'),
(31, 'Cameroon'),
(32, 'Canada'),
(33, 'Central African Republic'),
(34, 'Chad'),
(35, 'Chile'),
(36, 'China'),
(37, 'Colombia'),
(38, 'Comoros'),
(39, 'Congo'),
(40, 'Costa Rica'),
(41, 'Croatia'),
(42, 'Cuba'),
(43, 'Cyprus'),
(44, 'Czech Republic'),
(45, 'Denmark'),
(46, 'Djibouti'),
(47, 'Dominica'),
(48, 'Dominican Republic'),
(49, 'East Timor'),
(50, 'Ecuador'),
(51, 'Egypt'),
(52, 'El Salvador'),
(53, 'Equatorial Guinea'),
(54, 'Eritrea'),
(55, 'Estonia'),
(56, 'Eswatini'),
(57, 'Ethiopia'),
(58, 'Fiji'),
(59, 'Finland'),
(60, 'France'),
(61, 'Gabon'),
(62, 'Gambia'),
(63, 'Georgia'),
(64, 'Germany'),
(65, 'Ghana'),
(66, 'Greece'),
(67, 'Grenada'),
(68, 'Guatemala'),
(69, 'Guinea'),
(70, 'Guinea-Bissau'),
(71, 'Guyana'),
(72, 'Haiti'),
(73, 'Honduras'),
(74, 'Hungary'),
(75, 'Iceland'),
(76, 'India'),
(77, 'Indonesia'),
(78, 'Iran'),
(79, 'Iraq'),
(80, 'Ireland'),
(81, 'Israel'),
(82, 'Italy'),
(83, 'Jamaica'),
(84, 'Japan'),
(85, 'Jordan'),
(86, 'Kazakhstan'),
(87, 'Kenya'),
(88, 'Kiribati'),
(89, 'Korea, North'),
(90, 'Korea, South'),
(91, 'Kosovo'),
(92, 'Kuwait'),
(93, 'Kyrgyzstan'),
(94, 'Laos'),
(95, 'Latvia'),
(96, 'Lebanon'),
(97, 'Lesotho'),
(98, 'Liberia'),
(99, 'Libya'),
(100, 'Liechtenstein'),
(101, 'Lithuania'),
(102, 'Luxembourg'),
(103, 'Madagascar'),
(104, 'Malawi'),
(105, 'Malaysia'),
(106, 'Maldives'),
(107, 'Mali'),
(108, 'Malta'),
(109, 'Marshall Islands'),
(110, 'Mauritania'),
(111, 'Mauritius'),
(112, 'Mexico'),
(113, 'Micronesia'),
(114, 'Moldova'),
(115, 'Monaco'),
(116, 'Mongolia'),
(117, 'Montenegro'),
(118, 'Morocco'),
(119, 'Mozambique'),
(120, 'Myanmar'),
(121, 'Namibia'),
(122, 'Nauru'),
(123, 'Nepal'),
(124, 'Netherlands'),
(125, 'New Zealand'),
(126, 'Nicaragua'),
(127, 'Niger'),
(128, 'Nigeria'),
(129, 'North Macedonia'),
(130, 'Norway'),
(131, 'Oman'),
(132, 'Pakistan'),
(133, 'Palau'),
(134, 'Palestinian Territories'),
(135, 'Panama'),
(136, 'Papua New Guinea'),
(137, 'Paraguay'),
(138, 'Peru'),
(139, 'Philippines'),
(140, 'Poland'),
(141, 'Portugal'),
(142, 'Qatar'),
(143, 'Romania'),
(144, 'Russia'),
(145, 'Rwanda'),
(146, 'Saint Kitts and Nevis'),
(147, 'Saint Lucia'),
(148, 'Saint Vincent and the Grenadines'),
(149, 'Samoa'),
(150, 'San Marino'),
(151, 'Sao Tome and Principe'),
(152, 'Saudi Arabia'),
(153, 'Senegal'),
(154, 'Serbia'),
(155, 'Seychelles'),
(156, 'Sierra Leone'),
(157, 'Singapore'),
(158, 'Slovakia'),
(159, 'Slovenia'),
(160, 'Solomon Islands'),
(161, 'Somalia'),
(162, 'South Africa'),
(163, 'South Sudan'),
(164, 'Spain'),
(165, 'Sri Lanka'),
(166, 'Sudan'),
(167, 'Suriname'),
(168, 'Sweden'),
(169, 'Switzerland'),
(170, 'Syria'),
(171, 'Taiwan'),
(172, 'Tajikistan'),
(173, 'Tanzania'),
(174, 'Thailand'),
(175, 'Togo'),
(176, 'Tonga'),
(177, 'Trinidad and Tobago'),
(178, 'Tunisia'),
(179, 'Turkey'),
(180, 'Turkmenistan'),
(181, 'Tuvalu'),
(182, 'Uganda'),
(183, 'Ukraine'),
(184, 'United Arab Emirates'),
(185, 'United Kingdom'),
(186, 'United States'),
(187, 'Uruguay'),
(188, 'Uzbekistan'),
(189, 'Vanuatu'),
(190, 'Vatican City'),
(191, 'Venezuela'),
(192, 'Vietnam'),
(193, 'Yemen'),
(194, 'Zambia'),
(195, 'Zimbabwe');

-- --------------------------------------------------------

--
-- Table structure for table `free-listing-product`
--

CREATE TABLE `free-listing-product` (
  `pro_id` int(100) NOT NULL,
  `product_name` varchar(200) NOT NULL,
  `img1` varchar(100) NOT NULL,
  `img2` varchar(100) NOT NULL,
  `img3` varchar(100) NOT NULL,
  `company_name` varchar(255) NOT NULL,
  `company_logo` varchar(255) NOT NULL,
  `product_description` varchar(255) NOT NULL,
  `cat_id` int(100) NOT NULL,
  `sub_id` int(100) NOT NULL,
  `inner_cat_id` int(100) NOT NULL,
  `micro_id` int(100) NOT NULL,
  `location` varchar(255) NOT NULL,
  `unit` varchar(200) NOT NULL,
  `price` varchar(200) NOT NULL,
  `countries_name` varchar(200) NOT NULL,
  `state_name` varchar(200) NOT NULL,
  `user_email` varchar(200) NOT NULL,
  `user_id` int(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `free-listing-product`
--

INSERT INTO `free-listing-product` (`pro_id`, `product_name`, `img1`, `img2`, `img3`, `company_name`, `company_logo`, `product_description`, `cat_id`, `sub_id`, `inner_cat_id`, `micro_id`, `location`, `unit`, `price`, `countries_name`, `state_name`, `user_email`, `user_id`) VALUES
(14, '', 'logo/logo.jpg', '', '', '', '', '', 0, 0, 0, 0, '', '', '', '', '', '', 0),
(15, 'cap', 'logo/logo.jpg', '', '', 'web2export', '', 'this is cap', 5, 6, 8, 4, '', '', '', '', '', '', 0),
(16, 'bts bags', 'logo/download.jfif', '', '', 'web2export', '', 'this is party bags', 5, 6, 6, 1, '', '', '', '', '', '', 0),
(17, 'LED Lamp', 'extra_image/led_lamp.jpg', '', '', 'Tech Innovations', '', 'Energy-efficient LED lamp for home decor', 12, 15, 17, 22, 'New York', '', '', '', '', '', 0),
(18, 'Smart Thermostat', 'extra_image/smart_thermostat.jpg', '', '', 'Smart Living Solutions', '', 'WiFi-enabled smart thermostat for home automation', 12, 15, 18, 23, 'San Francisco', '', '', '', '', '', 0),
(19, 'Home Security Camera', 'extra_image/security_camera.jpg', '', '', 'Secure Home Solutions', '', 'HD security camera for indoor surveillance', 12, 15, 19, 24, 'Chicago', '', '', '', '', '', 0),
(20, 'Water Bottle ', 'logo/mbgwnyy18q3lb0wi22ie083fgghiq3bp.jpg', '', '', 'https://vistaraenterprise.com/', '', 'Water Bottle ', 16, 17, 0, 0, '', '', '', '', '', '', 0),
(21, 'PULSES', 'logo/Blue Modern Fashion Shop Logo.png', '', '', 'Tohfa', '', 'FGEWYIEGYIEWGIRGRUI', 12, 14, 35, 12, '', '', '', '', '', '', 0),
(22, 'rice', 'logo/pol.PNG', '', '', 'asif traders', '', '\r\nRice is a commonly-eaten food around the world. The varieties of rice are typically classified as short-, medium-, and long-grained. Oryza sativa indica varieties are usually long-grained; Oryza sativa japonica varieties are usually short- or medium-gra', 10, 11, 43, 59, '', '', '', '', '', '', 0),
(23, 'rice', 'logo/istockphoto-153737841-612x612.jpg', '', '', 'harsh pri ltd', '', '->my rice iis best', 16, 19, 43, 59, '', '', '', '', '', '', 0),
(24, 'cap', 'logo/aerial-view-container-cargo-ship-sea.jpg', '', '', 'sit', '', 'adasd', 11, 0, 0, 0, '', 'km', '12000000000000000', 'India', 'Goa', 'ashu@gmail.com', 0),
(25, 'mango', 'logo/aerial-view-container-cargo-ship-sea.jpg', '', '', 'web2export', '', 'ghfghfgh', 10, 0, 0, 0, 'D-vihar new delhi kartik nagar', 'km', '1200', 'Barbados', 'Goa', 'ashu@gmail.com', 0),
(26, 'mango', 'user-product-image/christmas-tree-with-gifts.jpg', '', '', 'sithub.com', '', 'asdasd', 12, 0, 0, 0, 'asdasdads', 'km', '1200', 'Albania', 'Goa', 'ashu@gmail.com', 0);

-- --------------------------------------------------------

--
-- Table structure for table `inbox`
--

CREATE TABLE `inbox` (
  `id` int(100) NOT NULL,
  `phone_number` varchar(200) NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `inbox`
--

INSERT INTO `inbox` (`id`, `phone_number`, `message`) VALUES
(3, '0', 'demo mail '),
(4, '0', 'demo mail '),
(5, '', 'afsdfsdf'),
(6, '8287042772', 'sdfsdf');

-- --------------------------------------------------------

--
-- Table structure for table `inner_cat`
--

CREATE TABLE `inner_cat` (
  `inner_cat_id` int(100) NOT NULL,
  `inner_cat_name` varchar(256) NOT NULL,
  `sub_id` int(100) NOT NULL,
  `inner_cat_image` varchar(255) NOT NULL,
  `cat_id` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `inner_cat`
--

INSERT INTO `inner_cat` (`inner_cat_id`, `inner_cat_name`, `sub_id`, `inner_cat_image`, `cat_id`) VALUES
(11, 'Fruit Plants', 10, 'extra_image/1f8f6315e8581bbb5a2e117788b75ada.jpg', 0),
(12, 'Outdoor Plants', 10, 'extra_image/nearly-natural-artificial-trees-5590-64_1000.jpg', 0),
(13, 'Natural Flowers', 10, 'extra_image/garden-roses-pictures-w7cxk84w7qx9e47t.jpg', 0),
(16, 'auto1', 14, 'extra_image/', 0),
(17, 'Bedroom Decor', 15, 'extra_image/bedroom_decor.jpg', 0),
(18, 'Living Room Decor', 15, 'extra_image/living_room_decor.jpg', 0),
(19, 'Kitchen Decor', 15, 'extra_image/kitchen_decor.jpg', 0),
(20, 'Garden Plant', 10, 'extra_image/0263103d0c05490fd8b72f855dd83162.jpg', 0),
(25, 'Harvesters', 11, 'extra_image/3-Row-Model-4YZ-3C-Corn-Harvester6.jpg', 0),
(26, 'Agricultural Irrigation Systems', 11, 'extra_image/', 0),
(27, 'Cultivators', 11, 'extra_image/', 0),
(28, 'Sprinkler Irrigation System', 11, 'extra_image/', 0),
(29, 'Leather Shoes', 13, 'extra_image/Leather Shoes.jpg', 0),
(30, 'Flat Slippers', 13, 'extra_image/Flat Slippers.jpg', 0),
(31, 'Ladies Shoes', 13, 'extra_image/Ladies Shoes.jpg', 0),
(32, 'Shoe Care Products', 13, 'extra_image/image-asset.jpg', 0),
(33, 'Whole Spices', 20, 'extra_image/vostochnie_pryanosti.jpg', 0),
(34, 'Flours', 19, 'extra_image/9872810c18d734006892108ce476d420.jpg', 0),
(35, 'Fresh Fruits', 18, 'extra_image/346356536.jpg', 0),
(36, 'Flavored Tea', 17, 'extra_image/asafdfs.jpg', 0),
(37, 'Coffee Powder', 17, 'extra_image/3517814.jpg', 0),
(38, 'Herbal Tea', 17, 'extra_image/teaafdf.jpg', 0),
(39, 'Black Tea', 17, 'extra_image/63aa535d15927_lg.jpg', 0),
(40, 'Coffee', 17, 'extra_image/kofe-napitok-sahar-chashka.jpg', 0),
(41, 'Green Tea', 17, 'extra_image/green-tea-e1429210531847.jpeg', 0),
(42, 'Tea Premix', 17, 'extra_image/fewerwr.jpg', 0),
(43, 'rice', 19, 'extra_image/144400_andorwin_b5d06327-547b-4649-8027-55ec53fca461.jpg', 0),
(44, 'Pulses', 19, 'extra_image/Tech-Profile_Opportunities-with-high-value-Pulses_Adobe-Stock_117825265_E.jpg', 0),
(45, 'Coconut', 21, 'extra_image/2e70bd72_1b58_11e7_af8b_002191ef9e86_b7e359f3_21c3_11e8_aae7_38d547b42ba9_resize1.jpg', 0),
(46, 'Fresh Vegetables', 22, 'extra_image/gsdg.jpg', 0),
(47, 'Exotic Vegetables', 22, 'extra_image/news_photo-20221027-205111.jpg', 0),
(48, 'Masala Mix', 20, 'extra_image/', 0);

-- --------------------------------------------------------

--
-- Table structure for table `limit_buylead`
--

CREATE TABLE `limit_buylead` (
  `limit_id` int(100) NOT NULL,
  `user_id` int(200) NOT NULL,
  `user_email` varchar(100) NOT NULL,
  `buyleads_id` int(100) NOT NULL,
  `buyer_email` varchar(100) NOT NULL,
  `queiry_for` varchar(255) NOT NULL,
  `number` int(100) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp(),
  `buyer_name` varchar(100) NOT NULL,
  `buyer_location` varchar(100) NOT NULL,
  `plan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `limit_buylead`
--

INSERT INTO `limit_buylead` (`limit_id`, `user_id`, `user_email`, `buyleads_id`, `buyer_email`, `queiry_for`, `number`, `date`, `buyer_name`, `buyer_location`, `plan`) VALUES
(65, 53, 'ritika@gmail.com', 4, 'varun@gmail.com', 'mango products', 2147483647, '2024-06-15', 'varun kumar', '', '0'),
(66, 53, 'ritika@gmail.com', 5, 'shanu@gmail.com', 'singing products', 45345345, '2024-06-15', 'shanu kumar', 'US', '0'),
(67, 55, 'shyam@gmail.com', 4, 'varun@gmail.com', 'mango products', 2147483647, '2024-06-17', 'varun kumar', 'delhi', '0'),
(68, 65, 'webritika555@gmail.com', 4, 'varun@gmail.com', 'mango products', 2147483647, '2024-07-06', 'varun kumar', 'delhi', '0'),
(69, 61, 'githublive123@gmail.com', 4, 'varun@gmail.com', 'mango products', 2147483647, '2024-07-12', 'varun kumar', 'delhi', '0'),
(70, 61, 'githublive123@gmail.com', 4, 'varun@gmail.com', 'mango products', 2147483647, '2024-07-12', 'varun kumar', 'delhi', '0'),
(71, 68, 'anish@gmail.com', 8, 'abc@gmail.com', 'toy car', 2147483647, '2024-07-12', 'deepak', 'delhi , shyan kund 110031', '0'),
(72, 68, 'anish@gmail.com', 9, 'abc@gmail.com', 'Car Cleaning Cloth ', 2147483647, '2024-07-12', 'khan ', 'delhi , shyan kund 110031', '0'),
(73, 61, 'githublive123@gmail.com', 6, 'abc@gmail.com', 'apple  mango juse', 2147483647, '2024-07-12', 'varun kumar', 'delhi', '0'),
(74, 61, 'githublive123@gmail.com', 6, 'abc@gmail.com', 'apple  mango juse', 2147483647, '2024-07-13', 'varun kumar', 'delhi', '0'),
(75, 68, 'anish@gmail.com', 0, '', '', 0, '2024-07-13', '', '', '0'),
(76, 68, 'anish@gmail.com', 9, 'abc@gmail.com', 'Car Cleaning Cloth ', 2147483647, '2024-07-13', 'Varun', 'delhi , shyan kund 110031', '0'),
(77, 68, 'anish@gmail.com', 9, 'abc@gmail.com', 'Car Cleaning Cloth ', 2147483647, '2024-07-13', 'Varun', 'delhi , shyan kund 110031', '0'),
(78, 68, 'anish@gmail.com', 9, 'abc@gmail.com', 'Car Cleaning Cloth ', 2147483647, '2024-07-17', 'Varun', 'delhi , shyan kund 110031', '0'),
(79, 69, 'ritika@web2export.com', 0, '', '', 0, '2024-07-17', '', '', '0'),
(80, 68, 'anish@gmail.com', 9, 'abc@gmail.com', 'Car Cleaning Cloth ', 2147483647, '2024-07-18', 'Varun', 'delhi , shyan kund 110031', '0'),
(81, 68, 'anish@gmail.com', 9, 'abc@gmail.com', 'Car Cleaning Cloth ', 2147483647, '2024-07-18', 'Varun', 'delhi , shyan kund 110031', '0'),
(82, 68, 'anish@gmail.com', 0, '', '', 0, '2024-07-18', '', '', '0'),
(83, 68, 'anish@gmail.com', 0, '', '', 0, '2024-07-18', '', '', '0'),
(84, 68, 'anish@gmail.com', 0, '', '', 0, '2024-07-18', '', '', '0'),
(85, 68, 'anish@gmail.com', 0, '', '', 0, '2024-07-18', '', '', '0'),
(86, 68, 'anish@gmail.com', 9, 'abc@gmail.com', 'Car Cleaning Cloth ', 2147483647, '2024-07-18', 'Varun', 'delhi , shyan kund 110031', '0'),
(87, 68, 'anish@gmail.com', 8, 'abc@gmail.com', 'toy car', 2147483647, '2024-07-18', 'deepak', 'delhi , shyan kund 110031', '0'),
(88, 90, 'ashu@gmail.com', 4, 'varun@gmail.com', 'car', 2147483647, '2024-08-14', 'varun kumar', 'delhi', '0'),
(89, 91, 'kavita@gmail.com', 4, 'varun@gmail.com', 'car', 2147483647, '2024-08-16', 'varun kumar', 'delhi', ''),
(90, 91, 'kavita@gmail.com', 4, 'varun@gmail.com', 'car', 2147483647, '2024-08-16', 'varun kumar', 'delhi', ''),
(91, 91, 'kavita@gmail.com', 4, 'varun@gmail.com', 'car', 2147483647, '2024-08-16', 'varun kumar', 'delhi', ''),
(92, 91, 'kavita@gmail.com', 4, 'varun@gmail.com', 'car', 2147483647, '2024-08-16', 'varun kumar', 'delhi', '');

-- --------------------------------------------------------

--
-- Table structure for table `micro`
--

CREATE TABLE `micro` (
  `micro_id` int(100) NOT NULL,
  `micro_name` varchar(255) NOT NULL,
  `cat_id` int(100) NOT NULL,
  `sub_id` int(100) NOT NULL,
  `inner_cat_id` int(100) NOT NULL,
  `micro_cat_image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `micro`
--

INSERT INTO `micro` (`micro_id`, `micro_name`, `cat_id`, `sub_id`, `inner_cat_id`, `micro_cat_image`) VALUES
(6, 'Mango Plants', 10, 10, 11, 'extra_image/1f8f6315e8581bbb5a2e117788b75ada.jpg'),
(7, 'Neem Tree', 10, 10, 12, 'extra_image/2.jpg'),
(8, 'Palm Trees', 10, 10, 12, 'extra_image/76806-1-home.jpg'),
(9, 'Banana Plants', 10, 10, 11, 'extra_image/Banana-tree-with-ripe-yellow-banana-bearing.jpg'),
(10, 'Casual Shoes', 11, 13, 0, 'extra_image/57068d4452bcd0210c8bb4f9.jpg'),
(11, 'auto2', 12, 14, 16, 'extra_image/'),
(12, 'Modern Lamps', 12, 15, 17, 'extra_image/modern_lamps.jpg'),
(13, 'Smart Home Devices', 12, 15, 18, 'extra_image/smart_home_devices.jpg'),
(14, 'Home Security Systems', 12, 15, 19, 'extra_image/home_security_systems.jpg'),
(15, 'Rose Flower', 10, 10, 13, 'extra_image/0263103d0c05490fd8b72f855dd83162.jpg'),
(16, 'Jasmine Flowers', 10, 10, 13, 'extra_image/vgdgfg.jpg'),
(17, 'Herbal Plant', 10, 10, 20, 'extra_image/348709-1-home.jpg'),
(18, 'Dragon Fruit Plant', 10, 10, 11, 'extra_image/1_1625393564.jpg'),
(19, 'Harvesters', 10, 11, 0, 'extra_image/3-Row-Model-4YZ-3C-Corn-Harvester6.jpg'),
(20, 'Combine Harvester', 10, 11, 25, 'extra_image/3-Row-Model-4YZ-3C-Corn-Harvester6.jpg'),
(21, 'Power Reaper', 10, 11, 25, 'extra_image/rVlibgmartpowerriper-min.jpeg'),
(22, 'Sprinkler Irrigation System', 10, 11, 26, 'extra_image/'),
(23, 'Men Leather Shoes', 11, 13, 29, 'extra_image/Leather Shoes.jpg'),
(24, 'Ladies Leather Shoes', 11, 13, 29, 'extra_image/'),
(25, 'Ladies Slippers', 11, 13, 30, 'extra_image/Ladies Slippers.jpg'),
(26, 'Turmeric ', 16, 20, 33, 'extra_image/pjimage-3-1592015169.jpg'),
(27, 'Wheat Flour', 16, 19, 34, 'extra_image/AARiRS9.jpg'),
(28, 'Gram Flour', 16, 19, 34, 'extra_image/healthy-besan-recipes-Main_g.jpg'),
(29, 'Organic Flour', 16, 19, 34, 'extra_image/white-quinoa-flour-1kg-660003.jpg'),
(30, 'Mango', 16, 18, 35, 'extra_image/23424.jpg'),
(31, 'Tropical Fruits', 16, 21, 35, 'extra_image/4534554.jpg'),
(35, 'Flower Tea', 16, 17, 36, 'extra_image/asafdfs.jpg'),
(36, 'Lemon Tea', 16, 17, 36, 'extra_image/fewerwr.jpg'),
(37, 'Masala Tea', 16, 17, 36, 'extra_image/teaafdf.jpg'),
(38, 'Ginger Tea', 16, 17, 36, 'extra_image/5d88f5cd-f1b7-4aa3-b8f4-c48bc423361e_ab336c36.jpg'),
(39, 'Cardamom Tea', 16, 17, 36, 'extra_image/86fbd84ed15bffbffec7b89153a9b799.jpg'),
(40, 'Fruit Tea', 16, 17, 36, 'extra_image/Fruit-Tea-Wallpaper.jpg'),
(41, 'Lemongrass Tea', 16, 17, 36, 'extra_image/Lemon_Grass_656434609.jpg'),
(42, 'Mint Tea', 16, 17, 36, 'extra_image/screen-5.jpg'),
(43, 'Cinnamon Tea', 16, 17, 36, 'extra_image/bc04d9e68fdb950a18c53eef5699e7e1.jpg'),
(44, 'Chocolate Tea', 16, 17, 36, 'extra_image/72102cb381b23df887861859ad6240d7.jpg'),
(45, 'Kesar Tea', 16, 17, 36, 'extra_image/maxresdefault.jpg'),
(46, 'Tea Powder', 16, 17, 36, 'extra_image/green-tea-powder-1517903920-3629964.jpeg'),
(47, 'Honey Tea', 16, 17, 36, 'extra_image/5dcd097b3a193c6d49de81cdb0e6fbda.jpg'),
(48, 'Earl Grey Tea', 16, 17, 36, 'extra_image/Hetties-Earl-Grey-1024x683.jpg'),
(49, 'Peppermint Tea', 16, 17, 36, 'extra_image/the-health-benefits-of-peppermint-and-green-tea-main.jpeg'),
(50, 'Amla Tea', 16, 17, 36, 'extra_image/maxresdefault (1).jpg'),
(51, 'Vanilla Tea', 16, 17, 36, 'extra_image/77b455a33f66274d4bbef4aff08dc8c7.jpg'),
(52, 'Decaffeinated Tea', 16, 17, 36, 'extra_image/decaf_orange_pekoe_1024x1024.jpg'),
(53, 'Pearl Milk Tea', 16, 17, 36, 'extra_image/3b1416395036ab205e3b926c594a42e5.jpg'),
(54, ' Plain Coffee', 16, 17, 37, 'extra_image/kofe-napitok-sahar-chashka.jpg'),
(55, 'Instant Coffee', 16, 17, 37, 'extra_image/qwewe.jpg'),
(56, 'Chicory Powder', 16, 17, 37, 'extra_image/blue-chicory-flower-pile-instant-powder-old-wooden-table-concept-healthy-eating-drink-coffee-substitute-158241589.jpg'),
(57, 'Filter Coffee Powder', 16, 17, 37, 'extra_image/maxresdefault (2).jpg'),
(58, 'Banana Flour', 16, 19, 34, 'extra_image/Green-plantain-flour-as-a-substitute-for-almond-flour.jpg'),
(59, 'Basmati Rice', 16, 19, 43, 'extra_image/arroz_basmati.jpg'),
(60, 'Non Basmati Rice', 16, 19, 43, 'extra_image/riso-basmati-1.jpg'),
(61, 'Brown Rice', 16, 19, 43, 'extra_image/fd836c9b3870755aaf68113ab4870864.jpg'),
(62, 'Ponni Rice', 16, 19, 43, 'extra_image/sfsdf.jpg'),
(63, 'Golden Sella Rice', 16, 19, 43, 'extra_image/234.jpg'),
(64, 'Idli Rice', 16, 19, 43, 'extra_image/687632.jpeg'),
(65, 'Chane', 16, 19, 44, 'extra_image/Kala_Chana.jpg'),
(66, 'Husked Coconut', 16, 21, 45, 'extra_image/2e70bd72_1b58_11e7_af8b_002191ef9e86_b7e359f3_21c3_11e8_aae7_38d547b42ba9_resize1.jpg'),
(67, 'Tender Coconut', 16, 21, 45, 'extra_image/2342342342344.jpg'),
(68, 'Dry Red Chilli', 16, 20, 33, 'extra_image/adsdasd.jpg'),
(69, 'Onions', 16, 22, 46, 'extra_image/afafd.jpg'),
(70, 'Potato', 16, 22, 46, 'extra_image/adadf.jpg'),
(71, 'Broccoli', 16, 22, 47, 'extra_image/broccoli-1.jpg'),
(72, 'Garam Masala', 16, 20, 48, 'extra_image/'),
(73, 'Chicken Masala', 16, 20, 48, 'extra_image/');

-- --------------------------------------------------------

--
-- Table structure for table `plan`
--

CREATE TABLE `plan` (
  `id` int(50) NOT NULL,
  `user` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `plan` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `pro_id` int(100) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `long_dec` varchar(255) NOT NULL,
  `product_image1` varchar(255) NOT NULL,
  `product_image2` varchar(255) NOT NULL,
  `product_image3` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `company_experience` varchar(255) NOT NULL,
  `company_name` varchar(255) NOT NULL,
  `company_logo` varchar(255) NOT NULL,
  `product_description` text NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `number` int(20) NOT NULL,
  `client_name` varchar(255) NOT NULL,
  `business_type` varchar(255) NOT NULL,
  `moq` varchar(255) NOT NULL,
  `packaging_type` varchar(255) NOT NULL,
  `product_life` varchar(255) NOT NULL,
  `feature` varchar(255) NOT NULL,
  `company_description` text NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp(),
  `cat_id` int(100) NOT NULL,
  `sub_id` int(100) NOT NULL,
  `micro_id` int(100) NOT NULL,
  `inner_cat_id` int(100) NOT NULL,
  `name` varchar(255) NOT NULL,
  `iec` varchar(200) NOT NULL,
  `gst` varchar(100) NOT NULL,
  `exp` varchar(100) NOT NULL,
  `website` varchar(255) NOT NULL,
  `state_name` varchar(200) NOT NULL,
  `company_address` varchar(200) NOT NULL,
  `about_company` text NOT NULL,
  `country_name` varchar(200) NOT NULL,
  `unit` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`pro_id`, `product_name`, `long_dec`, `product_image1`, `product_image2`, `product_image3`, `title`, `price`, `company_experience`, `company_name`, `company_logo`, `product_description`, `city`, `state`, `country`, `number`, `client_name`, `business_type`, `moq`, `packaging_type`, `product_life`, `feature`, `company_description`, `date`, `cat_id`, `sub_id`, `micro_id`, `inner_cat_id`, `name`, `iec`, `gst`, `exp`, `website`, `state_name`, `company_address`, `about_company`, `country_name`, `unit`) VALUES
(18, '  Dasheri Mango, 1 kg', ' <tr><th>Price</th>  <td>MRP:₹142.47</td></tr>\r\n<tr><th>Country of origin</th><td> India</td></tr>\r\n<tr><th>Life</th><td> 2 months</td></tr>                                     \r\n<tr><th>packaging</th><td> Box</td></tr>\r\n ', 'extra_image/23424.jpg', '', '', 'Fresh Mango', '142.47', '12 years', 'Vistara', 'extra_image/logo_green.jpg', '<tr><th>Price</th>  <td>MRP:₹142.47</td></tr>\r\n<tr><th>Country of origin</th><td> India</td></tr>\r\n<tr><th>Life</th><td> 2 months</td></tr>                                     \r\n ', 'delhi', '', '', 0, 'Kartik Arun', '', '12   ', '', '', 'fresho! Dasheri Mango, 1 kg', '', '2024-07-17', 16, 21, 30, 35, '', 'IEC654654654', 'GST654654GF', '', 'https://vistaraenterprise.com/', 'Delhi', 'Vistara enterprise 7/3 Ayyanar kovil Road, Opposite to Thadco colony, Rajapalayam, Virudhunagar District, Tamilnadu -626117', 'ALALALALALA', '', ''),
(20, 'Common Fresh Basmati Rice', '<tr><th>Cultivation Type</th>  <td>Common</td></tr>\r\n<tr><th>Payment Terms</th>  <td>Common</td></tr>\r\n<tr><th>Product Unit</th>  <td>100 Piece/Pieces</td></tr>', 'extra_image/food3049731605514801095360.jpg', '', '', '', '', '2 Years', 'YEDHANT INTERNATIONAL', 'extra_image/', '<tr><th>Cultivation Type</th>  <td>Common</td></tr>\r\n<tr><th>Payment Terms</th>  <td>Common</td></tr>\r\n<tr><th>Product Unit</th>  <td>100 Piece/Pieces</td></tr>', '', '', '', 0, 'Mr. Siddhant', '', '', '', '', 'Common Fresh Basmati Rice', '', '2024-08-11', 16, 19, 59, 43, '', 'NO', '06GUNPP0275H1Z9', '', 'NO', 'Delhi', '', '', '', ''),
(21, 'Ir 64 Parboiled Rice (Broken 5 %)', '<tr><th>Minimum Order Quantity </th>  <td>: 25 MT Metric Ton</td></tr>\r\n<tr><th>Price Trend </th>  <td>: 340.00 - 355.00 USD / Metric Ton</td></tr>\r\n<tr><th>Delivery Time </th>  <td>10 Days</td></tr>\r\n<tr><th>Sample Policy</th>  <td>Free samples are avail', 'extra_image/GettyImages-519309790-2048x1341.jpg', '', '', '', '', '5 Years', 'CMS Industries', 'extra_image/', '<tr><th>Minimum Order Quantity </th>  <td>: 25 MT Metric Ton</td></tr>\r\n<tr><th>Price Trend </th>  <td>: 340.00 - 355.00 USD / Metric Ton</td></tr>\r\n<tr><th>Delivery Time </th>  <td>10 Days</td></tr>', '', '', '', 0, 'Mr Chintan Sejpal', '', '', '', '', 'Ir 64 Parboiled Rice (Broken 5 %)', '', '2024-08-11', 16, 19, 59, 43, '', '', '24BDKPS7263P1ZO', '', '', 'Gujarat', '', '', '', ''),
(22, 'Brown  And Fresh Organic Coconut', '', 'extra_image/5387d9fd-7538-4278-b566-bacc53fd77c6.jpg', '', '', '', 'Get Latest Price', '3 Years', 'Mr Guru Traders', 'extra_image/', '', '', '', '', 0, 'Mr Guru Samy', 'exporter', '5 Ton/Tons', 'Whole', '3 weeks', 'Fresh', '', '2024-08-19', 16, 21, 66, 45, '', 'NO', '33AHQPG6144E1ZH', '', 'NO', 'Tamil Nadu', 'No. 309, Thittuparai, Kangeyam, Tirupur, Tamil Nadu, 638701, India', '', 'India', ''),
(23, 'Fresh Coconuts By Arul Jothi Exports', '', 'extra_image/2019_Jan_15_-_Kumbh_Mela_-_Coconuts_For_Sale.jpg', '', '', '', 'Get Latest Price', '13 Years', 'ARUL JOTHI EXPORTS', 'extra_image/', '', '', '', '', 0, 'Mr Jagadish N', 'exporter', '5 Ton/Tons', 'Whole', '3 weeks', 'Fresh', '', '2024-08-19', 16, 21, 66, 45, '', 'NO', '33ARMPJ5838Q1Z1', '', 'NO', 'Tamil Nadu', '5, Mariamman Koil Street, Kallapalayam, Ichipatti Post, Somanur, Tirupur, Tamil Nadu, 641668, India', '', 'India', ''),
(24, 'Full Husked Fresh Coconut', '', 'extra_image/2342342342344.jpg', '', '', '', 'Get Latest Price', '2015', 'RVS Farms', 'extra_image/', '', '', '', '', 0, 'Mr Easwaramurthi KS', 'supplier', '5 Ton/Tons', 'Whole', '3 weeks', 'Fresh', '', '2024-08-19', 16, 21, 66, 45, '', 'NO', 'NO', '', 'NO', 'Tamil Nadu', '549, Merkupathi Post, Kunnathur, Tirupur, Tamil Nadu, 638103, India', '', 'India', ''),
(25, 'Green And Fresh Tender Coconut', '', 'extra_image/SDFSDFS.jpg', '', '', '', 'Price: 25', '2021', 'Krishna Food Cart', 'extra_image/', '', '', '', '', 0, 'Mr Sumit Bose', 'exporter', '3000 Unit', 'Whole', '3 weeks', 'Fresh Coconut', '', '2024-08-19', 16, 21, 67, 45, '', 'NO', '06ACFPB6865M2ZA', '', 'NO', 'Haryana', ' House No. - B-757, First Floor, Greenfield Colony, Faridabad, Haryana, 121010, India', 'rice\r\nPayment Mode\r\n\r\nOnline Payments (NEFT/RTGS/IMPS)\r\n', 'India', ' INR / Unit'),
(26, 'Dry Red Chilli  A Grade', '', 'product-image/adsdasd.jpg', '', '', '', '76', '1961 ', 'RATNARAJ FOODS', 'extra_image/', 'Minimum Order Quantity : 100 Bottle', '', '', '', 0, 'Mr Deep Girishbhai Shah', 'exporter', '100 Bottle', 'Bottle/Flex', 'Long Shelf Life', 'Hygienic Processing', '', '2024-08-20', 16, 20, 68, 33, '', 'NO', '24ENJPS1690Q1Z4', '', 'NO', 'Chandigarh', 'Survey No. 258, Block No. 515, G/F, Near Silver Estate, Rakanpur- Santej Road, Gandhinagar, Ahmedabad, Gujarat, 382721, India', '', 'India', ' INR / Bottle'),
(27, 'Dry Reshampatti Red Chilli  ', '', 'extra_image/Dried-Paprika.jpg', '', '', '', 'Get Latest Price', '2024', 'Chandeep Global Exports', 'extra_image/', 'Minimum Order Quantity : 100 Kilograms', '', '', '', 0, 'mr. Chandeep singh', 'exporter', '100 Kilograms', 'Solid', 'Long Shelf Life', 'Hygienic Processing', '', '2024-08-20', 16, 20, 68, 33, '', 'NO', ' 07BROPA1272N1ZK', '', 'NO', 'Delhi', 'J-3/50, 3rd Floor, Rajouri Garden New Delhi, Delhi, 110027, India', '', 'India', ''),
(28, 'Yellow Turmeric Powder', '', 'extra_image/dfgdfg.jpg', '', '', '', 'Get Latest Price', '2022', 'Kapadiya Expo Company', 'extra_image/', 'Accepts only Foreign inquiries\r\nMinimum Order Quantity : 20\r\nLetter of Credit at Sight (Sight L/C)', '', '', '', 0, 'Mr. Vishal', 'exporter', '20', 'Dried / Box', 'Long Shelf Life', 'Dried', '', '2024-08-20', 16, 20, 26, 33, '', 'NO', '24IQFPK3436M1ZI', '', 'NO', 'Gujarat', '14, Sahyog Complex, Near Gandhi Bag, Mahuva, Mahuva, Gujarat, 364290, India', '', 'India', ''),
(29, 'Fresh Red Onion', '', 'extra_image/afafd.jpg', '', '', '', 'Price: 125 INR / Kilograms', '2017 ', 'BEAUTI ENTERPRISES', 'extra_image/', 'Minimum Order Quantity : 28000 Kilograms\r\nPrice: 125 INR / Kilograms', '', '', '', 0, 'Mr Ajgar Shaikh', 'exporter', '28000 Kilograms', 'Raw', 'Long Shelf Life', 'other, Fresh', '', '2024-08-20', 16, 22, 69, 46, '', 'NO', '19BMGPS2883A1ZV', '', 'NO', 'West Bengal', 'B No H No-2647, Plot No-412, Kh No-1125, J.L-076, Simla, P.o-Mertala, P.S-Purbasthali, Burdwan, West Bengal, 713513, India', '', 'India', ''),
(30, 'Fresh Potato Moisture', '', 'extra_image/adadf.jpg', '', '', '', ' 125 ', '2021', 'Globus Global Trade Import and Export ', 'extra_image/', '*Price: 125 INR / Kilograms\r\n(125 INR + GST)\r\n*Accepts only Foreign inquiries', '', '', '', 0, 'Mr. Syed Basheer Uddin', 'exporter', '125 INR / Kilograms', 'Raw', 'Long Shelf Life', 'other, Fresh', '', '2024-08-20', 16, 22, 70, 46, '', 'NO', '36AFGPU2815L2Z1', '', 'NO', 'Telangana', 'H No 8-2-701, Third Floor 301, Emperado, Road No 12, Banjarahills, Hyderabad, Telangana, 500034 , India', '', 'India', 'INR / Kilograms'),
(31, 'Broccoli  ', '', 'extra_image/broccoli-1.jpg', '', '', '', ' 100.00 - 300.00 ', '2006', 'YESRAJ AGRO EXPORTS PVT LTD', 'extra_image/', '*Price Trend: 100.00 - 300.00 INR / Kilograms\r\n*Minimum Order Quantity : 5 Kilograms', '', '', '', 0, 'Mr Raj Bhagat', 'exporter', '5 Kilograms', 'Raw', '3-5 Days', 'other, Fresh', '', '2024-08-20', 16, 22, 71, 47, '', 'NO', '27AJMPB0208L1ZE', '', 'NO', 'Maharashtra', 'Market Yard, Pune, Maharashtra, 411037, India', '', 'India', 'INR / Kilograms'),
(32, 'Mango Plant', '', 'extra_image/1f8f6315e8581bbb5a2e117788b75ada.jpg', '', '', '', ' 90', '2012', 'Shreem Biotech PVT LTD', 'extra_image/', '*Soil Specific :Acidic, Alkaline, Well Drained\r\n*Is It Organic: Organic\r\n*Preferred Buyer Location : All over the world', '', '', '', 0, 'Mr. Gajanand Chouriya', 'Manufacturer', ' 50000 Plant', 'Row', 'Long Shelf Life', 'Langra Mango', '', '2024-08-20', 10, 10, 6, 11, '', 'NO', 'NO', '', 'NO', 'Chandigarh', ' Chandangaon, Chhindwara, Madhya Pradesh', '', 'India', ' / Plant'),
(34, 'All Time Mango Plant', '', 'extra_image/ae56abdce3ab3beb5d6e2b51f3563a90.jpg', '', '', '', 'Get Latest Price', '2010', 'Utsab Nursery', 'extra_image/', '*Minimum Order Quantity : 100 Piece', '', '', '', 0, ' Mr Kartik', 'exporter', '100 Piece', 'Plant', 'Long Shelf Life', 'Different Breed Available', '', '2024-08-20', 10, 22, 6, 11, '', 'NO', 'NO', '', 'NO', 'West Bengal', 'Kastodanga, Dist- Nadia, Haringhata, West Bengal, 741257, India', '', 'India', ''),
(35, 'Banana  Plant', '', 'extra_image/Banana-tree-with-ripe-yellow-banana-bearing.jpg', '', '', '', '60.00 - 600.00', '1990', ' New Deshpran Nursery & Agricultural Farm', 'extra_image/', '*Different Available : YES\r\n*Part  : Leaves\r\n*Main Domestic Market  : All India\r\n', '', '', '', 0, 'Mr Abhijit', 'supplier', '100 Piece', 'Customized', 'Long Shelf Life', 'Different Breed  Available', '', '2024-08-20', 10, 10, 9, 11, '', 'NO', '19AGAPK4385Q1ZP', '', 'NO', 'West Bengal', 'Post+P.O.- Sukhdevpur, Gotalahat Road, P.s.- Bishnupur (Amtala) Dist- South 24 PGS, Kolkata, West Bengal, 743503, India', '', 'India', 'INR / Piece'),
(36, 'Dragon Fruit Plant', '', 'extra_image/1_1625393564.jpg', '', '', '', '45 ', '2018', 'Indo Essence Agro Herbs', 'extra_image/', '*Certification  :   ISO 9001:2015', '', '', '', 0, 'Mrs. Neelam', 'exporter', ' 500', 'Raw', 'Long Shelf Life', 'Certification  :   ISO 9001:2015', '', '2024-08-20', 10, 10, 18, 11, '', 'NO', '23ANCPB2099K1Z5', '', 'NO', 'Madhya Pradesh', 'Near New Anaj Mandi, Umri Road, Guna, Guna, Madhya Pradesh, 473001, India', '', 'India', 'INR'),
(37, 'Neem Plant Grade', '', 'extra_image/neem-tree.JPG', '', '', '', 'Get Latest Price', '2016', ' Maatitatva Agro Industries Private Limited', 'extra_image/', '*Usage :  Commercial\r\n*Payment Terms : Cash on Delivery (COD)', '', '', '', 0, 'Mr. Ayush Khatod', 'supplier', '100 Unit', 'Raw', 'Long Shelf Life', 'Herbs', '', '2024-08-20', 10, 10, 7, 12, '', 'NO', '23AANCM8802G1ZF', '', 'NO', 'Madhya Pradesh', '304, Third Floor, Manav Trade Centre, Near Madhumilan Square, Indore, Madhya Pradesh, 452001, India', '', 'India', ''),
(39, 'Green Palm Tree Plant', '', 'extra_image/nearly-natural-artificial-trees-5590-64_1000.jpg', '', '', '', 'Get Latest Price', '2020', 'The Bagichawala', 'extra_image/', '*Payment Terms  :  Cash Advance (CA)', '', '', '', 0, 'Mr. Amit Kamble', 'supplier', ' 2000 Piece', 'Raw', 'Long Shelf Life', 'Cash Advance (CA)', '', '2024-08-20', 10, 10, 8, 12, '', 'NO', 'NO', '', 'NO', 'Maharashtra', 'Sujata Elegance, Plot No. - I20, Survey No. - 23/A, Samarth Nagari, Sidhivinayak Nagari Road, Nigdi, Pune, Maharashtra, 411044, India', '', 'India', ''),
(40, 'Fresh Rose Flowers', '', 'extra_image/0263103d0c05490fd8b72f855dd83162.jpg', '', '', '', 'Get Latest Price', '2006', 'YESRAJ AGRO EXPORTS PVT LTD', 'extra_image/', '*Main Export Market(s) : 	<b>South America, Western Europe, Australia, North America, Eastern Europe, Middle East, Central America, Asia, Africa</b>', '', '', '', 0, 'Mr Raj Bhagat', 'exporter', '100 Piece', 'Raw', 'Long Shelf Life', 'Fresh Flowers', '', '2024-08-20', 10, 10, 15, 13, '', 'NO', '27AJMPB0208L1ZE', '', 'NO', 'Maharashtra', 'Market Yard, Pune, Maharashtra, 411037, India', '', 'India', ''),
(41, 'Artificial Velvet Rose Plant With Pot', '', 'extra_image/garden-roses-pictures-w7cxk84w7qx9e47t.jpg', '', '', '', 'Get Latest Price', '1998', 'Evergreen Bamboo India Private Limited', 'extra_image/', '*Payment Terms :  Cash in Advance (CID)\r\n*Main Domestic Market :  All India\r\n', '', '', '', 0, 'Ms Elen', 'supplier', '100 Unit', 'Raw', 'Long Shelf Life', 'Durable', '', '2024-08-20', 10, 10, 15, 13, '', 'NO', '07AACCE3617J1ZQ', '', '', 'Delhi', 'A 35, Link Road, Lajpat Nagar III, Near BDR, New Delhi, Delhi, 110024, India', '', 'India', ''),
(42, 'Maize Combine Harvester', '', 'extra_image/3-Row-Model-4YZ-3C-Corn-Harvester6.jpg', '', '', '', 'Get Latest Price', '1965', 'Dasmesh Mechanical Works', 'extra_image/', '*Power Source : Diesel\r\n*General Use   : Agriculture\r\n*Type   : 	Garden Cultivator, Agricultural Tools\r\n*Supply Ability   : 20 Per Month', '', '', '', 0, 'Mr Jagveer Singh', 'Manufacturer', ' 1 Unit', '--', 'Long  Life', 'Agriculture', '', '2024-08-20', 10, 11, 20, 25, '', 'NO', '03AEHPS0925H1ZO', '', 'NO', 'Punjab', 'Main Road, Amargarh, Malerkotla, Sangrur, Punjab, 148022, India', '', 'India', ''),
(44, 'Fresh Rose', '', 'extra_image/rose-1.jpg', '', '', '', '60', '18 years', 'YESRAJ AGRO EXPORTS PVT LTD', 'extra_image/', 'This is a Seasonal Fresh Flowers .', '', '', '', 0, 'Mr Raj Bhagat', 'exporter', '130', 'ROW', '2 Weeks', 'Seasonal Fresh Flowers', '', '2024-08-20', 10, 10, 15, 11, '', 'NO', ' 27AJMPB0208L1ZE', '', 'NO', 'Maharashtra', 'Market Yard, Pune, Maharashtra, 411037, India', '', 'India', 'INR'),
(45, 'Fresh Rose Flower', '', 'extra_image/rose-2.webp', '', '', '', '120', '4 years ', 'Velvet Beauty Products India', 'extra_image/', 'This rose is high quality product flowers.', '', '', '', 0, 'Ms. Neha', 'exporter', '110', 'ROW', '2 Weeks', 'High Quality', '', '2024-08-20', 10, 10, 15, 13, '', 'NO', '36APVPT8294F2ZU', '', 'No', 'Telangana', 'G-9, Eeco Valley West Block, Road No 12, Pjr Enclaves, Madhavpuri Hills, Chanda Nagar, Hyderabad, Telangana, 500050, India', '', 'India', 'INR'),
(46, 'Fancy Leather Shoes', '', 'extra_image/57068d4452bcd0210c8bb4f9.jpg', '', '', '', 'Get Latest Price', '2023', 'Ridesh International Private Limited', 'extra_image/', 'Accepts only Foreign inquiries\r\n*Product Type   :   Formal Shoes\r\n*Payment Terms  : Cash in Advance (CID)', '', '', '', 0, 'Mr. Parag Saraf', 'exporter', '12 pice', 'box', 'Long Shelf Life', 'Various Sizes Available', '', '2024-08-20', 11, 13, 23, 29, '', 'NO', '27AAMCR7366R1Z7', '', 'NO', 'Maharashtra', 'Bhondve Empire B-10, MIDC Water Pipeline Road, Ravet, Pune, Maharashtra, 412101, India', '', 'India', ''),
(47, 'Rose Flower', '', 'extra_image/rose-3.png', '', '', '', '166', '', 'VIRGO PRODUCTIONS LLP', 'extra_image/', '', '', '', '', 0, '', '', '', '', '', '', '', '2024-08-20', 10, 10, 15, 11, '', '', '', '', '', '', 'BMP 105, 4th Main, G M Palya, Bengaluru, Karnataka, 560075, India', '', '', 'INR'),
(48, 'Rose Bud Cap', '', 'extra_image/rose-3.png', '', '', '', '166', '28 years', 'VIRGO PRODUCTIONS LLP VIRGO PRODUCTIONS LLP', 'extra_image/', 'This flower is fresh and natural flowers.', '', '', '', 0, 'Mrs Sushma Jithesh Kumar', 'exporter', '112', 'ROW', '2 Weeks', 'Floating candle', '', '2024-08-20', 10, 10, 15, 13, '', 'NO', '29AASFV8414B1ZT', '', 'NO', 'Gujarat', 'CYTO Compound, Aanad Sojitra Road, Vitthal Udyognagar, Anand, Gujarat, 388121, India', '', 'India', 'INR'),
(49, 'Jasmine Flower', '', 'extra_image/jasmeen-1.webp', '', '', '', '505', '18 years', 'YESRAJ AGRO EXPORTS PVT LTD', 'extra_image/', 'This fresh is jasmine flowers.', '', '', '', 0, 'Mr Raj Bhagat', 'exporter', '115', 'ROW', '2 Weeks', 'High Quality', '', '2024-08-20', 10, 10, 16, 13, '', 'NO', '27AJMPB0208L1ZE', '', 'NO', 'Maharashtra', 'Market Yard, Pune, Maharashtra, 411037, India', '', 'India', 'INR'),
(50, 'Black Patent Leather Shoes ', '', 'extra_image/blackshoe.jpg', '', '', '', '220 INR / Pair', '1985', 'M/S R.S. International ', 'extra_image/', 'Feature : No Fade\r\nSeasons : Spring, Winter, Summer, Rainy', '', '', '', 0, 'Mr. Upkar', 'exporter', '100 Pair', 'Box', 'Long Shelf Life ', 'No Fade', '', '2024-08-20', 11, 13, 23, 29, '', 'NO', '09AJZPR7321P1ZZ', '', 'NO', 'Uttar Pradesh', '43/120/1A, Kailash Temple Road, Near Axis bank ATM, Sikandra Agra, Uttar Pradesh, 282007, India', '', 'India', ''),
(51, 'Fresh Jasmine Flower', '', 'extra_image/jasmeen-2.webp', '', '', '', '120', '6 years', 'DYNAMIC GLOBAL IMPEX', 'extra_image/', 'This is white Jasmine flowers .', '', '', '', 0, 'Mr. Swapnil Devidas', 'exporter', '135', 'ROW', '2 Weeks', 'Seasonal Fresh Flowers', '', '2024-08-20', 10, 10, 16, 13, '', 'NO', 'No', '', 'NO', 'Maharashtra', 'Milkat No. - 450, A/P Nighoje, Tal - Khed, Pune, Maharashtra, 410501, India', '', 'India', 'INR'),
(52, 'White Jasmine flower', '', 'extra_image/jasmeen-3.jpeg', '', '', '', '100', '2 years', 'NAND AGRO PRODUCT PRIVATE LIMITED', 'extra_image/', 'This is fresh jasmine flowers .', '', '', '', 0, 'Mr. Nishant Chotalia', 'supplier', '112', 'ROW', '2 Weeks', 'High Quality', '', '2024-08-20', 10, 10, 16, 13, '', '', '27AAECN8038J1Z4', '', 'NO', 'Maharashtra', '11/B, The Angelina Co Operative Housing Society Corner Of Sarojini Road, Vile Prie West, Juhu, Mumbai, Maharashtra, 400056, India', '', 'India', 'INR'),
(53, ' Leather Safety Shoes', '', 'extra_image/safetyshoes.jpg', '', '', '', '1399 ', '1996', 'MANGLA PLASTIC INDUSTRIES', 'extra_image/', 'Material : Leather \r\nToe Style : Steel Toe\r\nProduct Type : High Ankle\r\nCertificate : BIS, ISO, CE, TEST CERTIFICATE\r\n', '', '', '', 0, 'Mr Anil Kumar Mangla', 'exporter', '50', 'Box', 'Long Shelf Life ', 'Steel Toe', '', '2024-08-20', 11, 13, 23, 29, '', 'NO', '06AAKPM6216C1ZZ', '', 'NO', 'Haryana', '1732-33, MIE, Part-B, Bank Road, Bahadurgarh, Haryana, 124507, India', '', 'India', 'INR / Pair'),
(54, 'Power Reaper Digging Hole', '', 'extra_image/rVlibgmartpowerriper-min.jpeg', '', '', '', '120000.00 INR / Piece', '2017', 'VINSPIRE AGROTECH (I) PRIVATE LIMITED', 'extra_image/', '*Price: 120000.00 INR / Piece\r\n*(120000.00 INR + 0% GST)\r\n*1 Pack Contains 1\r\n*Minimum Pack Size 1\r\n*Certification  :  ISO 14001:2015, ISO 001:2015\r\n*Brand Name  : VINSPIRE AGROTECH (I) PRIVATE LIMITED\r\n*Weight (kg) :  12 Kilograms (kg)\r\n', '', '', '', 0, 'Mr MANAN DIPAKBHAI PATEL', 'Manufacturer', '2', 'Solid', 'Long  Life', 'our Supply Ability  is 100 Per Month', '', '2024-08-20', 10, 11, 21, 25, '', 'NO', '24AABCZ1147P1Z1', '', 'NO', 'Gujarat', '3, Swaminarayan Indstrial Estate, Opp Sharanam Estate, Kathwada Gam Road, Ahmedabad, Gujarat, 382440, India', '', 'India', ''),
(55, ' Round Toe Slip-on Leather Women Safety Shoes', '', 'extra_image/womenshoes2.jpg', '', '', '', '250', '2012', 'Manya Enterprises', 'extra_image/', '*Heel Size : Low \r\n*Product Type : Safety shoes\r\n*Color : Black  \r\n', '', '', '', 0, 'Mrs. Alpa', 'supplier', '20 Pieces', 'Box ', 'Long Shelf Life ', 'Low Heel ', '', '2024-08-20', 11, 13, 24, 29, '', 'NO', 'NO ', '', 'NO ', 'Karnataka', 'Express New City Complex, Shop No.203, 2nd Floor, NR Road, Bengaluru, Karnataka, 560002, India', '', 'India', ' INR / Piece'),
(56, 'Wheat Flour ', '', 'extra_image/Wheatflour.jpg', '', '', '', '30', '2023', 'H S Impex ', 'extra_image/', '*Minimum Order Quantity : 5000 Kilograms\r\n', '', '', '', 0, 'Mr Mohammed H. C.', 'supplier', '5000 Kilograms', 'Raw', 'Long Life ', 'Whole Wheat Flour ', '', '2024-08-20', 16, 19, 27, 34, '', 'NO', '23AANPH9090E1ZN', '', 'NO ', 'Madhya Pradesh', 'Office No-6, 4th Floor, Rathor Chambers, 2- Jawahar Marg, Indore, Madhya Pradesh, 452001, India', '', 'India', 'INR / Kilograms'),
(57, 'Garam Masala Powder', '', 'extra_image/garam-masala-1.webp', '', '', '', '17.50', '2 years', 'Shri Raj Shyamaji Food And Spices (Opc) Private Limited', 'extra_image/', 'This is fresh and flavour garam masala .', '', '', '', 0, 'Mrs. Savita', '', '115', 'ROW', 'Long', 'High Quality', '', '2024-08-20', 16, 20, 72, 48, '', 'NO', '09ABHCS6531K1ZW', '', 'NO', 'Uttarakhand', 'Khatima, PO- Khalimahuwat, Udham Singh Nagar, Uttarakhand, 262308, India', '', 'India', 'INR'),
(58, 'Brown Garam Masala', '', 'extra_image/garam-masala-2.webp', '', '', '', '350 ', '9 years', 'K SHEETAL', 'extra_image/', 'This is garam masala and good for cooking .', '', '', '', 0, ' Mr AKASH KAPADIYA', 'exporter', '130', 'ROW', 'Long', 'High Quality', '', '2024-08-20', 16, 20, 72, 48, '', 'NO', '24CQNPK3814K1ZM', '', 'NO', 'Gujarat', 'Plot No. 25, Gate No. 5, Muktidham Estate, Jiwan Wadi Road, Nikol, Ahmedabad Ahmedabad, Gujarat, 382350, India', '', 'India', 'INR');

-- --------------------------------------------------------

--
-- Table structure for table `requirement`
--

CREATE TABLE `requirement` (
  `id` int(100) NOT NULL,
  `name` varchar(200) NOT NULL,
  `number` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `pro_name` varchar(255) NOT NULL,
  `qty` varchar(255) NOT NULL,
  `unit` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `pin_code` varchar(255) NOT NULL,
  `product_type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `requirement`
--

INSERT INTO `requirement` (`id`, `name`, `number`, `email`, `pro_name`, `qty`, `unit`, `city`, `state`, `country`, `pin_code`, `product_type`) VALUES
(25, 'ritika', '23245345345', 'ritikamaheshonly@gmail.com', 'car', '40gm', '10', 'delhi', 'delhi', 'india', '234234', 're-selling'),
(26, 'preeti', '23245345345', 'preeti@gmail.com', 'computer', '1', '-', 'delhi', 'delhi', 'india', '110043', 'self use');

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `id` int(11) NOT NULL,
  `state_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`id`, `state_name`) VALUES
(1, 'Andaman and Nicobar Islands'),
(2, 'Andhra Pradesh'),
(3, 'Arunachal Pradesh'),
(4, 'Assam'),
(5, 'Bihar'),
(6, 'Chandigarh'),
(7, 'Chhattisgarh'),
(8, 'Dadra and Nagar Haveli and Daman and Diu'),
(9, 'Delhi'),
(10, 'Goa'),
(11, 'Gujarat'),
(12, 'Haryana'),
(13, 'Himachal Pradesh'),
(14, 'Jammu and Kashmir'),
(15, 'Jharkhand'),
(16, 'Karnataka'),
(17, 'Kerala'),
(18, 'Ladakh'),
(19, 'Lakshadweep'),
(20, 'Madhya Pradesh'),
(21, 'Maharashtra'),
(22, 'Manipur'),
(23, 'Meghalaya'),
(24, 'Mizoram'),
(25, 'Nagaland'),
(26, 'Odisha'),
(27, 'Puducherry'),
(28, 'Punjab'),
(29, 'Rajasthan'),
(30, 'Sikkim'),
(31, 'Tamil Nadu'),
(32, 'Telangana'),
(33, 'Tripura'),
(34, 'Uttar Pradesh'),
(35, 'Uttarakhand'),
(36, 'West Bengal');

-- --------------------------------------------------------

--
-- Table structure for table `sub_cat`
--

CREATE TABLE `sub_cat` (
  `sub_id` int(100) NOT NULL,
  `sub_cat_name` varchar(256) NOT NULL,
  `cat_id` int(100) NOT NULL,
  `sub_cat_image` varchar(255) NOT NULL,
  `inner_cat_id` int(100) NOT NULL,
  `cat_slug` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sub_cat`
--

INSERT INTO `sub_cat` (`sub_id`, `sub_cat_name`, `cat_id`, `sub_cat_image`, `inner_cat_id`, `cat_slug`) VALUES
(10, 'Fresh Flowers and Plants', 10, 'extra_image/72bec92edf693df3d9cdcf4033e71edd.jpg', 0, ''),
(11, 'Irrigation Equipment & Systems', 10, 'extra_image/368206-984.jpg', 0, ''),
(12, 'PET and Farming Animals', 10, 'extra_image/bce845c46e920f036f4043c41e8c6b39.jpg', 0, ''),
(13, 'Men, Women & Kids Footwear', 11, 'extra_image/Men, Women & Kids Footwear.jpg', 0, ''),
(14, 'auto', 12, 'extra_image/auto.jpg', 0, ''),
(15, 'Industrial Clothing & Safety Wear', 11, 'extra_image/3948357.jpg', 0, ''),
(16, 'Womens Clothing', 11, 'extra_image/GettyImages-615595706-scaled.jpg', 0, ''),
(17, 'Tea & Coffee', 16, 'extra_image/image-1623852241.jpg', 0, ''),
(18, 'Dry Fruits & Nuts', 16, 'extra_image/Dry Fruits & Nuts.jpg', 0, ''),
(19, 'Food Grains, Cereals & Flour', 16, 'extra_image/Bags-of-grains.jpg', 0, ''),
(20, 'Cooking Spices and Masala', 16, 'extra_image/Dry Fruits & Nuts.jpg', 0, ''),
(21, 'Fresh, Preserved & Dried Fruits', 16, 'extra_image/erwer.jpg', 0, ''),
(22, 'Fresh, Dried & Preserved Vegetables', 16, 'extra_image/news_photo-20221027-205111.jpg', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(100) NOT NULL,
  `user_name` varchar(200) NOT NULL,
  `user_email` varchar(150) NOT NULL,
  `user_phone` varchar(19) NOT NULL,
  `company_name` varchar(256) NOT NULL,
  `plan` varchar(256) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp(),
  `password` varchar(256) NOT NULL,
  `otp` int(100) NOT NULL,
  `expire` date NOT NULL DEFAULT current_timestamp(),
  `user_role` int(100) NOT NULL,
  `company_address` varchar(256) NOT NULL,
  `image` varchar(256) NOT NULL,
  `user_website` varchar(256) NOT NULL,
  `state` varchar(256) NOT NULL,
  `city` varchar(256) NOT NULL,
  `pincode` int(100) NOT NULL,
  `product_name` varchar(256) NOT NULL,
  `product_image` varchar(256) NOT NULL,
  `gst` varchar(255) NOT NULL,
  `start_date` date NOT NULL DEFAULT current_timestamp(),
  `iec_code` varchar(100) NOT NULL,
  `type` varchar(255) NOT NULL,
  `country_name` varchar(255) NOT NULL,
  `status` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `user_name`, `user_email`, `user_phone`, `company_name`, `plan`, `date`, `password`, `otp`, `expire`, `user_role`, `company_address`, `image`, `user_website`, `state`, `city`, `pincode`, `product_name`, `product_image`, `gst`, `start_date`, `iec_code`, `type`, `country_name`, `status`) VALUES
(62, 'kartic', 'kartic@gmail.com', '45345345', 'kartic pri ltd', '', '2024-07-03', '123', 204334, '2024-07-03', 0, 'bihar 45 shyam kunj nagar', '', 'web2export.com', 'Arunachal Pradesh', 'any city', 0, 'rice', '', '', '2024-07-03', '', 'exporter', '', 0),
(63, 'shalini', 'chandroenterprises@gmail.com', '8564877654', 'chandro enterprises', '', '2024-07-05', '12345', 880352, '2024-07-05', 0, 'JANAKPURI', 'logo/icons8-trusted-64.png', 'https://vistaraenterprise.com/', 'Delhi', 'any city', 110043, 'Cat food', '', 'GST654654GF', '2024-07-05', '53453453IEC', 'supplier', '', 0),
(64, 'shalini', 'SHALINIWEB2EXPORT', '897650555', 'WEB2EXPORT', '', '2024-07-05', '12345', 374043, '2024-07-05', 0, 'FFTFT', '', '', '', '', 0, '', '', '', '2024-07-05', '', '', '', 0),
(67, '', '', '', '', '', '2024-07-06', '', 296720, '2024-07-06', 0, '', '', '', '', '', 0, '', '', '', '2024-07-06', '', '', '', 0),
(68, 'anish', 'anish@gmail.com', '45345345', 'sithub.com', 'prime', '2024-07-12', '123', 273030, '2025-07-12', 0, 'goela dairy', 'logo/icons8-trusted-64.png', 'https://vistaraenterprise.com/', 'Delhi', '', 110043, 'car ', '', 'GST654654GF', '2024-07-13', '53453453IEC', 'exporter', 'India', 0),
(70, 'preeti ', 'hr@web2export.com', '12345678', 'web2export ', '', '2024-07-17', '123', 367390, '2024-07-17', 0, 'awsertyuik', '', '', '', '', 0, '', '', '', '2024-07-17', '', '', '', 0),
(72, 'Neha', 'anil@web2export.com', '25252525', 'Neha Indi pri ltd', '', '2024-07-18', '123', 229894, '2024-07-18', 0, 'Janakpuri west , Delhi , 110043', '', '', '', '', 0, '', '', '', '2024-07-18', '', '', '', 0),
(77, '', 'aaa@gmail.com', '9198872772', '', '', '2024-07-18', '', 908593, '2024-07-18', 0, '', '', '', '', '', 0, '', '', '', '2024-07-18', '', '', '', 0),
(78, 'shalini', 'ritikarrr321@gmail.com', '8765445687', 'shalini ', '', '2024-07-19', '12345', 788282, '2024-07-19', 0, '176,rawalpindi', 'logo/White Blue Professional Concept Football Club Logo.png', 'web2export', 'Delhi', '', 1444232, 'Glossy Ceramic Tiles', '', '5T765TAWS', '2024-07-19', '1256444', 'exporter', 'India', 0),
(80, 'ritika', 'ritikamaheshonly@gmail.com', '45345345', 'sit', '', '2024-07-19', '123', 747308, '2024-07-19', 0, 'nawada', '', '', '', '', 0, '', '', '', '2024-07-19', '', '', '', 0),
(81, '1', 'webritika555@gmail.com', '1', '1', '', '2024-07-19', '1', 227985, '2024-07-19', 0, '1', '', '', '', '', 0, '', '', '', '2024-07-19', '', '', '', 0),
(82, 'GITIKA', 'ritikamaheshonly@gmail.com', '9568569856', 'GET2', '', '2024-07-22', '12345', 885722, '2024-07-22', 0, '123,ram nagar', '', '', '', '', 0, '', '', '', '2024-07-22', '', '', '', 0),
(83, 'harsh', 'harsh@gmail.com', '8287042772', 'harsh pri ltd', 'prime', '2024-08-11', '123', 470358, '2025-08-01', 0, 'delhi', 'logo/istockphoto-153737841-612x612.jpg', 'https://www.webexport.com', 'Delhi', 'Delhi', 110043, 'rice , fruits , vegetables', '', 'GST343444', '2024-08-01', 'IES54654654', 'supplier', 'India', 0),
(84, 'veer', 'veer@gmail.com', '45345345', 'veer', '', '2024-08-13', '123', 0, '2024-08-13', 0, 'qwe', '', '', '', '', 0, '', '', '', '2024-08-13', '', '', '', 0),
(87, 'ritika', 'veer@gmail.com', '45345345', 'yoyo', '', '2024-08-13', '123', 0, '2024-08-13', 0, '123', '', '', '', '', 0, '', '', '', '2024-08-13', '', '', '', 0),
(88, 'kartic', 'viki@gmail.com', '45345345', 'kartic pri ltd', '', '2024-08-13', '123', 0, '2024-08-13', 0, 'nawada', '', '', '', '', 0, '', '', '', '2024-08-13', '', '', '', 0),
(89, 'kartic', 'q@gmail.com', '45345345', 'kartic pri ltd', '', '2024-08-13', '123', 0, '2024-08-13', 0, 'nawada', '', '', '', '', 0, '', '', '', '2024-08-13', '', '', '', 0),
(90, 'ashu', 'ashu@gmail.com', '45345345', 'ashu prt ltd', '', '2024-08-14', '123', 0, '2024-08-14', 0, 'nawada', '', '', '', '', 0, '', '', '', '2024-08-14', '', '', '', 0),
(91, 'kavita', 'kavita@gmail.com', '6868678766', 'kavita pri ltd', 'not active', '2024-08-16', '123', 0, '2024-08-16', 0, 'delhi', 'logo/magnifying-glass-enlarging-word.jpg', 'web2export.com', 'Goa', '', 11223, 'cap', '', '', '2024-08-16', '', 'exporter', 'Albania', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `buyer`
--
ALTER TABLE `buyer`
  ADD PRIMARY KEY (`buyer_id`);

--
-- Indexes for table `buyleads`
--
ALTER TABLE `buyleads`
  ADD PRIMARY KEY (`buyleads_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`countries_id`);

--
-- Indexes for table `free-listing-product`
--
ALTER TABLE `free-listing-product`
  ADD PRIMARY KEY (`pro_id`);

--
-- Indexes for table `inbox`
--
ALTER TABLE `inbox`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inner_cat`
--
ALTER TABLE `inner_cat`
  ADD PRIMARY KEY (`inner_cat_id`);

--
-- Indexes for table `limit_buylead`
--
ALTER TABLE `limit_buylead`
  ADD PRIMARY KEY (`limit_id`);

--
-- Indexes for table `micro`
--
ALTER TABLE `micro`
  ADD PRIMARY KEY (`micro_id`);

--
-- Indexes for table `plan`
--
ALTER TABLE `plan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`pro_id`);

--
-- Indexes for table `requirement`
--
ALTER TABLE `requirement`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_cat`
--
ALTER TABLE `sub_cat`
  ADD PRIMARY KEY (`sub_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `buyer`
--
ALTER TABLE `buyer`
  MODIFY `buyer_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `buyleads`
--
ALTER TABLE `buyleads`
  MODIFY `buyleads_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `cat_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `countries_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=196;

--
-- AUTO_INCREMENT for table `free-listing-product`
--
ALTER TABLE `free-listing-product`
  MODIFY `pro_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `inbox`
--
ALTER TABLE `inbox`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `inner_cat`
--
ALTER TABLE `inner_cat`
  MODIFY `inner_cat_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `limit_buylead`
--
ALTER TABLE `limit_buylead`
  MODIFY `limit_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT for table `micro`
--
ALTER TABLE `micro`
  MODIFY `micro_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `plan`
--
ALTER TABLE `plan`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `pro_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `requirement`
--
ALTER TABLE `requirement`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `sub_cat`
--
ALTER TABLE `sub_cat`
  MODIFY `sub_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
