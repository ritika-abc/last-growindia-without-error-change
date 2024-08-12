-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jul 01, 2024 at 10:16 AM
-- Server version: 10.11.7-MariaDB-cll-lve
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
  `buyer_location` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `buyleads`
--

INSERT INTO `buyleads` (`buyleads_id`, `buyer_name`, `queiry_for`, `number`, `accessed_at`, `user_id`, `buyer_email`, `date`, `buyer_location`) VALUES
(4, 'varun kumar', 'mango products', '3453453455', '2024-06-14', 0, 'varun@gmail.com', '2024-06-14', 'delhi'),
(5, 'shanu kumar', 'singing products', '45345345', '2024-06-14', 0, 'shanu@gmail.com', '2024-06-14', 'US');

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
(15, 'Fashion', 'extra_image/GettyImages-615595706-scaled.jpg', 'extra_image/fashion_long.jpg', 'fashion');

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
  `location` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `free-listing-product`
--

INSERT INTO `free-listing-product` (`pro_id`, `product_name`, `img1`, `img2`, `img3`, `company_name`, `company_logo`, `product_description`, `cat_id`, `sub_id`, `inner_cat_id`, `micro_id`, `location`) VALUES
(14, '', 'logo/logo.jpg', '', '', '', '', '', 0, 0, 0, 0, ''),
(15, 'cap', 'logo/logo.jpg', '', '', 'web2export', '', 'this is cap', 5, 6, 8, 4, ''),
(16, 'bts bags', 'logo/download.jfif', '', '', 'web2export', '', 'this is party bags', 5, 6, 6, 1, ''),
(17, 'LED Lamp', 'extra_image/led_lamp.jpg', '', '', 'Tech Innovations', '', 'Energy-efficient LED lamp for home decor', 12, 15, 17, 22, 'New York'),
(18, 'Smart Thermostat', 'extra_image/smart_thermostat.jpg', '', '', 'Smart Living Solutions', '', 'WiFi-enabled smart thermostat for home automation', 12, 15, 18, 23, 'San Francisco'),
(19, 'Home Security Camera', 'extra_image/security_camera.jpg', '', '', 'Secure Home Solutions', '', 'HD security camera for indoor surveillance', 12, 15, 19, 24, 'Chicago');

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
(11, 'Fruit Plants', 10, 'extra_image/303635-1-home.jpg', 0),
(12, 'Outdoor Plants', 10, 'extra_image/', 0),
(13, 'Natural Flowers', 10, 'extra_image/', 0),
(16, 'auto1', 14, 'extra_image/', 0),
(17, 'Bedroom Decor', 15, 'extra_image/bedroom_decor.jpg', 0),
(18, 'Living Room Decor', 15, 'extra_image/living_room_decor.jpg', 0),
(19, 'Kitchen Decor', 15, 'extra_image/kitchen_decor.jpg', 0),
(20, 'Garden Plant', 10, 'extra_image/', 0),
(25, 'Harvesters', 11, 'extra_image/', 0),
(26, 'Agricultural Irrigation Systems', 11, 'extra_image/', 0),
(27, 'Cultivators', 11, 'extra_image/', 0),
(28, 'Sprinkler Irrigation System', 11, 'extra_image/', 0),
(29, 'Leather Shoes', 13, 'extra_image/Leather Shoes.jpg', 0),
(30, 'Flat Slippers', 13, 'extra_image/Flat Slippers.jpg', 0),
(31, 'Ladies Shoes', 13, 'extra_image/Ladies Shoes.jpg', 0),
(32, 'Shoe Care Products', 13, 'extra_image/image-asset.jpg', 0);

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
  `buyer_location` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `limit_buylead`
--

INSERT INTO `limit_buylead` (`limit_id`, `user_id`, `user_email`, `buyleads_id`, `buyer_email`, `queiry_for`, `number`, `date`, `buyer_name`, `buyer_location`) VALUES
(65, 53, 'ritika@gmail.com', 4, 'varun@gmail.com', 'mango products', 2147483647, '2024-06-15', 'varun kumar', ''),
(66, 53, 'ritika@gmail.com', 5, 'shanu@gmail.com', 'singing products', 45345345, '2024-06-15', 'shanu kumar', 'US'),
(67, 55, 'shyam@gmail.com', 4, 'varun@gmail.com', 'mango products', 2147483647, '2024-06-17', 'varun kumar', 'delhi');

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
(6, 'Mango Plants', 10, 10, 11, 'extra_image/303635-1-home.jpg'),
(7, 'Neem Tree', 10, 10, 12, 'extra_image/2.jpg'),
(8, 'Palm Trees', 10, 10, 12, 'extra_image/76806-1-home.jpg'),
(9, 'Banana Plants', 10, 10, 11, 'extra_image/banana.jpg'),
(10, 'Casual Shoes', 11, 13, 15, 'extra_image/'),
(11, 'auto2', 12, 14, 16, 'extra_image/'),
(12, 'Modern Lamps', 12, 15, 17, 'extra_image/modern_lamps.jpg'),
(13, 'Smart Home Devices', 12, 15, 18, 'extra_image/smart_home_devices.jpg'),
(14, 'Home Security Systems', 12, 15, 19, 'extra_image/home_security_systems.jpg'),
(15, 'Rose Flower', 10, 10, 13, 'extra_image/73805-1-home.jpg'),
(16, 'Jasmine Flowers', 10, 10, 13, 'extra_image/75343-1-home.jpg'),
(17, 'Herbal Plant', 10, 10, 20, 'extra_image/348709-1-home.jpg'),
(18, 'Dragon Fruit Plant', 10, 10, 11, 'extra_image/'),
(19, 'Harvesters', 10, 11, 21, 'extra_image/'),
(20, 'Combine Harvester', 10, 11, 25, 'extra_image/'),
(21, 'Power Reaper', 10, 11, 25, 'extra_image/'),
(22, 'Sprinkler Irrigation System', 10, 11, 26, 'extra_image/'),
(23, 'Men Leather Shoes', 11, 13, 29, 'extra_image/Leather Shoes.jpg'),
(24, 'Ladies Leather Shoes', 11, 13, 29, 'extra_image/'),
(25, 'Ladies Slippers', 11, 13, 30, 'extra_image/Ladies Slippers.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `pro_id` int(100) NOT NULL,
  `product_name` varchar(255) NOT NULL,
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
  `company_address` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`pro_id`, `product_name`, `product_image1`, `product_image2`, `product_image3`, `title`, `price`, `company_experience`, `company_name`, `company_logo`, `product_description`, `city`, `state`, `country`, `number`, `business_type`, `moq`, `packaging_type`, `product_life`, `feature`, `company_description`, `date`, `cat_id`, `sub_id`, `micro_id`, `inner_cat_id`, `name`, `iec`, `gst`, `exp`, `website`, `state_name`, `company_address`) VALUES
(4, 'mango', '', '', '', '', '1200', '', '', '', 'The term mango refers to the plant Mangifera indica as well as to its fruit. The plant, which is a member of the family Anacardiaceae, is an evergreen tree. Its fruit varies in appearance and is one of the most important and widely cultivated fruits of the tropical world.The term mango refers to the plant Mangifera indica as well as to its fruit. The plant, which is a member of the family Anacardiaceae, is an evergreen tree. Its fruit varies in appearance and is one of the most important and widely cultivated fruits of the tropical world.The term mango refers to the plant Mangifera indica as well as to its fruit. The plant, which is a member of the family Anacardiaceae, is an evergreen tree. Its fruit varies in appearance and is one of the most important and widely cultivated fruits of the tropical world.The term mango refers to the plant Mangifera indica as well as to its fruit. The plant, which is a member of the family Anacardiaceae, is an evergreen tree. Its fruit varies in appearance and is one of the most important and widely cultivated fruits of the tropical world.The term mango refers to the plant Mangifera indica as well as to its fruit. The plant, which is a member of the family Anacardiaceae, is an evergreen tree. Its fruit varies in appearance and is one of the most important and widely cultivated fruits of the tropical world.\r\n                            ', '', '', '', 0, '', '12 pice', '2years', 'plastic', 'mango', '', '2024-06-17', 10, 10, 6, 11, '', '', '', '', '', '', ''),
(7, 'Synthetic Genuine Leather Men Casual Shoes', 'extra_image/', '', '', '', '1200', '', '', '', 'Rs 440 / Pair\r\n\r\nMOQ : 12 Pair\r\nPackaging : Carton\r\nAvailable Colors : Black\r\nSizes : 5 to 10\r\nUpper Material : Genuine Leather\r\nSupply Type : Manufacturer', '', '', '', 0, '', '2 pice', '2years', 'plastic', 'Synthetic Genuine Leather Men Casual Shoes', '', '2024-06-18', 11, 13, 10, 15, '', '', '', '', '', '', ''),
(8, 'LED Lamp', 'extra_image/led_lamp.jpg', '', '', '', '', '', 'Tech Innovations', '', 'Energy-efficient LED lamp for home decor', '', '', '', 0, '', '', '', '', '', '', '2024-06-19', 12, 15, 22, 17, '', '', '', '', '', '', ''),
(9, 'Smart Thermostat', 'extra_image/smart_thermostat.jpg', '', '', '', '', '', 'Smart Living Solutions', '', 'WiFi-enabled smart thermostat for home automation', '', '', '', 0, '', '', '', '', '', '', '2024-06-19', 12, 15, 23, 18, '', '', '', '', '', '', ''),
(10, 'Home Security Camera', 'extra_image/security_camera.jpg', '', '', '', '', '', 'Secure Home Solutions', '', 'HD security camera for indoor surveillance', '', '', '', 0, '', '', '', '', '', '', '2024-06-19', 12, 15, 24, 19, '', '', '', '', '', '', ''),
(11, 'Dragon Fruit Plant', 'extra_image/dragon-fruit-plant-1629971588-5959524.jpeg', '', '', '', 'Rs 70 - Rs 80 / Bag', '', '', '', '\r\nApplication : Planting\r\nCountry of Origin : India\r\nAgeing Period : 12 - 24 Month\r\n', '', '', '', 0, '', 'MOQ : 500 Bag', 'Ageing Period : 12 - 24 Month', 'Type : Dragon Fruit Plant', 'Dragon Fruit Plant', '', '2024-06-19', 10, 10, 18, 11, '', '', '', '', '', '', ''),
(12, 'mango', 'extra_image/mngo.jpg', '', '', '', '1200', '', '', '', 'mango 2 image \r\nvarun pri lmt\r\n                            ', '', '', '', 0, '', '12 pice', '2years', 'plastic', 'mango', '', '2024-06-19', 10, 10, 6, 11, '', '', '', '', '', '', ''),
(13, ' RUN+ Mens Leather Shoes, Style : FORMAL', 'product-image/blog-1.jpg', 'product-image/carousel-1.jpg', 'product-image/testimonial-1.jpg', 'fsdf', '12k', '12years', 'web2export.com', 'product-image/73805-1-home.jpg', 'MOQ : 200 Pair\r\nSupply Type : Manufacturer\r\nModel Number : 98\r\nLining Material : LEATHER\r\nStyle : FORMAL\r\nUpper Material : LEATHER', 'delhi', '', '', 2147483647, '', '12m', '', '', ' RUN+ Mens Leather Shoes, Style : FORMAL', '', '2024-06-19', 11, 13, 23, 29, '', 'IECSHDGFHJSFGD765', 'GSTty47567', '', 'web2export.com', 'Andhra Pradesh', 'd54 shyam vhihar new delhi');

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
(16, 'Womens Clothing', 11, 'extra_image/GettyImages-615595706-scaled.jpg', 0, '');

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
  `type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `user_name`, `user_email`, `user_phone`, `company_name`, `plan`, `date`, `password`, `otp`, `expire`, `user_role`, `company_address`, `image`, `user_website`, `state`, `city`, `pincode`, `product_name`, `product_image`, `gst`, `start_date`, `iec_code`, `type`) VALUES
(61, 'ritika', 'githublive123@gmail.com', '45345345', 'web2export', '', '2024-06-24', '123', 987185, '2024-06-24', 0, 'nawada', '', '', '', '', 0, '', '', '', '2024-06-24', '', '');

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
-- Indexes for table `free-listing-product`
--
ALTER TABLE `free-listing-product`
  ADD PRIMARY KEY (`pro_id`);

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
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`pro_id`);

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
  MODIFY `buyer_id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `buyleads`
--
ALTER TABLE `buyleads`
  MODIFY `buyleads_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `cat_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `free-listing-product`
--
ALTER TABLE `free-listing-product`
  MODIFY `pro_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `inner_cat`
--
ALTER TABLE `inner_cat`
  MODIFY `inner_cat_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `limit_buylead`
--
ALTER TABLE `limit_buylead`
  MODIFY `limit_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `micro`
--
ALTER TABLE `micro`
  MODIFY `micro_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `pro_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `sub_cat`
--
ALTER TABLE `sub_cat`
  MODIFY `sub_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
