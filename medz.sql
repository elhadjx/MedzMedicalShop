-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 08, 2021 at 01:02 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.3.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `medz`
--

-- --------------------------------------------------------

--
-- Table structure for table `commands`
--

CREATE TABLE `commands` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `address` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `commands`
--

INSERT INTO `commands` (`id`, `user_id`, `product_id`, `quantity`, `address`, `date`) VALUES
(1, 22, 8, 3, 'Hadj Hadji, 02, Bensliman Bachir, eRde, , 31200, Djelfa, ', '2021-07-06 13:37:11'),
(2, 22, 8, 3, 'HAdj Hadj, 12 address, 4522, Tizi Ouzou, ', '2021-07-06 13:37:11'),
(3, 22, 7, 3, 'Hadj Hadji, 02, Ben, 31200, Tlemcen, algeria', '2021-07-06 13:37:11'),
(4, 22, 8, 3, 'Hadj Hadji, 02, Bene, , 31200, Tiaret, algeria', '2021-07-06 13:37:11'),
(5, 21, 8, 3, 'Hadj Hadji, 02, Bensliman Bachir, eRde, , 31200, Djelfa, algeria', '2021-07-06 13:37:11'),
(6, 22, 8, 2, 'Hadj kjkj, 02 Bensliman Bachir, Benbadis, 45034, Naama, algeria', '2021-07-06 13:37:11'),
(7, 22, 27, 1, ' dfg, sdgsfg, 45, Jijel, algeria', '2021-07-06 13:37:11'),
(8, 22, 1, 2, ' , , , , algerie', '2021-07-06 13:37:11'),
(9, 22, 5, 1, 'Hadj Hadji, 02, Bensliman Bachir, eRde, , 31200, , algerie', '2021-07-06 13:37:11'),
(10, 22, 4, 3, ' , , , , Algeria', '2021-07-06 13:37:11'),
(11, 27, 27, 1, 'Hadj HAdj, 12, 6540, Jijel, algerie', '2021-07-06 16:01:38');

-- --------------------------------------------------------

--
-- Table structure for table `panier`
--

CREATE TABLE `panier` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `panier`
--

INSERT INTO `panier` (`id`, `user_id`, `product_id`) VALUES
(1, 22, 1),
(2, 22, 2),
(3, 22, 2),
(4, 0, 27),
(5, 22, 4),
(6, 27, 27),
(7, 19, 62);

-- --------------------------------------------------------

--
-- Table structure for table `produits`
--

CREATE TABLE `produits` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `category` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `price` int(11) NOT NULL,
  `image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `produits`
--

INSERT INTO `produits` (`id`, `name`, `category`, `description`, `price`, `image`) VALUES
(1, 'Spirometre electronique Vitalograph COPD-6', 'cardiologie', 'Avec un equipement cardiologie de notre boutique materiel medical, le specialiste que vous etes fait beneficier des meilleurs soins e vos patients.', 20000, 'Spirometre electronique Vitalograph COPD-6.jpg'),
(2, 'ECG CONTEC 3 pistes', 'cardiologie', 'Avec un equipement cardiologie de notre boutique materiel medical, le specialiste que vous etes fait beneficier des meilleurs soins e vos patients.', 140000, 'ECG CONTEC 3 pistes.jpg'),
(27, 'echographe Samsung HS40 (unite centrale seule)', 'cardiologie', 'Avec un equipement cardiologie de notre boutique materiel medical, le specialiste que vous etes fait beneficier des meilleurs soins e vos patients.', 350000, 'echog.jpg'),
(4, 'Gel Parker - gel Aquasonic', 'cardiologie', 'Avec un equipement cardiologie de notre boutique materiel medical, le specialiste que vous etes fait beneficier des meilleurs soins e vos patients.', 500, 'Gel Parker - gel Aquasonic.jpg'),
(5, 'Sonde convexe Samsung CA2-8AD', 'cardiologie', 'Avec un equipement cardiologie de notre boutique materiel medical, le specialiste que vous etes fait beneficier des meilleurs soins e vos patients.', 600000, 'Sonde convexe Samsung CA2-8AD.jpg'),
(3, 'Sonde endocavitaire Samsung EVN4-9', 'cardiologie', 'Avec un equipement cardiologie de notre boutique materiel medical, le specialiste que vous etes fait beneficier des meilleurs soins e vos patients.', 450000, 'Sonde endocavitaire Samsung EVN4-9.jpg'),
(7, 'Moniteur multiparametrique M1000', 'cardiologie', 'Avec un equipement cardiologie de notre boutique materiel medical, le specialiste que vous etes fait beneficier des meilleurs soins e vos patients.', 320000, 'Moniteur multiparametrique M1000.jpg'),
(8, 'Stethoscope Cardio Prestige II', 'cardiologie', 'Avec un equipement cardiologie de notre boutique materiel medical, le specialiste que vous etes fait beneficier des meilleurs soins e vos patients.', 18000, 'Stethoscope Cardio Prestige II.png'),
(9, 'ECG 3 pistes Wepulse 90A Contec', 'cardiologie', 'Avec un equipement cardiologie de notre boutique materiel medical, le specialiste que vous etes fait beneficier des meilleurs soins e vos patients.', 280000, 'ECG 3 pistes Wepulse 90A Contec.jpg'),
(10, 'ECG Nihon Kohden Cardiofax S 2250', 'cardiologie', 'Avec un equipement cardiologie de notre boutique materiel medical, le specialiste que vous etes fait beneficier des meilleurs soins e vos patients.', 600000, 'ECG Nihon Kohden Cardiofax S 2250.jpg'),
(11, 'Logiciel smart ECG viewer pour ECG SE-301 (Edan)', 'cardiologie', 'Avec un equipement cardiologie de notre boutique materiel medical, le specialiste que vous etes fait beneficier des meilleurs soins e vos patients.', 110000, 'Logiciel smart ECG viewer pour ECG SE-301 (Edan).jpg'),
(12, 'Spray de contact liquide pour ECG Clinical', 'cardiologie', 'Avec un equipement cardiologie de notre boutique materiel medical, le specialiste que vous etes fait beneficier des meilleurs soins e vos patients.', 5600, 'Spray de contact liquide pour ECG Clinical.jpg'),
(13, 'Gueridon en inox ECO e 2 ou 3 plateaux', 'cardiologie', 'Avec un equipement cardiologie de notre boutique materiel medical, le specialiste que vous etes fait beneficier des meilleurs soins e vos patients.', 24000, 'Gueridon en inox ECO e 2 ou 3 plateaux.jpg'),
(14, 'Moniteur de Sante connecte Checkme Pro', 'cardiologie', 'Avec un equipement cardiologie de notre boutique materiel medical, le specialiste que vous etes fait beneficier des meilleurs soins e vos patients.', 70000, 'Moniteur de Sante connecte Checkme Pro.jpg'),
(15, 'electrode de diagnostic ECG - e languette', 'cardiologie', 'Avec un equipement cardiologie de notre boutique materiel medical, le specialiste que vous etes fait beneficier des meilleurs soins e vos patients.', 9600, 'electrode de diagnostic ECG - e languette.jpg'),
(16, 'Tensiometre BPM Core WITHINGS', 'cardiologie', 'Avec un equipement cardiologie de notre boutique materiel medical, le specialiste que vous etes fait beneficier des meilleurs soins e vos patients.', 43000, 'Tensiometre BPM Core WITHINGS.jpg'),
(17, 'DIVAN CARDIO-HAUT FIXE-LARG 67CM GNRQ', 'cardiologie', 'Avec un equipement cardiologie de notre boutique materiel medical, le specialiste que vous etes fait beneficier des meilleurs soins e vos patients.', 350000, 'DIVAN CARDIO-HAUT FIXE-LARG 67CM GNRQ.jpg'),
(18, 'Papier ECG pour ECG 3 pistes Cardio E3 NEW TECH', 'cardiologie', 'Avec un equipement cardiologie de notre boutique materiel medical, le specialiste que vous etes fait beneficier des meilleurs soins e vos patients.', 5000, 'Papier ECG pour ECG 3 pistes Cardio E3 NEW TECH.jpg'),
(19, 'TENSIOMETRE ELECTRONIQUE', 'cardiologie', 'Avec un equipement cardiologie de notre boutique materiel medical, le specialiste que vous etes fait beneficier des meilleurs soins e vos patients.', 11000, 'TENSIOMETRE ELECTRONIQUE.jpg'),
(20, 'Spot Monitor PNI - Temperature - SpO2', 'cardiologie', 'Avec un equipement cardiologie de notre boutique materiel medical, le specialiste que vous etes fait beneficier des meilleurs soins e vos patients.', 560000, 'Spot Monitor PNI - Temperature - SpO2.jpg'),
(21, 'Oxymetre Oxypad Sensors adulte', 'cardiologie', 'Avec un equipement cardiologie de notre boutique materiel medical, le specialiste que vous etes fait beneficier des meilleurs soins e vos patients.', 24000, 'Oxymetre Oxypad Sensors adulte.jpg'),
(22, 'Logiciel PC H100B', 'cardiologie', 'Avec un equipement cardiologie de notre boutique materiel medical, le specialiste que vous etes fait beneficier des meilleurs soins e vos patients.', 38000, 'Logiciel PC H100B.jpg'),
(23, 'CAPTEUR SP02 ADULTE', 'cardiologie', 'Avec un equipement cardiologie de notre boutique materiel medical, le specialiste que vous etes fait beneficier des meilleurs soins e vos patients.', 19000, 'CAPTEUR SP02 ADULTE.jpg'),
(24, 'Debitmetre electronique Vitalograph ASMA-1', 'cardiologie', 'Avec un equipement cardiologie de notre boutique materiel medical, le specialiste que vous etes fait beneficier des meilleurs soins e vos patients.', 18500, 'Debitmetre electronique Vitalograph ASMA-1.jpg'),
(25, 'electrode de surveillance pediatrique 3Me Red Dote 2248', 'cardiologie', 'Avec un equipement cardiologie de notre boutique materiel medical, le specialiste que vous etes fait beneficier des meilleurs soins e vos patients.', 5900, 'electrode de surveillance pediatrique 3Me Red Dote 2248.jpg'),
(26, 'electrode de surveillance 3Me Red Dote 2560', 'cardiologie', 'Avec un equipement cardiologie de notre boutique materiel medical, le specialiste que vous etes fait beneficier des meilleurs soins e vos patients.', 15000, 'electrode de surveillance 3Me Red Dote 2560.jpg'),
(29, 'Lasers dentaires', 'dentaire', 'Avec un equipement dentaire de notre boutique materiel medical, le specialiste que vous etes fait beneficier des meilleurs soins e vos patients.', 10000, 'Lasers dentaires.jpg'),
(30, 'Fraises dentaires', 'dentaire', 'Avec un equipement dentaire de notre boutique materiel medical, le specialiste que vous etes fait beneficier des meilleurs soins e vos patients.', 50000, 'Fraises dentaires.jpg'),
(31, 'Pieces a mains dentaires', 'Avec un equipement dentaire de notre boutique materiel medical, le specialiste que vous etes fait be', 'dentaire', 20000, 'Pieces a mains dentaires.jpg'),
(32, 'Pinces dentaires', 'dentaire', 'Avec un equipement dentaire de notre boutique materiel medical, le specialiste que vous etes fait beneficier des meilleurs soins e vos patients.', 2000, 'Pinces dentaires.jpg'),
(33, 'Miroirs dentaires', 'dentaire', 'Avec un equipement dentaire de notre boutique materiel medical, le specialiste que vous etes fait beneficier des meilleurs soins e vos patients.', 3000, 'Miroirs dentaires.jpg'),
(34, 'Manches de miroirs dentaires', 'Avec un equipement dentaire de notre boutique materiel medical, le specialiste que vous etes fait be', 'dentaire', 2500, 'Manches de miroirs dentaires.jpg'),
(35, 'Limes dentaires', 'dentaire', 'Avec un equipement dentaire de notre boutique materiel medical, le specialiste que vous etes fait beneficier des meilleurs soins e vos patients.', 3500, 'Limes dentaires.jpg'),
(36, 'Aeropolisseurs dentaires', 'Avec un equipement dentaire de notre boutique materiel medical, le specialiste que vous etes fait be', 'dentaire', 12000, 'Aeropolisseurs dentaires.jpg'),
(37, 'Seringues dentaires', 'Avec un equipement dentaire de notre boutique materiel medical, le specialiste que vous etes fait be', 'dentaire', 1500, 'Seringues dentaires.jpg'),
(38, 'Lampes a polymeriser dentaires', 'Avec un equipement dentaire de notre boutique materiel medical, le specialiste que vous etes fait be', 'dentaire', 5000, 'Lampes a polymeriser dentaires.jpg'),
(39, 'Porte-empreinte dentaires', 'Avec un equipement dentaire de notre boutique materiel medical, le specialiste que vous etes fait be', 'dentaire', 4000, 'Porte-empreinte dentaires.jpg'),
(40, 'Instruments a modeler', 'dentaire', 'Avec un equipement dentaire de notre boutique materiel medical, le specialiste que vous etes fait beneficier des meilleurs soins e vos patients.', 7000, 'Instruments a modeler.jpg'),
(41, 'Spatules dentaires', 'dentaire', 'Avec un equipement dentaire de notre boutique materiel medical, le specialiste que vous etes fait beneficier des meilleurs soins e vos patients.', 3000, 'Spatules dentaires.jpg'),
(42, 'Bistouris dentaires', 'dentaire', 'Avec un equipement dentaire de notre boutique materiel medical, le specialiste que vous etes fait beneficier des meilleurs soins e vos patients.', 1000, 'Bistouris dentaires.png'),
(43, 'Ciseaux dentaires', 'dentaire', 'Avec un equipement dentaire de notre boutique materiel medical, le specialiste que vous etes fait beneficier des meilleurs soins e vos patients.', 2000, 'Ciseaux dentaires.jpg'),
(44, 'Maillets chirurgicaux', 'dentaire', 'Avec un equipement dentaire de notre boutique materiel medical, le specialiste que vous etes fait beneficier des meilleurs soins e vos patients.', 5000, 'Maillets chirurgicaux.jpg'),
(45, 'Ecarteurs dentaires', 'dentaire', 'Avec un equipement dentaire de notre boutique materiel medical, le specialiste que vous etes fait beneficier des meilleurs soins e vos patients.', 4100, 'Ecarteurs dentaires.jpg'),
(46, 'Ouvre-bouches', 'dentaire', 'Avec un equipement dentaire de notre boutique materiel medical, le specialiste que vous etes fait beneficier des meilleurs soins e vos patients.', 3100, 'Ouvre-bouches.jpg'),
(47, 'Pinces-orthodontiques', 'dentaire', 'Avec un equipement dentaire de notre boutique materiel medical, le specialiste que vous etes fait beneficier des meilleurs soins e vos patients.', 1800, 'Pinces-orthodontiques.jpg'),
(48, 'Aligneurs dentaires', 'dentaire', 'Avec un equipement dentaire de notre boutique materiel medical, le specialiste que vous etes fait beneficier des meilleurs soins e vos patients.', 7200, 'Aligneurs dentaires.jpg'),
(49, 'Porte-amalgames', 'dentaire', 'Avec un equipement dentaire de notre boutique materiel medical, le specialiste que vous etes fait beneficier des meilleurs soins e vos patients.', 5300, 'Porte-amalgames.jpg'),
(50, 'Adhesifs dentaires', 'dentaire', 'Avec un equipement dentaire de notre boutique materiel medical, le specialiste que vous etes fait beneficier des meilleurs soins e vos patients.', 6100, 'Adhesifs dentaires.jpg'),
(51, 'Sondes dentaires', 'dentaire', 'Avec un equipement dentaire de notre boutique materiel medical, le specialiste que vous etes fait beneficier des meilleurs soins e vos patients.', 1200, 'Sondes dentaires.jpg'),
(52, 'Detartreurs dentaires', 'dentaire', 'Avec un equipement dentaire de notre boutique materiel medical, le specialiste que vous etes fait beneficier des meilleurs soins e vos patients.', 30000, 'Detartreurs dentaires.jpg'),
(53, 'Limes dentaires', 'dentaire', 'Avec un equipement dentaire de notre boutique materiel medical, le specialiste que vous etes fait beneficier des meilleurs soins e vos patients.', 2800, 'Limes dentaires.jpg'),
(54, 'curettes dentaires', 'dentaire', 'Avec un equipement dentaire de notre boutique materiel medical, le specialiste que vous etes fait beneficier des meilleurs soins e vos patients.', 3600, 'curettes dentaires.jpg'),
(55, 'Inserts ultrasoniques', 'dentaire', 'Avec un equipement dentaire de notre boutique materiel medical, le specialiste que vous etes fait beneficier des meilleurs soins e vos patients.', 9600, 'Inserts ultrasoniques.jpg'),
(56, 'Manches de miroirs dentaires', 'dentaire', 'Avec un equipement dentaire de notre boutique materiel medical, le specialiste que vous etes fait beneficier des meilleurs soins e vos patients.', 2900, 'Manches de miroirs dentaires.jpg'),
(57, 'Pince longuette', 'gynecologie', 'Avec un equipement gynecologie de notre boutique materiel medical, le specialiste que vous etes fait beneficier des meilleurs soins e vos patients.', 2300, 'Pince longuette.jpg'),
(58, 'Sonde vaginale', 'gynecologie', 'Avec un equipement gynecologie de notre boutique materiel medical, le specialiste que vous etes fait beneficier des meilleurs soins e vos patients.', 6000, 'Sonde vaginale.jpg'),
(59, 'Option 4D echographie Samsung HS40', 'gynecologie', 'Avec un equipement gynecologie de notre boutique materiel medical, le specialiste que vous etes fait beneficier des meilleurs soins e vos patients.', 400000, 'Option 4D echographie Samsung HS40.jpg'),
(60, 'Gel aqueux', 'gynecologie', 'Avec un equipement gynecologie de notre boutique materiel medical, le specialiste que vous etes fait beneficier des meilleurs soins e vos patients.', 1200, 'Gel aqueux.jpg'),
(61, 'Speculums de Collins a usage unique', 'gynecologie', 'Avec un equipement gynecologie de notre boutique materiel medical, le specialiste que vous etes fait beneficier des meilleurs soins e vos patients.', 5000, 'Speculums de Collins a usage unique.jpg'),
(62, 'Option Realistic view echographe SAMSUNG', 'gynecologie', 'Avec un equipement gynecologie de notre boutique materiel medical, le specialiste que vous etes fait beneficier des meilleurs soins e vos patients.', 300000, 'Option Realistic view echographe SAMSUNG.jpg'),
(63, 'Pince Adson Ultra Fine avec griffes 120 mm - Lot de 10', 'gynecologie', 'Avec un equipement gynecologie de notre boutique materiel medical, le specialiste que vous etes fait beneficier des meilleurs soins e vos patients.', 6200, 'Pince Adson Ultra Fine avec griffes 120 mm - Lot de 10.jpg'),
(64, 'Pince de Pozzi Evolution', 'gynecologie', 'Avec un equipement gynecologie de notre boutique materiel medical, le specialiste que vous etes fait beneficier des meilleurs soins e vos patients.', 18000, 'Pince de Pozzi Evolution.jpg'),
(65, 'Pince coupe-clamp e usage unique - Boete de 25', 'gynecologie', 'Avec un equipement gynecologie de notre boutique materiel medical, le specialiste que vous etes fait beneficier des meilleurs soins e vos patients.', 21000, 'Pince coupe-clamp e usage unique - Boete de 25.jpg'),
(66, 'Hysterometre Double Evolution', 'gynecologie', 'Avec un equipement gynecologie de notre boutique materiel medical, le specialiste que vous etes fait beneficier des meilleurs soins e vos patients.', 15000, 'Hysterometre Double Evolution.jpg'),
(67, 'Clamp de Bahr', 'gynecologie', 'Avec un equipement gynecologie de notre boutique materiel medical, le specialiste que vous etes fait beneficier des meilleurs soins e vos patients.', 18500, 'Clamp de Bahr.jpg'),
(68, 'Pince de Cheron - Sterile e usage unique', 'gynecologie', 'Avec un equipement gynecologie de notre boutique materiel medical, le specialiste que vous etes fait beneficier des meilleurs soins e vos patients.', 6300, 'Pince de Cheron - Sterile e usage unique.jpg'),
(69, 'Ciseaux de cordon ombilical - Steriles e usage unique', 'gynecologie', 'Avec un equipement gynecologie de notre boutique materiel medical, le specialiste que vous etes fait beneficier des meilleurs soins e vos patients.', 7000, 'Ciseaux de cordon ombilical - Steriles e usage unique.jpg'),
(70, 'Video-colposcope C3A EDAN', 'gynecologie', 'Avec un equipement gynecologie de notre boutique materiel medical, le specialiste que vous etes fait beneficier des meilleurs soins e vos patients.', 800000, 'Video-colposcope C3A EDAN.jpg'),
(71, 'OHNUT - AMORTISSEUR INTIME', 'gynecologie', 'Avec un equipement gynecologie de notre boutique materiel medical, le specialiste que vous etes fait beneficier des meilleurs soins e vos patients.', 13000, 'OHNUT - AMORTISSEUR INTIME.jpg'),
(72, 'PINCE POZZI PLASTIQUE STERILE', 'gynecologie', 'Avec un equipement gynecologie de notre boutique materiel medical, le specialiste que vous etes fait beneficier des meilleurs soins e vos patients.', 31000, 'PINCE POZZI PLASTIQUE STERILE.jpg'),
(73, 'COLPOSCOPE BINOCULAIRE ALSCOPE-HD', 'gynecologie', 'Avec un equipement gynecologie de notre boutique materiel medical, le specialiste que vous etes fait beneficier des meilleurs soins e vos patients.', 920000, 'COLPOSCOPE BINOCULAIRE ALSCOPE-HD.gif'),
(74, 'Prelevement cervico-vaginal - Cytoral vaporisateur 110ml', 'gynecologie', 'Avec un equipement gynecologie de notre boutique materiel medical, le specialiste que vous etes fait beneficier des meilleurs soins e vos patients.', 900, 'Prelevement cervico-vaginal - Cytoral vaporisateur 110ml.jpg'),
(75, 'Pince longuette -IMP 25 cm droite', 'gynecologie', 'Avec un equipement gynecologie de notre boutique materiel medical, le specialiste que vous etes fait beneficier des meilleurs soins e vos patients.', 3250, 'Pince longuette -IMP 25 cm droite.jpg'),
(76, 'Porte coton uterin', 'gynecologie', 'Avec un equipement gynecologie de notre boutique materiel medical, le specialiste que vous etes fait beneficier des meilleurs soins e vos patients.', 2800, 'Porte coton uterin.png'),
(77, 'Canule de Novak 24 cm', 'gynecologie', 'Avec un equipement gynecologie de notre boutique materiel medical, le specialiste que vous etes fait beneficier des meilleurs soins e vos patients.', 4000, 'Canule de Novak 24 cm.jpg'),
(78, 'Pince de Terrhun', 'gynecologie', 'Avec un equipement gynecologie de notre boutique materiel medical, le specialiste que vous etes fait beneficier des meilleurs soins e vos patients.', 25000, 'Pince de Terrhun.jpg'),
(79, 'Pince e polypes de Palmer', 'gynecologie', 'Avec un equipement gynecologie de notre boutique materiel medical, le specialiste que vous etes fait beneficier des meilleurs soins e vos patients.', 17800, 'Pince e polypes de Palmer.jpg'),
(80, 'Speculums auriculaires Unispec Heine', 'gynecologie', 'Avec un equipement gynecologie de notre boutique materiel medical, le specialiste que vous etes fait beneficier des meilleurs soins e vos patients.', 690, 'Speculums auriculaires Unispec Heine.jpg'),
(81, 'Pince de Forester striee droite', 'gynecologie', 'Avec un equipement gynecologie de notre boutique materiel medical, le specialiste que vous etes fait beneficier des meilleurs soins e vos patients.', 3600, 'Pince de Forester striee droite.jpg'),
(82, 'Speculums auriculaire pour Macroview', 'gynecologie', 'Avec un equipement gynecologie de notre boutique materiel medical, le specialiste que vous etes fait beneficier des meilleurs soins e vos patients.', 8200, 'Speculums auriculaire pour Macroview.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `wishlist` text NOT NULL,
  `panier` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `password`, `email`, `wishlist`, `panier`) VALUES
(24, 'Abd Samad', 'abd@samad.com', 'abd@samad.com', '', ''),
(26, '9embelouz', 'dzdzdzdzdzdzdzd', 'charaf@gmail.dz', '', ''),
(19, 'Hadj Hadji', 'dino.elhaj@gmail.com', 'dino.elhaj@gmail.com', '', ''),
(20, 'Hadj Hadji', 'dino.elhsaj@gmail.com', 'dino.elhsaj@gmail.com', '', ''),
(23, 'fahed', 'aaaaaaaaa', 'fahed@fahed.com', '', ''),
(27, 'hadjhadj', 'hadj', 'hadj@hadj.com', '', ''),
(22, 'Nardjes Laib', 'nardjes', 'nardjes@laib.com', '', ''),
(25, 'Yekhroj Mustapha', 'deydeydey', 'ndirodeydey@gmail.com', '', ''),
(21, 'Yaser', 'yaser@gmail.com', 'yaser@gmail.com', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`id`, `user_id`, `product_id`) VALUES
(1, 22, 1),
(2, 22, 3),
(3, 27, 2),
(4, 19, 62);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `commands`
--
ALTER TABLE `commands`
  ADD KEY `id` (`id`);

--
-- Indexes for table `panier`
--
ALTER TABLE `panier`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `produits`
--
ALTER TABLE `produits`
  ADD KEY `id` (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `id_2` (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `commands`
--
ALTER TABLE `commands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `panier`
--
ALTER TABLE `panier`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `produits`
--
ALTER TABLE `produits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
