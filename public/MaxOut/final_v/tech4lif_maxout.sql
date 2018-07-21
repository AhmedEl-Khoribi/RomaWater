-- phpMyAdmin SQL Dump
-- version 4.3.8
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 26, 2016 at 08:30 AM
-- Server version: 5.5.51-38.2
-- PHP Version: 5.4.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `tech4lif_maxout`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL,
  `mail` varchar(255) NOT NULL,
  `username` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `last_login` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` set('0','1','2') NOT NULL,
  `view` enum('0','1') NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `mail`, `username`, `password`, `last_login`, `type`, `view`) VALUES
(1, 'ashraf.mohammed92@gmail.com', 'maxout111', 'max1', '2016-09-04 10:35:23', '0', '1');

-- --------------------------------------------------------

--
-- Table structure for table `bank_account`
--

CREATE TABLE IF NOT EXISTS `bank_account` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `name_ar` varchar(255) NOT NULL,
  `num` varchar(200) NOT NULL,
  `name_account` varchar(255) NOT NULL,
  `view` enum('0','1') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bank_details`
--

CREATE TABLE IF NOT EXISTS `bank_details` (
  `id` int(11) NOT NULL,
  `cash_id` int(11) NOT NULL,
  `bank_id` int(11) NOT NULL,
  `acco_num` varchar(255) NOT NULL,
  `acco_name` varchar(255) NOT NULL,
  `data` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `view` enum('0','1') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `basket0`
--

CREATE TABLE IF NOT EXISTS `basket0` (
  `id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `prod_id` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `view` enum('0','1') COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `basket0`
--

INSERT INTO `basket0` (`id`, `client_id`, `prod_id`, `amount`, `date`, `view`) VALUES
(1, 3, 1, 1, '2016-09-26 07:00:00', '0'),
(2, 2, 1, 1, '2016-09-26 08:00:00', '0'),
(3, 5, 1, 1, '2016-09-26 08:00:00', '0'),
(4, 4, 1, 1, '2016-09-26 08:00:00', '0'),
(5, 7, 1, 1, '2016-09-26 08:00:00', '0'),
(6, 6, 1, 1, '2016-09-26 08:00:00', '0');

-- --------------------------------------------------------

--
-- Table structure for table `cash_type`
--

CREATE TABLE IF NOT EXISTS `cash_type` (
  `id` int(11) NOT NULL,
  `cash_money` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `customer_id` int(11) NOT NULL,
  `type` enum('get','post') NOT NULL,
  `comtiontype` varchar(120) NOT NULL,
  `client_sender` int(11) NOT NULL,
  `view` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cash_type`
--

INSERT INTO `cash_type` (`id`, `cash_money`, `date`, `customer_id`, `type`, `comtiontype`, `client_sender`, `view`) VALUES
(1, 5000, '2016-09-26 07:42:39', 1, 'get', 'addfromadmin', -1, 1),
(2, 100, '2016-09-26 07:47:15', 1, 'post', 'Register_new_account', 3, 1),
(3, 100, '2016-09-26 07:47:15', 3, 'get', 'Register_new_account', 1, 1),
(4, 100, '2016-09-26 07:49:02', 1, 'post', 'Register_new_account', 2, 1),
(5, 100, '2016-09-26 07:49:02', 2, 'get', 'Register_new_account', 1, 1),
(6, 100, '2016-09-26 07:50:09', 1, 'post', 'Register_new_account', 5, 1),
(7, 100, '2016-09-26 07:50:09', 5, 'get', 'Register_new_account', 1, 1),
(8, 100, '2016-09-26 07:51:10', 1, 'post', 'Register_new_account', 4, 1),
(9, 100, '2016-09-26 07:51:10', 4, 'get', 'Register_new_account', 1, 1),
(10, 100, '2016-09-26 07:52:04', 1, 'post', 'Register_new_account', 7, 1),
(11, 100, '2016-09-26 07:52:04', 7, 'get', 'Register_new_account', 1, 1),
(12, 100, '2016-09-26 07:52:58', 1, 'post', 'Register_new_account', 6, 1),
(13, 100, '2016-09-26 07:52:58', 6, 'get', 'Register_new_account', 1, 1),
(14, 850, '2016-09-26 07:55:23', 1, 'post', 'transfer ', 3, 1),
(15, 850, '2016-09-26 07:55:23', 3, 'get', 'transfer ', 1, 1),
(16, 100, '2016-09-26 07:59:53', 1, 'get', 'online', 3, 1),
(17, 950, '2016-09-26 07:59:53', 3, 'post', 'shop_product', 0, 1),
(18, 850, '2016-09-26 08:03:31', 2, 'get', 'addfromadmin', -1, 1),
(19, 850, '2016-09-26 08:03:48', 4, 'get', 'addfromadmin', -1, 1),
(20, 850, '2016-09-26 08:04:03', 5, 'get', 'addfromadmin', -1, 1),
(21, 850, '2016-09-26 08:04:18', 6, 'get', 'addfromadmin', -1, 1),
(22, 850, '2016-09-26 08:04:37', 7, 'get', 'addfromadmin', -1, 1),
(23, 100, '2016-09-26 08:05:24', 1, 'get', 'online', 2, 1),
(24, 950, '2016-09-26 08:05:24', 2, 'post', 'shop_product', 0, 1),
(25, 100, '2016-09-26 08:06:18', 1, 'get', 'online', 5, 1),
(26, 950, '2016-09-26 08:06:18', 5, 'post', 'shop_product', 0, 1),
(27, 100, '2016-09-26 08:07:06', 1, 'get', 'online', 4, 1),
(28, 950, '2016-09-26 08:07:06', 4, 'post', 'shop_product', 0, 1),
(29, 100, '2016-09-26 08:07:41', 1, 'get', 'online', 7, 1),
(30, 950, '2016-09-26 08:07:41', 7, 'post', 'shop_product', 0, 1),
(31, 100, '2016-09-26 08:08:37', 1, 'get', 'online', 6, 1),
(32, 950, '2016-09-26 08:08:37', 6, 'post', 'shop_product', 0, 1),
(33, 500, '2016-09-26 08:09:11', 1, 'get', 'offline', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `namear` varchar(200) NOT NULL,
  `view` enum('0','1') NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `namear`, `view`, `date`) VALUES
(1, 'Max out products', 'منتجات ماكس اوت ', '1', '2016-09-26 07:10:21');

-- --------------------------------------------------------

--
-- Table structure for table `child`
--

CREATE TABLE IF NOT EXISTS `child` (
  `id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `child_id` int(11) NOT NULL,
  `position` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE IF NOT EXISTS `ci_sessions` (
  `id` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '0',
  `ip_address` varchar(16) COLLATE utf8_bin NOT NULL DEFAULT '0',
  `user_agent` varchar(150) COLLATE utf8_bin NOT NULL,
  `last_activity` int(10) unsigned NOT NULL DEFAULT '0',
  `timestamp` varchar(255) COLLATE utf8_bin NOT NULL,
  `data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `ci_sessions`
--

INSERT INTO `ci_sessions` (`id`, `ip_address`, `user_agent`, `last_activity`, `timestamp`, `data`) VALUES
('06d52b3b20d7e9c740e1e5f53aa8f181436f3098', '66.249.73.186', '', 0, '1474822641', '__ci_last_regenerate|i:1474822641;'),
('0ddfa63a877696f127d1ce372a312ce9608ead7a', '41.37.2.14', '', 0, '1474873462', '__ci_last_regenerate|i:1474873209;id_useradmin|s:1:"1";username_admin|s:6:"maxout";last_login|s:19:"2016-09-12 21:54:29";counter|i:1;change_date|s:3:"100";'),
('1420cf6d93f8f24eb11c0a78b1feb769db1c3811', '184.154.139.22', '', 0, '1474880951', '__ci_last_regenerate|i:1474880951;'),
('1bb46d5d678d96e78203a03178d3206d9e094953', '41.68.67.120', '', 0, '1474799749', '__ci_last_regenerate|i:1474799585;change_date|s:3:"100";'),
('1faf9c92c96381d11d2833bbbbb6de6855747d0d', '41.37.2.14', '', 0, '1474876819', '__ci_last_regenerate|i:1474876758;change_date|s:3:"100";'),
('22c839eceb277c79bdc261e60e0dc2bca914b12a', '41.68.67.120', '', 0, '1474804553', '__ci_last_regenerate|i:1474804408;change_date|s:3:"100";id_useradmin|s:1:"1";username_admin|s:6:"maxout";last_login|s:19:"2016-09-12 21:54:29";counter|i:1;'),
('241277b2f70e1e020bd3650328a6f63a5cfc875c', '41.37.2.14', '', 0, '1474874066', '__ci_last_regenerate|i:1474874063;'),
('2ac341cc361335d9283084ca02cacef4de651abe', '184.154.139.22', '', 0, '1474880937', '__ci_last_regenerate|i:1474880937;'),
('2d12a225ed36ba5e583bc7ae817eedce31865838', '41.68.67.120', '', 0, '1474801729', '__ci_last_regenerate|i:1474801729;change_date|s:3:"100";'),
('2d13679286e88ea83d183a6cbea6029ce267ca8d', '158.69.228.14', '', 0, '1474832485', '__ci_last_regenerate|i:1474832485;'),
('4e1343bd6517985904d78d4afe343b4246fef5f9', '184.154.139.22', '', 0, '1474880952', '__ci_last_regenerate|i:1474880952;'),
('5c48db40eb8cdb6ffb0f6e8828553e977de5546b', '41.68.67.120', '', 0, '1474800685', '__ci_last_regenerate|i:1474800659;change_date|s:3:"100";'),
('610eb4caaeb0a8b28205e77ac5550fe19e9cc070', '41.68.67.120', '', 0, '1474801709', '__ci_last_regenerate|i:1474801391;change_date|s:3:"100";'),
('65e8fb4ff88a508346fa766888f7fd73ea7ba185', '184.154.139.22', '', 0, '1474880939', '__ci_last_regenerate|i:1474880939;'),
('68a91eab2125725ee08566a186b4abd1000c01f4', '41.68.67.120', '', 0, '1474800292', '__ci_last_regenerate|i:1474799953;change_date|s:3:"100";'),
('719bdce3c90cfed1301daaac3017ac8de5134fad', '184.154.139.22', '', 0, '1474880951', '__ci_last_regenerate|i:1474880951;'),
('7975ef9554a36c7f5466741facc9c9d223d681b5', '66.249.73.135', '', 0, '1474873590', '__ci_last_regenerate|i:1474873590;'),
('845369ba62c6fbd107cdded88897c84b0da8d86a', '41.68.67.120', '', 0, '1474805744', '__ci_last_regenerate|i:1474805457;change_date|s:3:"100";admin_name|N;'),
('85374d845fa236db1c282e3ba18f8439c4fa713c', '41.37.2.14', '', 0, '1474873120', '__ci_last_regenerate|i:1474873120;'),
('8c2217e4348f4e2a5068947f8b142cab73d2aadc', '41.68.67.120', '', 0, '1474804246', '__ci_last_regenerate|i:1474804173;'),
('90a53abde21da920cb722a1cf301169d2e30814a', '184.154.139.22', '', 0, '1474880939', '__ci_last_regenerate|i:1474880939;'),
('9cf1ad15f99ebba7cb1cb5c51a06508c5cb8950e', '41.37.2.14', '', 0, '1474878463', '__ci_last_regenerate|i:1474878402;change_date|s:3:"100";'),
('a0df562e2804a5ba9162cdef2b2a785ec6298e43', '184.154.139.22', '', 0, '1474880952', '__ci_last_regenerate|i:1474880939;'),
('a28966d357a76ba10e6209023aa5a7fc4885b22a', '41.68.67.120', '', 0, '1474801218', '__ci_last_regenerate|i:1474801077;change_date|s:3:"100";'),
('a381626c6f60740875bd36642e0f7749cfdf740f', '180.76.15.151', '', 0, '1474831052', '__ci_last_regenerate|i:1474831052;'),
('a3f8a0b2910bb3d9945d423413fd268cfda7cff7', '41.68.67.120', '', 0, '1474800551', '__ci_last_regenerate|i:1474800295;change_date|s:3:"100";'),
('a90ca9b66a430e38a753f7a60cf5528f1e20b33d', '41.37.2.14', '', 0, '1474877634', '__ci_last_regenerate|i:1474877505;change_date|s:3:"100";'),
('a9aba48b31e8cdecca49bf3593358ed4b8500f0f', '41.68.67.120', '', 0, '1474806387', '__ci_last_regenerate|i:1474806196;change_date|s:3:"100";admin_name|N;'),
('abc769fa9048194a315de5be7aa8cb9135d0e454', '184.154.139.22', '', 0, '1474880938', '__ci_last_regenerate|i:1474880938;'),
('afadd9c2f750bd562affaaa61f1a747755ff9d00', '41.37.2.14', '', 0, '1474876142', '__ci_last_regenerate|i:1474875768;id_useradmin|s:1:"1";username_admin|s:6:"maxout";last_login|s:19:"2016-09-12 21:54:29";counter|i:1;change_date|s:3:"100";'),
('b6c330ee4b6d6b151eb6ffc522e8c2c39b2ca2fd', '41.37.2.14', '', 0, '1474877378', '__ci_last_regenerate|i:1474877096;change_date|s:3:"100";id_useradmin|s:1:"1";username_admin|s:6:"maxout";last_login|s:19:"2016-09-12 21:54:29";counter|i:1;'),
('baa7716f9b9f86487643c3926f73d7e0a129e922', '41.37.2.14', '', 0, '1474876755', '__ci_last_regenerate|i:1474876456;change_date|s:3:"100";id_useradmin|s:1:"3";username_admin|s:7:"maxout2";last_login|s:19:"0000-00-00 00:00:00";counter|i:1;'),
('bfcc78a8f312b4850e5b1e37446d3d8bd50bc2cd', '41.68.67.120', '', 0, '1474804605', '__ci_last_regenerate|i:1474804590;id_useradmin|s:1:"1";username_admin|s:6:"maxout";last_login|s:19:"2016-09-12 21:54:29";counter|i:1;change_date|s:3:"100";'),
('c4d0e7e1fb8e171ed59e2d0f2f10cc79758e9e2b', '41.37.2.14', '', 0, '1474874600', '__ci_last_regenerate|i:1474874600;'),
('cd8eed8298aeada62f0ca174699d557b0b6c9601', '41.68.67.120', '', 0, '1474804498', '__ci_last_regenerate|i:1474804498;'),
('d502ec73fec6e3467fc3cf3f967b144705203268', '41.68.67.120', '', 0, '1474804764', '__ci_last_regenerate|i:1474804591;change_date|s:3:"100";id_useradmin|s:1:"1";username_admin|s:6:"maxout";last_login|s:19:"2016-09-12 21:54:29";counter|i:1;admin_name|N;'),
('daf93f6ccbe142eb9e04f00b2d36a9c2c56c11e5', '180.76.15.143', '', 0, '1474881151', '__ci_last_regenerate|i:1474881151;'),
('dd4ae5dc73e1a7895cdfb3deee921a80d1e2e315', '158.69.228.14', '', 0, '1474832484', '__ci_last_regenerate|i:1474832484;'),
('ddc1a702404f02c0d5acc03654419c6646960bb9', '41.37.2.14', '', 0, '1474875710', '__ci_last_regenerate|i:1474875455;id_useradmin|s:1:"1";username_admin|s:6:"maxout";last_login|s:19:"2016-09-12 21:54:29";counter|i:1;change_date|s:3:"100";'),
('f02c50470d56bf87b08d8774acdd2f43d55cf16a', '184.154.139.22', '', 0, '1474880939', '__ci_last_regenerate|i:1474880939;'),
('f1eececf47e537c4bfa848d114bc36d0cda322e3', '41.37.2.14', '', 0, '1474876441', '__ci_last_regenerate|i:1474876142;id_useradmin|s:1:"1";username_admin|s:6:"maxout";last_login|s:19:"2016-09-12 21:54:29";counter|i:1;change_date|s:3:"100";'),
('f28590a0b1c6a3fe6fa3a9839195a51fddc29115', '41.68.67.120', '', 0, '1474805762', '__ci_last_regenerate|i:1474805762;change_date|s:3:"100";admin_name|N;'),
('f53c100423f8c2b6728b4b2dc20d19e602652360', '180.76.15.9', '', 0, '1474850659', '__ci_last_regenerate|i:1474850659;'),
('f641462b39a40a7a6ee7961a19ad721eeae35893', '158.69.228.14', '', 0, '1474832485', '__ci_last_regenerate|i:1474832485;'),
('fbacd206f0e15b18a7772187ce6286c54277539a', '41.68.67.120', '', 0, '1474803734', '__ci_last_regenerate|i:1474803734;');

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

CREATE TABLE IF NOT EXISTS `client` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `fname` varchar(255) DEFAULT NULL,
  `sname` varchar(150) NOT NULL,
  `lname` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `mail` varchar(255) DEFAULT NULL,
  `smail` varchar(255) NOT NULL,
  `sphone` varchar(255) NOT NULL,
  `Nationaid` varchar(255) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `dateofbirth` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `phone` varchar(40) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `activation` enum('0','1') NOT NULL DEFAULT '0',
  `pincode` varchar(200) NOT NULL,
  `usercode` varchar(150) NOT NULL,
  `pleft` enum('0','1') NOT NULL,
  `pright` enum('0','1') NOT NULL,
  `allcom_left` int(11) NOT NULL,
  `allcom_right` int(11) NOT NULL,
  `exitcom_left` int(11) NOT NULL,
  `exitcom_right` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `view` enum('0','1') NOT NULL DEFAULT '1',
  `visanum` varchar(150) NOT NULL,
  `visadate` varchar(150) NOT NULL,
  `flashout` enum('0','1') NOT NULL,
  `send_message` enum('0','1') NOT NULL,
  `last_login` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `code_count` varchar(255) NOT NULL,
  `id_add` int(11) NOT NULL,
  `count_maxout` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `count_com` int(11) NOT NULL,
  `product_offline` int(11) NOT NULL,
  `account_active_price` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `client`
--

INSERT INTO `client` (`id`, `parent_id`, `fname`, `sname`, `lname`, `password`, `mail`, `smail`, `sphone`, `Nationaid`, `username`, `dateofbirth`, `state`, `city`, `phone`, `address`, `activation`, `pincode`, `usercode`, `pleft`, `pright`, `allcom_left`, `allcom_right`, `exitcom_left`, `exitcom_right`, `date`, `view`, `visanum`, `visadate`, `flashout`, `send_message`, `last_login`, `code_count`, `id_add`, `count_maxout`, `image`, `count_com`, `product_offline`, `account_active_price`) VALUES
(1, 0, 'Ahmed', 'Ramadan', 'Bahr', 'bWF4b3V0MTIz', 'sss@smnbsmdf.com', '', '', '28907282300751', 'maxout', '21-12-1987', 'Egypt', 'City', '01000672880', 'markz itsa ', '1', '1234', '5', '0', '0', 3, 3, 0, 0, '2016-08-31 10:11:38', '1', '', '', '0', '1', '2016-09-13 02:54:29', '1', 1, 1, 'J5q5.jpg', 1, 0, 0),
(2, 1, 'Ahmed', 'ramadan ', 'bahr', 'NDU2MTcxOA==', NULL, '', '', '20', 'maxout3', '28/7/1989', '', '', '01000672880', 'الفيوم _اطسا_منيه الحيط', '1', '4561718شس', 'EG0321', '1', '0', 1, 1, 1, 1, '2016-08-31 10:12:49', '1', '', '', '0', '0', '0000-00-00 00:00:00', '11', 1, 0, '', 0, 0, 0),
(3, 1, 'Ahmed', 'ramadan ', 'bahr', 'NDU2MTcxOA==', NULL, '', '', '20', 'maxout2', '28/7/1989', '', '', '01000672880', 'الفيوم _اطسا_منيه الحيط', '1', '4561718شس', 'EG5669', '0', '1', 1, 1, 1, 1, '2016-08-31 10:12:49', '1', '', '', '0', '0', '0000-00-00 00:00:00', '12', 1, 0, '', 0, 0, 0),
(4, 3, 'Ahmed', 'ramadan ', 'bahr', 'NDU2MTcxOA==', NULL, '', '', '20', 'maxout5', '28/7/1989', '', '', '01000672880', 'الفيوم _اطسا_منيه الحيط', '1', '4561718as', 'EG4598', '1', '0', 0, 0, 0, 0, '2016-09-26 07:47:15', '1', '', '', '0', '0', '0000-00-00 00:00:00', '121', 1, 0, '', 0, 0, 0),
(5, 3, 'Ahmed', 'ramadan ', 'bahr', 'NDU2MTcxOA==', NULL, '', '', '20', 'maxout4', '28/7/1989', '', '', '01000672880', 'الفيوم _اطسا_منيه الحيط', '1', '4561718as', 'EG0478', '0', '1', 0, 0, 0, 0, '2016-09-26 07:47:15', '1', '', '', '0', '0', '0000-00-00 00:00:00', '122', 1, 0, '', 0, 0, 0),
(6, 2, 'Ahmed', 'ramadan ', 'bahr', 'NDU2MTcxOA==', NULL, '', '', '20', 'maxout7', '28/7/1989', '', '', '01000672880', 'الفيوم _اطسا_منيه الحيط', '1', '4561718as', 'EG5481', '1', '0', 0, 0, 0, 0, '2016-09-26 07:49:02', '1', '', '', '0', '0', '0000-00-00 00:00:00', '111', 1, 0, '', 0, 0, 0),
(7, 2, 'Ahmed', 'ramadan ', 'bahr', 'NDU2MTcxOA==', NULL, '', '', '20', 'maxout6', '28/7/1989', '', '', '01000672880', 'الفيوم _اطسا_منيه الحيط', '1', '4561718as', 'EG1938', '0', '1', 0, 0, 0, 0, '2016-09-26 07:49:02', '1', '', '', '0', '0', '0000-00-00 00:00:00', '112', 1, 0, '', 0, 0, 0),
(8, 5, NULL, '', '', '', NULL, '', '', '', NULL, '', '', '', NULL, NULL, '0', '', '', '1', '0', 0, 0, 0, 0, '2016-09-26 07:50:09', '1', '', '', '0', '0', '0000-00-00 00:00:00', '', 0, 0, '', 0, 0, 0),
(9, 5, NULL, '', '', '', NULL, '', '', '', NULL, '', '', '', NULL, NULL, '0', '', '', '0', '1', 0, 0, 0, 0, '2016-09-26 07:50:09', '1', '', '', '0', '0', '0000-00-00 00:00:00', '', 0, 0, '', 0, 0, 0),
(10, 4, NULL, '', '', '', NULL, '', '', '', NULL, '', '', '', NULL, NULL, '0', '', '', '1', '0', 0, 0, 0, 0, '2016-09-26 07:51:10', '1', '', '', '0', '0', '0000-00-00 00:00:00', '', 0, 0, '', 0, 0, 0),
(11, 4, NULL, '', '', '', NULL, '', '', '', NULL, '', '', '', NULL, NULL, '0', '', '', '0', '1', 0, 0, 0, 0, '2016-09-26 07:51:10', '1', '', '', '0', '0', '0000-00-00 00:00:00', '', 0, 0, '', 0, 0, 0),
(12, 7, NULL, '', '', '', NULL, '', '', '', NULL, '', '', '', NULL, NULL, '0', '', '', '1', '0', 0, 0, 0, 0, '2016-09-26 07:52:04', '1', '', '', '0', '0', '0000-00-00 00:00:00', '', 0, 0, '', 0, 0, 0),
(13, 7, NULL, '', '', '', NULL, '', '', '', NULL, '', '', '', NULL, NULL, '0', '', '', '0', '1', 0, 0, 0, 0, '2016-09-26 07:52:04', '1', '', '', '0', '0', '0000-00-00 00:00:00', '', 0, 0, '', 0, 0, 0),
(14, 6, NULL, '', '', '', NULL, '', '', '', NULL, '', '', '', NULL, NULL, '0', '', '', '1', '0', 0, 0, 0, 0, '2016-09-26 07:52:58', '1', '', '', '0', '0', '0000-00-00 00:00:00', '', 0, 0, '', 0, 0, 0),
(15, 6, NULL, '', '', '', NULL, '', '', '', NULL, '', '', '', NULL, NULL, '0', '', '', '0', '1', 0, 0, 0, 0, '2016-09-26 07:52:58', '1', '', '', '0', '0', '0000-00-00 00:00:00', '', 0, 0, '', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `client_message`
--

CREATE TABLE IF NOT EXISTS `client_message` (
  `id` int(11) NOT NULL,
  `client_sender_id` int(11) NOT NULL,
  `client_recevier_id` int(11) NOT NULL DEFAULT '0',
  `subject` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `type` set('0','1','2') NOT NULL,
  `data` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `read_admin` enum('0','1') NOT NULL,
  `read_client` enum('0','1') NOT NULL,
  `view` enum('0','1') NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `contact_info`
--

CREATE TABLE IF NOT EXISTS `contact_info` (
  `id` int(11) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone` varchar(60) NOT NULL,
  `fax` varchar(60) NOT NULL,
  `id_lang` int(3) NOT NULL DEFAULT '1',
  `eng_address` varchar(255) NOT NULL,
  `sales_manager` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE IF NOT EXISTS `contact_us` (
  `id` int(11) NOT NULL,
  `mail` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` longtext NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `view` enum('0','1') NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`id`, `mail`, `name`, `phone`, `subject`, `message`, `date`, `view`) VALUES
(5, '', '', '', '', '', '2016-09-11 09:19:33', '1'),
(6, '', '', '', '', '', '2016-09-14 09:05:17', '0'),
(7, '', '', '', '', '', '2016-09-17 09:14:14', '0'),
(8, '', '', '', '', '', '2016-09-19 09:11:02', '0'),
(9, '', '', '', '', '', '2016-09-26 09:09:12', '0');

-- --------------------------------------------------------

--
-- Table structure for table `deposit_data`
--

CREATE TABLE IF NOT EXISTS `deposit_data` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `username` varchar(150) NOT NULL,
  `bank_id` int(11) NOT NULL,
  `bank_branch` varchar(120) NOT NULL,
  `depositor_name` varchar(255) NOT NULL,
  `serial_number` varchar(120) NOT NULL,
  `cash_money` int(11) NOT NULL,
  `phone` varchar(120) NOT NULL,
  `national_id` varchar(120) NOT NULL,
  `city` varchar(120) NOT NULL,
  `address` varchar(150) NOT NULL,
  `pincode` varchar(100) NOT NULL,
  `date` varchar(120) NOT NULL,
  `date0` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `view` enum('0','1') NOT NULL,
  `comment` char(11) NOT NULL DEFAULT 'wait',
  `cash_type_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `deposit_data`
--

INSERT INTO `deposit_data` (`id`, `customer_id`, `username`, `bank_id`, `bank_branch`, `depositor_name`, `serial_number`, `cash_money`, `phone`, `national_id`, `city`, `address`, `pincode`, `date`, `date0`, `view`, `comment`, `cash_type_id`) VALUES
(25, 3, '1', 0, 'مصر ', 'ahmed bahr', '16462362', 2500, '01000672880', '4454121594', 'الفيووووووووووووم', 'الفيوم', '1', '9/9/2016', '2016-09-09 23:58:18', '1', 'Denied', 0),
(26, 1, 'maxout', 0, 'الفيوم ', 'احمد', '613134531', 200, '0103363', '645654346', 'فيوم', 'فيوم', '1234', '9/9/2016', '2016-09-10 05:00:21', '1', 'Denied', 0),
(27, 1, 'maxout', 0, 'zxz ', 'zxzxz', 'xz', 250, '3231', '4541', 'فيوم', '.,xms', '1234', '9/9/2016', '2016-09-10 05:06:27', '1', 'Accepted', 0),
(28, 1, 'maxout', 0, 'مصر ', 'احمد عيد فتوح', '16462362', 2000, '01000672880', '4454121594', 'الفيووووووووووووم', 'الفيوم_اطسا_منيه الحيط', '1993', '9/9/2016', '2016-09-14 01:39:23', '1', 'Accepted', 0),
(29, 853, 'Ayoub', 0, 'مصر ', 'احمد عيد فتوح', '123654789', 200, '01000672880', '4454121594', 'الفيووووووووووووم', 'الفيوم_اطسا_منيه الحيط', '1987', '9/9/2016', '2016-09-20 09:48:29', '1', 'Denied', 0),
(30, 1, 'maxout', 0, 'الفيوم ', 'احمد بحر', '147258369', 222, '01000672880', '45413641654564', 'الفيوم', 'الفيوم اطسا', '1234', '23/9/2016', '2016-09-23 21:28:42', '1', 'Denied', 0);

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE IF NOT EXISTS `gallery` (
  `id` int(11) NOT NULL,
  `prod_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `view` enum('0','1') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `help`
--

CREATE TABLE IF NOT EXISTS `help` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `namear` varchar(255) NOT NULL,
  `view` enum('0','1') NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `help`
--

INSERT INTO `help` (`id`, `name`, `namear`, `view`) VALUES
(7, '1-We have been providing "work mode" company (Max Out) to all the details.', '1-لقد تم تقديم "طريقة عمل" شركة (ماكس اوت) إليّ بجميع التفاصيل.', '1'),
(9, '1-maxouts working rules and regulations had been extensively introduced to me. ', '2-لقد عاملني الشخص الذي قدمني إلى شركة (ماكس اوت) بغاية اللطف طوال الوقت.', '0'),
(10, '3- I was accurately informed on all products and services offered by this company', ' 3-لقد اطلعت بصوره كافيه على منتجات و الخدمات المقدمه من الشركه.', '1'),
(11, '4- I certify that i agree to all ethics and rules of behaviour', ' 4-أقر بموافقتي على الالتزام بـ قواعد الأخلاق والسلوك', '1'),
(12, '5- I certify that ive reached the legal age limit of 21 years', '5-أقر بأنني قد بلغت السن القانوني 21 سنه.', '1'),
(13, '6- I acknowledge that the amount paid is the price of a product that i intend to purchase and isnt refundable', ' 6-أقر بموافقتي بأن المبلغ المدفوع هو قيمة منتج أرغب شراؤه ولا يحق لي المطالبه بإستردادها الا في صورة منتج', '1');

-- --------------------------------------------------------

--
-- Table structure for table `network_seting`
--

CREATE TABLE IF NOT EXISTS `network_seting` (
  `id` int(11) NOT NULL,
  `online` char(20) NOT NULL,
  `offline` char(20) NOT NULL,
  `maxout` char(20) NOT NULL,
  `offline_website` enum('0','1') NOT NULL,
  `lnum_offline` int(11) NOT NULL,
  `rnum_offline` int(11) NOT NULL,
  `account_price` int(11) NOT NULL,
  `active_account` enum('0','1') NOT NULL,
  `price_activeaccount` int(11) NOT NULL,
  `changedate_value` int(11) NOT NULL,
  `word_offline_value` varchar(255) NOT NULL,
  `word_offline_value_ar` varchar(255) NOT NULL,
  `offline_com_num` int(11) NOT NULL,
  `question` varchar(255) NOT NULL,
  `question1` varchar(255) NOT NULL,
  `question2` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `network_seting`
--

INSERT INTO `network_seting` (`id`, `online`, `offline`, `maxout`, `offline_website`, `lnum_offline`, `rnum_offline`, `account_price`, `active_account`, `price_activeaccount`, `changedate_value`, `word_offline_value`, `word_offline_value_ar`, `offline_com_num`, `question`, `question1`, `question2`) VALUES
(1, '100', '500', '3', '1', 3, 3, 100, '1', 600, 100, 'Only five hundred pounds', '', 3, '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE IF NOT EXISTS `product` (
  `id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `sub_id` int(11) NOT NULL,
  `image` varchar(150) NOT NULL,
  `name` varchar(200) NOT NULL,
  `name_ar` varchar(200) NOT NULL,
  `details` text NOT NULL,
  `details_ar` text NOT NULL,
  `price` varchar(120) NOT NULL,
  `discount` varchar(150) NOT NULL,
  `amount` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `type` set('0','1','2') NOT NULL,
  `view` enum('0','1') NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `cat_id`, `sub_id`, `image`, `name`, `name_ar`, `details`, `details_ar`, `price`, `discount`, `amount`, `date`, `type`, `view`) VALUES
(1, 1, 1, 'qr7F.jpg', 'Water Filter 5 stages', 'فلتر مياه 5 مراحل ', 'Water Filter 5 stages of working-class American pressure water\r\nThe advantage of candle 4 * 1 works like a spark four additional filter\r\nFilter year warranty + spark the first phase of a one-year gift', 'فلتر مياه 5 مراحل بمواصفات امريكيه يعمل بضغط المياه  \r\nويمتاز بشمعه 4*1 تعمل مثل اربع شمعات اضافيه للفلتر\r\nالفلتر ضمان عــــــــام + شمعات المرحله الاولى لمده عـــام هديه  \r\n', '950', '', 94, '2016-09-26 07:32:56', '2', '1'),
(2, 1, 1, '9eL6.jpg', 'Water Filter 7stages', 'فلتر مياه 7 مراحل', 'Water Filter 7stages of working-class American pressure water\r\nThe advantage of candle 4 * 1 works like a spark four additional filter\r\nFilter year warranty + spark the first phase of a one-year gift\r\n', 'فلتر مياه7 مراحل بمواصفات امريكيه يعمل بضغط المياه  \r\nويمتاز بشمعه 4*1 تعمل مثل اربع شمعات اضافيه للفلتر\r\nالفلتر ضمان عــــــــام + شمعات المرحله الاولى لمده عـــام هديه  \r\n', '1250', '', 100, '2016-09-26 07:35:44', '2', '1');

-- --------------------------------------------------------

--
-- Table structure for table `selling`
--

CREATE TABLE IF NOT EXISTS `selling` (
  `id` int(11) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `mail` varchar(255) NOT NULL,
  `phone` varchar(150) NOT NULL,
  `address` varchar(255) NOT NULL,
  `product_id` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `view` enum('0','1') NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `selling`
--

INSERT INTO `selling` (`id`, `fname`, `mail`, `phone`, `address`, `product_id`, `amount`, `date`, `view`) VALUES
(1, '', '', '', '', 0, 0, '2016-09-26 09:09:11', '0');

-- --------------------------------------------------------

--
-- Table structure for table `site_info`
--

CREATE TABLE IF NOT EXISTS `site_info` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `keywords` text NOT NULL,
  `description` text NOT NULL,
  `autors` text NOT NULL,
  `name_ar` varchar(255) NOT NULL,
  `terms` longtext NOT NULL,
  `privacy` longtext NOT NULL,
  `offline_website` enum('0','1') NOT NULL,
  `advert_img` varchar(150) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `site_info`
--

INSERT INTO `site_info` (`id`, `name`, `logo`, `keywords`, `description`, `autors`, `name_ar`, `terms`, `privacy`, `offline_website`, `advert_img`) VALUES
(1, 'MaxOut', '8sae.png', '', '', '', 'ماكس اوت', '', '', '0', 'A8u9.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE IF NOT EXISTS `slider` (
  `id` int(11) NOT NULL,
  `img` varchar(200) NOT NULL,
  `link` varchar(200) NOT NULL,
  `description` varchar(255) NOT NULL,
  `descriptioneng` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `title_ar` varchar(255) NOT NULL,
  `details` text NOT NULL,
  `details_ar` text NOT NULL,
  `view` enum('0','1') NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`id`, `img`, `link`, `description`, `descriptioneng`, `title`, `title_ar`, `details`, `details_ar`, `view`) VALUES
(10, 'mSHt.png', '', '', '', '[ MAXOUT ]', '  [ ماكس اوت ]', '', '', '1'),
(11, 'hPHW.jpeg', '', 'لا تنتظر الفرصه بل اصنعها ......', ' Do not wait for the opportunity , but I make .....', 'Maxout change the lives', 'ماكس اوت تغيير حياه .....', '<div style="background:#eee;border:1px solid #ccc;padding:5px 10px;"><span style="color:#0000FF"><cite>Do not wait for the opportunity but i make * </cite></span></div>\r\n\r\n<div style="background:#eee;border:1px solid #ccc;padding:5px 10px;"><span style="color:#0000FF"><cite>the road to excellence is rarely crowded * &nbsp; </cite></span></div>\r\n', '<p><span style="font-size:18px"><span style="font-family:tahoma,geneva,sans-serif"><span style="color:#FF0000"><span style="font-size:20px">الطريق الى التميز نادرا ما يكون مزدحما......</span></span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n', '1'),
(12, 'XB0O.jpg', '', '', '', 'Filter 7 initial stages of', 'فلتر 7 مراحل مبدئى', '', '', '1'),
(13, 'Yg2n.jpg', '', '', '', 'Filter 5 initial stages of', 'فلتر 5 مراحل مبدئى', '', '', '1');

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE IF NOT EXISTS `subcategory` (
  `id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `namear` varchar(255) NOT NULL,
  `view` enum('0','1') NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`id`, `cat_id`, `name`, `namear`, `view`) VALUES
(1, 1, 'Water Filters', 'فلاتر مياه ', '1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bank_account`
--
ALTER TABLE `bank_account`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bank_details`
--
ALTER TABLE `bank_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `basket0`
--
ALTER TABLE `basket0`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cash_type`
--
ALTER TABLE `cash_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `child`
--
ALTER TABLE `child`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `client_message`
--
ALTER TABLE `client_message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_info`
--
ALTER TABLE `contact_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`id`), ADD KEY `user_id` (`mail`);

--
-- Indexes for table `deposit_data`
--
ALTER TABLE `deposit_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `help`
--
ALTER TABLE `help`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `network_seting`
--
ALTER TABLE `network_seting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `selling`
--
ALTER TABLE `selling`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `site_info`
--
ALTER TABLE `site_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `bank_account`
--
ALTER TABLE `bank_account`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `bank_details`
--
ALTER TABLE `bank_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `basket0`
--
ALTER TABLE `basket0`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `cash_type`
--
ALTER TABLE `cash_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `child`
--
ALTER TABLE `child`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `client`
--
ALTER TABLE `client`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `client_message`
--
ALTER TABLE `client_message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `contact_info`
--
ALTER TABLE `contact_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `deposit_data`
--
ALTER TABLE `deposit_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `help`
--
ALTER TABLE `help`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `network_seting`
--
ALTER TABLE `network_seting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `selling`
--
ALTER TABLE `selling`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `site_info`
--
ALTER TABLE `site_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
