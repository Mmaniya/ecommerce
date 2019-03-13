-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 13, 2019 at 12:44 PM
-- Server version: 5.5.8
-- PHP Version: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `shopping`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `creationDate`, `updationDate`) VALUES
(1, 'admin', '41a3d23e04b4c8c17cf049d608295fdf', '2017-01-24 21:51:18', '07-03-2019 03:52:18 PM');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `categoryName` varchar(255) NOT NULL,
  `categoryDescription` varchar(1000) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `categoryName`, `categoryDescription`, `creationDate`, `updationDate`) VALUES
(3, 'Books', 'Search the world books.', '2017-01-25 00:47:37', '07-03-2019 04:11:34 PM'),
(4, 'Electronics', 'Main consumer electronics products include  television sets, MP3 players etc', '2017-01-25 00:49:32', '07-03-2019 04:08:41 PM'),
(5, 'Furniture', 'Buy furniture online home and office furniture online.', '2017-01-25 00:49:54', '07-03-2019 04:07:46 PM'),
(7, 'Toys', 'Online shopping for Toys & Games from a great selection of Baby Toys, Soft Toys, Sound Toys, Activity Play Centres, Bath Toys, Sorting, Stacking & Plugging', '2019-03-07 15:53:22', ''),
(8, 'Fashion', 'Fashion Sarees Online - Buy latest Fashion Saree with Patchwork, Zardozi Work, Floral Print Online. Shop from Myntra today', '2019-03-11 11:45:08', '');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE IF NOT EXISTS `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `productId` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `orderDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `paymentMethod` varchar(50) DEFAULT NULL,
  `orderStatus` varchar(55) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `userId`, `productId`, `quantity`, `orderDate`, `paymentMethod`, `orderStatus`) VALUES
(1, 1, '3', 1, '2017-03-08 01:02:57', 'COD', NULL),
(3, 1, '4', 1, '2017-03-11 01:13:04', 'Debit / Credit card', 'Delivered'),
(4, 1, '17', 1, '2017-03-08 21:44:17', 'COD', 'in Process'),
(5, 1, '3', 1, '2017-03-09 00:51:38', 'COD', NULL),
(6, 1, '4', 1, '2017-03-09 00:51:38', 'COD', NULL),
(7, 2, '19', 1, '2019-01-21 17:19:50', 'Internet Banking', NULL),
(8, 2, '17', 1, '2019-01-21 17:21:07', 'COD', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ordertrackhistory`
--

CREATE TABLE IF NOT EXISTS `ordertrackhistory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orderId` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  `remark` mediumtext NOT NULL,
  `postingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `ordertrackhistory`
--

INSERT INTO `ordertrackhistory` (`id`, `orderId`, `status`, `remark`, `postingDate`) VALUES
(1, 3, 'in Process', 'Order has been Shipped.', '2017-03-11 01:06:45'),
(2, 1, 'Delivered', 'Order Has been delivered', '2017-03-11 01:07:31'),
(3, 3, 'Delivered', 'Product delivered successfully', '2017-03-11 01:13:04'),
(4, 4, 'in Process', 'Product ready for Shipping', '2017-03-11 01:20:36');

-- --------------------------------------------------------

--
-- Table structure for table `productreviews`
--

CREATE TABLE IF NOT EXISTS `productreviews` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `productId` int(11) NOT NULL,
  `quality` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `value` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `summary` varchar(255) NOT NULL,
  `review` longtext NOT NULL,
  `reviewDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `productreviews`
--

INSERT INTO `productreviews` (`id`, `productId`, `quality`, `price`, `value`, `name`, `summary`, `review`, `reviewDate`) VALUES
(2, 3, 4, 5, 5, 'Anuj Kumar', 'BEST PRODUCT FOR ME :)', 'BEST PRODUCT FOR ME :)', '2017-02-27 02:13:57'),
(3, 3, 3, 4, 3, 'Sarita pandey', 'Nice Product', 'Value for money', '2017-02-27 02:22:46'),
(4, 3, 3, 4, 3, 'Sarita pandey', 'Nice Product', 'Value for money', '2017-02-27 02:29:19'),
(5, 17, 5, 4, 4, 'aki', 'good', 'ok', '2019-01-21 17:20:38'),
(6, 15, 1, 3, 4, 'AKI', 'rdgeg', 'gfggfgfgfgfgfgfg', '2019-03-07 15:49:46'),
(7, 15, 1, 3, 4, 'AKI', 'rdgeg', 'gfggfgfgfgfgfgfg', '2019-03-07 15:50:55');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` int(11) NOT NULL,
  `subCategory` int(11) NOT NULL,
  `productName` varchar(255) NOT NULL,
  `productCompany` varchar(255) NOT NULL,
  `productPrice` int(11) NOT NULL,
  `productPriceBeforeDiscount` int(11) NOT NULL,
  `productDescription` varchar(10000) NOT NULL,
  `productImage1` varchar(255) NOT NULL,
  `productImage2` varchar(255) NOT NULL,
  `productImage3` varchar(255) NOT NULL,
  `shippingCharge` int(11) NOT NULL,
  `productAvailability` varchar(255) NOT NULL,
  `postingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=28 ;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category`, `subCategory`, `productName`, `productCompany`, `productPrice`, `productPriceBeforeDiscount`, `productDescription`, `productImage1`, `productImage2`, `productImage3`, `shippingCharge`, `productAvailability`, `postingDate`, `updationDate`) VALUES
(1, 4, 3, 'Micromax 81cm (32) HD Ready LED TV  (32T6175MHD, 2 x HDMI, 2 x USB)', 'Micromax test', 139900, 0, '<div class="HoUsOy" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; font-size: 18px; white-space: nowrap; line-height: 1.4; color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif;">General</div><ul style="box-sizing: border-box; margin-bottom: 0px; margin-left: 0px; color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px;"><li class="_1KuY3T row" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;"><div class="vmXPri col col-3-12" style="box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);">Sales Package</div><ul class="_3dG3ix col col-9-12" style="box-sizing: border-box; margin-left: 0px; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;"><li class="sNqDog" style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;">1 TV Unit, Remote Controller, Battery (For Remote Controller), Quick Installation Guide and User Manual: All in One, Wall Mount Support</li></ul></li><li class="_1KuY3T row" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;"><div class="vmXPri col col-3-12" style="box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);">Model Name</div><ul class="_3dG3ix col col-9-12" style="box-sizing: border-box; margin-left: 0px; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;"><li class="sNqDog" style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;">32T6175MHD</li></ul></li><li class="_1KuY3T row" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;"><div class="vmXPri col col-3-12" style="box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);">Display Size</div><ul class="_3dG3ix col col-9-12" style="box-sizing: border-box; margin-left: 0px; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;"><li class="sNqDog" style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;">81 cm (32)</li></ul></li><li class="_1KuY3T row" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;"><div class="vmXPri col col-3-12" style="box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);">Screen Type</div><ul class="_3dG3ix col col-9-12" style="box-sizing: border-box; margin-left: 0px; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;"><li class="sNqDog" style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;">LED</li></ul></li><li class="_1KuY3T row" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;"><div class="vmXPri col col-3-12" style="box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);">HD Technology &amp; Resolutiontest</div><ul class="_3dG3ix col col-9-12" style="box-sizing: border-box; margin-left: 0px; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;"><li class="sNqDog" style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;">HD Ready, 1366 x 768</li></ul></li></ul>', 'micromax1.jpeg', 'micromax main image.jpg', 'micromax main image.jpg', 1200, 'In Stock', '2017-01-30 22:24:35', ''),
(2, 4, 4, 'Apple iPhone 6 (Silver, 16 GB)', 'Apple INC', 36990, 0, '<div class="_2PF8IO" style="box-sizing: border-box; margin: 0px 0px 0px 110px; padding: 0px; flex: 1 1 0%; color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px;"><ul style="box-sizing: border-box; margin-bottom: 0px; margin-left: 0px;"><li class="_1tMfkh" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 8px 16px; list-style: none; position: relative;">1 GB RAM | 16 GB ROM |</li><li class="_1tMfkh" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 8px 16px; list-style: none; position: relative;">4.7 inch Retina HD Display</li><li class="_1tMfkh" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 8px 16px; list-style: none; position: relative;">8MP Primary Camera | 1.2MP Front</li><li class="_1tMfkh" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 8px 16px; list-style: none; position: relative;">Li-Ion Battery</li><li class="_1tMfkh" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 8px 16px; list-style: none; position: relative;">A8 Chip with 64-bit Architecture and M8 Motion Co-processor Processor</li></ul></div>', 'apple-iphone-6-1.jpeg', 'apple-iphone-6-2.jpeg', 'apple-iphone-6-3.jpeg', 0, 'In Stock', '2017-01-30 22:29:00', ''),
(3, 4, 4, 'Redmi Note 4 (Gold, 32 GB)  (With 3 GB RAM)', 'Redmi', 10999, 0, '<br><div><ol><li>3 GB RAM | 32 GB ROM | Expandable Upto 128 GB<br></li><li>5.5 inch Full HD Display<br></li><li>13MP Primary Camera | 5MP Front<br></li><li>4100 mAh Li-Polymer Battery<br></li><li>Qualcomm Snapdragon 625 64-bit Processor<br></li></ol></div>', 'mi-redmi-note-4-1.jpeg', 'mi-redmi-note-4-2.jpeg', 'mi-redmi-note-4-3.jpeg', 0, 'In Stock', '2017-02-04 09:33:15', ''),
(4, 4, 4, 'Lenovo K6 Power (Silver, 32 GB) ', 'Lenovo', 9999, 0, '<ul><li>3 GB RAM | 32 GB ROM | Expandable Upto 128 GB<br></li><li>5 inch Full HD Display<br></li><li>13MP Primary Camera | 8MP Front<br></li><li>4000 mAh Li-Polymer Battery<br></li><li>Qualcomm Snapdragon 430 Processor<br></li></ul>', 'lenovo-k6-power-k33a42-1.jpeg', 'lenovo-k6-power-k33a42-2.jpeg', 'lenovo-k6-power-k33a42-3.jpeg', 45, 'In Stock', '2017-02-04 09:34:43', ''),
(5, 4, 4, 'Lenovo Vibe K5 Note (Gold, 32 GB)  ', 'Lenovo', 11999, 0, '<ul><li>3 GB RAM | 32 GB ROM | Expandable Upto 128 GB<br></li><li>5.5 inch Full HD Display<br></li><li>13MP Primary Camera | 8MP Front<br></li><li>3500 mAh Li-Ion Polymer Battery<br></li><li>Helio P10 64-bit Processor<br></li></ul>', 'lenovo-k5-note-pa330010in-1.jpeg', 'lenovo-k5-note-pa330116in-2.jpeg', 'lenovo-k5-note-pa330116in-3.jpeg', 0, 'In Stock', '2017-02-04 09:36:17', ''),
(6, 4, 4, 'Micromax Canvas Mega 4G', 'Micromax', 6999, 0, '<ul><li>3 GB RAM | 16 GB ROM |<br></li><li>5.5 inch HD Display<br></li><li>13MP Primary Camera | 5MP Front<br></li><li>2500 mAh Battery<br></li><li>MT6735 Processor<br></li></ul>', 'micromax-canvas-mega-4g-1.jpeg', 'micromax-canvas-mega-4g-2.jpeg', 'micromax-canvas-mega-4g-3.jpeg', 35, 'In Stock', '2017-02-04 09:38:07', ''),
(7, 4, 4, 'SAMSUNG Galaxy On5', 'SAMSUNG', 7490, 0, '<ul><li>1.5 GB RAM | 8 GB ROM | Expandable Upto 128 GB<br></li><li>5 inch HD Display<br></li><li>8MP Primary Camera | 5MP Front<br></li><li>2600 mAh Li-Ion Battery<br></li><li>Exynos 3475 Processor<br></li></ul>', 'samsung-galaxy-on7-sm-1.jpeg', 'samsung-galaxy-on5-sm-2.jpeg', 'samsung-galaxy-on5-sm-3.jpeg', 20, 'In Stock', '2017-02-04 09:40:17', ''),
(8, 4, 4, 'OPPO A57', 'OPPO', 14990, 0, '<ul><li>3 GB RAM | 32 GB ROM | Expandable Upto 256 GB<br></li><li>5.2 inch HD Display<br></li><li>13MP Primary Camera | 16MP Front<br></li><li>2900 mAh Battery<br></li><li>Qualcomm MSM8940 64-bit Processor<br></li></ul>', 'oppo-a57-na-original-1.jpeg', 'oppo-a57-na-original-2.jpeg', 'oppo-a57-na-original-3.jpeg', 0, 'In Stock', '2017-02-04 09:41:54', ''),
(9, 4, 5, 'Affix Back Cover for Mi Redmi Note 4', 'Techguru', 259, 0, '<ul><li>Suitable For: Mobile<br></li><li>Material: Polyurethane<br></li><li>Theme: No Theme<br></li><li>Type: Back Cover<br></li><li>Waterproof<br></li></ul>', 'amzer-amz98947-original-1.jpeg', 'amzer-amz98947-original-2.jpeg', 'amzer-amz98947-original-3.jpeg', 10, 'In Stock', '2017-02-04 09:47:03', ''),
(11, 4, 6, 'Acer ES 15 Pentium Quad Core', 'Acer', 19990, 0, '<ul><li>Intel Pentium Quad Core Processor ( )<br></li><li>4 GB DDR3 RAM<br></li><li>Linux/Ubuntu Operating System<br></li><li>1 TB HDD<br></li><li>15.6 inch Display<br></li></ul>', 'acer-aspire-notebook-original-1.jpeg', 'acer-aspire-notebook-original-2.jpeg', 'acer-aspire-notebook-original-3.jpeg', 0, 'In Stock', '2017-02-04 09:56:17', ''),
(12, 4, 6, 'Micromax Canvas Laptab II (WIFI) Atom 4th Gen', 'Micromax', 10999, 0, '<ul><li>Intel Atom Processor ( 4th Gen )<br></li><li>2 GB DDR3 RAM<br></li><li>32 bit Windows 10 Operating System<br></li><li>11.6 inch Touchscreen Display<br></li></ul>', 'micromax-lt777w-2-in-1-laptop-original-1.jpeg', 'micromax-lt777w-2-in-1-laptop-original-2.jpeg', 'micromax-lt777w-2-in-1-laptop-original-3.jpeg', 0, 'In Stock', '2017-02-04 09:58:17', ''),
(13, 4, 6, 'HP Core i5 5th Gen', 'HP', 41990, 0, '<span style="color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 18px;">HP Core i5 5th Gen - (4 GB/1 TB HDD/Windows 10 Home/2 GB Graphics) N8M28PA 15-ac123tx Notebook</span><span style="color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 18px;">&nbsp;&nbsp;(15.6 inch, Turbo SIlver, 2.19 kg)</span><br><div><ul><li>Intel Core i5 Processor ( 5th Gen )<br></li><li>4 GB DDR3 RAM<br></li><li>64 bit Windows 10 Operating System<br></li><li>1 TB HDD<br></li><li>15.6 inch Display<br></li></ul></div>', 'hp-notebook-original-1.jpeg', 'hp-notebook-original-2.jpeg', 'hp-notebook-original-3.jpeg', 0, 'In Stock', '2017-02-04 10:00:24', ''),
(14, 4, 6, 'Lenovo Ideapad 110 APU Quad Core A6 6th Gen', 'Lenovo', 22990, 0, '<span style="color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 18px;">Lenovo Ideapad 110 APU Quad Core A6 6th Gen - (4 GB/500 GB HDD/Windows 10 Home) 80TJ00D2IH IP110 15ACL Notebook</span><span style="color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 18px;">&nbsp;&nbsp;(15.6 inch, Black, 2.2 kg)</span><br><div><ul><li>AMD APU Quad Core A6 Processor ( 6th Gen )<br></li><li>4 GB DDR3 RAM<br></li><li>64 bit Windows 10 Operating System<br></li><li>500 GB HDD<br></li><li>15.6 inch Display<br></li></ul></div>', 'lenovo-ideapad-notebook-original-1.jpeg', 'lenovo-ideapad-notebook-original-2.jpeg', 'lenovo-ideapad-notebook-3.jpeg', 0, 'In Stock', '2017-02-04 10:02:15', ''),
(15, 3, 8, 'The Wimpy Kid Do -It- Yourself Book', 'ABC', 205, 250, '<span style="color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 18px;">The Wimpy Kid Do -It- Yourself Book</span><span style="color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 18px;">&nbsp;&nbsp;(English, Paperback, Jeff Kinney)</span><br><div><ul><li>Language: English<br></li><li>Binding: Paperback<br></li><li>Publisher: Penguin Books Ltd<br></li><li>ISBN: 9780141339665, 0141339667<br></li><li>Edition: 1<br></li></ul></div>', 'diary-of-a-wimpy-kid-do-it-yourself-book-original-1.jpeg', 'diary-of-a-wimpy-kid-do-it-yourself-book-original-1.jpeg', 'diary-of-a-wimpy-kid-do-it-yourself-book-original-1.jpeg', 50, 'In Stock', '2017-02-04 10:05:13', ''),
(16, 3, 8, 'Thea Stilton and the Tropical Treasure ', 'XYZ', 240, 0, '<ul><li>Language: English<br></li><li>Binding: Paperback<br></li><li>Publisher: Scholastic<br></li><li>ISBN: 9789351032083, 9351032086<br></li><li>Edition: 2015<br></li><li>Pages: 176<br></li></ul>', '22-thea-stilton-and-the-tropical-treasure-original-1.jpeg', '22-thea-stilton-and-the-tropical-treasure-original-1.jpeg', '22-thea-stilton-and-the-tropical-treasure-original-1.jpeg', 30, 'In Stock', '2017-02-04 10:06:23', ''),
(17, 5, 9, 'Induscraft Solid Wood King Bed With Storage', 'Induscraft', 32566, 0, '<span style="color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 18px;">Induscraft Solid Wood King Bed With Storage</span><span style="color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 18px;">&nbsp;&nbsp;(Finish Color - Honey Brown)</span><br><div><ul><li>Material Subtype: Rosewood (Sheesham)<br></li><li>W x H x D: 1850 mm x 875 mm x 2057.5 mm<br></li><li>Floor Clearance: 8 mm<br></li><li>Delivery Condition: Knock Down<br></li></ul></div>', 'inaf245-queen-rosewood-sheesham-induscraft-na-honey-brown-original-1.jpeg', 'inaf245-queen-rosewood-sheesham-induscraft-na-honey-brown-original-2.jpeg', 'inaf245-queen-rosewood-sheesham-induscraft-na-honey-brown-original-3.jpeg', 0, 'In Stock', '2017-02-04 10:10:37', ''),
(18, 5, 10, 'Nilkamal Ursa Metal Queen Bed', 'Nilkamal', 6523, 0, '<span style="color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 18px;">@home by Nilkamal Ursa Metal Queen Bed</span><span style="color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 18px;">&nbsp;&nbsp;(Finish Color - NA)</span><br><div><ul><li>Material Subtype: Carbon Steel<br></li><li>W x H x D: 1590 mm x 910 mm x 2070 mm<br></li><li>Floor Clearance: 341 mm<br></li><li>Delivery Condition: Knock Down<br></li></ul></div>', 'flbdorsabrqbblk-queen-carbon-steel-home-by-nilkamal-na-na-original-1.jpeg', 'flbdorsabrqbblk-queen-carbon-steel-home-by-nilkamal-na-na-original-2.jpeg', 'flbdorsabrqbblk-queen-carbon-steel-home-by-nilkamal-na-na-original-3.jpeg', 0, 'In Stock', '2017-02-04 10:12:27', ''),
(19, 6, 12, 'Asian Casuals  (White, White)', 'Asian', 379, 0, '<ul style="box-sizing: border-box; margin-bottom: 0px; margin-left: 0px; color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px;"><li class="_2-riNZ" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 8px 16px; list-style: none; position: relative;">Colour: White, White</li><li class="_2-riNZ" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 16px; list-style: none; position: relative;">Outer Material: Denim</li><li class="_1KuY3T row" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;"><div class="vmXPri col col-3-12" style="box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);"><br></div></li></ul>', '1.jpeg', '2.jpeg', '3.jpeg', 45, 'In Stock', '2017-03-11 01:46:03', ''),
(20, 6, 12, 'Adidas MESSI 16.3 TF Football turf Shoes  (Blue)', 'Adidas', 4129, 5000, '<ul style="box-sizing: border-box; margin-bottom: 0px; margin-left: 0px; color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px;"><li class="_2-riNZ" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 8px 16px; list-style: none; position: relative;">Colour: Blue</li><li class="_2-riNZ" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 16px; list-style: none; position: relative;">Closure: Laced</li><li class="_1KuY3T row" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;"><div class="vmXPri col col-3-12" style="text-align: left; box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);"><b>Weight</b></div><ul class="_3dG3ix col col-9-12" style="box-sizing: border-box; margin-left: 0px; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;"><li class="sNqDog" style="text-align: left; box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;"><b>200 g (per single Shoe) - Weight of the product may vary depending on size.</b></li></ul></li><li class="_1KuY3T row" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;"><div class="vmXPri col col-3-12" style="text-align: left; box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);"><b>Style</b></div><ul class="_3dG3ix col col-9-12" style="box-sizing: border-box; margin-left: 0px; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;"><li class="sNqDog" style="text-align: left; box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;"><b>Panel and Stitch Detail, Textured Detail</b></li></ul></li><li class="_1KuY3T row" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;"><div class="vmXPri col col-3-12" style="text-align: left; box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);"><b>Tip Shape</b></div><ul class="_3dG3ix col col-9-12" style="box-sizing: border-box; margin-left: 0px; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;"><li class="sNqDog" style="text-align: left; box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;"><b>Round</b></li></ul></li><li class="_1KuY3T row" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;"><div class="vmXPri col col-3-12" style="text-align: left; box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);"><b>Season</b></div><ul class="_3dG3ix col col-9-12" style="box-sizing: border-box; margin-left: 0px; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;"><li class="sNqDog" style="text-align: left; box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;"><b>AW16</b></li></ul></li><li class="_1KuY3T row" style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;"><div class="vmXPri col col-3-12" style="text-align: left; box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);"><b>Closure</b></div><ul class="_3dG3ix col col-9-12" style="box-sizing: border-box; margin-left: 0px; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;"><li class="sNqDog" style="text-align: left; box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;"><b>Laced</b></li></ul></li></ul>', '1.jpeg', '2.jpeg', '3.jpeg', 0, 'In Stock', '2017-03-11 01:49:22', ''),
(21, 3, 15, 'Java - The Complete Reference', 'Herbert Schildt', 450, 500, '<span style="color: rgb(51, 51, 51); font-family: Arial, sans-serif; font-size: 14px;">This book is a comprehensive guide to the Java language, describing its syntax, keywords and fundamental programming principles. Significant portions of the Java API library are also examined. This book is for all programmers, whether you are a novice or an experienced pro. The beginner will find its carefully paced discussions and many examples especially helpful.</span><br>', 'download.png', 'download.jfif', 'download (2).jfif', 25, 'In Stock', '2019-03-07 16:37:41', ''),
(22, 3, 17, 'From the Heart of God ', 'Paperback', 220, 290, '<span style="color: rgb(51, 51, 51); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: small;">How did the creation start? What is truly Brahmand? What are the worlds beyond earth? Are there Great Great universes in non-physical realms? Are there beings that negatively influence the humanity? Will there be destruction or transformation? Know more about everything that concerns your existence, and the grand Divine Plan for the Future New World. Be a part of this unprecedented event in the history of creation that will transform not just the planet or our solar system, but the entire universe... forever. Intelligent extraterrestrial beings from far off galaxies will assist the scientific community in many areas concerning wellbeing of mankind. â€“ Chapter 12, Future Science</span><br>', 'fr.jpg', 'fro.jfif', 'from.jpg', 30, 'In Stock', '2019-03-07 16:45:18', ''),
(23, 3, 18, ' Friends, Lovers, Chocolate (Isabel Dalhousie Novels - Old Edition)', 'Isabel', 250, 350, '<span style="color: rgb(51, 51, 51); font-family: Arial, sans-serif; font-size: 14px;">Isabel Dalhousie thinks often of friends, sometimes of lovers, and on occasion of chocolate. As an Edinburgh philosopher she is certain of where she stands. She can review a book called In Praise of Sin with panache and conviction, but real life is... well, perhaps a bit more challenging - particularly when it comes to her feelings for Jamie, a younger man who should have married her niece, Cat.</span><br>', 'friends.jfif', 'lover.jfif', 'choco.jfif', 25, 'In Stock', '2019-03-07 16:47:55', ''),
(24, 4, 35, 'Mi LED TV 4C PRO 80 cm (32) HD Ready Android TV (Black)', 'MI', 13500, 14, '<span style="color: rgb(51, 51, 51); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: small;">he Mi LED TV 4C PRO comes with irresistible features such as HD Ready display, 64-bit Quad-core processor, DTS-HD audio, Google Voice Search, ultra-bright resolution, built-in Chromecast and Play Store, 7,00,000+ hours of content on PatchWall, multiple ports, 32-inch display screen and much more</span><br>', '41yhB91frnL._AC_SR160,160_.jpg', '41-mWHhBn7L._AC_SR160,160_.jpg', '71P44yLLr3L._AC_UL160_SR160,160_.jpg', 500, 'In Stock', '2019-03-07 17:01:10', ''),
(25, 4, 33, 'JBL C100SI In-Ear Headphones with Mic (Black)', 'JBL', 800, 900, '<span style="color: rgb(51, 51, 51); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: small;">The new JBL C100SI is a dynamic, ultra-lightweight in-ear headphone.&nbsp;</span><br>', 'he.jfif', 'hea.jfif', 'head.jfif', 25, 'In Stock', '2019-03-07 17:22:00', ''),
(26, 7, 13, 'Barbie Flying Wings Feature Fairy', 'Caucasian', 700, 750, '<span style="color: rgb(51, 51, 51); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: small;">â€‹Imaginations can take flight -- for real -- with these gorgeous Barbie fairy dolls with flying wings because when you enter dreamtopia with sisters Barbie and Chelsea, you wake up to a world where dreams become reality</span><br>', 'images.jfif', '718d8L+CzaL._SX569_.jpg', 'download.jfif', 25, 'In Stock', '2019-03-07 17:29:28', ''),
(27, 5, 10, 'Aart Store 3X6 Feet One Seater Printed Mechanism Type Fold Out Sofa Cum Bed with One Cushion- Perfect for Guests', ' Aart', 6500, 7000, '<span style="color: rgb(51, 51, 51); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: small;">Printed One Seater sofa cum bed ofa Bed. Designed for efficiency, the sofa bed is soft, comfortable and easy to set up.&nbsp;</span><br>', 'download (1).jfif', '818DgDfc9KL._AC_UL160_SR160,160_.jpg', '81kzeWpJbJL._AC_SS350_.jpg', 100, 'In Stock', '2019-03-07 17:39:12', '');

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE IF NOT EXISTS `subcategory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `categoryid` int(11) NOT NULL,
  `subcategory` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=40 ;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`id`, `categoryid`, `subcategory`, `creationDate`, `updationDate`) VALUES
(3, 4, 'Television', '2017-01-26 21:59:09', ''),
(4, 4, 'Mobiles', '2017-01-30 22:25:48', ''),
(5, 4, 'Mobile Accessories', '2017-02-04 09:42:40', ''),
(6, 4, 'Laptops', '2017-02-04 09:43:00', ''),
(8, 3, 'Comics', '2017-02-04 09:43:54', ''),
(9, 5, 'Beds', '2017-02-04 10:06:45', ''),
(10, 5, 'Sofas', '2017-02-04 10:07:02', ''),
(11, 5, 'Dining Tables', '2017-02-04 10:07:51', ''),
(12, 6, 'WoMen Footwears', '2017-03-11 01:42:59', '07-03-2019 04:14:24 PM'),
(13, 7, 'Barbie doll', '2019-03-07 16:17:09', ''),
(14, 7, 'Tanjore doll', '2019-03-07 16:17:30', ''),
(15, 3, 'Java', '2019-03-07 16:18:54', ''),
(16, 3, 'BABA Stories', '2019-03-07 16:19:05', ''),
(17, 3, 'From the heart ', '2019-03-07 16:21:15', ''),
(18, 3, 'Friends, Lovers, Chocolate', '2019-03-07 16:21:47', ''),
(19, 3, 'An American Marriage ', '2019-03-07 16:24:35', ''),
(20, 6, 'Shoes', '2019-03-07 16:26:30', ''),
(21, 6, 'Watches', '2019-03-07 16:26:41', ''),
(22, 6, 'Jewellery', '2019-03-07 16:27:07', ''),
(23, 6, 'Handbags', '2019-03-07 16:27:35', ''),
(24, 6, 'Sunglass', '2019-03-07 16:28:04', ''),
(25, 7, 'Sound Toys', '2019-03-07 16:28:37', ''),
(26, 7, 'Motor Activity Toys', '2019-03-07 16:28:55', ''),
(27, 7, 'Bath Toys', '2019-03-07 16:29:05', ''),
(28, 7, 'Soft Toys for Babies', '2019-03-07 16:29:16', ''),
(29, 5, 'Living Room Furniture', '2019-03-07 16:29:47', ''),
(30, 5, 'Bedroom Furniture', '2019-03-07 16:29:58', ''),
(31, 5, 'Dining Room Furniture', '2019-03-07 16:30:09', ''),
(32, 6, 'Home Decor', '2019-03-07 16:30:37', ''),
(33, 4, 'Headphones', '2019-03-07 16:31:14', ''),
(34, 4, 'Tablets', '2019-03-07 16:31:25', ''),
(35, 4, 'Home Theater, TV & Video', '2019-03-07 16:31:36', ''),
(36, 4, 'Computers & Accessories', '2019-03-07 16:31:45', ''),
(37, 4, 'Car & Vehicle Electronics', '2019-03-07 16:31:53', ''),
(38, 4, 'Cameras & Photography', '2019-03-07 16:32:02', ''),
(39, 8, 'Watches', '2019-03-11 11:48:08', '');

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE IF NOT EXISTS `userlog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userEmail` varchar(255) NOT NULL,
  `userip` binary(16) NOT NULL,
  `loginTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `logout` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=24 ;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `userEmail`, `userip`, `loginTime`, `logout`, `status`) VALUES
(1, 'anuj.lpu1@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2017-02-26 16:48:50', '', 1),
(2, 'anuj.lpu1@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2017-02-26 16:59:33', '', 1),
(3, 'anuj.lpu1@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2017-02-26 17:00:11', '', 1),
(4, 'anuj.lpu1@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2017-02-26 20:30:23', '26-02-2017 11:12:06 PM', 1),
(5, 'anuj.lpu1@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2017-02-26 23:38:58', '', 0),
(6, 'anuj.lpu1@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2017-02-26 23:39:41', '', 0),
(7, 'anuj.lpu1@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2017-02-26 23:40:04', '', 0),
(8, 'anuj.lpu1@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2017-02-26 23:40:31', '', 0),
(9, 'anuj.lpu1@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2017-02-26 23:43:43', '', 1),
(10, 'anuj.lpu1@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2017-02-28 00:22:58', '', 0),
(11, 'anuj.lpu1@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2017-02-28 00:23:07', '', 1),
(12, 'anuj.lpu1@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2017-03-03 23:30:09', '', 0),
(13, 'anuj.lpu1@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2017-03-03 23:30:15', '', 1),
(14, 'anuj.lpu1@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2017-03-06 23:40:26', '', 1),
(15, 'anuj.lpu1@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2017-03-07 17:58:16', '', 1),
(16, 'anuj.lpu1@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2017-03-08 00:13:27', '', 1),
(17, 'anuj.lpu1@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2017-03-08 00:25:33', '', 1),
(18, 'anuj.lpu1@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2017-03-08 01:14:29', '', 1),
(19, 'anuj.lpu1@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2017-03-09 00:51:15', '', 1),
(20, 'anuj.lpu1@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2017-03-15 22:49:38', '', 1),
(21, 'anuj.lpu1@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2017-03-15 22:50:36', '15-03-2017 10:50:39 PM', 1),
(22, 'anuj.lpu1@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2017-03-16 06:43:57', '', 1),
(23, 'amit@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2019-01-21 17:19:35', '21-01-2019 05:22:33 PM', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `contactno` bigint(11) NOT NULL,
  `password` varchar(255) NOT NULL,
  `shippingAddress` longtext NOT NULL,
  `shippingState` varchar(255) NOT NULL,
  `shippingCity` varchar(255) NOT NULL,
  `shippingPincode` int(11) NOT NULL,
  `billingAddress` longtext NOT NULL,
  `billingState` varchar(255) NOT NULL,
  `billingCity` varchar(255) NOT NULL,
  `billingPincode` int(11) NOT NULL,
  `regDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `contactno`, `password`, `shippingAddress`, `shippingState`, `shippingCity`, `shippingPincode`, `billingAddress`, `billingState`, `billingCity`, `billingPincode`, `regDate`, `updationDate`) VALUES
(1, 'Anuj Kumar', 'anuj.lpu1@gmail.com', 9009857868, 'f925916e2754e5e03f75dd58a5733251', 'CS New Delhi', 'New Delhi', 'Delhi', 110001, 'New Delhi', 'New Delhi', 'Delhi', 110092, '2017-02-05 01:00:50', ''),
(2, 'Amit ', 'amit@gmail.com', 8285703355, '5c428d8875d2948607f3e3fe134d71b4', '', '', '', 0, '', '', '', 0, '2017-03-15 22:51:22', '');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE IF NOT EXISTS `wishlist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `postingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`id`, `userId`, `productId`, `postingDate`) VALUES
(1, 1, 0, '2017-02-28 00:23:17'),
(2, 2, 15, '2019-01-21 17:21:26');
