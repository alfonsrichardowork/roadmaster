-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 10, 2026 at 11:17 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `roadmaster`
--

-- --------------------------------------------------------

--
-- Table structure for table `allcategory`
--

CREATE TABLE `allcategory` (
  `id` varchar(191) NOT NULL,
  `brandId` varchar(191) NOT NULL,
  `type` varchar(191) NOT NULL,
  `name` text NOT NULL,
  `slug` text NOT NULL,
  `description` text NOT NULL,
  `thumbnail_url` text NOT NULL,
  `createdAt` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `updatedAt` datetime(3) NOT NULL,
  `updatedBy` varchar(191) NOT NULL,
  `description_eng` text NOT NULL DEFAULT '',
  `name_eng` text NOT NULL DEFAULT '',
  `slug_eng` text NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `allcategory`
--

INSERT INTO `allcategory` (`id`, `brandId`, `type`, `name`, `slug`, `description`, `thumbnail_url`, `createdAt`, `updatedAt`, `updatedBy`, `description_eng`, `name_eng`, `slug_eng`) VALUES
('059516df-7497-420c-9ba6-6fb9d04d0ee4', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'Category', 'Stereo Aktif', 'stereo-aktif', 'Speaker stereo dengan amplifier terintegrasi yang menghasilkan audio kiri dan kanan yang seimbang untuk pengalaman mendengarkan yang jernih dan imersif.', '/uploads/others/Cozy living room with speakers and turntable.webp', '2026-03-31 14:49:57.103', '2026-04-08 04:27:31.079', 'admin', 'Stereo speakers with integrated amplification that produce balanced left-right audio for clear and immersive listening.', 'Powered Stereo', 'powered-stereo'),
('0625a69d-efa3-4d80-a69e-a42aaeb4ecbd', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'Category', 'Tower Aktif', 'tower-aktif', 'Speaker tinggi dengan amplifier terintegrasi yang dirancang untuk menghasilkan suara kuat yang memenuhi ruangan, cocok untuk penggunaan di rumah maupun acara.', '/uploads/others/Modern living room with sleek speakers.webp', '2026-03-31 14:50:22.270', '2026-04-08 04:28:37.555', 'admin', 'Tall speakers with built-in amplifiers designed to deliver powerful, room-filling sound for home or event setups.', 'Powered Tower', 'powered-tower'),
('3f7a7f28-0faf-40f2-b266-1528a4445b68', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'Sub Category', 'Seri Monster', 'seri-monster', 'Speaker besar dan bertenaga yang dirancang untuk menghasilkan suara besar dengan bass mendalam, cocok untuk ruangan luas dan acara meriah.', '/uploads/others/ChatGPT Image Apr 8_ 2026_ 01_58_18 PM.webp', '2026-03-31 14:51:11.533', '2026-04-08 06:59:45.414', 'admin', 'Large and powerful speakers engineered to deliver massive sound and deep bass for big spaces and energetic events.', 'Monster Series', 'monster-series'),
('488f1247-3dc3-4071-9945-f3317236c1a1', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'Sub Category', 'Seri KD Pro', 'seri-kd-pro', 'Speaker kelas profesional yang dirancang untuk proyeksi suara yang kuat dan performa andal untuk panggung maupun acara.', '/uploads/others/openart-image_1775629783828_9c55e25f_1775629783939_83caa1ba.webp', '2026-03-31 14:51:22.983', '2026-04-08 06:32:56.996', 'admin', 'Professional-grade speakers designed for powerful sound projection and dependable performance for stage and event use.', 'KD Pro Series', 'kd-pro-series'),
('49abbb86-f7a6-4d61-a57e-278991a31f30', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'Sub Category', 'Seri Party', 'seri-party', 'Speaker pesta yang seru dan bertenaga dengan suara dinamis serta fitur menarik untuk meramaikan setiap acara.', '/uploads/others/Vibrant party vibes and a speaker.webp', '2026-03-31 14:51:59.131', '2026-04-08 06:21:55.520', 'admin', 'Fun and powerful party speakers with dynamic sound and exciting features to bring energy to any gathering.', 'Party Series', 'party-series'),
('4f4f59f5-1904-4ba3-bac6-149a991a4c64', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'Sub Category', 'Seri Bass', 'seri-bass', 'Speaker yang difokuskan untuk menghasilkan bass dalam dan kuat dengan keseimbangan suara yang tetap jernih.', '/uploads/others/ChatGPT Image Apr 8_ 2026_ 02_02_47 PM.webp', '2026-03-31 14:50:59.739', '2026-04-08 07:03:21.996', 'admin', 'Speakers focused on delivering deep, punchy bass while maintaining balanced and clear overall sound.', 'Bass Series', 'bass-series'),
('705cbf21-1e44-4f8f-ae0e-39d568369e8a', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'Sub Category', 'Seri PA', 'seri-pa', 'Speaker PA profesional yang dirancang untuk vokal yang jernih, daya yang kuat, dan performa andal untuk acara, presentasi, dan kebutuhan sound system.', '/uploads/others/Outdoor event with PA speaker.webp', '2026-03-31 14:51:43.808', '2026-04-08 06:20:27.513', 'admin', 'Professional PA speakers designed for clear vocals, powerful output, and reliable performance for events, presentations, and public speaking.', 'PA Series', 'pa-series'),
('821782fa-eede-4710-9d67-f803cc56be3b', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'Sub Category', 'Minion', 'minion', 'Speaker ringkas dan portabel yang memberikan performa audio praktis untuk hiburan sehari-hari.', '/uploads/others/Minion speakers with vibrant lighting effects.webp', '2026-03-31 14:51:31.058', '2026-04-08 06:25:09.951', 'admin', 'Compact and portable speakers that offer convenient audio performance for everyday entertainment.', 'Minion', 'minion'),
('9945a47f-0755-4f8c-b421-434c7f733f66', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'Sub Category', 'Seri Probeat', 'seri-probeat', 'Speaker berperforma tinggi yang menghasilkan bass kuat, mid yang jelas, dan treble tajam untuk pecinta musik maupun penggunaan profesional.', '/uploads/others/Sleek Bluetooth speaker on stage.webp', '2026-03-31 14:52:13.506', '2026-04-08 06:20:39.293', 'admin', 'High-performance speakers built to deliver strong bass, clear mids, and crisp highs for music enthusiasts and professional use.', 'Probeat Series', 'probeat-series'),
('b5def30b-0648-4c0c-8602-2a8d4363b36b', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'Category', 'Portabel', 'portabel', 'Speaker yang ringkas dan ringan, memberikan suara berkualitas tinggi yang praktis untuk mendengarkan musik di mana saja.', '/uploads/others/Beachside speaker and tropical vibes.webp', '2026-03-31 14:50:07.571', '2026-04-08 04:27:57.511', 'admin', 'Compact and lightweight speakers that provide convenient, high-quality sound for music anywhere you go.', 'Portable', 'portable');

-- --------------------------------------------------------

--
-- Table structure for table `allproductcategory`
--

CREATE TABLE `allproductcategory` (
  `id` varchar(191) NOT NULL,
  `productId` varchar(191) NOT NULL,
  `categoryId` varchar(191) NOT NULL,
  `createdAt` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `updatedAt` datetime(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `allproductcategory`
--

INSERT INTO `allproductcategory` (`id`, `productId`, `categoryId`, `createdAt`, `updatedAt`) VALUES
('03d44fa5-9983-4c8d-8b98-15e5b623efd0', 'd96ca88f-1b20-437d-973e-4a5fc0655de1', '3f7a7f28-0faf-40f2-b266-1528a4445b68', '2026-03-31 15:21:22.552', '2026-04-08 06:59:45.432'),
('0931f041-62e0-4eef-9088-4b2b1adc9140', 'd96ca88f-1b20-437d-973e-4a5fc0655de1', '059516df-7497-420c-9ba6-6fb9d04d0ee4', '2026-03-31 15:21:22.550', '2026-04-08 04:27:31.085'),
('2461cc16-a397-4d7d-8f09-d95683303843', '5a4b4994-bb7c-4ef5-9f7f-0764fde8cbe1', '49abbb86-f7a6-4d61-a57e-278991a31f30', '2026-03-31 15:10:57.073', '2026-04-08 06:21:55.529'),
('2e058330-4020-4a07-916b-8df1acb17e4f', 'f33a3fca-2a2c-4913-8ec9-9a98946ba7b1', 'b5def30b-0648-4c0c-8602-2a8d4363b36b', '2026-03-31 15:10:21.505', '2026-04-08 04:27:57.515'),
('327ac585-4af2-4072-95a5-98b270af0c41', '15a9bc11-1dfb-49c5-8a06-8836d35f9921', '059516df-7497-420c-9ba6-6fb9d04d0ee4', '2026-03-31 15:27:04.617', '2026-04-08 04:27:31.085'),
('38294b07-a629-483c-ad0b-bdd4cd238276', '0fc1bf44-b61d-4991-9403-0b0ecef8c791', 'b5def30b-0648-4c0c-8602-2a8d4363b36b', '2026-03-31 15:09:54.637', '2026-04-08 04:27:57.515'),
('4092044f-df39-452f-a7b8-ae1648c78b6b', '8cf82b55-a985-4a5f-83ff-0484ffcdf5c5', '059516df-7497-420c-9ba6-6fb9d04d0ee4', '2026-03-31 15:18:31.589', '2026-04-08 04:27:31.085'),
('4224f6fc-86ef-41c4-85e5-95b123bcf8ca', 'f33a3fca-2a2c-4913-8ec9-9a98946ba7b1', '49abbb86-f7a6-4d61-a57e-278991a31f30', '2026-03-31 15:10:21.507', '2026-04-08 06:21:55.529'),
('43236125-930a-427e-a915-71857d019e61', 'cd34c76d-1738-4a80-be66-0e51d7da6693', '49abbb86-f7a6-4d61-a57e-278991a31f30', '2026-03-31 15:29:10.357', '2026-04-08 06:21:55.529'),
('47c94c2a-8ec9-45b2-8191-53a15a7fe7c2', '3c1f02e6-80d0-42e3-85e2-303261105341', '059516df-7497-420c-9ba6-6fb9d04d0ee4', '2026-03-31 15:13:35.315', '2026-04-08 04:27:31.085'),
('505e47dd-0ad1-4226-9c92-18c7a7350bd9', '3c1f02e6-80d0-42e3-85e2-303261105341', '4f4f59f5-1904-4ba3-bac6-149a991a4c64', '2026-03-31 15:13:35.318', '2026-04-08 07:03:22.012'),
('509078e9-cf83-4cb7-97a2-fc6b0b02a55f', '8cf82b55-a985-4a5f-83ff-0484ffcdf5c5', '4f4f59f5-1904-4ba3-bac6-149a991a4c64', '2026-03-31 15:18:31.591', '2026-04-08 07:03:22.012'),
('5b9d3c33-8342-4166-aa2d-fa54e4d530db', '6e7c0a0f-be33-4490-826c-814a59048eb5', '705cbf21-1e44-4f8f-ae0e-39d568369e8a', '2026-03-31 15:06:31.095', '2026-04-08 06:20:27.520'),
('5d8a35a1-de80-4d66-8bc8-d4a71a8f5882', 'a8887af0-547d-42e1-8cca-779cf1841ed5', '059516df-7497-420c-9ba6-6fb9d04d0ee4', '2026-03-31 15:17:50.589', '2026-04-08 04:27:31.085'),
('65156752-611d-482f-9333-966557ec5349', 'a4c4828a-80c1-4698-be71-892994e657df', '059516df-7497-420c-9ba6-6fb9d04d0ee4', '2026-03-31 15:13:16.242', '2026-04-08 04:27:31.085'),
('78d5bc7b-7e68-4a4f-b552-1827d3a6122c', '3847c27a-f9f3-4c62-9213-8f4072e62117', '3f7a7f28-0faf-40f2-b266-1528a4445b68', '2026-03-31 15:21:46.462', '2026-04-08 06:59:45.432'),
('7c10230f-dc0e-4b6c-9edd-8bf52d25971e', 'a8887af0-547d-42e1-8cca-779cf1841ed5', '4f4f59f5-1904-4ba3-bac6-149a991a4c64', '2026-03-31 15:17:50.591', '2026-04-08 07:03:22.012'),
('7cdb0080-6866-4c6f-8881-cb038ece5fff', '8403ceac-7570-475d-81df-82586ff41921', '4f4f59f5-1904-4ba3-bac6-149a991a4c64', '2026-04-08 15:42:56.052', '2026-04-08 15:42:56.052'),
('7d69729f-bf91-4c9c-afd1-627006ef2133', 'a4c4828a-80c1-4698-be71-892994e657df', '4f4f59f5-1904-4ba3-bac6-149a991a4c64', '2026-03-31 15:13:16.245', '2026-04-08 07:03:22.012'),
('7dc00797-9afb-4bc3-897c-af6b94df5e6b', '3847c27a-f9f3-4c62-9213-8f4072e62117', '059516df-7497-420c-9ba6-6fb9d04d0ee4', '2026-03-31 15:21:46.460', '2026-04-08 04:27:31.085'),
('82532671-a297-4eb2-ae84-3f9784829bb2', '57777133-51e7-4ae8-b0de-fee20edce0cc', '488f1247-3dc3-4071-9945-f3317236c1a1', '2026-03-31 15:19:50.787', '2026-04-08 06:32:57.013'),
('84881e8a-24f9-4ec7-a9a1-52ef9eb5ce85', '4e49b2aa-2eb2-4ae4-93af-7729e23fa404', 'b5def30b-0648-4c0c-8602-2a8d4363b36b', '2026-03-31 15:09:29.172', '2026-04-08 04:27:57.515'),
('8c899b10-4bee-441e-9cc3-8c5ac1ab47dc', '5826462f-b495-4df7-a21f-bbf19b981a48', '9945a47f-0755-4f8c-b421-434c7f733f66', '2026-03-31 15:12:02.370', '2026-04-08 06:20:39.298'),
('8d312cc8-7225-4da4-b9e1-b4346c840c72', '9ab06c62-3e47-4751-abf9-9c2a96d70421', 'b5def30b-0648-4c0c-8602-2a8d4363b36b', '2026-03-31 15:03:57.014', '2026-04-08 04:27:57.515'),
('8f5795b6-ce32-41ef-9812-90676cd09619', '95a8386d-0151-4ef5-9b7a-23f2988ffbd8', '488f1247-3dc3-4071-9945-f3317236c1a1', '2026-03-31 15:19:20.279', '2026-04-08 06:32:57.013'),
('8fcdfcfb-bf79-4239-8fe4-23313461ecd3', '15a9bc11-1dfb-49c5-8a06-8836d35f9921', '821782fa-eede-4710-9d67-f803cc56be3b', '2026-03-31 15:27:04.621', '2026-04-08 06:25:09.958'),
('9391cbb2-1720-4d18-befd-58690402edfa', 'ee550140-1522-4320-8790-b868ce5b74f3', '9945a47f-0755-4f8c-b421-434c7f733f66', '2026-03-31 15:11:37.282', '2026-04-08 06:20:39.298'),
('95345109-bfe9-4665-a8a2-559adb8dc723', '9ab06c62-3e47-4751-abf9-9c2a96d70421', '705cbf21-1e44-4f8f-ae0e-39d568369e8a', '2026-03-31 15:03:57.017', '2026-04-08 06:20:27.520'),
('9b0d5fd4-8bc2-4da8-9824-b7b0a364c4c8', '83d4e98c-e184-4c24-978e-0f6d0aafffbc', '705cbf21-1e44-4f8f-ae0e-39d568369e8a', '2026-03-31 15:05:41.667', '2026-04-08 06:20:27.520'),
('9c04946b-9b96-41c2-8499-43782daf5636', '9be101d2-1c34-450b-a0dd-01cf009c560e', '059516df-7497-420c-9ba6-6fb9d04d0ee4', '2026-03-31 15:13:03.721', '2026-04-08 04:27:31.085'),
('9f1bacb8-056d-4dc9-ae09-c67b8f319705', '4e49b2aa-2eb2-4ae4-93af-7729e23fa404', '49abbb86-f7a6-4d61-a57e-278991a31f30', '2026-03-31 15:09:29.176', '2026-04-08 06:21:55.529'),
('a0fdca77-1a33-42df-901b-8f188ef03ae1', 'ee550140-1522-4320-8790-b868ce5b74f3', '0625a69d-efa3-4d80-a69e-a42aaeb4ecbd', '2026-03-31 15:11:37.280', '2026-04-08 04:28:37.560'),
('a6ccbad7-bb1c-4204-8449-8d5ad0575968', '6e7c0a0f-be33-4490-826c-814a59048eb5', 'b5def30b-0648-4c0c-8602-2a8d4363b36b', '2026-03-31 15:06:31.093', '2026-04-08 04:27:57.515'),
('ab27574c-b6ea-4f5e-8e76-c357567ee614', '4dc849b5-3796-4ba4-8878-c194953a9fa3', 'b5def30b-0648-4c0c-8602-2a8d4363b36b', '2026-03-31 15:04:57.797', '2026-04-08 04:27:57.515'),
('aeef5a3b-14bc-4977-b0f2-9808cb93dd2c', '8403ceac-7570-475d-81df-82586ff41921', '059516df-7497-420c-9ba6-6fb9d04d0ee4', '2026-04-08 15:42:56.050', '2026-04-08 15:42:56.050'),
('b1a87d19-1819-458a-acd7-ae4749182665', 'd1e7baa1-7ce6-4720-9530-30b84eb97c31', 'b5def30b-0648-4c0c-8602-2a8d4363b36b', '2026-03-31 15:09:05.033', '2026-04-08 04:27:57.515'),
('b22db062-23df-4fdc-a17f-dddcff0d8d2d', '4dc849b5-3796-4ba4-8878-c194953a9fa3', '705cbf21-1e44-4f8f-ae0e-39d568369e8a', '2026-03-31 15:04:57.800', '2026-04-08 06:20:27.520'),
('b28762f9-9c58-434e-915c-d283d09d5fef', '95a8386d-0151-4ef5-9b7a-23f2988ffbd8', '059516df-7497-420c-9ba6-6fb9d04d0ee4', '2026-03-31 15:19:20.277', '2026-04-08 04:27:31.085'),
('b6600cd3-919d-478b-b24d-ac17c98939b0', '9a390596-9761-4552-b9aa-71904a27803b', '4f4f59f5-1904-4ba3-bac6-149a991a4c64', '2026-03-31 15:13:23.825', '2026-04-08 07:03:22.012'),
('b939eec7-da35-4db0-9994-051a967f86fb', '5826462f-b495-4df7-a21f-bbf19b981a48', '0625a69d-efa3-4d80-a69e-a42aaeb4ecbd', '2026-03-31 15:12:02.366', '2026-04-08 04:28:37.560'),
('bbfb6bba-cab5-4651-95ac-feafe3fad2c3', 'd1e7baa1-7ce6-4720-9530-30b84eb97c31', '49abbb86-f7a6-4d61-a57e-278991a31f30', '2026-03-31 15:09:05.036', '2026-04-08 06:21:55.529'),
('c930d01c-797a-4136-8907-858a781dc064', '9a390596-9761-4552-b9aa-71904a27803b', '059516df-7497-420c-9ba6-6fb9d04d0ee4', '2026-03-31 15:13:23.823', '2026-04-08 04:27:31.085'),
('d14c9344-0ca8-4d4f-a01f-3a8a431667f4', 'cd34c76d-1738-4a80-be66-0e51d7da6693', 'b5def30b-0648-4c0c-8602-2a8d4363b36b', '2026-03-31 15:29:10.355', '2026-04-08 04:27:57.515'),
('d2c8f337-8794-42e6-87b5-55afd769efd1', '83d4e98c-e184-4c24-978e-0f6d0aafffbc', 'b5def30b-0648-4c0c-8602-2a8d4363b36b', '2026-03-31 15:05:41.665', '2026-04-08 04:27:57.515'),
('e13d5fb9-8c77-4eff-81ec-8f7a1e4958a3', '57777133-51e7-4ae8-b0de-fee20edce0cc', '059516df-7497-420c-9ba6-6fb9d04d0ee4', '2026-03-31 15:19:50.782', '2026-04-08 04:27:31.085'),
('e4877eea-23ac-43c5-b69e-7021379b7722', '0fc1bf44-b61d-4991-9403-0b0ecef8c791', '49abbb86-f7a6-4d61-a57e-278991a31f30', '2026-03-31 15:09:54.640', '2026-04-08 06:21:55.529'),
('f740e82d-f7c3-488f-aa43-3526b71a1478', '5a4b4994-bb7c-4ef5-9f7f-0764fde8cbe1', 'b5def30b-0648-4c0c-8602-2a8d4363b36b', '2026-03-31 15:10:57.068', '2026-04-08 04:27:57.515'),
('fa8cf262-1527-4db2-b079-a4de0baa9f84', '9be101d2-1c34-450b-a0dd-01cf009c560e', '4f4f59f5-1904-4ba3-bac6-149a991a4c64', '2026-03-31 15:13:03.723', '2026-04-08 07:03:22.012');

-- --------------------------------------------------------

--
-- Table structure for table `brand`
--

CREATE TABLE `brand` (
  `id` varchar(191) NOT NULL,
  `name` text NOT NULL,
  `userId` varchar(191) NOT NULL,
  `createdAt` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `updatedAt` datetime(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brand`
--

INSERT INTO `brand` (`id`, `name`, `userId`, `createdAt`, `updatedAt`) VALUES
('680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'Roadmaster', '25cd8d0d-d185-41e8-9943-fdf1264236f2', '2024-03-28 07:42:40.393', '2024-09-24 01:37:14.138');

-- --------------------------------------------------------

--
-- Table structure for table `dynamicspecification`
--

CREATE TABLE `dynamicspecification` (
  `id` varchar(191) NOT NULL,
  `name` text NOT NULL,
  `slug` text NOT NULL,
  `unit` text NOT NULL,
  `priority` varchar(191) NOT NULL,
  `updatedBy` text NOT NULL,
  `createdAt` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `updatedAt` datetime(3) NOT NULL,
  `name_eng` text NOT NULL DEFAULT '',
  `slug_eng` text NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dynamicspecification`
--

INSERT INTO `dynamicspecification` (`id`, `name`, `slug`, `unit`, `priority`, `updatedBy`, `createdAt`, `updatedAt`, `name_eng`, `slug_eng`) VALUES
('0a0bebf9-1e00-48cf-9e2e-2d986ad3f28e', 'Midrange', 'midrange', '', '8', '25cd8d0d-d185-41e8-9943-fdf1264236f2', '2026-04-01 04:04:12.214', '2026-04-08 07:12:29.447', 'Midrange', 'midrange'),
('11fb867e-f262-41c0-9901-912de9aaa12b', 'Konsumsi Daya (Max)', 'konsumsi-daya-max', 'W', '3', '25cd8d0d-d185-41e8-9943-fdf1264236f2', '2026-04-01 01:33:03.294', '2026-04-08 07:12:29.447', 'Power Consumption (Max)', 'power-consumption-max'),
('1a8d1e3e-4810-4b0c-81c8-caa5b7e501e2', 'Input Impedansi', 'input-impedansi', 'Ω', '10', '25cd8d0d-d185-41e8-9943-fdf1264236f2', '2026-04-01 04:05:20.862', '2026-04-08 07:12:29.447', 'Input Impedance', 'input-impedance'),
('287f448d-b86e-4981-8fbc-361f440ee3b8', 'Output RMS', 'output-rms', 'W', '23', '25cd8d0d-d185-41e8-9943-fdf1264236f2', '2026-04-01 01:30:07.522', '2026-04-08 07:12:29.447', 'RMS Output', 'rms-output'),
('2b402275-bb39-4d09-bc5c-aa4f3906f3f6', 'Kenop Putar', 'kenop-putar', '', '12', '25cd8d0d-d185-41e8-9943-fdf1264236f2', '2026-04-01 04:06:26.903', '2026-04-08 07:12:29.447', 'Rotary Knob', 'rotary-knob'),
('3652480e-57ee-4d0c-9601-0f8321ed7bfa', 'Daya (Tanpa Sinyal)', 'daya-tanpa-sinyal', 'W', '2', '25cd8d0d-d185-41e8-9943-fdf1264236f2', '2026-04-01 01:32:53.540', '2026-04-08 07:12:29.447', 'Power (No-Signal)', 'power-no-signal'),
('45ce71bd-0d75-4803-b54a-509330b280f8', 'TWS', 'tws', '', '17', '25cd8d0d-d185-41e8-9943-fdf1264236f2', '2026-04-01 04:07:55.669', '2026-04-08 07:12:29.447', 'TWS', 'tws'),
('53475931-30c0-4f42-bb5d-b5bc9a408c3d', 'Piezo', 'piezo', '', '7', '25cd8d0d-d185-41e8-9943-fdf1264236f2', '2026-04-01 04:11:03.230', '2026-04-08 07:12:29.447', 'Piezo', 'piezo'),
('5de2a926-69f9-4376-a697-65afff94981d', 'Bluetooth 5.3', 'bluetooth-5-3', '', '16', '25cd8d0d-d185-41e8-9943-fdf1264236f2', '2026-04-01 04:07:50.119', '2026-04-08 07:12:29.447', 'Bluetooth 5.3', 'bluetooth-5-3'),
('633de2e4-9792-4adf-8d18-1471cd7c8462', 'Sliding & Rotary', 'sliding-rotary', '', '13', '25cd8d0d-d185-41e8-9943-fdf1264236f2', '2026-04-01 04:11:38.515', '2026-04-08 07:12:29.447', 'Sliding & Rotary', 'sliding-rotary'),
('65b285b2-b1b7-4797-9fe9-06c9642785a8', 'Roda dan Handle', 'roda-dan-handle', '', '32', '25cd8d0d-d185-41e8-9943-fdf1264236f2', '2026-04-01 01:32:14.336', '2026-04-08 07:12:29.447', 'Wheel and Handle', 'wheel-and-handle'),
('68757736-bbeb-4a48-a383-fad6682a0c42', 'Terminal', 'terminal', '', '31', '25cd8d0d-d185-41e8-9943-fdf1264236f2', '2026-04-01 01:32:08.287', '2026-04-08 07:12:29.447', 'Terminals', 'terminals'),
('6a1f42b2-b07f-429c-9dd9-bcd44c3450bc', 'Dimensi', 'dimensi', 'mm', '33', '25cd8d0d-d185-41e8-9943-fdf1264236f2', '2026-04-01 01:32:22.244', '2026-04-08 07:12:29.447', 'Dimension', 'dimension'),
('713305b8-721a-479f-a563-2fc7911b4b1b', 'USB', 'usb', '', '19', '25cd8d0d-d185-41e8-9943-fdf1264236f2', '2026-04-01 01:31:31.716', '2026-04-08 07:12:29.447', 'USB', 'usb'),
('77af6a05-b7ba-4c87-aad3-53eb05bc41bc', 'FM Radio', 'fm-radio', '', '18', '25cd8d0d-d185-41e8-9943-fdf1264236f2', '2026-04-01 04:08:27.856', '2026-04-08 07:12:29.447', 'FM Radio', 'fm-radio'),
('79497a1b-8a9d-46da-b508-3c1547499c32', 'Karaoke', 'karaoke', '', '29', '25cd8d0d-d185-41e8-9943-fdf1264236f2', '2026-04-01 01:31:49.396', '2026-04-08 07:12:29.447', 'Karaoke', 'karaoke'),
('8e19f446-827b-44ce-acd0-839e6822d8fb', 'Respons Frekuensi', 'respons-frekuensi', 'Hz', '9', '25cd8d0d-d185-41e8-9943-fdf1264236f2', '2026-04-01 04:04:30.219', '2026-04-08 07:12:29.447', 'Frequency Response', 'frequency-response'),
('9777b43a-f89e-4be4-a4df-5b9601a1c3a3', 'Tuner', 'tuner', '', '27', '25cd8d0d-d185-41e8-9943-fdf1264236f2', '2026-04-01 01:31:35.985', '2026-04-08 07:12:29.447', 'Tuner', 'tuner'),
('984a4031-5eb5-4bb3-ba07-b6bcfd70ee1f', 'Mic Wireless', 'mic-wireless', '', '28', '25cd8d0d-d185-41e8-9943-fdf1264236f2', '2026-04-01 01:31:44.800', '2026-04-08 07:12:29.447', 'Mic Wireless', 'mic-wireless'),
('a5c86871-0d5f-4424-ae8d-05004cff7f9a', 'LINE', 'line', '', '21', '25cd8d0d-d185-41e8-9943-fdf1264236f2', '2026-04-01 04:08:58.287', '2026-04-08 07:12:29.447', 'LINE', 'line'),
('ae677dfe-0b1d-4489-98ac-322829e069a4', 'Keluaran Daya', 'keluaran-daya', 'W', '4', '25cd8d0d-d185-41e8-9943-fdf1264236f2', '2026-04-01 01:33:47.874', '2026-04-08 07:12:29.447', 'Power Output', 'power-output'),
('b39bbbd2-77ef-4eff-8ccd-65ab783e49b5', 'Kontrol', 'kontrol', '', '11', '25cd8d0d-d185-41e8-9943-fdf1264236f2', '2026-04-01 01:31:39.033', '2026-04-08 07:12:29.447', 'Control', 'control'),
('bec7dbb1-579b-4f00-b3c0-21ee663f65c7', 'Compression Driver', 'compression-driver', '', '34', '25cd8d0d-d185-41e8-9943-fdf1264236f2', '2026-04-01 04:13:15.945', '2026-04-08 07:12:29.448', 'Compression Driver', 'compression-driver'),
('cda903e6-f854-4713-9054-ff3aa4cd75c4', 'Woofer', 'woofer', '', '6', '25cd8d0d-d185-41e8-9943-fdf1264236f2', '2026-04-01 04:04:07.437', '2026-04-08 07:12:29.447', 'Woofer', 'woofer'),
('d4a92c59-b965-4fd4-b913-b9d1982a8898', 'SD / MMC', 'sd', '', '20', '25cd8d0d-d185-41e8-9943-fdf1264236f2', '2026-04-01 04:08:42.759', '2026-04-08 07:12:29.447', 'SD / MMC', 'sd'),
('dce9e0cd-8e5b-4d0a-ae57-21dc3dcefdcb', 'Flashing LED', 'flashing-led', '', '30', '25cd8d0d-d185-41e8-9943-fdf1264236f2', '2026-04-01 01:31:58.718', '2026-04-08 07:12:29.447', 'Flashing LED', 'flashing-led'),
('de29974c-62c6-4bd2-9679-153f01dedcf5', 'Input', 'input', '', '15', '25cd8d0d-d185-41e8-9943-fdf1264236f2', '2026-04-01 04:07:06.193', '2026-04-08 07:12:29.447', 'Inputs', 'inputs'),
('dfd9fadf-a260-4f80-abe4-5f5508dd414e', 'Desain', 'desain', '', '35', '25cd8d0d-d185-41e8-9943-fdf1264236f2', '2026-04-02 06:13:00.137', '2026-04-08 07:12:29.448', 'Design', 'design'),
('e137db07-98f3-4d79-b67c-74912b613f8e', 'Mixer', 'mixer', '', '36', '25cd8d0d-d185-41e8-9943-fdf1264236f2', '2026-04-01 04:13:24.020', '2026-04-08 07:12:29.448', 'Mixer', 'mixer'),
('f0293569-3f77-4c6a-9d7c-dc59670c9272', 'Multi Link', 'multi-link', '', '26', '25cd8d0d-d185-41e8-9943-fdf1264236f2', '2026-04-01 01:31:27.815', '2026-04-08 07:12:29.447', 'Multi Link', 'multi-link'),
('f1350c60-aa18-42a5-8197-abe501f67468', 'Sliding', 'sliding', '', '14', '25cd8d0d-d185-41e8-9943-fdf1264236f2', '2026-04-01 04:11:26.747', '2026-04-08 07:12:29.447', 'Sliding', 'sliding'),
('f46bf78f-7ffc-4fea-a378-fe3ee549e86e', 'Baterai Isi Ulang', 'baterai-isi-ulang', '', '24', '25cd8d0d-d185-41e8-9943-fdf1264236f2', '2026-04-01 01:30:28.405', '2026-04-08 07:12:29.447', 'Rechargeable Battery', 'rechargeable-battery'),
('f7fb3f06-7350-42e5-8e6d-201c312ebb7f', 'Bluetooth', 'bluetooth', '', '25', '25cd8d0d-d185-41e8-9943-fdf1264236f2', '2026-04-01 01:31:21.722', '2026-04-08 07:12:29.447', 'Bluetooth', 'bluetooth'),
('ff866824-bbfc-435a-8782-cb74a04f90c8', 'Sumber Daya Listrik', 'sumber-daya-listrik', '', '1', '25cd8d0d-d185-41e8-9943-fdf1264236f2', '2026-04-01 01:32:45.272', '2026-04-08 07:12:29.447', 'Power Source', 'power-source'),
('fffa2052-239f-4432-bcba-fcee8dd46f20', 'Sistem Speaker', 'sistem-speaker', '', '5', '25cd8d0d-d185-41e8-9943-fdf1264236f2', '2026-04-01 01:33:58.006', '2026-04-08 07:12:29.447', 'Speaker System', 'speaker-system');

-- --------------------------------------------------------

--
-- Table structure for table `dynamicspecificationparent`
--

CREATE TABLE `dynamicspecificationparent` (
  `id` varchar(191) NOT NULL,
  `name` text NOT NULL,
  `slug` text NOT NULL,
  `priority` varchar(191) NOT NULL,
  `updatedBy` text NOT NULL,
  `createdAt` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `updatedAt` datetime(3) NOT NULL,
  `name_eng` text NOT NULL DEFAULT '',
  `slug_eng` text NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dynamicspecificationparent`
--

INSERT INTO `dynamicspecificationparent` (`id`, `name`, `slug`, `priority`, `updatedBy`, `createdAt`, `updatedAt`, `name_eng`, `slug_eng`) VALUES
('9b97e2c1-4a01-48ac-910a-2d14cb137069', 'Spesifikasi', 'spesifikasi', '1', '25cd8d0d-d185-41e8-9943-fdf1264236f2', '2026-04-01 01:24:30.611', '2026-04-08 07:12:29.447', 'Specification', 'specification');

-- --------------------------------------------------------

--
-- Table structure for table `dynamicspecificationsubparent`
--

CREATE TABLE `dynamicspecificationsubparent` (
  `id` varchar(191) NOT NULL,
  `name` text NOT NULL,
  `slug` text NOT NULL,
  `priority` varchar(191) NOT NULL,
  `updatedBy` text NOT NULL,
  `createdAt` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `updatedAt` datetime(3) NOT NULL,
  `name_eng` text NOT NULL DEFAULT '',
  `slug_eng` text NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dynamicspecificationsubparent`
--

INSERT INTO `dynamicspecificationsubparent` (`id`, `name`, `slug`, `priority`, `updatedBy`, `createdAt`, `updatedAt`, `name_eng`, `slug_eng`) VALUES
('357f094f-3395-436b-86a6-e9b238b3edb5', 'Isi dalam packaging', 'isi-dalam-packaging', '5', '25cd8d0d-d185-41e8-9943-fdf1264236f2', '2026-04-01 04:03:35.054', '2026-04-08 07:12:29.447', 'Content on the box', 'content-on-the-box'),
('53cf8166-47b9-4b4c-8e7d-8ae98c62fde6', 'Driver', 'driver', '1', '25cd8d0d-d185-41e8-9943-fdf1264236f2', '2026-04-01 04:03:11.451', '2026-04-08 07:12:29.447', 'Drivers', 'drivers'),
('8d10811b-22f9-4e65-b6bd-de72aab10789', 'Konektivitas', 'konektivitas', '4', '25cd8d0d-d185-41e8-9943-fdf1264236f2', '2026-04-01 04:03:21.403', '2026-04-08 07:12:29.447', 'Connectivity', 'connectivity'),
('ba3f4372-afe4-4d88-a6d0-9d3ad2b73824', 'Kontrol', 'kontrol', '2', '25cd8d0d-d185-41e8-9943-fdf1264236f2', '2026-04-01 04:06:40.102', '2026-04-08 07:12:29.447', 'Controls', 'controls'),
('dba0d6fd-16b2-4e6c-9923-0950e2db188b', 'Kontrol Microphone', 'kontrol-microphone', '3', '25cd8d0d-d185-41e8-9943-fdf1264236f2', '2026-04-01 04:06:48.309', '2026-04-08 07:12:29.447', 'Microphone Control', 'microphone-control');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` varchar(191) NOT NULL,
  `brandId` varchar(191) NOT NULL,
  `title` text NOT NULL,
  `slug` text NOT NULL,
  `description` text NOT NULL,
  `event_date` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `updatedBy` varchar(191) NOT NULL,
  `createdAt` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `updatedAt` datetime(3) NOT NULL,
  `news_img` text NOT NULL DEFAULT '',
  `description_eng` text NOT NULL DEFAULT '',
  `slug_eng` text NOT NULL DEFAULT '',
  `title_eng` text NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `brandId`, `title`, `slug`, `description`, `event_date`, `updatedBy`, `createdAt`, `updatedAt`, `news_img`, `description_eng`, `slug_eng`, `title_eng`) VALUES
('0033fdaf-7c5b-4635-bfed-7cec6417b7f8', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'News 4 Indo', 'news-4-indo', '<p>\"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.\"</p>', '2025-08-03 17:00:00.000', 'admin', '2026-03-31 00:19:28.958', '2026-04-08 07:17:39.141', '/uploads/newsimages/images.jpg', '<p>\"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.\"</p>', 'news-4-english', 'News 4 English'),
('5d3b912b-22c8-4bdf-b7af-18e6ea6c51c1', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'News 3 Indo', 'news-3-indo', '<p><strong><em>But I must explain to you</em></strong> how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain,</p><h3>but because occasionally circumstances occur in which toil and pain can procure him some great pleasure.</h3><p>To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?</p><img class=\"max-w-full rounded-md my-4\" src=\"http://localhost:3003/uploads/newsimages/PA-101-cover-1.webp\">', '2026-04-06 17:00:00.000', 'admin', '2026-03-31 00:18:51.927', '2026-04-08 07:16:55.278', '/uploads/newsimages/images.png', '<p><strong><em>But I must explain to you</em></strong> how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain,</p><h3>but because occasionally circumstances occur in which toil and pain can procure him some great pleasure.</h3><p>To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?</p><img class=\"max-w-full rounded-md my-4\" src=\"http://localhost:3003/uploads/newsimages/PA-101-cover-1.webp\">', 'news-3-english', 'News 3 English'),
('86ab36ef-38d9-4d15-8d6a-3693d89b36b1', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'News 1 Indo', 'news-1-indo', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', '2026-01-21 17:00:00.000', 'admin', '2026-03-31 00:15:09.929', '2026-04-08 07:17:26.471', '/uploads/newsimages/news-placeholder.jpg', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', 'news-1-english', 'News 1 English'),
('934a5940-3e7c-4b4d-8ec2-1f2d2e103c76', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'News 2 Indo', 'news-2-indo', '<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?</p><img class=\"max-w-full rounded-md my-4\" src=\"http://localhost:3003/uploads/newsimages/PA-101-cover.webp\">', '2026-02-18 17:00:00.000', 'admin', '2026-03-31 00:16:35.213', '2026-04-08 07:17:13.784', '/uploads/newsimages/newspaper-page-featuring-placeholder-text-various-sections-likely-template-draft-layout-large-bold-headings-include-news-383506067.webp', '<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?</p><img class=\"max-w-full rounded-md my-4\" src=\"http://localhost:3003/uploads/newsimages/PA-101-cover.webp\">', 'news-2-english', 'News 2 English');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` varchar(191) NOT NULL,
  `brandId` varchar(191) NOT NULL,
  `name` text NOT NULL,
  `isFeatured` tinyint(1) NOT NULL DEFAULT 0,
  `isArchived` tinyint(1) NOT NULL DEFAULT 0,
  `createdAt` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `updatedAt` datetime(3) NOT NULL,
  `description` text NOT NULL,
  `slug` text NOT NULL,
  `updatedBy` text NOT NULL,
  `featuredDesc` text NOT NULL,
  `cover_img` text NOT NULL,
  `new_product` tinyint(1) NOT NULL DEFAULT 0,
  `featured_img` text NOT NULL DEFAULT '',
  `description_eng` text NOT NULL DEFAULT '',
  `featuredDesc_eng` text NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `brandId`, `name`, `isFeatured`, `isArchived`, `createdAt`, `updatedAt`, `description`, `slug`, `updatedBy`, `featuredDesc`, `cover_img`, `new_product`, `featured_img`, `description_eng`, `featuredDesc_eng`) VALUES
('0fc1bf44-b61d-4991-9403-0b0ecef8c791', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'PARTY FLASH 28', 1, 0, '2026-03-31 15:09:45.528', '2026-04-08 03:52:22.721', '<p><strong>Isi dalam packaging:</strong></p><ul><li><p>1 unit Party Flash 28</p></li><li><p>1 buku Panduan Pengguna</p></li><li><p>1 kartu Garansi</p></li><li><p>1 unit Remote Control</p></li><li><p>2 unit Mikrofon Wireless</p></li></ul>', 'party-flash-28', 'admin', '', '/uploads/productcoverimage/PARTY FLASH 28.jpg.jpeg', 1, '', '<p><strong>Content on the box:</strong></p><ul><li><p>1 pc Party Flash 28</p></li><li><p>1 pc Owners manual</p></li><li><p>1 pc Warranty card</p></li><li><p>1 pc Remote control</p></li><li><p>2 pc Mic Wireless</p></li></ul>', ''),
('15a9bc11-1dfb-49c5-8a06-8836d35f9921', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'MINION 61', 1, 0, '2026-03-31 15:26:53.647', '2026-04-08 03:17:39.021', '<p><strong>Isi dalam packaging:</strong></p><ul><li><p>1 set Minion 61</p></li><li><p>1 buku Panduan Pengguna</p></li><li><p>1 kartu Garansi</p></li><li><p>1 unit Remote Control</p></li></ul>', 'minion-61', 'admin', '', '/uploads/productcoverimage/MINION 61.jpg.jpeg', 0, '', '<p><strong>Content on the box:</strong></p><ul><li><p>1 set Minion 61</p></li><li><p>1 pc Owners manual</p></li><li><p>1 pc Warranty card</p></li><li><p>1 pc Remote control</p></li></ul>', ''),
('3847c27a-f9f3-4c62-9213-8f4072e62117', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'MONSTER 212 REBORN Gen 2', 1, 0, '2026-03-31 15:21:34.765', '2026-04-08 03:07:30.937', '<p><strong>Isi dalam packaging:</strong></p><ul><li><p>1 set Monster 212 Reborn Gen2</p></li><li><p>1 buku Panduan Pengguna</p></li><li><p>1 kartu Garansi</p></li><li><p>1 unit Remote Control</p></li><li><p>2 unit Mikrofon Wireless</p></li></ul>', 'monster-212-reborn-gen-2', 'admin', '', '/uploads/productcoverimage/MONSTER 212 GEN2.jpg.jpeg', 1, '', '<p><strong>Content on the box:</strong></p><ul><li><p>1 set Monster 212 Reborn Gen2</p></li><li><p>1 pc Owners manual</p></li><li><p>1 pc Warranty card</p></li><li><p>1 pc Remote control</p></li><li><p>2 pc Mic Wireless</p></li></ul>', ''),
('3c1f02e6-80d0-42e3-85e2-303261105341', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'BASS BX 8020', 0, 1, '2026-03-31 15:08:13.578', '2026-04-01 04:18:13.690', '<p></p>', 'bass-bx-8020', 'admin', '', '/uploads/productcoverimage/BASS BX 8020.jpg.jpeg', 0, '', '', ''),
('4dc849b5-3796-4ba4-8878-c194953a9fa3', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'PA 81', 1, 0, '2026-03-31 15:04:21.898', '2026-04-08 04:05:15.859', '<p><strong>Isi dalam packaging:</strong></p><ul><li><p>1 set PA 81</p></li><li><p>1 buku Panduan Pengguna</p></li><li><p>1 kartu Garansi</p></li><li><p>1 unit Remote Control</p></li><li><p>2 unit Mikrofon Wireless</p></li><li><p>2 unit Handle Mikrofon</p></li><li><p>1 unit Charger</p></li></ul>', 'pa-81', 'admin', '', '/uploads/productcoverimage/PA81.jpg.jpeg', 0, '', '<p><strong>Content on the box:</strong></p><ul><li><p>1 set PA 81</p></li><li><p>1 pc Owners manual</p></li><li><p>1 pc Warranty card</p></li><li><p>1 pc Remote control</p></li><li><p>2 pc Mic Wireless</p></li><li><p>2 pc Handle Mic</p></li><li><p>1 pc Charger</p></li></ul>', ''),
('4e49b2aa-2eb2-4ae4-93af-7729e23fa404', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'PARTY 10', 1, 0, '2026-03-31 15:09:20.247', '2026-04-08 03:53:39.110', '<p><strong>Isi dalam packaging:</strong></p><ul><li><p>1 unit Party 10</p></li><li><p>1 buku Panduan Pengguna</p></li><li><p>1 kartu Garansi</p></li><li><p>1 unit Remote Control</p></li><li><p>2 unit Mikrofon Wireless</p></li></ul>', 'party-10', 'admin', '', '/uploads/productcoverimage/PARTY 10.jpg.jpeg', 1, '', '<p><strong>Content on the box:</strong></p><ul><li><p>1 pc Party 10</p></li><li><p>1 pc Owners manual</p></li><li><p>1 pc Warranty card</p></li><li><p>1 pc Remote control</p></li><li><p>2 pc Mic Wireless</p></li></ul>', ''),
('57777133-51e7-4ae8-b0de-fee20edce0cc', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'KD PRO REBORN 215 Gen 2', 1, 0, '2026-03-31 15:19:41.843', '2026-04-08 03:14:43.471', '<p><strong>Isi dalam packaging:</strong></p><ul><li><p>1 set KD Pro 215 Reborn Gen2</p></li><li><p>1 buku Panduan Pengguna</p></li><li><p>1 kartu Garansi</p></li><li><p>1 unit Remote Control</p></li><li><p>2 unit Mikrofon Wireless</p></li><li><p>2 unit Baterai Mikrofon Wireless</p></li><li><p>1 unit Charger Mikrofon</p></li></ul>', 'kd-pro-reborn-215-gen-2', 'admin', '', '/uploads/productcoverimage/KD 215 REBORN GEN2.jpg.jpeg', 0, '', '<p><strong>Content on the box:</strong></p><ul><li><p>1 set KD Pro 215 Reborn Gen2</p></li><li><p>1 pc Owners manual</p></li><li><p>1 pc Warranty card</p></li><li><p>1 pc Remote control</p></li><li><p>2 pc Mic Wireless</p></li><li><p>2 pc Mic Wireless Battery</p></li><li><p>1 pc Mic Charger</p></li></ul>', ''),
('5826462f-b495-4df7-a21f-bbf19b981a48', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'PROBEAT 212 Gen 2', 1, 0, '2026-03-31 15:11:50.776', '2026-04-08 03:56:57.687', '<p><strong>Isi dalam packaging:</strong></p><ul><li><p>1 unit Probeat 212</p></li><li><p>1 buku Panduan Pengguna</p></li><li><p>1 kartu Garansi</p></li><li><p>1 unit Remote Control</p></li><li><p>2 unit Mikrofon Wireless</p></li></ul>', 'probeat-212-gen-2', 'admin', '', '/uploads/productcoverimage/PROBEAT 212 GEN2.jpg.jpeg', 0, '', '<p><strong>Content on the box:</strong></p><ul><li><p>1 pc Probeat 212</p></li><li><p>1 pc Owners manual</p></li><li><p>1 pc Warranty card</p></li><li><p>1 pc Remote control</p></li><li><p>2 pc Mic Wireless</p></li></ul>', ''),
('5a4b4994-bb7c-4ef5-9f7f-0764fde8cbe1', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'PARTY FLASH 12', 0, 1, '2026-03-31 15:10:37.877', '2026-04-01 04:18:38.483', '<p></p>', 'party-flash-12', 'admin', '', '/uploads/productcoverimage/PARTY FLASH 12.jpg.jpeg', 0, '', '', ''),
('6e7c0a0f-be33-4490-826c-814a59048eb5', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'PA 121 Gen 2', 1, 0, '2026-03-31 15:06:22.987', '2026-04-08 03:51:52.741', '<p><strong>Isi dalam packaging:</strong></p><ul><li><p>1 set PA 121 Gen 2</p></li><li><p>1 buku Panduan Pengguna</p></li><li><p>1 kartu Garansi</p></li><li><p>1 unit Remote Control</p></li><li><p>2 unit Mikrofon Wireless</p></li><li><p>2 unit Handle Mikrofon</p></li><li><p>1 unit Charger</p></li></ul>', 'pa-121-gen-2', 'admin', '', '/uploads/productcoverimage/PA 121 GEN 2.jpg.jpeg', 0, '', '<p><strong>Content on the box:</strong></p><ul><li><p>1 set PA 121 Gen 2</p></li><li><p>1 pc Owners manual</p></li><li><p>1 pc Warranty card</p></li><li><p>1 pc Remote control</p></li><li><p>2 pc Mic Wireless</p></li><li><p>2 pc Handle Mic</p></li><li><p>1 pc Charger</p></li></ul>', ''),
('83d4e98c-e184-4c24-978e-0f6d0aafffbc', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'PA 101 Gen 2', 1, 0, '2026-03-31 15:05:28.532', '2026-04-08 03:51:28.953', '<p><strong>Isi dalam packaging:</strong></p><ul><li><p>1 set PA 101 Gen 2</p></li><li><p>1 buku Panduan Pengguna</p></li><li><p>1 kartu Garansi</p></li><li><p>1 unit Remote Control</p></li><li><p>2 unit Mikrofon Wireless</p></li><li><p>2 unit Handle Mikrofon</p></li><li><p>1 unit Charger</p></li></ul>', 'pa-101-gen-2', 'admin', '', '/uploads/productcoverimage/PA 101 GEN2.jpg.jpeg', 0, '', '<p><strong>Content on the box:</strong></p><ul><li><p>1 set PA 101 Gen 2</p></li><li><p>1 pc Owners manual</p></li><li><p>1 pc Warranty card</p></li><li><p>1 pc Remote control</p></li><li><p>2 pc Mic Wireless</p></li><li><p>2 pc Handle Mic</p></li><li><p>1 pc Charger</p></li></ul>', ''),
('8403ceac-7570-475d-81df-82586ff41921', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'BASS 16 REBORN Gen 2', 1, 0, '2026-03-31 15:16:51.322', '2026-04-08 15:42:56.054', '<p><strong>Isi dalam packaging:</strong></p><ul><li><p>1 set Bass 16 Reborn Gen2</p></li><li><p>1 buku Panduan Pengguna</p></li><li><p>1 kartu Garansi</p></li><li><p>1 unit Remote Control</p></li></ul>', 'bass-16-reborn-gen-2', 'admin', '', '/uploads/productcoverimage/BASS 16 GEN 2.jpg.jpeg', 0, '', '<p><strong>Content on the box:</strong></p><ul><li><p>1 set Bass 16 Reborn Gen2</p></li><li><p>1 pc Owners manual</p></li><li><p>1 pc Warranty card</p></li><li><p>1 pc Remote control</p></li></ul>', ''),
('8cf82b55-a985-4a5f-83ff-0484ffcdf5c5', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'BASS 28 REBORN Gen 2', 1, 0, '2026-03-31 15:18:18.367', '2026-04-08 03:10:54.491', '<p><strong>Isi dalam packaging:</strong></p><ul><li><p>1 set Bass 28 Reborn Gen2</p></li><li><p>1 buku Panduan Pengguna</p></li><li><p>1 kartu Garansi</p></li><li><p>1 unit Remote Control</p></li></ul>', 'bass-28-reborn-gen-2', 'admin', '', '/uploads/productcoverimage/BASS 28 GEN2.jpg.jpeg', 0, '', '<p><strong>Content on the box:</strong></p><ul><li><p>1 set Bass 28 Reborn Gen2</p></li><li><p>1 pc Owners manual</p></li><li><p>1 pc Warranty card</p></li><li><p>1 pc Remote control</p></li></ul>', ''),
('95a8386d-0151-4ef5-9b7a-23f2988ffbd8', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'KD PRO REBORN 212 Gen 2', 1, 0, '2026-03-31 15:19:03.973', '2026-04-08 04:18:41.807', '<p><strong>Isi dalam packaging:</strong></p><ul><li><p>1 set KD Pro 212 Reborn Gen2</p></li><li><p>1 buku Panduan Pengguna</p></li><li><p>1 kartu Garansi</p></li><li><p>1 unit Remote Control</p></li><li><p>2 unit Mikrofon Wireless</p></li><li><p>2 unit Baterai Mikrofon Wireless</p></li><li><p>1 unit Charger Mikrofon</p></li></ul>', 'kd-pro-reborn-212-gen-2', 'admin', '', '/uploads/productcoverimage/KD 212 REBORN GEN2.jpg.jpeg', 0, '', '<p><strong>Content on the box:</strong></p><ul><li><p>1 set KD Pro 212 Reborn Gen2</p></li><li><p>1 pc Owners manual</p></li><li><p>1 pc Warranty card</p></li><li><p>1 pc Remote control</p></li><li><p>2 pc Mic Wireless</p></li><li><p>2 pc Mic Wireless Battery</p></li><li><p>1 pc Mic Charger</p></li></ul>', ''),
('9a390596-9761-4552-b9aa-71904a27803b', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'BASS BX 1220', 0, 1, '2026-03-31 15:08:29.206', '2026-04-01 04:18:19.880', '<p></p>', 'bass-bx-1220', 'admin', '', '/uploads/productcoverimage/BASS BX 1220.jpg.jpeg', 0, '', '', ''),
('9ab06c62-3e47-4751-abf9-9c2a96d70421', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'PA 61', 1, 0, '2026-03-31 15:03:35.585', '2026-04-08 04:10:04.859', '<p><strong>Isi dalam packaging:</strong></p><ul><li><p>1 set PA 61</p></li><li><p>1 buku Panduan Pengguna</p></li><li><p>1 kartu Garansi</p></li><li><p>1 unit Remote Control</p></li><li><p>2 unit Mikrofon Wireless</p></li><li><p>2 unit Handle Mikrofon</p></li><li><p>1 unit Charger</p></li></ul>', 'pa-61', 'admin', '', '/uploads/productcoverimage/PA61.jpg.jpeg', 0, '', '<p><strong>Content on the box:</strong></p><ul><li><p>1 set PА 61</p></li><li><p>1 pc Owners manual</p></li><li><p>1 pc Warranty card</p></li><li><p>1 pc Remote control</p></li><li><p>2 pc Mic Wireless</p></li><li><p>2 pc Handle Mic</p></li><li><p>1 pc Charger</p></li></ul>', ''),
('9be101d2-1c34-450b-a0dd-01cf009c560e', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'BASS BX 6020', 0, 1, '2026-03-31 15:07:01.922', '2026-04-01 04:18:31.198', '<p></p>', 'bass-bx-6020', 'admin', '', '/uploads/productcoverimage/BASS BX 6020.jpg.jpeg', 0, '', '', ''),
('a4c4828a-80c1-4698-be71-892994e657df', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'BASS BX 1520', 0, 1, '2026-03-31 15:08:40.003', '2026-04-01 04:18:25.501', '<p></p>', 'bass-bx-1520', 'admin', '', '/uploads/productcoverimage/BASS BX 1520.jpg.jpeg', 0, '', '', ''),
('a8887af0-547d-42e1-8cca-779cf1841ed5', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'BASS 26 REBORN Gen 2', 1, 0, '2026-03-31 15:17:38.944', '2026-04-08 04:24:18.345', '<p><strong>Isi dalam packaging:</strong></p><ul><li><p>1 set Bass 26 Reborn Gen2</p></li><li><p>1 buku Panduan Pengguna</p></li><li><p>1 kartu Garansi</p></li><li><p>1 unit Remote Control</p></li></ul>', 'bass-26-reborn-gen-2', 'admin', '', '/uploads/productcoverimage/BASS 26 GEN2.jpg.jpeg', 0, '', '<p><strong>Content on the box:</strong></p><ul><li><p>1 set Bass 26 Reborn Gen2</p></li><li><p>1 pc Owners manual</p></li><li><p>1 pc Warranty card</p></li><li><p>1 pc Remote control</p></li></ul>', ''),
('cd34c76d-1738-4a80-be66-0e51d7da6693', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'PARTY FLASH 15', 0, 1, '2026-03-31 15:29:00.994', '2026-04-01 04:18:05.416', '<p></p>', 'party-flash-15', 'admin', '', '/uploads/productcoverimage/PARTY FLASH 15.jpg.jpeg', 0, '', '', ''),
('d1e7baa1-7ce6-4720-9530-30b84eb97c31', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'PARTY 8', 1, 0, '2026-03-31 15:08:54.857', '2026-04-08 03:52:06.883', '<p><strong>Isi dalam packaging:</strong></p><ul><li><p>1 unit Party 8</p></li><li><p>1 buku Panduan Pengguna</p></li><li><p>1 kartu Garansi</p></li><li><p>1 unit Remote Control</p></li><li><p>2 unit Mikrofon Wireless</p></li></ul>', 'party-8', 'admin', '', '/uploads/productcoverimage/PARTY 8.jpg.jpeg', 0, '', '<p><strong>Content on the box:</strong></p><ul><li><p>1 pc Party 8</p></li><li><p>1 pc Owners manual</p></li><li><p>1 pc Warranty card</p></li><li><p>1 pc Remote control</p></li><li><p>2 pc Mic Wireless</p></li></ul>', ''),
('d96ca88f-1b20-437d-973e-4a5fc0655de1', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'MONSTER 210 REBORN Gen 2', 1, 0, '2026-03-31 15:21:11.265', '2026-04-08 03:03:50.996', '<p><strong>Isi dalam packaging:</strong></p><ul><li><p>1 unit Monster 210 Reborn Gen2</p></li><li><p>1 Buku panduan pengguna</p></li><li><p>1 Kartu garansi</p></li><li><p>1 Remote control</p></li><li><p>2 Mikrofon wireless</p></li></ul>', 'monster-210-reborn-gen-2', 'admin', '', '/uploads/productcoverimage/MONSTER 210 GEN2.jpg.jpeg', 1, '', '<p><strong>Content on the box:</strong></p><ul><li><p>1 set Monster 210 Reborn Gen2</p></li><li><p>1 pc Owners manual</p></li><li><p>1 pc Warranty card</p></li><li><p>1 pc Remote control</p></li><li><p>2 pc Mic Wireless</p></li></ul>', ''),
('ee550140-1522-4320-8790-b868ce5b74f3', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'PROBEAT 210 Gen 2', 1, 0, '2026-03-31 15:11:17.175', '2026-04-08 03:56:36.211', '<p><strong>Isi dalam packaging:</strong></p><ul><li><p>1 unit Probeat 210</p></li><li><p>1 buku Panduan Pengguna</p></li><li><p>1 kartu Garansi</p></li><li><p>1 unit Remote Control</p></li><li><p>2 unit Mikrofon Wireless</p></li></ul>', 'probeat-210-gen-2', 'admin', '', '/uploads/productcoverimage/PROBEAT 210 GEN2.jpg.jpeg', 0, '', '<p><strong>Content on the box:</strong></p><ul><li><p>1 pc Probeat 210</p></li><li><p>1 pc Owners manual</p></li><li><p>1 pc Warranty card</p></li><li><p>1 pc Remote control</p></li><li><p>2 pc Mic Wireless</p></li></ul>', ''),
('f33a3fca-2a2c-4913-8ec9-9a98946ba7b1', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'PARTY FLASH 10', 1, 0, '2026-03-31 15:10:12.551', '2026-04-08 03:52:41.010', '<p><strong>Isi dalam packaging:</strong></p><ul><li><p>1 unit Party Flash 10</p></li><li><p>1 buku Panduan Pengguna</p></li><li><p>1 kartu Garansi</p></li><li><p>1 unit Remote Control</p></li><li><p>2 unit Mikrofon Wireless</p></li></ul>', 'party-flash-10', 'admin', '', '/uploads/productcoverimage/PARTY FLASH 10.jpg.jpeg', 0, '', '<p><strong>Content on the box:</strong></p><ul><li><p>1 pc Party Flash 10</p></li><li><p>1 pc Owners manual</p></li><li><p>1 pc Warranty card</p></li><li><p>1 pc Remote control</p></li><li><p>2 pc Mic Wireless</p></li></ul>', '');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` varchar(191) NOT NULL,
  `userId` varchar(191) NOT NULL,
  `brandId` varchar(191) NOT NULL,
  `brandName` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `userId`, `brandId`, `brandName`) VALUES
('', '25cd8d0d-d185-41e8-9943-fdf1264236f2', 'admin', ''),
('41390b92-af3f-40eb-a021-3515924e6e4d', 'eb644eac-13dc-4ab8-938e-cc3ac2e09c5b', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'Roadmaster');

-- --------------------------------------------------------

--
-- Table structure for table `specificationconnector`
--

CREATE TABLE `specificationconnector` (
  `id` varchar(191) NOT NULL,
  `brandId` varchar(191) NOT NULL,
  `productId` varchar(191) NOT NULL,
  `dynamicspecificationParentId` varchar(191) NOT NULL,
  `dynamicspecificationSubParentId` varchar(191) DEFAULT NULL,
  `dynamicspecificationId` varchar(191) NOT NULL,
  `notes` text NOT NULL,
  `value` text NOT NULL,
  `notes_eng` text NOT NULL DEFAULT '',
  `value_eng` text NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `specificationconnector`
--

INSERT INTO `specificationconnector` (`id`, `brandId`, `productId`, `dynamicspecificationParentId`, `dynamicspecificationSubParentId`, `dynamicspecificationId`, `notes`, `value`, `notes_eng`, `value_eng`) VALUES
('00333afb-6f47-4273-b71d-db9e59284ec4', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '4e49b2aa-2eb2-4ae4-93af-7729e23fa404', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', 'de29974c-62c6-4bd2-9679-153f01dedcf5', '', '2 x inputs MIC (6.35 mm)', '', '2 x MIC inputs (6.35 mm)'),
('017b0c62-0ba9-4a7d-8573-42d6a26753d7', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '5826462f-b495-4df7-a21f-bbf19b981a48', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '11fb867e-f262-41c0-9901-912de9aaa12b', '', '180', '', '180'),
('01aa9dca-8f37-4d27-a923-45d51341fc31', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '83d4e98c-e184-4c24-978e-0f6d0aafffbc', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', 'ae677dfe-0b1d-4489-98ac-322829e069a4', 'RMS', '70', 'RMS', '70'),
('01d189bb-5347-4813-bdaa-11cbde5fd6fd', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'd96ca88f-1b20-437d-973e-4a5fc0655de1', '9b97e2c1-4a01-48ac-910a-2d14cb137069', 'ba3f4372-afe4-4d88-a6d0-9d3ad2b73824', 'f1350c60-aa18-42a5-8197-abe501f67468', '', 'Volume, Treble, Bass, X-Bass', '', 'Volume, Treble, Bass, X-Bass'),
('01e8f420-6a08-4c62-a409-8c199ba7087c', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'd96ca88f-1b20-437d-973e-4a5fc0655de1', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '53cf8166-47b9-4b4c-8e7d-8ae98c62fde6', '53475931-30c0-4f42-bb5d-b5bc9a408c3d', '', '2.5 cm (1\"), 25 W', '', '2.5 cm (1\"), 25 W'),
('02af16ee-2750-4f3f-8165-4408d7a8b37b', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '6e7c0a0f-be33-4490-826c-814a59048eb5', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '68757736-bbeb-4a48-a383-fad6682a0c42', '', 'Multi Input', '', 'Multi Input'),
('0406a82b-a2d5-45a5-ac58-13ff0b348304', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '9ab06c62-3e47-4751-abf9-9c2a96d70421', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '8d10811b-22f9-4e65-b6bd-de72aab10789', '45ce71bd-0d75-4803-b54a-509330b280f8', '', 'Koneksi Bluetooth antara 2 unit', '', 'BT connection between 2 units'),
('0407213e-4906-487b-865a-2d31d8b0870f', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'd96ca88f-1b20-437d-973e-4a5fc0655de1', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '53cf8166-47b9-4b4c-8e7d-8ae98c62fde6', '6a1f42b2-b07f-429c-9dd9-bcd44c3450bc', 'W x D x H', '298 x 296 x 1052', 'W x D x H', '298 x 296 x 1052'),
('044495cf-1708-490c-8766-b8e05f7b6823', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '83d4e98c-e184-4c24-978e-0f6d0aafffbc', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '11fb867e-f262-41c0-9901-912de9aaa12b', '', '70', '', '70'),
('0592e1c8-dd4f-47ef-b9b4-01dccdb9dd3a', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'a8887af0-547d-42e1-8cca-779cf1841ed5', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '8d10811b-22f9-4e65-b6bd-de72aab10789', 'd4a92c59-b965-4fd4-b913-b9d1982a8898', '', 'Pemutaran MP3', '', 'MP3 Playback'),
('070ff8a8-2d48-4fb2-8ba8-c2a5d4b0b4b9', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '8403ceac-7570-475d-81df-82586ff41921', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '53cf8166-47b9-4b4c-8e7d-8ae98c62fde6', 'cda903e6-f854-4713-9054-ff3aa4cd75c4', '', '15.3 cm (6\"), 6 Ohm, 60 W', '', '15.3 cm (6\"), 6 Ohm, 60 W'),
('07b9dff8-2809-48ae-82ef-2a6f95201c64', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '57777133-51e7-4ae8-b0de-fee20edce0cc', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '8d10811b-22f9-4e65-b6bd-de72aab10789', '45ce71bd-0d75-4803-b54a-509330b280f8', '', 'Koneksi Bluetooth antara 2 unit', '', 'BT connection between 2 units'),
('084f135e-3412-4048-afcf-1be0c20d5ac7', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'f33a3fca-2a2c-4913-8ec9-9a98946ba7b1', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '6a1f42b2-b07f-429c-9dd9-bcd44c3450bc', 'W x D x H', '360 x 340 x 880', 'W x D x H', '360 x 340 x 880'),
('0850ec95-f2fc-4810-aadc-fcd20e36a361', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '5826462f-b495-4df7-a21f-bbf19b981a48', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '8d10811b-22f9-4e65-b6bd-de72aab10789', '45ce71bd-0d75-4803-b54a-509330b280f8', '', 'Koneksi Bluetooth antara 2 unit', '', 'BT connection between 2 units'),
('09f2fe86-a5a1-4d57-bc40-6a9964bcd397', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '8403ceac-7570-475d-81df-82586ff41921', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '8d10811b-22f9-4e65-b6bd-de72aab10789', '5de2a926-69f9-4376-a697-65afff94981d', '', 'Freq. Band: 2.4 GHz (2.4000 GHz - 2.4835 GHz)', '', 'Freq. Band: 2.4 GHz (2.4000 GHz - 2.4835 GHz)'),
('0a98d145-09aa-4139-971c-aed00a61cb0e', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'd1e7baa1-7ce6-4720-9530-30b84eb97c31', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '1a8d1e3e-4810-4b0c-81c8-caa5b7e501e2', '', '50000', '', '50000'),
('0c1253b2-3205-46de-8101-87e476375e0f', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '3847c27a-f9f3-4c62-9213-8f4072e62117', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', 'ff866824-bbfc-435a-8782-cb74a04f90c8', '', 'AC 220 V - 50 Hz', '', 'AC 220 V - 50 Hz'),
('0c12ea7a-6c76-47ba-a20d-27de1fc08252', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '57777133-51e7-4ae8-b0de-fee20edce0cc', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '8d10811b-22f9-4e65-b6bd-de72aab10789', 'd4a92c59-b965-4fd4-b913-b9d1982a8898', '', 'Pemutaran MP3', '', 'MP3 Playback'),
('0c1d78fa-ced4-45a7-9e52-5384f935eee6', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'd96ca88f-1b20-437d-973e-4a5fc0655de1', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '8d10811b-22f9-4e65-b6bd-de72aab10789', '713305b8-721a-479f-a563-2fc7911b4b1b', '', 'Pemutaran MP3', '', 'MP3 Playback'),
('0ddbc7f8-0ac1-468f-90f8-94bf238ef6fb', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'd1e7baa1-7ce6-4720-9530-30b84eb97c31', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '68757736-bbeb-4a48-a383-fad6682a0c42', '', 'Multi Input', '', 'Multi Input'),
('0ded102a-a578-4348-8a5f-6af0b2b11d94', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'ee550140-1522-4320-8790-b868ce5b74f3', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '8d10811b-22f9-4e65-b6bd-de72aab10789', 'a5c86871-0d5f-4424-ae8d-05004cff7f9a', '', 'RCA 2-pin L/R type, HDMI, OPTICAL', '', 'RCA 2-pin L/R type, HDMI, OPTICAL'),
('0e0f3b6a-066b-4d6a-b30e-132ccddfd579', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '0fc1bf44-b61d-4991-9403-0b0ecef8c791', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '8d10811b-22f9-4e65-b6bd-de72aab10789', '77af6a05-b7ba-4c87-aad3-53eb05bc41bc', '', 'Freq. Range: 87.50 MHz - 108.00 MHz', '', 'Freq. Range: 87.50 MHz - 108.00 MHz'),
('103419ed-b1ea-49d3-9f9d-5f3493fb5cb9', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '57777133-51e7-4ae8-b0de-fee20edce0cc', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '1a8d1e3e-4810-4b0c-81c8-caa5b7e501e2', '', '50000', '', '50000'),
('108a81c6-07f6-4b18-9ba0-25beed1957a9', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '9ab06c62-3e47-4751-abf9-9c2a96d70421', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '68757736-bbeb-4a48-a383-fad6682a0c42', '', 'Multi Input', '', 'Multi Input'),
('109b6873-bf6f-4b33-8a9b-5e29b0606d08', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '0fc1bf44-b61d-4991-9403-0b0ecef8c791', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', 'ae677dfe-0b1d-4489-98ac-322829e069a4', 'RMS', '40', 'RMS', '40'),
('10f9d17e-cc19-4f00-8a0e-65d26762c4cb', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'd1e7baa1-7ce6-4720-9530-30b84eb97c31', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', 'fffa2052-239f-4432-bcba-fcee8dd46f20', '', 'Speaker 3 arah', '', '3-way speaker'),
('118aeaac-50af-4a3a-ac44-66b9020c1023', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '5826462f-b495-4df7-a21f-bbf19b981a48', '9b97e2c1-4a01-48ac-910a-2d14cb137069', 'dba0d6fd-16b2-4e6c-9923-0950e2db188b', '633de2e4-9792-4adf-8d18-1471cd7c8462', '', 'Mic Priority, Volume, Echo, Reverb', '', 'Mic Priority, Volume, Echo, Reverb'),
('11a20a6d-5391-47ff-b1b7-d98d29e0c89e', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '8cf82b55-a985-4a5f-83ff-0484ffcdf5c5', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '11fb867e-f262-41c0-9901-912de9aaa12b', '', '150', '', '150'),
('11bc792b-3e4c-4dd6-ba38-02e7a4c3cd9f', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'f33a3fca-2a2c-4913-8ec9-9a98946ba7b1', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '53cf8166-47b9-4b4c-8e7d-8ae98c62fde6', 'cda903e6-f854-4713-9054-ff3aa4cd75c4', '', '2 x 25.4 cm (10\"), 4 Ohm, 80 W', '', '2 x 25.4 cm (10\"), 4 Ohm, 80 W'),
('11bf6bb7-7019-4ee7-913d-fe792e59982c', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '83d4e98c-e184-4c24-978e-0f6d0aafffbc', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '53cf8166-47b9-4b4c-8e7d-8ae98c62fde6', 'cda903e6-f854-4713-9054-ff3aa4cd75c4', '', '25.4 cm (10\"), 4 Ohm, 30 W', '', '25.4 cm (10\"), 4 Ohm, 30 W'),
('11c124b3-6d8b-472e-8d53-b0c536bc270c', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '4dc849b5-3796-4ba4-8878-c194953a9fa3', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '53cf8166-47b9-4b4c-8e7d-8ae98c62fde6', 'cda903e6-f854-4713-9054-ff3aa4cd75c4', '', '20.3 cm (8\"), 4 Ohm, 35 W', '', '20.3 cm (8\"), 4 Ohm, 35 W'),
('11d04f1c-6286-481a-92cc-df8709a89434', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'a8887af0-547d-42e1-8cca-779cf1841ed5', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '11fb867e-f262-41c0-9901-912de9aaa12b', '', '135', '', '135'),
('126c395b-1c80-4ce7-aff7-1343b6617e69', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '15a9bc11-1dfb-49c5-8a06-8836d35f9921', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '8d10811b-22f9-4e65-b6bd-de72aab10789', 'a5c86871-0d5f-4424-ae8d-05004cff7f9a', '', 'RCA 2-pin L/R type', '', 'RCA 2-pin L/R type'),
('129384c9-193c-4fbe-a83b-b13568cbdff2', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '4dc849b5-3796-4ba4-8878-c194953a9fa3', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', 'de29974c-62c6-4bd2-9679-153f01dedcf5', '', 'Gitar & 2 x input MIC (6.35 mm)', '', 'Guitar & 2 x MIC inputs (6.35 mm)'),
('12bc819e-e37d-4ba7-8923-5b3345f97e5c', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '3847c27a-f9f3-4c62-9213-8f4072e62117', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', 'dfd9fadf-a260-4f80-abe4-5f5508dd414e', '', 'Futuristis', '', 'Futuristic'),
('12ce6093-91b7-4077-8da8-8a852f4ee9f5', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'd1e7baa1-7ce6-4720-9530-30b84eb97c31', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '8e19f446-827b-44ce-acd0-839e6822d8fb', '', '25 - 20000', '', '25 - 20000'),
('1300b1cf-6739-42e8-85c0-541db50a6f3c', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '8403ceac-7570-475d-81df-82586ff41921', '9b97e2c1-4a01-48ac-910a-2d14cb137069', 'ba3f4372-afe4-4d88-a6d0-9d3ad2b73824', '2b402275-bb39-4d09-bc5c-aa4f3906f3f6', '', 'X-BASS, BASS, TREBLE, VOLUME', '', 'X-BASS, BASS, TREBLE, VOLUME'),
('13062183-1308-4483-8d94-13b737342beb', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'd96ca88f-1b20-437d-973e-4a5fc0655de1', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', 'ae677dfe-0b1d-4489-98ac-322829e069a4', 'RMS', '2 x 50', 'RMS', '2 x 50'),
('134c910f-9fb7-4113-9e6d-256ee0782ac4', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '8cf82b55-a985-4a5f-83ff-0484ffcdf5c5', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '8d10811b-22f9-4e65-b6bd-de72aab10789', 'a5c86871-0d5f-4424-ae8d-05004cff7f9a', '', 'RCA 2-pin L/R type', '', 'RCA 2-pin L/R type'),
('146de77f-511c-4302-8249-94bc8fa0f975', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '57777133-51e7-4ae8-b0de-fee20edce0cc', '9b97e2c1-4a01-48ac-910a-2d14cb137069', 'dba0d6fd-16b2-4e6c-9923-0950e2db188b', 'e137db07-98f3-4d79-b67c-74912b613f8e', '', 'MIC VOLUME, Echo, Wireless Volume, Repeat, Delay', '', 'MIC VOLUME, Echo, Wireless Volume, Repeat, Delay'),
('1523f263-d622-4410-9e92-4e4d35ba215a', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '9ab06c62-3e47-4751-abf9-9c2a96d70421', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '8d10811b-22f9-4e65-b6bd-de72aab10789', '5de2a926-69f9-4376-a697-65afff94981d', '', 'Freq. Band : 2.4 GHz (2.4000 GHz - 2.4835 GHz)', '', 'Freq. Band : 2.4 GHz (2.4000 GHz - 2.4835 GHz)'),
('1529eb89-f7b3-424a-90dc-890f3064153b', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '0fc1bf44-b61d-4991-9403-0b0ecef8c791', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', 'ff866824-bbfc-435a-8782-cb74a04f90c8', '', 'AC 220 V - 50 Hz', '', 'AC 220 V - 50 Hz'),
('154b0579-e87a-403c-b5c1-f83116d11951', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '4e49b2aa-2eb2-4ae4-93af-7729e23fa404', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '53cf8166-47b9-4b4c-8e7d-8ae98c62fde6', 'cda903e6-f854-4713-9054-ff3aa4cd75c4', '', '2 x 25.4 cm (10\"), 4 Ohm, 80 W', '', '2 x 25.4 cm (10\"), 4 Ohm, 80 W'),
('171b1bd8-c671-4c1b-a251-bab11430a388', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '3847c27a-f9f3-4c62-9213-8f4072e62117', '9b97e2c1-4a01-48ac-910a-2d14cb137069', 'ba3f4372-afe4-4d88-a6d0-9d3ad2b73824', 'f1350c60-aa18-42a5-8197-abe501f67468', '', 'Volume, Treble, Bass, X-Bass', '', 'Volume, Treble, Bass, X-Bass'),
('187298ce-2872-4fdd-8902-19110e065628', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '9ab06c62-3e47-4751-abf9-9c2a96d70421', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '65b285b2-b1b7-4797-9fe9-06c9642785a8', '', 'Handle saja', '', 'Handle only'),
('18c286c3-ae9f-49f9-93ef-5c8ce2bd646d', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'd96ca88f-1b20-437d-973e-4a5fc0655de1', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '8d10811b-22f9-4e65-b6bd-de72aab10789', '77af6a05-b7ba-4c87-aad3-53eb05bc41bc', '', 'Freq. Range: 87.50 MHz - 108.00 MHz', '', 'Freq. Range: 87.50 MHz - 108.00 MHz'),
('18d518b3-54c9-4f08-b4d4-3ba6f2eb7353', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'f33a3fca-2a2c-4913-8ec9-9a98946ba7b1', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', 'f46bf78f-7ffc-4fea-a378-fe3ee549e86e', '', 'Ada', '', 'Yes'),
('18dddee4-b5b7-444e-a025-fa5592b756bb', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '0fc1bf44-b61d-4991-9403-0b0ecef8c791', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '8e19f446-827b-44ce-acd0-839e6822d8fb', '', '25 - 20000', '', '25 - 20000'),
('18f025b1-5e4a-484b-b941-0a86fe2a3d8d', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '6e7c0a0f-be33-4490-826c-814a59048eb5', '9b97e2c1-4a01-48ac-910a-2d14cb137069', 'dba0d6fd-16b2-4e6c-9923-0950e2db188b', '2b402275-bb39-4d09-bc5c-aa4f3906f3f6', '', 'MIC VOLUME, Echo, Mic Priority', '', 'MIC VOLUME, Echo, Mic Priority'),
('198f43bb-99eb-426b-99bb-8093efdcd1df', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '6e7c0a0f-be33-4490-826c-814a59048eb5', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '8d10811b-22f9-4e65-b6bd-de72aab10789', '77af6a05-b7ba-4c87-aad3-53eb05bc41bc', '', 'Freq. Range: 87.50 MHz - 108.00 MHz', '', 'Freq. Range: 87.50 MHz - 108.00 MHz'),
('1a340315-91f3-4c98-ad5b-a1f1774819dc', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '8cf82b55-a985-4a5f-83ff-0484ffcdf5c5', '9b97e2c1-4a01-48ac-910a-2d14cb137069', 'dba0d6fd-16b2-4e6c-9923-0950e2db188b', '2b402275-bb39-4d09-bc5c-aa4f3906f3f6', '', 'MIC Volume, Echo', '', 'MIC Volume, Echo'),
('1a749acc-347f-49d1-b5da-de20c2811a8d', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '5826462f-b495-4df7-a21f-bbf19b981a48', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '53cf8166-47b9-4b4c-8e7d-8ae98c62fde6', '0a0bebf9-1e00-48cf-9e2e-2d986ad3f28e', '', '7.6 cm (3\"), 4 Ohm 30 W', '', '7.6 cm (3\"), 4 Ohm 30 W'),
('1a8fc74b-ce21-4aa7-96b2-640534b61872', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '57777133-51e7-4ae8-b0de-fee20edce0cc', '9b97e2c1-4a01-48ac-910a-2d14cb137069', 'ba3f4372-afe4-4d88-a6d0-9d3ad2b73824', 'e137db07-98f3-4d79-b67c-74912b613f8e', '', 'X-Bass, High, Mid, Low, Volume, Master, Music, Guitar & Keyboard', '', 'X-Bass, High, Mid, Low, Volume, Master, Music, Guitar & Keyboard'),
('1b479f50-256a-4352-978e-b97ff2b43fd9', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '8cf82b55-a985-4a5f-83ff-0484ffcdf5c5', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', 'ff866824-bbfc-435a-8782-cb74a04f90c8', '', 'AC 220 V-50 Hz', '', 'AC 220 V-50 Hz'),
('1b64ac33-a660-4e08-8e19-6b363030e1f9', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '8cf82b55-a985-4a5f-83ff-0484ffcdf5c5', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '8d10811b-22f9-4e65-b6bd-de72aab10789', '45ce71bd-0d75-4803-b54a-509330b280f8', '', 'Koneksi Bluetooth antara 2 unit', '', 'BT connection between 2 units'),
('1b82a508-22d2-49d8-b50c-44b6bee6d156', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '9ab06c62-3e47-4751-abf9-9c2a96d70421', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '8d10811b-22f9-4e65-b6bd-de72aab10789', '77af6a05-b7ba-4c87-aad3-53eb05bc41bc', '', 'Freq. Range: 87.50 MHz - 108.00 MHz', '', 'Freq. Range: 87.50 MHz - 108.00 MHz'),
('1bd51590-a350-43fb-9ffb-bc7e85d67a77', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '4e49b2aa-2eb2-4ae4-93af-7729e23fa404', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '68757736-bbeb-4a48-a383-fad6682a0c42', '', 'Multi Input', '', 'Multi Input'),
('1eb154f3-8dde-4ea3-81ec-f8b7d065e3a4', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'd96ca88f-1b20-437d-973e-4a5fc0655de1', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', 'ff866824-bbfc-435a-8782-cb74a04f90c8', '', 'AC 220 V- 50 Hz', '', 'AC 220 V- 50 Hz'),
('1f91f95d-ddff-4d0d-8f7b-e6f511b1bcf6', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '83d4e98c-e184-4c24-978e-0f6d0aafffbc', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '68757736-bbeb-4a48-a383-fad6682a0c42', '', 'Multi Input', '', 'Multi Input'),
('1ff7d427-09ed-45a3-8636-d538f046500d', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '6e7c0a0f-be33-4490-826c-814a59048eb5', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '65b285b2-b1b7-4797-9fe9-06c9642785a8', '', 'Roda & Handle', '', 'Wheel & Handle'),
('2085859b-665a-4c9d-b8ea-80cddf7c654e', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '5826462f-b495-4df7-a21f-bbf19b981a48', '9b97e2c1-4a01-48ac-910a-2d14cb137069', 'ba3f4372-afe4-4d88-a6d0-9d3ad2b73824', 'f1350c60-aa18-42a5-8197-abe501f67468', '', 'Volume, Treble, Bass, X-Bass', '', 'Volume, Treble, Bass, X-Bass'),
('20c228e5-720a-4a65-8569-38b58a679036', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '83d4e98c-e184-4c24-978e-0f6d0aafffbc', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '8d10811b-22f9-4e65-b6bd-de72aab10789', 'a5c86871-0d5f-4424-ae8d-05004cff7f9a', '', 'RCA 2-pin L/R type', '', 'RCA 2-pin L/R type'),
('20c79554-f84a-44c2-bd48-d593af37fa93', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '4dc849b5-3796-4ba4-8878-c194953a9fa3', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '8d10811b-22f9-4e65-b6bd-de72aab10789', '713305b8-721a-479f-a563-2fc7911b4b1b', '', 'Pemutaran MP3', '', 'MP3 Playback'),
('2172f985-71e9-4f0d-bdf8-9824d381090b', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '95a8386d-0151-4ef5-9b7a-23f2988ffbd8', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '8d10811b-22f9-4e65-b6bd-de72aab10789', '5de2a926-69f9-4376-a697-65afff94981d', '', 'Freq. Band: 2.4 GHz (2.4000 GHz - 2.4835 GHz)', '', 'Freq. Band: 2.4 GHz (2.4000 GHz - 2.4835 GHz)'),
('2193ce76-f6b6-4531-9799-8de3bc61d4a5', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'd1e7baa1-7ce6-4720-9530-30b84eb97c31', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '8d10811b-22f9-4e65-b6bd-de72aab10789', '77af6a05-b7ba-4c87-aad3-53eb05bc41bc', '', 'Freq. Range: 87.50 MHz - 108.00 MHz', '', 'Freq. Range: 87.50 MHz - 108.00 MHz'),
('21fe05f5-cdf7-4152-929f-39b40dd4ee42', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'ee550140-1522-4320-8790-b868ce5b74f3', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', 'ff866824-bbfc-435a-8782-cb74a04f90c8', '', 'AC 220 V- 50 Hz', '', 'AC 220 V- 50 Hz'),
('22ac7ee3-b6a4-49bf-ae8d-e57e131e722d', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '9ab06c62-3e47-4751-abf9-9c2a96d70421', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', 'fffa2052-239f-4432-bcba-fcee8dd46f20', '', 'Speaker 2 arah', '', '2-way speaker'),
('2322b5de-2a0a-4e9b-a4da-8bbadda2eada', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '4dc849b5-3796-4ba4-8878-c194953a9fa3', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', 'f46bf78f-7ffc-4fea-a378-fe3ee549e86e', '', 'Ada', '', 'Yes'),
('2340e949-5314-4faa-9d33-17d397873415', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '6e7c0a0f-be33-4490-826c-814a59048eb5', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '8d10811b-22f9-4e65-b6bd-de72aab10789', '45ce71bd-0d75-4803-b54a-509330b280f8', '', 'Koneksi Bluetooth antara 2 unit', '', 'BT connection between 2 units'),
('236c3694-764b-4743-b289-3ca99e34d34a', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '15a9bc11-1dfb-49c5-8a06-8836d35f9921', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '53cf8166-47b9-4b4c-8e7d-8ae98c62fde6', 'cda903e6-f854-4713-9054-ff3aa4cd75c4', '', '15.3 cm (6\"), 6 Ohm, 60 W', '', '15.3 cm (6\"), 6 Ohm, 60 W'),
('23e2be95-232a-4ca7-aad6-c4dd5e573eae', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '9ab06c62-3e47-4751-abf9-9c2a96d70421', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '1a8d1e3e-4810-4b0c-81c8-caa5b7e501e2', '', '50000', '', '50000'),
('245ca224-57d0-4f21-85ab-d19c9c2d4505', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '0fc1bf44-b61d-4991-9403-0b0ecef8c791', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '1a8d1e3e-4810-4b0c-81c8-caa5b7e501e2', '', '50000', '', '50000'),
('259a23c1-461c-4658-95c6-6e10a66cf68d', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '57777133-51e7-4ae8-b0de-fee20edce0cc', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', 'de29974c-62c6-4bd2-9679-153f01dedcf5', '', '2 x MIC, Keyboard & Input Gitar (6.35 mm)', '', '2 x MIC, Keyboard & Guitar Input (6.35 mm)'),
('25b35e79-5f7d-404b-a2b6-bf29c962ef68', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '4e49b2aa-2eb2-4ae4-93af-7729e23fa404', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', 'fffa2052-239f-4432-bcba-fcee8dd46f20', '', 'Speaker 3 arah', '', '3-way speaker'),
('276e43a2-3bd5-4651-8c8a-72530ca8a816', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '3847c27a-f9f3-4c62-9213-8f4072e62117', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', 'de29974c-62c6-4bd2-9679-153f01dedcf5', '', 'Guitar / Keyboard & 2 x MIC inputs (6.35 mm)', '', 'Gitar / Keyboard & 2 x input MIC (6.35 mm)'),
('27cafaed-0bef-41ee-a59f-3bdc17f873ca', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '4dc849b5-3796-4ba4-8878-c194953a9fa3', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '53cf8166-47b9-4b4c-8e7d-8ae98c62fde6', '0a0bebf9-1e00-48cf-9e2e-2d986ad3f28e', '', '7.5 cm (3\"), 4 Ohm 30 W', '', '7.5 cm (3\"), 4 Ohm 30 W'),
('28bdaf61-dcf8-470c-b1c5-436464bba4f0', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '57777133-51e7-4ae8-b0de-fee20edce0cc', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '8d10811b-22f9-4e65-b6bd-de72aab10789', '77af6a05-b7ba-4c87-aad3-53eb05bc41bc', '', 'Freq. Range: 87.50 MHz - 108.00 MHz', '', 'Freq. Range: 87.50 MHz - 108.00 MHz'),
('28ce71ef-50d6-4a08-9d10-7c46bdcd569b', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '4e49b2aa-2eb2-4ae4-93af-7729e23fa404', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', 'f46bf78f-7ffc-4fea-a378-fe3ee549e86e', '', 'Ada', '', 'Yes'),
('28e405e2-9104-46fa-85d2-b496b5edcd19', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'f33a3fca-2a2c-4913-8ec9-9a98946ba7b1', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '11fb867e-f262-41c0-9901-912de9aaa12b', '', '75', '', '75'),
('293b8c41-a5c3-4f29-8787-41ce1c0b60ac', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'a8887af0-547d-42e1-8cca-779cf1841ed5', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '53cf8166-47b9-4b4c-8e7d-8ae98c62fde6', 'cda903e6-f854-4713-9054-ff3aa4cd75c4', '', '2 x 15.3 cm (6\"), 6 Ohm, 60 W', '', '2 x 15.3 cm (6\"), 6 Ohm, 60 W'),
('29e6ef5a-e674-4aa3-9903-99d11ba26c92', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '0fc1bf44-b61d-4991-9403-0b0ecef8c791', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '65b285b2-b1b7-4797-9fe9-06c9642785a8', '', 'Handle & Roda', '', 'Handle & Wheel'),
('2b3f649f-b215-4f1f-9a7c-65f9c5fa140f', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '15a9bc11-1dfb-49c5-8a06-8836d35f9921', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '53cf8166-47b9-4b4c-8e7d-8ae98c62fde6', '53475931-30c0-4f42-bb5d-b5bc9a408c3d', '', '2.5 cm (1\"), 25 W', '', '2.5 cm (1\"), 25 W'),
('2bcb11ad-1486-43d9-85ae-e05aa6476530', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '15a9bc11-1dfb-49c5-8a06-8836d35f9921', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '6a1f42b2-b07f-429c-9dd9-bcd44c3450bc', 'W x D x H', '207 x 270 x 398', 'W x D x H', '207 x 270 x 398'),
('2cc01f19-3f98-4383-b4e9-17a5a6ec4a7d', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '4e49b2aa-2eb2-4ae4-93af-7729e23fa404', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '53cf8166-47b9-4b4c-8e7d-8ae98c62fde6', '0a0bebf9-1e00-48cf-9e2e-2d986ad3f28e', '', '7.6 cm (3\"), 4 Ohm 30 W', '', '7.6 cm (3\"), 4 Ohm 30 W'),
('2cd981cd-8ca7-4739-97f7-ea3f511b460b', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '4dc849b5-3796-4ba4-8878-c194953a9fa3', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '8d10811b-22f9-4e65-b6bd-de72aab10789', '45ce71bd-0d75-4803-b54a-509330b280f8', '', 'Koneksi Bluetooth antara 2 unit', '', 'BT connection between 2 units'),
('2dbf598a-17da-4378-9f34-e5fcb3421d20', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '0fc1bf44-b61d-4991-9403-0b0ecef8c791', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '8d10811b-22f9-4e65-b6bd-de72aab10789', 'd4a92c59-b965-4fd4-b913-b9d1982a8898', '', 'Pemutaran MP3', '', 'MP3 Playback'),
('2dc1e85d-b1c4-4f88-83c2-c7ca9ceef353', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '3847c27a-f9f3-4c62-9213-8f4072e62117', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '8d10811b-22f9-4e65-b6bd-de72aab10789', 'd4a92c59-b965-4fd4-b913-b9d1982a8898', '', 'Pemutaran MP3', '', 'MP3 Playback'),
('301b2610-420c-4915-bf25-878100f51875', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '57777133-51e7-4ae8-b0de-fee20edce0cc', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '53cf8166-47b9-4b4c-8e7d-8ae98c62fde6', 'cda903e6-f854-4713-9054-ff3aa4cd75c4', '', '2 x 38.1 cm (15\"), 6 Ohm, 60 W', '', '2 x 38.1 cm (15\"), 6 Ohm, 60 W'),
('30596877-66b9-4466-9ce7-ceee99d51db3', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '9ab06c62-3e47-4751-abf9-9c2a96d70421', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '8d10811b-22f9-4e65-b6bd-de72aab10789', '713305b8-721a-479f-a563-2fc7911b4b1b', '', 'Pemutaran MP3', '', 'MP3 Playback'),
('30d5c02c-3f70-4069-b2eb-085fbfabb6f6', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '3847c27a-f9f3-4c62-9213-8f4072e62117', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '8d10811b-22f9-4e65-b6bd-de72aab10789', '5de2a926-69f9-4376-a697-65afff94981d', '', 'Freq. Band: 2.4 GHz (2.4000 GHz - 2.4835 GHz)', '', 'Freq. Band: 2.4 GHz (2.4000 GHz - 2.4835 GHz)'),
('31a616d0-9211-40c1-bd96-f12b0ecd8b65', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '8cf82b55-a985-4a5f-83ff-0484ffcdf5c5', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '53cf8166-47b9-4b4c-8e7d-8ae98c62fde6', '53475931-30c0-4f42-bb5d-b5bc9a408c3d', '', '2.5 cm (1\"), 4 Ohm, 25 W', '', '2.5 cm (1\"), 4 Ohm, 25 W'),
('32c9c027-c140-47e1-88f6-3197b6a894b8', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'd96ca88f-1b20-437d-973e-4a5fc0655de1', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '8d10811b-22f9-4e65-b6bd-de72aab10789', 'd4a92c59-b965-4fd4-b913-b9d1982a8898', '', 'Pemutaran MP3', '', 'MP3 Playback'),
('32e641db-a37c-4dc7-8315-3b28e411cad0', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '9ab06c62-3e47-4751-abf9-9c2a96d70421', '9b97e2c1-4a01-48ac-910a-2d14cb137069', 'dba0d6fd-16b2-4e6c-9923-0950e2db188b', '2b402275-bb39-4d09-bc5c-aa4f3906f3f6', '', 'MIC VOLUME, Echo, Mic Priority', '', 'MIC VOLUME, Echo, Mic Priority'),
('33ef3ecd-9b72-4b16-a99f-89ddbf666bd1', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '5826462f-b495-4df7-a21f-bbf19b981a48', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', 'f46bf78f-7ffc-4fea-a378-fe3ee549e86e', '', 'Tidak ada', '', 'No'),
('34540e49-f1b2-4866-bfdb-976f7eb1cff7', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '4dc849b5-3796-4ba4-8878-c194953a9fa3', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', 'dce9e0cd-8e5b-4d0a-ae57-21dc3dcefdcb', '', 'Tidak ada', '', 'No'),
('34c4fb58-db6f-4d68-bd03-c034d98ac536', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '15a9bc11-1dfb-49c5-8a06-8836d35f9921', '9b97e2c1-4a01-48ac-910a-2d14cb137069', 'dba0d6fd-16b2-4e6c-9923-0950e2db188b', '2b402275-bb39-4d09-bc5c-aa4f3906f3f6', '', 'MIC VOLUME, Echo', '', 'MIC VOLUME, Echo'),
('356bf840-6155-45ed-aebd-f191f9759c68', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '57777133-51e7-4ae8-b0de-fee20edce0cc', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '8e19f446-827b-44ce-acd0-839e6822d8fb', '', '20 - 20000', '', '20 - 20000'),
('35ce12e8-e116-4702-9254-ab6d513b8ca2', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '15a9bc11-1dfb-49c5-8a06-8836d35f9921', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '8d10811b-22f9-4e65-b6bd-de72aab10789', '5de2a926-69f9-4376-a697-65afff94981d', '', '2.4 GHz (2.4000 GHz - 2.4835 GHz)', '', '2.4 GHz (2.4000 GHz - 2.4835 GHz)'),
('35e96d07-e505-4218-ab97-fc306d73a8c3', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'f33a3fca-2a2c-4913-8ec9-9a98946ba7b1', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '53cf8166-47b9-4b4c-8e7d-8ae98c62fde6', '53475931-30c0-4f42-bb5d-b5bc9a408c3d', '', '2.5 cm (1\"), 25 W', '', '2.5 cm (1\"), 25 W'),
('36486809-d2d4-4473-a8dd-a37363f04976', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '57777133-51e7-4ae8-b0de-fee20edce0cc', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', 'fffa2052-239f-4432-bcba-fcee8dd46f20', '', 'Speaker 2 arah', '', '2-way speaker'),
('3743feff-60c3-4b1b-84a7-d14f16f12fa2', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '6e7c0a0f-be33-4490-826c-814a59048eb5', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', 'dce9e0cd-8e5b-4d0a-ae57-21dc3dcefdcb', '', 'Tidak ada', '', 'No'),
('37aced44-4380-4d13-890b-eee2b1120ea7', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '5826462f-b495-4df7-a21f-bbf19b981a48', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '53cf8166-47b9-4b4c-8e7d-8ae98c62fde6', 'cda903e6-f854-4713-9054-ff3aa4cd75c4', '', '2 x 30 cm (12\"), 4 Ohm, 80 W', '', '2 x 30 cm (12\"), 4 Ohm, 80 W'),
('38f06eb8-d891-471f-a23d-de64bd22fa72', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'ee550140-1522-4320-8790-b868ce5b74f3', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '53cf8166-47b9-4b4c-8e7d-8ae98c62fde6', 'cda903e6-f854-4713-9054-ff3aa4cd75c4', '', '2 x 25.4 cm (10\"), 4 Ohm, 80 W', '', '2 x 25.4 cm (10\"), 4 Ohm, 80 W'),
('3a0b7053-eb97-4aa5-b3aa-30c3183f7528', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'd1e7baa1-7ce6-4720-9530-30b84eb97c31', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '53cf8166-47b9-4b4c-8e7d-8ae98c62fde6', 'cda903e6-f854-4713-9054-ff3aa4cd75c4', '', '2 x 20.3 cm (8\"), 4 Ohm, 80 W', '', '2 x 20.3 cm (8\"), 4 Ohm, 80 W'),
('3baecaa3-a636-4491-8e50-70bb5177e789', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '6e7c0a0f-be33-4490-826c-814a59048eb5', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', 'ae677dfe-0b1d-4489-98ac-322829e069a4', 'RMS', '70', 'RMS', '70'),
('3bd82e8e-632e-4711-9012-631d5663784b', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '9ab06c62-3e47-4751-abf9-9c2a96d70421', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', 'ff866824-bbfc-435a-8782-cb74a04f90c8', '', 'AC 100- 240V ~ 50Hz & DC 13.5V, 3A', '', 'AC 100- 240V ~ 50Hz & DC 13.5V, 3A'),
('3d4a5644-0fd1-4834-8d12-1fbb5f4c340f', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '0fc1bf44-b61d-4991-9403-0b0ecef8c791', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '8d10811b-22f9-4e65-b6bd-de72aab10789', '45ce71bd-0d75-4803-b54a-509330b280f8', '', 'Koneksi Bluetooth antara 2 unit', '', 'BT connection between 2 units'),
('3e12a350-ec20-4737-a887-b8edc00722fb', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'd96ca88f-1b20-437d-973e-4a5fc0655de1', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', 'de29974c-62c6-4bd2-9679-153f01dedcf5', '', 'Gitar / Keyboard & 2 x input MIC (6.35 mm)', '', 'Guitar / Keyboard & 2 x MIC inputs (6.35 mm)'),
('3e3a8bf3-a827-4c1e-93d8-6f54e02aaf19', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '0fc1bf44-b61d-4991-9403-0b0ecef8c791', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '3652480e-57ee-4d0c-9601-0f8321ed7bfa', '', '22', '', '22'),
('3ffb1342-0daa-4f1a-adce-27c4d2c6af58', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '6e7c0a0f-be33-4490-826c-814a59048eb5', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', 'ff866824-bbfc-435a-8782-cb74a04f90c8', '', 'AC 100- 240V~ 50Hz & DC 13.5V, 3A', '', 'AC 100- 240V~ 50Hz & DC 13.5V, 3A'),
('40ca678a-484a-4ad1-889a-c662fa126974', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '5826462f-b495-4df7-a21f-bbf19b981a48', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '1a8d1e3e-4810-4b0c-81c8-caa5b7e501e2', '', '50000', '', '50000'),
('4134528d-972a-4d8e-a691-a6789c7c92dd', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '8403ceac-7570-475d-81df-82586ff41921', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', 'ae677dfe-0b1d-4489-98ac-322829e069a4', 'RMS', '2 x 45', 'RMS', '2 x 45'),
('41e58ca5-a986-46bb-ab14-7990e999d00c', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'd1e7baa1-7ce6-4720-9530-30b84eb97c31', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '6a1f42b2-b07f-429c-9dd9-bcd44c3450bc', 'W x D x H', '330 x 330 x 760', 'W x D x H', '330 x 330 x 760'),
('42380d68-b2cb-401f-8a51-6e7e72f21a31', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'a8887af0-547d-42e1-8cca-779cf1841ed5', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '68757736-bbeb-4a48-a383-fad6682a0c42', '', 'Multi Input', '', 'Multi Input'),
('4278ba2f-2fe7-46f4-850d-a99217a884b2', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '3847c27a-f9f3-4c62-9213-8f4072e62117', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '8d10811b-22f9-4e65-b6bd-de72aab10789', '713305b8-721a-479f-a563-2fc7911b4b1b', '', 'Pemutaran MP3', '', 'MP3 Playback'),
('42ab3b32-945e-476b-ab7c-384d95428e0e', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'a8887af0-547d-42e1-8cca-779cf1841ed5', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', 'ff866824-bbfc-435a-8782-cb74a04f90c8', '', 'AC 220 V - 50 Hz', '', 'AC 220 V - 50 Hz'),
('43beff59-4945-43cc-ac5e-080c664bf65b', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '4dc849b5-3796-4ba4-8878-c194953a9fa3', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '6a1f42b2-b07f-429c-9dd9-bcd44c3450bc', 'W x D x H', '304 x 250 x 370', 'W x D x H', '304 x 250 x 370'),
('43c63e27-44d9-4802-9549-83b993b1e169', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '15a9bc11-1dfb-49c5-8a06-8836d35f9921', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '8d10811b-22f9-4e65-b6bd-de72aab10789', '713305b8-721a-479f-a563-2fc7911b4b1b', '', 'Pemutaran MP3', '', 'MP3 Playback'),
('43d7b4e8-f0e2-4eb3-ac2d-d284ba87a633', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '4e49b2aa-2eb2-4ae4-93af-7729e23fa404', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '8e19f446-827b-44ce-acd0-839e6822d8fb', '', '25 - 20000', '', '25 - 20000'),
('445e471d-4c82-488f-ad92-7c713bf2f850', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '8403ceac-7570-475d-81df-82586ff41921', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '6a1f42b2-b07f-429c-9dd9-bcd44c3450bc', 'W x D x H', '271.4 x 203.5 x 548', 'W x D x H', '271.4 x 203.5 x 548'),
('44cddbdb-ce83-4a82-9f38-c60fa9a3569a', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '83d4e98c-e184-4c24-978e-0f6d0aafffbc', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '8e19f446-827b-44ce-acd0-839e6822d8fb', '', '40 - 20000', '', '40 - 20000'),
('4505c2a5-5752-48b9-ac4d-73627d59656e', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '4e49b2aa-2eb2-4ae4-93af-7729e23fa404', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', 'ae677dfe-0b1d-4489-98ac-322829e069a4', 'RMS', '40', 'RMS', '40'),
('455b77a8-b3db-4f5f-9380-da66ab33af10', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '83d4e98c-e184-4c24-978e-0f6d0aafffbc', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '8d10811b-22f9-4e65-b6bd-de72aab10789', '45ce71bd-0d75-4803-b54a-509330b280f8', '', 'Koneksi Bluetooth antara 2 unit', '', 'BT connection between 2 units'),
('45c402d2-5a68-4339-a2e2-341ef8867d45', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '9ab06c62-3e47-4751-abf9-9c2a96d70421', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', 'f46bf78f-7ffc-4fea-a378-fe3ee549e86e', '', 'Ada', '', 'Yes'),
('468fb310-739a-4c62-bf34-0f9942ea4407', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '6e7c0a0f-be33-4490-826c-814a59048eb5', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', 'f46bf78f-7ffc-4fea-a378-fe3ee549e86e', '', 'Ada', '', 'Yes'),
('472f21dd-96fc-4b04-a995-ba2fa7ee91f3', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'd1e7baa1-7ce6-4720-9530-30b84eb97c31', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', 'f46bf78f-7ffc-4fea-a378-fe3ee549e86e', '', 'Iya', '', 'Yes'),
('475c1137-c152-4b3f-8026-d7eeb9ee8af1', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '95a8386d-0151-4ef5-9b7a-23f2988ffbd8', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', 'fffa2052-239f-4432-bcba-fcee8dd46f20', '', 'Speaker 2 arah', '', '2-way speaker'),
('47eaab61-1122-41f4-a93b-9a9cea9c7a2b', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '57777133-51e7-4ae8-b0de-fee20edce0cc', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '8d10811b-22f9-4e65-b6bd-de72aab10789', '713305b8-721a-479f-a563-2fc7911b4b1b', '', 'Pemutaran MP3', '', 'MP3 Playback'),
('486177b7-2f60-4372-acca-11fffef26b0c', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '4e49b2aa-2eb2-4ae4-93af-7729e23fa404', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '53cf8166-47b9-4b4c-8e7d-8ae98c62fde6', '53475931-30c0-4f42-bb5d-b5bc9a408c3d', '', '2.5 cm (1\"), 25 W', '', '2.5 cm (1\"), 25 W'),
('48a639b9-209a-4b45-80ee-b3065ef9329d', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '4e49b2aa-2eb2-4ae4-93af-7729e23fa404', '9b97e2c1-4a01-48ac-910a-2d14cb137069', 'dba0d6fd-16b2-4e6c-9923-0950e2db188b', '2b402275-bb39-4d09-bc5c-aa4f3906f3f6', '', 'MIC VOLUME, Echo', '', 'MIC VOLUME, Echo'),
('48f5f557-b463-40e5-89f8-ecc4fde06697', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '95a8386d-0151-4ef5-9b7a-23f2988ffbd8', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '53cf8166-47b9-4b4c-8e7d-8ae98c62fde6', 'cda903e6-f854-4713-9054-ff3aa4cd75c4', '', '2 x 30.5 cm (12\"), 6 Ohm, 60 W', '', '2 x 30.5 cm (12\"), 6 Ohm, 60 W'),
('49f81d83-be5b-4d81-aa93-d1d3fac22991', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '83d4e98c-e184-4c24-978e-0f6d0aafffbc', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', 'dce9e0cd-8e5b-4d0a-ae57-21dc3dcefdcb', '', 'Tidak ada', '', 'No'),
('49fe19f6-544b-4442-8937-bfc194cf7506', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '6e7c0a0f-be33-4490-826c-814a59048eb5', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '8d10811b-22f9-4e65-b6bd-de72aab10789', 'd4a92c59-b965-4fd4-b913-b9d1982a8898', '', 'Pemutaran MP3', '', 'MP3 Playback'),
('4aee34a2-d7d7-4b56-9c46-f2f9a7576355', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'ee550140-1522-4320-8790-b868ce5b74f3', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', 'de29974c-62c6-4bd2-9679-153f01dedcf5', '', 'Gitar / Keyboard & 2 x input MIC (6.35 mm)', '', 'Guitar / Keyboard & 2 x MIC inputs (6.35 mm)'),
('4af8cfab-5788-40a8-871f-76f654d8a15b', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'f33a3fca-2a2c-4913-8ec9-9a98946ba7b1', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '8e19f446-827b-44ce-acd0-839e6822d8fb', '', '25 - 20000', '', '25 - 20000'),
('4bfc2dae-61f6-430b-b18b-2911bd8432c3', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '8cf82b55-a985-4a5f-83ff-0484ffcdf5c5', '9b97e2c1-4a01-48ac-910a-2d14cb137069', 'ba3f4372-afe4-4d88-a6d0-9d3ad2b73824', '2b402275-bb39-4d09-bc5c-aa4f3906f3f6', '', 'X-BASS, BASS, TREBLE, VOLUME', '', 'X-BASS, BASS, TREBLE, VOLUME'),
('4da7551c-9d67-493e-a2be-f5334e2fe9bf', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '5826462f-b495-4df7-a21f-bbf19b981a48', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '6a1f42b2-b07f-429c-9dd9-bcd44c3450bc', 'W x D x H', '490 x 500 x 1130', 'W x D x H', '490 x 500 x 1130'),
('4dc9ab77-c365-496d-bc84-432ad07e360d', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '4dc849b5-3796-4ba4-8878-c194953a9fa3', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '8d10811b-22f9-4e65-b6bd-de72aab10789', 'd4a92c59-b965-4fd4-b913-b9d1982a8898', '', 'Pemutaran MP3', '', 'MP3 Playback'),
('4ee82802-00b0-448f-8e01-2c496652f29d', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'ee550140-1522-4320-8790-b868ce5b74f3', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '1a8d1e3e-4810-4b0c-81c8-caa5b7e501e2', '', '50000', '', '50000'),
('4f418954-f610-4a07-b0c0-590f310f022a', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '8cf82b55-a985-4a5f-83ff-0484ffcdf5c5', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '53cf8166-47b9-4b4c-8e7d-8ae98c62fde6', 'cda903e6-f854-4713-9054-ff3aa4cd75c4', '', '2 x 20.3 cm (8\"), 6 Ohm, 60 W', '', '2 x 20.3 cm (8\"), 6 Ohm, 60 W'),
('5011e055-ccaa-44df-8dbc-251909acefba', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'ee550140-1522-4320-8790-b868ce5b74f3', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '8d10811b-22f9-4e65-b6bd-de72aab10789', '5de2a926-69f9-4376-a697-65afff94981d', '', 'Freq. Band: 2.4 GHz (2.4000 GHz - 2.4835 GHz)', '', 'Freq. Band: 2.4 GHz (2.4000 GHz - 2.4835 GHz)'),
('5014d13e-2c93-4527-b356-818fac9e4b58', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '8403ceac-7570-475d-81df-82586ff41921', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '68757736-bbeb-4a48-a383-fad6682a0c42', '', 'Multi Input', '', 'Multi Input'),
('515eff58-61a7-4153-a0f7-0eb74877f828', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '0fc1bf44-b61d-4991-9403-0b0ecef8c791', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '8d10811b-22f9-4e65-b6bd-de72aab10789', '713305b8-721a-479f-a563-2fc7911b4b1b', '', 'Pemutaran MP3', '', 'MP3 Playback'),
('516eb0ff-74d2-46c8-8b79-6dec24af65c2', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '9ab06c62-3e47-4751-abf9-9c2a96d70421', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', 'ae677dfe-0b1d-4489-98ac-322829e069a4', 'RMS', '70', 'RMS', '70'),
('51f89a55-a856-4ec3-be31-d79244fbead9', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'd96ca88f-1b20-437d-973e-4a5fc0655de1', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '68757736-bbeb-4a48-a383-fad6682a0c42', '', 'Multi Input', '', 'Multi Input'),
('52f2c9c6-c35a-4aac-b9e0-d70fadd1b022', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '6e7c0a0f-be33-4490-826c-814a59048eb5', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '53cf8166-47b9-4b4c-8e7d-8ae98c62fde6', 'cda903e6-f854-4713-9054-ff3aa4cd75c4', '', '30.5 cm (12\"), 4 Ohm, 30 W', '', '30.5 cm (12\"), 4 Ohm, 30 W'),
('54e1f5f7-5dca-487c-9b1e-3564f237622f', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '0fc1bf44-b61d-4991-9403-0b0ecef8c791', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '53cf8166-47b9-4b4c-8e7d-8ae98c62fde6', '0a0bebf9-1e00-48cf-9e2e-2d986ad3f28e', '', '7.6 cm (3\"), 4 Ohm 30 W', '', '7.6 cm (3\"), 4 Ohm 30 W'),
('54fcbc26-29be-4eb3-92fb-b7da509c784f', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'd96ca88f-1b20-437d-973e-4a5fc0655de1', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '8d10811b-22f9-4e65-b6bd-de72aab10789', 'a5c86871-0d5f-4424-ae8d-05004cff7f9a', '', 'RCA 2-pin L/R type, HDMI, OPTICAL', '', 'RCA 2-pin L/R type, HDMI, OPTICAL'),
('5646ea75-a888-419f-aebb-8f2f98a7327f', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '5826462f-b495-4df7-a21f-bbf19b981a48', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '8d10811b-22f9-4e65-b6bd-de72aab10789', '713305b8-721a-479f-a563-2fc7911b4b1b', '', 'Pemutaran MP3', '', 'MP3 Playback'),
('56d39dd6-2f81-4d07-bdea-555f0d47828e', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '4dc849b5-3796-4ba4-8878-c194953a9fa3', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', 'ff866824-bbfc-435a-8782-cb74a04f90c8', '', 'AC 100 - 240V~ 50Hz & DC 13.5V, 3A', '', 'AC 100 - 240V~ 50Hz & DC 13.5V, 3A'),
('56efe8f2-55ae-4ac2-9c33-17a416715e2b', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '3847c27a-f9f3-4c62-9213-8f4072e62117', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', 'fffa2052-239f-4432-bcba-fcee8dd46f20', '', 'Speaker 3 arah', '', '3-way speaker'),
('57d944ff-bf75-4c95-84a0-56695f1ecae8', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '5826462f-b495-4df7-a21f-bbf19b981a48', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', 'de29974c-62c6-4bd2-9679-153f01dedcf5', '', 'Gitar / Keyboard & 2 x input MIC (6.35 mm)', '', 'Guitar / Keyboard & 2 x MIC inputs (6.35 mm)'),
('589480c9-34bd-469e-8147-c0fec1376463', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '8cf82b55-a985-4a5f-83ff-0484ffcdf5c5', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '3652480e-57ee-4d0c-9601-0f8321ed7bfa', '', '22', '', '22'),
('58c5d051-8b2a-499a-b905-0e4c42000d2d', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '57777133-51e7-4ae8-b0de-fee20edce0cc', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '8d10811b-22f9-4e65-b6bd-de72aab10789', 'a5c86871-0d5f-4424-ae8d-05004cff7f9a', '', 'RCA 2-pin L/R type', '', 'RCA 2-pin L/R type'),
('591cbdf2-419e-4a3b-832f-015827f4d18c', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'a8887af0-547d-42e1-8cca-779cf1841ed5', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '8d10811b-22f9-4e65-b6bd-de72aab10789', '77af6a05-b7ba-4c87-aad3-53eb05bc41bc', '', 'Freq. Range: 87.50 MHz - 108.00 MHz', '', 'Freq. Range: 87.50 MHz - 108.00 MHz'),
('5967adf1-14ff-41f6-b0c8-4c599dc00ae9', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '5826462f-b495-4df7-a21f-bbf19b981a48', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '8d10811b-22f9-4e65-b6bd-de72aab10789', 'd4a92c59-b965-4fd4-b913-b9d1982a8898', '', 'Pemutaran MP3', '', 'MP3 Playback'),
('59e0fcf7-7984-4de4-829e-2d41c69683fa', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '57777133-51e7-4ae8-b0de-fee20edce0cc', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '53cf8166-47b9-4b4c-8e7d-8ae98c62fde6', 'bec7dbb1-579b-4f00-b3c0-21ee663f65c7', '', '2.5 cm (1\"), 4 Ohm, 25 W', '', '2.5 cm (1\"), 4 Ohm, 25 W'),
('5a59375f-139a-4e15-94cb-12b1cdfce3de', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'd96ca88f-1b20-437d-973e-4a5fc0655de1', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '1a8d1e3e-4810-4b0c-81c8-caa5b7e501e2', '', '50000', '', '50000'),
('5a9ddbac-be8e-4484-9034-4623dfcfe3f2', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '57777133-51e7-4ae8-b0de-fee20edce0cc', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', 'dfd9fadf-a260-4f80-abe4-5f5508dd414e', '', 'Pro', '', 'Pro'),
('5b38be8f-f2dd-4226-86b1-a4ea9dfc24df', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '4dc849b5-3796-4ba4-8878-c194953a9fa3', '9b97e2c1-4a01-48ac-910a-2d14cb137069', 'dba0d6fd-16b2-4e6c-9923-0950e2db188b', '2b402275-bb39-4d09-bc5c-aa4f3906f3f6', '', 'MIC VOLUME, Echo, Mic Priority', '', 'MIC VOLUME, Echo, Mic Priority'),
('5c7f42bf-e653-46e3-9bd6-a74b73ce7f89', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '4e49b2aa-2eb2-4ae4-93af-7729e23fa404', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '1a8d1e3e-4810-4b0c-81c8-caa5b7e501e2', '', '50000', '', '50000'),
('5c92abf7-7c4e-4848-a592-f33c9b38715f', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'a8887af0-547d-42e1-8cca-779cf1841ed5', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '65b285b2-b1b7-4797-9fe9-06c9642785a8', '', 'Tidak ada', '', 'No'),
('5e89b7b3-d621-4dd1-92a9-6c6912d6a9c7', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '6e7c0a0f-be33-4490-826c-814a59048eb5', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '8d10811b-22f9-4e65-b6bd-de72aab10789', 'a5c86871-0d5f-4424-ae8d-05004cff7f9a', '', 'RCA 2-pin L/R type', '', 'RCA 2-pin L/R type'),
('5f532e03-0876-42c4-8f04-89c2849782fa', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '8cf82b55-a985-4a5f-83ff-0484ffcdf5c5', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '8d10811b-22f9-4e65-b6bd-de72aab10789', '5de2a926-69f9-4376-a697-65afff94981d', '', 'Freq. Band: 2.4 GHz (2.4000 GHz - 2.4835 GHz)', '', 'Freq. Band: 2.4 GHz (2.4000 GHz - 2.4835 GHz)'),
('5f724ae9-c711-4afc-9523-90ea77f09141', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '8cf82b55-a985-4a5f-83ff-0484ffcdf5c5', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', 'ae677dfe-0b1d-4489-98ac-322829e069a4', 'RMS', '2 x 45', 'RMS', '2 x 45'),
('61580a43-dde5-44ef-92c9-b43fed8665a1', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'ee550140-1522-4320-8790-b868ce5b74f3', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '8d10811b-22f9-4e65-b6bd-de72aab10789', '45ce71bd-0d75-4803-b54a-509330b280f8', '', 'Koneksi Bluetooth antara 2 unit', '', 'BT connection between 2 units'),
('61f623ed-1ae2-4bbf-b1bd-e151ba90ae99', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '83d4e98c-e184-4c24-978e-0f6d0aafffbc', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', 'f46bf78f-7ffc-4fea-a378-fe3ee549e86e', '', 'Ada', '', 'Yes'),
('62192011-6588-4edc-a5ae-f6709a97de80', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '15a9bc11-1dfb-49c5-8a06-8836d35f9921', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '3652480e-57ee-4d0c-9601-0f8321ed7bfa', '', '11', '', '11'),
('623ccca8-0c11-4fe2-8ede-a9accc7cb509', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '4e49b2aa-2eb2-4ae4-93af-7729e23fa404', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '8d10811b-22f9-4e65-b6bd-de72aab10789', '45ce71bd-0d75-4803-b54a-509330b280f8', '', 'Koneksi Bluetooth antara 2 unit', '', 'BT connection between 2 units'),
('65a348f0-ebd2-46d1-a570-65b1034bd7b7', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'f33a3fca-2a2c-4913-8ec9-9a98946ba7b1', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '3652480e-57ee-4d0c-9601-0f8321ed7bfa', '', '22', '', '22'),
('65bde33f-4965-4c01-be81-e8939a36ee33', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '83d4e98c-e184-4c24-978e-0f6d0aafffbc', '9b97e2c1-4a01-48ac-910a-2d14cb137069', 'ba3f4372-afe4-4d88-a6d0-9d3ad2b73824', '2b402275-bb39-4d09-bc5c-aa4f3906f3f6', '', 'Volume, Treble, Bass, X-Bass, Mic Priority', '', 'Volume, Treble, Bass, X-Bass, Mic Priority'),
('677f1d10-3eb1-4c6b-bccd-703c5593be09', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '8403ceac-7570-475d-81df-82586ff41921', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '1a8d1e3e-4810-4b0c-81c8-caa5b7e501e2', '', '50000', '', '50000'),
('6825942a-7c6d-4106-a0d9-17e9c403c365', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '57777133-51e7-4ae8-b0de-fee20edce0cc', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', 'ae677dfe-0b1d-4489-98ac-322829e069a4', 'RMS', '2 x 150', 'RMS', '2 x 150'),
('68b2f879-bb69-49f7-9dd1-9ca88081202d', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '9ab06c62-3e47-4751-abf9-9c2a96d70421', '9b97e2c1-4a01-48ac-910a-2d14cb137069', 'ba3f4372-afe4-4d88-a6d0-9d3ad2b73824', '2b402275-bb39-4d09-bc5c-aa4f3906f3f6', '', 'Volume, Treble, Bass, X-Bass, Mic Priority', '', 'Volume, Treble, Bass, X-Bass, Mic Priority'),
('693325a5-5ea1-47cb-ab57-fe24f29aeb25', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '9ab06c62-3e47-4751-abf9-9c2a96d70421', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '8e19f446-827b-44ce-acd0-839e6822d8fb', '', '40 - 20000', '', '40 - 20000'),
('6a5e600e-62b1-4c9c-b3da-3f5087e35878', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '8cf82b55-a985-4a5f-83ff-0484ffcdf5c5', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '6a1f42b2-b07f-429c-9dd9-bcd44c3450bc', 'W x D x H', '289.3 x 247 x 900', 'W x D x H', '289.3 x 247 x 900'),
('6aa90406-77a5-4570-8d80-8efe66cacb68', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '95a8386d-0151-4ef5-9b7a-23f2988ffbd8', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '53cf8166-47b9-4b4c-8e7d-8ae98c62fde6', 'bec7dbb1-579b-4f00-b3c0-21ee663f65c7', '', '2.5 cm (1\"), 4 Ohm, 25 W', '', '2.5 cm (1\"), 4 Ohm, 25 W'),
('6ad8588f-2fad-4632-9676-1d4f54133a98', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '6e7c0a0f-be33-4490-826c-814a59048eb5', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '8d10811b-22f9-4e65-b6bd-de72aab10789', '5de2a926-69f9-4376-a697-65afff94981d', '', 'Freq. Band: 2.4 GHz (2.4000 GHz - 2.4835 GHz)', '', 'Freq. Band: 2.4 GHz (2.4000 GHz - 2.4835 GHz)'),
('6bd19c51-a635-4d04-a577-31b023827a73', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '4dc849b5-3796-4ba4-8878-c194953a9fa3', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '8d10811b-22f9-4e65-b6bd-de72aab10789', 'a5c86871-0d5f-4424-ae8d-05004cff7f9a', '', 'RCA 2-pin L/R type', '', 'RCA 2-pin L/R type');
INSERT INTO `specificationconnector` (`id`, `brandId`, `productId`, `dynamicspecificationParentId`, `dynamicspecificationSubParentId`, `dynamicspecificationId`, `notes`, `value`, `notes_eng`, `value_eng`) VALUES
('6c76fb24-fb5c-468e-8399-ade020853d55', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '57777133-51e7-4ae8-b0de-fee20edce0cc', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', 'ff866824-bbfc-435a-8782-cb74a04f90c8', '', 'AC 220 V - 50 Hz', '', 'AC 220 V - 50 Hz'),
('6c7dfb3c-db1c-42ac-97d7-cb0a2aca9a8f', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'd96ca88f-1b20-437d-973e-4a5fc0655de1', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '65b285b2-b1b7-4797-9fe9-06c9642785a8', '', 'Tidak ada', '', 'No'),
('6d681f5f-c4f3-445a-89a9-58367e55589a', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'a8887af0-547d-42e1-8cca-779cf1841ed5', '9b97e2c1-4a01-48ac-910a-2d14cb137069', 'ba3f4372-afe4-4d88-a6d0-9d3ad2b73824', '2b402275-bb39-4d09-bc5c-aa4f3906f3f6', '', 'X-BASS, BASS, TREBLE, VOLUME', '', 'X-BASS, BASS, TREBLE, VOLUME'),
('6d843ee3-61d0-48ac-9752-a50a01cf3c30', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '83d4e98c-e184-4c24-978e-0f6d0aafffbc', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '8d10811b-22f9-4e65-b6bd-de72aab10789', '77af6a05-b7ba-4c87-aad3-53eb05bc41bc', '', 'Freq. Range: 87.50 MHz - 108.00 MHz', '', 'Freq. Range: 87.50 MHz - 108.00 MHz'),
('6d93f6d0-12c3-49c7-89c7-0baf878eeb42', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '3847c27a-f9f3-4c62-9213-8f4072e62117', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '53cf8166-47b9-4b4c-8e7d-8ae98c62fde6', 'cda903e6-f854-4713-9054-ff3aa4cd75c4', '', '2 x 30 cm (12\"), 6 Ohm, 60 W', '', '2 x 30 cm (12\"), 6 Ohm, 60 W'),
('6df3fe45-6c66-4bdd-8d7f-958f53b3c546', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '8cf82b55-a985-4a5f-83ff-0484ffcdf5c5', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '65b285b2-b1b7-4797-9fe9-06c9642785a8', '', 'Tidak ada', '', 'No'),
('6ec31aa0-1bbc-41b5-b281-ab0acc93581f', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'f33a3fca-2a2c-4913-8ec9-9a98946ba7b1', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '65b285b2-b1b7-4797-9fe9-06c9642785a8', '', 'Roda & Handle', '', 'Wheel & Handle'),
('6ee50ae6-28db-43dd-9480-d5e81e23b9b9', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'f33a3fca-2a2c-4913-8ec9-9a98946ba7b1', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '8d10811b-22f9-4e65-b6bd-de72aab10789', '77af6a05-b7ba-4c87-aad3-53eb05bc41bc', '', 'Freq. Range: 87.50 MHz - 108.00 MHz', '', 'Freq. Range: 87.50 MHz - 108.00 MHz'),
('6facf3a7-86f7-4b5b-bfd0-b95217b86bf7', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '4e49b2aa-2eb2-4ae4-93af-7729e23fa404', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '8d10811b-22f9-4e65-b6bd-de72aab10789', '713305b8-721a-479f-a563-2fc7911b4b1b', '', 'Pemutaran MP3', '', 'MP3 Playback'),
('6fb48638-18c6-4083-8130-f0420b6b865d', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'd96ca88f-1b20-437d-973e-4a5fc0655de1', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '53cf8166-47b9-4b4c-8e7d-8ae98c62fde6', '0a0bebf9-1e00-48cf-9e2e-2d986ad3f28e', '', '7.6 cm (3\"), 4 Ohm, 30 W', '', '7.6 cm (3\"), 4 Ohm, 30 W'),
('70b71c81-5757-45e4-959d-d7c848d84b5f', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'f33a3fca-2a2c-4913-8ec9-9a98946ba7b1', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '8d10811b-22f9-4e65-b6bd-de72aab10789', 'd4a92c59-b965-4fd4-b913-b9d1982a8898', '', 'Pemutaran MP3', '', 'MP3 Playback'),
('71a6b17f-aeaf-4bce-9a28-746e08aaa8ee', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '95a8386d-0151-4ef5-9b7a-23f2988ffbd8', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '11fb867e-f262-41c0-9901-912de9aaa12b', '', '280', '', '280'),
('721e184e-cf21-4c1e-9534-d069717ff2e8', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '3847c27a-f9f3-4c62-9213-8f4072e62117', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '1a8d1e3e-4810-4b0c-81c8-caa5b7e501e2', '', '50000', '', '50000'),
('727134fd-6ba4-4e6b-b957-8c7f22cffafa', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '5826462f-b495-4df7-a21f-bbf19b981a48', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', 'ff866824-bbfc-435a-8782-cb74a04f90c8', '', 'AC 220 V - 50 Hz', '', 'AC 220 V - 50 Hz'),
('73876132-931c-49ad-bdb1-2cf8040781ab', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'd1e7baa1-7ce6-4720-9530-30b84eb97c31', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '53cf8166-47b9-4b4c-8e7d-8ae98c62fde6', '0a0bebf9-1e00-48cf-9e2e-2d986ad3f28e', '', '7.6 cm (3\"), 4 Ohm 30 W', '', '7.6 cm (3\"), 4 Ohm 30 W'),
('73dfca8f-1846-4a0d-a7c8-db622e9e0ded', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '6e7c0a0f-be33-4490-826c-814a59048eb5', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '6a1f42b2-b07f-429c-9dd9-bcd44c3450bc', 'W x D x H', '380 x 298 x 611', 'W x D x H', '380 x 298 x 611'),
('7423ddce-aa43-446f-b008-f28dc7556b60', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '95a8386d-0151-4ef5-9b7a-23f2988ffbd8', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '8d10811b-22f9-4e65-b6bd-de72aab10789', '713305b8-721a-479f-a563-2fc7911b4b1b', '', 'Pemutaran MP3', '', 'MP3 Playback'),
('74a864b1-167d-4924-a935-9c27cc637a2a', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '3847c27a-f9f3-4c62-9213-8f4072e62117', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '8e19f446-827b-44ce-acd0-839e6822d8fb', '', '20 - 20000', '', '20 - 20000'),
('74d2f33c-5b02-4777-a0ae-c1c138601bba', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'a8887af0-547d-42e1-8cca-779cf1841ed5', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '8d10811b-22f9-4e65-b6bd-de72aab10789', '45ce71bd-0d75-4803-b54a-509330b280f8', '', 'Koneksi Bluetooth antara 2 unit', '', 'BT connection between 2 units'),
('750d3e07-f83e-4b99-9592-3ec7f654f827', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'f33a3fca-2a2c-4913-8ec9-9a98946ba7b1', '9b97e2c1-4a01-48ac-910a-2d14cb137069', 'ba3f4372-afe4-4d88-a6d0-9d3ad2b73824', '2b402275-bb39-4d09-bc5c-aa4f3906f3f6', '', 'Volume, Treble, Bass, X-Bass', '', 'Volume, Treble, Bass, X-Bass'),
('76f0f9e9-69a7-4b76-89c3-69e07ec22c58', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '57777133-51e7-4ae8-b0de-fee20edce0cc', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '8d10811b-22f9-4e65-b6bd-de72aab10789', '5de2a926-69f9-4376-a697-65afff94981d', '', 'Freq. Band: 2.4 GHz (2.4000 GHz - 2.4835 GHz)', '', 'Freq. Band: 2.4 GHz (2.4000 GHz - 2.4835 GHz)'),
('76faf195-1bf8-4a74-9289-731567296916', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'ee550140-1522-4320-8790-b868ce5b74f3', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '68757736-bbeb-4a48-a383-fad6682a0c42', '', 'Multi Input', '', 'Multi Input'),
('779e0250-59b8-4b82-b8f3-608f9644937a', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'f33a3fca-2a2c-4913-8ec9-9a98946ba7b1', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '8d10811b-22f9-4e65-b6bd-de72aab10789', '5de2a926-69f9-4376-a697-65afff94981d', '', 'Freq. Band: 2.4 GHz (2.4000 GHz - 2.4835 GHz)', '', 'Freq. Band: 2.4 GHz (2.4000 GHz - 2.4835 GHz)'),
('787bf03f-ce7b-45c9-9ae0-080e31770227', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '95a8386d-0151-4ef5-9b7a-23f2988ffbd8', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '1a8d1e3e-4810-4b0c-81c8-caa5b7e501e2', '', '50000', '', '50000'),
('795dca80-0750-4ed6-be5d-1034707f92e5', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '8403ceac-7570-475d-81df-82586ff41921', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', 'ff866824-bbfc-435a-8782-cb74a04f90c8', '', 'AC 220 V - 50 Hz', '', 'AC 220 V - 50 Hz'),
('797644cd-2634-409d-b091-fa2a54352488', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'd1e7baa1-7ce6-4720-9530-30b84eb97c31', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '65b285b2-b1b7-4797-9fe9-06c9642785a8', '', 'Handle & Roda', '', 'Handle & Wheel'),
('79b03f4c-03a8-42f0-a1eb-bf2b232f7de6', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '3847c27a-f9f3-4c62-9213-8f4072e62117', '9b97e2c1-4a01-48ac-910a-2d14cb137069', 'dba0d6fd-16b2-4e6c-9923-0950e2db188b', '633de2e4-9792-4adf-8d18-1471cd7c8462', '', 'Mic Priority, Volume, Echo, Reverb', '', 'Mic Priority, Volume, Echo, Reverb'),
('7a960a3d-8ce8-4bbb-a52e-fbffb9af9548', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'f33a3fca-2a2c-4913-8ec9-9a98946ba7b1', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '8d10811b-22f9-4e65-b6bd-de72aab10789', '713305b8-721a-479f-a563-2fc7911b4b1b', '', 'Pemutaran MP3', '', 'MP3 Playback'),
('7be59abc-8be5-4f7a-b1e5-d5ff11977559', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'a8887af0-547d-42e1-8cca-779cf1841ed5', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '6a1f42b2-b07f-429c-9dd9-bcd44c3450bc', 'W x D x H', '276.4 x 247 x 744', 'W x D x H', '276.4 x 247 x 744'),
('7d6d1bac-9824-4a3f-a349-9380b8b22222', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '8cf82b55-a985-4a5f-83ff-0484ffcdf5c5', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '53cf8166-47b9-4b4c-8e7d-8ae98c62fde6', '0a0bebf9-1e00-48cf-9e2e-2d986ad3f28e', '', '7.5 cm (3\"), 4 Ohm, 25 W', '', '7.5 cm (3\"), 4 Ohm, 25 W'),
('7da0c5a5-c903-4fb6-bbac-7cb380873a55', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'f33a3fca-2a2c-4913-8ec9-9a98946ba7b1', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '53cf8166-47b9-4b4c-8e7d-8ae98c62fde6', '0a0bebf9-1e00-48cf-9e2e-2d986ad3f28e', '', '7.6 cm (3\"), 4 Ohm 30 W', '', '7.6 cm (3\"), 4 Ohm 30 W'),
('7e0e6afd-6257-477c-ade4-fbc83c99ccfb', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '0fc1bf44-b61d-4991-9403-0b0ecef8c791', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '68757736-bbeb-4a48-a383-fad6682a0c42', '', 'Multi Input', '', 'Multi Input'),
('80464506-dd3e-41dc-be89-d7eb56a2c46e', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '57777133-51e7-4ae8-b0de-fee20edce0cc', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '68757736-bbeb-4a48-a383-fad6682a0c42', '', 'Multi Input', '', 'Multi Input'),
('8118371d-747a-41e2-9bbf-1c65bc314095', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'ee550140-1522-4320-8790-b868ce5b74f3', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', 'dce9e0cd-8e5b-4d0a-ae57-21dc3dcefdcb', '', 'Ada', '', 'Yes'),
('813c910d-ca8f-4994-9a14-33caa3496603', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '8cf82b55-a985-4a5f-83ff-0484ffcdf5c5', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', 'dfd9fadf-a260-4f80-abe4-5f5508dd414e', '', 'Mewah', '', 'Luxury'),
('8271f22b-7ce1-412e-8868-40b4fc9dbdd5', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '9ab06c62-3e47-4751-abf9-9c2a96d70421', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '53cf8166-47b9-4b4c-8e7d-8ae98c62fde6', 'cda903e6-f854-4713-9054-ff3aa4cd75c4', '', '15.2 cm (6\"), 4 Ohm, 30 W', '', '15.2 cm (6\"), 4 Ohm, 30 W'),
('82a20748-8e2e-49c0-9a13-78f5e07091cb', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '3847c27a-f9f3-4c62-9213-8f4072e62117', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '11fb867e-f262-41c0-9901-912de9aaa12b', '', '240', '', '240'),
('83678647-0f1f-4e2c-8e07-b412459faf8c', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '4dc849b5-3796-4ba4-8878-c194953a9fa3', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', 'fffa2052-239f-4432-bcba-fcee8dd46f20', '', 'Speaker 2 arah', '', '2-way speaker'),
('83db0099-3316-4c26-b86b-2b59638b3172', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '9ab06c62-3e47-4751-abf9-9c2a96d70421', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '3652480e-57ee-4d0c-9601-0f8321ed7bfa', '', '14', '', '14'),
('84b8d4a2-a8af-4dc4-992f-05932cc6177c', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '4dc849b5-3796-4ba4-8878-c194953a9fa3', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '65b285b2-b1b7-4797-9fe9-06c9642785a8', '', 'Handle saja', '', 'Handle only'),
('84c1f626-828f-4381-adbe-46cf050c8a30', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '8cf82b55-a985-4a5f-83ff-0484ffcdf5c5', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '8e19f446-827b-44ce-acd0-839e6822d8fb', '', '20 - 20000', '', '20 - 20000'),
('852003a4-a0c5-4578-b4a6-afe9d88db16a', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '4dc849b5-3796-4ba4-8878-c194953a9fa3', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '8d10811b-22f9-4e65-b6bd-de72aab10789', '77af6a05-b7ba-4c87-aad3-53eb05bc41bc', '', 'Freq. Range: 87.50 MHz - 108.00 MHz', '', 'Freq. Range: 87.50 MHz - 108.00 MHz'),
('86b89a90-adc7-4adf-838d-c249577c9ad2', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '3847c27a-f9f3-4c62-9213-8f4072e62117', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '6a1f42b2-b07f-429c-9dd9-bcd44c3450bc', 'W x D x H', '353 x 310 x 1115', 'W x D x H', '353 x 310 x 1115'),
('875968dd-2b24-43e8-ae65-d9a7d5692dcc', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '83d4e98c-e184-4c24-978e-0f6d0aafffbc', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '3652480e-57ee-4d0c-9601-0f8321ed7bfa', '', '14', '', '14'),
('87acd51a-709e-443b-b7df-cd5521612f4a', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '9ab06c62-3e47-4751-abf9-9c2a96d70421', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '6a1f42b2-b07f-429c-9dd9-bcd44c3450bc', 'W x D x H', '264 x 240 x 319.5', 'W x D x H', '264 x 240 x 319.5'),
('88d76aed-b712-458b-8cb5-876ba1fd914f', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '5826462f-b495-4df7-a21f-bbf19b981a48', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', 'dce9e0cd-8e5b-4d0a-ae57-21dc3dcefdcb', '', 'Ada', '', 'Yes'),
('8a0cd431-5124-4c93-a1b3-2999095a3877', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '4e49b2aa-2eb2-4ae4-93af-7729e23fa404', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '65b285b2-b1b7-4797-9fe9-06c9642785a8', '', 'Handle & Roda', '', 'Handle & Wheel'),
('8ad2b5db-6b66-4b5b-83c7-ff6cb794ef6b', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'a8887af0-547d-42e1-8cca-779cf1841ed5', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', 'de29974c-62c6-4bd2-9679-153f01dedcf5', '', '2 x Input MIC (6.35 mm)', '', '2 x MIC Input (6.35 mm)'),
('8c5baa9e-7552-411a-ade9-3dbb1efca3e7', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '15a9bc11-1dfb-49c5-8a06-8836d35f9921', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '8e19f446-827b-44ce-acd0-839e6822d8fb', '', '20 - 20000', '', '20 - 20000'),
('8d965b63-ab4d-4316-9586-2ed0160bb01f', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '8403ceac-7570-475d-81df-82586ff41921', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '8d10811b-22f9-4e65-b6bd-de72aab10789', '45ce71bd-0d75-4803-b54a-509330b280f8', '', 'Koneksi Bluetooth antara 2 unit', '', 'BT connection between 2 units'),
('8e78028a-c1db-41d2-99fd-3c4b2d43abe6', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'f33a3fca-2a2c-4913-8ec9-9a98946ba7b1', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '1a8d1e3e-4810-4b0c-81c8-caa5b7e501e2', '', '50000', '', '50000'),
('8fb51beb-7e1c-484a-8c1e-336cfb943aff', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '8403ceac-7570-475d-81df-82586ff41921', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '8e19f446-827b-44ce-acd0-839e6822d8fb', '', '20 - 20000', '', '20 - 20000'),
('901b997b-249d-4b16-b522-453e27d4dc99', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'd96ca88f-1b20-437d-973e-4a5fc0655de1', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', 'fffa2052-239f-4432-bcba-fcee8dd46f20', '', 'Speaker 3 arah', '', '3-way speaker'),
('90528cf2-8454-4dd7-8021-d9a21843970c', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'a8887af0-547d-42e1-8cca-779cf1841ed5', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', 'fffa2052-239f-4432-bcba-fcee8dd46f20', '', 'Speaker 3 arah', '', '3-way speaker'),
('90851994-530a-4e97-b41d-27fee4f29b97', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '5826462f-b495-4df7-a21f-bbf19b981a48', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', 'ae677dfe-0b1d-4489-98ac-322829e069a4', 'RMS', '2 x 60', 'RMS', '2 x 60'),
('90daa316-c2e8-4323-9875-30c72fbad68a', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'd1e7baa1-7ce6-4720-9530-30b84eb97c31', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '11fb867e-f262-41c0-9901-912de9aaa12b', '', '75', '', '75'),
('90ea2daa-e9c4-4530-b3f1-b177f5ce6f22', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '8403ceac-7570-475d-81df-82586ff41921', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '8d10811b-22f9-4e65-b6bd-de72aab10789', 'a5c86871-0d5f-4424-ae8d-05004cff7f9a', '', 'RCA 2-pin L/R type', '', 'RCA 2-pin L/R type'),
('91cf0ba5-3cdb-4a40-a33a-1e7a08c6a231', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'd1e7baa1-7ce6-4720-9530-30b84eb97c31', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', 'de29974c-62c6-4bd2-9679-153f01dedcf5', '', '2 x input MIC (6.35 mm)', '', '2 x MIC inputs (6.35 mm)'),
('92a300f3-255e-4a47-833b-eb38faa52377', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '6e7c0a0f-be33-4490-826c-814a59048eb5', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', 'fffa2052-239f-4432-bcba-fcee8dd46f20', '', 'Speaker 2 arah', '', '2-way speaker'),
('92b519bd-b885-4bca-9184-3ac4cfe080bf', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'd96ca88f-1b20-437d-973e-4a5fc0655de1', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '3652480e-57ee-4d0c-9601-0f8321ed7bfa', '', '14', '', '14'),
('9351bda9-ebd0-4547-b49e-82782437d12a', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '0fc1bf44-b61d-4991-9403-0b0ecef8c791', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '6a1f42b2-b07f-429c-9dd9-bcd44c3450bc', 'W x D x H', '340 x 320 x 730', 'W x D x H', '340 x 320 x 730'),
('9364224f-a84e-4582-a335-e3e81b937d75', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'ee550140-1522-4320-8790-b868ce5b74f3', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '6a1f42b2-b07f-429c-9dd9-bcd44c3450bc', 'W x D x H', '420 x 460 x 1050', 'W x D x H', '420 x 460 x 1050'),
('9529e9b1-a47e-47ee-9fe1-930bbf5b0b0a', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '4e49b2aa-2eb2-4ae4-93af-7729e23fa404', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '8d10811b-22f9-4e65-b6bd-de72aab10789', '5de2a926-69f9-4376-a697-65afff94981d', '', 'Freq. Band: 2.4 GHz (2.4000 GHz - 2.4835 GHz)', '', 'Freq. Band: 2.4 GHz (2.4000 GHz - 2.4835 GHz)'),
('95aeaa40-dd53-4445-9e66-66706ac18af1', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '6e7c0a0f-be33-4490-826c-814a59048eb5', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '1a8d1e3e-4810-4b0c-81c8-caa5b7e501e2', '', '50000', '', '50000'),
('964704a5-d441-4f29-9a50-58d9bddf37a1', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '83d4e98c-e184-4c24-978e-0f6d0aafffbc', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '8d10811b-22f9-4e65-b6bd-de72aab10789', 'd4a92c59-b965-4fd4-b913-b9d1982a8898', '', 'Pemutaran MP3', '', 'MP3 Playback'),
('98638ed8-91a1-4e46-8c1b-4b048ee2a578', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '6e7c0a0f-be33-4490-826c-814a59048eb5', '9b97e2c1-4a01-48ac-910a-2d14cb137069', 'ba3f4372-afe4-4d88-a6d0-9d3ad2b73824', '2b402275-bb39-4d09-bc5c-aa4f3906f3f6', '', 'Volume, Treble, Bass, X-Bass, Mic Priority', '', 'Volume, Treble, Bass, X-Bass, Mic Priority'),
('988a126f-d7c2-427f-842c-ff56fbe64b55', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '0fc1bf44-b61d-4991-9403-0b0ecef8c791', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '53cf8166-47b9-4b4c-8e7d-8ae98c62fde6', 'cda903e6-f854-4713-9054-ff3aa4cd75c4', '', '2 x 20.3 cm (8\"), 4 Ohm, 80 W', '', '2 x 20.3 cm (8\"), 4 Ohm, 80 W'),
('990af87b-80f0-4b5f-a351-bdff3975e5f0', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '0fc1bf44-b61d-4991-9403-0b0ecef8c791', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', 'de29974c-62c6-4bd2-9679-153f01dedcf5', '', '2 x input MIC (6.35 mm)', '', '2 x MIC inputs (6.35 mm)'),
('991ad2ba-4fbd-4a9c-bf87-600aecf5d850', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '6e7c0a0f-be33-4490-826c-814a59048eb5', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '8d10811b-22f9-4e65-b6bd-de72aab10789', '713305b8-721a-479f-a563-2fc7911b4b1b', '', 'Pemutaran MP3', '', 'MP3 Playback'),
('9920f8c6-feb0-4b1d-b133-e7235e245f16', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '95a8386d-0151-4ef5-9b7a-23f2988ffbd8', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', 'de29974c-62c6-4bd2-9679-153f01dedcf5', '', '2 x MIC, Input Keyboard & Gitar (6.35 mm)', '', '2 x MIC, Keyboard & Guitar Input (6.35 mm)'),
('994a5184-2503-4d29-be1e-7321367121af', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '83d4e98c-e184-4c24-978e-0f6d0aafffbc', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '8d10811b-22f9-4e65-b6bd-de72aab10789', '713305b8-721a-479f-a563-2fc7911b4b1b', '', 'Pemutaran MP3', '', 'MP3 Playback'),
('998983c1-eaa5-4e02-bd02-ae2c8f77fca3', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'd1e7baa1-7ce6-4720-9530-30b84eb97c31', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', 'dce9e0cd-8e5b-4d0a-ae57-21dc3dcefdcb', '', 'Ada', '', 'Yes'),
('9a12d950-d5af-474b-a1bd-0d70109d0ac4', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '9ab06c62-3e47-4751-abf9-9c2a96d70421', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', 'de29974c-62c6-4bd2-9679-153f01dedcf5', '', 'Gitar & 2 x input MIC (6.35 mm)', '', 'Guitar & 2 x MIC inputs (6.35 mm)'),
('9a1cf3a8-c859-433d-82d4-916815d5749a', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'a8887af0-547d-42e1-8cca-779cf1841ed5', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '8e19f446-827b-44ce-acd0-839e6822d8fb', '', '20 - 20000', '', '20 - 20000'),
('9aee2b91-1abd-4ac0-a62b-1d5e84689c2e', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'a8887af0-547d-42e1-8cca-779cf1841ed5', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '1a8d1e3e-4810-4b0c-81c8-caa5b7e501e2', '', '50000', '', '50000'),
('9b195df8-95e3-49bf-9635-4b62df0d975b', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '4e49b2aa-2eb2-4ae4-93af-7729e23fa404', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', 'ff866824-bbfc-435a-8782-cb74a04f90c8', '', 'AC 220 V - 50 Hz', '', 'AC 220 V - 50 Hz'),
('9b4f03ec-3dca-48be-85a0-0d6647da2a09', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '4e49b2aa-2eb2-4ae4-93af-7729e23fa404', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', 'dce9e0cd-8e5b-4d0a-ae57-21dc3dcefdcb', '', 'Ada', '', 'Yes'),
('9bfe236c-ff1e-4e16-b90f-b9f40732fbde', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '4dc849b5-3796-4ba4-8878-c194953a9fa3', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '11fb867e-f262-41c0-9901-912de9aaa12b', '', '70', '', '70'),
('9daef1b4-09e2-4ff3-b9b1-268bb75dfabb', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'f33a3fca-2a2c-4913-8ec9-9a98946ba7b1', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', 'ae677dfe-0b1d-4489-98ac-322829e069a4', 'RMS', '40', 'RMS', '40'),
('9e1d2f2b-a0ac-45d9-b967-e70f4789d432', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'ee550140-1522-4320-8790-b868ce5b74f3', '9b97e2c1-4a01-48ac-910a-2d14cb137069', 'ba3f4372-afe4-4d88-a6d0-9d3ad2b73824', 'f1350c60-aa18-42a5-8197-abe501f67468', '', 'Volume, Treble, Bass, X-Bass', '', 'Volume, Treble, Bass, X-Bass'),
('9e24cbff-0f8b-4626-8639-7fe8e345ea84', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '95a8386d-0151-4ef5-9b7a-23f2988ffbd8', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', 'dfd9fadf-a260-4f80-abe4-5f5508dd414e', '', 'Pro', '', 'Pro'),
('9ed0a1ea-bd16-43fd-937d-dd959d2f11d0', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '6e7c0a0f-be33-4490-826c-814a59048eb5', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '11fb867e-f262-41c0-9901-912de9aaa12b', '', '70', '', '70'),
('9f8679c8-26a0-4b98-a958-cffee213e081', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '5826462f-b495-4df7-a21f-bbf19b981a48', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '65b285b2-b1b7-4797-9fe9-06c9642785a8', '', 'Roda & Handle', '', 'Wheel & Handle'),
('9f943712-e71c-447b-b337-c31b59110fd7', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '8cf82b55-a985-4a5f-83ff-0484ffcdf5c5', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', 'de29974c-62c6-4bd2-9679-153f01dedcf5', '', '2 x Input MIC (6.35 mm)', '', '2 x MIC Input (6.35 mm)'),
('9fff63e4-8b27-42e6-bd94-43ea986618bd', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'd96ca88f-1b20-437d-973e-4a5fc0655de1', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '8d10811b-22f9-4e65-b6bd-de72aab10789', '45ce71bd-0d75-4803-b54a-509330b280f8', '', 'Koneksi Bluetooth antara 2 unit', '', 'BT connection between 2 units'),
('a0f258f7-83e7-461f-b7f1-705af36f892c', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '9ab06c62-3e47-4751-abf9-9c2a96d70421', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '53cf8166-47b9-4b4c-8e7d-8ae98c62fde6', '0a0bebf9-1e00-48cf-9e2e-2d986ad3f28e', '', '7.5 cm (3\"), 4 Ohm 30 W', '', '7.5 cm (3\"), 4 Ohm 30 W'),
('a132b2d2-b8bf-418b-bc04-372fd149e734', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '9ab06c62-3e47-4751-abf9-9c2a96d70421', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '11fb867e-f262-41c0-9901-912de9aaa12b', '', '70', '', '70'),
('a18d2791-bd8a-466f-865d-2e142cf729eb', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '3847c27a-f9f3-4c62-9213-8f4072e62117', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '3652480e-57ee-4d0c-9601-0f8321ed7bfa', '', '14', '', '14'),
('a219231c-16ee-427f-8d3c-22c28f918edb', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'f33a3fca-2a2c-4913-8ec9-9a98946ba7b1', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', 'de29974c-62c6-4bd2-9679-153f01dedcf5', '', '2 x input MIC (6.35 mm)', '', '2 x MIC inputs (6.35 mm)'),
('a28c384d-f238-4a8a-86b2-43a264939651', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '4dc849b5-3796-4ba4-8878-c194953a9fa3', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', 'ae677dfe-0b1d-4489-98ac-322829e069a4', 'RMS', '70', 'RMS', '70'),
('a2ce0633-664d-4fb7-a403-6a6b065468b7', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '15a9bc11-1dfb-49c5-8a06-8836d35f9921', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '8d10811b-22f9-4e65-b6bd-de72aab10789', '77af6a05-b7ba-4c87-aad3-53eb05bc41bc', '', 'Freq. Range: 87.50 MHz - 108.00 MHz', '', 'Freq. Range: 87.50 MHz - 108.00 MHz'),
('a2f7998b-08c2-4248-9037-21d51a319063', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '4e49b2aa-2eb2-4ae4-93af-7729e23fa404', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '11fb867e-f262-41c0-9901-912de9aaa12b', '', '75', '', '75'),
('a3101860-1cca-4732-8a8a-03cf7c010794', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '83d4e98c-e184-4c24-978e-0f6d0aafffbc', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', 'fffa2052-239f-4432-bcba-fcee8dd46f20', '', 'Speaker 2 arah', '', '2-way speaker'),
('a3d6de93-65e9-441b-945b-c9bce9cf02ac', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '83d4e98c-e184-4c24-978e-0f6d0aafffbc', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '6a1f42b2-b07f-429c-9dd9-bcd44c3450bc', 'W x D x H', '380 x 298 x 551', 'W x D x H', '380 x 298 x 551'),
('a3ecfee1-4306-4296-a28e-cb54cd00dbf5', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '95a8386d-0151-4ef5-9b7a-23f2988ffbd8', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '8d10811b-22f9-4e65-b6bd-de72aab10789', '77af6a05-b7ba-4c87-aad3-53eb05bc41bc', '', 'Freq. Range: 87.50 MHz - 108.00 MHz', '', 'Freq. Range: 87.50 MHz - 108.00 MHz'),
('a5ad871d-c67d-40ec-a01b-2e4fb3c8cac0', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '5826462f-b495-4df7-a21f-bbf19b981a48', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '68757736-bbeb-4a48-a383-fad6682a0c42', '', 'Multi Input', '', 'Multi Input'),
('a732cf38-c1af-4c62-b4aa-456892d62f5d', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '5826462f-b495-4df7-a21f-bbf19b981a48', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '8d10811b-22f9-4e65-b6bd-de72aab10789', '5de2a926-69f9-4376-a697-65afff94981d', '', 'Freq. Band: 2.4 GHz (2.4000 GHz - 2.4835 GHz)', '', 'Freq. Band: 2.4 GHz (2.4000 GHz - 2.4835 GHz)'),
('a97f801c-8905-4ff1-b5e3-0d4597da7d07', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'd1e7baa1-7ce6-4720-9530-30b84eb97c31', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '8d10811b-22f9-4e65-b6bd-de72aab10789', '713305b8-721a-479f-a563-2fc7911b4b1b', '', 'Pemutaran MP3', '', 'MP3 Playback'),
('a9a0ae50-4db2-4af6-bdf0-b89cd7511465', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '4e49b2aa-2eb2-4ae4-93af-7729e23fa404', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '8d10811b-22f9-4e65-b6bd-de72aab10789', '77af6a05-b7ba-4c87-aad3-53eb05bc41bc', '', 'Freq. Range: 87.50 MHz - 108.00 MHz', '', 'Freq. Range: 87.50 MHz - 108.00 MHz'),
('a9cfdc76-9145-4d8b-a55f-83e99cb40fc5', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '83d4e98c-e184-4c24-978e-0f6d0aafffbc', '9b97e2c1-4a01-48ac-910a-2d14cb137069', 'dba0d6fd-16b2-4e6c-9923-0950e2db188b', '2b402275-bb39-4d09-bc5c-aa4f3906f3f6', '', 'MIC VOLUME, Echo, Mic Priority', '', 'MIC VOLUME, Echo, Mic Priority'),
('aaf1c2d3-cefa-459f-8f75-ce48def4dcb4', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'f33a3fca-2a2c-4913-8ec9-9a98946ba7b1', '9b97e2c1-4a01-48ac-910a-2d14cb137069', 'dba0d6fd-16b2-4e6c-9923-0950e2db188b', '2b402275-bb39-4d09-bc5c-aa4f3906f3f6', '', 'MIC VOLUME, Echo', '', 'MIC VOLUME, Echo'),
('ab87659c-3c9a-4383-b01b-577f61e24a10', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '6e7c0a0f-be33-4490-826c-814a59048eb5', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', 'de29974c-62c6-4bd2-9679-153f01dedcf5', '', 'Gitar & 2 x input MIC (6.35 mm)', '', 'Guitar & 2 x MIC inputs (6.35 mm)'),
('ac11e004-1a50-4afb-80f0-8b2acd42f9b0', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '8403ceac-7570-475d-81df-82586ff41921', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', 'de29974c-62c6-4bd2-9679-153f01dedcf5', '', '2 x Input MIC (6.35 mm)', '', '2 x MIC Input (6.35 mm)'),
('ac9714d5-7f39-4e07-9a02-aa38dc16b6b9', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '9ab06c62-3e47-4751-abf9-9c2a96d70421', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '8d10811b-22f9-4e65-b6bd-de72aab10789', 'a5c86871-0d5f-4424-ae8d-05004cff7f9a', '', 'RCA 2-pin L/R type', '', 'RCA 2-pin L/R type'),
('acf69e98-b530-420e-b18c-790dad9812c6', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '3847c27a-f9f3-4c62-9213-8f4072e62117', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '65b285b2-b1b7-4797-9fe9-06c9642785a8', '', 'Tidak ada', '', 'No'),
('ad1e990e-fea0-4240-9e52-e4f3c1b1e6b7', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '0fc1bf44-b61d-4991-9403-0b0ecef8c791', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '8d10811b-22f9-4e65-b6bd-de72aab10789', '5de2a926-69f9-4376-a697-65afff94981d', '', 'Freq. Band: 2.4 GHz (2.4000 GHz - 2.4835 GHz)', '', 'Freq. Band: 2.4 GHz (2.4000 GHz - 2.4835 GHz)'),
('ad354b5d-0d27-484a-b3c6-5b794aea3ff2', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '83d4e98c-e184-4c24-978e-0f6d0aafffbc', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '53cf8166-47b9-4b4c-8e7d-8ae98c62fde6', '0a0bebf9-1e00-48cf-9e2e-2d986ad3f28e', '', '7.5 cm (3\"), 4 Ohm 30 W', '', '7.5 cm (3\"), 4 Ohm 30 W'),
('ae49444c-1ab4-43b1-8188-ab09f6ea2408', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'a8887af0-547d-42e1-8cca-779cf1841ed5', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '53cf8166-47b9-4b4c-8e7d-8ae98c62fde6', '53475931-30c0-4f42-bb5d-b5bc9a408c3d', '', '2.5 cm (1\"), 4 Ohm, 25 W', '', '2.5 cm (1\"), 4 Ohm, 25 W'),
('b06f8e0e-d1b3-4ae9-af74-7e4c0d3de642', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '95a8386d-0151-4ef5-9b7a-23f2988ffbd8', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '65b285b2-b1b7-4797-9fe9-06c9642785a8', '', 'Tidak ada', '', 'No'),
('b0865de1-6b7e-487c-84dd-d6d8b9148813', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '95a8386d-0151-4ef5-9b7a-23f2988ffbd8', '9b97e2c1-4a01-48ac-910a-2d14cb137069', 'dba0d6fd-16b2-4e6c-9923-0950e2db188b', 'e137db07-98f3-4d79-b67c-74912b613f8e', '', 'MIC VOLUME, Echo, Wireless Volume, Repeat, Delay', '', 'MIC VOLUME, Echo, Wireless Volume, Repeat, Delay'),
('b1a8dc99-43ef-4af1-a34c-ffd79643cbfc', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'ee550140-1522-4320-8790-b868ce5b74f3', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', 'f46bf78f-7ffc-4fea-a378-fe3ee549e86e', '', 'Tidak ada', '', 'No'),
('b1cee3ae-9435-42c9-a41a-ed7f6f72362d', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '4dc849b5-3796-4ba4-8878-c194953a9fa3', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '3652480e-57ee-4d0c-9601-0f8321ed7bfa', '', '14', '', '14'),
('b22c6bd2-08e4-4cf8-8848-c31cf205b7d9', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '0fc1bf44-b61d-4991-9403-0b0ecef8c791', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', 'dce9e0cd-8e5b-4d0a-ae57-21dc3dcefdcb', '', 'Ada', '', 'Yes'),
('b2cbe0ec-4305-4f7d-a4e9-c564645f0011', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '0fc1bf44-b61d-4991-9403-0b0ecef8c791', '9b97e2c1-4a01-48ac-910a-2d14cb137069', 'ba3f4372-afe4-4d88-a6d0-9d3ad2b73824', '2b402275-bb39-4d09-bc5c-aa4f3906f3f6', '', 'Volume, Treble, Bass, X-Bass', '', 'Volume, Treble, Bass, X-Bass'),
('b2d8a14e-fe5e-4728-863a-55dfa1390a32', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '5826462f-b495-4df7-a21f-bbf19b981a48', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '8e19f446-827b-44ce-acd0-839e6822d8fb', '', '25 - 20000', '', '25 - 20000'),
('b3f945f4-953f-4b57-bed3-6338aa351c70', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '3847c27a-f9f3-4c62-9213-8f4072e62117', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '68757736-bbeb-4a48-a383-fad6682a0c42', '', 'Multi Input', '', 'Multi Input'),
('b487de7e-0cab-45b8-9043-48105b1ce29b', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'f33a3fca-2a2c-4913-8ec9-9a98946ba7b1', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '8d10811b-22f9-4e65-b6bd-de72aab10789', 'a5c86871-0d5f-4424-ae8d-05004cff7f9a', '', 'RCA 2-pin L/R type', '', 'RCA 2-pin L/R type'),
('b80d22df-e701-4773-b40e-a0b087bd417b', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '8cf82b55-a985-4a5f-83ff-0484ffcdf5c5', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '8d10811b-22f9-4e65-b6bd-de72aab10789', 'd4a92c59-b965-4fd4-b913-b9d1982a8898', '', 'Pemutaran MP3', '', 'MP3 Playback'),
('b87cc875-1af7-4aae-a20f-a054eebc9bdf', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '15a9bc11-1dfb-49c5-8a06-8836d35f9921', '9b97e2c1-4a01-48ac-910a-2d14cb137069', 'ba3f4372-afe4-4d88-a6d0-9d3ad2b73824', '2b402275-bb39-4d09-bc5c-aa4f3906f3f6', '', 'Volume, Treble, Bass, X-Bass', '', 'Volume, Treble, Bass, X-Bass'),
('b942b0d2-d246-4057-a1be-06628a817382', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '0fc1bf44-b61d-4991-9403-0b0ecef8c791', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '8d10811b-22f9-4e65-b6bd-de72aab10789', 'a5c86871-0d5f-4424-ae8d-05004cff7f9a', '', 'RCA 2-pin L/R type', '', 'RCA 2-pin L/R type'),
('b991c344-c160-4414-baa8-7a49b598effd', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'ee550140-1522-4320-8790-b868ce5b74f3', '9b97e2c1-4a01-48ac-910a-2d14cb137069', 'dba0d6fd-16b2-4e6c-9923-0950e2db188b', '633de2e4-9792-4adf-8d18-1471cd7c8462', '', 'Mic Priority, Volume, Echo, Reverb', '', 'Mic Priority, Volume, Echo, Reverb'),
('bbb51701-8bc3-4ab1-80b9-2bc89cd2bacb', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '0fc1bf44-b61d-4991-9403-0b0ecef8c791', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', 'fffa2052-239f-4432-bcba-fcee8dd46f20', '', 'Speaker 3 arah', '', '3-way speaker'),
('bc4aa261-3af0-431b-b42c-d02029395cb4', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '8403ceac-7570-475d-81df-82586ff41921', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '11fb867e-f262-41c0-9901-912de9aaa12b', '', '100', '', '100'),
('bc5904df-995c-4ec6-b780-181bb2ec758a', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '8403ceac-7570-475d-81df-82586ff41921', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '53cf8166-47b9-4b4c-8e7d-8ae98c62fde6', '0a0bebf9-1e00-48cf-9e2e-2d986ad3f28e', '', '7.5 cm (3\"), 4 Ohm, 25 W', '', '7.5 cm (3\"), 4 Ohm, 25 W'),
('bc692f1b-b5c4-4db5-997d-43baecf21c8b', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '5826462f-b495-4df7-a21f-bbf19b981a48', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '8d10811b-22f9-4e65-b6bd-de72aab10789', '77af6a05-b7ba-4c87-aad3-53eb05bc41bc', '', 'Freq. Range: 87.50 MHz - 108.00 MHz', '', 'Freq. Range: 87.50 MHz - 108.00 MHz'),
('bc9ba7b1-de90-4674-9b88-8e7eb4b06b75', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '8403ceac-7570-475d-81df-82586ff41921', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', 'dfd9fadf-a260-4f80-abe4-5f5508dd414e', '', 'Mewah', '', 'Luxury'),
('bd62a850-abcc-480c-b367-c85033b5400f', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '83d4e98c-e184-4c24-978e-0f6d0aafffbc', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', 'ff866824-bbfc-435a-8782-cb74a04f90c8', '', 'AC 100- 240V ~ 50Hz & DC 13.5V, 3A', '', 'AC 100- 240V ~ 50Hz & DC 13.5V, 3A'),
('be491243-e6d3-40ed-98d3-dfe1fc58b704', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '8403ceac-7570-475d-81df-82586ff41921', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '8d10811b-22f9-4e65-b6bd-de72aab10789', '77af6a05-b7ba-4c87-aad3-53eb05bc41bc', '', 'Freq. Range: 87.50 MHz - 108.00 MHz', '', 'Freq. Range: 87.50 MHz - 108.00 MHz'),
('bf5b118d-c789-485b-8283-883e32d2be08', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '4dc849b5-3796-4ba4-8878-c194953a9fa3', '9b97e2c1-4a01-48ac-910a-2d14cb137069', 'ba3f4372-afe4-4d88-a6d0-9d3ad2b73824', '2b402275-bb39-4d09-bc5c-aa4f3906f3f6', '', 'Volume, Treble, Bass, X-Bass, Mic Priority', '', 'Volume, Treble, Bass, X-Bass, Mic Priority'),
('bffd12d1-a0c1-4c37-b360-8040a4d0ca6b', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'd1e7baa1-7ce6-4720-9530-30b84eb97c31', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '8d10811b-22f9-4e65-b6bd-de72aab10789', '5de2a926-69f9-4376-a697-65afff94981d', '', 'Freq. Band : 2.4 GHz (2.4000 GHz - 2.4835 GHz)', '', 'Freq. Band : 2.4 GHz (2.4000 GHz - 2.4835 GHz)'),
('c06ae24d-a822-4722-a5b1-b853d8172945', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'ee550140-1522-4320-8790-b868ce5b74f3', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '11fb867e-f262-41c0-9901-912de9aaa12b', '', '180', '', '180'),
('c0c2eadb-0058-44e6-8bdf-fad5a0bd3768', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '15a9bc11-1dfb-49c5-8a06-8836d35f9921', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', 'de29974c-62c6-4bd2-9679-153f01dedcf5', '', '1 input MIC (6.35 mm)', '', '1 MIC inputs (6.35 mm)'),
('c1f97d65-388c-4754-bdba-0d216c7e8058', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '8cf82b55-a985-4a5f-83ff-0484ffcdf5c5', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', 'fffa2052-239f-4432-bcba-fcee8dd46f20', '', 'Speaker 3 arah', '', '3-way speaker'),
('c369e8f8-9a2d-4bf4-8466-e4926430922e', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'a8887af0-547d-42e1-8cca-779cf1841ed5', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', 'ae677dfe-0b1d-4489-98ac-322829e069a4', 'RMS', '2 x 45', 'RMS', '2 x 45'),
('c409c33a-9d5a-4981-a908-ef10e6c14ad4', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '0fc1bf44-b61d-4991-9403-0b0ecef8c791', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '11fb867e-f262-41c0-9901-912de9aaa12b', '', '75', '', '75'),
('c41ef613-d9f0-4ab2-bb9d-2a0f9a0ee02d', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '57777133-51e7-4ae8-b0de-fee20edce0cc', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '6a1f42b2-b07f-429c-9dd9-bcd44c3450bc', 'W x D x H', '466 x 425 x 1078', 'W x D x H', '466 x 425 x 1078'),
('c4749764-acc5-4e87-82bf-63e2697386e6', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '4e49b2aa-2eb2-4ae4-93af-7729e23fa404', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '8d10811b-22f9-4e65-b6bd-de72aab10789', 'd4a92c59-b965-4fd4-b913-b9d1982a8898', '', 'Pemutaran MP3', '', 'MP3 Playback'),
('c7744002-a49d-4c21-b866-3ef1df13ca62', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'd96ca88f-1b20-437d-973e-4a5fc0655de1', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '53cf8166-47b9-4b4c-8e7d-8ae98c62fde6', 'cda903e6-f854-4713-9054-ff3aa4cd75c4', '', '2 x 25.4 cm (10\"), 6 Ohm, 60 W', '', '2 x 25.4 cm (10\"), 6 Ohm, 60 W'),
('c7b7b5e9-1f9d-46a2-a6d8-3d2c729a67d3', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '8403ceac-7570-475d-81df-82586ff41921', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '3652480e-57ee-4d0c-9601-0f8321ed7bfa', '', '22', '', '22'),
('c80b47f7-3df1-4c14-809d-dc49717894ea', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '0fc1bf44-b61d-4991-9403-0b0ecef8c791', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', 'f46bf78f-7ffc-4fea-a378-fe3ee549e86e', '', 'Ada', '', 'Yes'),
('c842be8e-a171-4b0a-becd-ab07e7e082e7', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'a8887af0-547d-42e1-8cca-779cf1841ed5', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', 'dfd9fadf-a260-4f80-abe4-5f5508dd414e', '', 'Mewah', '', 'Luxury'),
('c84d1eca-484e-4a67-80f7-5f1598c46eff', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'ee550140-1522-4320-8790-b868ce5b74f3', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '53cf8166-47b9-4b4c-8e7d-8ae98c62fde6', '53475931-30c0-4f42-bb5d-b5bc9a408c3d', '', '2.5 cm (1\"), 25 W', '', '2.5 cm (1\"), 25 W'),
('c886d32a-bfa7-4066-a199-7bb79eade1f7', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '15a9bc11-1dfb-49c5-8a06-8836d35f9921', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', 'ae677dfe-0b1d-4489-98ac-322829e069a4', 'RMS', '15', 'RMS', '15'),
('c8f2fb43-3df7-4e1b-b852-e15190447a42', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '8403ceac-7570-475d-81df-82586ff41921', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '8d10811b-22f9-4e65-b6bd-de72aab10789', 'd4a92c59-b965-4fd4-b913-b9d1982a8898', '', 'Pemutaran MP3', '', 'MP3 Playback'),
('c923cd65-368e-4db7-a638-54e519554ecb', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '3847c27a-f9f3-4c62-9213-8f4072e62117', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '8d10811b-22f9-4e65-b6bd-de72aab10789', '77af6a05-b7ba-4c87-aad3-53eb05bc41bc', '', 'Freq. Range: 87.50 MHz - 108.00 МHz', '', 'Freq. Range: 87.50 MHz - 108.00 МHz'),
('c9c53bb1-7c56-4f8c-b79c-cab2f03f8fef', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '0fc1bf44-b61d-4991-9403-0b0ecef8c791', '9b97e2c1-4a01-48ac-910a-2d14cb137069', 'dba0d6fd-16b2-4e6c-9923-0950e2db188b', '2b402275-bb39-4d09-bc5c-aa4f3906f3f6', '', 'MIC VOLUME, Echo', '', 'MIC VOLUME, Echo'),
('c9d37b21-7a3c-4f1b-a12b-8ed3cbd745fe', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '9ab06c62-3e47-4751-abf9-9c2a96d70421', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', 'dce9e0cd-8e5b-4d0a-ae57-21dc3dcefdcb', '', 'Tidak ada', '', 'No'),
('cb2a247a-478f-4a90-b91e-d89bde422c23', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '83d4e98c-e184-4c24-978e-0f6d0aafffbc', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '8d10811b-22f9-4e65-b6bd-de72aab10789', '5de2a926-69f9-4376-a697-65afff94981d', '', 'Freq. Band : 2.4 GHz (2.4000 GHz - 2.4835 GHz)', '', 'Freq. Band : 2.4 GHz (2.4000 GHz - 2.4835 GHz)'),
('cbebe87a-3c95-4b4a-a233-4ea143f1e4e1', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '95a8386d-0151-4ef5-9b7a-23f2988ffbd8', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '3652480e-57ee-4d0c-9601-0f8321ed7bfa', '', '22', '', '22'),
('cc95786d-cbec-478f-bed2-52b330a576d1', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '6e7c0a0f-be33-4490-826c-814a59048eb5', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '8e19f446-827b-44ce-acd0-839e6822d8fb', '', '40 - 20000', '', '40 - 20000'),
('ccd8b18a-1f57-43e8-8703-6081d5f03fb8', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '95a8386d-0151-4ef5-9b7a-23f2988ffbd8', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '6a1f42b2-b07f-429c-9dd9-bcd44c3450bc', 'W x D x H', '406 x 426 x 984', 'W x D x H', '406 x 426 x 984'),
('cddb5d67-f5bd-4a2c-bc71-42a727e0aa9f', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'ee550140-1522-4320-8790-b868ce5b74f3', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', 'fffa2052-239f-4432-bcba-fcee8dd46f20', '', 'Speaker 3 arah', '', '3-way speaker'),
('cde43fcf-4cd0-4c15-ab48-bb6529ddb99c', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '4e49b2aa-2eb2-4ae4-93af-7729e23fa404', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '6a1f42b2-b07f-429c-9dd9-bcd44c3450bc', 'W x D x H', '370 x 340 x 880', 'W x D x H', '370 x 340 x 880'),
('cf569109-b9e2-46ee-8f0f-3ec86fc1bfc4', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '15a9bc11-1dfb-49c5-8a06-8836d35f9921', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', 'ff866824-bbfc-435a-8782-cb74a04f90c8', '', 'AC 220 V - 50 Hz', '', 'AC 220 V - 50 Hz'),
('cff58c1c-4c6f-4abb-8e25-833d5a719df1', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '15a9bc11-1dfb-49c5-8a06-8836d35f9921', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '1a8d1e3e-4810-4b0c-81c8-caa5b7e501e2', '', '50000', '', '50000'),
('cffbd22e-5906-4472-bc1b-a2c9d1f40c12', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'a8887af0-547d-42e1-8cca-779cf1841ed5', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '8d10811b-22f9-4e65-b6bd-de72aab10789', 'a5c86871-0d5f-4424-ae8d-05004cff7f9a', '', 'RCA 2-pin L/R type', '', 'RCA 2-pin L/R type'),
('cfff6faf-3c78-4ae5-8a87-dcfc483011e1', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'd96ca88f-1b20-437d-973e-4a5fc0655de1', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '8d10811b-22f9-4e65-b6bd-de72aab10789', '5de2a926-69f9-4376-a697-65afff94981d', '', 'Freq. Band: 2.4 GHz (2.4000 GHz - 2.4835 GHz)', '', 'Freq. Band: 2.4 GHz (2.4000 GHz - 2.4835 GHz)'),
('d01bc0c6-09e1-4e1b-b3fb-1d54ab0d94b8', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'd1e7baa1-7ce6-4720-9530-30b84eb97c31', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '8d10811b-22f9-4e65-b6bd-de72aab10789', '45ce71bd-0d75-4803-b54a-509330b280f8', '', 'Koneksi Bluetooth antara 2 unit', '', 'BT connection between 2 units'),
('d03dd0c3-ade1-454a-8318-b8244e7b1d44', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'a8887af0-547d-42e1-8cca-779cf1841ed5', '9b97e2c1-4a01-48ac-910a-2d14cb137069', 'dba0d6fd-16b2-4e6c-9923-0950e2db188b', '2b402275-bb39-4d09-bc5c-aa4f3906f3f6', '', 'MIC Volume, Echo', '', 'MIC Volume, Echo'),
('d1e24306-6e12-49f0-8944-f5e25a169e6e', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'a8887af0-547d-42e1-8cca-779cf1841ed5', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '8d10811b-22f9-4e65-b6bd-de72aab10789', '713305b8-721a-479f-a563-2fc7911b4b1b', '', 'Pemutaran MP3', '', 'MP3 Playback'),
('d2db2602-604d-4e32-baa4-4a3368982948', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '83d4e98c-e184-4c24-978e-0f6d0aafffbc', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '65b285b2-b1b7-4797-9fe9-06c9642785a8', '', 'Roda & Handle', '', 'Wheel & Handle'),
('d3b1e3d0-1a55-4350-89b7-509653616d16', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '5826462f-b495-4df7-a21f-bbf19b981a48', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '53cf8166-47b9-4b4c-8e7d-8ae98c62fde6', '53475931-30c0-4f42-bb5d-b5bc9a408c3d', '', '2.5 cm (1\"), 25 W', '', '2.5 cm (1\"), 25 W'),
('d58620c6-801b-4d4a-9a9d-8ade96b7af54', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'ee550140-1522-4320-8790-b868ce5b74f3', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '8d10811b-22f9-4e65-b6bd-de72aab10789', '77af6a05-b7ba-4c87-aad3-53eb05bc41bc', '', 'Freq. Range: 87.50 MHz - 108.00 MHz', '', 'Freq. Range: 87.50 MHz - 108.00 MHz'),
('d6dec5fa-2581-486f-987c-72d077155f9c', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '95a8386d-0151-4ef5-9b7a-23f2988ffbd8', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '68757736-bbeb-4a48-a383-fad6682a0c42', '', 'Multi Input', '', 'Multi Input'),
('d7af7ba2-f39e-4a8c-89bc-6888f37f9b07', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'd1e7baa1-7ce6-4720-9530-30b84eb97c31', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', 'ae677dfe-0b1d-4489-98ac-322829e069a4', 'RMS', '40', 'RMS', '40'),
('d7f2e57f-0a57-4dc5-a94f-dbd82e9a842d', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '8cf82b55-a985-4a5f-83ff-0484ffcdf5c5', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '1a8d1e3e-4810-4b0c-81c8-caa5b7e501e2', '', '50000', '', '50000'),
('d8e3b060-6b19-4bf0-9d19-704940ccd210', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'a8887af0-547d-42e1-8cca-779cf1841ed5', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '8d10811b-22f9-4e65-b6bd-de72aab10789', '5de2a926-69f9-4376-a697-65afff94981d', '', 'Freq. Band: 2.4 GHz (2.4000 GHz - 2.4835 GHz)', '', 'Freq. Band: 2.4 GHz (2.4000 GHz - 2.4835 GHz)'),
('d98a93dc-5503-43cf-92fd-b29c5b2fac73', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '3847c27a-f9f3-4c62-9213-8f4072e62117', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', 'ae677dfe-0b1d-4489-98ac-322829e069a4', 'RMS', '2 x 70', 'RMS', '2 x 70'),
('d9a46eba-5bf3-44ff-9e94-4b4780c28d66', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '4e49b2aa-2eb2-4ae4-93af-7729e23fa404', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '8d10811b-22f9-4e65-b6bd-de72aab10789', 'a5c86871-0d5f-4424-ae8d-05004cff7f9a', '', 'RCA 2-pin L/R type', '', 'RCA 2-pin L/R type'),
('db631fab-79ce-485f-8061-0936b322b60c', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '15a9bc11-1dfb-49c5-8a06-8836d35f9921', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', 'fffa2052-239f-4432-bcba-fcee8dd46f20', '', 'speaker 2 arah', '', '2-way speaker'),
('dbdf6546-5a26-4873-9417-779392e5c6a8', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '5826462f-b495-4df7-a21f-bbf19b981a48', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '3652480e-57ee-4d0c-9601-0f8321ed7bfa', '', '22', '', '22'),
('dc1df6b6-c0d3-4378-8d84-aa5118c0db69', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '15a9bc11-1dfb-49c5-8a06-8836d35f9921', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '8d10811b-22f9-4e65-b6bd-de72aab10789', '45ce71bd-0d75-4803-b54a-509330b280f8', '', 'Koneksi Bluetooth antara 2 unit', '', 'BT connection between 2 units'),
('dd9c5c64-8bd4-45f1-a5f2-5c6f6826a47b', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '4e49b2aa-2eb2-4ae4-93af-7729e23fa404', '9b97e2c1-4a01-48ac-910a-2d14cb137069', 'ba3f4372-afe4-4d88-a6d0-9d3ad2b73824', '2b402275-bb39-4d09-bc5c-aa4f3906f3f6', '', 'Volume, Treble, Bass, X-Bass', '', 'Volume, Treble, Bass, X-Bass'),
('de23e478-dbca-4789-88af-87a0ffb2395d', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'ee550140-1522-4320-8790-b868ce5b74f3', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '8d10811b-22f9-4e65-b6bd-de72aab10789', '713305b8-721a-479f-a563-2fc7911b4b1b', '', 'Pemutaran MP3', '', 'MP3 Playback'),
('dea42b80-e4ff-47ac-bff8-90d1832e8a0f', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '95a8386d-0151-4ef5-9b7a-23f2988ffbd8', '9b97e2c1-4a01-48ac-910a-2d14cb137069', 'ba3f4372-afe4-4d88-a6d0-9d3ad2b73824', 'e137db07-98f3-4d79-b67c-74912b613f8e', '', 'X-Bass, High, Mid, Low, Volume, Master, Music, Guitar & Keyboard', '', 'X-Bass, High, Mid, Low, Volume, Master, Music, Guitar & Keyboard'),
('dea657ca-7e45-43ac-bf58-9a31798756ef', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'd96ca88f-1b20-437d-973e-4a5fc0655de1', '9b97e2c1-4a01-48ac-910a-2d14cb137069', 'dba0d6fd-16b2-4e6c-9923-0950e2db188b', '633de2e4-9792-4adf-8d18-1471cd7c8462', '', 'Mic Priority, Volume, Echo, Reverb', '', 'Mic Priority, Volume, Echo, Reverb'),
('dece627c-6bf0-48cd-b390-ba8f2190dbd8', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'a8887af0-547d-42e1-8cca-779cf1841ed5', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '53cf8166-47b9-4b4c-8e7d-8ae98c62fde6', '0a0bebf9-1e00-48cf-9e2e-2d986ad3f28e', '', '7.5 cm (3\"), 4 Ohm, 25 W', '', '7.5 cm (3\"), 4 Ohm, 25 W'),
('ded3ce2c-3c11-42ba-8e43-1f34e0941941', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'ee550140-1522-4320-8790-b868ce5b74f3', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '53cf8166-47b9-4b4c-8e7d-8ae98c62fde6', '0a0bebf9-1e00-48cf-9e2e-2d986ad3f28e', '', '7.6 cm (3\"), 4 Ohm 30 W', '', '7.6 cm (3\"), 4 Ohm 30 W'),
('deffb814-2fa6-4f00-922b-85f7b48fa66d', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '9ab06c62-3e47-4751-abf9-9c2a96d70421', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '8d10811b-22f9-4e65-b6bd-de72aab10789', 'd4a92c59-b965-4fd4-b913-b9d1982a8898', '', 'Pemutaran MP3', '', 'MP3 Playback'),
('df43ce9d-3108-49fa-971f-ffd770bf4b5c', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '95a8386d-0151-4ef5-9b7a-23f2988ffbd8', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', 'ae677dfe-0b1d-4489-98ac-322829e069a4', 'RMS', '2 x 150', 'RMS', '2 x 150'),
('e1071244-52f1-437f-a423-8a1d9b549be6', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'f33a3fca-2a2c-4913-8ec9-9a98946ba7b1', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', 'ff866824-bbfc-435a-8782-cb74a04f90c8', '', 'AC 220 V - 50 Hz', '', 'AC 220 V - 50 Hz'),
('e1b0c053-e498-4da2-a088-cac8761b5a7a', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '95a8386d-0151-4ef5-9b7a-23f2988ffbd8', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', 'ff866824-bbfc-435a-8782-cb74a04f90c8', '', 'AC 220 V - 50 Hz', '', 'AC 220 V - 50 Hz');
INSERT INTO `specificationconnector` (`id`, `brandId`, `productId`, `dynamicspecificationParentId`, `dynamicspecificationSubParentId`, `dynamicspecificationId`, `notes`, `value`, `notes_eng`, `value_eng`) VALUES
('e2c0b3ae-24ff-40aa-baf4-bb009db3e04e', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '4dc849b5-3796-4ba4-8878-c194953a9fa3', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '8d10811b-22f9-4e65-b6bd-de72aab10789', '5de2a926-69f9-4376-a697-65afff94981d', '', 'Freq. Band : 2.4 GHz (2.4000 GHz - 2.4835 GHz)', '', 'Freq. Band : 2.4 GHz (2.4000 GHz - 2.4835 GHz)'),
('e35bedab-2848-4a51-a487-26fc07e96a1a', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '3847c27a-f9f3-4c62-9213-8f4072e62117', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '8d10811b-22f9-4e65-b6bd-de72aab10789', 'a5c86871-0d5f-4424-ae8d-05004cff7f9a', '', 'RCA 2-pin L/R type, HDMI, OPTICAL', '', 'RCA 2-pin L/R type, HDMI, OPTICAL'),
('e4d5cb03-c030-4f0a-ac4d-9e1a3458c84a', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '6e7c0a0f-be33-4490-826c-814a59048eb5', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '53cf8166-47b9-4b4c-8e7d-8ae98c62fde6', '0a0bebf9-1e00-48cf-9e2e-2d986ad3f28e', '', '7.5 cm (3\"), 4 Ohm 30 W', '', '7.5 cm (3\"), 4 Ohm 30 W'),
('e5416447-d5ea-4caf-ae82-f6e209c97d3c', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'f33a3fca-2a2c-4913-8ec9-9a98946ba7b1', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', 'dce9e0cd-8e5b-4d0a-ae57-21dc3dcefdcb', '', 'Ada', '', 'Yes'),
('e5a14417-1924-4db3-ba95-6dfa699afa81', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'ee550140-1522-4320-8790-b868ce5b74f3', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '65b285b2-b1b7-4797-9fe9-06c9642785a8', '', 'Roda & Handle', '', 'Wheel & Handle'),
('e6e45b09-0ccb-4b4f-8480-9f3bb6a1596a', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '8cf82b55-a985-4a5f-83ff-0484ffcdf5c5', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '8d10811b-22f9-4e65-b6bd-de72aab10789', '77af6a05-b7ba-4c87-aad3-53eb05bc41bc', '', 'Freq. Range: 87.50 MHz - 108.00 MHz', '', 'Freq. Range: 87.50 MHz - 108.00 MHz'),
('e7b3ada5-96cc-4f1e-9cc9-e17b5b819e23', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '6e7c0a0f-be33-4490-826c-814a59048eb5', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '3652480e-57ee-4d0c-9601-0f8321ed7bfa', '', '14', '', '14'),
('e867cff1-6141-4d67-8a0b-b37ec1ebcd6a', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '95a8386d-0151-4ef5-9b7a-23f2988ffbd8', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '8d10811b-22f9-4e65-b6bd-de72aab10789', 'a5c86871-0d5f-4424-ae8d-05004cff7f9a', '', 'RCA 2-pin L/R type', '', 'RCA 2-pin L/R type'),
('e966c8ed-b325-48b3-b232-0435411144eb', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'ee550140-1522-4320-8790-b868ce5b74f3', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '3652480e-57ee-4d0c-9601-0f8321ed7bfa', '', '22', '', '22'),
('ea20593f-a967-48ba-a5ab-f9ba61a4e92d', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'f33a3fca-2a2c-4913-8ec9-9a98946ba7b1', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '68757736-bbeb-4a48-a383-fad6682a0c42', '', 'Multi Input', '', 'Multi Input'),
('ea4c6048-6c0d-4b0e-9f0f-b39c6c01263b', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '0fc1bf44-b61d-4991-9403-0b0ecef8c791', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '53cf8166-47b9-4b4c-8e7d-8ae98c62fde6', '53475931-30c0-4f42-bb5d-b5bc9a408c3d', '', '2.5 cm (1\"), 25 W', '', '2.5 cm (1\"), 25 W'),
('eab4b6af-07b8-4faa-a8bc-b6f78f3dc2c4', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'a8887af0-547d-42e1-8cca-779cf1841ed5', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '3652480e-57ee-4d0c-9601-0f8321ed7bfa', '', '22', '', '22'),
('eaff551d-38a0-47a6-ad8a-920ccf29e73b', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'd1e7baa1-7ce6-4720-9530-30b84eb97c31', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '53cf8166-47b9-4b4c-8e7d-8ae98c62fde6', '53475931-30c0-4f42-bb5d-b5bc9a408c3d', '', '2.5 cm (1\"), 25 W', '', '2.5 cm (1\"), 25 W'),
('eb2c2fd5-7aae-46d8-b0a3-329f69dac724', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '4dc849b5-3796-4ba4-8878-c194953a9fa3', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '68757736-bbeb-4a48-a383-fad6682a0c42', '', 'Multi Input', '', 'Multi Input'),
('eb603bdb-9d82-4747-abb5-d2ac9276f4b9', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'ee550140-1522-4320-8790-b868ce5b74f3', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '8d10811b-22f9-4e65-b6bd-de72aab10789', 'd4a92c59-b965-4fd4-b913-b9d1982a8898', '', 'Pemutaran MP3', '', 'MP3 Playback'),
('eb8d2799-52e4-4359-8773-a800af6c39ef', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'd96ca88f-1b20-437d-973e-4a5fc0655de1', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '8e19f446-827b-44ce-acd0-839e6822d8fb', '', '20 - 20000', '', '20 - 20000'),
('ebcee7a5-e9f1-45a3-94b6-aaf672023ba7', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'd1e7baa1-7ce6-4720-9530-30b84eb97c31', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', 'ff866824-bbfc-435a-8782-cb74a04f90c8', '', 'AC 220 V- 50 Hz', '', 'AC 220 V- 50 Hz'),
('ebdf3747-f0c2-4080-9b48-6eb96aad2716', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '57777133-51e7-4ae8-b0de-fee20edce0cc', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '65b285b2-b1b7-4797-9fe9-06c9642785a8', '', 'Tidak ada', '', 'No'),
('ebfaf908-51c6-4d09-9a24-04bea97399e4', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '83d4e98c-e184-4c24-978e-0f6d0aafffbc', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '1a8d1e3e-4810-4b0c-81c8-caa5b7e501e2', '', '50000', '', '50000'),
('ecfb27a1-3dd9-4dbe-92dd-4d5251a51a8a', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '5826462f-b495-4df7-a21f-bbf19b981a48', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '8d10811b-22f9-4e65-b6bd-de72aab10789', 'a5c86871-0d5f-4424-ae8d-05004cff7f9a', '', 'RCA 2-pin L/R type, HDMI, OPTICAL', '', 'RCA 2-pin L/R type, HDMI, OPTICAL'),
('ed660a8b-d1b2-4cd7-82b0-209d7b62a8dc', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '15a9bc11-1dfb-49c5-8a06-8836d35f9921', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '11fb867e-f262-41c0-9901-912de9aaa12b', '', '100', '', '100'),
('ed6ada65-40f1-47d7-8c56-dea8b2537b28', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'd1e7baa1-7ce6-4720-9530-30b84eb97c31', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '8d10811b-22f9-4e65-b6bd-de72aab10789', 'a5c86871-0d5f-4424-ae8d-05004cff7f9a', '', 'RCA 2-pin L/R type', '', 'RCA 2-pin L/R type'),
('ed6e1e7d-5488-465a-a2ef-0f5a50d92ee4', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '8cf82b55-a985-4a5f-83ff-0484ffcdf5c5', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '8d10811b-22f9-4e65-b6bd-de72aab10789', '713305b8-721a-479f-a563-2fc7911b4b1b', '', 'Pemutaran MP3', '', 'MP3 Playback'),
('ed911d9a-857d-426c-8772-f4e36a1bb338', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '15a9bc11-1dfb-49c5-8a06-8836d35f9921', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '8d10811b-22f9-4e65-b6bd-de72aab10789', 'd4a92c59-b965-4fd4-b913-b9d1982a8898', '', 'Pemutaran MP3', '', 'MP3 Playback'),
('eda4c0f7-4c5e-44da-804b-1918e11bb489', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '5826462f-b495-4df7-a21f-bbf19b981a48', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', 'fffa2052-239f-4432-bcba-fcee8dd46f20', '', 'Speaker 3 arah', '', '3-way speaker'),
('ee1f7279-2486-4565-9303-204c9d40ab90', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '95a8386d-0151-4ef5-9b7a-23f2988ffbd8', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '8d10811b-22f9-4e65-b6bd-de72aab10789', '45ce71bd-0d75-4803-b54a-509330b280f8', '', 'Koneksi Bluetooth antara 2 unit', '', 'BT connection between 2 units'),
('f023a9be-7ade-4577-9c62-f33b11193821', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '57777133-51e7-4ae8-b0de-fee20edce0cc', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '3652480e-57ee-4d0c-9601-0f8321ed7bfa', '', '22', '', '22'),
('f0894e71-4c10-40cc-87f5-4607c1626fa6', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '8403ceac-7570-475d-81df-82586ff41921', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '8d10811b-22f9-4e65-b6bd-de72aab10789', '713305b8-721a-479f-a563-2fc7911b4b1b', '', 'Pemutaran MP3', '', 'MP3 Playback'),
('f1b8f424-1493-48cb-8b81-c888f03a9967', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'ee550140-1522-4320-8790-b868ce5b74f3', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', 'ae677dfe-0b1d-4489-98ac-322829e069a4', 'RMS', '2 x 60', 'RMS', '2 x 60'),
('f2752da8-b2df-448e-9fa7-55e1f40d7f07', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '3847c27a-f9f3-4c62-9213-8f4072e62117', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '8d10811b-22f9-4e65-b6bd-de72aab10789', '45ce71bd-0d75-4803-b54a-509330b280f8', '', 'Koneksi Bluetooth antara 2 unit', '', 'BT connection between 2 units'),
('f284fd17-3c54-440c-ba49-19aec60fce4c', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '57777133-51e7-4ae8-b0de-fee20edce0cc', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '11fb867e-f262-41c0-9901-912de9aaa12b', '', '280', '', '280'),
('f30b97ff-7805-43c6-a151-b93f69dfb016', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '3847c27a-f9f3-4c62-9213-8f4072e62117', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '53cf8166-47b9-4b4c-8e7d-8ae98c62fde6', '53475931-30c0-4f42-bb5d-b5bc9a408c3d', '', '2.5 cm (1\"), 25 W', '', '2.5 cm (1\"), 25 W'),
('f3b5f465-bbfd-4c17-ac18-02ad2fbbd941', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '8403ceac-7570-475d-81df-82586ff41921', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '53cf8166-47b9-4b4c-8e7d-8ae98c62fde6', '53475931-30c0-4f42-bb5d-b5bc9a408c3d', '', '2.5 cm (1\"), 4 Ohm, 25 W', '', '2.5 cm (1\"), 4 Ohm, 25 W'),
('f411f4d3-5340-4030-9354-a658fa5dd9c9', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'd1e7baa1-7ce6-4720-9530-30b84eb97c31', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '8d10811b-22f9-4e65-b6bd-de72aab10789', 'd4a92c59-b965-4fd4-b913-b9d1982a8898', '', 'Pemutaran MP3', '', 'MP3 Playback'),
('f444f27e-84e7-4cd6-8323-7121980134c9', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'ee550140-1522-4320-8790-b868ce5b74f3', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '8e19f446-827b-44ce-acd0-839e6822d8fb', '', '25 - 20000', '', '25 - 20000'),
('f4487173-4c82-4bb5-8c81-3e16cf701ecc', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '8403ceac-7570-475d-81df-82586ff41921', '9b97e2c1-4a01-48ac-910a-2d14cb137069', 'dba0d6fd-16b2-4e6c-9923-0950e2db188b', '2b402275-bb39-4d09-bc5c-aa4f3906f3f6', '', 'MIC Volume, Echo', '', 'MIC Volume, Echo'),
('f472c657-9293-489c-b4be-71893290068f', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '8403ceac-7570-475d-81df-82586ff41921', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '65b285b2-b1b7-4797-9fe9-06c9642785a8', '', 'Tidak ada', '', 'No'),
('f4cd1911-da20-4cb7-a115-66074928133f', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'd1e7baa1-7ce6-4720-9530-30b84eb97c31', '9b97e2c1-4a01-48ac-910a-2d14cb137069', 'dba0d6fd-16b2-4e6c-9923-0950e2db188b', '2b402275-bb39-4d09-bc5c-aa4f3906f3f6', '', 'MIC VOLUME, Echo', '', 'MIC VOLUME, Echo'),
('f62226c7-3b3b-4b26-a3be-f9591f344ecc', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'f33a3fca-2a2c-4913-8ec9-9a98946ba7b1', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '8d10811b-22f9-4e65-b6bd-de72aab10789', '45ce71bd-0d75-4803-b54a-509330b280f8', '', 'Koneksi Bluetooth antara 2 unit', '', 'BT connection between 2 units'),
('f63017e2-e392-4a59-bb61-ba53b9ab552f', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '95a8386d-0151-4ef5-9b7a-23f2988ffbd8', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '8d10811b-22f9-4e65-b6bd-de72aab10789', 'd4a92c59-b965-4fd4-b913-b9d1982a8898', '', 'Pemutaran MP3', '', 'MP3 Playback'),
('f6758cff-bd13-4afa-bf25-2d66789266ca', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '83d4e98c-e184-4c24-978e-0f6d0aafffbc', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', 'de29974c-62c6-4bd2-9679-153f01dedcf5', '', 'Gitar & 2 x input MIC (6.35 mm)', '', 'Guitar & 2 x MIC inputs (6.35 mm)'),
('f706c998-4235-49df-a28a-7377f51990d9', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '3847c27a-f9f3-4c62-9213-8f4072e62117', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '53cf8166-47b9-4b4c-8e7d-8ae98c62fde6', '0a0bebf9-1e00-48cf-9e2e-2d986ad3f28e', '', '7.6 cm (3\"), 4 Ohm, 30 W', '', '7.6 cm (3\"), 4 Ohm, 30 W'),
('f78d6563-ee5e-4aff-9258-040e163aa75a', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'd96ca88f-1b20-437d-973e-4a5fc0655de1', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', 'dfd9fadf-a260-4f80-abe4-5f5508dd414e', '', 'Futuristis', '', 'Futuristic'),
('f8bdf917-f66c-44f2-ba84-90f6e4f117e6', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '4e49b2aa-2eb2-4ae4-93af-7729e23fa404', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '3652480e-57ee-4d0c-9601-0f8321ed7bfa', '', '22', '', '22'),
('f9231252-2231-4946-ba10-9a2397238ebd', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'f33a3fca-2a2c-4913-8ec9-9a98946ba7b1', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', 'fffa2052-239f-4432-bcba-fcee8dd46f20', '', 'Speaker 3 arah', '', '3-way speaker'),
('f931fb0a-4db7-462a-bcf7-57e956fa5ad8', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '95a8386d-0151-4ef5-9b7a-23f2988ffbd8', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '8e19f446-827b-44ce-acd0-839e6822d8fb', '', '20 - 20000', '', '20 - 20000'),
('fa0468c1-d4b0-4673-bb32-d66085ff390e', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '8403ceac-7570-475d-81df-82586ff41921', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', 'fffa2052-239f-4432-bcba-fcee8dd46f20', '', 'Speaker 3 arah', '', '3-way Speaker'),
('fa57d0ac-10dd-4a27-99b0-04bbef5c90ed', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'd1e7baa1-7ce6-4720-9530-30b84eb97c31', '9b97e2c1-4a01-48ac-910a-2d14cb137069', 'ba3f4372-afe4-4d88-a6d0-9d3ad2b73824', '2b402275-bb39-4d09-bc5c-aa4f3906f3f6', '', 'Volume, Treble, Bass, X-Bass', '', 'Volume, Treble, Bass, X-Bass'),
('fa982823-2ada-408d-bc06-7045be5323ba', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '8cf82b55-a985-4a5f-83ff-0484ffcdf5c5', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '68757736-bbeb-4a48-a383-fad6682a0c42', '', 'Multi Input', '', 'Multi Input'),
('fbd263b4-0774-4ab7-b2e4-ab217769e6b5', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '4dc849b5-3796-4ba4-8878-c194953a9fa3', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '8e19f446-827b-44ce-acd0-839e6822d8fb', '', '40 - 20000', '', '40 - 20000'),
('fe0227c4-0e78-4c27-acce-36783e333407', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '4dc849b5-3796-4ba4-8878-c194953a9fa3', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '1a8d1e3e-4810-4b0c-81c8-caa5b7e501e2', '', '50000', '', '50000'),
('feb37389-afde-416e-9c7d-9c7c4cb1ece7', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'd1e7baa1-7ce6-4720-9530-30b84eb97c31', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '3652480e-57ee-4d0c-9601-0f8321ed7bfa', '', '22', '', '22'),
('ff63e0f2-e512-4e1a-90e3-de07b89e4d44', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'd96ca88f-1b20-437d-973e-4a5fc0655de1', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '11fb867e-f262-41c0-9901-912de9aaa12b', '', '220', '', '220');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` varchar(191) NOT NULL,
  `name` text NOT NULL,
  `email` text NOT NULL,
  `password` text NOT NULL,
  `refresh_token` text NOT NULL,
  `createdAt` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `updatedAt` datetime(3) NOT NULL,
  `expiredAt` varchar(191) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `refresh_token`, `createdAt`, `updatedAt`, `expiredAt`) VALUES
('25cd8d0d-d185-41e8-9943-fdf1264236f2', 'admin', 'admin', '$argon2id$v=19$m=65536,t=3,p=4$xYxDy6zIa0+RKNnbO77EyQ$8cprXQw0UP+ZsbYBvklz2k+KEhTCNH1pcLfw9mQaN1M', '', '2024-10-04 08:21:24.874', '2024-10-04 08:21:24.874', ''),
('eb644eac-13dc-4ab8-938e-cc3ac2e09c5b', 'Sinar Baja', 'sb2', '$argon2id$v=19$m=65536,t=3,p=4$5Gy0rm61xVOiflnSzWVZAA$OGC51OpJEtWeBfJ/1rKxUYufBl7mXoQJguRKe3chWhg', '', '2025-11-04 06:47:15.855', '2025-11-04 06:47:15.855', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `allcategory`
--
ALTER TABLE `allcategory`
  ADD PRIMARY KEY (`id`),
  ADD KEY `allcategory_brandId_idx` (`brandId`);

--
-- Indexes for table `allproductcategory`
--
ALTER TABLE `allproductcategory`
  ADD PRIMARY KEY (`id`),
  ADD KEY `allproductcategory_productId_idx` (`productId`),
  ADD KEY `allproductcategory_categoryId_idx` (`categoryId`);

--
-- Indexes for table `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dynamicspecification`
--
ALTER TABLE `dynamicspecification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dynamicspecificationparent`
--
ALTER TABLE `dynamicspecificationparent`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dynamicspecificationsubparent`
--
ALTER TABLE `dynamicspecificationsubparent`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`),
  ADD KEY `news_brandId_idx` (`brandId`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_brandId_idx` (`brandId`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `roles_userId_idx` (`userId`);

--
-- Indexes for table `specificationconnector`
--
ALTER TABLE `specificationconnector`
  ADD PRIMARY KEY (`id`),
  ADD KEY `specificationconnector_brandId_idx` (`brandId`),
  ADD KEY `specificationconnector_productId_idx` (`productId`),
  ADD KEY `specificationconnector_dynamicspecificationParentId_idx` (`dynamicspecificationParentId`),
  ADD KEY `specificationconnector_dynamicspecificationSubParentId_idx` (`dynamicspecificationSubParentId`),
  ADD KEY `specificationconnector_dynamicspecificationId_idx` (`dynamicspecificationId`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
