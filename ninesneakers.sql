-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 10, 2022 at 03:19 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ninesneakers`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `email` varchar(128) NOT NULL,
  `password` varchar(128) NOT NULL,
  `name` varchar(128) NOT NULL,
  `unique_id` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `email`, `password`, `name`, `unique_id`) VALUES
(1, 'mufid@gmail.com', '3GiERsDQIJ8ETVD1NYFaweP6RZBiYWI5ZjdmNWUy', 'Mufid Farhan Muhana', '4e61845ff2'),
(2, 'user1@mail.com', '3GiERsDQIJ8ETVD1NYFaweP6RZBiYWI5ZjdmNWUy\r\n', 'user1', 'bab9f7f5e2'),
(3, 'admin@ninesnkrs.com', '3GiERsDQIJ8ETVD1NYFaweP6RZBiYWI5ZjdmNWUy', 'Admin Nine', 'bab9f7f5e2');

-- --------------------------------------------------------

--
-- Table structure for table `customer_chart`
--

CREATE TABLE `customer_chart` (
  `id` int(8) NOT NULL,
  `email` varchar(128) NOT NULL,
  `customer_id` int(8) NOT NULL,
  `product_id` int(8) NOT NULL,
  `product_name` varchar(128) NOT NULL,
  `price` bigint(20) NOT NULL,
  `size` varchar(128) NOT NULL,
  `quantity` int(3) NOT NULL,
  `color` varchar(128) NOT NULL,
  `create_at` datetime NOT NULL DEFAULT current_timestamp(),
  `image` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer_chart`
--

INSERT INTO `customer_chart` (`id`, `email`, `customer_id`, `product_id`, `product_name`, `price`, `size`, `quantity`, `color`, `create_at`, `image`) VALUES
(92, 'mufid@gmail.com', 0, 50, 'Adidas - SUPERNOVA SHOES', 1900000, '38', 2, 'Red', '2022-06-10 01:02:10', '1420826866_gw6203_tpp_ecom.jpg'),
(93, '', 0, 33, 'NIKE - Air Jordan 1 Zoom Cmft', 2099000, '', 1, '', '2022-06-10 07:50:28', '783096900_bd5c9b7d-b289-4e4f-a00d-8420438bff49 (1).webp'),
(94, '', 0, 33, 'NIKE - Air Jordan 1 Zoom Cmft', 2099000, '', 1, '', '2022-06-10 07:50:33', '783096900_bd5c9b7d-b289-4e4f-a00d-8420438bff49 (1).webp'),
(95, '', 0, 33, 'NIKE - Air Jordan 1 Zoom Cmft', 2099000, '', 1, '', '2022-06-10 07:50:37', '783096900_bd5c9b7d-b289-4e4f-a00d-8420438bff49 (1).webp'),
(99, 'user1@mail.com', 0, 51, 'Nike - Pegasus Trail 3', 2000000, '', 1, '', '2022-06-10 08:15:52', '998388135_80a7edde-3ae0-4379-b5ef-82257595479a.webp');

-- --------------------------------------------------------

--
-- Table structure for table `order_list`
--

CREATE TABLE `order_list` (
  `id` int(8) NOT NULL,
  `customer_id` int(8) NOT NULL,
  `email` varchar(128) NOT NULL,
  `product_id` int(8) NOT NULL,
  `product_name` varchar(128) NOT NULL,
  `price` bigint(20) NOT NULL,
  `quantity` int(11) NOT NULL,
  `payment_method` varchar(128) NOT NULL,
  `total_price` bigint(20) NOT NULL,
  `create_at` datetime NOT NULL DEFAULT current_timestamp(),
  `image` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(8) NOT NULL,
  `brand_name` varchar(128) NOT NULL,
  `product_name` varchar(128) NOT NULL,
  `category` varchar(32) NOT NULL,
  `price` bigint(20) NOT NULL,
  `quantity` int(8) NOT NULL,
  `description` text DEFAULT NULL,
  `image1` varchar(255) NOT NULL,
  `image2` varchar(255) NOT NULL,
  `image3` varchar(255) NOT NULL,
  `create_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `brand_name`, `product_name`, `category`, `price`, `quantity`, `description`, `image1`, `image2`, `image3`, `create_at`) VALUES
(33, 'NIKE', 'Air Jordan 1 Zoom Cmft', 'unisex', 2099000, 12, 'Making iconic style even more comfortable. The Air Jordan 1 Zoom Cmft remakes the 1st Air Jordan with lightweight, low-profile cushioning and elements that improve wearability. Leathers and textiles in the upper have a broken-in feel. A lined, padded collar cups the heel for a secure fit.', '783096900_bd5c9b7d-b289-4e4f-a00d-8420438bff49 (1).webp', '450680909_c186542e-86b4-4e3d-8d42-85f7308fca0c (1).webp', '1856662165_310e0b15-4a48-4c91-aec1-e9d6708951a4 (1).webp', '2022-06-09 00:03:42'),
(34, 'Nike', 'Air Force 1 Pixel', 'women', 1500000, 8, 'Conquer doubt and make a statement in the Nike Air Force 1 Pixel, a re-imagined off-court style made by and for women. Its crisp leather upper features clean lines and subtle texturing for a fresh look that\'s easy to style. The distorted outsole and midsole have large, pixelated details for a modern edge, while the new logo and inverted Swoosh design are an act of unflinching boldness. You\'re not just in the game. You\'re leading it.', '2018425785_10bad0b9-abd3-47e2-8fc0-1323d2f6a3f2.webp', '1745915219_470de9ca-c965-4ace-9306-cfae385430bd.webp', '678520767_66bb2488-2b89-4609-a173-0160049b4fd2.webp', '2022-06-09 00:05:50'),
(36, 'Nike', 'Air Force 1 Pixel', 'women', 1500000, 8, 'Conquer doubt and make a statement in the Nike Air Force 1 Pixel, a re-imagined off-court style made by and for women. Its crisp leather upper features clean lines and subtle texturing for a fresh look that\'s easy to style. The distorted outsole and midsole have large, pixelated details for a modern edge, while the new logo and inverted Swoosh design are an act of unflinching boldness. You\'re not just in the game. You\'re leading it.', '60766493_10bad0b9-abd3-47e2-8fc0-1323d2f6a3f2.webp', '184898146_470de9ca-c965-4ace-9306-cfae385430bd.webp', '396227082_66bb2488-2b89-4609-a173-0160049b4fd2.webp', '2022-06-09 00:20:57'),
(37, 'Nike', 'Flex Runner 2 Lil Fruits', 'kids', 660000, 18, 'Fresh, juicy colours and smoothie-inspired swirls bring a summery vibe to the Nike Flex Runner 2 Lil Fruits, which makes playtime easy for kids. Little feet can slip right in and feel secure—no laces needed! We\'ve also made the shoe flexible and durable so every run, step and jump can feel as easy as 1, 2, 3.', '1739387943_77cb725c-7ff9-492e-b796-7d96af717c27.webp', '540202796_a312291f-900e-4a9a-a4ba-59cf45b9e1e4.webp', '1175985826_d3906b89-f7b9-42b0-9ffc-2865d785aab1.webp', '2022-06-09 00:41:00'),
(39, 'Adidas', 'Superstar Parle Shoes', 'men', 2300000, 20, 'IN COLLABORATION WITH PARLEY FOR THE OCEANS, THESE ADIDAS SUPERSTAR SHOES ARE MADE IN PART WITH RECYCLED MATERIALS.\r\nA trainer alone won\'t save the planet. But these adidas Superstar shoes are a really good start. Part of our effort to help end plastic waste, we collaborated with Parley for the Oceans to create a heel strap and tongue webbing using yarn from ocean plastic collected on the beach. Even with all that game-changing attitude, their look and vibe are just the same as that first shoe that stepped out on the hardwood back in the \'70s. Educate and act. Head to Parley for the Oceans website? to find out more, sign up and get involved at adidas.com/parleyMade with a series of recycled materials, this upper features at least 50% recycled content. This product represents just one of our solutions to help end plastic waste.', '220845315_m990gr1_nb_03_i.jpg', '1233466032_gv7615_d1_ecom.webp', '1179985255_gv7615_tpp_ecom.webp', '2022-06-09 00:46:50'),
(43, 'New Balance', 'MADE in USA 990', 'men', 2800000, 8, 'The 990’s original designers were tasked with creating the single best running shoe on the market. The finished product more than lived up to its billing. When it hit shelves for the first time in 1982 the 990 sported an elegantly understated grey colorway, and a then unheard of three-figure price tag. For avid runners and ahead of the curve tastemakers alike, the 990 was a mark of quality and superior taste. There have been updates to the design since ’82, and more color options, but the 990’s aspirational status symbol aura has never changed. Simply put, the 990 is the shoe so good, that we’ve never stopped making it.\r\n\r\nNew Balance MADE contains a domestic value of 70% or more. MADE makes up a limited portion of New Balance’s US sales.', '1677318208_m990gr1_nb_03_i.jpg', '1690181353_m990gr1_nb_05_i.webp', '291617266_m990gr1_nb_09_i.webp', '2022-06-09 00:56:39'),
(48, 'Adidas', 'NMD_V3 SHOES', 'men', 2700000, 12, 'ULTRA-COMFORTABLE SHOES MADE IN PART WITH RECYCLED MATERIALS.\r\nLife moves fast. But this isn\'t a \"blink and you miss it\" kind of thing. This is a \"lace up and enjoy every single minute of it\" kind of thing. Built on the legacy of speed, these running-inspired adidas shoes are all about holding the pace of the daily grind. Plush BOOST cushioning makes sure you feel good and supported.', '129395378_gw3063_smc_ecom.webp', '', '1179863537_gw3063_blt_ecom.webp', '2022-06-09 21:18:32'),
(49, 'Adidas', 'ULTRABOOST 22 HEAT.RDY SHOES', 'women', 3400000, 4, 'VENTILATED RUNNING SHOES MADE IN PART WITH PARLEY OCEAN PLASTIC.\r\nWhen the temperature\'s high, but your motivation\'s higher. Lace on these adidas Ultraboost running shoes and head to the shady side of the street. The blend of comfort, responsiveness and breathability will have you feeling good through warm-weather miles. HEAT.RDY keeps you cool, and BOOST returns energy with every stride. Just don\'t forget to drink water.', '1624410513_gx8087_smc_ecom.webp', '1626035107_gx8087_d2_ecom.webp', '', '2022-06-09 21:20:48'),
(50, 'Adidas', 'SUPERNOVA SHOES', 'men', 2000000, 20, 'THE WORKHORSE RUNNING SHOE WITH A BOOST AND BOUNCE MIDSOLE.\r\nStep out strong in the stylish Supernova Shoes — where sport meets innovation. Built with next-level comfort in mind, the sleek silhouette features the perfect combination of Bounce and Boost for a dynamic midsole. Legendary Boost tech provides a cloud-like feel thanks to hundreds of Boost capsules fused together and ready to explode with energy, while Bounce cushioning designed to give you a comfortable spring with each step. The engineered mesh upper offers flexible, breathable support for a distraction-free run. Feel motivated, comfortable and ready to set the pace.', '1420826866_gw6203_tpp_ecom.jpg', '42020758_gw6203_blt_ecom.jpg', '1041712693_gw6203_flt_ecom.jpg', '2022-06-09 21:22:49'),
(51, 'Nike', 'Pegasus Trail 3', 'men', 2000000, 12, 'Find your wings with an off-road run.The Nike Pegasus Trail 3 has the same comfort you love, with a design that nods to the classic Pegasus look.Nike React foam delivers responsive cushioning while tough traction helps you stay moving through rocky terrain.More support around the midfoot helps you feel secure on your journey.', '998388135_80a7edde-3ae0-4379-b5ef-82257595479a.webp', '1353979095_bace10e1-e18b-479b-b46c-d51addebe492.webp', '361623302_53f3181e-9ff3-41ce-a52f-f93f9cbda5b1.webp', '2022-06-09 21:27:30'),
(52, 'Nike', 'Air Zoom Pegasus 39', 'men', 2000000, 8, 'Running is your daily ritual, with every step taking you closer to your personal goal. Let the Nike Air Zoom Pegasus 39 help you ascend to new heights—whether you\'re training or jogging—with its intuitive design. More lightweight up top than the Pegasus 38 and ideal to wear in any season, it has a supportive sensation to help keep your feet contained, while underfoot cushioning and double Zoom Air units (1 more than the Peg 38) give you an extra pop to your step. Your trusted workhorse with wings is back. Time to fly.', '1669856265_b5d338dd-58b5-4134-8951-692c89477116.webp', '1835153332_d72512e5-7c88-4473-9263-1cabb53a6411.webp', '1818194864_air-zoom-pegasus-39-road-running-shoes-kmZSD6.jpg', '2022-06-09 21:28:52'),
(53, 'Nike', 'Presto x Hello Kitty ®', 'kids', 1200000, 8, 'It\'s here! Nike x Hello Kitty has finally arrived with one of your favourite Sanrio ® characters. Discover all the super-cute Hello Kitty graphics inside, outside and from heel to toe. It all comes together on our iconic Presto (dubbed the \"T-shirt for your feet\") that\'s easy to slip on and comfy enough for kids to wear all day long.', '703651419_9faaae62-4d7c-464b-8e3f-6f13049823dc.webp', '1329751457_595204bf-b3b4-481d-8ce3-d87f9c0e896c.webp', '1126196254_a48c3cb6-a1b0-4c9e-b126-49863cf9846b.webp', '2022-06-09 21:30:33'),
(55, 'Vans', 'COLOR THEORY OLD SKOOL', 'unisex', 1000000, 8, 'Color Theory Old Skool', '260308548_VN0A5KRSYQW-HERO.webp', '1142764072_VN0A5KRSYQW-ALT2.webp', '1246552071_VN0A5KRSYQW-ALT3.webp', '2022-06-09 21:35:27'),
(57, 'Vans', 'CUSTOMS CHERRY BLOSSOM CHECKERBOARD OLD SKOOL', 'women', 1500000, 8, 'The Old Skool, the first shoe to bear the iconic leather sidestripe and the go-to style for every skate enthusiast, is a low-top lace-up style made with durable canvas, metal eyelets, a padded tongue and lining and Vans signature Waffle Outsole. Now they’re available on Vans Customs where each shoe can be personalized with leather and suede, various lace and eyelet colors, exclusive patterns available only in Customs, and the option to Upload Your Art or photos from your computer or smartphone.', '1742087552_VN0A3VC1004-ALT1.webp', '1109982445_VN0A3VC1004-HERO.webp', '1199595115_VN0A3VC1004-ALT2.webp', '2022-06-09 21:38:00'),
(58, 'Converse', 'CTAS HI PINK CLAY WOMEN\'S SNEAKERS - BABY PINK', 'women', 900000, 12, '', '925898678_CON172686C-1.jpg', '1485343585_03-CONVERSE-FFSSBCON0-CON172686C-BabyPink.jpg', '1246782730_04-CONVERSE-FFSSBCON0-CON172686C-BabyPink.jpg', '2022-06-09 21:40:42'),
(59, 'Converse', 'Chuck Taylor All Star Low Top', 'unisex', 1200000, 8, 'The Converse Chuck Taylor All Star is the one that started it all for Converse. When it comes to sneakers, there’s nothing more pure than a canvas upper and a vulcanized rubber sole. This is the sneaker that spawned countless imitators, with its rubber toe cap, toe bumper and striping.', '420370974_m9166_c_107x1_1_2nd.jpg', '1445060194_m9166_f_107x1_1_2nd.jpg', '1731849379_m9166_a_107x1_1_2nd.jpg', '2022-06-09 21:43:16'),
(60, 'Converse', 'Chuck Taylor All Star Wide High Top', 'men', 1500000, 12, '', '1174322187_m9160_a_107x1_1_2.jpg', '1481918455_m9160_b_107x1_1_2.jpg', '2091412654_m9160_c_107x1_1_2.jpg', '2022-06-09 21:44:10'),
(61, 'Converse', 'Chuck Taylor All Star Wide High Top', 'men', 1000000, 18, 'sadfasfsadf', '230309575_m9160_a_107x1_1_2.jpg', '1755339314_m9160_b_107x1_1_2.jpg', '317234404_m9160_c_107x1_1_2.jpg', '2022-06-10 01:08:25');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(4) NOT NULL,
  `username` varchar(128) NOT NULL,
  `email` varchar(128) DEFAULT NULL,
  `name` varchar(128) NOT NULL,
  `password` varchar(128) NOT NULL,
  `phone_number` bigint(13) NOT NULL,
  `address` varchar(256) NOT NULL,
  `create_at` datetime NOT NULL DEFAULT current_timestamp(),
  `unique_id` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `name`, `password`, `phone_number`, `address`, `create_at`, `unique_id`) VALUES
(48, '', 'user1@mail.com', 'user1', '3GiERsDQIJ8ETVD1NYFaweP6RZBiYWI5ZjdmNWUy', 0, '', '2022-06-08 15:06:51', 'bab9f7f5e2'),
(51, '', 'mufid2@gmail.com', 'Mufid Farhan Muhana', 'QfZX/rLE1hqZR573pxaQuRB8X8kwMDgyZGQ3ZGQ3', 0, '', '2022-06-09 08:11:41', '0082dd7dd7'),
(71, '', 'babayo123@gmail.com', 'coco babayo', 'ASagFfzkUk56WJZtIfAjC/j8ZxI1ODU4YWYxODFh', 81189845374, 'jalan ktw', '2022-06-10 00:33:48', '5858af181a'),
(72, '', 'haikal@gmail.com', 'fikri haikal', 'kTGtvE5bEj6weLf+K+gX/eTxdUc1ZmViM2RiZjMx', 812345678910, 'kavling taman wisata', '2022-06-10 00:49:55', '5feb3dbf31');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_chart`
--
ALTER TABLE `customer_chart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_list`
--
ALTER TABLE `order_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `customer_chart`
--
ALTER TABLE `customer_chart`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT for table `order_list`
--
ALTER TABLE `order_list`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
