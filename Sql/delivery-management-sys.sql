-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 14, 2022 at 01:53 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `delivery-management-sys`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `c_id` int(11) NOT NULL,
  `name` varchar(40) NOT NULL,
  `email` varchar(40) NOT NULL,
  `address` varchar(100) NOT NULL,
  `contact_no` varchar(20) NOT NULL,
  `password` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`c_id`, `name`, `email`, `address`, `contact_no`, `password`) VALUES
(1, 'Claude Kris', 'swaniawski.vada@yahoo.com', '503 Monahan Drive Apt. 610\nWest Kaitlynchester, ME 10252', '0315-3556515', 'abc'),
(2, 'Jeramy Windler', 'becker.carter@hotmail.com', '48355 Austen Islands Apt. 473\nMartinehaven, FL 73937-9537', '0360-8016134', 'cdf'),
(3, 'Angel Reilly', 'nsauer@hotmail.com', '8010 Kurt Field\nNorth Berenice, MD 76813-1853', '0334-8131732', 'req'),
(4, 'Ahmad Klocko', 'merlin.bartell@yahoo.com', '01037 Brandt Lodge Apt. 274\nMoriahport, NE 60053-7672', '0375-6707461', 'uyn'),
(5, 'Ozella Schneider', 'alda80@gmail.com', '51113 Hudson Loaf Suite 816\nJadebury, VT 66764', '0384-5232182', 'erw'),
(6, 'Cleveland Harber', 'santino32@gmail.com', '630 Joshua River Apt. 728\nVicenteburgh, TX 31563', '0313-1430534', 'uqy'),
(7, 'Antonetta Stiedemann I', 'lbrakus@bashiriankrajcik.com', '9667 Beau Springs\nLeannonland, CT 42050', '0394-2887494', 'jhj'),
(8, 'Leopoldo Gusikowski', 'nathanial.gorczany@gmail.com', '5234 Gislason Vista\nArdithland, IN 43135-2840', '0348-9253291', 'ghh'),
(9, 'Velda Sauer', 'hessel.claude@gmail.com', '0528 Judy Villages Apt. 687\nPort Okey, AK 56257-6708', '0337-4601851', 'asa'),
(10, 'Mrs. Marcelle Beier V', 'pquitzon@hotmail.com', '02095 Mike Plains Suite 268\nSouth Kobyborough, MI 56749', '0331-5095354', 'det'),
(11, 'Cassie Johns II', 'po\'connell@yahoo.com', '08769 Hardy Orchard Apt. 028\nSouth Violettown, OK 78812-4704', '0379-5389820', 'bhs'),
(12, 'Valentina Powlowski MD', 'morar.ezra@wilkinson.com', '2335 Carmelo Spurs\nKirstinville, WA 57747', '0367-6152204', 'jhu'),
(13, 'Sonia Doyle', 'farrell.destini@gmail.com', '8988 Bogan Crest Suite 069\nMaiastad, IN 95789-5424', '0349-2293429', 'huh'),
(14, 'Celestine Welch', 'glover.weldon@keebler.com', '720 Freda Courts Apt. 894\nNorth Amberfort, HI 29788', '0391-3344159', 'ass'),
(15, 'Natasha Fahey', 'michael.breitenberg@hansen.com', '49080 Quitzon Meadow\nNorth Cedrick, OR 40224-1348', '0384-1587564', 'saa'),
(16, 'Layne Harvey', 'leannon.olen@gmail.com', '05555 Boehm Meadows Apt. 012\nNew Delaneyville, GA 03829-4564', '0300-8698276', 'sas'),
(17, 'Dr. Reyes Welch V', 'murphy.else@yahoo.com', '72350 Kelli Inlet Suite 315\nSouth Willachester, MI 61132', '0321-4660573', 'sae'),
(18, 'Ashton Schoen', 'gtowne@mayerwehner.com', '002 Waldo Views\nEast Allie, WV 39076-6584', '0341-4943182', 'asd'),
(19, 'Aurelio Greenfelder', 'hkoepp@yahoo.com', '2498 Derek Points Suite 780\nEloisestad, OH 37813-4571', '0372-6414540', 'sda'),
(20, 'Zack Mertz III', 'wilber.waelchi@nikolaus.com', '44326 Sauer Station Suite 564\nKarabury, NH 97799-7278', '0320-2714360', 'err');

-- --------------------------------------------------------

--
-- Table structure for table `delivery`
--

CREATE TABLE `delivery` (
  `d_id` int(11) NOT NULL,
  `c_id` int(11) NOT NULL,
  `dm_id` int(11) DEFAULT NULL,
  `e_id` int(11) DEFAULT NULL,
  `pickup_address` varchar(120) NOT NULL,
  `delivery_address` varchar(120) NOT NULL,
  `status` varchar(20) DEFAULT NULL,
  `pickup_date` date DEFAULT NULL,
  `delivered_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `delivery`
--

INSERT INTO `delivery` (`d_id`, `c_id`, `dm_id`, `e_id`, `pickup_address`, `delivery_address`, `status`, `pickup_date`, `delivered_date`) VALUES
(1, 2, NULL, NULL, '39878 McKenzie Ford\nSouth Providencitown, SC 63313', '086 Raleigh Forks\nSouth Mellieshire, TN 99897-2989', 'placed', '2022-05-30', NULL),
(2, 3, NULL, NULL, '3777 Odell Ferry\nNitzschechester, KY 62099', '24916 Towne Trace Apt. 635\nHodkiewiczmouth, CA 05372', 'placed', '2022-06-05', NULL),
(3, 10, NULL, NULL, '380 Kulas Underpass Apt. 864\nJohnsonside, LA 79114-0272', '822 Funk Bypass Apt. 001\nSouth Nicholeview, RI 58247', 'placed', '2022-06-04', NULL),
(4, 20, NULL, NULL, '00893 Goyette Light Apt. 116\nMetzfort, NM 76922-7118', '602 Velva River\nTyreseside, PA 29364', 'placed', '2022-06-05', NULL),
(5, 20, NULL, NULL, '26297 Dustin Alley Suite 939\nEast Janet, KS 48192-7631', '9957 Mills Spur Apt. 786\nEast Antoninaberg, SC 15067-1984', 'placed', '2022-05-31', NULL),
(6, 10, NULL, NULL, '8205 Lubowitz Skyway Apt. 072\nMohrmouth, NV 64414', '73000 Conn Run Suite 874\nEast Kielland, IL 17496-5716', 'placed', '2022-05-27', NULL),
(7, 6, NULL, NULL, '8424 Konopelski Branch\nSouth Pearlie, ND 11916', '758 Branson Mission Apt. 442\nGottliebfort, SC 93565', 'placed', '2022-06-01', NULL),
(8, 14, NULL, NULL, '3235 Walker Forest Suite 267\nNorth Domenickhaven, LA 78043-6860', '92826 Quigley Ramp\nPort Morganport, DE 70198-7979', 'placed', '2022-05-30', NULL),
(9, 15, NULL, NULL, '205 Claud Loaf Apt. 298\nRoobburgh, IN 76387', '95832 Swaniawski Flats Suite 228\nSouth Jessyca, NJ 42032', 'placed', '2022-06-04', NULL),
(10, 20, NULL, NULL, '6877 Kavon Port\nSouth Mekhi, HI 20734', '3358 Adaline Square\nEast Andreschester, NJ 02383', 'placed', '2022-05-27', NULL),
(11, 6, NULL, NULL, '91030 Marjolaine Village Apt. 829\nWest Tito, AL 60288', '0735 Casandra Tunnel Apt. 124\nRodrigoburgh, SC 05571-7684', 'placed', '2022-05-27', NULL),
(12, 12, NULL, NULL, '2788 Bartell Stravenue Suite 821\nMarkusfort, OH 08091-2346', '06684 Leannon Plaza Suite 524\nWileymouth, LA 40058', 'placed', '2022-06-04', NULL),
(13, 19, NULL, NULL, '1749 Bednar Stream Suite 873\nSchmelerville, IA 89288', '57495 Armstrong Squares\nNew Whitney, NC 59801', 'placed', '2022-05-30', NULL),
(14, 4, NULL, NULL, '81134 Tevin Skyway Suite 592\nSatterfieldside, PA 26949-5664', '884 Welch Streets\nLake Lawson, AZ 26739', 'placed', '2022-06-03', NULL),
(15, 6, NULL, NULL, '99193 Reilly Oval\nCarrollborough, MS 74144', '7123 Leland Tunnel Apt. 084\nNorth Roberta, ID 50989', 'placed', '2022-06-04', NULL),
(16, 17, NULL, NULL, '078 McKenzie Views Suite 286\nSouth Nicholaus, AR 58725-1999', '66851 Mertz Path\nAdelinetown, NJ 47076', 'placed', '2022-05-28', NULL),
(17, 12, NULL, NULL, '4932 Lynch Drive Suite 650\nEast Merlinfort, DC 78007', '6105 Lavina Glen\nLake Kellyview, TX 67607', 'placed', '2022-05-30', NULL),
(18, 4, NULL, NULL, '79855 Susie Mission\nKasandraview, AL 27967', '1978 Hermiston Dale Suite 495\nJanestad, IN 18791', 'placed', '2022-06-05', NULL),
(19, 10, NULL, NULL, '069 Walsh Isle\nNew Dorcasville, RI 54655', '89447 Jamaal Loaf\nFletaview, DC 12563', 'placed', '2022-05-28', NULL),
(20, 13, NULL, NULL, '8360 Wilderman Ramp\nMayraborough, CA 72047', '68937 Mariana Rest Apt. 299\nLabadietown, SD 69446-1722', 'placed', '2022-06-01', NULL),
(21, 18, NULL, NULL, '98497 Mitchell Mount Suite 482\nNorth Bennychester, NM 05710-0428', '02010 Kuphal Bypass\nLake Issacmouth, AZ 83564', 'placed', '2022-06-03', NULL),
(22, 6, NULL, NULL, '474 Jaeden Expressway\nTerryport, RI 79798-5716', '88442 Shaylee Walks Suite 327\nNorth Pearl, OH 04612-5438', 'placed', '2022-05-27', NULL),
(23, 1, NULL, NULL, '30805 Alaina Circle\nSmithborough, SC 85741', '91367 Kellie Key Apt. 730\nWest Gregorychester, OK 88322-6028', 'placed', '2022-05-30', NULL),
(24, 17, NULL, NULL, '08202 Jayda Springs Suite 409\nLadariusview, WY 94664-9927', '368 Jones Parkways\nConnellyfort, DC 96190', 'placed', '2022-05-30', NULL),
(25, 5, NULL, NULL, '546 Irma Pass Suite 406\nEast Makaylashire, WY 75366', '51334 Carmella Extension\nMattiefurt, NM 73370', 'placed', '2022-06-06', NULL),
(26, 15, NULL, NULL, '16269 Will Vista Apt. 056\nLake Carlostad, RI 32766', '129 Yasmine Shores Apt. 482\nPort Elijahmouth, OH 46147', 'placed', '2022-05-29', NULL),
(27, 20, NULL, NULL, '61532 Barton Skyway\nMerlberg, AR 50794-5344', '36604 Toni Mission Apt. 184\nNew Elvishaven, MT 11770', 'placed', '2022-05-27', NULL),
(28, 4, NULL, NULL, '35146 Caesar Crescent\nLake Raymondshire, RI 24823-8873', '622 Feil Field\nEnolaside, CT 07345', 'placed', '2022-06-02', NULL),
(29, 6, NULL, NULL, '83788 Bogan Mount\nHoppechester, OR 10155', '495 Breitenberg Plaza\nPort Margret, AK 19995', 'placed', '2022-06-02', NULL),
(30, 14, NULL, NULL, '85101 McGlynn Bridge Suite 554\nJadenberg, MT 98671', '012 Emmet Square\nLake Cindy, WY 42114', 'placed', '2022-06-02', NULL),
(31, 15, NULL, NULL, '936 Koss Manor Suite 557\nAlbertafort, WA 81973-1762', '1576 Watsica Mountains\nTheronstad, PA 61045', 'placed', '2022-06-04', NULL),
(32, 11, NULL, NULL, '06002 Cassin Lakes\nBergehaven, OR 04850-0918', '94403 Hanna Branch\nPort Odie, MD 88040-5137', 'placed', '2022-06-02', NULL),
(33, 18, NULL, NULL, '3959 Zemlak Ramp\nNew Molly, OR 32109-5552', '8282 Ciara Spurs Suite 111\nGladycemouth, FL 50981-3799', 'placed', '2022-06-04', NULL),
(34, 10, NULL, NULL, '88133 Mueller Mount\nKristianside, KS 59921-5695', '1350 Ferry Mews\nReynoldsport, GA 29700-6290', 'placed', '2022-06-03', NULL),
(35, 18, NULL, NULL, '322 Gerlach Mall\nBednarberg, LA 91025-0726', '0799 Elian Causeway\nProsaccoland, CT 05428-0978', 'placed', '2022-06-02', NULL),
(36, 16, NULL, NULL, '050 Breitenberg Mews Suite 675\nMurazikstad, AL 21166-7914', '7037 Elenor Fords\nAbshiretown, ID 11348', 'placed', '2022-05-27', NULL),
(37, 10, NULL, NULL, '354 Zoila Cape Apt. 107\nBaumbachburgh, SD 13316-1700', '88219 Ebony Ramp Suite 338\nTracyborough, WV 20268', 'placed', '2022-06-03', NULL),
(38, 5, NULL, NULL, '9938 Jon Streets\nSouth Jacklynview, ID 27710-9579', '86053 Gleason Junction\nNorth Jeanieberg, TX 67048-3349', 'placed', '2022-06-04', NULL),
(39, 3, NULL, NULL, '549 Maggio Viaduct\nAnahiside, CT 59026', '6964 Stefan Walks\nGreenport, CA 97122', 'placed', '2022-05-29', NULL),
(40, 1, 8, 4, '313 Damion Lights Apt. 360\nNorth Mabellefurt, WA 28139-3766', '601 Hosea Harbors\nSimoneton, VT 78135', 'taken', '2022-05-27', NULL),
(41, 12, NULL, NULL, '948 Ferry Corners Suite 545\nJayceebury, HI 48912-7396', '55886 London Prairie Apt. 105\nLucianoland, UT 56600', 'placed', '2022-05-31', NULL),
(42, 10, NULL, NULL, '59183 Sylvester Lodge\nLake Kolehaven, KY 98944-7439', '4684 Chet Motorway Apt. 865\nSouth Alda, MD 08234', 'placed', '2022-06-05', NULL),
(43, 16, NULL, NULL, '75247 Fahey Falls\nWest Sydnie, VA 79178', '214 Lilla Path\nNorth Aidaview, DE 68985-0001', 'placed', '2022-06-01', NULL),
(44, 18, NULL, NULL, '77744 Lakin Spur Suite 533\nThaliaville, ID 03688', '14289 Hackett Port Apt. 722\nPort Dock, SD 87756-5023', 'placed', '2022-05-28', NULL),
(45, 17, NULL, NULL, '6131 Wehner Mountain Apt. 840\nNorth Arelyland, ID 70377', '48238 Edgardo Track Suite 398\nSimborough, OR 30069', 'placed', '2022-05-29', NULL),
(46, 3, NULL, NULL, '4452 Keebler Rest\nNatport, NH 82545-6171', '6125 Joelle Views\nStephanieberg, MN 55131', 'placed', '2022-05-31', NULL),
(47, 15, NULL, NULL, '78148 Roberts Plains\nKeatonstad, ND 30013-4705', '16087 Pagac Park Apt. 374\nWest Justicehaven, AZ 86855-7403', 'placed', '2022-05-28', NULL),
(48, 4, NULL, NULL, '17624 Spencer Terrace\nLake Nicohaven, DC 77605', '758 Kozey Roads\nBeermouth, ID 36264', 'placed', '2022-05-27', NULL),
(49, 20, NULL, NULL, '451 Bogan Prairie\nSouth Cora, CO 54720-4882', '2750 McCullough Pike Suite 518\nLynchburgh, MI 51785-5393', 'placed', '2022-05-29', NULL),
(50, 3, NULL, NULL, '90003 Myrna Lights Apt. 110\nJarrettmouth, AL 25126', '87521 Mertz Manor\nZemlakmouth, AK 15532', 'placed', '2022-06-02', NULL),
(51, 8, NULL, 1, '176 Javier Drive Apt. 211\nSwaniawskishire, CO 66007', '357 Cornelius Course\nDavisborough, IL 03898', 'taken', '2022-06-03', NULL),
(52, 19, NULL, 5, '479 Schiller Trace\nTrantowside, TN 62737-8649', '86852 Blaise Creek Suite 283\nCorwinport, KS 92863-7281', 'taken', '2022-06-02', NULL),
(53, 20, NULL, 4, '49558 Gislason Village Apt. 964\nLake Eloise, KS 16868', '20619 Deckow Mews Apt. 841\nGutkowskiberg, WY 70904-6530', 'taken', '2022-05-28', NULL),
(54, 16, NULL, 5, '92425 Stroman Streets\nEast Doraborough, MA 21911', '4450 River Groves\nNew Norbert, NE 27068-8233', 'taken', '2022-05-29', NULL),
(55, 3, NULL, 4, '7125 Michel Ways\nSouth Abrahamville, MT 10342-4993', '500 Armstrong Course\nNorth Cordelia, MO 15886-5299', 'taken', '2022-06-02', NULL),
(56, 9, NULL, 3, '2228 Lucas Harbors\nNew Clotilde, HI 50685-3618', '57573 Keeling Ferry Suite 992\nFredericton, VA 21005', 'taken', '2022-06-01', NULL),
(57, 10, NULL, 3, '1294 Adela Fords Apt. 034\nPort Deontae, AR 62725', '275 Gus Springs Suite 925\nGrahamview, AL 66017', 'taken', '2022-06-04', NULL),
(58, 10, NULL, 3, '6976 Carolyn Shore Apt. 702\nNorth Emelie, MO 83471-6671', '071 Schaden Rapids Apt. 759\nNorth Bellaview, ND 02748-0616', 'taken', '2022-06-01', NULL),
(59, 19, NULL, 5, '52717 Kasey Parks\nSophieport, ID 84870-4718', '191 Milan Glens\nLeannonside, MS 55374-5947', 'taken', '2022-05-30', NULL),
(60, 16, NULL, 1, '5530 Wilford Summit Apt. 965\nJohnpaulfurt, MD 07263', '90815 Opal Manor\nWest Kendrick, DC 48253-6625', 'taken', '2022-06-01', NULL),
(61, 18, NULL, 3, '7305 Dino Ways Apt. 885\nBoyerview, CA 35694-5980', '08709 Schmitt Glens Apt. 504\nSophiaton, CA 41199', 'taken', '2022-05-31', NULL),
(62, 6, NULL, 2, '58788 Frances Hollow\nKunzeside, DC 61784-0443', '835 Lynch Pike Suite 229\nLake Aracely, FL 35985', 'taken', '2022-05-30', NULL),
(63, 13, NULL, 4, '7298 Greyson Common Apt. 435\nNorth Andreanemouth, WV 64602-7064', '34157 Tromp Rapids\nSadyemouth, MS 49464', 'taken', '2022-06-04', NULL),
(64, 14, NULL, 5, '541 McKenzie Club\nLake Rocio, NJ 45661', '333 Roob Neck Apt. 605\nNorth Fidelport, ME 25456', 'taken', '2022-05-30', NULL),
(65, 6, NULL, 2, '876 Barrows Motorway\nGabeberg, ME 06173', '660 Leda Turnpike Apt. 946\nClemmiefort, VA 86186', 'taken', '2022-05-31', NULL),
(66, 16, NULL, 1, '60822 Alanna Forge Suite 091\nPort Taniaburgh, SC 73356', '053 Herminio Field Apt. 322\nKarlfurt, UT 04301-9115', 'taken', '2022-05-29', NULL),
(67, 8, NULL, 5, '8222 Webster Junctions Suite 277\nWest Joanne, MA 38064-3908', '481 Dereck Gateway\nProhaskaburgh, NJ 58257', 'taken', '2022-06-04', NULL),
(68, 4, NULL, 5, '37258 Layne Mills Suite 021\nNorth Mercedesland, MN 00362-2261', '390 Herminia Manors Apt. 413\nSouth Destany, MS 57133', 'taken', '2022-05-31', NULL),
(69, 11, NULL, 1, '5424 Mallie Trail Suite 199\nBrakusport, MN 44897', '71773 Orin Ridge Apt. 272\nSouth Freida, NH 38126', 'taken', '2022-05-28', NULL),
(70, 2, NULL, 1, '20141 Ward Extensions\nWest Clark, RI 23158', '246 Rohan Forge Suite 714\nLoyceville, NE 01797', 'taken', '2022-06-04', NULL),
(71, 19, NULL, 1, '513 Stark Heights Suite 146\nSouth Brionnafort, FL 22689', '865 DuBuque Mews Suite 100\nSchadenberg, PA 63055', 'taken', '2022-05-27', NULL),
(72, 19, NULL, 3, '407 Terry Valleys\nTessiefurt, MD 61488-7901', '814 Lubowitz Track\nHartmanntown, VT 24748', 'taken', '2022-06-02', NULL),
(73, 17, NULL, 2, '093 Marcelina Bridge Apt. 505\nHobartton, WA 62369-3445', '89008 Jeanie Village\nGrahamfurt, IL 49510', 'taken', '2022-06-02', NULL),
(74, 6, NULL, 2, '981 Ward Stream Apt. 087\nFrederickside, NE 59149', '220 Breanne Cliff Suite 696\nWest Ali, NE 43805', 'taken', '2022-06-01', NULL),
(75, 19, NULL, 3, '0731 Marks Fall\nConsidinemouth, OR 83680', '840 Rutherford Mews Suite 541\nPort Julien, OK 32664-9785', 'taken', '2022-06-02', NULL),
(76, 17, NULL, 1, '85485 Trycia Junctions\nO\'Konside, WY 32552-0714', '153 Armstrong Square\nNorth Neomastad, ME 82724-0216', 'taken', '2022-05-31', NULL),
(77, 18, NULL, 2, '7622 Keebler Forge Suite 795\nEast Cristophermouth, IA 88271', '8948 Brown Lane\nHerzogshire, CT 29108', 'taken', '2022-05-31', NULL),
(78, 19, NULL, 3, '448 Ford Falls Apt. 491\nRomanton, VA 75567', '1847 Prohaska Radial\nDanielbury, MS 97677-7165', 'taken', '2022-06-03', NULL),
(79, 8, NULL, 5, '64119 Haley Summit\nPort Haileychester, RI 46632-4921', '7871 Swift View\nAllisonberg, DE 23008', 'taken', '2022-05-29', NULL),
(80, 15, NULL, 4, '09972 Roberts Shore Apt. 575\nWest Laurence, IA 15961-9693', '06488 Towne Lodge Suite 159\nNorth Herthaburgh, FL 62047', 'taken', '2022-05-30', NULL),
(81, 9, NULL, 4, '2466 Tanya Park\nNorth Coreneberg, TN 85129', '330 Smith Squares\nNorth Montyberg, CT 09212', 'taken', '2022-06-05', NULL),
(82, 13, NULL, 4, '9614 Walker Highway\nLake Annamaeshire, ME 18882', '4379 Peyton Mews Suite 564\nRathville, PA 92315', 'taken', '2022-06-05', NULL),
(83, 19, NULL, 5, '820 Linwood Groves Suite 290\nAndreannemouth, WY 07898', '4469 Percival Junction\nCorybury, VT 18067', 'taken', '2022-06-02', NULL),
(84, 17, NULL, 4, '02388 Steuber Ports\nMetaburgh, CT 22961', '7466 Bayer Viaduct Apt. 432\nMckennaview, ME 97919', 'taken', '2022-05-30', NULL),
(85, 14, NULL, 4, '063 Moore Mill\nMagalibury, IA 44214-1589', '0028 Myrtie Place Apt. 446\nNew Jamie, CT 68321-7733', 'taken', '2022-05-27', NULL),
(86, 1, NULL, 1, '54723 Ava Crescent Suite 641\nBradtkefurt, WV 85791', '6962 Letha Wells Suite 080\nNew Nikoton, RI 67030-3844', 'taken', '2022-05-27', NULL),
(87, 7, NULL, 5, '726 Leora Common Apt. 961\nLake Sheridan, AL 22157', '1972 Thompson Ports\nRuthietown, MO 33539-0695', 'taken', '2022-05-30', NULL),
(88, 2, NULL, 4, '494 Hackett Neck\nMcGlynnmouth, NJ 86716-5143', '323 Torphy Island\nPort Donnyport, RI 37476', 'taken', '2022-06-03', NULL),
(89, 18, NULL, 4, '236 Margarett Row\nSouth Tamia, TX 44210', '9617 Corwin Burgs Suite 498\nGoyettefurt, UT 15219-2315', 'taken', '2022-06-06', NULL),
(90, 17, NULL, 2, '203 Jamie Prairie Suite 112\nWest Jeramie, NV 52059', '727 Konopelski Branch\nAprilshire, HI 26876-2902', 'taken', '2022-06-06', NULL),
(91, 19, NULL, 1, '44544 Cary Estate Suite 156\nMinnieborough, MD 19213-7991', '0395 Esperanza Course\nNew Jamaal, KS 86161', 'taken', '2022-05-31', NULL),
(92, 19, NULL, 4, '63439 Gleason Gardens\nLake Anahimouth, NH 42011-0901', '949 Reinger Island\nWest Davion, HI 78251', 'taken', '2022-06-02', NULL),
(93, 9, NULL, 1, '8290 Sawayn Camp\nLake Laila, IN 90253-9696', '2203 Swaniawski Summit Apt. 550\nSouth Travon, VT 74121-6275', 'taken', '2022-06-01', NULL),
(94, 17, NULL, 2, '462 Becker Parkways\nAnibaltown, MT 64462-3775', '047 Wilkinson Unions\nLake Luluberg, NY 55850-6491', 'taken', '2022-05-28', NULL),
(95, 17, NULL, 2, '34889 Javier Locks Suite 517\nAurelieland, DE 75849-5855', '866 Rod Club Apt. 233\nWest Markus, CA 37882', 'taken', '2022-05-28', NULL),
(96, 17, 7, 4, '5969 Gustave Forge Suite 313\nWest Jacintohaven, KY 36491-7210', '95886 Crooks Island\nEast Barbara, IN 77359-5967', 'completed', '2022-06-03', '2022-06-06'),
(97, 18, NULL, 2, '79582 Arnold Shoal\nEast Lorenzo, WY 91648-2100', '1398 West Mountain\nLake Sage, KS 14522', 'taken', '2022-06-01', NULL),
(98, 3, NULL, 4, '977 Metz Plaza\nLindaville, PA 61550', '72275 Ashleigh Cape\nNorth Franco, KY 63498', 'taken', '2022-05-30', NULL),
(99, 2, 1, 1, '6126 Marlee Station\nNorth Eunicehaven, IA 81756', '550 Parisian Radial Suite 741\nWest Frida, NC 82591-1147', 'placed', '2022-06-02', NULL),
(100, 8, 2, 4, '772 Kelli Station Apt. 929\nShayneshire, NM 59174-9796', '675 Craig Plains\nEast Tayaburgh, MD 60189-8885', 'completed', '2022-05-29', '2022-06-06'),
(101, 20, NULL, NULL, 'Gulshan e iqbal block 12', 'Gulshan e iqbal block 9', 'placed', '2022-06-08', NULL),
(102, 8, NULL, NULL, 'Malir 15', 'Nagan block 3', 'placed', '2022-06-06', NULL),
(103, 20, 1, 1, 'Kala pul', 'PECHSs', 'completed', '2022-06-07', '2022-06-06'),
(104, 1, 12, 2, 'lalukheet', 'sarjaani', 'completed', '2022-06-07', '2022-06-06'),
(105, 1, 10, 1, 'kala board', 'qaidabad', 'completed', '2022-06-08', '2022-06-07'),
(106, 12, 6, 3, 'malir halt', 'jauhar bliock 2', 'completed', '2022-06-07', '2022-06-07'),
(107, 16, 8, 4, 'ku', 'jauhar', 'taken', '2022-06-07', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `delivery_man`
--

CREATE TABLE `delivery_man` (
  `dm_id` int(11) NOT NULL,
  `e_id` int(11) NOT NULL,
  `name` varchar(40) NOT NULL,
  `email` varchar(40) NOT NULL,
  `address` varchar(100) NOT NULL,
  `contact_no` varchar(20) NOT NULL,
  `password` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `delivery_man`
--

INSERT INTO `delivery_man` (`dm_id`, `e_id`, `name`, `email`, `address`, `contact_no`, `password`) VALUES
(1, 1, 'Nickolas Effertz', 'mauricio.mitchell@hotmail.com', '8233 Zelma Summit\nSchmittside, AK 66731-5600', '0359-7187956', 'fee'),
(2, 5, 'Marcus Flatley', 'reichel.brent@reilly.com', '7944 Davis Hill Suite 501\nKendrastad, TX 63845', '0382-4818964', 'tyy'),
(3, 5, 'Nichole Erdman', 'conner.goyette@armstrong.net', '4706 Mante Route Apt. 518\nJovannymouth, NC 36201-8399', '0345-7660046', 'huu'),
(4, 2, 'Dr. Arturo Schmitt MD', 'brippin@yahoo.com', '9263 Thomas Extensions\nMurraystad, DC 59554-6651', '0371-3943059', 'tyu'),
(5, 2, 'Amy Beahan', 'mollie.jerde@gmail.com', '69449 Stehr Spur\nLake Pansyberg, LA 37589', '0362-9197665', 'jkl'),
(6, 3, 'Sister Lockman', 'nwisozk@yahoo.com', '07510 Natalia Harbor\nIsmaelport, CO 73921', '0346-9216890', 'pio'),
(7, 1, 'Prof. Woodrow Howell DDS', 'troberts@bechtelar.biz', '6091 Kellen Turnpike\nTrantowchester, MD 50797', '0356-5988978', 'jiu'),
(8, 4, 'Ludwig Treutel', 'xschowalter@hotmail.com', '69592 Nadia Shore Suite 358\nSouth Dewitt, CT 22258', '0365-2389779', 'huj'),
(9, 3, 'Mr. Emmitt Boehm Sr.', 'estel45@collins.com', '503 Mayer Drives Suite 929\nDianaberg, IN 53003-3867', '0371-5900295', 'kik'),
(10, 1, 'Dr. Deangelo O\'Conner IV', 'fritz.crona@gmail.com', '430 Schamberger Oval\nAdrianastad, AL 29449', '0312-4684894', 'kio'),
(11, 1, 'Una Kessler', 'jazmyn.boyle@hotmail.com', '1860 Lessie Station\nNitzscheshire, LA 69039-3040', '0321-8652375', 'lol'),
(12, 2, 'Pansy Armstrong', 'raheem61@gmail.com', '534 Homenick Court\nDinoville, AZ 74254-8325', '0390-7239160', 'poi'),
(13, 1, 'Hellen Wiza', 'katheryn07@metz.com', '062 Thea Coves\nMariliefort, KS 06318', '0367-9690644', 'yuy'),
(14, 2, 'Alessandro Murazik', 'heber95@hotmail.com', '0490 Elenor Point\nEast Rosieshire, ID 42537-0648', '0363-0196954', 'mjh'),
(15, 5, 'Blanche Mosciski', 'yazmin89@hermistonanderson.info', '8288 Jesse Stream Suite 552\nSouth Electa, WI 53874', '0349-7397500', 'def'),
(16, 2, 'Kirstin Waters', 'satterfield.jewel@osinski.info', '25594 Rod Run Apt. 647\nDannieburgh, AZ 53508-3574', '0359-7346499', 'huh'),
(17, 5, 'Prof. Dayton Von', 'dkris@yahoo.com', '375 Mazie Way Suite 588\nPort Brain, ME 22714', '0366-4964990', 'juk'),
(18, 3, 'Evangeline Reichert', 'ubrakus@thompson.biz', '933 Xzavier Center Apt. 279\nSouth Maurineshire, RI 01552-0391', '0309-7376884', 'kik'),
(19, 3, 'Lavada Huel', 'smorar@hotmail.com', '869 General Hills\nFunkfort, IN 70376', '0338-8454540', 'jki'),
(20, 1, 'Austin Bechtelar', 'ryann.hahn@gmail.com', '25751 Nettie Corner Suite 740\nQuitzonhaven, KY 65958', '0344-7401025', 'iht');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `e_id` int(11) NOT NULL,
  `name` varchar(40) NOT NULL,
  `email` varchar(40) NOT NULL,
  `address` varchar(100) NOT NULL,
  `contact_no` varchar(20) NOT NULL,
  `password` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`e_id`, `name`, `email`, `address`, `contact_no`, `password`) VALUES
(1, 'Destini Sanford II', 'spowlowski@binsgulgowski.biz', '905 Nayeli Canyon\nPort Waylonville, MS 90515-1974', '1-730-971-2893x019', 'aaa'),
(2, 'Doyle Conroy', 'mbosco@lemke.com', '001 Wilderman Valley\nLake Wilbermouth, IL 41772', '522.930.0637x6564', 'aiy'),
(3, 'Brandy Streich', 'emmerich.sean@gmail.com', '35391 Dorris Rapid Suite 786\nVincentland, WY 59246-2506', '915.714.0018x60730', 'add'),
(4, 'Mr. Orion Witting I', 'ayana90@gmail.com', '586 Kunze Island\nRogahnborough, VT 00420', '(689)219-8276', 'fee'),
(5, 'Wilma Bahringer', 'bgoodwin@hotmail.com', '8942 Golden Meadow Apt. 800\nAleenmouth, OH 45083-1579', '08751682254', 'ree');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `delivery`
--
ALTER TABLE `delivery`
  ADD PRIMARY KEY (`d_id`),
  ADD KEY `e_id` (`e_id`),
  ADD KEY `dm_id` (`dm_id`),
  ADD KEY `c_id` (`c_id`);

--
-- Indexes for table `delivery_man`
--
ALTER TABLE `delivery_man`
  ADD PRIMARY KEY (`dm_id`),
  ADD KEY `e_id` (`e_id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`e_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `c_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `delivery`
--
ALTER TABLE `delivery`
  MODIFY `d_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;

--
-- AUTO_INCREMENT for table `delivery_man`
--
ALTER TABLE `delivery_man`
  MODIFY `dm_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `e_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `delivery`
--
ALTER TABLE `delivery`
  ADD CONSTRAINT `delivery_ibfk_1` FOREIGN KEY (`e_id`) REFERENCES `employee` (`e_id`),
  ADD CONSTRAINT `delivery_ibfk_2` FOREIGN KEY (`dm_id`) REFERENCES `delivery_man` (`dm_id`),
  ADD CONSTRAINT `delivery_ibfk_3` FOREIGN KEY (`c_id`) REFERENCES `customer` (`c_id`);

--
-- Constraints for table `delivery_man`
--
ALTER TABLE `delivery_man`
  ADD CONSTRAINT `delivery_man_ibfk_1` FOREIGN KEY (`e_id`) REFERENCES `employee` (`e_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
