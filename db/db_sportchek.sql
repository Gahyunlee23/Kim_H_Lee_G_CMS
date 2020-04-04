-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 30, 2020 at 06:27 AM
-- Server version: 5.7.26
-- PHP Version: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_sportchek`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`category_id`, `category_name`) VALUES
(1, 'shoes'),
(2, 'jacket'),
(3, 'top'),
(4, 'pants'),
(5, 'hat'),
(6, 'bag'),
(7, 'socks');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cat_pro`
--

CREATE TABLE `tbl_cat_pro` (
  `ID` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_cat_pro`
--

INSERT INTO `tbl_cat_pro` (`ID`, `category_id`, `product_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 1, 4),
(5, 1, 5),
(6, 2, 6),
(7, 2, 7),
(8, 2, 8),
(9, 2, 9),
(10, 2, 10),
(11, 3, 11),
(12, 3, 12),
(13, 3, 13),
(14, 3, 14),
(15, 3, 15),
(16, 4, 16),
(17, 4, 17),
(18, 4, 18),
(19, 4, 19),
(20, 4, 20),
(21, 5, 21),
(22, 5, 22),
(23, 5, 23),
(24, 5, 24),
(25, 5, 25),
(26, 6, 26),
(27, 6, 27),
(28, 6, 28),
(29, 6, 29),
(30, 6, 30),
(31, 7, 31),
(32, 7, 32),
(33, 7, 33),
(34, 7, 34),
(35, 7, 35);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE `tbl_product` (
  `product_id` int(11) NOT NULL,
  `product_img` varchar(50) NOT NULL,
  `product_name` varchar(70) NOT NULL,
  `product_color` varchar(150) NOT NULL,
  `product_rate` varchar(10) NOT NULL,
  `product_description` text NOT NULL,
  `product_price` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`product_id`, `product_img`, `product_name`, `product_color`, `product_rate`, `product_description`, `product_price`) VALUES
(1, 'shoes-1.png', 'adidas Women\'s NMD CS2 Shoes', 'LINEN/VAPGRE/FTWWHT', '4.5', 'A pioneer of contemporary street style, NMD is futuristic and fearless. Built to slip on and off, these shoes have an adidas Primeknit upper with a sleek wrap construction for a snug, sock-like fit. A Shadow Knit upper creates a subtle colour-shifting effect, and a Boost midsole cushions each step.', '143.97'),
(2, 'shoes-2.png', 'Nike Women\'s Air Max 270 React Shoes', 'PLUM CHALK/SUMMIT WHITE-STONE MAUVE-500', '4.3', 'The Nike Air Max 270 React uses lightweight, layered, no-sew materials to create a modern style that looks as good as it feels.', '157.50'),
(3, 'shoes-3.png', 'Converse Women\'s Chuck Taylor Oxford Shoes', 'WOLF GREY', '4.0', 'QUIET RIOT. The legend since ’57, when basketball players gave their high tops a chop. Essential elements like an OrthoLite insole and diamond pattern outsole still make the cut. With that classic “All Star” license plate on the tongue. Modern brights saturate the icon so you can drench those Chucks in color.', '64.99'),
(4, 'shoes-4.png', 'Vans Women\'s Classic Slip On Shoes', 'BEIGE', '3.8', 'The Vans Coastal Old Skool, the Vans classic skate shoe and first to bare the iconic sidestripe, is a low top lace-up featuring sturdy textile uppers, re-enforced toecaps to withstand repeated wear, padded collars for support and flexibility, and signature rubber waffle outsoles.', '84.99'),
(5, 'shoes-5.png', 'The North Face Women\'s Hedgehog Fastpack Gore-Tex Hiking Shoes', 'Dark Gray/Blue', '4.6', 'Move fast and light on the trails, rain or shine, with these waterproof Gore-Tex® hiking shoes that feature CRADLE™ Guide technology for a natural stride transition and a smooth, stable ride. Finished with best-in-class Vibram® soles for stable footing on wet or dry terrain.', '159.99'),
(6, 'jacket-1.png', 'The North Face Women\'s Cragmont Fleece Jacket', 'VINTGWHT/CEDRBN, TNF BLACK, VINTAGE WHITE/KELP TAN 2KX,  URBAN NAVY/KELP TAN 8XV', '5.0', 'Ultra-warm and hearty, Sherpa fleece jacket for stylish and classic, fuss-free warmth.', '179.99'),
(7, 'jacket-2.png', 'Vans Women\'s Misty Fog Fleece Jacket', 'WHITE, BLACK', '4.2', 'The Misty Fog Jacket is a 71% polyester, 29% acrylic Sherpa bomber jacket with a front zip, rib knit at the neck, elastic trimming, and logo embroidery at the chest pocket.', '90.97'),
(8, 'jacket-3.png', 'Helly Hansen Women\'s Long Belfast Insulated Jacket', 'BLACK, NAVY, BELUGA, NIMBUS CLOUD 823, IVY GREEN 491, GRAPHITEBLUE', '4.5', 'Being out in a cold, driving rain is not what most people call fun but when you’re wearing your Helly Hansen Long Belfast Women’s Insulated Jacket you’ll definitely be making the best of a not-so-great situation.  Sealed seams keep out the water and wind while the superior insulation keeps your teeth from chattering.', '219.99'),
(9, 'jacket-4.png', 'Vans Women\'s Foundry Puffer Insulated Jacket', 'POTTERS CLAY UXS, GRAPE LEAF', '3.8', 'The Foundry Puffer MTE Jacket is a 100% polyester fashion puffer jacket that fuses all-weather function with the Vans classic California style. Featuring 1K Durable Water Repellant coating, the Foundry Puffer MTE Jacket also includes a high neck, circle zipper pull, DuPont fill, and a gel logo screen print at the chest.', '90.98'),
(10, 'jacket-5.png', 'Vans Women\'s Fawner Puffer Jacket', 'GIBRALTAR SEA, NOSTALGIA ROSE UXQ', '4.7', 'The Fawner Puffer Jacket is a 100% polyester oversized fashion puffer jacket with a snap-front closure, Sherpa trim at the collar and sleeves, and fleece lining. It also includes 9 oz. DuPont fill, welt pockets, and a logo patch at the chest. Model is 178 cm tall and wearing a size Small.', '95.98'),
(11, 'top-1.png', 'McKINLEY Women\'s Madisyn Graphic Hoodie', 'FIG/RED PLUM', '2.7', 'A soft, comfortable McKINLEY graphic Madisyn t-shirt is great to wear any day.', '37.49'),
(12, 'top-2.png', 'O\'Neill Women\'s Quilted Team Hoodie ', 'TEAL', '4.0', 'On chilly days, you and the O’Neill Women’s Quilted Team Hoodie - Teal will be the ultimate team. While this hooded sweatshirt for women makes a stylish statement, its quilted body helps to hold your body heat in, so you can stay warm during your daily adventures.', '44.97'),
(13, 'top-3.png', 'Reebok Women\'s Classics Big Vector Sweatshirt', 'PIXEL PINK', '3.5', 'Show off your sporty pride. This women’s sweatshirt has a bold Vector logo for a loud and proud look. Raglan sleeves and ribbing give it a classic style. Cotton French terry adds plush softness.', '69.99'),
(14, 'top-4.png', 'Champion Women\'s Heritage Taped Sweatshirt', 'ATHLETIC NAVY', '5.0', 'Women’s Champion Heritage Crewneck with taping detail is light weight and soft for all day wear.', '74.99'),
(15, 'top-5.png', 'Nike Sportswear Women\'s Heritage Sweatshirt', 'CELESTINE BLUE/TEAM RED/WHITE/RED, LAVENDER MIST, ECHO PINK', '1.2', 'Repping the iconic chevron design lines, the Nike Sportswear Heritage Women’s Crew has lightly brushed French terry fleece fabric for a soft, comfortable feel.', '54.97'),
(16, 'pants-1.png', 'McKINLEY Women\'s Shalda Softshell Pants', 'BLACK', '3.5', 'When you’re hiking or in the mountains, the McKINLEY Shalda women’s softshell pants provide all the technology you need to keep out the bad weather. Windproof VENTMAX Elite gives extra comfort through enhanced breathability, while the eco-friendly Aquapel™ finish keeps out the wet with excellent water repellency. The addition of elastane together with the shaped knees ensures freedom of movement with every step. The integrated belt provides an optimal fit.', '79.99'),
(17, 'pants-2.png', 'Under Armour Women\'s Tech 2.0 Pants', 'BLACK', '4.2', 'The UA Tech™ Pants dry quickly and are ultra-soft for all day comfort.', '59.99'),
(18, 'pants-3.png', 'Nike Sportswear Women\'s Heritage Velour Pants', 'BLACK', '5.0', 'Not your average sweats, the Nike Sportswear Heritage Pants have thick velour fabric for a super soft feel and ribbed cuffs that show off your kicks.', '71.25'),
(19, 'pants-4.png', 'PUMA Women\'s Essential Velour Pants', 'VINEYARD WINE', '5.0', 'Gift yourself with the soft feel and premium fit of PUMA’s Essentials Velour Sweatpants.', '44.97'),
(20, 'pants-5.png', 'Nike Women\'s Therma Fleece Pants', 'BLACK/WHITE', '5.0', 'Perfect for cold-weather training, the Nike Therma Pants feature soft, breathable fabric that helps keep you warm and comfortable. Zippers at the ankles make them easy to take on and off.', '55.50'),
(21, 'hat-1.png', 'Nike Women\'s Futura Classic Hat', 'LAVENDERVMIST/SANDED PURPLE', '5.0', 'Classic and comfortable, the Nike Sportswear Heritage86 Women’s Cap features a 6-panel design made from cotton twill fabric and an adjustable closure for a snug, secure fit.', '16.50'),
(22, 'hat-2.png', 'adidas Women\'s New Core Hat', 'BLACK/WHITE', '5.0', 'This cap keeps it simple with clean lines and a linear adidas logo. It’s made from smooth polyester, with a six-panel construction and pre-curved brim. An adjustable snap closure in the back helps you find the right fit.', '15.97'),
(23, 'hat-3.png', 'Under Armour Men\'s Perfect Lifestyle Dad Hat', 'CITY KHAKI/MINK GRAY/TRUFFLE GRAY', '5.0', 'Rock Some Under Armour Style With This Comfortable “Dad Cap,” Featuring Woven Chambray Fabric And An Adjustable Strap Closure. The Built-In HeatGear Sweatband Wicks Away Sweat, And The Suede Ua Patch Logo Completes The Look. Ua Free Fit Features A Pre-Curved Visor And Unstructured Front Panels That Conform To Your Head And Offer A Sleek, Low Profile Fit.', '14.88'),
(24, 'hat-4.png', 'Roxy Women\'s Castro Military Hat', 'ANTHRACITE', '5.0', 'The Roxy Women’s Castro Military Hat features include a cotton twill fabric, adjustable back closure, embroidery logo and size: 22\" / 56 cm', '29.99'),
(25, 'hat-5.png', 'Montreal Canadiens Dad Adjustable Slouch Hat', 'NAVY', '5.0', 'Represent the Habs wherever you roam with the Montreal Canadiens Dad Adjustable Slouch Hat. The officially licensed hat from adidas has a relaxed, slouchy fit and shows off a flat embroidered micro logo design.', '15.97'),
(26, 'bag-1.png', 'Nike Men\'s Brasilia Duffel Bag', 'FLINT GREY/BLACK/WHITE', '5.0', 'The Nike Brasilia Training Duffel Bag (Medium) Features A Durable Design And A Spacious Main Compartment Built For The Daily Grind. Its Padded Shoulder Strap Offers Comfortable Carrying, While A Mesh Exterior Pocket Provides Convenient Storage.', '31.50'),
(27, 'bag-2.png', 'Warrior Pro Carry Bag Covert', 'BLACK', '4.3', 'Make a statement before the game even starts with the Warrior Pro Carry Bag Covert. With pro locker room size and specifications used by pro teams, a large and durable main compartment and internal mesh skate pockets, you will be ready for anything the game throws your way.', '99.99'),
(28, 'bag-3.png', 'Wilson Super Tour 2 9R Comp Bag', 'RED', '5.0', 'Minimalistic design meets remarkable functionality with the large Super Tour 2 Comp. This bag holds up to 9 rackets and includes a plethora of features optimized for serious tennis players: dual air vents to let your equipment and gear breathe, Thermoguard lining to protect objects from extreme heat, and an interior hidden zippered pocket to house valuables you like to carry with you on the road. Adjustable backpack and shoulder straps provide dual carrying options, while an extra compartment makes it possible to hide the shoulder straps.', '119.97'),
(29, 'bag-4.png', 'adidas Midvale Plus Backpack', 'BLACK/WHITE', '4.5', 'This bag brings smart organisation to your gear. It’s designed with a total of four pockets inside and out, including a compartment for your laptop. Cushy shoulder straps and a padded back panel make it comfortable to carry.\r\n', '52.49'),
(30, 'bag-5.png', 'Vans Deana III Backpack', 'SPANISH VILLA', '3.5', 'The Vans Deana III Backpack has one large main compartment, padded shoulder straps for extra comfort, a zippered front pocket with an organiser to help keep things tidy and the Vans logo patch to the front. It measures 42.5 h x 32.4 w x 12.4 d cm and has a 22 litre capacity.', '40.97'),
(31, 'socks-1.png', 'adidas Women\'s Cush Varigated No Show Socks', 'BLACK/BAHIA MAGENTA/HI RES BLUE/SEMI SOL', '4.6', 'Cushioned in the foot for comfort and durability. Arch compression gives you a secure and snug fit. Climalite moisture-wicking keeps your feet dry from sweat.', '19.99'),
(32, 'socks-2.png', 'Nike Women’s Everyday Lightweight No Show - 6 Pack', 'MUTI COLOR', '5.0', 'Stay cool and focused in the Nike Everydat Training Socks. They feature swet-wicking technology and breathable fabric at the top of the foot', '18.00'),
(33, 'socks-3.png', 'Nike Women\'s Dri-FIT Cushion Quarter Socks - 3 Pairs', 'BLACK-913, WHITE', '5.0', 'Women\'s Nike Everyday Cushioned Ankle Training Socks (3 Pair) feature sweat-wicking technology and mesh fabric at the top of the foot for enhanced ventilation and moisture management. Spandex support is twice as thick as previous versions, providing you with an improved fit.', '13.50'),
(34, 'socks-4.png', 'adidas Women\'s SL Stripe II 3 Pack Low Cut Socks', 'PURPLE', '5.0', 'Throw a pair of these adidas socks into your gym bag. They’re lightweight and ventilated, so you stay comfortable through any training session. The low-cut length is designed to hit just above the ankle.', '19.99'),
(35, 'socks-5.png', 'Under Armour Women’s Essentials No Show Sock - 6 Pack', 'BLUE HEIGHT/ASST', '1.0', 'The WOMEN’S ESSENTIALS is lightweight and durable enough for everyday activites. It has an updated stitch design for a more flattering silhouette.', '24.99');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(10) NOT NULL,
  `user_pass` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`user_id`, `user_name`, `user_pass`) VALUES
(1, 'dd', 1234);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `tbl_cat_pro`
--
ALTER TABLE `tbl_cat_pro`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_cat_pro`
--
ALTER TABLE `tbl_cat_pro`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
