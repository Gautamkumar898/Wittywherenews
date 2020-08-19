-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 07, 2020 at 06:29 AM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.2.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `news`
--

-- --------------------------------------------------------

--
-- Table structure for table `ad_s`
--

CREATE TABLE `ad_s` (
  `id` int(11) NOT NULL,
  `page` int(11) NOT NULL,
  `ad_position` int(11) NOT NULL,
  `embed_code` text NOT NULL,
  `large_status` int(11) NOT NULL DEFAULT 1,
  `mobile_status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ad_s`
--

INSERT INTO `ad_s` (`id`, `page`, `ad_position`, `embed_code`, `large_status`, `mobile_status`) VALUES
(123, 1, 11, '<iframe width=\"260\" height=\"115\" src=\"https://www.youtube.com/embed/5qCksHPylkI\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 1, 1),
(124, 3, 32, '<iframe width=\"360\" height=\"215\" src=\"https://www.youtube.com/embed/QD2hxpQd_b0\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 1, 1),
(125, 3, 33, '<iframe width=\"360\" height=\"215\" src=\"https://www.youtube.com/embed/pPwVCIvO7tg\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 1, 1),
(127, 1, 18, '<iframe width=\"360\" height=\"215\" src=\"https://www.youtube.com/embed/tHrYQb2n6MQ\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 1, 1),
(128, 1, 11, '<a href=\"http://\"><img width=\"100%\" src=\"http://localhost/MainNewsPaper-v2.0/18-08-2017/uploads/Advertizement/2cae51675b59edb47ab93e0359c25425.png\" alt=\"\"></a>', 1, 1),
(129, 1, 12, '<a href=\"http://\"><img width=\"100%\" src=\"http://localhost/MainNewsPaper-v2.0/18-08-2017/uploads/Advertizement/62fb69babdf5e9fc4aa65a150adc2512.png\" alt=\"\"></a>', 1, 1),
(130, 1, 13, '<a href=\"http://\"><img width=\"100%\" src=\"http://localhost/MainNewsPaper-v2.0/18-08-2017/uploads/Advertizement/aaec81819cf3d2f551be068420455818.png\" alt=\"\"></a>', 1, 1),
(131, 1, 14, '<iframe width=\"360\" height=\"215\" src=\"https://www.youtube.com/embed/wi7_mtTgVBg\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 1, 1),
(132, 2, 21, '<iframe width=\"360\" height=\"215\" src=\"https://www.youtube.com/embed/1AmZy4bSleY\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 1, 1),
(133, 1, 17, '<iframe width=\"260\" height=\"125\" src=\"https://www.youtube.com/embed/UH2cPk24LQw\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `breaking_news`
--

CREATE TABLE `breaking_news` (
  `id` int(9) NOT NULL,
  `title` text NOT NULL,
  `time_stamp` int(15) DEFAULT NULL,
  `status` tinyint(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `breaking_news`
--

INSERT INTO `breaking_news` (`id`, `title`, `time_stamp`, `status`) VALUES
(1, '{\"news_title\":\"Lebanon \\u0915\\u0947 Beirut \\u092e\\u0947\\u0902 \\u092c\\u094d\\u0932\\u093e\\u0938\\u094d\\u091f, \\u0905\\u092c\\u0924\\u0915 150 \\u0915\\u0940 \\u092e\\u094c\\u0924, 4000 \\u0938\\u0947 \\u091c\\u094d\\u092f\\u093e\\u0926\\u093e \\u0918\\u093e\\u092f\\u0932\",\"url\":\"http:\\/\\/localhost:82\\/office\\/Wittywhere\\/New-National\\/details\\/2\\/Lebanon-\\u0915\\u0947-Beirut-\\u092e\\u0947\\u0902-\\u092c\\u094d\\u0932\\u093e\\u0938\\u094d\\u091f-\\u0905\\u092c\\u0924\\u0915-\\u0915\\u0940-\\u092e\\u094c\\u0924-\\u0938\\u0947-\\u091c\\u094d\\u092f\\u093e\\u0926\\u093e-\\u0918\\u093e\\u092f\\u0932\"}', 1596736800, 1),
(2, '{\"news_title\":\"Lebanon \\u0915\\u0947 Beirut \\u092e\\u0947\\u0902 \\u092c\\u094d\\u0932\\u093e\\u0938\\u094d\\u091f, \\u0905\\u092c\\u0924\\u0915 150 \\u0915\\u0940 \\u092e\\u094c\\u0924, 4000 \\u0938\\u0947 \\u091c\\u094d\\u092f\\u093e\\u0926\\u093e \\u0918\\u093e\\u092f\\u0932\",\"url\":\"http:\\/\\/localhost:82\\/office\\/Wittywhere\\/New-National\\/details\\/3\\/Lebanon-\\u0915\\u0947-Beirut-\\u092e\\u0947\\u0902-\\u092c\\u094d\\u0932\\u093e\\u0938\\u094d\\u091f-\\u0905\\u092c\\u0924\\u0915-\\u0915\\u0940-\\u092e\\u094c\\u0924-\\u0938\\u0947-\\u091c\\u094d\\u092f\\u093e\\u0926\\u093e-\\u0918\\u093e\\u092f\\u0932\"}', 1596736800, 1);

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `id` int(11) NOT NULL,
  `cache_path` text DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`id`, `cache_path`, `status`) VALUES
(1, 'FALSE', 0);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `category_id` int(11) NOT NULL,
  `category_name` text NOT NULL,
  `slug` text NOT NULL,
  `menu` int(11) NOT NULL DEFAULT 0 COMMENT '0=not in menu, 1=in menu',
  `position` int(11) NOT NULL DEFAULT 1,
  `parents_id` varchar(100) NOT NULL,
  `category_imgae` varchar(200) DEFAULT NULL,
  `img_status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`category_id`, `category_name`, `slug`, `menu`, `position`, `parents_id`, `category_imgae`, `img_status`) VALUES
(1, 'NATIONAL', 'New-National', 1, 1, '', 'uploads/category_img/politi2.jpg', 0),
(2, 'SPORT', 'sport-news', 1, 1, '', 'uploads/category_img/downlo.png', 0),
(3, 'INTERNATIONAL', 'inter-national', 1, 1, '', 'uploads/category_img/in.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `id` varchar(128) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ci_sessions`
--

INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('iufqsvica5cujiug3b58vmqvn8535e8p', '::1', 1596718067, 0x5f5f63695f6c6173745f726567656e65726174657c693a313539363731383036373b69647c733a313a2238223b6e616d657c733a31343a2247617574616d206b756d61722060223b70656e5f6e616d657c733a363a226b756d617220223b757365725f747970657c733a313a2234223b656d61696c7c733a31353a2261646d696e40676d61696c2e636f6d223b73657373696f6e5f69647c733a33323a226975667173766963613563756a69756733623538766d71766e38353335653870223b6c6f676765645f696e7c623a313b),
('g23fk84naao392i39qsoqmsmbassaf56', '::1', 1596718250, 0x5f5f63695f6c6173745f726567656e65726174657c693a313539363731383036373b69647c733a313a2238223b6e616d657c733a31343a2247617574616d206b756d61722060223b70656e5f6e616d657c733a363a226b756d617220223b757365725f747970657c733a313a2234223b656d61696c7c733a31353a2261646d696e40676d61696c2e636f6d223b73657373696f6e5f69647c733a33323a226975667173766963613563756a69756733623538766d71766e38353335653870223b6c6f676765645f696e7c623a313b),
('ittl8v07nuig1tvbstoabqhci82sogtf', '::1', 1596727014, 0x5f5f63695f6c6173745f726567656e65726174657c693a313539363732373031343b69647c733a313a2238223b6e616d657c733a31333a2247617574616d206b756d617220223b70656e5f6e616d657c733a363a226b756d617220223b757365725f747970657c733a313a2234223b656d61696c7c733a31353a2261646d696e40676d61696c2e636f6d223b73657373696f6e5f69647c733a33323a226974746c387630376e7569673174766273746f6162716863693832736f677466223b6c6f676765645f696e7c623a313b),
('osff0u08tfbqc11k1i72h633ht9tm820', '::1', 1596727418, 0x5f5f63695f6c6173745f726567656e65726174657c693a313539363732373431383b69647c733a313a2238223b6e616d657c733a31333a2247617574616d206b756d617220223b70656e5f6e616d657c733a363a226b756d617220223b757365725f747970657c733a313a2234223b656d61696c7c733a31353a2261646d696e40676d61696c2e636f6d223b73657373696f6e5f69647c733a33323a226974746c387630376e7569673174766273746f6162716863693832736f677466223b6c6f676765645f696e7c623a313b6d6573736167657c733a32323a224361636865204f6666205375636365737366756c6c79223b5f5f63695f766172737c613a313a7b733a373a226d657373616765223b733a333a226f6c64223b7d),
('61os9eouifva7tjqddrt98l8lsgkhsoj', '::1', 1596728518, 0x5f5f63695f6c6173745f726567656e65726174657c693a313539363732383531383b69647c733a313a2238223b6e616d657c733a31333a2247617574616d206b756d617220223b70656e5f6e616d657c733a363a226b756d617220223b757365725f747970657c733a313a2234223b656d61696c7c733a31353a2261646d696e40676d61696c2e636f6d223b73657373696f6e5f69647c733a33323a226974746c387630376e7569673174766273746f6162716863693832736f677466223b6c6f676765645f696e7c623a313b),
('i4f5ioss58ustsnfe2eglif7jngpfs70', '::1', 1596729198, 0x5f5f63695f6c6173745f726567656e65726174657c693a313539363732393139383b69647c733a313a2238223b6e616d657c733a31333a2247617574616d206b756d617220223b70656e5f6e616d657c733a363a226b756d617220223b757365725f747970657c733a313a2234223b656d61696c7c733a31353a2261646d696e40676d61696c2e636f6d223b73657373696f6e5f69647c733a33323a226974746c387630376e7569673174766273746f6162716863693832736f677466223b6c6f676765645f696e7c623a313b),
('vu1tvpp7gqobn7o6vu8dtqmttrgftbsu', '::1', 1596729510, 0x5f5f63695f6c6173745f726567656e65726174657c693a313539363732393531303b69647c733a313a2238223b6e616d657c733a31333a2247617574616d206b756d617220223b70656e5f6e616d657c733a363a226b756d617220223b757365725f747970657c733a313a2234223b656d61696c7c733a31353a2261646d696e40676d61696c2e636f6d223b73657373696f6e5f69647c733a33323a226974746c387630376e7569673174766273746f6162716863693832736f677466223b6c6f676765645f696e7c623a313b),
('ikcvi40t4ckcvfita9vb52j6h3fvmbt6', '::1', 1596730302, 0x5f5f63695f6c6173745f726567656e65726174657c693a313539363733303330323b69647c733a313a2238223b6e616d657c733a31333a2247617574616d206b756d617220223b70656e5f6e616d657c733a363a226b756d617220223b757365725f747970657c733a313a2234223b656d61696c7c733a31353a2261646d696e40676d61696c2e636f6d223b73657373696f6e5f69647c733a33323a226974746c387630376e7569673174766273746f6162716863693832736f677466223b6c6f676765645f696e7c623a313b),
('58kj7otd9bmkeml4n2dghef0r56c08mp', '::1', 1596730621, 0x5f5f63695f6c6173745f726567656e65726174657c693a313539363733303632313b69647c733a313a2238223b6e616d657c733a31333a2247617574616d206b756d617220223b70656e5f6e616d657c733a363a226b756d617220223b757365725f747970657c733a313a2234223b656d61696c7c733a31353a2261646d696e40676d61696c2e636f6d223b73657373696f6e5f69647c733a33323a226974746c387630376e7569673174766273746f6162716863693832736f677466223b6c6f676765645f696e7c623a313b),
('sqa9kc7q34cbi2pun2b47j3dpc4l9753', '::1', 1596731019, 0x5f5f63695f6c6173745f726567656e65726174657c693a313539363733313031393b69647c733a313a2238223b6e616d657c733a31333a2247617574616d206b756d617220223b70656e5f6e616d657c733a363a226b756d617220223b757365725f747970657c733a313a2234223b656d61696c7c733a31353a2261646d696e40676d61696c2e636f6d223b73657373696f6e5f69647c733a33323a226974746c387630376e7569673174766273746f6162716863693832736f677466223b6c6f676765645f696e7c623a313b),
('u9bp1g7dn1r83krv3knf3o8v5juf6fu8', '::1', 1596732222, 0x5f5f63695f6c6173745f726567656e65726174657c693a313539363733323232323b69647c733a313a2238223b6e616d657c733a31333a2247617574616d206b756d617220223b70656e5f6e616d657c733a363a226b756d617220223b757365725f747970657c733a313a2234223b656d61696c7c733a31353a2261646d696e40676d61696c2e636f6d223b73657373696f6e5f69647c733a33323a226974746c387630376e7569673174766273746f6162716863693832736f677466223b6c6f676765645f696e7c623a313b),
('1927rd3o2n0cbn3ea4ct4evdeuopn4pk', '::1', 1596732553, 0x5f5f63695f6c6173745f726567656e65726174657c693a313539363733323535333b69647c733a313a2238223b6e616d657c733a31333a2247617574616d206b756d617220223b70656e5f6e616d657c733a363a226b756d617220223b757365725f747970657c733a313a2234223b656d61696c7c733a31353a2261646d696e40676d61696c2e636f6d223b73657373696f6e5f69647c733a33323a226974746c387630376e7569673174766273746f6162716863693832736f677466223b6c6f676765645f696e7c623a313b),
('sg12d4rkcack4qcvtfqr2ea1qaot4sna', '::1', 1596732594, 0x5f5f63695f6c6173745f726567656e65726174657c693a313539363733323535333b69647c733a313a2238223b6e616d657c733a31333a2247617574616d206b756d617220223b70656e5f6e616d657c733a363a226b756d617220223b757365725f747970657c733a313a2234223b656d61696c7c733a31353a2261646d696e40676d61696c2e636f6d223b73657373696f6e5f69647c733a33323a226974746c387630376e7569673174766273746f6162716863693832736f677466223b6c6f676765645f696e7c623a313b),
('75oef9ejpks033q0s3gt2uof6jddjhup', '::1', 1596772200, 0x5f5f63695f6c6173745f726567656e65726174657c693a313539363737323230303b69647c733a313a2238223b6e616d657c733a31333a2247617574616d206b756d617220223b70656e5f6e616d657c733a363a226b756d617220223b757365725f747970657c733a313a2234223b656d61696c7c733a31353a2261646d696e40676d61696c2e636f6d223b73657373696f6e5f69647c733a33323a2237356f656639656a706b7330333371307333677432756f66366a64646a687570223b6c6f676765645f696e7c623a313b),
('idlia602p8bvc388s0i70hu3f90rs6nm', '::1', 1596772205, 0x5f5f63695f6c6173745f726567656e65726174657c693a313539363737323230303b69647c733a313a2238223b6e616d657c733a31333a2247617574616d206b756d617220223b70656e5f6e616d657c733a363a226b756d617220223b757365725f747970657c733a313a2234223b656d61696c7c733a31353a2261646d696e40676d61696c2e636f6d223b73657373696f6e5f69647c733a33323a2237356f656639656a706b7330333371307333677432756f66366a64646a687570223b6c6f676765645f696e7c623a313b);

-- --------------------------------------------------------

--
-- Table structure for table `comments_info`
--

CREATE TABLE `comments_info` (
  `com_id` int(11) NOT NULL,
  `comments` text NOT NULL,
  `com_rating` int(11) DEFAULT NULL,
  `news_id` varchar(255) NOT NULL,
  `com_user_id` int(11) NOT NULL,
  `com_replay_id` int(11) NOT NULL,
  `com_date_time` varchar(50) NOT NULL,
  `com_type` int(11) DEFAULT NULL,
  `com_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `email_config`
--

CREATE TABLE `email_config` (
  `id` int(11) NOT NULL,
  `smtp_protocol` varchar(200) DEFAULT NULL,
  `smtp_host` varchar(200) DEFAULT NULL,
  `smtp_port` int(11) DEFAULT NULL,
  `smtp_username` varchar(200) DEFAULT NULL,
  `smtp_password` varchar(200) DEFAULT NULL,
  `smtp_mailtype` varchar(200) DEFAULT NULL,
  `smtp_charset` varchar(200) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `email_config`
--

INSERT INTO `email_config` (`id`, `smtp_protocol`, `smtp_host`, `smtp_port`, `smtp_username`, `smtp_password`, `smtp_mailtype`, `smtp_charset`, `status`) VALUES
(1, 'smtp', 'ssl://smtp.googleemail.com', 82, 'gautamkk2898@gmail.com', 'kumar@123', 'html', 'utf-8', 1);

-- --------------------------------------------------------

--
-- Table structure for table `language`
--

CREATE TABLE `language` (
  `id` int(11) UNSIGNED NOT NULL,
  `phrase` text NOT NULL,
  `english` text DEFAULT NULL,
  `bangla` text DEFAULT NULL,
  `spanish` text DEFAULT NULL,
  `hindi` text DEFAULT NULL,
  `chinese` text DEFAULT NULL,
  `urdu` text DEFAULT NULL,
  `arabic` text DEFAULT NULL,
  `jharkhandi` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `language`
--

INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`, `spanish`, `hindi`, `chinese`, `urdu`, `arabic`, `jharkhandi`) VALUES
(1, 'test', 'Test', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'postposition', 'Post Position', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'photovideos', 'Photo/Videos', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'optional', 'Optional', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'slider', 'Slider', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 'category', 'Category', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 'position', 'Position', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 'photo', 'Photo', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 'photo_name', 'Photo Name', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 'ref', 'Ref', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 'video_url', 'Video Url', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 'reporter', 'Reporter', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, 'date', 'Date', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14, 'library', 'Library', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, 'news_title', 'News Title', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(16, 'short_head', 'Short Head', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17, 'head_line', 'Head Line', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(18, 'details', 'Details', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(19, 'keyword_and_description_area', 'Keyword and description area', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(20, 'keyword', 'Keyword', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(21, 'description', 'Description', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(22, 'dynamic_post', 'Dynamic Post', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23, 'static_post', 'Static Post', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24, 'latest_news', 'Latest news', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(25, 'breaking_news', 'Breaking News', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(26, 'status', 'Status', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(27, 'reset', 'Reset', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(28, 'post', 'Post', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(29, 'update', 'Update', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(30, 'form_date', 'Form Date', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(31, 'to_date', 'To Date', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32, 'search', 'Search', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(33, 'hit', 'Hit', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(34, 'title', 'Title', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(35, 'news_id', 'News Id', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(36, 'time', 'Time', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(37, 'action', 'Action', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(38, 'update_by', 'Update By', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(39, 'post_by', 'Post By', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40, 'publish', 'Release ', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(41, 'unpublish', 'Unpublish', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(42, 'positioning_settings', 'Positioning Settings ', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(43, 'home', 'HOME', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(44, 'picture_url', 'Picture Url', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(45, 'insert_breaking_news', 'Insert Brecking News', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(46, 'breaking_news_list', 'Breaking News List', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(47, 'post_time', 'Post Time', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(48, 'save', 'Save', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(49, 'edit', 'Edit', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(50, 'off', 'Off', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(51, 'on', 'One', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(52, 'entry_question', 'Entry Question', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(53, 'question', 'Question', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(54, 'question_list', 'Question List', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(55, 'yes', 'Yes', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(56, 'no', 'NO', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(57, 'nc', 'NC', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(58, 'submit_new_ads', 'Submit New Ads', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(59, 'page', 'Page', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(60, 'ad_type', 'Ads Type', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(61, 'ad_position', 'Ads Position', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(62, 'ad_list', 'Ads List', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(63, 'url', 'Url', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(64, 'image', 'Image', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(65, 'embed_code', 'Embaded Code', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(66, 'update_ad', 'Update Ads', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(67, 'back', 'Back', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(68, 'maximum_archive_settings', 'Maximum archive settings', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(69, 'maximum_news', 'Maximum News', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(70, 'available_for_archive', 'Available for archive', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(71, 'archive', 'Archive', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(72, 'archive_news', 'Archive News', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(73, 'start_archive', 'Start Archive', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(74, 'close', 'Close', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(75, 'category_name', 'Category Name', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(76, 'slug', 'Slug', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(77, 'in_menu', 'In Menu', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(78, 'category_image', 'Category Image', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(79, 'all_category', 'All Category', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(80, 'add_category', 'Add Category', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(81, 'page_slug', 'Page Slug', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(82, 'related_id', 'Related Id', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(83, 'menu', 'Menu', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(84, 'add_menu', 'Add Menu', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(85, 'menu_position', 'Menu Position', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(86, 'menu_name', 'Menu Name', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(87, 'setup', 'Setup', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(88, 'reload', 'Reload', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(89, 'edit_menu', 'Edit Menu', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(90, 'link', 'Link', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(91, 'addnewlink', 'Add New Link', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(92, 'add_page', 'Add Page', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(93, 'parents', 'Parents', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(94, 'menu_level', 'Menu Level', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(95, 'full_name', 'Full Name', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(96, 'create', 'Create', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(97, 'mobile', 'Mobile', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(98, 'password', 'Password', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(99, 'registration', 'Registration', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(100, 'address', 'Address', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(101, 'post_approval_status', 'Post approval status', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(102, 'in_out_time', 'In/out time', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(103, 'user_list', 'User List', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(104, 'email', 'E-mail', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(105, 'picture', 'Picture', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(106, 'user_profile', 'User Profile', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(107, 'profile', 'Profile', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(108, 'new_password', 'New Password', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(109, 'home_page_view_setup', 'Home Page View Setup', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(110, 'max_news', 'Max News', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(111, 'position_id', 'Position No', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(112, 'add_position', 'Add Position', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(113, 'content', 'Content', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(114, 'phone_two', 'Phone Two', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(115, 'phone', 'Phone', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(116, 'website', 'Websit', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(117, 'google_map', 'Google Map', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(118, 'contact_page_setting', 'Contact Page Setting', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(119, 'most_read', 'Most Read', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(120, 'whole_country', 'Whole Country', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(121, 'headline', 'Headline', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(122, 'such_more_news', 'Such More News', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(123, 'language_settings', 'Language Settings', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(124, 'website_title', 'Website Title', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(125, 'website_footer', 'Website Footer', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(126, 'copy_right', 'Copy Right', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(127, 'website_logo', 'Website Logo', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(128, 'logo', 'Logo', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(129, 'footer_logo', 'Footer Logo', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(130, 'website_favicon', 'Website Favicon', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(131, 'favicon', 'Favicon', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(132, 'website_time_zone', 'Website Time Zone', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(133, 'google_analytics_setting', 'Google Analytics Setting', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(134, 'google_analytics_code', 'Google Analytics Code', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(135, 'facebook_url', 'Facebook URL', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(136, 'show_on', 'Show On', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(137, 'twitter_url', 'Twitter URL', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(138, 'google_plus', 'Google Plus', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(139, 'linkedin', 'Linkedin', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(140, 'social_site_link', 'Social Site Link', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(141, 'facebook', 'Facebook', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(142, 'twitter', 'Twitter', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(143, 'google', 'Google+', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(144, 'pinterest', 'Pinterest', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(145, 'vimeo', 'Vimemo', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(146, 'youtube', 'Youtube', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(147, 'flickr', 'Flicker', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(148, 'vk', 'VK', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(149, 'comment_settings', 'Comment Settings', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(150, 'comment_code', 'Comment Code', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(151, 'fixed_keyword_settings', 'Fixed Keyword Settings', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(152, 'fixed_keyword_comm_separated', 'Fixed Keyword', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(153, 'alexa_settings', 'Alexa Settings', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(154, 'alexa_code', 'Alexa Code', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(155, 'social_site_settings', 'Social Site Settings', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(156, 'upload_new_theme', 'Upload New Theme', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(157, 'theme_name', 'Theme name', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(158, 'upload', 'Upload', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(159, 'active', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(160, 'cache_setting', 'Cache Setting', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(161, 'delete_cache_file', 'Delete Cache File', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(162, 'cache_on', 'Cache On', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(163, 'cache_off', 'Cache Off', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(164, 'delete_message', 'Delete Successfully.', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(165, 'update_message', 'Update Successfully.', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(166, 'add_post', 'Add Post', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(167, 'news_list', 'News List', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(168, 'positioning', 'Positioning', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(169, 'media_library', 'Media Library', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(170, 'add_picture', 'Add Picture', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(171, 'picture_list', 'Picture List', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(172, 'other_post', 'Other Post', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(173, 'polling', 'Polling', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(174, 'advertise_settings', 'Advertise Settings', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(175, 'new_advertise', 'New Advertise', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(176, 'update_advertise', 'Update Advertise', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(177, 'archive_setting', 'Archive Setting', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(178, 'category_list', 'Category List', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(179, 'add_new_page', 'Add New Page', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(180, 'page_list', 'Page List', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(181, 'user', 'User', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(182, 'last_20_access', 'Last 20 Access', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(183, 'reporter_news_list', 'Reporter news List', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(184, 'seo', 'SEO', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(185, 'googleanalytics', 'Google Analytics', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(186, 'social_site', 'Social_site', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(187, 'social_sites', 'Social Site', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(188, 'comments', 'Comments', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(189, 'fixed_keyword', 'Fixed keyword', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(190, 'alexa', 'Alexa', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(191, 'settings', 'Settings', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(192, 'home_page', 'Home Page', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(193, 'category_page_setup', 'Category Page Setup', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(194, 'website_timezone', 'Website Timezone', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(195, 'theme', 'Theme', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(196, 'theme_activation', 'Theme Activation', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(197, 'cache_system', 'Cache System', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(198, 'nick_name', 'Nick Name', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(199, 'sex', 'Sex', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(200, 'blood', 'Blood', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(201, 'birth_date', 'Birth Date', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(202, 'address_line_one', 'Address Line One', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(203, 'address_line_two', 'Address Line Two', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(204, 'city', 'City', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(205, 'country', 'Country', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(206, 'zip', 'Zip', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(207, 'verification_document_id', 'Verification Document Id', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(208, 'verification_type', 'Verification Type', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(209, 'login_time', 'Login Time', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(210, 'logout_time', 'Logout Time', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(211, 'ip_address', 'Ip Address', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(212, 'password_change', 'Password Change', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(213, 'confirm_password', 'Confirm Password', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(214, 'state', 'State', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(215, 'signout', 'Sign Out', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(216, 'clear_log', 'Clear Log', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(217, 'user_agent', 'User Agent', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(218, 'last_activity', 'Last Activity', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(219, 'user_reagistration_message', 'User Registration successfully', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(220, 'error_message', 'Error Message', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(221, 'ad_save_message', 'Ad Save Successfully.', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(222, 'ad_exist_msg', 'Ad Already Exist, if you want please update.', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(223, 'url_requerd', 'Please select image and URL.', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(224, 'max_archive_save_msg', 'Maximum Archive Settings has been updated successfully', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(225, 'cache_on_msg', 'Cache On Successfully', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(226, 'cache_off_msg', 'Cache Off Successfully', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(227, 'category_exist_msg', 'Category already exist', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(228, 'category_save_msg', 'Category Saved Successfully', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(229, 'breaking_add_msg', 'Breaking news inserted successfully', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(230, 'log_error_msg', 'Email or Password is invalid.', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(231, 'menu_save_msg', 'Add successfull.', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(232, 'news_post_msg', 'News successfully posted.', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(233, 'page_add_msg', 'Page Create successfully.', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(234, 'setting_message', 'Settings Saved Successfully', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(235, 'social_pixel', 'SOCIAL PIXEL', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(236, 'online_vot', 'ONLINE VOTE', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(237, 'search_artical', 'Search articles here ...', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(238, 'contact', 'CONTACT', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(239, 'send', 'Send', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(240, 'subject', 'Subject', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(241, 'message', 'Message', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(242, 'first_name', 'First Name', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(243, 'last_name', 'Last Name', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(244, 'send_us', 'Send Us A Message', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(245, 'contact_message', 'Your mail has been sent successfully!', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(246, 'login_and_registration', 'REGISTRATION', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(247, 'login_to_your_account', 'LOGIN TO YOUR ACCOUNT', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(248, 'login_with_facebook', 'Login With Facebook', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(249, 'login_with_google', 'Login With Google', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(250, 'remember_me', 'Remember me', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(251, 'forget_username_password', 'Forget username/password', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(252, 'login', 'Login', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(253, 'no_comment', 'On Comment', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(254, 'submit', 'Submit', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(255, 'result', 'Result', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(256, 'vot_save_msg', 'Thank you for your Vot.', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(257, 'vot_exist_msg', 'You already get this vot', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(258, 'click_to_dashbord', 'Click to Dashbord', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(259, 'video_striming', 'Streaming Videos', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(260, 'get_in_touch', 'Get In Touch', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(261, 'access_category', 'Access category', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(262, 'male', 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(263, 'female', 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(264, 'post_date', 'Post date', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(265, 'publish_date', 'Release Date', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(266, 'sl', 'SL', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(267, 'approved', 'Approved', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(268, 'pending', 'Pending', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(269, 'comment_list', 'Comment List', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(270, 'analytics', 'Analytics', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(271, 'subscribers', 'Subscribers', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(272, 'general_user', 'General User', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(273, 'email_configaretion', 'Email Configuration', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(274, 'view_email_config', 'View Email config', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(275, 'social_authentication', 'Social Authentication', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(276, 'live_now', 'Live Now', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(277, 'location_based', 'Location Based', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(278, 'news_based', 'News Based', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(279, 'clear_analytics', 'Clear_analytics', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(280, 'in_time', 'In Time', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(281, 'admin', 'Admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(282, 'writer', 'Writer', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(283, 'moderator', 'Moderator', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(284, 'last_update', 'Last Update', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(285, 'app_id', 'App id', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(286, 'api_key', 'Api Key', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(287, 'app_secret', 'App Secret', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(288, 'subscribers_list', 'Subscription', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(289, 'name', 'Name', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(290, 'select', 'Select', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(291, 'desktop_tablet', 'Desktop tablet', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(292, 'disable_analytics', 'Disable Analytics', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(293, 'anable_analytics', 'Enable  Analytics', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(294, 'smtp_protocol', 'Smtp Protocol', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(295, 'smtp_host', 'Smtp Host', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(296, 'smtp_port', 'Smtp Prot', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(297, 'smtp_username', 'Smtp Username', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(298, 'smtp_password', 'Smtp Password', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(299, 'smtp_mailtype', 'Smtp Mailtype', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(300, 'smtp_charset', 'Smtp Charset', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(301, 'new_buddy', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `lg_setting`
--

CREATE TABLE `lg_setting` (
  `id` int(11) NOT NULL,
  `language` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `lg_setting`
--

INSERT INTO `lg_setting` (`id`, `language`) VALUES
(1, 'english');

-- --------------------------------------------------------

--
-- Table structure for table `links`
--

CREATE TABLE `links` (
  `link_id` int(11) NOT NULL,
  `link_level` text NOT NULL,
  `link_url` varchar(120) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `links`
--

INSERT INTO `links` (`link_id`, `link_level`, `link_url`, `status`) VALUES
(1, 'LINK', '', 1),
(2, 'FACEBOOK.COM', 'http://facebook.com/', 1),
(3, 'GOOGLEPLUS.COM', 'https://plus.google.com/', 1),
(4, 'RSS FEED', 'http://demonewspaper.bdtask.com/DemoNewsPaper-v1.5/rss.xml', 1);

-- --------------------------------------------------------

--
-- Table structure for table `max_archive_settings`
--

CREATE TABLE `max_archive_settings` (
  `category_id` int(11) NOT NULL,
  `max_archive` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `max_archive_settings`
--

INSERT INTO `max_archive_settings` (`category_id`, `max_archive`) VALUES
(1, 0),
(2, 0),
(3, 0);

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `menu_id` int(11) NOT NULL,
  `menu_name` text DEFAULT NULL,
  `menu_position` int(11) DEFAULT NULL,
  `menu_style` text DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`menu_id`, `menu_name`, `menu_position`, `menu_style`, `status`) VALUES
(1, 'Main Menu', 1, NULL, 0),
(2, 'Categories ', 2, NULL, 0),
(3, 'Footer Menu', 3, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `menu_content`
--

CREATE TABLE `menu_content` (
  `menu_content_id` int(11) NOT NULL,
  `content_type` text DEFAULT NULL,
  `content_id` int(11) DEFAULT NULL,
  `menu_position` int(11) DEFAULT NULL,
  `menu_lavel` varchar(222) DEFAULT NULL,
  `link_url` varchar(250) DEFAULT NULL,
  `slug` text DEFAULT NULL,
  `parents_id` int(11) DEFAULT NULL,
  `menu_id` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `menu_content`
--

INSERT INTO `menu_content` (`menu_content_id`, `content_type`, `content_id`, `menu_position`, `menu_lavel`, `link_url`, `slug`, `parents_id`, `menu_id`, `status`) VALUES
(1, 'categories', 1, NULL, 'NATIONAL', NULL, 'New-National', NULL, 3, 1),
(2, 'categories', 2, NULL, 'SPORT', NULL, 'sport-news', NULL, 3, 1),
(3, 'categories', 1, NULL, 'NATIONAL', NULL, 'New-National', NULL, 1, 1),
(4, 'categories', 2, NULL, 'SPORT', NULL, 'sport-news', NULL, 1, 1),
(5, 'categories', 3, NULL, 'INTERNATIONAL', NULL, 'inter-national', NULL, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `news_archive`
--

CREATE TABLE `news_archive` (
  `id` int(9) NOT NULL,
  `news_id` int(11) NOT NULL,
  `stitle` varchar(100) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `news` text NOT NULL,
  `image` varchar(56) DEFAULT NULL,
  `videos` varchar(255) DEFAULT NULL,
  `reporter` varchar(56) DEFAULT NULL,
  `page` varchar(56) DEFAULT NULL,
  `reference` varchar(100) DEFAULT NULL,
  `ref_date` varchar(56) DEFAULT NULL,
  `post_by` varchar(56) DEFAULT NULL,
  `update_by` varchar(56) DEFAULT NULL,
  `time_stamp` int(15) DEFAULT NULL,
  `post_date` varchar(20) DEFAULT NULL,
  `is_latest` int(2) DEFAULT NULL,
  `reader_hit` int(5) DEFAULT NULL,
  `status` tinyint(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `news_mst`
--

CREATE TABLE `news_mst` (
  `id` int(9) NOT NULL,
  `news_id` int(11) NOT NULL,
  `stitle` varchar(100) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `news` longtext NOT NULL,
  `image` varchar(56) DEFAULT NULL,
  `videos` varchar(255) DEFAULT NULL,
  `reporter` varchar(56) DEFAULT NULL,
  `page` varchar(255) DEFAULT NULL,
  `reference` varchar(100) DEFAULT NULL,
  `ref_date` varchar(56) DEFAULT NULL,
  `post_by` varchar(56) DEFAULT NULL,
  `update_by` varchar(56) DEFAULT NULL,
  `time_stamp` int(15) DEFAULT NULL,
  `post_date` date DEFAULT NULL,
  `publish_date` date DEFAULT NULL,
  `last_update` datetime NOT NULL,
  `is_latest` int(2) DEFAULT NULL,
  `reader_hit` int(5) DEFAULT NULL,
  `status` tinyint(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `news_mst`
--

INSERT INTO `news_mst` (`id`, `news_id`, `stitle`, `title`, `news`, `image`, `videos`, `reporter`, `page`, `reference`, `ref_date`, `post_by`, `update_by`, `time_stamp`, `post_date`, `publish_date`, `last_update`, `is_latest`, `reader_hit`, `status`) VALUES
(1, 2, 'New news ', 'Lebanon के Beirut में ब्लास्ट, अबतक 150 की मौत, 4000 से ज्यादा घायल', '<h1>Lebanon के Beirut में ब्लास्ट, अबतक 150 की मौत, 4000 से ज्यादा घायलLebanon के Beirut में ब्लास्ट, अबतक 150 की मौत, 4000 से ज्यादा घायलLebanon के Beirut में ब्लास्ट, अबतक 150 की मौत, 4000 से ज्यादा घायलLebanon के Beirut में ब्लास्ट, अबतक 150 की मौत, 4000 से ज्यादा घायलLebanon के Beirut में ब्लास्ट, अबतक 150 की मौत, 4000 से ज्यादा घायल</h1>\r\n', '1596730621.jpg', '5qCksHPylkI', 'kumar G', 'New-National', '83478394', '07-08-2020', '8', '0', 1596736800, '2020-08-06', '2020-08-07', '0000-00-00 00:00:00', 1, 5, 0),
(2, 3, 'New news ', 'Lebanon के Beirut में ब्लास्ट, अबतक 150 की मौत, 4000 से ज्यादा घायल', '<h1>Lebanon के Beirut में ब्लास्ट, अबतक 150 की मौत, 4000 से ज्यादा घायलLebanon के Beirut में ब्लास्ट, अबतक 150 की मौत, 4000 से ज्यादा घायलLebanon के Beirut में ब्लास्ट, अबतक 150 की मौत, 4000 से ज्यादा घायलLebanon के Beirut में ब्लास्ट, अबतक 150 की मौत, 4000 से ज्यादा घायलLebanon के Beirut में ब्लास्ट, अबतक 150 की मौत, 4000 से ज्यादा घायल</h1>\r\n', '1596731019.jpg', '5qCksHPylkI', 'kumar G', 'New-National', '83478394', '07-08-2020', '8', '0', 1596736800, '2020-08-06', '2020-08-07', '0000-00-00 00:00:00', 1, 2, 0),
(3, 4, 'New news ', 'Lebanon के Beirut में ब्लास्ट, अबतक 150 की मौत, 4000 से ज्यादा घायल', '<h1>Lebanon के Beirut में ब्लास्ट, अबतक 150 की मौत, 4000 से ज्यादा घायलLebanon के Beirut में ब्लास्ट, अबतक 150 की मौत, 4000 से ज्यादा घायलLebanon के Beirut में ब्लास्ट, अबतक 150 की मौत, 4000 से ज्यादा घायलLebanon के Beirut में ब्लास्ट, अबतक 150 की मौत, 4000 से ज्यादा घायलLebanon के Beirut में ब्लास्ट, अबतक 150 की मौत, 4000 से ज्यादा घायल</h1>\r\n', '1596732284.jpg', '5qCksHPylkI', 'kumar G', 'sport-news', '83478394', '07-08-2020', '8', '0', 1596736800, '2020-08-06', '2020-08-07', '0000-00-00 00:00:00', 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `news_position`
--

CREATE TABLE `news_position` (
  `id` int(9) NOT NULL,
  `news_id` int(11) NOT NULL,
  `page` varchar(25) DEFAULT NULL,
  `position` int(2) DEFAULT NULL,
  `status` int(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `news_position`
--

INSERT INTO `news_position` (`id`, `news_id`, `page`, `position`, `status`) VALUES
(27, 3, 'home', 1, 0),
(29, 2, 'New-National', 3, 1),
(30, 3, 'New-National', 1, 1),
(31, 2, 'home', 5, 1),
(32, 4, 'home', 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `news_routing`
--

CREATE TABLE `news_routing` (
  `news_id` varchar(50) NOT NULL DEFAULT '',
  `table_name` text DEFAULT NULL,
  `routing_id` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `page_id` int(11) NOT NULL,
  `title` text DEFAULT NULL,
  `page_slug` text DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `image_id` varchar(100) DEFAULT NULL,
  `galary_id` int(11) DEFAULT NULL,
  `video_url` varchar(100) DEFAULT NULL,
  `publishar_id` int(11) DEFAULT NULL,
  `seo_keyword` text DEFAULT NULL,
  `seo_description` text DEFAULT NULL,
  `publish_date` datetime DEFAULT NULL,
  `reader_view` int(11) DEFAULT NULL,
  `releted_id` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`page_id`, `title`, `page_slug`, `description`, `image_id`, `galary_id`, `video_url`, `publishar_id`, `seo_keyword`, `seo_description`, `publish_date`, `reader_view`, `releted_id`, `status`) VALUES
(1, 'New Movies Realesed ', 'New-Movies', '<p> </p>\r\n\r\n<p>When words fail, let the eyes do the talking. Official video song ‘Naino Ne Baandhi’ from the movie Gold, a heart touching melody that will pluck the strings of your heart in the voice of the melodious Arko and Yasser Desai</p>\r\n', './uploads/page_img/news_l.jpg', NULL, 'MFNUFKzdZU4', 8, 'New Movies,New Realesed Movies', 'New Movies Realesed', '2020-08-06 06:08:16', NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `photo_library`
--

CREATE TABLE `photo_library` (
  `id` int(9) NOT NULL,
  `actual_image_name` varchar(35) NOT NULL,
  `picture_name` varchar(35) DEFAULT NULL,
  `title` varchar(256) DEFAULT NULL,
  `category` int(2) DEFAULT NULL,
  `time_stamp` int(15) DEFAULT NULL,
  `status` tinyint(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `photo_library`
--

INSERT INTO `photo_library` (`id`, `actual_image_name`, `picture_name`, `title`, `category`, `time_stamp`, `status`) VALUES
(1, '1596708037.jpg', 'Hub Root Solution', NULL, NULL, 2020, NULL),
(2, '1596708117.jpg', 'Hub Root Solution', NULL, NULL, 2020, NULL),
(3, '1596708220.jpg', 'Hub Root Solution', NULL, NULL, 2020, NULL),
(4, '1596708739.jpg', 'Politics New', NULL, NULL, 2020, NULL),
(5, '1596729464.jpg', 'Lorban Sodium', NULL, NULL, 2020, NULL),
(6, '1596730621.jpg', 'VIral Video', NULL, NULL, 2020, NULL),
(7, '1596731019.jpg', 'VIral Video', NULL, NULL, 2020, NULL),
(8, '1596732284.jpg', 'VIral Video', NULL, NULL, 2020, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `post_seo_onpage`
--

CREATE TABLE `post_seo_onpage` (
  `id` int(11) NOT NULL,
  `news_id` int(11) NOT NULL,
  `meta_keyword` text NOT NULL,
  `meta_description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `post_seo_onpage`
--

INSERT INTO `post_seo_onpage` (`id`, `news_id`, `meta_keyword`, `meta_description`) VALUES
(1, 4, 'demo,testing,drvice', 'Lebanon के Beirut में ब्लास्ट, अबतक 150 की मौत, 4000 से ज्यादा घायल');

-- --------------------------------------------------------

--
-- Table structure for table `pulling`
--

CREATE TABLE `pulling` (
  `id` int(9) NOT NULL,
  `question` varchar(255) DEFAULT NULL,
  `yes` int(5) DEFAULT NULL,
  `no` int(5) DEFAULT NULL,
  `on_comment` int(5) DEFAULT NULL,
  `time_stamp` int(15) DEFAULT NULL,
  `status` tinyint(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `reporter_post_news_info`
--

CREATE TABLE `reporter_post_news_info` (
  `id` int(9) NOT NULL,
  `news_id` int(11) DEFAULT NULL,
  `page` varchar(35) DEFAULT NULL,
  `page_position` int(11) NOT NULL,
  `home_position` int(11) NOT NULL DEFAULT -1,
  `reporter_id` varchar(35) DEFAULT NULL,
  `time_stamp` int(15) DEFAULT NULL,
  `status` tinyint(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `event` text NOT NULL,
  `details` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `event`, `details`) VALUES
(3, 'lang_settings', '{\"latest_news\":\"LATEST NEWS\",\"most_read\":\"MOST POPULAR\",\"whole_country\":\"Whole Country\",\"headline\":\"Headline\",\"home\":\"HOME\",\"such_more_news\":\"Related News\",\"details\":\"Read More\"}'),
(4, 'home_page_cat_style', '{\"1\":{\"cat_name\":\"TECHNOLOGY\",\"slug\":\"Technology\",\"max_news\":\"5\",\"category_id\":\"4\",\"status\":\"1\"},\"2\":{\"cat_name\":\"POLITICS\",\"slug\":\"Politics\",\"max_news\":\"5\",\"category_id\":\"8\",\"status\":\"1\"},\"3\":{\"cat_name\":\"VIDEO\",\"slug\":\"Video\",\"max_news\":\"5\",\"category_id\":\"7\",\"status\":\"1\"},\"4\":{\"cat_name\":\"International\",\"slug\":\"International\",\"max_news\":\"5\",\"category_id\":\"16\",\"status\":\"1\"},\"5\":{\"cat_name\":\"HEALTH\",\"slug\":\"Health\",\"max_news\":\"5\",\"category_id\":\"14\",\"status\":\"1\"},\"6\":{\"cat_name\":\"LIFESTYLE\",\"slug\":\"Lifestyle\",\"max_news\":\"5\",\"category_id\":\"5\",\"status\":\"1\"},\"7\":{\"cat_name\":\"TRAVEL\",\"slug\":\"Travel\",\"max_news\":\"5\",\"category_id\":\"2\",\"status\":\"1\"},\"8\":{\"cat_name\":\"SPORTS\",\"slug\":\"Sports\",\"max_news\":\"5\",\"category_id\":\"13\",\"status\":\"1\"},\"9\":{\"cat_name\":\"WORLD\",\"slug\":\"world\",\"max_news\":\"5\",\"category_id\":\"10\",\"status\":\"1\"},\"10\":{\"cat_name\":\"POLITICS\",\"slug\":\"Politics\",\"max_news\":\"5\",\"category_id\":\"8\",\"status\":\"1\"},\"11\":{\"cat_name\":\"EDITOR CHOICE\",\"slug\":\"Editor-Choice\",\"max_news\":\"5\",\"category_id\":\"6\",\"status\":\"1\"},\"12\":{\"cat_name\":\"SCIENCE\",\"slug\":\"science\",\"max_news\":\"5\",\"category_id\":\"11\",\"status\":\"1\"},\"14\":{\"cat_name\":\"BUSINESS\",\"slug\":\"Business\",\"max_news\":\"5\",\"category_id\":\"12\",\"status\":\"1\"},\"15\":{\"cat_name\":\"FOOD\",\"slug\":\"Food\",\"max_news\":\"5\",\"category_id\":\"3\",\"status\":\"1\"},\"13\":{\"cat_name\":\"POLITICS\",\"slug\":\"Politics\",\"max_news\":\"5\",\"category_id\":\"8\",\"status\":\"1\"},\"21\":{\"cat_name\":\"Hubroot Testing\",\"slug\":\"Hubroot-Testing\",\"max_news\":\"12\",\"category_id\":\"18\",\"status\":\"1\"}}'),
(5, 'analytics_code', ''),
(6, 'social_sites', '{\"fb\":{\"URL\":\"                                                                                                                                                                                                                                                                                                                                                                <div class=\\\"fb-page\\\" data-href=\\\"https:\\/\\/www.facebook.com\\/bdtaskteam\\/?ref=br_rs\\\" data-tabs=\\\"timeline\\\" data-height=\\\"300\\\" data-small-header=\\\"false\\\" data-adapt-container-width=\\\"true\\\" data-hide-cover=\\\"false\\\" data-show-facepile=\\\"true\\\"><blockquote cite=\\\"https:\\/\\/www.facebook.com\\/bdtaskteam\\/?ref=br_rs\\\" class=\\\"fb-xfbml-parse-ignore\\\"><a href=\\\"https:\\/\\/www.facebook.com\\/bdtaskteam\\/?ref=br_rs\\\">Bdtask<\\/a><\\/blockquote><\\/div>                                                                                                                                                                                                                                                                                                                    \",\"h_p\":\"1\",\"c_p\":\"1\",\"d_p\":\"1\"},\"tw\":{\"URL\":\"                                                                                                                                                                                                                                                                                                                                                                  <a class=\\\"twitter-timeline\\\" data-height=\\\"280\\\" data-dnt=\\\"true\\\" href=\\\"https:\\/\\/twitter.com\\/TwitterDev\\\">Tweets by TwitterDev<\\/a> <script async src=\\\"\\/\\/platform.twitter.com\\/widgets.js\\\" charset=\\\"utf-8\\\"><\\/script>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  \",\"h_p\":\"1\",\"c_p\":\"1\",\"d_p\":\"1\"},\"gplus\":{\"URL\":\"                                                                                                                                                                                                                                                                                                            \",\"c_p\":\"1\",\"d_p\":\"1\"},\"ln\":{\"URL\":\"                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           \",\"h_p\":\"1\",\"c_p\":\"1\",\"d_p\":\"1\"}}'),
(7, 'comments_code', ''),
(8, 'user_analytics', '{\"user_analytics\":\"inactive\"}'),
(10, 'fixed_keyword', ''),
(11, 'alexa_code', ''),
(12, 'website_title', '{\"website_title\":\"Wittywhere \"}'),
(13, 'website_footer', '{\"website_footer\":\"24,sector 450 New Delhi ,Solution of New tech Trade\",\"copy_right\":\"<p><a href=\'https:\\/\\/hubroootsoltion\' class=\'color-1\'>Hubroot Solution<\\/a> | All right Reserved 2020<\\/p>\"}'),
(14, 'website_logo', '{\"website_logo\":\"uploads\\/images\\/logo.jpg\"}'),
(15, 'website_favicon', '{\"website_favicon\":\"uploads\\/images\\/favicon.jpg\"}'),
(16, 'default_theme', '{\"default_theme\":\"News365-Modern\"}'),
(17, 'website_timezone', '{\"website_timezone\":\"Asia\\/Dhaka\"}'),
(18, 'prayer_time', '{\"prayer_time\":\"\"}'),
(111, 'social_link', '{\"fb\":\"https:\\/\\/www.facebook.com\\/\",\"tw\":\"https:\\/\\/twitter.com\\/\",\"linkd\":\"https:\\/\\/plus.google.com\\/\",\"google\":\"https:\\/\\/plus.google.com\\/\",\"pin\":\"https:\\/\\/au.pinterest.com\\/\",\"vimo\":\"https:\\/\\/vimeo.com\\/\",\"youtube\":\"https:\\/\\/www.youtube.com\\/?gl=CO&hl=es-419\",\"flickr\":\"https:\\/\\/www.flickr.com\\/\",\"vk\":\"https:\\/\\/vk.com\\/\",\"save1\":\"Update\"}'),
(112, 'footer_logo', '{\"footer_logo\":\"uploads\\/images\\/footer_logo.jpg\"}'),
(113, 'contact_page_setup', '{\"content\":\"                        Hello New Reader ,How Are You        , I Already Mentoin The all Contect In This News Web App \\r\\n                       <br>Try To read All COntect\\r\\n                                                                                                                                                      \",\"address\":\"12,Sector 24 Bokaro  ,Jharkhand Ranchi\",\"phone\":\"+91 9631721114\",\"phone_two\":\"+91 9835902723\",\"email\":\"tester@gmail.com\",\"website\":\"www.hubrootsolutions.com\",\"googlemap\":\"                                                                                                                                                                                                                        <iframe src=\\\"https:\\/\\/www.google.com\\/maps\\/embed?pb=!1m23!1m12!1m3!1d58403.685586307096!2d90.377498600828!3d23.81040657382374!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!4m8!3e6!4m0!4m5!1s0x3755b8b087026b81%3A0x8fa563bbdd5904c2!2z4Kai4Ka-4KaV4Ka-!3m2!1d23.810332!2d90.4125181!5e0!3m2!1sbn!2sbd!4v1477485026665\\\" width=\\\"100%\\\" height=\\\"300\\\" frameborder=\\\"0\\\" style=\\\"border:0\\\" allowfullscreen><\\/iframe>                                                                                                                                                                                    \",\"save1\":\"Update\"}');

-- --------------------------------------------------------

--
-- Table structure for table `social_auth`
--

CREATE TABLE `social_auth` (
  `id` int(11) NOT NULL,
  `name` text DEFAULT NULL,
  `app_id` text DEFAULT NULL,
  `app_secret` text DEFAULT NULL,
  `api_key` text DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `social_auth`
--

INSERT INTO `social_auth` (`id`, `name`, `app_id`, `app_secret`, `api_key`, `status`) VALUES
(1, 'facebook', '493761004294417', 'f300ac96772fd89adbf417fbdb6ef77c', '', 1),
(2, 'googleplus', '39648987978-9pj8230slkn3qf50est5a2nsd0eictpj.apps.googleusercontent.com', 'M9J__-v3kbAZK6-UUw8oq8vh', 'AIzaSyCOUwQA-jnpUYAaQZFBbm2BpbqyUQPmEf0', 1);

-- --------------------------------------------------------

--
-- Table structure for table `subscription`
--

CREATE TABLE `subscription` (
  `subs_id` int(11) NOT NULL,
  `name` text DEFAULT NULL,
  `email` varchar(111) DEFAULT NULL,
  `phone` varchar(111) DEFAULT NULL,
  `category` text DEFAULT NULL,
  `frequency` int(11) DEFAULT NULL,
  `number_of_news` varchar(111) DEFAULT NULL,
  `subs_auth_code` int(11) NOT NULL,
  `payment_status` int(11) DEFAULT 1,
  `social_sheare` int(11) DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `temp_news`
--

CREATE TABLE `temp_news` (
  `id` int(9) UNSIGNED NOT NULL,
  `news_id` int(11) NOT NULL,
  `stitle` varchar(100) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `news` text NOT NULL,
  `image` varchar(56) DEFAULT NULL,
  `videos` varchar(255) DEFAULT NULL,
  `reporter` varchar(56) DEFAULT NULL,
  `page` varchar(56) DEFAULT NULL,
  `post_by` int(11) DEFAULT NULL,
  `update_by` int(11) DEFAULT NULL,
  `time_stamp` int(15) DEFAULT NULL,
  `post_date` varchar(20) DEFAULT NULL,
  `ip` varchar(15) DEFAULT NULL,
  `status` tinyint(2) DEFAULT NULL COMMENT '1=not published, 2=published'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `user_analiytics`
--

CREATE TABLE `user_analiytics` (
  `id` int(11) NOT NULL,
  `ip` varchar(200) DEFAULT NULL,
  `country` text DEFAULT NULL,
  `city` text DEFAULT NULL,
  `link` text DEFAULT NULL,
  `news_id` int(11) DEFAULT NULL,
  `date_time` datetime DEFAULT NULL,
  `browser` text DEFAULT NULL,
  `session` text DEFAULT NULL,
  `device` varchar(250) DEFAULT NULL,
  `keywords` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `user_info`
--

CREATE TABLE `user_info` (
  `id` int(9) UNSIGNED NOT NULL,
  `email` varchar(35) NOT NULL,
  `mobile` varchar(35) DEFAULT NULL,
  `transaction` varchar(35) NOT NULL,
  `password` varchar(32) DEFAULT NULL,
  `name` varchar(35) DEFAULT NULL,
  `pen_name` varchar(35) DEFAULT NULL,
  `sex` varchar(5) DEFAULT NULL,
  `blood` varchar(20) DEFAULT NULL,
  `birth_date` varchar(100) DEFAULT NULL,
  `photo` varchar(300) DEFAULT NULL,
  `address_one` text DEFAULT NULL,
  `address_two` text DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `zip` varchar(100) DEFAULT NULL,
  `verification_id_no` varchar(100) DEFAULT NULL,
  `verification_type` varchar(100) DEFAULT NULL,
  `user_type` int(25) DEFAULT NULL,
  `login_time` int(25) DEFAULT NULL,
  `logout_time` int(25) DEFAULT NULL,
  `ip` varchar(15) DEFAULT NULL,
  `status` tinyint(2) DEFAULT NULL,
  `post_ap_status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_info`
--

INSERT INTO `user_info` (`id`, `email`, `mobile`, `transaction`, `password`, `name`, `pen_name`, `sex`, `blood`, `birth_date`, `photo`, `address_one`, `address_two`, `city`, `state`, `country`, `zip`, `verification_id_no`, `verification_type`, `user_type`, `login_time`, `logout_time`, `ip`, `status`, `post_ap_status`) VALUES
(1, 'administrator@gmail.com', '01751194212', '12345678952', 'e10adc3949ba59abbe56e057f20f883e', 'Md Tuhin', 'Tuhin', 'male', 'O+', '13-11-2016', './uploads/user/Man.png', '98 Green Road', 'Farmgate', 'Dhaka', 'Dhaka', 'Bangladesh', '1215', 'Just write here your id if you want', '', 3, NULL, 1595838542, NULL, 1, 1),
(8, 'admin@gmail.com', '1234234234', '', 'e10adc3949ba59abbe56e057f20f883e', 'Gautam kumar ', 'kumar ', 'male', 'O+', '2020-08-02', './uploads/user/Man2.png', 'sector 2, New Delhi ,main road near Sujata Chowck', '', 'Ranchi', 'Jharkhand', 'India', '788832', 'nothing', 'Driver licence', 4, NULL, 1596647055, NULL, 1, 1),
(9, 'writer@gmail.com', '1242543453456', '', 'e10adc3949ba59abbe56e057f20f883e', 'Md Jahangir alom', NULL, NULL, NULL, NULL, './uploads/user/Man1.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, 1518634473, NULL, 1, 0),
(10, 'moderator@gmail.com', '123456234234', '', 'e10adc3949ba59abbe56e057f20f883e', 'Md Alamin', 'Alamin', NULL, '', '', './uploads/user/user2.png', '', '', '', '', '', '', '', '', 1, NULL, 1595838707, NULL, 1, 0),
(13, 'villageboy.cst@gmail.com', NULL, '', '7da2b629f3e5f74230234dc002791df1', 'পড়ন্ত বিকেল', 'পড়ন্ত বিকেল', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, NULL, 2018, NULL, 1, 0),
(15, 'sumon@gmail.com', NULL, '', 'e10adc3949ba59abbe56e057f20f883e', 'Sumon', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, NULL, 1518532102, NULL, 1, 0),
(16, 'ss@gmail.com', NULL, '', '827ccb0eea8a706c4c34a16891f84e7b', 'sss', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, NULL, NULL, NULL, 1, 0),
(17, 'aa@gmail.com', NULL, '', 'e10adc3949ba59abbe56e057f20f883e', 'aaa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, NULL, NULL, NULL, 1, 0),
(20, 'moderator1@gmail.com', '123456234234', '', 'e10adc3949ba59abbe56e057f20f883e', 'moderaton1', NULL, NULL, NULL, NULL, 'uploads/user/00d7495dc24a21d2e2a9c449f8fff7bd.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1518613391, NULL, 1, 0),
(21, 'tester@gmail.com', NULL, '', '202cb962ac59075b964b07152d234b70', 'MEtester', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, NULL, 1595840507, NULL, 1, 0),
(22, 'gautam@gmail.com', NULL, '', '202cb962ac59075b964b07152d234b70', 'Gautam Raj', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, NULL, NULL, NULL, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `video_url`
--

CREATE TABLE `video_url` (
  `url_id` int(11) NOT NULL,
  `video_name` varchar(200) NOT NULL,
  `video_slug` varchar(200) NOT NULL,
  `video_url` varchar(200) NOT NULL,
  `post_by` int(11) DEFAULT NULL,
  `status` tinyint(2) DEFAULT NULL,
  `update_by` int(11) DEFAULT NULL,
  `post_date` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ad_s`
--
ALTER TABLE `ad_s`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `breaking_news`
--
ALTER TABLE `breaking_news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `comments_info`
--
ALTER TABLE `comments_info`
  ADD PRIMARY KEY (`com_id`);

--
-- Indexes for table `email_config`
--
ALTER TABLE `email_config`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `language`
--
ALTER TABLE `language`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lg_setting`
--
ALTER TABLE `lg_setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `links`
--
ALTER TABLE `links`
  ADD PRIMARY KEY (`link_id`);

--
-- Indexes for table `max_archive_settings`
--
ALTER TABLE `max_archive_settings`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`menu_id`);

--
-- Indexes for table `menu_content`
--
ALTER TABLE `menu_content`
  ADD PRIMARY KEY (`menu_content_id`);

--
-- Indexes for table `news_archive`
--
ALTER TABLE `news_archive`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news_mst`
--
ALTER TABLE `news_mst`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news_position`
--
ALTER TABLE `news_position`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news_routing`
--
ALTER TABLE `news_routing`
  ADD PRIMARY KEY (`news_id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`page_id`);

--
-- Indexes for table `photo_library`
--
ALTER TABLE `photo_library`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_seo_onpage`
--
ALTER TABLE `post_seo_onpage`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pulling`
--
ALTER TABLE `pulling`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reporter_post_news_info`
--
ALTER TABLE `reporter_post_news_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_auth`
--
ALTER TABLE `social_auth`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscription`
--
ALTER TABLE `subscription`
  ADD PRIMARY KEY (`subs_id`);

--
-- Indexes for table `temp_news`
--
ALTER TABLE `temp_news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_analiytics`
--
ALTER TABLE `user_analiytics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_info`
--
ALTER TABLE `user_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `video_url`
--
ALTER TABLE `video_url`
  ADD PRIMARY KEY (`url_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ad_s`
--
ALTER TABLE `ad_s`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=134;

--
-- AUTO_INCREMENT for table `breaking_news`
--
ALTER TABLE `breaking_news`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `comments_info`
--
ALTER TABLE `comments_info`
  MODIFY `com_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `email_config`
--
ALTER TABLE `email_config`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `language`
--
ALTER TABLE `language`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=302;

--
-- AUTO_INCREMENT for table `lg_setting`
--
ALTER TABLE `lg_setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `links`
--
ALTER TABLE `links`
  MODIFY `link_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `menu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `menu_content`
--
ALTER TABLE `menu_content`
  MODIFY `menu_content_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `news_archive`
--
ALTER TABLE `news_archive`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `news_mst`
--
ALTER TABLE `news_mst`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `news_position`
--
ALTER TABLE `news_position`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `page_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `photo_library`
--
ALTER TABLE `photo_library`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `post_seo_onpage`
--
ALTER TABLE `post_seo_onpage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pulling`
--
ALTER TABLE `pulling`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reporter_post_news_info`
--
ALTER TABLE `reporter_post_news_info`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `social_auth`
--
ALTER TABLE `social_auth`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `subscription`
--
ALTER TABLE `subscription`
  MODIFY `subs_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `temp_news`
--
ALTER TABLE `temp_news`
  MODIFY `id` int(9) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_analiytics`
--
ALTER TABLE `user_analiytics`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_info`
--
ALTER TABLE `user_info`
  MODIFY `id` int(9) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `video_url`
--
ALTER TABLE `video_url`
  MODIFY `url_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
