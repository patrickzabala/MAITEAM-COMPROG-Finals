-- phpMyAdmin SQL Dump
-- version 4.5.4.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 27, 2018 at 09:54 AM
-- Server version: 5.7.11
-- PHP Version: 5.6.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `comprogfinals`
--

-- --------------------------------------------------------

--
-- Table structure for table `alcohol`
--

CREATE TABLE `alcohol` (
  `id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_detail` tinytext NOT NULL,
  `product_image` varchar(255) NOT NULL,
  `qty` int(5) NOT NULL,
  `price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `alcohol`
--

INSERT INTO `alcohol` (`id`, `product_name`, `product_detail`, `product_image`, `qty`, `price`) VALUES
(130, 'GreenCross Isopropyl Alcohol', 'The GreenCross Isopropyl 70% Alcohol is always recommended to prevent cross-contamination when water and soap is not available. The Green Cross Isopropyl Alcohol has moisturizer, thus your hand feels soft.', 'https://www.bayanmall.com/image/cache/data/7-25-2013/IMG_7300-700x700_0.jpg', 64, '150.00'),
(131, 'Casino Ethyl Alcohol', 'Casino Ethyl Alcohol especially formulated with improved fragrance deal for general home and hospital use. Casino Ethyl alcohol is made from 70% ethyl alcohol which disinfects and protects the skin from germs and viruses without drying the skin.', 'https://www.rosepharmacy.com/ph1/wp-content/uploads/2016/08/casino-ethyl-alcohol-FEMME-500ml.png', 72, '73.00'),
(132, 'Family Rubbing Alcohol', 'Very effective at cleaning wounds. A great addition to the first aid kit. I also use this, with salt, to clean out glass pieces, and works amazing! Makings my glass sparkly clean, and cleans off hard-to-remove stains. ', 'http://www.pinoyplaza.com/files/19601/products/10600022/27200_family_brand_alcohol_copy.jpg', 42, '70.00');

-- --------------------------------------------------------

--
-- Table structure for table `beer`
--

CREATE TABLE `beer` (
  `id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_detail` tinytext NOT NULL,
  `product_image` varchar(255) NOT NULL,
  `qty` int(5) NOT NULL,
  `price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `beer`
--

INSERT INTO `beer` (`id`, `product_name`, `product_detail`, `product_image`, `qty`, `price`) VALUES
(10, 'Pale Pilsen', 'It is a pale golden lager with rich, full-bodied flavors. Its smooth, full-flavored taste complements its pleasant aroma, making it a perfectly balanced beer.', 'https://drizly-products1.imgix.net/ci-san-miguel-pale-pilsen-f02f051e25bab397.jpeg', 142, '28.00'),
(11, 'Colt 45', 'Slightly sweet and super smooth, COLT 45 is the malt liquor that works every time. Colt 45 Pile Driver is an exquisite tasting orange flavored malt liquor containing natural orange juice concentrate.', 'https://static.wixstatic.com/media/40ccf3_fd9622607fbf4eab8c8fad47337fc639.jpg/v1/fill/w_420,h_420,q_85,usm_0.66_1.00_0.01/40ccf3_fd9622607fbf4eab8c8fad47337fc639.jpg', 132, '33.00'),
(12, 'San Miguel Super Dry', 'San Miguel Super Dry is brewed from a blend of the choicest hops that come from the US, Germany and the Czech Republic. Through a special drying process, San Miguel Super Dry leaves us with a brilliant light amber lager with strong, aromatic hop notes.', 'https://cdn.shopify.com/s/files/1/1335/2603/products/drinkka-san-miguel-super-dry-330ml_1024x1024.jpg?v=1516902717', 149, '53.00'),
(13, 'Gold Eagle', 'The ultimate reward to a hard day\'s work is Gold Eagle Beer. It is moderately light bodied, yet flavorful, hopped just enough to give a little bite on the finish bringing out an over-all "easy drinking" character.', 'https://images.summitmedia-digital.com/esquiremagph/images/2017/11/17/beer-gold-eagle.jpg', 169, '50.00'),
(14, 'San Miguel Light', 'San Mig Light is the country\'s leading low calorie beer with only 100 calories per 330ml serving. That\'s why you\'ll feel so light as you enjoy its full beer flavor that hits just right.', 'https://drizly-products0.imgix.net/ci-san-miguel-light-89b189a70deaef9b.jpeg', 194, '32.75'),
(15, 'Red Horse', 'Red Horse Beer is your extra strong beer that brings you that pure alcoholic experience. It is not your ordinary beer - rebellious and flavorful yet bold and intense. It is sweet and bitter smooth, giving you a fueled kick.', 'https://witavenue.com/wp-content/uploads/2017/05/136-Red-horse-Stalion.jpg', 172, '40.00');

-- --------------------------------------------------------

--
-- Table structure for table `beverages`
--

CREATE TABLE `beverages` (
  `id` int(11) NOT NULL,
  `product_name` varchar(60) NOT NULL,
  `product_detail` tinytext NOT NULL,
  `product_image` varchar(60) NOT NULL,
  `qty` int(5) NOT NULL,
  `price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `beverages`
--

INSERT INTO `beverages` (`id`, `product_name`, `product_detail`, `product_image`, `qty`, `price`) VALUES
(1, 'asd', 'TEST', 'https://i.imgur.com/gVaAf5o.jpg', 12, '5000.00'),
(2, 'IPSUM', 'T', 'https://i.imgur.com/gVaAf5o.jpg', 0, '200.00'),
(3, 'DOLOR', 'T', 'https://i.imgur.com/gVaAf5o.jpg', 15, '1000.00'),
(4, 'SIT', 'T', 'https://i.imgur.com/gVaAf5o.jpg', 5, '560.00'),
(5, 'asd', '11', 'https://i.imgur.com/gVaAf5o.jpg', 5, '12321.00'),
(6, 'asd', '11', 'https://i.imgur.com/gVaAf5o.jpg', 0, '11.00');

-- --------------------------------------------------------

--
-- Table structure for table `bottledwater`
--

CREATE TABLE `bottledwater` (
  `id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_detail` tinytext NOT NULL,
  `product_image` varchar(255) NOT NULL,
  `qty` int(5) NOT NULL,
  `price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bottledwater`
--

INSERT INTO `bottledwater` (`id`, `product_name`, `product_detail`, `product_image`, `qty`, `price`) VALUES
(20, 'Wilkins Distilled Water', 'Wilkins Distilled Water is the Most Trusted drinking water by moms. It goes through a state-of-the-art purification and distillation process.', 'https://assets.honestbee.com/products/images/480/robinsons_104979_104979-1.jpg', 124, '23.00'),
(21, 'Absolute Bottled Water', 'Absolute Bottled Water provides the best quality spring water to Chesapeake, VA. Visit us today to learn more about our water cooler rental.', 'https://assets.honestbee.com/products/images/480/robinsons_100331_100331-1.jpg', 123, '22.00'),
(22, 'Summit', 'Summit Natural Drinking Water is the official bottled water of Philippine National athletes. It has helped aspiring Filipino athletes maintain superior concentration and athletic edge with minerals that boost their hydration level.', 'https://assets.honestbee.com/products/images/480/robinsons_100370_100370-1.jpg', 142, '23.75'),
(23, 'Nature\'s Spring', 'Nature Spring Purified Water provides many Filipino families with affordable and safe purified water to drink. Nature Spring purified water is made from state-of-the-art processing equipment and technology.', 'https://assets.honestbee.com/products/images/480/robinsons_404200_404200-1.jpg', 163, '14.50');

-- --------------------------------------------------------

--
-- Table structure for table `candies`
--

CREATE TABLE `candies` (
  `id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_detail` tinytext NOT NULL,
  `product_image` varchar(255) NOT NULL,
  `qty` int(5) NOT NULL,
  `price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `candies`
--

INSERT INTO `candies` (`id`, `product_name`, `product_detail`, `product_image`, `qty`, `price`) VALUES
(80, 'Chupa Chups', 'Chupa Chups is a popular Spanish brand of lollipop and other confectionery sold in over 150 countries around the world.', 'https://cdn0.woolworths.media/content/wowproductimages/large/085155.jpg', 214, '10.00'),
(81, 'Maxx', 'The soothing menthol candy, inspires people to give their best in any pursuit.', 'https://i.ebayimg.com/images/g/7GUAAOSwT2JZlMNn/s-l300.jpg', 129, '45.00');

-- --------------------------------------------------------

--
-- Table structure for table `carbonateddrinks`
--

CREATE TABLE `carbonateddrinks` (
  `id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_detail` tinytext NOT NULL,
  `product_image` varchar(255) NOT NULL,
  `qty` int(5) NOT NULL,
  `price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `carbonateddrinks`
--

INSERT INTO `carbonateddrinks` (`id`, `product_name`, `product_detail`, `product_image`, `qty`, `price`) VALUES
(30, 'Coca Cola', 'Coca-Cola is the most popular and biggest-selling soft drink in history, as well as one of the most recognizable brands in the world.', 'http://likemoreitalia.com/wp-content/uploads/2017/05/5449000130389.jpg', 203, '60.00'),
(31, 'Pepsi Cola', 'Pepsi is a carbonated soft drink produced and manufactured by PepsiCo.', 'https://shop.countdown.co.nz/Content/ProductImages/large/9414789100003.jpg/Pepsi-Soft-Drink-Cola.jpg', 193, '60.75'),
(32, 'Mountain Dew', 'Mountain Dew is a carbonated soft drink brand produced and owned by PepsiCo. The original formula was invented in 1940 by Tennessee beverage bottlers Barney and Ally Hartman.', 'https://grocermart.com/image/cache/data/Pepsi/mountaindew-1800x1800.jpg', 123, '59.25'),
(33, 'Royal Tru Orange', 'Royal Tru is a carbonated fruit-flavored soft drink brand owned by The Coca-Cola Company that is only available in the Philippines. The brand was introduced in 1922 by the original San Miguel Brewery.', 'http://www.grocerydelivery.com.ph/media/catalog/product/cache/1/image/600x600/3c611a3875f53f07ed46ad68eaf45b36/1/x/1x1_royal_1.5l_1.jpg', 192, '60.00'),
(34, 'Mirinda', 'Mirinda is a brand of soft drink originally created in Spain in 1959, with global distribution. Its name means admirable in Esperanto, spoken by its creator.', 'http://shopitsoon.com/image/cache/sellers/46/mirinda_warangal_hyderabd_shopitsoon-800x800.jpg', 115, '67.75'),
(35, 'Sprite', 'Sprite is a colourless, caffeine-free, lemon and lime-flavored soft drink created by The Coca-Cola Company.', 'https://www.hi5mart.com/image/cache/catalog/DRINKS%20AND%20BEVERAGES/sprite/sprite%201.5l-750x750.jpg', 142, '60.00'),
(36, 'RC Cola', 'RC Cola, short for Royal Crown Cola, is a cola-flavored soft drink developed in 1905 by Claud A. Hatcher, a pharmacist in Columbus, Georgia, United States of America.', 'https://source.unitop.com.ph//upload/2016/11/16/20161116101336265.jpg', 154, '49.00');

-- --------------------------------------------------------

--
-- Table structure for table `deodorant`
--

CREATE TABLE `deodorant` (
  `id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_detail` tinytext NOT NULL,
  `product_image` varchar(255) NOT NULL,
  `qty` int(5) NOT NULL,
  `price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `deodorant`
--

INSERT INTO `deodorant` (`id`, `product_name`, `product_detail`, `product_image`, `qty`, `price`) VALUES
(150, 'Rexona', 'Rexona is a deodorant and antiperspirant brand founded in Australia and manufactured by Unilever. While marketed under the Rexona name in most countries, it is known as Sure in the United Kingdom.', 'https://images-na.ssl-images-amazon.com/images/I/51-9BjCFVRL._SX522_.jpg', 94, '84.00'),
(151, 'Milcu', 'Milcu was founded by Milagros Cusi with a mission: to help millions of people eliminate body odor naturally and effectively. For over 50 years, Milcu has been proven and tested by its consumers to be the best All Natural deodorant.', 'http://www.bigbag.com.ph/wp-content/uploads/2015/12/Milcu-Underarm-and-Foot-Deodorant-Powder-80g.jpg', 92, '113.00'),
(152, 'Nivea Dry Comfort', 'NIVEA Dry Comfort deodorant offers 48-hour protection and a dry skin feeling. Its DryPlus System is formulated with minerals to give you effective regulation of perspiration and extra dry protection from sweat and odor to keep you fresh all day.', 'https://cloudfront.beautyheaven.com.au/sites/default/files/products/NIVEA-Invisible-Black-%26-White-Clear-Aerosol-Deodorant-250mL-1.jpg', 82, '113.00'),
(153, 'Belo Essentials', 'Belo Essentials\' beauty deodorants provide total underarm care. It effectively minimize pores and smoothen underarm skin, and prevents redness and soothes skin.', 'http://static.sampleroom.ph/image/cache/data/body-care/Belo/BE006/sr_BE006_a_OS-500x500.jpg', 92, '195.00'),
(154, 'Dove Deodorant', 'This antiperspirant deodorant for sensitive skin has an unscented and alcohol (ethanol) free formula for protection against sweat that’s kind to skin.', 'https://img.makeupalley.com/1/4/0/2/1984993.JPG', 92, '99.00');

-- --------------------------------------------------------

--
-- Table structure for table `drinks`
--

CREATE TABLE `drinks` (
  `id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_detail` tinytext NOT NULL,
  `product_image` varchar(255) NOT NULL,
  `qty` int(5) NOT NULL,
  `price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `drinks`
--

INSERT INTO `drinks` (`id`, `product_name`, `product_detail`, `product_image`, `qty`, `price`) VALUES
(50, 'Mogu Mogu', 'Mogu Mogu Juice Drink with Nata De Coco Bits is manufactured by Sapanan General Food Co. Ltd., a company based in Bangkok, Thailand.', 'http://tobiasnew.ballenasbusiness.com/wp-content/uploads/2017/05/8850389100684.jpg', 205, '29.00'),
(51, 'Fit N Right', 'Fit n Right is a new tasty health drink developed by Del Monte.', 'https://cdn.i.haymarketmedia.asia/?n=campaign-asia%2fcontent%2fFnR_PineOrange%5b1%5d.jpg&h=570&w=855&q=100&v=20170226&c=1', 192, '24.25'),
(52, 'C2 Green Tea', 'C2 Green Tea is a bottled green tea beverage produced and manufactured by Universal Robina. The drink was first manufactured in the Philippines.', 'http://www.wecareforhome.ph/wp-content/uploads/2015/12/c2-green-tea.jpg', 157, '19.50'),
(53, 'Del Monte Pineapple Juice', 'Build your immunity everyday with Del Monte 100% Pineapple Juice. Every sip is loaded with nature\'s phytochemicals plus Vitamins A, C and E.', 'https://www.lifegetsbetter.ph/uploads/products/del-monte-100-pineapple-juice-with-vitamins-ace-can-504x308.png', 125, '65.50'),
(54, 'Minute Maid Pulpy Orange', 'Minute Maid is a product line of beverages, usually associated with lemonade or orange juice, but which now extends to soft drinks of many kinds, including Hi-C.', 'https://5.imimg.com/data5/QU/QH/MY-21356805/minute-maid-pulpy-orange-juice-500x500.jpg', 193, '24.00'),
(55, 'Real Leaf Green Tea', 'Real Leaf Green Tea is made of natural green tea leaves, honey and fruit flavors such as apple, lemon and lychee.', 'http://snlonlinegrocery.com/wp-content/uploads/2016/10/Real-leaf-honey-apple.jpg', 158, '20.00');

-- --------------------------------------------------------

--
-- Table structure for table `energydrinks`
--

CREATE TABLE `energydrinks` (
  `id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_detail` tinytext NOT NULL,
  `product_image` varchar(255) NOT NULL,
  `qty` int(5) NOT NULL,
  `price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `energydrinks`
--

INSERT INTO `energydrinks` (`id`, `product_name`, `product_detail`, `product_image`, `qty`, `price`) VALUES
(40, 'Gatorade', 'The Gatorade Company, Inc. is an American manufacturer of sports-themed beverage and food products, built around its signature line of sports drinks.', 'http://www.maishasupermarket.co.tz/image/cache/beverages/Aug12_gatorade-500x500-500x500.jpg', 192, '36.75'),
(41, 'Sting', 'Sting Energy Drink is a carbonated energy drink from PepsiCo International.', 'https://images-na.ssl-images-amazon.com/images/I/61siFDLbvjL._SX425_.jpg', 174, '20.25'),
(42, 'Kratos', 'Kratos Strong Coffee is a new ready-to-drink coffee product made from dark roasted coffee beans. Infused with single and double shots of espresso to give you that strong, refreshing taste, ready to enjoy anytime, anywhere.', 'http://www.bigbag.com.ph/wp-content/uploads/2016/07/Kratos-Strong-Coffee-Cafe-Mocha-240ml.jpg', 162, '26.75'),
(43, 'Red Bull', 'Red Bull is an energy drink sold by Red Bull GmbH, an Austrian company created in 1987.', 'https://groceries.morrisons.com/productImages/212/212476011_0_640x640.jpg?identifier=6f40237746adeca522851498fad7310a', 153, '75.00');

-- --------------------------------------------------------

--
-- Table structure for table `featured`
--

CREATE TABLE `featured` (
  `id` int(11) NOT NULL,
  `product_image` varchar(255) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_detail` varchar(255) NOT NULL,
  `qty` int(5) NOT NULL,
  `price` double(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `featured`
--

INSERT INTO `featured` (`id`, `product_image`, `product_name`, `product_detail`, `qty`, `price`) VALUES
(1, 'https://www.fortunaonline.net/media/catalog/product/cache/1/image/650x/040ec09b1e35df139433887a97daa66f/p/a/payfrij001-del-monte-100_-pineapple-juice-240ml_1.png', 'Del Monte Pineapple Juice', 'Pineapple Juice', 94, 40.00),
(2, 'https://cdn7.bigcommerce.com/s-um6op5fe4t/images/stencil/1280x1280/products/451/1553/COBRA_ENERGY_DRINK_350ML__12561.1499044374.jpg?c=2&imbypass=on&imbypass=on', 'Cobra Energy Drink', 'Cobra Energy Drink', 102, 24.75),
(3, 'http://static2.coffscordials.com.au/image/cache/data/products/xGABB-max-350-600.jpg.pagespeed.ic.oePU2lGDlo.webp', 'Gatorade Fierce Blue Bold', 'Energy Drink', 126, 45.00),
(4, 'https://cdn0.woolworths.media/content/wowproductimages/large/038121.jpg', 'Coca Cola', 'Cola Drink', 89, 60.00),
(5, 'https://i.imgur.com/gVaAf5o.jpg', 'Hotdog Sandwich', 'Hotdog Sandwich', 46, 35.00),
(6, 'https://images-na.ssl-images-amazon.com/images/I/71O7ZergaWL._SL1500_.jpg', 'Toblerone', 'Chocalate', 115, 70.00),
(7, 'http://www.bigbag.com.ph/wp-content/uploads/2015/12/Nestle-Yogurt-Fruit-Selection-Yummy-Strawberry-Flavor-125g.png', 'Nestle Strawberry Yogurt', 'Low fat Yogurt', 72, 29.75),
(8, 'http://shannonpresson.com/dash/wp-content/uploads/2015/10/donuts.png', 'Donuts', 'D\'oh-nuts', 99, 20.00);

-- --------------------------------------------------------

--
-- Table structure for table `frozenfood`
--

CREATE TABLE `frozenfood` (
  `id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_detail` tinytext NOT NULL,
  `product_image` varchar(255) NOT NULL,
  `qty` int(5) NOT NULL,
  `price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `frozenfood`
--

INSERT INTO `frozenfood` (`id`, `product_name`, `product_detail`, `product_image`, `qty`, `price`) VALUES
(70, 'Selecta Black Forest', 'RFM manufactures Selecta milk products which were made from cow\'s milk. ', 'http://www.davaoonlinegrocery.com/wp-content/uploads/2017/01/selecta-cream-black-forest-flavor-1.5L.jpg', 90, '250.00'),
(71, 'Yogurt', 'Diet? Have a taste of our freshly cultured yougurt!', 'http://www.bigbag.com.ph/wp-content/uploads/2015/12/Nestle-Yogurt-Fruit-Selection-Berry-Mix-Medley-Flavor-125g.png', 142, '30.00');

-- --------------------------------------------------------

--
-- Table structure for table `lotion`
--

CREATE TABLE `lotion` (
  `id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_detail` tinytext NOT NULL,
  `product_image` varchar(255) NOT NULL,
  `qty` int(5) NOT NULL,
  `price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lotion`
--

INSERT INTO `lotion` (`id`, `product_name`, `product_detail`, `product_image`, `qty`, `price`) VALUES
(140, 'Vaseline Healthy White Instant', 'Vaseline Instant Fair Lotion is the newest member of Vaseline\'s extensive line of products. It is an instant whitening lotion that allows for fairer and even-toned skin in just one application.', 'http://www.vaseline.com.my/assets/images/products/healthy-white/instant-fair-100ml.png?v=1', 93, '145.00'),
(141, 'Nivea Healthy White Serum', 'The lotion/serum is lightweight and non-sticky and gets absorbed into the skin like magic. It gives a bit of healthy luster to the skin and smells light and nice.', 'https://livingbeautymakeup.files.wordpress.com/2013/02/d599c-imag0611.jpg', 104, '150.00'),
(142, 'Belo Intensive Whitening', 'Belo Intensive Whitening product range boasts of a unique combination of today\'s two most powerful whitening actives – Kojic Acid and Tranexamic Acid.', 'https://1.bp.blogspot.com/-eEJmmsKz8m0/VRq_eiv5YvI/AAAAAAAAMLE/oj9PqrR3lWE/s1600/DSC_0144.JPG', 63, '200.00'),
(143, 'Silka Premium Whitening', 'Silka lotion with SPF30 whitens, nourishes and protects your SKIN from sun damage anytime you’re outdoor and even on a cloudy day.', 'https://www.kuyastindahan.co.uk/images/silka-premium-papaya-skin-lightening-lotion-spf30-200ml-p542-911_image.jpg', 94, '166.00');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `price` int(255) NOT NULL,
  `qty` int(255) NOT NULL,
  `total` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `readytoeat`
--

CREATE TABLE `readytoeat` (
  `id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_detail` tinytext NOT NULL,
  `product_image` varchar(255) NOT NULL,
  `qty` int(5) NOT NULL,
  `price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `readytoeat`
--

INSERT INTO `readytoeat` (`id`, `product_name`, `product_detail`, `product_image`, `qty`, `price`) VALUES
(60, 'Siopao', 'Well cooked, ready made tasty steamed bun.', 'https://chowkingdelivery.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/c/h/chunky_asado_siopao.png', 89, '59.00'),
(61, 'Donuts', 'Fried dough confectionery dessert food. Filled with any flavors of your choice!', 'https://img.grouponcdn.com/deal/h1WHoV2nGh2wXtnJg4zj/6b-2048x1229/v1/c700x420.jpg', 98, '49.00'),
(62, 'Hotdog in a Bun', 'Freshly made hotdog covered in fluffy, tasty and healthy bread bun. Enjoy and crave in delicious taste of our sausage sandwich!', 'https://i.imgur.com/bB7iphgh.jpg', 103, '50.00');

-- --------------------------------------------------------

--
-- Table structure for table `saltysnacks`
--

CREATE TABLE `saltysnacks` (
  `id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_detail` tinytext NOT NULL,
  `product_image` varchar(255) NOT NULL,
  `qty` int(5) NOT NULL,
  `price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `saltysnacks`
--

INSERT INTO `saltysnacks` (`id`, `product_name`, `product_detail`, `product_image`, `qty`, `price`) VALUES
(90, 'Piattos', 'A breakthrough in potato snacks. ... When you taste its rich flavour and feel its unique, thin texture, you\'ll know why there\'s no other snack like Piattos.', 'https://images-na.ssl-images-amazon.com/images/I/71pjkrM5AXL._SY450_.jpg', 192, '26.00'),
(91, 'Chippy', 'Chippy is a popular chichiria often bought by Filipinos in sari-sari stores, groceries, snack stalls and malls.', 'https://i5.walmartimages.ca/images/Large/101/328/999999-4800016101328.jpg', 185, '17.10'),
(92, 'Marty\'s Cracklin\'', 'Vegetarian or not, you can enjoy both the flavor and crunch of Oishi Marty\'s Cracklin\' Plain Salted Flavor Vegetarian Chicharon without the guilt of real chicharon.', 'https://cdn7.bigcommerce.com/s-um6op5fe4t/images/stencil/1280x1280/products/829/2358/Oishi_Martys_Cracklin_Plain_Salted_22g__81439.1500537327.jpg', 152, '8.00'),
(93, 'Lala Fish Cracker', 'Crackers with fish taste, a true asian treat! Seasoned with Salt and Vinegar.', 'http://www.bigbag.com.ph/wp-content/uploads/2016/01/Lala-Fish-Crackers-30g.png', 215, '8.00'),
(94, 'Cheezy Corn Crunch', 'Cheezy the outrageously cheesy snack. With tons and tons of real cheese loaded up on an ultra crunchy new corn snack, Cheezy will surely cure your every cheese craving.', 'http://img.mysupermarket.co.uk/Live/Products_1000/65/261865.jpg', 237, '16.50'),
(95, 'Nova', 'People can still aim for that sexy beach body without the guilt with the newest Jack n Jill Nova Multigrain Snack Bars. It\'s a delicious treat that contains fiber-rich ingredients like rice, wheat and corn.', 'http://www.grocerydelivery.com.ph/media/catalog/product/cache/1/image/600x600/3c611a3875f53f07ed46ad68eaf45b36/n/o/nova_country_cheddar_flavor_multigrain_chips_40g.jpg', 242, '12.00'),
(96, 'Clover Barbeque', 'Clover Chips Corn Chips is the favorite snack you will never get tired of munching. Taste and delight yourself with Clover and invite your barkada to an enjoyable snack.', 'http://cdn1.bigcommerce.com/server2500/v5k7al/products/1925/images/549/CloverBBQ__76946.1370223164.1280.1280.jpg', 173, '16.00'),
(97, 'Crispy Patata', 'Through the years, Oishi is known in providing wonderful and tasty snacks and finger food for different walks of life. And Crispy Patata is one of \'em.', 'http://www.grocerydelivery.com.ph/media/catalog/product/cache/1/image/600x600/3c611a3875f53f07ed46ad68eaf45b36/o/i/oishi_crispy_patata_90g.jpg', 225, '17.50'),
(98, 'Mr. Chips', 'What\'s in a Mr. Chips chip? Triangular shaped corn chips loaded with mucho Nacho Cheese that spell a whole lot of fun and a whole lot of goodness. ', 'http://www.grocerydelivery.com.ph/media/catalog/product/cache/1/image/600x600/3c611a3875f53f07ed46ad68eaf45b36/3/3/3392_1.jpg', 187, '18.50'),
(99, 'VCut', 'Made from 100% fresh potatoes, these large ridge-sliced chips are so crisp and tasty you\'ll keep coming back for more. So, take the heat and chow down on Potato Chips Vcut Spicy Barbecue!', 'http://cdn1.bigcommerce.com/server2500/v5k7al/products/1933/images/136/VCutChipsOnionGarlic__90081.1364235033.1280.1280.jpg', 199, '11.50');

-- --------------------------------------------------------

--
-- Table structure for table `soapshampoo`
--

CREATE TABLE `soapshampoo` (
  `id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_detail` varchar(255) NOT NULL,
  `product_image` varchar(255) NOT NULL,
  `qty` int(5) NOT NULL,
  `price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `soapshampoo`
--

INSERT INTO `soapshampoo` (`id`, `product_name`, `product_detail`, `product_image`, `qty`, `price`) VALUES
(110, 'Safeguard', 'Safeguard Soap, a reliable and respected Proctor & Gamble product, is an antibacterial and deodorant soap that is recommended for normal skin types. Safeguard Bar Soap is effective for preventing body odor and fighting bacteria and germs.', 'http://www.grocerydelivery.com.ph/media/catalog/product/cache/1/image/600x600/3c611a3875f53f07ed46ad68eaf45b36/0/4/04902430495073_82255497_productimage_inpackage_front_center_1_safeguard_1_.jpg', 74, '25.00'),
(111, 'Palmolive Naturals', 'Palmolive Naturals Silky Shine Effect shampoo is balanced care developed for normal hair. The silky formula contains Silk Proteins and extracts of 100% natural origin of Olive and Aloe Vera, know for its hydrating properties.', 'https://cloudfront.beautyheaven.com.au/sites/default/files/products/Palmolive%20Naturals%20Active%20Nourishment%20Shampoo%20350mL_bh.jpg', 84, '10.00'),
(112, 'Dove', 'The Dove brand started its life in 1957 in the US, with the revolutionary new beauty cleansing Bar. With its patented blend of mild cleansers and ¼ moisturising cream, Dove\'s iconic Beauty Bar rinses cleaner than soap, leaving skin clean, soft and smooth.', 'http://www.jansonwholesale.com/wp-content/uploads/2017/12/DOVE-SOAP-2.jpg', 73, '60.00'),
(113, 'Olay', 'Cleanse your skin with a beauty bar that delivers 10X more moisturizers than regular soap for smoother skin. This formula with shea butter and creamy Olay lather leaves skin clean and soft.', 'https://cdn.discovery.pgsitecore.com/en-us/-/media/Olay_PathFinder/Images/Products/Product_Detail_Pages/Group_Images/Body_UltraMoisture_Carousel_1_r2.jpg?w=460&v=1-201705230638', 76, '55.00'),
(114, 'Cream Silk Conditioner', 'Cream Silk Standout Straight formula makes hair softer and gives it a straighter look. Its positively charged conditioning agents help smoothen damaged hair strands to relax natural waves and reduce frizz in just 1 wash.', 'http://www.bigbag.com.ph/wp-content/uploads/2015/12/Cream-Silk-Standout-Straight-Conditioner-12ml-x12.jpg', 98, '10.00'),
(115, 'Sunsilk Shampoo', 'Sunsilk is a hair care brand produced by the Unilever group. The brand was introduced in 1954 in the UK, available in most global countries, it is known as Sedal in Spanish-speaking Latin American countries, Seda in Brazil, Elidor in Turkey.', ' https://myoxykart.com/wp-content/uploads/2017/11/SUNSILK-LUSCIOUSLY-THICK-LONG-SHAMPOO-7-ML.png', 79, '10.00');

-- --------------------------------------------------------

--
-- Table structure for table `sweetsnacks`
--

CREATE TABLE `sweetsnacks` (
  `id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_detail` tinytext NOT NULL,
  `product_image` varchar(255) NOT NULL,
  `qty` int(5) NOT NULL,
  `price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sweetsnacks`
--

INSERT INTO `sweetsnacks` (`id`, `product_name`, `product_detail`, `product_image`, `qty`, `price`) VALUES
(100, 'Toblerone', 'A unique milk chocolate including nougat, almonds and honey with a distinctive triangular shape.', 'https://cdn.bmstores.co.uk/images/hpcProductImage/imgFull/253531-Toblerone-150g-Milk-Chocolate.jpg', 182, '50.00'),
(101, 'Ferrero Rocher', 'Ferrero Rocher is a chocolate and hazelnut confectionery produced by the Italian chocolatier Ferrero Spa.', 'https://cdn0.woolworths.media/content/wowproductimages/large/008896.jpg', 153, '180.00'),
(102, 'Snickers', 'The Snickers chocolate bar consists of nougat, peanuts, and caramel with a chocolate coating.', 'https://cdn0.woolworths.media/content/wowproductimages/large/785455.jpg', 195, '40.00'),
(103, 'M&M\'s', 'M&M\'s are "colorful button-shaped chocolates", each of which has the letter "m" printed in lower case on one side, surrounds a filling which varies depending upon the variety of M&M\'s.', 'https://images-na.ssl-images-amazon.com/images/I/81MigS8iUNL._SY355_.jpg', 187, '50.00'),
(104, 'Kisses', 'The bite-sized pieces of chocolate have a distinctive shape, commonly described as flat-bottomed teardrops.', 'http://supermart.ae/10483-large_default/hershey-s-kisses-creamy-milk-chocolate-146g.jpg', 231, '80.00'),
(105, 'Dairy Milk', 'A delicious brand of milk chocolate manufactured by Cadbury.', 'https://5.imimg.com/data5/CM/GU/MY-44229728/dairy-milk-chocolate-500x500.jpg', 199, '75.00'),
(106, 'Hershey\'s', 'Made by an American company and one of the largest chocolate manufacturers in the world.', 'https://images-na.ssl-images-amazon.com/images/I/816P2FZYqYL._SL1500_.jpg', 107, '65.00');

-- --------------------------------------------------------

--
-- Table structure for table `toothproduct`
--

CREATE TABLE `toothproduct` (
  `id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_detail` varchar(255) NOT NULL,
  `product_image` varchar(255) NOT NULL,
  `qty` int(5) NOT NULL,
  `price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `toothproduct`
--

INSERT INTO `toothproduct` (`id`, `product_name`, `product_detail`, `product_image`, `qty`, `price`) VALUES
(120, 'Colgate', 'Colgate is an umbrella brand principally used to sell oral hygiene products such as toothpastes, toothbrushes, mouthwashes and dental floss. Manufactured by the American consumer-goods conglomerate Colgate-Palmolive', 'http://www.colgate.co.in/CP15/en/in/oc/products/toothpaste/colgate-cavity-protection/images/dental-cream_maglens-lg.png', 103, '109.00'),
(121, 'Colgate Plax', 'Plax provides your patients with clinically proven 12 hour protection against bacteria and plaque. Your mouth stays cleaner, fresher and healthier. Fights plaque and bacteria for up to 12 hours. Cleans even in the hard to reach places', 'https://images-na.ssl-images-amazon.com/images/I/61athpGwOUL._SL1000_.jpg', 95, '89.00'),
(122, 'Hapee', 'Containing and Green Tea and Guava Leaf extracts, Hapee Complete Plus Whitening provides the following benefits: kill bacteria that cause bad breath, protect from Gingivitis, toughen weak tooth enamel, prevent tooth cavities, reduce gum bleeding and more.', 'http://www.lamoiyan.com/wp-content/uploads/2017/01/hapee-toothpaste_explosive-menthol-red_150mL-carton.jpg', 93, '70.00'),
(123, 'Sensodyne', 'Sensodyne Complete Protection combines all the benefits of a daily toothpaste with an advanced technology called NovaMin, which is clinically proven to relieve the pain of sensitivity by building a protective layer over vulnerable areas of the tooth.', 'https://www.dollargeneral.com/media/catalog/product/cache/image/700x700/e9c3970ab036de70892d86c6d221abfe/0/0/00467601.jpeg', 63, '190.00'),
(124, 'Close-up', 'Close-up is a cinnamon-flavored brand of toothpaste which is marketed by Unilever. It is one of the top brands in terms of sales in India. Launched in 1967, it was the first gel toothpaste in the world.', 'https://3.imimg.com/data3/OX/GE/MY-4492846/closeup-toothpaste-500x500.jpg', 108, '100.00'),
(125, 'Oral B Pro Health', 'Prevents cavities, plaque, tartar, and gum problems. It also builds increasing protection against painful sensitivity and whiten teeth by removing surface stains.', 'http://www.aapkijugaad.com/wp-content/uploads/2016/11/Oral-B-pro-health-mint_75-gm.9.png', 94, '110.00'),
(126, 'Oral B', 'Use Oral-B product range with a wide range of toothpastes and mouthwashes for all-around, professional level cleaning, whitening and refreshing.', 'https://i5.walmartimages.com/asr/287984fc-3fce-4345-8a5b-09c2fc1fd1df_1.e241e88ff7ab11790111cfa8815dcea2.jpeg?odnHeight=180&odnWidth=180&odnBg=FFFFFF', 94, '150.00'),
(127, 'Listerine', 'Listerine is a brand of antiseptic mouthwash product. It is promoted with the slogan "Kills germs that cause bad breath".', 'https://www.listerine.com/sites/listerine_us/files/styles/product_image/public/listerine_us_coolmint_1l.jpg', 73, '200.00'),
(128, 'Swish', 'Kill bad breath causing bacteria. Prevent plaque build-up. Maintain healthy gums and prevent gum disease. Fight cavities. Protect tooth enamel. Strengthen teeth.', 'https://www.bayanmall.com/image/cache/data/07-20-13%20AC/IMG_5156%20copy-700x700_0.jpg', 83, '200.00'),
(129, 'Oracare Cool Mouthrinse', 'OraCare Mouthrinse is a mouthwash that contains Stabilized Chlorine Dioxide. Its no-alcohol formulation keeps the mouth\'s natural moisture and provides a clean, fresh feeling without the painful burning sensation and sting.', 'http://www.pascuallab.com/images/2.png', 94, '136.00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address1` varchar(255) NOT NULL,
  `address2` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`username`, `email`, `address1`, `address2`, `password`) VALUES
('', '', '', '', ''),
('hotshot', 'masterjosamson23@gmail.com', '252', 'Bamban Tarlac', 'joshuaisaacsamsno'),
('ja', 'ja', 'ja', 'ja', 'ja'),
('root', 'root', 'root', 'root', 'root');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `alcohol`
--
ALTER TABLE `alcohol`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `beer`
--
ALTER TABLE `beer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `beverages`
--
ALTER TABLE `beverages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bottledwater`
--
ALTER TABLE `bottledwater`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `candies`
--
ALTER TABLE `candies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `carbonateddrinks`
--
ALTER TABLE `carbonateddrinks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deodorant`
--
ALTER TABLE `deodorant`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `drinks`
--
ALTER TABLE `drinks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `energydrinks`
--
ALTER TABLE `energydrinks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `featured`
--
ALTER TABLE `featured`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_id` (`id`);

--
-- Indexes for table `frozenfood`
--
ALTER TABLE `frozenfood`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lotion`
--
ALTER TABLE `lotion`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `readytoeat`
--
ALTER TABLE `readytoeat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `saltysnacks`
--
ALTER TABLE `saltysnacks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `soapshampoo`
--
ALTER TABLE `soapshampoo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sweetsnacks`
--
ALTER TABLE `sweetsnacks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `toothproduct`
--
ALTER TABLE `toothproduct`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `alcohol`
--
ALTER TABLE `alcohol`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=133;
--
-- AUTO_INCREMENT for table `beer`
--
ALTER TABLE `beer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `beverages`
--
ALTER TABLE `beverages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `bottledwater`
--
ALTER TABLE `bottledwater`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `candies`
--
ALTER TABLE `candies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;
--
-- AUTO_INCREMENT for table `carbonateddrinks`
--
ALTER TABLE `carbonateddrinks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT for table `deodorant`
--
ALTER TABLE `deodorant`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=155;
--
-- AUTO_INCREMENT for table `drinks`
--
ALTER TABLE `drinks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;
--
-- AUTO_INCREMENT for table `energydrinks`
--
ALTER TABLE `energydrinks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;
--
-- AUTO_INCREMENT for table `featured`
--
ALTER TABLE `featured`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `frozenfood`
--
ALTER TABLE `frozenfood`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;
--
-- AUTO_INCREMENT for table `lotion`
--
ALTER TABLE `lotion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=144;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `readytoeat`
--
ALTER TABLE `readytoeat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;
--
-- AUTO_INCREMENT for table `saltysnacks`
--
ALTER TABLE `saltysnacks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;
--
-- AUTO_INCREMENT for table `soapshampoo`
--
ALTER TABLE `soapshampoo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116;
--
-- AUTO_INCREMENT for table `sweetsnacks`
--
ALTER TABLE `sweetsnacks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;
--
-- AUTO_INCREMENT for table `toothproduct`
--
ALTER TABLE `toothproduct`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=130;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
