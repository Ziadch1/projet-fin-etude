-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 03, 2023 at 04:34 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bd-pfe`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_06_06_140956_create_paniers_table', 2),
(6, '2023_07_02_205545_add_type_to_users', 3);

-- --------------------------------------------------------

--
-- Table structure for table `paniers`
--

CREATE TABLE `paniers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `prix` varchar(255) NOT NULL,
  `quantity` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `paniers`
--

INSERT INTO `paniers` (`id`, `title`, `img`, `description`, `prix`, `quantity`, `type`, `created_at`, `updated_at`) VALUES
(2, '150R – INTEL CORE I5-11600K-RTX 3070', 'pc3.png', 'BOITIER: CORSAIR 4000D AIRFLOW, CARTE MERE: MSI MPG Z590 GAMING PLUS, PROCESSEUR: INTEL CORE I5-11600K (3.9 GHZ / 4.9 GHZ), CARTE GRAPHIQUE: EVGA GEFORCE RTX 3070 8GB XC3 ULTRA, RAM: 16GB (8GB X 2) 3200MHZ DDR4 CRUCIAL BALLISTIX BLACK, STOCKAGE SSD: WD BLACK SN750 500GB NVME M.2, PSU: EVGA SUPERNOVA 750 GA, WATERCOOLER: CORSAIR H100I RGB PRO XT', '17499.00', '10', 'pcgamer', '2023-07-02 18:26:06', '2023-07-02 18:26:06'),
(4, '110R – INTEL CORE I7-10700K-RTX 3070', 'pc2.png', 'BOITIER: MSI MPG GUNGNIR 110R, CARTE MERE: GIGABYTE Z490 D DDR4, PROCESSEUR: INTEL CORE I7-10700K (3.8 GHZ / 5.1 GHZ), CARTE GRAPHIQUE: PNY GEFORCE RTX 3070 8GB VERTO TRIPLE FAN, RAM: 32GB (16GB X 2) 3200MHZ DDR4 XPG GAMMIX D30 NOIR, STOCKAGE SSD: OCPC 1TO XTL-300 SSD M.2 NVME PCIE 3.0, PSU: AORUS P750W 80PLUS GOLD, WATERCOOLER: M.RED AIO 240MM RGB RAINBOW – AIRW-24', '22999.00', '12', 'pcgamer', '2023-07-02 19:27:23', '2023-07-02 19:27:23'),
(5, '200R – AMD RYZEN 7 5800X-RTX 3070 Ti', 'pc8.png', 'BOITIER: PHANTEKS ECLIPSE P500A, CARTE MERE: ASUS ROG STRIX X570-E GAMING, PROCESSEUR: AMD RYZEN 7 5800X (3.8 GHZ / 4.7 GHZ), CARTE GRAPHIQUE: GIGABYTE GEFORCE RTX 3070 Ti 8GB GAMING OC, RAM: 32GB (16GB X 2) 3600MHZ DDR4 CORSAIR VENGEANCE RGB PRO, STOCKAGE SSD: WD BLACK SN850 1TB NVME M.2, PSU: CORSAIR RM750X 80 PLUS GOLD, WATERCOOLER: NZXT KRAKEN X73', '25999.00', '9', 'pcgamer', '2023-07-02 19:40:38', '2023-07-02 19:40:38');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `img` text NOT NULL,
  `description` text NOT NULL,
  `prix` varchar(255) NOT NULL,
  `quantity` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `img`, `description`, `prix`, `quantity`, `type`, `created_at`, `updated_at`) VALUES
(1, '110R – INTEL CORE I7-12700K-RTX 4080', 'https://setupgame.ma/wp-content/uploads/2023/02/PC-GAMER-RTX-4080-PRIX-MAROC-110R-Setup-Game-300x300.jpg.webp', 'BOITIER: MSI MPG GUNGNIR 110R, CARTE MERE: GIGABYTE Z790 D DDR4, PROCESSEUR: INTEL CORE I7-12700K (3.6 GHZ / 5.0 GHZ), CARTE GRAPHIQUE: PNY GEFORCE RTX 4080 16GB VERTO TRIPLE FAN, RAM: 32GB (16GB X 2) 3200MHZ DDR4 XPG GAMMIX D30 NOIR, STOCKAGE SSD: OCPC 1TO XTL-300 SSD M.2 NVME PCIE 3.0, PSU: AORUS P850W 80PLUS GOLD, WATERCOOLER: M.RED AIO 240MM RGB RAINBOW – AIRW-24', '30799.00', '17', 'pcgamer', NULL, '2023-07-03 13:36:39'),
(2, '110R – INTEL CORE I7-10700K-RTX 3070', 'https://setupgame.ma/wp-content/uploads/2023/02/Pc-Gamer-I7-12700K-RTX-4090-ELITE-BLACK-RAINBOW-ARGB-Maroc-Setup-Game-300x300.jpg.webp\n', 'BOITIER: MSI MPG GUNGNIR 110R, CARTE MERE: GIGABYTE Z490 D DDR4, PROCESSEUR: INTEL CORE I7-10700K (3.8 GHZ / 5.1 GHZ), CARTE GRAPHIQUE: PNY GEFORCE RTX 3070 8GB VERTO TRIPLE FAN, RAM: 32GB (16GB X 2) 3200MHZ DDR4 XPG GAMMIX D30 NOIR, STOCKAGE SSD: OCPC 1TO XTL-300 SSD M.2 NVME PCIE 3.0, PSU: AORUS P750W 80PLUS GOLD, WATERCOOLER: M.RED AIO 240MM RGB RAINBOW – AIRW-24', '22999.00', '12', 'pcgamer', NULL, NULL),
(4, '160R – AMD RYZEN 5 5600X-RTX 3060', 'https://pcgamercasa.ma/9199-large_default/pc-gamer-amd-ryzen-5-5600x-rtx-3060-12gb-Pc-Gamer-Casa-Maroc.jpg', 'BOITIER: COOLER MASTER MASTERBOX NR600, CARTE MERE: ASUS TUF B550-PLUS GAMING, PROCESSEUR: AMD RYZEN 5 5600X (3.7 GHZ / 4.6 GHZ), CARTE GRAPHIQUE: ASUS DUAL GEFORCE RTX 3060 12GB OC, RAM: 16GB (8GB X 2) 3200MHZ DDR4 CORSAIR VENGEANCE LPX, STOCKAGE SSD: CRUCIAL P2 500GB NVME M.2, PSU: CORSAIR TX650M 80 PLUS GOLD, WATERCOOLER: COOLER MASTER MASTERLIQUID ML240L RGB V2', '12811.00', '15', 'pcgamer', NULL, '2023-07-03 01:24:20'),
(5, '170R – INTEL CORE I9-10900K-RTX 3090', 'https://setupgame.ma/wp-content/uploads/2023/04/Pc-Gamer-Core-i5-13400F-RTX-3050-SG-LINES-Setup-Game-Maroc.png.webp\n', 'BOITIER: NZXT H510, CARTE MERE: ASUS ROG STRIX Z490-E GAMING, PROCESSEUR: INTEL CORE I9-10900K (3.7 GHZ / 5.3 GHZ), CARTE GRAPHIQUE: MSI GEFORCE RTX 3090 24GB GAMING X TRIO, RAM: 64GB (32GB X 2) 3600MHZ DDR4 G.SKILL TRIDENT Z NEO RGB, STOCKAGE SSD: SAMSUNG 980 PRO 2TB NVME M.2, PSU: CORSAIR RM1000X 80 PLUS GOLD, WATERCOOLER: NZXT KRAKEN Z73', '58999.00', '3', 'pcgamer', NULL, NULL),
(6, '180R – AMD RYZEN 9 5900X-RTX 3080', 'https://i0.wp.com/setupgame.ma/wp-content/uploads/2023/02/Pc-Gamer-R5-3600-GTX-1660Ti-SG-LINES-Setup-Game-Maroc.png?resize=300%2C300&ssl=1\n', 'BOITIER: PHANTEKS ECLIPSE P400A, CARTE MERE: ASUS ROG STRIX X570-F GAMING, PROCESSEUR: AMD RYZEN 9 5900X (3.7 GHZ / 4.8 GHZ), CARTE GRAPHIQUE: ASUS ROG STRIX GEFORCE RTX 3080 10GB OC, RAM: 32GB (16GB X 2) 3600MHZ DDR4 G.SKILL TRIDENT Z NEO RGB, STOCKAGE SSD: SAMSUNG 970 EVO PLUS 1TB NVME M.2, PSU: CORSAIR RM850I 80 PLUS GOLD, WATERCOOLER: NZXT KRAKEN Z63', '34999.00', '6', 'pcgamer', NULL, NULL),
(7, '190R – INTEL CORE I9-11900K-RTX 3080', 'https://i0.wp.com/setupgame.ma/wp-content/uploads/2023/02/STARDUST-MINI-R5-5500-RTX-3050-Setup-Game.webp?resize=300%2C300&ssl=1https://i0.wp.com/setupgame.ma/wp-content/uploads/2023/02/Pc-Gamer-R5-4600G-SG-LINES-Setup-Game-Maroc.png?resize=300%2C300&ssl=1', 'BOITIER: NZXT H710, CARTE MERE: ASUS ROG STRIX Z590-F GAMING WIFI, PROCESSEUR: INTEL CORE I9-11900K (3.5 GHZ / 5.3 GHZ), CARTE GRAPHIQUE: ASUS ROG STRIX GEFORCE RTX 3080 10GB OC, RAM: 32GB (16GB X 2) 4000MHZ DDR4 G.SKILL TRIDENT Z RGB, STOCKAGE SSD: SAMSUNG 970 EVO PLUS 1TB NVME M.2, PSU: CORSAIR RM850I 80 PLUS GOLD, WATERCOOLER: NZXT KRAKEN Z63', '34999.00', '6', 'pcgamer', NULL, NULL),
(8, '200R – AMD RYZEN 7 5800X-RTX 3070 Ti', 'https://i0.wp.com/setupgame.ma/wp-content/uploads/2023/02/STARDUST-MINI-R5-5500-RTX-3050-Setup-Game.webp?resize=300%2C300&ssl=1https://i0.wp.com/setupgame.ma/wp-content/uploads/2023/02/Pc-Gamer-R5-4600G-SG-LINES-Setup-Game-Maroc.png?resize=300%2C300&ssl=1', 'BOITIER: PHANTEKS ECLIPSE P500A, CARTE MERE: ASUS ROG STRIX X570-E GAMING, PROCESSEUR: AMD RYZEN 7 5800X (3.8 GHZ / 4.7 GHZ), CARTE GRAPHIQUE: GIGABYTE GEFORCE RTX 3070 Ti 8GB GAMING OC, RAM: 32GB (16GB X 2) 3600MHZ DDR4 CORSAIR VENGEANCE RGB PRO, STOCKAGE SSD: WD BLACK SN850 1TB NVME M.2, PSU: CORSAIR RM750X 80 PLUS GOLD, WATERCOOLER: NZXT KRAKEN X73', '23000.00', '9', 'pcgamer', NULL, '2023-07-03 01:23:07'),
(9, '210R – INTEL CORE I5-11600K-RTX 3060 Ti', 'https://i0.wp.com/setupgame.ma/wp-content/uploads/2023/02/Pc-Gamer-R5-3600-RX580-SG-LINES-Setup-Game-Maroc.png?resize=300%2C300&ssl=1\n', 'BOITIER: LIAN LI LANCOOL II MESH RGB, CARTE MERE: ASUS TUF GAMING B560M-PLUS WIFI, PROCESSEUR: INTEL CORE I5-11600K (3.9 GHZ / 4.9 GHZ), CARTE GRAPHIQUE: ZOTAC GEFORCE RTX 3060 Ti 8GB TWIN EDGE OC, RAM: 16GB (8GB X 2) 3200MHZ DDR4 CRUCIAL BALLISTIX BLACK, STOCKAGE SSD: WD BLUE SN550 500GB NVME M.2, PSU: CORSAIR CV550 80 PLUS BRONZE, WATERCOOLER: COOLER MASTER MASTERLIQUID ML240 RGB', '15999.00', '8', 'pcgamer', NULL, NULL),
(10, '220R – AMD RYZEN 9 5950X-RTX 3090', 'https://i0.wp.com/setupgame.ma/wp-content/uploads/2023/03/170-TG-AMD-RYZEN-9-5950X-RTX-3070-Setup-Game.webp?resize=300%2C300&ssl=1\n', 'BOITIER: CORSAIR CRYSTAL 680X RGB, CARTE MERE: ASUS ROG CROSSHAIR VIII HERO, PROCESSEUR: AMD RYZEN 9 5950X (3.4 GHZ / 4.9 GHZ), CARTE GRAPHIQUE: MSI GEFORCE RTX 3090 24GB SUPRIM X, RAM: 64GB (32GB X 2) 3600MHZ DDR4 G.SKILL TRIDENT Z NEO RGB, STOCKAGE SSD: SAMSUNG 980 PRO 2TB NVME M.2, PSU: CORSAIR RM1000X 80 PLUS GOLD, WATERCOOLER: CORSAIR iCUE H150i ELITE CAPELLIX', '77999.00', '2', 'pcgamer', NULL, NULL),
(11, '230R – INTEL CORE I9-10900K-RTX 3080', 'https://www.tera.ma/wp-content/uploads/2020/07/p_1_9_1_0_1910-COUGAR-Turret-RGB-Boitier-Gamer.jpg', 'BOITIER: NZXT H710I, CARTE MERE: ASUS ROG STRIX Z490-H GAMING, PROCESSEUR: INTEL CORE I9-10900K (3.7 GHZ / 5.3 GHZ), CARTE GRAPHIQUE: GIGABYTE GEFORCE RTX 3080 10GB GAMING OC, RAM: 32GB (16GB X 2) 3600MHZ DDR4 G.SKILL TRIDENT Z NEO RGB, STOCKAGE SSD: SAMSUNG 970 EVO PLUS 1TB NVME M.2, PSU: CORSAIR RM850X 80 PLUS GOLD, WATERCOOLER: NZXT KRAKEN X73', '36999.00', '4', 'pcgamer', NULL, NULL),
(12, 'MSI GF63 11SC-658XMA - Core™ i5 11th, GTX 1650, 8GB, 512GB', 'https://www.tera.ma/wp-content/uploads/2022/09/MSI-GF63-THIN-11SC-658XMA.jpg', 'TAILLE DE L\'ÉCRAN: 15,6″ pouces\r\n      CPU : Intel® Core™ i5-11400H\r\n      RAM : 8Gb DDR4\r\n      Disque dur : 512GB SSD\r\n      GPU : NVIDIA® GeForce® GTX™ 1650 4Go GDDR6\r\n      Écran : 15,6″ Full-HD (1920 x 1080 pixels) 144Hz IPS\r\n      Système d’Exploitation : Free DOS', '8999.00', '20', 'pcportable', NULL, NULL),
(14, 'Dell G5 15 - Core i7 11th, RTX 3050 Ti, 16GB, 1TB SSD', 'https://setupgame.ma/wp-content/uploads/2022/09/Pc-Portable-Gamer-MSI-Pulse-GL76-12UGK-257XMA-Setup-Game-300x300.webp', 'Screen Size: 15.6 inches\r\n      CPU: Intel Core i7-11th Gen\r\n      RAM: 16GB DDR4\r\n      Storage: 1TB SSD\r\n      GPU: NVIDIA GeForce RTX 3050 Ti 4GB GDDR6\r\n      Display: 15.6\" Full HD (1920 x 1080) 120Hz IPS\r\n      Operating System: Windows 10', '1199.99', '21', 'pcportable', NULL, NULL),
(15, 'HP Omen 15 - Ryzen 7, RTX 3060, 16GB, 1TB SSD', 'https://i0.wp.com/setupgame.ma/wp-content/uploads/2023/02/MSI-GF76-Katana-11UE-Setup-Game.webp?resize=300%2C300&ssl=1', 'Screen Size: 15.6 inches\r\n      CPU: AMD Ryzen 7\r\n      RAM: 16GB DDR4\r\n      Storage: 1TB SSD\r\n      GPU: NVIDIA GeForce RTX 3060 6GB GDDR6\r\n      Display: 15.6\" Full HD (1920 x 1080) 144Hz IPS\r\n      Operating System: Windows 10', '1299.99', '32', 'pcportable', NULL, NULL),
(16, 'Lenovo Legion 5 - Core i7 11th, GTX 1660 Ti, 16GB, 512GB', 'https://www.cdiscount.com/pdt2/2/0/2/1/400x400/MSI4711377044202/rw/pc-portable-gamer-msi-katana-15-b12vgk-240xfr.jpg', 'Screen Size: 15.6 inches\r\n      CPU: Intel Core i7-11th Gen\r\n      RAM: 16GB DDR4\r\n      Storage: 512GB SSD\r\n      GPU: NVIDIA GeForce GTX 1660 Ti 6GB GDDR6\r\n      Display: 15.6\" Full HD (1920 x 1080) 120Hz IPS\r\n      Operating System: Windows 10', '1199.99', '22', 'pcportable', NULL, NULL),
(17, 'MSI GL65 Leopard - Core i7 10th, RTX 2070, 16GB, 1TB SSD', 'https://c1.neweggimages.com/ProductImage/34-155-641-V19.jpg', 'Screen Size: 15.6 inches\r\n      CPU: Intel Core i7-10th Gen\r\n      RAM: 16GB DDR4\r\n      Storage: 1TB SSD\r\n      GPU: NVIDIA GeForce RTX 2070 8GB GDDR6\r\n      Display: 15.6\" Full HD (1920 x 1080) 144Hz IPS\r\n      Operating System: Windows 10', '1499.99', '9', 'pcportable', NULL, NULL),
(18, 'ASUS ROG Strix G15 - Core i7 11th, RTX 3070, 16GB, 1TB SSD', 'https://www.fullpix.ma/wp-content/uploads/2023/01/asus-rog-strix-g15-g513ic-hn004-amd-ryzen-7-4800h-16gb-512gb-ssd-rtx-3050-fhd-144hz-15-6.png', 'Screen Size: 15.6 inches\r\n      CPU: Intel Core i7-11th Gen\r\n      RAM: 16GB DDR4\r\n      Storage: 1TB SSD\r\n      GPU: NVIDIA GeForce RTX 3070 8GB GDDR6\r\n      Display: 15.6\" Full HD (1920 x 1080) 300Hz IPS\r\n      Operating System: Windows 10', '1799.99', '10', 'pcportable', NULL, NULL),
(19, 'Razer Blade 15 - Core i7 11th, RTX 3080, 16GB, 1TB SSD', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR41sukOkt_OcmqcTmhjNZcchurcWrGXzoAho1vTrqEPE5yrqTbMXv1lZQhWimA1ESTC4k&usqp=CAU', 'Screen Size: 15.6 inches\r\n      CPU: Intel Core i7-11th Gen\r\n      RAM: 16GB DDR4\r\n      Storage: 1TB SSD\r\n      GPU: NVIDIA GeForce RTX 3080 8GB GDDR6\r\n      Display: 15.6\" Full HD (1920 x 1080) 360Hz IPS\r\n      Operating System: Windows 10', '2499.99', '20', 'pcportable', NULL, NULL),
(20, 'Gigabyte Aorus 15G - Core i7 11th, RTX 3060, 16GB, 512GB', 'https://cdn.ratake.com/md5_c12bfd14e885333f4c5d3ff6be3b051c.small.jpg', 'Screen Size: 15.6 inches\r\n      CPU: Intel Core i7-11th Gen\r\n      RAM: 16GB DDR4\r\n      Storage: 512GB SSD\r\n      GPU: NVIDIA GeForce RTX 3060 6GB GDDR6\r\n      Display: 15.6\" Full HD (1920 x 1080) 240Hz IPS\r\n      Operating System: Windows 10', '1699.99', '28', 'pcportable', NULL, NULL),
(21, 'Alienware m15 R4 - Core i7 10th, RTX 3080, 16GB, 1TB SSD', 'https://pc-gamer.ma/wp-content/uploads/2020/09/1_2_3.jpg.webp', 'Screen Size: 15.6 inches\r\n      CPU: Intel Core i7-10th Gen\r\n      RAM: 16GB DDR4\r\n      Storage: 1TB SSD\r\n      GPU: NVIDIA GeForce RTX 3080 8GB GDDR6\r\n      Display: 15.6\" Full HD (1920 x 1080) 300Hz IPS\r\n      Operating System: Windows 10', '2699.99', '40', 'pcportable', NULL, NULL),
(22, 'MSI Optix MAG241C 23.6\" Curved LED 144Hz', 'https://asset.msi.com/resize/image/global/product/product_6_20180612110658_5b1f38d2cf530.png62405b38c58fe0f07fcef2367d8a9ba1/600.png', 'Get immersed in your games with the MSI Optix MAG241C. This curved Full HD monitor features a 23.6-inch VA panel with a 144Hz refresh rate and 1ms response time for smooth and responsive gameplay. It also supports AMD FreeSync for tear-free visuals.', '1999.00', '15', 'monitors', NULL, NULL),
(23, 'AOC CQ32G1 31.5\" Curved LED 144Hz', 'https://m.media-amazon.com/images/I/81awCv2BspL.jpg', 'Enhance your gaming experience with the AOC CQ32G1. This curved QHD monitor offers a 31.5-inch VA panel with a 144Hz refresh rate and 1ms response time. It provides vivid visuals and smooth gameplay, making it ideal for competitive gaming.', '2499.00', '27', 'monitors', NULL, NULL),
(24, 'LG 24GL650F-B 23.6\" LED 144Hz', 'https://ngs-maroc.ma/1149-large_default/moniteur-lg-238-gaming-ultragear.jpg', 'The LG 24GL650F-B is a high-performance gaming monitor with a 23.6-inch Full HD display. It boasts a 144Hz refresh rate and 1ms response time, delivering fluid visuals and quick response in fast-paced games. It also supports AMD FreeSync for a tear-free gaming experience.', '1799.00', '12', 'monitors', NULL, NULL),
(25, 'BenQ EX2780Q 27\" LED 144Hz', 'https://m.media-amazon.com/images/I/81kU7dNyEML._AC_SL1500_.jpg', 'Immerse yourself in stunning visuals with the BenQ EX2780Q. This 27-inch QHD monitor features a 144Hz refresh rate and 1ms response time, offering smooth gameplay and crisp images. It also includes built-in speakers and HDR support for an enhanced multimedia experience.', '2999.00', '11', 'monitors', NULL, NULL),
(26, 'ViewSonic XG2405 23.8\" LED 144Hz', 'https://www.viewsonic.com/vsAssetFile/in/img/slides/_lcd_display_%28new%29/XG2405/XG2405_RF02.jpg', 'The ViewSonic XG2405 is a 23.8-inch Full HD gaming monitor that delivers smooth and responsive gameplay. With a 144Hz refresh rate and 1ms response time, it provides an immersive experience for competitive gaming. It also features AMD FreeSync technology for tear-free visuals.', '1799.00', '13', 'monitors', NULL, NULL),
(27, 'Acer Nitro VG240Y Pbiip 23.8\" LED 144Hz', 'https://m.media-amazon.com/images/I/71WLJlnALXL._AC_SL1500_.jpg', 'Step up your gaming with the Acer Nitro VG240Y Pbiip. This 23.8-inch Full HD monitor offers a 144Hz refresh rate and 1ms response time for seamless gameplay. It also features AMD FreeSync technology to eliminate screen tearing and stuttering.', '30', '29', 'monitors', NULL, NULL),
(41, 'Logitech G Pro Wireless Gaming Mouse (Noir)', 'https://materielpc.ma/wp-content/uploads/2021/12/61UxfXTUyvL._SL1500_.jpg', 'La souris Logitech G Pro Wireless Gaming Mouse embarque le nouveau capteur optique révolutionnaire HERO 25K de chez Logitech. Il ne génère ni lissage, ni filtrage, ni accélération sur l’ensemble de sa plage de dpi (100 – 25 600) et offre donc une précision inégalée et une réactivité homogène à n’importe quelle vitesse.', '1', '23', 'accessoires', NULL, '2023-07-03 12:28:55'),
(42, 'Souris Gaming Razer Deathadder V2', 'https://stationdetravail.ma/wp-content/uploads/2022/02/LD0005572877_2.jpg', 'Avec la souris Razer DeathAdder v2, offrez-vous une arme redoutable pour venir à bout des plus coriaces adversaires. En effet, elle intègre un capteur optique Razer Focus+ de 20000 dpi afin de vous offrir une précision inégalée.', '599.00', '22', 'accessoires', '2023-07-03 12:45:37', '2023-07-03 12:45:37'),
(43, 'Écran de gaming Dell 27 - G2722HS', 'https://i.dell.com/is/image/DellContent/content/dam/ss2/product-images/dell-client-products/peripherals/monitors/g-series/g2422hs/media-gallery/monitor-g2422hs-gallery-2.psd?fmt=pjpg&pscan=auto&scl=1&wid=4250&hei=3578&qlt=100,1&resMode=sharp2&size=4250,3578&chrss=full&imwidth=5000', 'Élevez votre niveau de jeu. Ajoutez un écran de 27 pouces à votre configuration et augmentez votre expérience de jeu : des graphismes fluides et sans déchirures grâce à un écran très réactif.', '2699.00', '16', 'monitors', '2023-07-03 12:51:32', '2023-07-03 12:51:32'),
(44, 'KFKJF', 'data:image/jpeg;base64,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', 'GHJ?K.', '1000', '10', 'accessoires', '2023-07-03 12:52:38', '2023-07-03 12:52:38'),
(45, 'FGDGDFGD', 'https://stationdetravail.ma/wp-content/uploads/2022/02/LD0005572877_2.jpg', 'GHJ?K.', '5464', '16', 'accessoires', '2023-07-03 12:57:32', '2023-07-03 12:57:32');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `type` varchar(255) NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `type`) VALUES
(1, 'hamid', 'hamid@gmail.com', NULL, '$2y$10$5Kye3u4bMxexQ5iCfXppHOTsKqoTNzDtA7z7.NpZgvNZ2sF5Eq90m', NULL, '2023-07-02 19:13:35', '2023-07-02 19:13:35', 'user'),
(2, 'douae', 'doae@gmail.com', NULL, '$2y$10$Ty4zklOaYG5q6K2smf9qsOiuNPYbbpi0MGBt1VLKPMt9NAX7E//3a', 'QCMs2C9gXBpZFgyTnZ3zoHTnrWmbQtOjHy4PFOySDznqKxRkfItChQWwkqgT', '2023-07-02 19:24:32', '2023-07-02 19:24:32', 'user'),
(3, 'admin', 'admin@gmail.com', NULL, '$2y$10$2pWIS1zX6muUvZ4hPyWB.e0h38ZIsHQ9xYj3sdz9FRPtW7Kl52iRy', NULL, '2023-07-02 19:52:17', '2023-07-02 19:52:17', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `paniers`
--
ALTER TABLE `paniers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `paniers`
--
ALTER TABLE `paniers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
