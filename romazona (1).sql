-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 10, 2018 at 04:29 PM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `romazona`
--

-- --------------------------------------------------------

--
-- Table structure for table `about_uses`
--

CREATE TABLE `about_uses` (
  `id` int(10) UNSIGNED NOT NULL,
  `img` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `desc_fr` longtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `about_uses`
--

INSERT INTO `about_uses` (`id`, `img`, `desc`, `created_at`, `updated_at`, `desc_fr`) VALUES
(1, '1531222285.jpg', '<p>تؤمن شركة منلو أن النجاح هو نتيجة التعاون بين الخبرات في مجالات مختلفة، ونتطلع دائما إلى الأمام لتوسيع شبكتنا من الشركاء التجاريين.<br />\r\nإذا كنت ترغب في أن تصبح شريك تجارى:<br />\r\n- الموزع المحلي<br />\r\n- الموزع الدولي<br />\r\n- المورد<br />\r\n- مركز خدمة معتمد<br />\r\nيرجى ملء النموذج أدناه.</p>', NULL, NULL, '<p>Vectus Industries Limited is a water storage and piping solutions provider company in India, catering to residential, commercial, industrial, infrastructure and agricultural sectors. We operate across three distinct product verticals namely</p>\r\n\r\n<ol>\r\n	<li>Water tanks (overhead and underground)</li>\r\n	<li>Pipes and fittings (including manholes)</li>\r\n	<li>Household plastics and others</li>\r\n</ol>\r\n\r\n<p>We manufacture a diverse range of products using a variety of polymers, including linear Low Density Polyethylene (&ldquo;LLDPE&rdquo;), .Highly Density Polyethylene (&ldquo;HDPE&rdquo;), Chlorinated Polyvinyl Chloride (&ldquo;CPVC&rdquo;), Polypropylene Random Copolymer (&ldquo;PPR&rdquo;) and Polyvinyl Chloride (&ldquo;PVC&rsquo;).The Company has a network of over 4300 dealer and distributors across 24 states in India. We have state-of- the-art ISO 9001:2015 certified manufacturing facilities at 13 strategic locations across India.<br />\r\n<br />\r\nOur Promoters, Ashish Baheti and Atul Ladha have significant experience in the water storage and piping solutions industry and had set up their own separate water tank businesses in 1990 and 1993, respectively. We are a digitally driven company and were the first company to introduce SAP S/4 HANA 1511 Digital core Enterprise Management Solution (&ldquo;SAP HANA&rdquo;) in the plastic industry in India.<br />\r\n<br />\r\n<strong>Water tanks</strong><br />\r\nOur water tanks product vertical includes overhead (including loft tanks) and underground tanks (including septic tanks), in a variety of colours and layers with varied capacities, made from Roto moulded and Blow moulded process.<br />\r\nWe are the first to introduce the blow moulded tanks in India and is currently the largest manufacturer of blow moulded tanks in India. We are also among the top two national players in the water tank segment in terms of revenue.</p>');

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Ahmed Reda', 'admin@gtsaw.com', '$2y$10$MQxGlCSeWIPBv85FMTPSYebi4uUI10QHv0MkR1uIj/fpeRtYvxXMO', '9y5WswdyjF3Z3mYXHw9qOZuw8xIZkzTfo8IiFlxOBnT01tmuuTKQGTJWpYpW', '2018-07-07 11:15:52', '2018-07-07 11:15:52');

-- --------------------------------------------------------

--
-- Table structure for table `admin_password_resets`
--

CREATE TABLE `admin_password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` longtext COLLATE utf8mb4_unicode_ci,
  `name_fr` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc_fr` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `class` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `desc`, `name_fr`, `desc_fr`, `created_at`, `updated_at`, `class`) VALUES
(2, 'فلاتر', '<h3><strong>الثلاث للتنقية Tank Power مراحل</strong></h3>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>تقوم المراحل الثلاث بتنقية المياة من الاتربة و الصدأ والروائح الكريهه و الشوائب الصغيرة و والكلور والغازات بحيث يمكنك الحصول على مياة عذبة و نظيفة بفضل الصنبور المقاوم للصدأ و الامن صحيًا .</p>', 'Filter', '<h3>Tank Power 3 stage for 3 filtration cycles</h3>\r\n\r\n<p>The Three complete stages in Tank Power 3 stage are responsible for filtering your water from&nbsp;&nbsp;Sand, Slit, Rust, Small Impurities, Chlorine, Gases, Organic Materials, Taste and Odor. With stainless steel food grade faucet, water is fresh, clean and ready to be enjoyed.</p>', '2018-07-07 12:11:56', '2018-07-10 09:17:54', 'one'),
(3, 'شمع', '<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li>مصنوعة بتكنولوجيا&nbsp;&reg;MircoPores التي تضمن إمتصاص حتي 99.9% من الكلور واللون و الطعم والرائحة.</li>\r\n	<li>مصممة بشكل إنسيابى مميز ومحفوظه داخل عبوة بلاستيكية بلون أزرق مميز للحفاظ علي مكونات الشمعة.</li>\r\n	<li>الشمعة مصممة بشكل يجعل قاعده الشمعة اعرض من قمتها و هذا مؤشر لكيفية تركيب الشمعة بطريقة صحيحة.</li>\r\n	<li>خامات مخصصة لمياه الشرب و معتمدة من منظمة FDA العالمي</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>', 'Candle', '<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li>Developed with&nbsp;<strong>MicroPores</strong>&reg;&nbsp;Technology which guarantees the absorption of 99.9% of Chlorine Color, Taste and Odor.</li>\r\n	<li>Unique patent design and color</li>\r\n	<li>New conical shape, with a wider base that acts as an indicator for a correct cartridge installation.</li>\r\n	<li>FDA Approved, Food Grade Material</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>', '2018-07-08 08:21:45', '2018-07-10 09:18:30', 'two');

-- --------------------------------------------------------

--
-- Table structure for table `contact_uses`
--

CREATE TABLE `contact_uses` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fax` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact_uses`
--

INSERT INTO `contact_uses` (`id`, `email`, `phone`, `fax`, `address`, `created_at`, `updated_at`) VALUES
(1, 'roma@water.com', '0100458724', '200500040852', 'da fa ga ha maadi koko wegypt', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` int(10) UNSIGNED NOT NULL,
  `question` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `question_fr` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer_fr` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `question`, `answer`, `created_at`, `updated_at`, `question_fr`, `answer_fr`) VALUES
(2, 'ahmed rere', '<p>sasasas</p>', NULL, '2018-07-08 09:31:54', 'ahmed rere', '<p>ads</p>');

-- --------------------------------------------------------

--
-- Table structure for table `from_contact_us`
--

CREATE TABLE `from_contact_us` (
  `fname` varchar(191) NOT NULL,
  `lname` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `message` longtext NOT NULL,
  `id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mails`
--

CREATE TABLE `mails` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `is_done` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mails`
--

INSERT INTO `mails` (`id`, `name`, `phone`, `email`, `city`, `created_at`, `updated_at`, `address`, `quantity`, `product_id`, `is_done`) VALUES
(2, 'qwerty', '1114388300', 'admin@gmail.com', 'cairo@ee.cc', '2018-07-09 09:19:35', '2018-07-09 09:19:35', 'cairo egypt', 2, 3, 'no'),
(3, 'hii', '1114388500', 'reda@example.com', 'dad', '2018-07-10 05:50:58', '2018-07-10 05:50:58', 'ad swrfdd dfdg', 5, 2, 'no');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_07_07_120111_create_admins_table', 1),
(4, '2018_07_07_120112_create_admin_password_resets_table', 1),
(5, '2018_07_07_120520_create_categories_table', 1),
(6, '2018_07_07_120537_create_products_table', 1),
(7, '2018_07_07_120558_create_site_infos_table', 1),
(8, '2018_07_07_120618_create_about_uses_table', 1),
(9, '2018_07_07_120644_create_contact_uses_table', 1),
(10, '2018_07_07_120703_create_faqs_table', 1),
(11, '2018_07_07_120721_create_mails_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name_fr` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc_fr` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `video_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `name`, `image`, `desc`, `price`, `created_at`, `updated_at`, `name_fr`, `desc_fr`, `video_link`) VALUES
(2, 2, 'فلتر 1', '1531220885.jpg', '<p>فلتر Tank Power الثلاث مراحل الجديد بتكنولوجيا MicroShield&reg; يقدم مياه شرب صحية و نقيه بجوده عاليه حيث ينقي المياه من 99.9٪ من الشوائب، الأتربة، الحشرات، الصدأ، الكلور، الغازات، المواد العضوية، الطعم و الرائحة.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>شمع Tank Power متوفر في المتاجر&nbsp;</p>', '1200', '2018-07-08 08:22:43', '2018-07-10 09:12:08', 'TANK Power 3 stage', '<p>New Tank Power &ndash; 3 Stage Filter with<strong>MicroShield&reg;&nbsp;</strong>Technology, provides healthy</p>\r\n\r\n<p>premium drinking water as it filters out 99.9% of Impurities, Silt, Insects, Rust, Chorine, Gases, Organic Materials, Taste and Odor.<br />\r\n&nbsp;</p>\r\n\r\n<p>Widely available Tank Power Replacement Cartridges.</p>', 'https://www.youtube.com/embed/BCHhwxvQqxg'),
(3, 3, 'شمعة 1', '1531220922.jpg', '<ul>\r\n	<li>مصنوعة بتكنولوجيا&nbsp;&reg;Blue Ring ،ثلات طبقات تنقية ، تنقي 10 مرات شوائب أصغر عن الشمعات العادية .</li>\r\n	<li>مسام شمعة Tank Power الاولي تبدأ من 5 ميكرون ويضيق حتى 1 ميكرون و الذى ينقى 10 مرات شوائب أصغر عن الشمعات العادية و بذلك يضمن تنقية المياه بنسبة تصل الى 99.9% من الشوائب.</li>\r\n	<li>خامات مخصصة لمياه الشرب و معتمدة من منظمة FDA العالمية</li>\r\n</ul>', '300', '2018-07-08 09:36:47', '2018-07-10 09:22:12', 'Candle one', '<ul>\r\n	<li>Developed with&nbsp;<strong>Blue Ring</strong>&reg;&nbsp;Technology using three layers of filtration, Tank Power 1 removes 10 times smaller particles than regular cartridges.</li>\r\n	<li>Tank Power 1s&rsquo; mesh microns start with 5 microns and end with 1 micron, which filters out 10 times smaller particles than regular cartridges, guaranteeing 99.9% filtration of all impurities.</li>\r\n	<li>FDA Approved, Food Grade Material</li>\r\n</ul>', 'https://www.youtube.com/watch?v=qgAPoKxw59Y'),
(4, 2, 'فلتر 2', '1531224806.png', '<p>The substr() function returns a part of a string.</p>\r\n\r\n<p><strong>Note:</strong>&nbsp;If the start parameter is a negative number and length is less than or equal to start, length becomes 0.</p>', '800', '2018-07-10 10:13:26', '2018-07-10 10:13:26', 'Filter Two', '<p>The substr() function returns a part of a string.</p>\r\n\r\n<p><strong>Note:</strong>&nbsp;If the start parameter is a negative number and length is less than or equal to start, length becomes 0.</p>', 'https://www.youtube.com/embed/BCHhwxvQqxg'),
(5, 3, 'شمعة 1', '1531224858.png', '<p>The substr() function returns a part of a string.</p>\r\n\r\n<p><strong>Note:</strong>&nbsp;If the start parameter is a negative number and length is less than or equal to start, length becomes 0.</p>', '1000', '2018-07-10 10:14:18', '2018-07-10 10:14:18', 'Candle Two', '<p>The substr() function returns a part of a string.</p>\r\n\r\n<p><strong>Note:</strong>&nbsp;If the start parameter is a negative number and length is less than or equal to start, length becomes 0.</p>', 'https://www.youtube.com/embed/BCHhwxvQqxg'),
(6, 3, 'silver', '1531224928.png', '<p>The substr() function returns a part of a string.</p>\r\n\r\n<p><strong>Note:</strong>&nbsp;If the start parameter is a negative number and length is less than or equal to start, length becomes 0.</p>\r\n\r\n<p>The substr() function returns a part of a string.</p>\r\n\r\n<p><strong>Note:</strong>&nbsp;If the start parameter is a negative number and length is less than or equal to start, length becomes 0.</p>\r\n\r\n<p>The substr() function returns a part of a string.</p>\r\n\r\n<p><strong>Note:</strong>&nbsp;If the start parameter is a negative number and length is less than or equal to start, length becomes 0.</p>', '950', '2018-07-10 10:15:28', '2018-07-10 10:15:28', 'fady', '<p>The substr() function returns a part of a string.</p>\r\n\r\n<p><strong>Note:</strong>&nbsp;If the start parameter is a negative number and length is less than or equal to start, length becomes 0.</p>', 'https://www.youtube.com/embed/BCHhwxvQqxg'),
(7, 2, 'viovlo', '1531224974.jpg', '<p>&lt;p&gt;New Tank Power &amp;ndash; 3 Stage Filter with&lt;strong&gt;MicroShield&amp;reg;&amp;nbsp;&lt;/strong&gt;Technology, provides healthy&lt;/p&gt; &lt;p&gt;premium drinking water as it filters out 99.9% of Impurities, Silt, Insects, Rust, Chorine, Gases, Organic Materials, Taste and Odor.&lt;br /&gt; &amp;nbsp;&lt;/p&gt; &lt;p&gt;Widely available Tank Power Replacement Cartridges.&lt;/p&gt;&lt;p&gt;New Tank Power &amp;ndash; 3 Stage Filter with&lt;strong&gt;MicroShield&amp;reg;&amp;nbsp;&lt;/strong&gt;Technology, provides healthy&lt;/p&gt; &lt;p&gt;premium drinking water as it filters out 99.9% of Impurities, Silt, Insects, Rust, Chorine, Gases, Organic Materials, Taste and Odor.&lt;br /&gt; &amp;nbsp;&lt;/p&gt; &lt;p&gt;Widely available Tank Power Replacement Cartridges.&lt;/p&gt;&lt;p&gt;New Tank Power &amp;ndash; 3 Stage Filter with&lt;strong&gt;MicroShield&amp;reg;&amp;nbsp;&lt;/strong&gt;Technology, provides healthy&lt;/p&gt; &lt;p&gt;premium drinking water as it filters out 99.9% of Impurities, Silt, Insects, Rust, Chorine, Gases, Organic Materials, Taste and Odor.&lt;br /&gt; &amp;nbsp;&lt;/p&gt; &lt;p&gt;Widely available Tank Power Replacement Cartridges.&lt;/p&gt;</p>', '500', '2018-07-10 10:16:14', '2018-07-10 10:16:14', 'filter one', '<p>&lt;p&gt;New Tank Power &amp;ndash; 3 Stage Filter with&lt;strong&gt;MicroShield&amp;reg;&amp;nbsp;&lt;/strong&gt;Technology, provides healthy&lt;/p&gt; &lt;p&gt;premium drinking water as it filters out 99.9% of Impurities, Silt, Insects, Rust, Chorine, Gases, Organic Materials, Taste and Odor.&lt;br /&gt; &amp;nbsp;&lt;/p&gt; &lt;p&gt;Widely available Tank Power Replacement Cartridges.&lt;/p&gt;&lt;p&gt;New Tank Power &amp;ndash; 3 Stage Filter with&lt;strong&gt;MicroShield&amp;reg;&amp;nbsp;&lt;/strong&gt;Technology, provides healthy&lt;/p&gt; &lt;p&gt;premium drinking water as it filters out 99.9% of Impurities, Silt, Insects, Rust, Chorine, Gases, Organic Materials, Taste and Odor.&lt;br /&gt; &amp;nbsp;&lt;/p&gt; &lt;p&gt;Widely available Tank Power Replacement Cartridges.&lt;/p&gt;</p>', 'https://www.youtube.com/watch?v=qgAPoKxw59Y'),
(8, 2, 'platinum', '1531225035.jpg', '<p>&lt;p&gt;New Tank Power &amp;ndash; 3 Stage Filter with&lt;strong&gt;MicroShield&amp;reg;&amp;nbsp;&lt;/strong&gt;Technology, provides healthy&lt;/p&gt; &lt;p&gt;premium drinking water as it filters out 99.9% of Impurities, Silt, Insects, Rust, Chorine, Gases, Organic Materials, Taste and Odor.&lt;br /&gt; &amp;nbsp;&lt;/p&gt; &lt;p&gt;Widely available Tank Power Replacement Cartridges.&lt;/p&gt;&lt;p&gt;New Tank Power &amp;ndash; 3 Stage Filter with&lt;strong&gt;MicroShield&amp;reg;&amp;nbsp;&lt;/strong&gt;Technology, provides healthy&lt;/p&gt; &lt;p&gt;premium drinking water as it filters out 99.9% of Impurities, Silt, Insects, Rust, Chorine, Gases, Organic Materials, Taste and Odor.&lt;br /&gt; &amp;nbsp;&lt;/p&gt; &lt;p&gt;Widely available Tank Power Replacement Cartridges.&lt;/p&gt;</p>', '1200', '2018-07-10 10:17:15', '2018-07-10 10:17:15', 'zindex', '<p>&lt;p&gt;New Tank Power &amp;ndash; 3 Stage Filter with&lt;strong&gt;MicroShield&amp;reg;&amp;nbsp;&lt;/strong&gt;Technology, provides healthy&lt;/p&gt; &lt;p&gt;premium drinking water as it filters out 99.9% of Impurities, Silt, Insects, Rust, Chorine, Gases, Organic Materials, Taste and Odor.&lt;br /&gt; &amp;nbsp;&lt;/p&gt; &lt;p&gt;Widely available Tank Power Replacement Cartridges.&lt;/p&gt;&lt;p&gt;New Tank Power &amp;ndash; 3 Stage Filter with&lt;strong&gt;MicroShield&amp;reg;&amp;nbsp;&lt;/strong&gt;Technology, provides healthy&lt;/p&gt; &lt;p&gt;premium drinking water as it filters out 99.9% of Impurities, Silt, Insects, Rust, Chorine, Gases, Organic Materials, Taste and Odor.&lt;br /&gt; &amp;nbsp;&lt;/p&gt; &lt;p&gt;Widely available Tank Power Replacement Cartridges.&lt;/p&gt;</p>', 'https://www.youtube.com/embed/BCHhwxvQqxg');

-- --------------------------------------------------------

--
-- Table structure for table `site_infos`
--

CREATE TABLE `site_infos` (
  `id` int(10) UNSIGNED NOT NULL,
  `footer` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `footer_fr` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fb_link` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `youtube_link` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `favicon` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `site_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `site_infos`
--

INSERT INTO `site_infos` (`id`, `footer`, `footer_fr`, `fb_link`, `youtube_link`, `logo`, `favicon`, `site_name`, `address`, `phone`, `email`, `created_at`, `updated_at`) VALUES
(1, 'اصل الwater في مصر', 'En l\'espace de quelques années, Roma Water est devenue leader du marché (n ° 1) non seulement dans les catégories des glacières et des glacières, mais aussi dans l\'industrie des filtres à eau et des distributeurs.', 'https://www.facebook.com/GTSAW-288180908389459/', 'https://www.youtube.com/channel/UCvm3Cix_9lppA4I8jjJ8m2g', '1531217787.png', '1531035863.jpg', 'Roma Water', '80/4 Saqr Quraish - Sheraton', '01224314600', 'roma@water.com', NULL, '2018-07-10 10:27:54');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about_uses`
--
ALTER TABLE `about_uses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `admin_password_resets`
--
ALTER TABLE `admin_password_resets`
  ADD KEY `admin_password_resets_email_index` (`email`),
  ADD KEY `admin_password_resets_token_index` (`token`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_uses`
--
ALTER TABLE `contact_uses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `from_contact_us`
--
ALTER TABLE `from_contact_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mails`
--
ALTER TABLE `mails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
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
-- Indexes for table `site_infos`
--
ALTER TABLE `site_infos`
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
-- AUTO_INCREMENT for table `about_uses`
--
ALTER TABLE `about_uses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `contact_uses`
--
ALTER TABLE `contact_uses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `from_contact_us`
--
ALTER TABLE `from_contact_us`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mails`
--
ALTER TABLE `mails`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `site_infos`
--
ALTER TABLE `site_infos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
