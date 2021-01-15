-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 28, 2020 at 04:54 PM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rocco`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `Cid` int(11) NOT NULL,
  `Cname` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`Cid`, `Cname`) VALUES
(1, 'Appetizers'),
(2, 'Pasta'),
(3, 'Rissoto'),
(4, 'Meat Dishes'),
(5, 'Fish Dishes'),
(6, 'Side Dishes'),
(7, 'Salads'),
(8, 'Pizza'),
(9, 'Dessetrs'),
(10, 'Breakfast Menu'),
(11, 'Non-Alcoholic Beverages'),
(12, 'Alcoholic Beverages');

-- --------------------------------------------------------

--
-- Table structure for table `checkout`
--

CREATE TABLE `checkout` (
  `ID` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `address` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `checkout`
--

INSERT INTO `checkout` (`ID`, `name`, `address`, `email`) VALUES
(1, 'Fatijon huseini', 'tetovo', 'fh27153@seeu.edu.mk'),
(2, 'Fatijon huseini', 'tetovo', 'fh27153@seeu.edu.mk'),
(3, 'Fatijon huseini', 'Tetovo', 'fh27153@seeu.edu.mk');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `Oid` int(11) NOT NULL,
  `Pid` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`Oid`, `Pid`, `quantity`) VALUES
(127, 1, 2),
(129, 22, 1),
(130, 77, 2);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `Pid` int(11) NOT NULL,
  `Pname` varchar(50) NOT NULL,
  `Pprice` double NOT NULL,
  `Cid` int(11) NOT NULL,
  `Pimages` varchar(5000) NOT NULL,
  `Pingredients` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`Pid`, `Pname`, `Pprice`, `Cid`, `Pimages`, `Pingredients`) VALUES
(1, 'Caprese', 80, 1, 'caprese.jpg', 'Tomato, Mozzarella, Basil'),
(2, 'Dalmatian Smoked Ham', 90, 1, 'Dalmatian Smoked Ham.jpg', 'Dalmatian Smoked Ham'),
(3, 'Asorted Cheeses', 75, 1, 'cheeses.jpg', 'Gorgonzola Cheese, Granna Padano, Parmeggiano Reggiano, Mozzarella'),
(4, 'Fried Mix', 90, 1, 'Fried Mix.jpg', 'Octopus, Squids, Chips, Zucchini, Tartar Sauce'),
(5, 'Cold Meat Platter', 110, 1, 'Cold Meat Platter.jpg', 'Salami, Dalmatian Smoked Ham, Spicy Salami'),
(6, 'Octopus Salad', 80, 1, 'Octopus Salad.jpg', 'Octopus, Onions, Tomato, Capari'),
(7, 'Fried Ascolane Olives', 110, 1, 'Olive Ascolane.jpg', 'Olives with meat, fish and truffle'),
(8, 'Spaghetti Bolognese', 75, 2, 'spaghetti-bolognese.jpg', 'Spagheti with bolognese sauce'),
(9, 'Spaghetti Carbonara', 75, 2, 'scarbonara.jpg', 'Spaghetti with cream sauce and ham'),
(10, 'Lasagne', 90, 2, 'Lasagne.jpg', 'Pasta with bolognese sauce, bechamel cream and cheese'),
(11, 'Tagliatelle with Salmon and Zuchini', 100, 2, 'TSZ.jpg', 'Tagliatelle with salmon, zucchini and white cream'),
(12, 'Spaghetti with Sea Food', 140, 2, 'SSF.jpg', 'Spahetti with sea food and tomato sauce'),
(13, 'Spaghetti Rocco', 95, 2, 'SR.jpg', 'Spaghetti with mozzarella, capari, basil, anchovies'),
(14, 'Linguine with Scampi', 160, 2, 'LS.jpg', 'Linguine with scampi, red sauce and cherry tomatoes'),
(15, 'Gnocchi Bolognese', 80, 2, 'NB.jpg', 'Gnocchi with bolognese sauce and parmesan'),
(16, 'Gnocchi with Gorgonzola', 85, 2, 'GG.jpg', 'Gnocchi with gorgonzola cheese'),
(17, 'Tagliatelle Mare Monti', 130, 2, 'TMM.jpg', 'Tagliatelle with truffle sauce and gamberi(small shrimps)'),
(18, 'Risotto with Sea Food', 140, 3, 'RSF.jpg', 'Risotto with sea food and red sauce'),
(19, 'Vegetarian Risotto', 100, 3, 'VR.jpg', 'Risotto with zucchini, eggplant, tomato, onions, mushrooms and tomato sauce'),
(20, 'Risotto with Zucchini and Gamberi', 110, 3, 'RZG.jpg', 'Risotto with zucchini, gamberi (small shrimps) and white sauce'),
(21, 'Risotto with Chicken and Mushrooms', 100, 3, 'RCM.jpg', 'Risotto with chicken, mushrooms and cream'),
(22, 'Ćevapi with sourcream and pita bread', 90, 4, 'Cevapi.jpg', '10 pieces of small sausages made of minced meat served with onion, ajvar pitabread and sourcream'),
(23, 'Burger with fries', 90, 4, 'Burger.jpg', 'Burger with french fries and BBQ sauce aside, salad, bacon inside'),
(24, 'Chicken with pasta and salad', 130, 4, 'CPS.jpg', 'Chicken with pasta and salad (sauces:mushroom, gorgonzola, soya with vegetables, curry and pesto)'),
(25, 'Fried Chicken Fingers with french fries', 130, 4, 'FCF.jpg', 'Chicken steak fried, cut into pieces with french fries and salad aside'),
(26, 'Grilled French Beefsteak 250gr', 180, 4, 'Fb.jpg', 'Soft Beeftsteak'),
(27, 'Grilled Beefsteak', 165, 4, 'B.jpg', 'Grilled beafsteak with vegetables'),
(28, 'Sauces for the beefsteak', 30, 4, 'BTS.jpg', 'Mushroom sauce, Gorgonzola Sauce, Black Truffle Sauce and Green Pepper Sauce'),
(29, 'Lamb Chops with Arugula salad', 135, 4, 'LC.jpg', 'Lamb chops with arugula and granna paddano'),
(30, 'Tuna Steak', 140, 5, 'TS.jpg', 'Tuna steak with swisschard potatoes and lemon'),
(31, 'Sea bass fillet with shrimp sauce', 150, 5, 'SBF.jpg', 'Sea bass fillet with creamy sauce made of shrimps'),
(32, 'Grilled Sea Bass', 140, 5, 'GSB.jpg', 'Grilled fish'),
(33, 'Callamari Grill', 130, 5, 'CG.jpg', 'Grilled squids with swisschard potatoes'),
(34, 'Fried Callamari', 90, 5, 'FC.jpg', 'Fried squid with tartar sauce aside'),
(35, 'French Fries', 25, 6, 'FF.jpg', 'Fried potatoes with salt and pepper'),
(36, 'Rice', 25, 6, 'R.jpg', 'Cooked Rice'),
(37, 'Baked Potatoes', 35, 6, 'BP.jpg', 'Baked potatoes with salt and pepper'),
(38, 'Baked Vegetables', 35, 6, 'BV.jpg', 'Grilled Zucchini, Eggplant, Cherry tomato and Pepper'),
(39, 'Swisschard Potatoes', 35, 6, 'SP.jpg', 'Cooked swisschard with potatoes'),
(40, 'Grilled Mushrooms', 35, 6, 'GM.jpg', 'Grilled Mushrooms'),
(41, 'Green Salad', 25, 7, 'GS.jpg', 'Lettuce and cucumber'),
(42, 'Mix Salad', 30, 7, 'MS.jpg', 'Lettuce, cucumber, tomatoes, carrots and cabbage'),
(43, 'Cabbage Salad', 25, 7, 'CS.jpg', 'Cabbage (red and white) '),
(44, 'Greek Salad', 75, 7, 'GRS.jpg', 'Lettuce, tomatoes, onions and feta cheese'),
(45, 'Caeser Salad', 80, 7, 'CSS.jpg', 'Mix Salad, Chicken steak pieces, bacon, toasted bread and sauce'),
(46, 'Primavera Salad', 60, 7, 'PS.jpg', 'Arugula, cheery tomatoes, mozzarealla and olives'),
(47, 'Tuna Salad', 75, 7, 'TNS.jpg', 'Mix Salad, tuna, onions, capers and olives'),
(48, 'Summer Salad', 85, 7, 'SS.jpg', 'Mix Salad, arugula, dalmatian smoked ham, pinneaple, melon and mozzarella'),
(49, 'Smoked Salmon Salad', 85, 7, 'SSs.jpg', 'Mix Salad, arugula, smoked salmon, avocado, feta cheese and yoghurt'),
(50, 'Exotica Salad', 90, 7, 'ES.jpg', 'Arugula, prawns, mango, peach, avocado, cucumber and sweet chili sauce'),
(51, 'Margherita', 60, 8, 'MP.jpg', 'Tomato sauce, mozzarella and origano'),
(52, 'Prosciutto', 70, 8, 'PP.jpg', 'Tomato sauce, mozzarella and ham'),
(53, 'Funghi', 70, 8, 'FP.jpg', 'Tomato sauce, mozzarella and fresh mushrooms'),
(54, 'Capricciosa', 80, 8, 'CP.jpg', 'Tomato sauce, mozzarella, fresh mushrooms, ham and salami'),
(55, 'Quattro Staggioni', 85, 8, 'QP.jpg', 'Tomato sauce, mozzarella,fresh mushrooms, artichoke, salami and ham'),
(56, 'Quattro Formaggi', 80, 8, 'QFP.jpg', 'Tomato sauce and 4 kinds of cheeses'),
(57, 'Tonno', 75, 8, 'TP.jpg', 'Tomato sauce, mozzarella, tuna and onions'),
(58, 'Sicilian', 75, 8, 'SCLP.jpg', 'Tomato sauce, mozzarella, anchovies, capari and olives'),
(59, 'Vegetariana', 70, 8, 'VP.jpg', 'Tomato sauce, mozzarella and fresh vegetables (eggplant, zucchini and peppers)'),
(60, 'Pizza Rocco', 80, 8, 'RP.jpg', 'Tomato sauce, mozzarella, cherry tomatoes, camembert cheese, arugula'),
(61, 'Romagnola', 90, 8, 'RMGP.jpg', 'Tomato sauce, mozzarella,dalmatian smoked ham, arugula and granna paddano'),
(62, 'Montanara', 90, 8, 'MNTP.jpg', 'Tomato sauce, mozzarella,gorogonzola, spicy salami and onions'),
(63, 'Pizza Mare Monti', 100, 8, 'MMP.jpg', 'Tomato sauce, mozzarella, porcini mushrooms, truffle and shrimps'),
(64, 'Panna Cotta', 35, 9, 'PC.jpg', 'Milky gelatin with wild berries'),
(65, 'Creme Brulee', 35, 9, 'CB.jpg', 'Vanilla bean pudding with caramelized brown sugar'),
(66, 'Pancakes with Jam or Nutella', 35, 9, 'P.jpg', 'Pancakes with Jam or Nutella'),
(67, 'Fresh Pineapple with Maraschino', 35, 9, 'PM.jpg', '2 pieces of fresh pinneaple with maraschino liquor poured on them'),
(68, 'Fresh Fruits', 25, 9, 'WM.jpg', 'A piece of melon and a piece of watermelon'),
(69, 'Continental', 30, 10, 'CNTB.jpg', 'Butter, cheese, ham, boiled egg, jam and bread'),
(70, 'Omelet with ham', 35, 10, 'OH.jpg', 'Eggs with ham, cheese and bread'),
(71, 'Omelet with ham and mushrooms', 40, 10, 'OHM.jpg', 'Eggs with ham, cheese, mushrooms and bread'),
(72, 'Egg served sunny side up with bacon', 40, 10, 'EB.jpg', '2 Eggs served sunny side with 3 pieced of bacon'),
(73, 'Water 0,75', 25, 11, 'Jana.jpg', 'Natural water 750ml'),
(74, 'Mineral Water 0,75', 25, 11, 'Jamnica.jpg', 'Mineral water 750ml'),
(75, 'Cedevita 0,75', 13, 11, 'CD.jpg', 'Powder filled with vitamins with the taste of lemon and orange'),
(76, 'Carbonated Drinks', 23, 11, 'CC.jpg', 'Coca Cola, Fanta, Sprite, Shweppes Tonic, Bitter Lemon, Cola Zero'),
(77, 'Juices', 25, 11, 'J.jpg', 'Apple, Orange, Strawberry, Peach, Mix of Fruits, Pineapple, Blue Berry'),
(78, 'Natural Juices', 40, 11, 'OJL.jpg', 'Orange juice and Lemonade'),
(79, 'Draft Beer 0,3', 23, 12, '3.jpg', 'Karlovacko draft beer 300ml'),
(80, 'Draft Beer 0,5', 35, 12, 'K05.jpg', 'Karlovacko draft beer 500ml'),
(81, 'Ozujsko 0,5', 38, 12, 'O.jpg', 'Ozujsko bottled beer 500ml'),
(82, 'Karlovacko Radler 0,5', 40, 12, 'KR.jpg', 'Karlovacko beer with lemon taste 500ml'),
(83, 'Staropramen 0,5', 38, 12, 'STP.jpg', 'Staropramen bottled beer 500ml'),
(84, 'Karlovacko Dark Beer 0,5', 40, 12, 'KC.jpg', 'Karlovacko dark bottled beer 500ml'),
(85, 'White Wine 1L', 100, 12, 'SB.jpg', 'House white wine 1L'),
(86, 'Red Wine 1L', 100, 12, 'CV.jpg', 'House red wine 1L'),
(87, 'Svirce', 150, 12, 'SV.jpg', 'Local quality white wine 750ml'),
(88, 'Bogdanusa 0,75', 180, 12, 'Bogd.jpg', 'Local dry quality white wine 750ml'),
(89, 'Posip deLuxe 0,75', 220, 12, 'PD.jpg', 'Local top-quality white wine 750ml'),
(90, 'Plavac 0,75', 150, 12, 'PVC.jpg', 'Local quality red wine 750ml'),
(91, 'Plavac Mediterano 0,75', 210, 12, 'PVCM.jpg', 'Local dry quality red wine 750ml'),
(92, 'Ivan Dolac 0,75', 250, 12, 'ID.jpg', 'Local dry top-quality red wine 750ml'),
(93, 'Sparkling Wine 0,75', 280, 12, 'SPW.jpg', 'Sparkling Wine 750ml');

-- --------------------------------------------------------

--
-- Table structure for table `reservations`
--

CREATE TABLE `reservations` (
  `Rid` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `nr` int(11) NOT NULL,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `reservations`
--

INSERT INTO `reservations` (`Rid`, `name`, `nr`, `date`, `time`) VALUES
(10, 'Abdulla', 15, '2020-06-23', '15:30:00'),
(11, 'neci', 20, '2020-06-15', '20:30:00'),
(12, '', 0, '0000-00-00', '00:00:00'),
(13, 'Fatjon', 20, '2020-06-22', '14:20:00'),
(14, 'Fatijon', 10, '2020-06-25', '20:00:00'),
(15, 'Ismail Hasani', 20, '2020-12-06', '21:00:00'),
(16, 'Fatjon', 20, '2020-07-25', '16:07:00'),
(17, 'Bedir', 10, '2021-07-13', '20:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`Cid`);

--
-- Indexes for table `checkout`
--
ALTER TABLE `checkout`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`Oid`),
  ADD KEY `Pid` (`Pid`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`Pid`),
  ADD KEY `Foreign Key` (`Cid`);

--
-- Indexes for table `reservations`
--
ALTER TABLE `reservations`
  ADD PRIMARY KEY (`Rid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `Cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `checkout`
--
ALTER TABLE `checkout`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `Oid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `Pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT for table `reservations`
--
ALTER TABLE `reservations`
  MODIFY `Rid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`Pid`) REFERENCES `product` (`Pid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
