-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 06, 2026 at 09:34 AM
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
  `updatedBy` varchar(191) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `allcategory`
--

INSERT INTO `allcategory` (`id`, `brandId`, `type`, `name`, `slug`, `description`, `thumbnail_url`, `createdAt`, `updatedAt`, `updatedBy`) VALUES
('059516df-7497-420c-9ba6-6fb9d04d0ee4', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'Category', 'Powered Stereo', 'powered-stereo', 'Stereo speakers with integrated amplification that produce balanced left-right audio for clear and immersive listening.', '/uploads/others/Cozy living room with speakers and turntable.webp', '2026-03-31 14:49:57.103', '2026-04-06 01:52:06.818', 'admin'),
('0625a69d-efa3-4d80-a69e-a42aaeb4ecbd', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'Category', 'Powered Tower', 'powered-tower', 'Tall speakers with built-in amplifiers designed to deliver powerful, room-filling sound for home or event setups.', '/uploads/others/Modern living room with sleek speakers.webp', '2026-03-31 14:50:22.270', '2026-04-06 01:51:49.119', 'admin'),
('3f7a7f28-0faf-40f2-b266-1528a4445b68', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'Sub Category', 'Monster Series', 'monster-series', 'Monster Series Speaker', '', '2026-03-31 14:51:11.533', '2026-03-31 14:51:11.533', 'admin'),
('488f1247-3dc3-4071-9945-f3317236c1a1', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'Sub Category', 'KD Pro Series', 'kd-pro-series', 'KD Pro Series Speaker', '', '2026-03-31 14:51:22.983', '2026-03-31 14:51:22.983', 'admin'),
('49abbb86-f7a6-4d61-a57e-278991a31f30', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'Sub Category', 'Party Series', 'party-series', 'Party Series Speaker', '', '2026-03-31 14:51:59.131', '2026-03-31 14:51:59.131', 'admin'),
('4f4f59f5-1904-4ba3-bac6-149a991a4c64', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'Sub Category', 'Bass Series', 'bass-series', 'Bass Series Speaker', '', '2026-03-31 14:50:59.739', '2026-03-31 14:50:59.739', 'admin'),
('705cbf21-1e44-4f8f-ae0e-39d568369e8a', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'Sub Category', 'PA Series', 'pa-series', 'PA Series Speaker', '', '2026-03-31 14:51:43.808', '2026-03-31 16:02:58.491', 'admin'),
('821782fa-eede-4710-9d67-f803cc56be3b', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'Sub Category', 'Minion', 'minion', 'Minion Speaker', '', '2026-03-31 14:51:31.058', '2026-03-31 14:51:31.058', 'admin'),
('9945a47f-0755-4f8c-b421-434c7f733f66', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'Sub Category', 'Probeat Series', 'probeat-series', 'Probeat Series Speaker', '', '2026-03-31 14:52:13.506', '2026-03-31 16:02:54.085', 'admin'),
('b5def30b-0648-4c0c-8602-2a8d4363b36b', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'Category', 'Portable', 'portable', 'Compact and lightweight speakers that provide convenient, high-quality sound for music anywhere you go.', '/uploads/others/Beachside speaker and tropical vibes.webp', '2026-03-31 14:50:07.571', '2026-04-06 01:51:58.170', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `allproductcategory`
--

CREATE TABLE `allproductcategory` (
  `id` varchar(191) NOT NULL,
  `productId` varchar(191) NOT NULL,
  `categoryId` varchar(191) NOT NULL,
  `createdAt` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `updatedAt` datetime(3) NOT NULL,
  `name` text NOT NULL,
  `slug` text NOT NULL,
  `type` varchar(191) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `allproductcategory`
--

INSERT INTO `allproductcategory` (`id`, `productId`, `categoryId`, `createdAt`, `updatedAt`, `name`, `slug`, `type`) VALUES
('03d44fa5-9983-4c8d-8b98-15e5b623efd0', 'd96ca88f-1b20-437d-973e-4a5fc0655de1', '3f7a7f28-0faf-40f2-b266-1528a4445b68', '2026-03-31 15:21:22.552', '2026-03-31 15:21:22.552', 'Monster Series', 'monster-series', 'Sub Category'),
('0931f041-62e0-4eef-9088-4b2b1adc9140', 'd96ca88f-1b20-437d-973e-4a5fc0655de1', '059516df-7497-420c-9ba6-6fb9d04d0ee4', '2026-03-31 15:21:22.550', '2026-04-06 01:52:06.823', 'Powered Stereo', 'powered-stereo', 'Category'),
('2461cc16-a397-4d7d-8f09-d95683303843', '5a4b4994-bb7c-4ef5-9f7f-0764fde8cbe1', '49abbb86-f7a6-4d61-a57e-278991a31f30', '2026-03-31 15:10:57.073', '2026-03-31 15:10:57.073', 'Party Series', 'party-series', 'Sub Category'),
('2e058330-4020-4a07-916b-8df1acb17e4f', 'f33a3fca-2a2c-4913-8ec9-9a98946ba7b1', 'b5def30b-0648-4c0c-8602-2a8d4363b36b', '2026-03-31 15:10:21.505', '2026-04-06 01:51:58.180', 'Portable', 'portable', 'Category'),
('327ac585-4af2-4072-95a5-98b270af0c41', '15a9bc11-1dfb-49c5-8a06-8836d35f9921', '059516df-7497-420c-9ba6-6fb9d04d0ee4', '2026-03-31 15:27:04.617', '2026-04-06 01:52:06.823', 'Powered Stereo', 'powered-stereo', 'Category'),
('38294b07-a629-483c-ad0b-bdd4cd238276', '0fc1bf44-b61d-4991-9403-0b0ecef8c791', 'b5def30b-0648-4c0c-8602-2a8d4363b36b', '2026-03-31 15:09:54.637', '2026-04-06 01:51:58.180', 'Portable', 'portable', 'Category'),
('4092044f-df39-452f-a7b8-ae1648c78b6b', '8cf82b55-a985-4a5f-83ff-0484ffcdf5c5', '059516df-7497-420c-9ba6-6fb9d04d0ee4', '2026-03-31 15:18:31.589', '2026-04-06 01:52:06.823', 'Powered Stereo', 'powered-stereo', 'Category'),
('4224f6fc-86ef-41c4-85e5-95b123bcf8ca', 'f33a3fca-2a2c-4913-8ec9-9a98946ba7b1', '49abbb86-f7a6-4d61-a57e-278991a31f30', '2026-03-31 15:10:21.507', '2026-03-31 15:10:21.507', 'Party Series', 'party-series', 'Sub Category'),
('43236125-930a-427e-a915-71857d019e61', 'cd34c76d-1738-4a80-be66-0e51d7da6693', '49abbb86-f7a6-4d61-a57e-278991a31f30', '2026-03-31 15:29:10.357', '2026-03-31 15:29:10.357', 'Party Series', 'party-series', 'Sub Category'),
('47c94c2a-8ec9-45b2-8191-53a15a7fe7c2', '3c1f02e6-80d0-42e3-85e2-303261105341', '059516df-7497-420c-9ba6-6fb9d04d0ee4', '2026-03-31 15:13:35.315', '2026-04-06 01:52:06.823', 'Powered Stereo', 'powered-stereo', 'Category'),
('505e47dd-0ad1-4226-9c92-18c7a7350bd9', '3c1f02e6-80d0-42e3-85e2-303261105341', '4f4f59f5-1904-4ba3-bac6-149a991a4c64', '2026-03-31 15:13:35.318', '2026-03-31 15:13:35.318', 'Bass Series', 'bass-series', 'Sub Category'),
('509078e9-cf83-4cb7-97a2-fc6b0b02a55f', '8cf82b55-a985-4a5f-83ff-0484ffcdf5c5', '4f4f59f5-1904-4ba3-bac6-149a991a4c64', '2026-03-31 15:18:31.591', '2026-03-31 15:18:31.591', 'Bass Series', 'bass-series', 'Sub Category'),
('5b9d3c33-8342-4166-aa2d-fa54e4d530db', '6e7c0a0f-be33-4490-826c-814a59048eb5', '705cbf21-1e44-4f8f-ae0e-39d568369e8a', '2026-03-31 15:06:31.095', '2026-03-31 16:02:58.494', 'PA Series', 'pa-series', 'Sub Category'),
('5d8a35a1-de80-4d66-8bc8-d4a71a8f5882', 'a8887af0-547d-42e1-8cca-779cf1841ed5', '059516df-7497-420c-9ba6-6fb9d04d0ee4', '2026-03-31 15:17:50.589', '2026-04-06 01:52:06.823', 'Powered Stereo', 'powered-stereo', 'Category'),
('65156752-611d-482f-9333-966557ec5349', 'a4c4828a-80c1-4698-be71-892994e657df', '059516df-7497-420c-9ba6-6fb9d04d0ee4', '2026-03-31 15:13:16.242', '2026-04-06 01:52:06.823', 'Powered Stereo', 'powered-stereo', 'Category'),
('6826948f-bb12-44f7-9df2-b8fd003b6f95', '8403ceac-7570-475d-81df-82586ff41921', '059516df-7497-420c-9ba6-6fb9d04d0ee4', '2026-03-31 15:17:02.896', '2026-04-06 01:52:06.823', 'Powered Stereo', 'powered-stereo', 'Category'),
('78d5bc7b-7e68-4a4f-b552-1827d3a6122c', '3847c27a-f9f3-4c62-9213-8f4072e62117', '3f7a7f28-0faf-40f2-b266-1528a4445b68', '2026-03-31 15:21:46.462', '2026-03-31 15:21:46.462', 'Monster Series', 'monster-series', 'Sub Category'),
('7c10230f-dc0e-4b6c-9edd-8bf52d25971e', 'a8887af0-547d-42e1-8cca-779cf1841ed5', '4f4f59f5-1904-4ba3-bac6-149a991a4c64', '2026-03-31 15:17:50.591', '2026-03-31 15:17:50.591', 'Bass Series', 'bass-series', 'Sub Category'),
('7d69729f-bf91-4c9c-afd1-627006ef2133', 'a4c4828a-80c1-4698-be71-892994e657df', '4f4f59f5-1904-4ba3-bac6-149a991a4c64', '2026-03-31 15:13:16.245', '2026-03-31 15:13:16.245', 'Bass Series', 'bass-series', 'Sub Category'),
('7dc00797-9afb-4bc3-897c-af6b94df5e6b', '3847c27a-f9f3-4c62-9213-8f4072e62117', '059516df-7497-420c-9ba6-6fb9d04d0ee4', '2026-03-31 15:21:46.460', '2026-04-06 01:52:06.823', 'Powered Stereo', 'powered-stereo', 'Category'),
('82532671-a297-4eb2-ae84-3f9784829bb2', '57777133-51e7-4ae8-b0de-fee20edce0cc', '488f1247-3dc3-4071-9945-f3317236c1a1', '2026-03-31 15:19:50.787', '2026-03-31 15:19:50.787', 'KD Pro Series', 'kd-pro-series', 'Sub Category'),
('84881e8a-24f9-4ec7-a9a1-52ef9eb5ce85', '4e49b2aa-2eb2-4ae4-93af-7729e23fa404', 'b5def30b-0648-4c0c-8602-2a8d4363b36b', '2026-03-31 15:09:29.172', '2026-04-06 01:51:58.180', 'Portable', 'portable', 'Category'),
('8c899b10-4bee-441e-9cc3-8c5ac1ab47dc', '5826462f-b495-4df7-a21f-bbf19b981a48', '9945a47f-0755-4f8c-b421-434c7f733f66', '2026-03-31 15:12:02.370', '2026-03-31 16:02:54.087', 'Probeat Series', 'probeat-series', 'Sub Category'),
('8d312cc8-7225-4da4-b9e1-b4346c840c72', '9ab06c62-3e47-4751-abf9-9c2a96d70421', 'b5def30b-0648-4c0c-8602-2a8d4363b36b', '2026-03-31 15:03:57.014', '2026-04-06 01:51:58.180', 'Portable', 'portable', 'Category'),
('8f5795b6-ce32-41ef-9812-90676cd09619', '95a8386d-0151-4ef5-9b7a-23f2988ffbd8', '488f1247-3dc3-4071-9945-f3317236c1a1', '2026-03-31 15:19:20.279', '2026-03-31 15:19:20.279', 'KD Pro Series', 'kd-pro-series', 'Sub Category'),
('8fcdfcfb-bf79-4239-8fe4-23313461ecd3', '15a9bc11-1dfb-49c5-8a06-8836d35f9921', '821782fa-eede-4710-9d67-f803cc56be3b', '2026-03-31 15:27:04.621', '2026-03-31 15:27:04.621', 'Minion', 'minion', 'Sub Category'),
('9391cbb2-1720-4d18-befd-58690402edfa', 'ee550140-1522-4320-8790-b868ce5b74f3', '9945a47f-0755-4f8c-b421-434c7f733f66', '2026-03-31 15:11:37.282', '2026-03-31 16:02:54.087', 'Probeat Series', 'probeat-series', 'Sub Category'),
('95345109-bfe9-4665-a8a2-559adb8dc723', '9ab06c62-3e47-4751-abf9-9c2a96d70421', '705cbf21-1e44-4f8f-ae0e-39d568369e8a', '2026-03-31 15:03:57.017', '2026-03-31 16:02:58.494', 'PA Series', 'pa-series', 'Sub Category'),
('9b0d5fd4-8bc2-4da8-9824-b7b0a364c4c8', '83d4e98c-e184-4c24-978e-0f6d0aafffbc', '705cbf21-1e44-4f8f-ae0e-39d568369e8a', '2026-03-31 15:05:41.667', '2026-03-31 16:02:58.494', 'PA Series', 'pa-series', 'Sub Category'),
('9c04946b-9b96-41c2-8499-43782daf5636', '9be101d2-1c34-450b-a0dd-01cf009c560e', '059516df-7497-420c-9ba6-6fb9d04d0ee4', '2026-03-31 15:13:03.721', '2026-04-06 01:52:06.823', 'Powered Stereo', 'powered-stereo', 'Category'),
('9f1bacb8-056d-4dc9-ae09-c67b8f319705', '4e49b2aa-2eb2-4ae4-93af-7729e23fa404', '49abbb86-f7a6-4d61-a57e-278991a31f30', '2026-03-31 15:09:29.176', '2026-03-31 15:09:29.176', 'Party Series', 'party-series', 'Sub Category'),
('a0fdca77-1a33-42df-901b-8f188ef03ae1', 'ee550140-1522-4320-8790-b868ce5b74f3', '0625a69d-efa3-4d80-a69e-a42aaeb4ecbd', '2026-03-31 15:11:37.280', '2026-04-06 01:51:49.148', 'Powered Tower', 'powered-tower', 'Category'),
('a6ccbad7-bb1c-4204-8449-8d5ad0575968', '6e7c0a0f-be33-4490-826c-814a59048eb5', 'b5def30b-0648-4c0c-8602-2a8d4363b36b', '2026-03-31 15:06:31.093', '2026-04-06 01:51:58.180', 'Portable', 'portable', 'Category'),
('ab27574c-b6ea-4f5e-8e76-c357567ee614', '4dc849b5-3796-4ba4-8878-c194953a9fa3', 'b5def30b-0648-4c0c-8602-2a8d4363b36b', '2026-03-31 15:04:57.797', '2026-04-06 01:51:58.180', 'Portable', 'portable', 'Category'),
('b1a87d19-1819-458a-acd7-ae4749182665', 'd1e7baa1-7ce6-4720-9530-30b84eb97c31', 'b5def30b-0648-4c0c-8602-2a8d4363b36b', '2026-03-31 15:09:05.033', '2026-04-06 01:51:58.180', 'Portable', 'portable', 'Category'),
('b22db062-23df-4fdc-a17f-dddcff0d8d2d', '4dc849b5-3796-4ba4-8878-c194953a9fa3', '705cbf21-1e44-4f8f-ae0e-39d568369e8a', '2026-03-31 15:04:57.800', '2026-03-31 16:02:58.494', 'PA Series', 'pa-series', 'Sub Category'),
('b28762f9-9c58-434e-915c-d283d09d5fef', '95a8386d-0151-4ef5-9b7a-23f2988ffbd8', '059516df-7497-420c-9ba6-6fb9d04d0ee4', '2026-03-31 15:19:20.277', '2026-04-06 01:52:06.823', 'Powered Stereo', 'powered-stereo', 'Category'),
('b6600cd3-919d-478b-b24d-ac17c98939b0', '9a390596-9761-4552-b9aa-71904a27803b', '4f4f59f5-1904-4ba3-bac6-149a991a4c64', '2026-03-31 15:13:23.825', '2026-03-31 15:13:23.825', 'Bass Series', 'bass-series', 'Sub Category'),
('b8946dce-3179-4ebc-8239-b1e925a247e6', '8403ceac-7570-475d-81df-82586ff41921', '4f4f59f5-1904-4ba3-bac6-149a991a4c64', '2026-03-31 15:17:02.899', '2026-03-31 15:17:02.899', 'Bass Series', 'bass-series', 'Sub Category'),
('b939eec7-da35-4db0-9994-051a967f86fb', '5826462f-b495-4df7-a21f-bbf19b981a48', '0625a69d-efa3-4d80-a69e-a42aaeb4ecbd', '2026-03-31 15:12:02.366', '2026-04-06 01:51:49.148', 'Powered Tower', 'powered-tower', 'Category'),
('bbfb6bba-cab5-4651-95ac-feafe3fad2c3', 'd1e7baa1-7ce6-4720-9530-30b84eb97c31', '49abbb86-f7a6-4d61-a57e-278991a31f30', '2026-03-31 15:09:05.036', '2026-03-31 15:09:05.036', 'Party Series', 'party-series', 'Sub Category'),
('c930d01c-797a-4136-8907-858a781dc064', '9a390596-9761-4552-b9aa-71904a27803b', '059516df-7497-420c-9ba6-6fb9d04d0ee4', '2026-03-31 15:13:23.823', '2026-04-06 01:52:06.823', 'Powered Stereo', 'powered-stereo', 'Category'),
('d14c9344-0ca8-4d4f-a01f-3a8a431667f4', 'cd34c76d-1738-4a80-be66-0e51d7da6693', 'b5def30b-0648-4c0c-8602-2a8d4363b36b', '2026-03-31 15:29:10.355', '2026-04-06 01:51:58.180', 'Portable', 'portable', 'Category'),
('d2c8f337-8794-42e6-87b5-55afd769efd1', '83d4e98c-e184-4c24-978e-0f6d0aafffbc', 'b5def30b-0648-4c0c-8602-2a8d4363b36b', '2026-03-31 15:05:41.665', '2026-04-06 01:51:58.180', 'Portable', 'portable', 'Category'),
('e13d5fb9-8c77-4eff-81ec-8f7a1e4958a3', '57777133-51e7-4ae8-b0de-fee20edce0cc', '059516df-7497-420c-9ba6-6fb9d04d0ee4', '2026-03-31 15:19:50.782', '2026-04-06 01:52:06.823', 'Powered Stereo', 'powered-stereo', 'Category'),
('e4877eea-23ac-43c5-b69e-7021379b7722', '0fc1bf44-b61d-4991-9403-0b0ecef8c791', '49abbb86-f7a6-4d61-a57e-278991a31f30', '2026-03-31 15:09:54.640', '2026-03-31 15:09:54.640', 'Party Series', 'party-series', 'Sub Category'),
('f740e82d-f7c3-488f-aa43-3526b71a1478', '5a4b4994-bb7c-4ef5-9f7f-0764fde8cbe1', 'b5def30b-0648-4c0c-8602-2a8d4363b36b', '2026-03-31 15:10:57.068', '2026-04-06 01:51:58.180', 'Portable', 'portable', 'Category'),
('fa8cf262-1527-4db2-b079-a4de0baa9f84', '9be101d2-1c34-450b-a0dd-01cf009c560e', '4f4f59f5-1904-4ba3-bac6-149a991a4c64', '2026-03-31 15:13:03.723', '2026-03-31 15:13:03.723', 'Bass Series', 'bass-series', 'Sub Category');

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
  `updatedAt` datetime(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dynamicspecification`
--

INSERT INTO `dynamicspecification` (`id`, `name`, `slug`, `unit`, `priority`, `updatedBy`, `createdAt`, `updatedAt`) VALUES
('0a0bebf9-1e00-48cf-9e2e-2d986ad3f28e', 'Midrange', 'midrange', '', '999', 'admin', '2026-04-01 04:04:12.214', '2026-04-01 04:04:12.214'),
('11fb867e-f262-41c0-9901-912de9aaa12b', 'Power Consumption (Max)', 'power-consumption-max', 'W', '999', 'admin', '2026-04-01 01:33:03.294', '2026-04-01 01:33:23.716'),
('1a8d1e3e-4810-4b0c-81c8-caa5b7e501e2', 'Input Impedance', 'input-impedance', 'Ω', '999', 'admin', '2026-04-01 04:05:20.862', '2026-04-01 04:05:20.862'),
('287f448d-b86e-4981-8fbc-361f440ee3b8', 'RMS Output', 'rms-output', 'W', '999', 'admin', '2026-04-01 01:30:07.522', '2026-04-01 01:30:07.522'),
('2b402275-bb39-4d09-bc5c-aa4f3906f3f6', 'Rotary Knob', 'rotary-knob', '', '999', 'admin', '2026-04-01 04:06:26.903', '2026-04-01 04:06:26.903'),
('3652480e-57ee-4d0c-9601-0f8321ed7bfa', 'Power (No-Signal)', 'power-no-signal', 'W', '999', 'admin', '2026-04-01 01:32:53.540', '2026-04-01 01:33:18.920'),
('45ce71bd-0d75-4803-b54a-509330b280f8', 'TWS', 'tws', '', '999', 'admin', '2026-04-01 04:07:55.669', '2026-04-01 04:07:55.669'),
('53475931-30c0-4f42-bb5d-b5bc9a408c3d', 'Piezo', 'piezo', '', '999', 'admin', '2026-04-01 04:11:03.230', '2026-04-01 04:11:03.230'),
('5de2a926-69f9-4376-a697-65afff94981d', 'Bluetooth 5.3', 'bluetooth-5-3', '', '999', 'admin', '2026-04-01 04:07:50.119', '2026-04-01 04:07:50.119'),
('633de2e4-9792-4adf-8d18-1471cd7c8462', 'Sliding & Rotary', 'sliding-rotary', '', '999', 'admin', '2026-04-01 04:11:38.515', '2026-04-01 04:11:38.515'),
('65b285b2-b1b7-4797-9fe9-06c9642785a8', 'Wheel and Handle', 'wheel-and-handle', '', '999', 'admin', '2026-04-01 01:32:14.336', '2026-04-01 01:32:14.336'),
('68757736-bbeb-4a48-a383-fad6682a0c42', 'Terminals', 'terminals', '', '999', 'admin', '2026-04-01 01:32:08.287', '2026-04-01 01:32:08.287'),
('6a1f42b2-b07f-429c-9dd9-bcd44c3450bc', 'Dimension', 'dimension', 'mm', '999', 'admin', '2026-04-01 01:32:22.244', '2026-04-01 01:32:22.244'),
('713305b8-721a-479f-a563-2fc7911b4b1b', 'USB', 'usb', '', '999', 'admin', '2026-04-01 01:31:31.716', '2026-04-01 01:31:31.716'),
('77af6a05-b7ba-4c87-aad3-53eb05bc41bc', 'FM Radio', 'fm-radio', '', '999', 'admin', '2026-04-01 04:08:27.856', '2026-04-01 04:08:27.856'),
('79497a1b-8a9d-46da-b508-3c1547499c32', 'Karaoke', 'karaoke', '', '999', 'admin', '2026-04-01 01:31:49.396', '2026-04-01 01:31:49.396'),
('8e19f446-827b-44ce-acd0-839e6822d8fb', 'Frequency Response', 'frequency-response', 'Hz', '999', 'admin', '2026-04-01 04:04:30.219', '2026-04-01 04:04:30.219'),
('9777b43a-f89e-4be4-a4df-5b9601a1c3a3', 'Tuner', 'tuner', '', '999', 'admin', '2026-04-01 01:31:35.985', '2026-04-01 01:31:35.985'),
('984a4031-5eb5-4bb3-ba07-b6bcfd70ee1f', 'Mic Wireless', 'mic-wireless', '', '999', 'admin', '2026-04-01 01:31:44.800', '2026-04-01 01:31:44.800'),
('a5c86871-0d5f-4424-ae8d-05004cff7f9a', 'LINE', 'line', '', '999', 'admin', '2026-04-01 04:08:58.287', '2026-04-01 04:08:58.287'),
('ae677dfe-0b1d-4489-98ac-322829e069a4', 'Power Output', 'power-output', 'W', '999', 'admin', '2026-04-01 01:33:47.874', '2026-04-01 01:33:47.874'),
('af10eab0-4cfd-4253-9aa6-fa0c11b445a3', 'Dimension (W x D x H)', 'dimension-w-x-d-x-h', '', '999', 'admin', '2026-04-01 04:09:41.164', '2026-04-01 04:09:41.164'),
('b39bbbd2-77ef-4eff-8ccd-65ab783e49b5', 'Control', 'control', '', '999', 'admin', '2026-04-01 01:31:39.033', '2026-04-01 01:31:39.033'),
('bec7dbb1-579b-4f00-b3c0-21ee663f65c7', 'Compression Driver', 'compression-driver', '', '999', 'admin', '2026-04-01 04:13:15.945', '2026-04-01 04:13:15.945'),
('cda903e6-f854-4713-9054-ff3aa4cd75c4', 'Woofer', 'woofer', '', '999', 'admin', '2026-04-01 04:04:07.437', '2026-04-01 04:04:07.437'),
('d4a92c59-b965-4fd4-b913-b9d1982a8898', 'SD / MMC', 'sd', '', '999', 'admin', '2026-04-01 04:08:42.759', '2026-04-01 04:08:42.759'),
('dce9e0cd-8e5b-4d0a-ae57-21dc3dcefdcb', 'Flashing LED', 'flashing-led', '', '999', 'admin', '2026-04-01 01:31:58.718', '2026-04-01 01:31:58.718'),
('de29974c-62c6-4bd2-9679-153f01dedcf5', 'Inputs', 'inputs', '', '999', 'admin', '2026-04-01 04:07:06.193', '2026-04-01 04:07:06.193'),
('dfd9fadf-a260-4f80-abe4-5f5508dd414e', 'Design', 'design', '', '999', 'admin', '2026-04-02 06:13:00.137', '2026-04-02 06:13:00.137'),
('e137db07-98f3-4d79-b67c-74912b613f8e', 'Mixer', 'mixer', '', '999', 'admin', '2026-04-01 04:13:24.020', '2026-04-01 04:13:24.020'),
('f0293569-3f77-4c6a-9d7c-dc59670c9272', 'Multi Link', 'multi-link', '', '999', 'admin', '2026-04-01 01:31:27.815', '2026-04-01 01:31:27.815'),
('f1350c60-aa18-42a5-8197-abe501f67468', 'Sliding', 'sliding', '', '999', 'admin', '2026-04-01 04:11:26.747', '2026-04-01 04:11:26.747'),
('f46bf78f-7ffc-4fea-a378-fe3ee549e86e', 'Rechargeable Battery', 'rechargeable-battery', '', '999', 'admin', '2026-04-01 01:30:28.405', '2026-04-01 01:30:28.405'),
('f7fb3f06-7350-42e5-8e6d-201c312ebb7f', 'Bluetooth', 'bluetooth', '', '999', 'admin', '2026-04-01 01:31:21.722', '2026-04-01 01:31:21.722'),
('ff866824-bbfc-435a-8782-cb74a04f90c8', 'Power Source', 'power-source', '', '999', 'admin', '2026-04-01 01:32:45.272', '2026-04-01 01:32:45.272'),
('fffa2052-239f-4432-bcba-fcee8dd46f20', 'Speaker System', 'speaker-system', '', '999', 'admin', '2026-04-01 01:33:58.006', '2026-04-01 01:33:58.006');

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
  `updatedAt` datetime(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dynamicspecificationparent`
--

INSERT INTO `dynamicspecificationparent` (`id`, `name`, `slug`, `priority`, `updatedBy`, `createdAt`, `updatedAt`) VALUES
('9b97e2c1-4a01-48ac-910a-2d14cb137069', 'Spec', 'spec', '999', 'admin', '2026-04-01 01:24:30.611', '2026-04-01 01:24:30.611');

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
  `updatedAt` datetime(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dynamicspecificationsubparent`
--

INSERT INTO `dynamicspecificationsubparent` (`id`, `name`, `slug`, `priority`, `updatedBy`, `createdAt`, `updatedAt`) VALUES
('357f094f-3395-436b-86a6-e9b238b3edb5', 'Content on the box', 'content-on-the-box', '999', 'admin', '2026-04-01 04:03:35.054', '2026-04-01 04:03:35.054'),
('53cf8166-47b9-4b4c-8e7d-8ae98c62fde6', 'Drivers', 'drivers', '999', 'admin', '2026-04-01 04:03:11.451', '2026-04-01 04:03:11.451'),
('8d10811b-22f9-4e65-b6bd-de72aab10789', 'Connectivity', 'connectivity', '999', 'admin', '2026-04-01 04:03:21.403', '2026-04-01 04:03:21.403'),
('ba3f4372-afe4-4d88-a6d0-9d3ad2b73824', 'Controls', 'controls', '999', 'admin', '2026-04-01 04:06:40.102', '2026-04-01 04:06:40.102'),
('dba0d6fd-16b2-4e6c-9923-0950e2db188b', 'Microphone Control', 'microphone-control', '999', 'admin', '2026-04-01 04:06:48.309', '2026-04-01 04:06:48.309');

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
  `news_img` text NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `brandId`, `title`, `slug`, `description`, `event_date`, `updatedBy`, `createdAt`, `updatedAt`, `news_img`) VALUES
('0033fdaf-7c5b-4635-bfed-7cec6417b7f8', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'News 4', 'news-4', '<p>\"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.\"</p>', '2025-08-03 17:00:00.000', 'admin', '2026-03-31 00:19:28.958', '2026-03-31 00:19:28.958', '/uploads/newsimages/images.jpg'),
('5d3b912b-22c8-4bdf-b7af-18e6ea6c51c1', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'News 3', 'news-3', '<p><strong><em>But I must explain to you</em></strong> how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, </p><h3>but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. </h3><p>To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?</p><img class=\"max-w-full rounded-md my-4\" src=\"http://localhost:3003/uploads/newsimages/PA-101-cover-1.webp\">', '2026-04-06 17:00:00.000', 'admin', '2026-03-31 00:18:51.927', '2026-03-31 00:18:51.927', '/uploads/newsimages/images.png'),
('86ab36ef-38d9-4d15-8d6a-3693d89b36b1', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'News 1', 'news-1', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', '2026-01-21 17:00:00.000', 'admin', '2026-03-31 00:15:09.929', '2026-04-04 04:35:01.014', '/uploads/newsimages/news-placeholder.jpg'),
('934a5940-3e7c-4b4d-8ec2-1f2d2e103c76', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'News 2', 'news-2', '<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?</p><img class=\"max-w-full rounded-md my-4\" src=\"http://localhost:3003/uploads/newsimages/PA-101-cover.webp\">', '2026-02-18 17:00:00.000', 'admin', '2026-03-31 00:16:35.213', '2026-04-04 04:34:51.793', '/uploads/newsimages/newspaper-page-featuring-placeholder-text-various-sections-likely-template-draft-layout-large-bold-headings-include-news-383506067.webp');

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
  `featured_img` text NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `brandId`, `name`, `isFeatured`, `isArchived`, `createdAt`, `updatedAt`, `description`, `slug`, `updatedBy`, `featuredDesc`, `cover_img`, `new_product`, `featured_img`) VALUES
('0fc1bf44-b61d-4991-9403-0b0ecef8c791', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'PARTY FLASH 28', 1, 0, '2026-03-31 15:09:45.528', '2026-04-02 06:36:06.737', '<p><strong>Content on the box:</strong></p><ul><li><p>1 pc Party Flash 28 </p></li><li><p>1 pc Owners manual </p></li><li><p>1 pc Warranty card </p></li><li><p>1 pc Remote control </p></li><li><p>2 pc Mic Wireless</p></li></ul>', 'party-flash-28', 'admin', '', '/uploads/productcoverimage/PARTY FLASH 28.jpg.jpeg', 1, ''),
('15a9bc11-1dfb-49c5-8a06-8836d35f9921', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'MINION 61', 1, 0, '2026-03-31 15:26:53.647', '2026-04-03 11:55:33.899', '<p><strong>Content on the box:</strong></p><ul><li><p>1 set Minion 61</p></li><li><p>1 pc Owners manual</p></li><li><p>1 pc Warranty card</p></li><li><p>1 pc Remote control</p></li></ul>', 'minion-61', 'admin', '', '/uploads/productcoverimage/MINION 61.jpg.jpeg', 1, ''),
('3847c27a-f9f3-4c62-9213-8f4072e62117', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'MONSTER 212 REBORN Gen 2', 1, 0, '2026-03-31 15:21:34.765', '2026-04-02 06:15:11.185', '<p><strong>Content on the box:</strong></p><ul><li><p>1 set Monster 212 Reborn Gen2 </p></li><li><p>1 pc Owners manual </p></li><li><p>1 pc Warranty card </p></li><li><p>1 pc Remote control </p></li><li><p>2 pc Mic Wireless</p></li></ul>', 'monster-212-reborn-gen-2', 'admin', '', '/uploads/productcoverimage/MONSTER 212 GEN2.jpg.jpeg', 1, ''),
('3c1f02e6-80d0-42e3-85e2-303261105341', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'BASS BX 8020', 0, 1, '2026-03-31 15:08:13.578', '2026-04-01 04:18:13.690', '<p></p>', 'bass-bx-8020', 'admin', '', '/uploads/productcoverimage/BASS BX 8020.jpg.jpeg', 0, ''),
('4dc849b5-3796-4ba4-8878-c194953a9fa3', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'PA 81', 1, 0, '2026-03-31 15:04:21.898', '2026-04-02 06:27:06.103', '<p><strong>Content on the box:</strong></p><ul><li><p>1 set PA 81 </p></li><li><p>1 pc Owners manual </p></li><li><p>1 pc Warranty card </p></li><li><p>1 pc Remote control </p></li><li><p>2 pc Mic Wireless </p></li><li><p>2 pc Handle Mic </p></li><li><p>1 pc Charger</p></li></ul>', 'pa-81', 'admin', '', '/uploads/productcoverimage/PA81.jpg.jpeg', 0, ''),
('4e49b2aa-2eb2-4ae4-93af-7729e23fa404', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'PARTY 10', 1, 0, '2026-03-31 15:09:20.247', '2026-04-02 06:35:30.545', '<p><strong>Content on the box:</strong></p><ul><li><p>1 pc Party 10 </p></li><li><p>1 pc Owners manual </p></li><li><p>1 pc Warranty card </p></li><li><p>1 pc Remote control </p></li><li><p>2 pc Mic Wireless</p></li></ul>', 'party-10', 'admin', '', '/uploads/productcoverimage/PARTY 10.jpg.jpeg', 0, ''),
('57777133-51e7-4ae8-b0de-fee20edce0cc', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'KD PRO REBORN 215 Gen 2', 1, 0, '2026-03-31 15:19:41.843', '2026-04-02 06:19:22.471', '<p><strong>Content on the box:</strong></p><ul><li><p>1 set KD Pro 215 Reborn Gen2 </p></li><li><p>1 pc Owners manual </p></li><li><p>1 pc Warranty card </p></li><li><p>1 pc Remote control </p></li><li><p>2 pc Mic Wireless </p></li><li><p>2 pc Mic Wireless Battery </p></li><li><p>1 pc Mic Charger</p></li></ul>', 'kd-pro-reborn-215-gen-2', 'admin', '', '/uploads/productcoverimage/KD 215 REBORN GEN2.jpg.jpeg', 1, ''),
('5826462f-b495-4df7-a21f-bbf19b981a48', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'PROBEAT 212 Gen 2', 1, 0, '2026-03-31 15:11:50.776', '2026-04-02 06:38:50.646', '<p><strong>Content on the box:</strong></p><ul><li><p>1 pc Probeat 212 </p></li><li><p>1 pc Owners manual </p></li><li><p>1 pc Warranty card </p></li><li><p>1 pc Remote control </p></li><li><p>2 pc Mic Wireless</p></li></ul>', 'probeat-212-gen-2', 'admin', '', '/uploads/productcoverimage/PROBEAT 212 GEN2.jpg.jpeg', 0, ''),
('5a4b4994-bb7c-4ef5-9f7f-0764fde8cbe1', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'PARTY FLASH 12', 0, 1, '2026-03-31 15:10:37.877', '2026-04-01 04:18:38.483', '<p></p>', 'party-flash-12', 'admin', '', '/uploads/productcoverimage/PARTY FLASH 12.jpg.jpeg', 0, ''),
('6e7c0a0f-be33-4490-826c-814a59048eb5', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'PA 121 Gen 2', 1, 0, '2026-03-31 15:06:22.987', '2026-04-02 06:30:07.179', '<p><strong>Content on the box:</strong></p><ul><li><p>1 set PA 121 Gen 2 </p></li><li><p>1 pc Owners manual </p></li><li><p>1 pc Warranty card </p></li><li><p>1 pc Remote control </p></li><li><p>2 pc Mic Wireless </p></li><li><p>2 pc Handle Mic </p></li><li><p>1 pc Charger</p></li></ul>', 'pa-121-gen-2', 'admin', '', '/uploads/productcoverimage/PA 121 GEN 2.jpg.jpeg', 0, ''),
('83d4e98c-e184-4c24-978e-0f6d0aafffbc', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'PA 101 Gen 2', 1, 0, '2026-03-31 15:05:28.532', '2026-04-02 06:28:16.919', '<p><strong>Content on the box:</strong></p><ul><li><p>1 set PA 101 Gen 2 </p></li><li><p>1 pc Owners manual </p></li><li><p>1 pc Warranty card </p></li><li><p>1 pc Remote control </p></li><li><p>2 pc Mic Wireless </p></li><li><p>2 pc Handle Mic </p></li><li><p>1 pc Charger</p></li></ul>', 'pa-101-gen-2', 'admin', '', '/uploads/productcoverimage/PA 101 GEN2.jpg.jpeg', 0, ''),
('8403ceac-7570-475d-81df-82586ff41921', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'BASS 16 REBORN Gen 2', 1, 0, '2026-03-31 15:16:51.322', '2026-04-02 06:17:56.941', '<p><strong>Content on the box:</strong></p><ul><li><p>1 set Bass 16 Reborn Gen2 </p></li><li><p>1 pc Owners manual </p></li><li><p>1 pc Warranty card </p></li><li><p>1 pc Remote control</p></li></ul>', 'bass-16-reborn-gen-2', 'admin', '', '/uploads/productcoverimage/BASS 16 GEN 2.jpg.jpeg', 0, ''),
('8cf82b55-a985-4a5f-83ff-0484ffcdf5c5', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'BASS 28 REBORN Gen 2', 1, 0, '2026-03-31 15:18:18.367', '2026-04-02 06:16:26.409', '<p><strong>Content on the box:</strong></p><ul><li><p>1 set Bass 28 Reborn Gen2 </p></li><li><p>1 pc Owners manual</p></li><li><p>1 pc Warranty card </p></li><li><p>1 pc Remote control</p></li></ul>', 'bass-28-reborn-gen-2', 'admin', '', '/uploads/productcoverimage/BASS 28 GEN2.jpg.jpeg', 1, ''),
('95a8386d-0151-4ef5-9b7a-23f2988ffbd8', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'KD PRO REBORN 212 Gen 2', 1, 0, '2026-03-31 15:19:03.973', '2026-04-02 06:18:39.912', '<p><strong>Content on the box:</strong></p><ul><li><p>1 set KD Pro 212 Reborn Gen2 </p></li><li><p>1 pc Owners manual </p></li><li><p>1 pc Warranty card </p></li><li><p>1 pc Remote control </p></li><li><p>2 pc Mic Wireless </p></li><li><p>2 pc Mic Wireless Battery </p></li><li><p>1 pc Mic Charger</p></li></ul>', 'kd-pro-reborn-212-gen-2', 'admin', '', '/uploads/productcoverimage/KD 212 REBORN GEN2.jpg.jpeg', 0, ''),
('9a390596-9761-4552-b9aa-71904a27803b', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'BASS BX 1220', 0, 1, '2026-03-31 15:08:29.206', '2026-04-01 04:18:19.880', '<p></p>', 'bass-bx-1220', 'admin', '', '/uploads/productcoverimage/BASS BX 1220.jpg.jpeg', 0, ''),
('9ab06c62-3e47-4751-abf9-9c2a96d70421', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'PA 61', 1, 0, '2026-03-31 15:03:35.585', '2026-04-02 06:21:12.650', '<p><strong>Content on the box:</strong></p><ul><li><p>1 set PА 61 </p></li><li><p>1 pc Owners manual </p></li><li><p>1 pc Warranty card </p></li><li><p>1 pc Remote control </p></li><li><p>2 pc Mic Wireless </p></li><li><p>2 pc Handle Mic </p></li><li><p>1 pc Charger</p></li></ul>', 'pa-61', 'admin', '', '/uploads/productcoverimage/PA61.jpg.jpeg', 0, ''),
('9be101d2-1c34-450b-a0dd-01cf009c560e', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'BASS BX 6020', 0, 1, '2026-03-31 15:07:01.922', '2026-04-01 04:18:31.198', '<p></p>', 'bass-bx-6020', 'admin', '', '/uploads/productcoverimage/BASS BX 6020.jpg.jpeg', 0, ''),
('a4c4828a-80c1-4698-be71-892994e657df', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'BASS BX 1520', 0, 1, '2026-03-31 15:08:40.003', '2026-04-01 04:18:25.501', '<p></p>', 'bass-bx-1520', 'admin', '', '/uploads/productcoverimage/BASS BX 1520.jpg.jpeg', 0, ''),
('a8887af0-547d-42e1-8cca-779cf1841ed5', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'BASS 26 REBORN Gen 2', 1, 0, '2026-03-31 15:17:38.944', '2026-04-02 06:17:24.880', '<p><strong>Content on the box:</strong></p><ul><li><p>1 set Bass 26 Reborn Gen2 </p></li><li><p>1 pc Owners manual </p></li><li><p>1 pc Warranty card </p></li><li><p>1 pc Remote control</p></li></ul>', 'bass-26-reborn-gen-2', 'admin', '', '/uploads/productcoverimage/BASS 26 GEN2.jpg.jpeg', 0, ''),
('cd34c76d-1738-4a80-be66-0e51d7da6693', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'PARTY FLASH 15', 0, 1, '2026-03-31 15:29:00.994', '2026-04-01 04:18:05.416', '<p></p>', 'party-flash-15', 'admin', '', '/uploads/productcoverimage/PARTY FLASH 15.jpg.jpeg', 0, ''),
('d1e7baa1-7ce6-4720-9530-30b84eb97c31', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'PARTY 8', 1, 0, '2026-03-31 15:08:54.857', '2026-04-02 06:33:53.153', '<p><strong>Content on the box:</strong></p><ul><li><p>1 pc Party 8 </p></li><li><p>1 pc Owners manual </p></li><li><p>1 pc Warranty card </p></li><li><p>1 pc Remote control </p></li><li><p>2 pc Mic Wireless</p></li></ul>', 'party-8', 'admin', '', '/uploads/productcoverimage/PARTY 8.jpg.jpeg', 0, ''),
('d96ca88f-1b20-437d-973e-4a5fc0655de1', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'MONSTER 210 REBORN Gen 2', 1, 0, '2026-03-31 15:21:11.265', '2026-04-02 06:14:18.582', '<p><strong>Content on the box:</strong></p><ul><li><p>1 set Monster 210 Reborn Gen2 </p></li><li><p>1 pc Owners manual </p></li><li><p>1 pc Warranty card </p></li><li><p>1 pc Remote control </p></li><li><p>2 pc Mic Wireless</p></li></ul>', 'monster-210-reborn-gen-2', 'admin', '', '/uploads/productcoverimage/MONSTER 210 GEN2.jpg.jpeg', 0, ''),
('ee550140-1522-4320-8790-b868ce5b74f3', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'PROBEAT 210 Gen 2', 1, 0, '2026-03-31 15:11:17.175', '2026-04-02 06:38:06.814', '<p><strong>Content on the box:</strong></p><ul><li><p>1 pc Probeat 210 </p></li><li><p>1 pc Owners manual </p></li><li><p>1 pc Warranty card </p></li><li><p>1 pc Remote control </p></li><li><p>2 pc Mic Wireless</p></li></ul>', 'probeat-210-gen-2', 'admin', '', '/uploads/productcoverimage/PROBEAT 210 GEN2.jpg.jpeg', 0, ''),
('f33a3fca-2a2c-4913-8ec9-9a98946ba7b1', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'PARTY FLASH 10', 1, 0, '2026-03-31 15:10:12.551', '2026-04-02 06:37:07.149', '<p><strong>Content on the box:</strong></p><ul><li><p>1 pc Party Flash 10 </p></li><li><p>1 pc Owners manual </p></li><li><p>1 pc Warranty card </p></li><li><p>1 pc Remote control </p></li><li><p>2 pc Mic Wireless</p></li></ul>', 'party-flash-10', 'admin', '', '/uploads/productcoverimage/PARTY FLASH 10.jpg.jpeg', 0, '');

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
  `value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `specificationconnector`
--

INSERT INTO `specificationconnector` (`id`, `brandId`, `productId`, `dynamicspecificationParentId`, `dynamicspecificationSubParentId`, `dynamicspecificationId`, `notes`, `value`) VALUES
('02555f90-3bb6-495c-b91f-436b380c9ca7', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '95a8386d-0151-4ef5-9b7a-23f2988ffbd8', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', 'ff866824-bbfc-435a-8782-cb74a04f90c8', '', 'AC 220 V - 50 Hz'),
('0265018a-07a1-41f5-876f-f2a03df0fc81', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '3847c27a-f9f3-4c62-9213-8f4072e62117', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '8d10811b-22f9-4e65-b6bd-de72aab10789', '5de2a926-69f9-4376-a697-65afff94981d', '', 'Freq. Band: 2.4 GHz (2.4000 GHz - 2.4835 GHz)'),
('02738658-a355-472b-8394-cc9fe93eab99', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '83d4e98c-e184-4c24-978e-0f6d0aafffbc', '9b97e2c1-4a01-48ac-910a-2d14cb137069', 'ba3f4372-afe4-4d88-a6d0-9d3ad2b73824', '2b402275-bb39-4d09-bc5c-aa4f3906f3f6', '', 'Volume, Treble, Bass, X-Bass, Mic Priority'),
('02e41f4c-1a64-4a12-aa01-93db548c7b06', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '57777133-51e7-4ae8-b0de-fee20edce0cc', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '3652480e-57ee-4d0c-9601-0f8321ed7bfa', '', '22'),
('0436e33b-a17b-446f-86ac-8b4ef70211b0', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '8cf82b55-a985-4a5f-83ff-0484ffcdf5c5', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '53cf8166-47b9-4b4c-8e7d-8ae98c62fde6', '0a0bebf9-1e00-48cf-9e2e-2d986ad3f28e', '', '7.5 cm (3\"), 4 Ohm, 25 W'),
('050614eb-e033-499e-b6db-b7b858f03ff6', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '8cf82b55-a985-4a5f-83ff-0484ffcdf5c5', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', 'de29974c-62c6-4bd2-9679-153f01dedcf5', '', '2 x MIC Input (6.35 mm)'),
('05b0476a-f73b-4daf-a70c-cc9dfc3d95d2', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '8cf82b55-a985-4a5f-83ff-0484ffcdf5c5', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '6a1f42b2-b07f-429c-9dd9-bcd44c3450bc', 'W x D x H', '289.3 x 247 x 900'),
('066b6272-4898-4b2e-bc42-92c9477c8cf4', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '4e49b2aa-2eb2-4ae4-93af-7729e23fa404', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '8d10811b-22f9-4e65-b6bd-de72aab10789', '713305b8-721a-479f-a563-2fc7911b4b1b', '', 'MP3 Playback'),
('066c4285-d7c8-4650-869b-79a0486b83e3', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '4e49b2aa-2eb2-4ae4-93af-7729e23fa404', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '65b285b2-b1b7-4797-9fe9-06c9642785a8', '', 'Handle & Wheel'),
('06ebfc3f-d15d-4df8-b6d1-2c7139f41ba9', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '5826462f-b495-4df7-a21f-bbf19b981a48', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '1a8d1e3e-4810-4b0c-81c8-caa5b7e501e2', '', '50000'),
('076840ac-7cf6-4fef-8064-3e67b0e11625', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'a8887af0-547d-42e1-8cca-779cf1841ed5', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '68757736-bbeb-4a48-a383-fad6682a0c42', '', 'Multi Input'),
('093f7f26-7339-472f-9a76-5392569a85fe', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'f33a3fca-2a2c-4913-8ec9-9a98946ba7b1', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', 'fffa2052-239f-4432-bcba-fcee8dd46f20', '', '3-way speaker'),
('09cee7f9-b6cd-4892-95c6-6aed1abbcda8', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '0fc1bf44-b61d-4991-9403-0b0ecef8c791', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '8d10811b-22f9-4e65-b6bd-de72aab10789', 'a5c86871-0d5f-4424-ae8d-05004cff7f9a', '', 'RCA 2-pin L/R type'),
('09d41cfd-8b25-4771-bcea-708799ee42ad', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'd1e7baa1-7ce6-4720-9530-30b84eb97c31', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '8d10811b-22f9-4e65-b6bd-de72aab10789', '5de2a926-69f9-4376-a697-65afff94981d', '', 'Freq. Band : 2.4 GHz (2.4000 GHz - 2.4835 GHz)'),
('0a291ddb-ee8e-47f9-8ca5-5d39adcc3f22', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'd1e7baa1-7ce6-4720-9530-30b84eb97c31', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', 'ae677dfe-0b1d-4489-98ac-322829e069a4', 'RMS', '40'),
('0b0ab1b9-02ee-41b0-b16d-24a50861b187', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '4dc849b5-3796-4ba4-8878-c194953a9fa3', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '8d10811b-22f9-4e65-b6bd-de72aab10789', '5de2a926-69f9-4376-a697-65afff94981d', '', 'Freq. Band : 2.4 GHz (2.4000 GHz - 2.4835 GHz)'),
('0b39732c-b799-446a-b915-f90cd2e7ec0d', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '95a8386d-0151-4ef5-9b7a-23f2988ffbd8', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '8d10811b-22f9-4e65-b6bd-de72aab10789', 'd4a92c59-b965-4fd4-b913-b9d1982a8898', '', 'MP3 Playback'),
('0c0ce99c-9e04-4aef-a0ac-deefe4a771ba', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '8cf82b55-a985-4a5f-83ff-0484ffcdf5c5', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', 'fffa2052-239f-4432-bcba-fcee8dd46f20', '', '3-way speaker'),
('0d5a3389-6673-4ca8-ab1f-fcfcf0e23646', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '15a9bc11-1dfb-49c5-8a06-8836d35f9921', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', 'ff866824-bbfc-435a-8782-cb74a04f90c8', '', 'AC 220 V - 50 Hz'),
('0df9d019-7ae6-4faa-b1c4-8752421494c9', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '0fc1bf44-b61d-4991-9403-0b0ecef8c791', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '8e19f446-827b-44ce-acd0-839e6822d8fb', '', '25 - 20000'),
('0eb3e82b-92f0-40d1-b5e7-3eba06b9adbf', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'd96ca88f-1b20-437d-973e-4a5fc0655de1', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '6a1f42b2-b07f-429c-9dd9-bcd44c3450bc', 'W x D x H', '298 x 296 x 1052'),
('0ec02720-19a1-4cbb-90d2-2f6887cbc88b', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '95a8386d-0151-4ef5-9b7a-23f2988ffbd8', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '68757736-bbeb-4a48-a383-fad6682a0c42', '', 'Multi Input'),
('0eec2e6c-4a7b-4763-8c2f-b75eb950c366', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '0fc1bf44-b61d-4991-9403-0b0ecef8c791', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '3652480e-57ee-4d0c-9601-0f8321ed7bfa', '', '22'),
('0f8e98b0-92d1-4a06-8294-6126509d0bdd', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '0fc1bf44-b61d-4991-9403-0b0ecef8c791', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '53cf8166-47b9-4b4c-8e7d-8ae98c62fde6', '53475931-30c0-4f42-bb5d-b5bc9a408c3d', '', '2.5 cm (1\"), 25 W'),
('0fe716a5-948b-471e-99d4-18e87c232eb6', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '0fc1bf44-b61d-4991-9403-0b0ecef8c791', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '65b285b2-b1b7-4797-9fe9-06c9642785a8', '', 'Handle & Wheel'),
('1035d356-c0e3-4740-8239-23c67999ad5e', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '0fc1bf44-b61d-4991-9403-0b0ecef8c791', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', 'ff866824-bbfc-435a-8782-cb74a04f90c8', '', 'AC 220 V - 50 Hz'),
('10d09825-53db-47ed-926f-e9c5ecba3f64', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'd1e7baa1-7ce6-4720-9530-30b84eb97c31', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '1a8d1e3e-4810-4b0c-81c8-caa5b7e501e2', '', '50000'),
('1102ed54-18df-47b8-b6c6-1275f55af68c', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '5826462f-b495-4df7-a21f-bbf19b981a48', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', 'de29974c-62c6-4bd2-9679-153f01dedcf5', '', 'Guitar / Keyboard & 2 x MIC inputs (6.35 mm)'),
('114eeb3d-b835-4e3f-b7b6-b87469cdb2d2', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '15a9bc11-1dfb-49c5-8a06-8836d35f9921', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '1a8d1e3e-4810-4b0c-81c8-caa5b7e501e2', '', '50000'),
('11dbceb0-964f-4922-be39-dac1d207031e', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '4e49b2aa-2eb2-4ae4-93af-7729e23fa404', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '1a8d1e3e-4810-4b0c-81c8-caa5b7e501e2', '', '50000'),
('1303b18a-5bdf-446b-afd6-35d3645f5d47', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '6e7c0a0f-be33-4490-826c-814a59048eb5', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '1a8d1e3e-4810-4b0c-81c8-caa5b7e501e2', '', '50000'),
('139d5d38-c331-47de-9548-122bf47d9ad3', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '95a8386d-0151-4ef5-9b7a-23f2988ffbd8', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', 'de29974c-62c6-4bd2-9679-153f01dedcf5', '', '2 x MIC, Keyboard & Guitar Input (6.35 mm)'),
('13cfd911-f5fa-42eb-81da-c37fdb064767', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '15a9bc11-1dfb-49c5-8a06-8836d35f9921', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '6a1f42b2-b07f-429c-9dd9-bcd44c3450bc', 'W x D x H', '207 x 270 x 398'),
('14258b28-e7f5-4fc5-93ba-c1586b34837f', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '9ab06c62-3e47-4751-abf9-9c2a96d70421', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '8d10811b-22f9-4e65-b6bd-de72aab10789', '713305b8-721a-479f-a563-2fc7911b4b1b', '', 'MP3 Playback'),
('144c3c7e-0921-4b38-bb0e-2e2bb20a33e8', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'a8887af0-547d-42e1-8cca-779cf1841ed5', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '8d10811b-22f9-4e65-b6bd-de72aab10789', 'a5c86871-0d5f-4424-ae8d-05004cff7f9a', '', 'RCA 2-pin L/R type'),
('15969daf-14c6-4e52-b07f-6603193f6de7', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '15a9bc11-1dfb-49c5-8a06-8836d35f9921', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '53cf8166-47b9-4b4c-8e7d-8ae98c62fde6', '53475931-30c0-4f42-bb5d-b5bc9a408c3d', '', '2.5 cm (1\"), 25 W'),
('15a5ee03-4a44-4b0b-994e-3728a28f1950', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'a8887af0-547d-42e1-8cca-779cf1841ed5', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '8e19f446-827b-44ce-acd0-839e6822d8fb', '', '20 - 20000'),
('15a9f445-8687-49e6-a44a-fd7a19519fc4', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '8cf82b55-a985-4a5f-83ff-0484ffcdf5c5', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', 'dfd9fadf-a260-4f80-abe4-5f5508dd414e', '', 'Luxury'),
('16376529-9d57-43a6-a28c-e0899933714d', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '0fc1bf44-b61d-4991-9403-0b0ecef8c791', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '8d10811b-22f9-4e65-b6bd-de72aab10789', '5de2a926-69f9-4376-a697-65afff94981d', '', 'Freq. Band: 2.4 GHz (2.4000 GHz - 2.4835 GHz)'),
('168b7613-04ad-4a02-8749-e45b0065e8ee', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '15a9bc11-1dfb-49c5-8a06-8836d35f9921', '9b97e2c1-4a01-48ac-910a-2d14cb137069', 'dba0d6fd-16b2-4e6c-9923-0950e2db188b', '2b402275-bb39-4d09-bc5c-aa4f3906f3f6', '', 'MIC VOLUME, Echo'),
('1773d727-64e7-4ae2-908c-103cb6c360a1', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'd1e7baa1-7ce6-4720-9530-30b84eb97c31', '9b97e2c1-4a01-48ac-910a-2d14cb137069', 'ba3f4372-afe4-4d88-a6d0-9d3ad2b73824', '2b402275-bb39-4d09-bc5c-aa4f3906f3f6', '', 'Volume, Treble, Bass, X-Bass'),
('182bd7bf-f9d7-4dd8-8912-a72132a34616', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '4dc849b5-3796-4ba4-8878-c194953a9fa3', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '6a1f42b2-b07f-429c-9dd9-bcd44c3450bc', 'W x D x H', '304 x 250 x 370'),
('18e9be41-682b-4dac-b1e9-f4240e1b63df', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '6e7c0a0f-be33-4490-826c-814a59048eb5', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', 'f46bf78f-7ffc-4fea-a378-fe3ee549e86e', '', 'Yes'),
('19ee5234-75ec-4cbd-a46d-55c9ec79fda1', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '0fc1bf44-b61d-4991-9403-0b0ecef8c791', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '53cf8166-47b9-4b4c-8e7d-8ae98c62fde6', 'cda903e6-f854-4713-9054-ff3aa4cd75c4', '', '2 x 20.3 cm (8\"), 4 Ohm, 80 W'),
('1a87a64f-dbdf-46a4-abbf-d22a42f7453b', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'ee550140-1522-4320-8790-b868ce5b74f3', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '1a8d1e3e-4810-4b0c-81c8-caa5b7e501e2', '', '50000'),
('1b0eeba6-7057-4239-becd-c871e9bda651', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '4dc849b5-3796-4ba4-8878-c194953a9fa3', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', 'de29974c-62c6-4bd2-9679-153f01dedcf5', '', 'Guitar & 2 x MIC inputs (6.35 mm)'),
('1b9d0225-0f52-43a7-8882-20ab94d331d9', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '5826462f-b495-4df7-a21f-bbf19b981a48', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', 'ae677dfe-0b1d-4489-98ac-322829e069a4', 'RMS', '2 x 60'),
('1bc49940-aa90-4702-95f5-5f4318f61463', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'f33a3fca-2a2c-4913-8ec9-9a98946ba7b1', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '68757736-bbeb-4a48-a383-fad6682a0c42', '', 'Multi Input'),
('1c82421f-6be5-4824-b2d2-0d646463dcfa', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '6e7c0a0f-be33-4490-826c-814a59048eb5', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '53cf8166-47b9-4b4c-8e7d-8ae98c62fde6', '0a0bebf9-1e00-48cf-9e2e-2d986ad3f28e', '', '7.5 cm (3\"), 4 Ohm 30 W'),
('1da1951b-fa0f-4103-a49a-a9f23c386c65', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'ee550140-1522-4320-8790-b868ce5b74f3', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '3652480e-57ee-4d0c-9601-0f8321ed7bfa', '', '22'),
('1e049a58-664e-4694-bb09-56d67dec6e88', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '57777133-51e7-4ae8-b0de-fee20edce0cc', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', 'de29974c-62c6-4bd2-9679-153f01dedcf5', '', '2 x MIC, Keyboard & Guitar Input (6.35 mm)'),
('1ec4fd39-fce5-4b93-a56b-d18143f680ba', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '8cf82b55-a985-4a5f-83ff-0484ffcdf5c5', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '3652480e-57ee-4d0c-9601-0f8321ed7bfa', '', '22'),
('1f011510-0aee-42b2-8c80-1ec0b4037358', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'd1e7baa1-7ce6-4720-9530-30b84eb97c31', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', 'f46bf78f-7ffc-4fea-a378-fe3ee549e86e', '', 'Yes'),
('1f4823b4-165d-4b93-b849-1f09e371b1c0', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '95a8386d-0151-4ef5-9b7a-23f2988ffbd8', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '1a8d1e3e-4810-4b0c-81c8-caa5b7e501e2', '', '50000'),
('1fa087c3-c4a1-4aee-a64f-7469d1bb5d84', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'f33a3fca-2a2c-4913-8ec9-9a98946ba7b1', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '8d10811b-22f9-4e65-b6bd-de72aab10789', 'a5c86871-0d5f-4424-ae8d-05004cff7f9a', '', 'RCA 2-pin L/R type'),
('2208a609-5a8a-4e18-ae27-9c30782eb7f0', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'f33a3fca-2a2c-4913-8ec9-9a98946ba7b1', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '53cf8166-47b9-4b4c-8e7d-8ae98c62fde6', 'cda903e6-f854-4713-9054-ff3aa4cd75c4', '', '2 x 25.4 cm (10\"), 4 Ohm, 80 W'),
('22de3f8d-743c-4135-87cc-867611dcb699', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'd96ca88f-1b20-437d-973e-4a5fc0655de1', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', 'dfd9fadf-a260-4f80-abe4-5f5508dd414e', '', 'Futuristic'),
('230ff38c-3e4a-40bb-93d5-7189a3d05835', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '0fc1bf44-b61d-4991-9403-0b0ecef8c791', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '8d10811b-22f9-4e65-b6bd-de72aab10789', 'd4a92c59-b965-4fd4-b913-b9d1982a8898', '', 'MP3 Playback'),
('24c0e9a9-bb67-4f1d-b846-884736a09b8a', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '15a9bc11-1dfb-49c5-8a06-8836d35f9921', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '11fb867e-f262-41c0-9901-912de9aaa12b', '', '100'),
('24dec752-a9e9-4d97-a3a5-b79759a39b98', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '4dc849b5-3796-4ba4-8878-c194953a9fa3', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', 'dce9e0cd-8e5b-4d0a-ae57-21dc3dcefdcb', '', 'No'),
('250320c6-a911-4d88-8b0d-3a3e26360d2c', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '8cf82b55-a985-4a5f-83ff-0484ffcdf5c5', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '8d10811b-22f9-4e65-b6bd-de72aab10789', '77af6a05-b7ba-4c87-aad3-53eb05bc41bc', '', 'Freq. Range: 87.50 MHz - 108.00 MHz'),
('26407608-4650-4ab7-b5d2-f17815031192', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '95a8386d-0151-4ef5-9b7a-23f2988ffbd8', '9b97e2c1-4a01-48ac-910a-2d14cb137069', 'dba0d6fd-16b2-4e6c-9923-0950e2db188b', 'e137db07-98f3-4d79-b67c-74912b613f8e', '', 'MIC VOLUME, Echo, Wireless Volume, Repeat, Delay'),
('27209798-ace3-4d5d-8466-a8879a3adc63', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '8cf82b55-a985-4a5f-83ff-0484ffcdf5c5', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '65b285b2-b1b7-4797-9fe9-06c9642785a8', '', 'No'),
('28c6a522-0411-476c-aa52-71cdbf5dbb0b', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '6e7c0a0f-be33-4490-826c-814a59048eb5', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '8d10811b-22f9-4e65-b6bd-de72aab10789', '5de2a926-69f9-4376-a697-65afff94981d', '', 'Freq. Band: 2.4 GHz (2.4000 GHz - 2.4835 GHz)'),
('28f4888e-5931-4687-8ff5-05f485ec1f53', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '57777133-51e7-4ae8-b0de-fee20edce0cc', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '1a8d1e3e-4810-4b0c-81c8-caa5b7e501e2', '', '50000'),
('297b8f74-334c-4487-a45b-dc3cb7958307', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '5826462f-b495-4df7-a21f-bbf19b981a48', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '53cf8166-47b9-4b4c-8e7d-8ae98c62fde6', '0a0bebf9-1e00-48cf-9e2e-2d986ad3f28e', '', '7.6 cm (3\"), 4 Ohm 30 W'),
('29d1522f-5a8a-4d93-9a46-a657f4c2372e', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '5826462f-b495-4df7-a21f-bbf19b981a48', '9b97e2c1-4a01-48ac-910a-2d14cb137069', 'dba0d6fd-16b2-4e6c-9923-0950e2db188b', '633de2e4-9792-4adf-8d18-1471cd7c8462', '', 'Mic Priority, Volume, Echo, Reverb'),
('29e101b6-c710-4a72-b368-05e7185ce172', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '6e7c0a0f-be33-4490-826c-814a59048eb5', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', 'ff866824-bbfc-435a-8782-cb74a04f90c8', '', 'AC 100- 240V~ 50Hz & DC 13.5V, 3A'),
('2a1a32f0-b9fa-43ef-bea6-64910357e0b7', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '5826462f-b495-4df7-a21f-bbf19b981a48', '9b97e2c1-4a01-48ac-910a-2d14cb137069', 'ba3f4372-afe4-4d88-a6d0-9d3ad2b73824', 'f1350c60-aa18-42a5-8197-abe501f67468', '', 'Volume, Treble, Bass, X-Bass'),
('2adc5055-e839-41dd-867f-ec6716220cce', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'a8887af0-547d-42e1-8cca-779cf1841ed5', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '53cf8166-47b9-4b4c-8e7d-8ae98c62fde6', '0a0bebf9-1e00-48cf-9e2e-2d986ad3f28e', '', '7.5 cm (3\"), 4 Ohm, 25 W'),
('2ba85eac-5cc8-442c-997b-64feb7e54d86', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '4e49b2aa-2eb2-4ae4-93af-7729e23fa404', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', 'fffa2052-239f-4432-bcba-fcee8dd46f20', '', '3-way speaker'),
('2c2d42b1-28a8-4471-9f5d-6dd7cb8a2a49', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'd1e7baa1-7ce6-4720-9530-30b84eb97c31', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', 'fffa2052-239f-4432-bcba-fcee8dd46f20', '', '3-way speaker'),
('2c73343a-ce97-47ea-a9c4-48b287222f8e', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '4dc849b5-3796-4ba4-8878-c194953a9fa3', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '53cf8166-47b9-4b4c-8e7d-8ae98c62fde6', 'cda903e6-f854-4713-9054-ff3aa4cd75c4', '', '20.3 cm (8\"), 4 Ohm, 35 W'),
('2ce7cb3c-6e6f-417a-b1ec-80072af9d2d1', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'd96ca88f-1b20-437d-973e-4a5fc0655de1', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '8d10811b-22f9-4e65-b6bd-de72aab10789', '5de2a926-69f9-4376-a697-65afff94981d', '', 'Freq. Band: 2.4 GHz (2.4000 GHz - 2.4835 GHz)'),
('2d419718-6df0-4dd2-a6ea-884aa85879cd', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'ee550140-1522-4320-8790-b868ce5b74f3', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '8d10811b-22f9-4e65-b6bd-de72aab10789', 'd4a92c59-b965-4fd4-b913-b9d1982a8898', '', 'MP3 Playback'),
('2e31d2bd-0160-4b0c-a2e9-b68bcaa60c2c', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '8403ceac-7570-475d-81df-82586ff41921', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '8d10811b-22f9-4e65-b6bd-de72aab10789', '77af6a05-b7ba-4c87-aad3-53eb05bc41bc', '', 'Freq. Range: 87.50 MHz - 108.00 MHz'),
('2ee68c1a-84c2-451a-b269-e2f357b9b213', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '3847c27a-f9f3-4c62-9213-8f4072e62117', '9b97e2c1-4a01-48ac-910a-2d14cb137069', 'ba3f4372-afe4-4d88-a6d0-9d3ad2b73824', 'f1350c60-aa18-42a5-8197-abe501f67468', '', 'Volume, Treble, Bass, X-Bass'),
('2fb627e7-ec73-4195-ba76-f3d022338eb4', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '95a8386d-0151-4ef5-9b7a-23f2988ffbd8', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '11fb867e-f262-41c0-9901-912de9aaa12b', '', '280'),
('2fb99846-8a5b-4d83-9689-16031f1e97cc', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '0fc1bf44-b61d-4991-9403-0b0ecef8c791', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', 'de29974c-62c6-4bd2-9679-153f01dedcf5', '', '2 x MIC inputs (6.35 mm)'),
('2fdaf3dc-9dde-48ee-b975-335d01f22968', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '8cf82b55-a985-4a5f-83ff-0484ffcdf5c5', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '8e19f446-827b-44ce-acd0-839e6822d8fb', '', '20 - 20000'),
('30774ada-bc2d-4c80-b531-b224bf07fa64', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '57777133-51e7-4ae8-b0de-fee20edce0cc', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '8d10811b-22f9-4e65-b6bd-de72aab10789', '77af6a05-b7ba-4c87-aad3-53eb05bc41bc', '', 'Freq. Range: 87.50 MHz - 108.00 MHz'),
('30f03983-9423-4f65-bf01-a7ad972a64fb', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '83d4e98c-e184-4c24-978e-0f6d0aafffbc', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '8d10811b-22f9-4e65-b6bd-de72aab10789', '713305b8-721a-479f-a563-2fc7911b4b1b', '', 'MP3 Playback'),
('310e1e84-784f-40a8-b6a5-1af3344b8d2c', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '8cf82b55-a985-4a5f-83ff-0484ffcdf5c5', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '8d10811b-22f9-4e65-b6bd-de72aab10789', '45ce71bd-0d75-4803-b54a-509330b280f8', '', '*BT connection between 2 units'),
('311052ae-52e3-46c4-9422-7f168bf9a4f6', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '4e49b2aa-2eb2-4ae4-93af-7729e23fa404', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '53cf8166-47b9-4b4c-8e7d-8ae98c62fde6', 'cda903e6-f854-4713-9054-ff3aa4cd75c4', '', '2 x 25.4 cm (10\"), 4 Ohm, 80 W'),
('31ee405f-8372-47fb-a868-bdfe2e66f193', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '6e7c0a0f-be33-4490-826c-814a59048eb5', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '8d10811b-22f9-4e65-b6bd-de72aab10789', '77af6a05-b7ba-4c87-aad3-53eb05bc41bc', '', 'Freq. Range: 87.50 MHz - 108.00 MHz'),
('32433f89-d9db-40a3-bc21-a740830f8f32', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '4e49b2aa-2eb2-4ae4-93af-7729e23fa404', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '8d10811b-22f9-4e65-b6bd-de72aab10789', '45ce71bd-0d75-4803-b54a-509330b280f8', '', '*BT connection between 2 units'),
('32e85574-2c62-40e3-9e40-b3bc755d0286', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '5826462f-b495-4df7-a21f-bbf19b981a48', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '8d10811b-22f9-4e65-b6bd-de72aab10789', 'd4a92c59-b965-4fd4-b913-b9d1982a8898', '', 'MP3 Playback'),
('33822ecf-c2d2-4767-800f-4ddc120e17f7', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '8403ceac-7570-475d-81df-82586ff41921', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '8d10811b-22f9-4e65-b6bd-de72aab10789', 'd4a92c59-b965-4fd4-b913-b9d1982a8898', '', 'MP3 Playback'),
('34cdaec7-40cc-4711-bedb-56e7a6f45136', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'd1e7baa1-7ce6-4720-9530-30b84eb97c31', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '6a1f42b2-b07f-429c-9dd9-bcd44c3450bc', 'W x D x H', '330 x 330 x 760'),
('35bc27b8-0324-400a-8f3e-0fc33bb44d28', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'd96ca88f-1b20-437d-973e-4a5fc0655de1', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', 'fffa2052-239f-4432-bcba-fcee8dd46f20', '', '3-way speaker'),
('35df0356-a0ee-41fc-8cdd-7be74755502f', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '57777133-51e7-4ae8-b0de-fee20edce0cc', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', 'fffa2052-239f-4432-bcba-fcee8dd46f20', '', '2-way speaker'),
('366583c1-1eb8-4649-bf3e-dd3932899d00', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'd96ca88f-1b20-437d-973e-4a5fc0655de1', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', 'ae677dfe-0b1d-4489-98ac-322829e069a4', 'RMS', '2 x 50'),
('37317236-dfd8-4402-ae62-eb82fac814c6', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '0fc1bf44-b61d-4991-9403-0b0ecef8c791', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '8d10811b-22f9-4e65-b6bd-de72aab10789', '77af6a05-b7ba-4c87-aad3-53eb05bc41bc', '', 'Freq. Range: 87.50 MHz - 108.00 MHz'),
('38ecd729-094d-4c14-8d0f-a5ece51edb80', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'a8887af0-547d-42e1-8cca-779cf1841ed5', '9b97e2c1-4a01-48ac-910a-2d14cb137069', 'dba0d6fd-16b2-4e6c-9923-0950e2db188b', '2b402275-bb39-4d09-bc5c-aa4f3906f3f6', '', 'MIC Volume, Echo'),
('39282218-f59e-432e-b531-e282d284ecc0', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '57777133-51e7-4ae8-b0de-fee20edce0cc', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '6a1f42b2-b07f-429c-9dd9-bcd44c3450bc', 'W x D x H', '466 x 425 x 1078'),
('393dc60b-65a8-4d97-960e-d6c0d963124d', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'f33a3fca-2a2c-4913-8ec9-9a98946ba7b1', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '53cf8166-47b9-4b4c-8e7d-8ae98c62fde6', '0a0bebf9-1e00-48cf-9e2e-2d986ad3f28e', '', '7.6 cm (3\"), 4 Ohm 30 W'),
('394936b7-7704-4c1d-a413-9ed06e7d4b0e', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '9ab06c62-3e47-4751-abf9-9c2a96d70421', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '53cf8166-47b9-4b4c-8e7d-8ae98c62fde6', '0a0bebf9-1e00-48cf-9e2e-2d986ad3f28e', '', '7.5 cm (3\"), 4 Ohm 30 W'),
('39e26cd7-b39b-475a-8737-d1f80c5cf252', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '0fc1bf44-b61d-4991-9403-0b0ecef8c791', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '8d10811b-22f9-4e65-b6bd-de72aab10789', '713305b8-721a-479f-a563-2fc7911b4b1b', '', 'MP3 Playback'),
('3a2fa9b4-c3aa-4c79-8ba8-061739107774', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'f33a3fca-2a2c-4913-8ec9-9a98946ba7b1', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '8d10811b-22f9-4e65-b6bd-de72aab10789', '77af6a05-b7ba-4c87-aad3-53eb05bc41bc', '', 'Freq. Range: 87.50 MHz - 108.00 MHz'),
('3c0cafbb-34e4-4b81-bae0-fbcfd932e6c0', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '3847c27a-f9f3-4c62-9213-8f4072e62117', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '8d10811b-22f9-4e65-b6bd-de72aab10789', '713305b8-721a-479f-a563-2fc7911b4b1b', '', 'MP3 Playback'),
('3c34c886-34bc-45a1-901d-2bd94abb3202', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'd96ca88f-1b20-437d-973e-4a5fc0655de1', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', 'ff866824-bbfc-435a-8782-cb74a04f90c8', '', 'AC 220 V- 50 Hz'),
('3cbc9583-7fd7-435c-8cca-eae6c3f7811f', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '95a8386d-0151-4ef5-9b7a-23f2988ffbd8', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '8d10811b-22f9-4e65-b6bd-de72aab10789', '45ce71bd-0d75-4803-b54a-509330b280f8', '', '*BT connection between 2 units'),
('3cf054c1-851b-4106-a2e6-fa494af3afa3', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '4dc849b5-3796-4ba4-8878-c194953a9fa3', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '8d10811b-22f9-4e65-b6bd-de72aab10789', 'd4a92c59-b965-4fd4-b913-b9d1982a8898', '', 'MP3 Playback'),
('3d1bc198-b22b-44c7-99af-6d3dd6ae81f3', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '8403ceac-7570-475d-81df-82586ff41921', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '53cf8166-47b9-4b4c-8e7d-8ae98c62fde6', '0a0bebf9-1e00-48cf-9e2e-2d986ad3f28e', '', '7.5 cm (3\"), 4 Ohm, 25 W'),
('3ddcf99d-d19a-4112-a44c-df15920af134', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '83d4e98c-e184-4c24-978e-0f6d0aafffbc', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '6a1f42b2-b07f-429c-9dd9-bcd44c3450bc', 'W x D x H', '380 x 298 x 551'),
('3e60e2de-522d-4dc5-8d45-91adf2c637dd', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '6e7c0a0f-be33-4490-826c-814a59048eb5', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '68757736-bbeb-4a48-a383-fad6682a0c42', '', 'Multi Input'),
('3e6af13b-ecd2-44a7-ae8c-f3caa14ccf87', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '4e49b2aa-2eb2-4ae4-93af-7729e23fa404', '9b97e2c1-4a01-48ac-910a-2d14cb137069', 'dba0d6fd-16b2-4e6c-9923-0950e2db188b', '2b402275-bb39-4d09-bc5c-aa4f3906f3f6', '', 'MIC VOLUME, Echo'),
('3eb87d0b-a724-42a7-b696-26532a793deb', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'f33a3fca-2a2c-4913-8ec9-9a98946ba7b1', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '8d10811b-22f9-4e65-b6bd-de72aab10789', '713305b8-721a-479f-a563-2fc7911b4b1b', '', 'MP3 Playback'),
('3ef24f58-d8f9-4f9d-b097-1592ee66f1c4', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '83d4e98c-e184-4c24-978e-0f6d0aafffbc', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '53cf8166-47b9-4b4c-8e7d-8ae98c62fde6', 'cda903e6-f854-4713-9054-ff3aa4cd75c4', '', '25.4 cm (10\"), 4 Ohm, 30 W'),
('3f7d3f4c-084d-488a-9c7c-9f156ca22b86', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '3847c27a-f9f3-4c62-9213-8f4072e62117', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '53cf8166-47b9-4b4c-8e7d-8ae98c62fde6', '53475931-30c0-4f42-bb5d-b5bc9a408c3d', '', '2.5 cm (1\"), 25 W'),
('4010926b-816b-4583-9327-af9acf5da1da', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'd1e7baa1-7ce6-4720-9530-30b84eb97c31', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '53cf8166-47b9-4b4c-8e7d-8ae98c62fde6', 'cda903e6-f854-4713-9054-ff3aa4cd75c4', '', '2 x 20.3 cm (8\"), 4 Ohm, 80 W'),
('41903d81-38cc-4e61-a08d-05b11851ee78', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '4dc849b5-3796-4ba4-8878-c194953a9fa3', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', 'ae677dfe-0b1d-4489-98ac-322829e069a4', 'RMS', '70'),
('442bf995-b7bf-495d-80f3-9caba28e23f8', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '15a9bc11-1dfb-49c5-8a06-8836d35f9921', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', 'fffa2052-239f-4432-bcba-fcee8dd46f20', '', '2-way speaker'),
('44ec69b5-c249-4675-bcc2-010f309763fe', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'f33a3fca-2a2c-4913-8ec9-9a98946ba7b1', '9b97e2c1-4a01-48ac-910a-2d14cb137069', 'ba3f4372-afe4-4d88-a6d0-9d3ad2b73824', '2b402275-bb39-4d09-bc5c-aa4f3906f3f6', '', 'Volume, Treble, Bass, X-Bass'),
('451fe7f0-4670-48fe-840e-43fd726418e1', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '4dc849b5-3796-4ba4-8878-c194953a9fa3', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '8d10811b-22f9-4e65-b6bd-de72aab10789', 'a5c86871-0d5f-4424-ae8d-05004cff7f9a', '', 'RCA 2-pin L/R type'),
('45e3ca60-b7f5-4a59-af89-4050de3b8c97', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '95a8386d-0151-4ef5-9b7a-23f2988ffbd8', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '6a1f42b2-b07f-429c-9dd9-bcd44c3450bc', 'W x D x H', '406 x 426 x 984'),
('45faa42b-00ac-4b6b-ba77-831843605777', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '8403ceac-7570-475d-81df-82586ff41921', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '65b285b2-b1b7-4797-9fe9-06c9642785a8', '', 'No'),
('483ea8bc-e2b3-418b-955a-682804eee1be', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '4e49b2aa-2eb2-4ae4-93af-7729e23fa404', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '6a1f42b2-b07f-429c-9dd9-bcd44c3450bc', 'W x D x H', '370 x 340 x 880'),
('48bc9054-9171-4744-9cab-46e53a852199', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '6e7c0a0f-be33-4490-826c-814a59048eb5', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '8d10811b-22f9-4e65-b6bd-de72aab10789', '713305b8-721a-479f-a563-2fc7911b4b1b', '', 'MP3 Playback'),
('48f91b27-124b-487d-88ff-1ecf1c5c423b', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '83d4e98c-e184-4c24-978e-0f6d0aafffbc', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '65b285b2-b1b7-4797-9fe9-06c9642785a8', '', 'Wheel & Handle'),
('496b48ba-171b-4431-9aed-e6cafb195937', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'f33a3fca-2a2c-4913-8ec9-9a98946ba7b1', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '8d10811b-22f9-4e65-b6bd-de72aab10789', '5de2a926-69f9-4376-a697-65afff94981d', '', 'Freq. Band: 2.4 GHz (2.4000 GHz - 2.4835 GHz)'),
('49a2588b-0ba9-408e-8262-e4ef42a3cafd', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'a8887af0-547d-42e1-8cca-779cf1841ed5', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '3652480e-57ee-4d0c-9601-0f8321ed7bfa', '', '22'),
('4b96bf8f-0d44-4529-bc4f-5b526750fb80', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '8403ceac-7570-475d-81df-82586ff41921', '9b97e2c1-4a01-48ac-910a-2d14cb137069', 'ba3f4372-afe4-4d88-a6d0-9d3ad2b73824', '2b402275-bb39-4d09-bc5c-aa4f3906f3f6', '', 'X-BASS, BASS, TREBLE, VOLUME'),
('4ba72ede-35d2-4e34-9c31-ac13e2a318ca', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '83d4e98c-e184-4c24-978e-0f6d0aafffbc', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', 'de29974c-62c6-4bd2-9679-153f01dedcf5', '', 'Guitar & 2 x MIC inputs (6.35 mm)'),
('4cbb06d4-cd68-48b1-825b-1f477677e13d', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '6e7c0a0f-be33-4490-826c-814a59048eb5', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '11fb867e-f262-41c0-9901-912de9aaa12b', '', '70'),
('4d1a9015-2d1e-4155-8982-e9b4225678fa', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '0fc1bf44-b61d-4991-9403-0b0ecef8c791', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', 'f46bf78f-7ffc-4fea-a378-fe3ee549e86e', '', 'Yes'),
('4e9b0980-5e61-4d7c-97f9-c6ac0deb186a', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'ee550140-1522-4320-8790-b868ce5b74f3', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '65b285b2-b1b7-4797-9fe9-06c9642785a8', '', 'Wheel & Handle'),
('4eb0e71a-2b1d-48d1-ae62-9a1fddd7265f', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'ee550140-1522-4320-8790-b868ce5b74f3', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '8d10811b-22f9-4e65-b6bd-de72aab10789', '713305b8-721a-479f-a563-2fc7911b4b1b', '', 'MP3 Playback'),
('4ebc8ad2-47da-4ebc-8756-cebf7eddbd96', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '15a9bc11-1dfb-49c5-8a06-8836d35f9921', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '8d10811b-22f9-4e65-b6bd-de72aab10789', 'a5c86871-0d5f-4424-ae8d-05004cff7f9a', '', 'RCA 2-pin L/R type'),
('4f67f281-9444-461d-becd-617cee08a42a', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'd1e7baa1-7ce6-4720-9530-30b84eb97c31', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '8d10811b-22f9-4e65-b6bd-de72aab10789', '45ce71bd-0d75-4803-b54a-509330b280f8', '', '*BT connection between 2 units'),
('4fd4dd05-e520-49aa-8661-1b4c18c0ba2f', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '57777133-51e7-4ae8-b0de-fee20edce0cc', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '11fb867e-f262-41c0-9901-912de9aaa12b', '', '280'),
('5029d095-a519-49d0-89bf-76320b42b106', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'd1e7baa1-7ce6-4720-9530-30b84eb97c31', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '53cf8166-47b9-4b4c-8e7d-8ae98c62fde6', '0a0bebf9-1e00-48cf-9e2e-2d986ad3f28e', '', '7.6 cm (3\"), 4 Ohm 30 W'),
('50f1ff08-7287-4593-9914-a006ede34ff7', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '5826462f-b495-4df7-a21f-bbf19b981a48', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '8d10811b-22f9-4e65-b6bd-de72aab10789', 'a5c86871-0d5f-4424-ae8d-05004cff7f9a', '', 'RCA 2-pin L/R type, HDMI, OPTICAL'),
('51cab950-f8f1-47c1-8ebf-ce20e432b0c8', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '95a8386d-0151-4ef5-9b7a-23f2988ffbd8', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '65b285b2-b1b7-4797-9fe9-06c9642785a8', '', 'No'),
('52dd8ec6-3ba7-4079-8108-689e0a4e0adc', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'a8887af0-547d-42e1-8cca-779cf1841ed5', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '8d10811b-22f9-4e65-b6bd-de72aab10789', '45ce71bd-0d75-4803-b54a-509330b280f8', '', '*BT connection between 2 units'),
('52f5980f-175d-414f-9052-b6101d7264c2', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '95a8386d-0151-4ef5-9b7a-23f2988ffbd8', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '8d10811b-22f9-4e65-b6bd-de72aab10789', 'a5c86871-0d5f-4424-ae8d-05004cff7f9a', '', 'RCA 2-pin L/R type'),
('534c4f07-1499-4954-aece-d146a46aac7c', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '6e7c0a0f-be33-4490-826c-814a59048eb5', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '3652480e-57ee-4d0c-9601-0f8321ed7bfa', '', '14'),
('5664407f-a61d-477d-a418-e91e4c0bc691', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '8cf82b55-a985-4a5f-83ff-0484ffcdf5c5', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '53cf8166-47b9-4b4c-8e7d-8ae98c62fde6', '53475931-30c0-4f42-bb5d-b5bc9a408c3d', '', '2.5 cm (1\"), 4 Ohm, 25 W'),
('5683cac3-3b93-4d29-9477-789fba86658f', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '9ab06c62-3e47-4751-abf9-9c2a96d70421', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '8d10811b-22f9-4e65-b6bd-de72aab10789', 'a5c86871-0d5f-4424-ae8d-05004cff7f9a', '', 'RCA 2-pin L/R type'),
('576570b6-0a79-454c-aa6a-44673e2800a2', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'f33a3fca-2a2c-4913-8ec9-9a98946ba7b1', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '8d10811b-22f9-4e65-b6bd-de72aab10789', 'd4a92c59-b965-4fd4-b913-b9d1982a8898', '', 'MP3 Playback'),
('57779d58-6e91-4f8f-98af-e91b73434328', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'ee550140-1522-4320-8790-b868ce5b74f3', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', 'fffa2052-239f-4432-bcba-fcee8dd46f20', '', '3-way speaker'),
('58c4a178-0d5c-451b-87d9-20ac8622ce52', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'a8887af0-547d-42e1-8cca-779cf1841ed5', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '11fb867e-f262-41c0-9901-912de9aaa12b', '', '135'),
('595a9b45-cd30-4de7-b217-9ddcf4f2ecba', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '95a8386d-0151-4ef5-9b7a-23f2988ffbd8', '9b97e2c1-4a01-48ac-910a-2d14cb137069', 'ba3f4372-afe4-4d88-a6d0-9d3ad2b73824', 'e137db07-98f3-4d79-b67c-74912b613f8e', '', 'X-Bass, High, Mid, Low, Volume, Master, Music, Guitar & Keyboard'),
('5a878dcb-dfbe-4c4c-90d5-6df9a71d3b51', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '0fc1bf44-b61d-4991-9403-0b0ecef8c791', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '1a8d1e3e-4810-4b0c-81c8-caa5b7e501e2', '', '50000'),
('5b5a5ec4-ea58-4c0d-9116-7edecb225ddf', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '3847c27a-f9f3-4c62-9213-8f4072e62117', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', 'fffa2052-239f-4432-bcba-fcee8dd46f20', '', '3-way speaker'),
('5b87d9f9-7efd-4917-81ef-003c615cb09c', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'f33a3fca-2a2c-4913-8ec9-9a98946ba7b1', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '53cf8166-47b9-4b4c-8e7d-8ae98c62fde6', '53475931-30c0-4f42-bb5d-b5bc9a408c3d', '', '2.5 cm (1\"), 25 W'),
('5bbb4f00-0646-4752-92e1-4e47d4262cf1', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'ee550140-1522-4320-8790-b868ce5b74f3', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '53cf8166-47b9-4b4c-8e7d-8ae98c62fde6', '0a0bebf9-1e00-48cf-9e2e-2d986ad3f28e', '', '7.6 cm (3\"), 4 Ohm 30 W'),
('5bea0da6-0135-41e2-b153-442c2f80c7f3', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'f33a3fca-2a2c-4913-8ec9-9a98946ba7b1', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '65b285b2-b1b7-4797-9fe9-06c9642785a8', '', 'Wheel & Handle'),
('5cb62923-4009-4e41-9976-e4a275b0874b', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '15a9bc11-1dfb-49c5-8a06-8836d35f9921', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '8d10811b-22f9-4e65-b6bd-de72aab10789', '5de2a926-69f9-4376-a697-65afff94981d', '', '2.4 GHz (2.4000 GHz - 2.4835 GHz)'),
('5d61a134-3a95-4c7f-ab7e-d6db16c2d73d', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '5826462f-b495-4df7-a21f-bbf19b981a48', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '3652480e-57ee-4d0c-9601-0f8321ed7bfa', '', '22'),
('5e8eb463-9051-49e2-a12d-bb145b408318', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '83d4e98c-e184-4c24-978e-0f6d0aafffbc', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '8d10811b-22f9-4e65-b6bd-de72aab10789', 'd4a92c59-b965-4fd4-b913-b9d1982a8898', '', 'MP3 Playback'),
('5f2867e6-1903-42d8-be84-61b20678a841', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '9ab06c62-3e47-4751-abf9-9c2a96d70421', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '8d10811b-22f9-4e65-b6bd-de72aab10789', 'd4a92c59-b965-4fd4-b913-b9d1982a8898', '', 'MP3 Playback'),
('5f53b8d0-2e1c-4f85-b434-b696175ea2ee', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '8cf82b55-a985-4a5f-83ff-0484ffcdf5c5', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '68757736-bbeb-4a48-a383-fad6682a0c42', '', 'Multi Input'),
('60438423-1e0d-4918-a62c-2b9abe0469e0', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '4e49b2aa-2eb2-4ae4-93af-7729e23fa404', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', 'f46bf78f-7ffc-4fea-a378-fe3ee549e86e', '', 'Yes'),
('60c4abbc-a144-43de-982f-ec56302e42e5', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '9ab06c62-3e47-4751-abf9-9c2a96d70421', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '53cf8166-47b9-4b4c-8e7d-8ae98c62fde6', 'cda903e6-f854-4713-9054-ff3aa4cd75c4', '', '15.2 cm (6\"), 4 Ohm, 30 W'),
('6100fb08-eefa-449c-b607-88d65bccbdd6', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '5826462f-b495-4df7-a21f-bbf19b981a48', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', 'dce9e0cd-8e5b-4d0a-ae57-21dc3dcefdcb', '', 'Yes'),
('637d7371-0c85-4366-a230-4a3a7fa5513a', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'a8887af0-547d-42e1-8cca-779cf1841ed5', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '65b285b2-b1b7-4797-9fe9-06c9642785a8', '', 'No'),
('6393b216-54c3-4881-a58d-2e5ca1b19ba3', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '95a8386d-0151-4ef5-9b7a-23f2988ffbd8', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '53cf8166-47b9-4b4c-8e7d-8ae98c62fde6', 'bec7dbb1-579b-4f00-b3c0-21ee663f65c7', '', '2.5 cm (1\"), 4 Ohm, 25 W'),
('63fa07a7-1bf7-4581-aabd-cecda7a0ccae', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '83d4e98c-e184-4c24-978e-0f6d0aafffbc', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', 'ff866824-bbfc-435a-8782-cb74a04f90c8', '', 'AC 100- 240V ~ 50Hz & DC 13.5V, 3A'),
('648dc4f9-f1ae-4bd4-8130-fdc71abc3691', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '4e49b2aa-2eb2-4ae4-93af-7729e23fa404', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '8d10811b-22f9-4e65-b6bd-de72aab10789', '5de2a926-69f9-4376-a697-65afff94981d', '', 'Freq. Band: 2.4 GHz (2.4000 GHz - 2.4835 GHz)'),
('652ffb39-7659-4903-a80e-4ffbc5cf24d4', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'd96ca88f-1b20-437d-973e-4a5fc0655de1', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', 'de29974c-62c6-4bd2-9679-153f01dedcf5', '', 'Guitar / Keyboard & 2 x MIC inputs (6.35 mm)'),
('6580b2ee-3be2-4b8c-8ebf-cdc47eab7b9b', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '15a9bc11-1dfb-49c5-8a06-8836d35f9921', '9b97e2c1-4a01-48ac-910a-2d14cb137069', 'ba3f4372-afe4-4d88-a6d0-9d3ad2b73824', '2b402275-bb39-4d09-bc5c-aa4f3906f3f6', '', 'Volume, Treble, Bass, X-Bass'),
('66748180-cd48-4055-bfa9-8b4cbb8d2d65', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '83d4e98c-e184-4c24-978e-0f6d0aafffbc', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', 'ae677dfe-0b1d-4489-98ac-322829e069a4', 'RMS', '70'),
('669005a5-6819-43ca-a8ad-8723b6792e21', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '8403ceac-7570-475d-81df-82586ff41921', '9b97e2c1-4a01-48ac-910a-2d14cb137069', 'dba0d6fd-16b2-4e6c-9923-0950e2db188b', '2b402275-bb39-4d09-bc5c-aa4f3906f3f6', '', 'MIC Volume, Echo'),
('6813930d-df40-4d0a-bea2-764215549f01', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'd96ca88f-1b20-437d-973e-4a5fc0655de1', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '3652480e-57ee-4d0c-9601-0f8321ed7bfa', '', '14'),
('6857aeab-da7d-4825-b685-41e1e5b63856', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '8403ceac-7570-475d-81df-82586ff41921', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '8d10811b-22f9-4e65-b6bd-de72aab10789', '45ce71bd-0d75-4803-b54a-509330b280f8', '', ' *BT connection between 2 units'),
('686dd830-fcc5-4728-b79b-c9e49c81b507', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '4dc849b5-3796-4ba4-8878-c194953a9fa3', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '3652480e-57ee-4d0c-9601-0f8321ed7bfa', '', '14'),
('6893abef-24d8-4832-a4e3-190b8a0efce7', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'f33a3fca-2a2c-4913-8ec9-9a98946ba7b1', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '1a8d1e3e-4810-4b0c-81c8-caa5b7e501e2', '', '50000'),
('68b5a47b-42d7-4475-9a4d-66867302b437', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'ee550140-1522-4320-8790-b868ce5b74f3', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '8d10811b-22f9-4e65-b6bd-de72aab10789', '77af6a05-b7ba-4c87-aad3-53eb05bc41bc', '', 'Freq. Range: 87.50 MHz - 108.00 MHz'),
('6911c9c1-4297-45cb-a5c8-794821d8928d', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '3847c27a-f9f3-4c62-9213-8f4072e62117', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '53cf8166-47b9-4b4c-8e7d-8ae98c62fde6', '0a0bebf9-1e00-48cf-9e2e-2d986ad3f28e', '', '7.6 cm (3\"), 4 Ohm, 30 W'),
('69547b89-b80a-4c52-979e-8170710aff66', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'a8887af0-547d-42e1-8cca-779cf1841ed5', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '8d10811b-22f9-4e65-b6bd-de72aab10789', '5de2a926-69f9-4376-a697-65afff94981d', '', 'Freq. Band: 2.4 GHz (2.4000 GHz - 2.4835 GHz)'),
('69ab5eb3-a516-4ed5-8b4a-61758f261759', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '4dc849b5-3796-4ba4-8878-c194953a9fa3', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '65b285b2-b1b7-4797-9fe9-06c9642785a8', '', 'Handle only'),
('69cf3ad7-59e2-4617-b599-20816701da25', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '8403ceac-7570-475d-81df-82586ff41921', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '8d10811b-22f9-4e65-b6bd-de72aab10789', '713305b8-721a-479f-a563-2fc7911b4b1b', '', 'MP3 Playback'),
('6a17b817-8746-41c8-8bbf-80d15de57979', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '4e49b2aa-2eb2-4ae4-93af-7729e23fa404', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '68757736-bbeb-4a48-a383-fad6682a0c42', '', 'Multi Input'),
('6a28f694-40e9-4fd3-86b7-c6bfa570af17', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '0fc1bf44-b61d-4991-9403-0b0ecef8c791', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', 'ae677dfe-0b1d-4489-98ac-322829e069a4', 'RMS', '40'),
('6a3ee61b-44da-4a2c-a59b-a16d8ed74c07', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '3847c27a-f9f3-4c62-9213-8f4072e62117', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '3652480e-57ee-4d0c-9601-0f8321ed7bfa', '', '14'),
('6a4f7a79-d62c-48c9-a61e-db19043725fc', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'd96ca88f-1b20-437d-973e-4a5fc0655de1', '9b97e2c1-4a01-48ac-910a-2d14cb137069', 'dba0d6fd-16b2-4e6c-9923-0950e2db188b', '633de2e4-9792-4adf-8d18-1471cd7c8462', '', 'Mic Priority, Volume, Echo, Reverb'),
('6aa94875-8616-49c8-a7bf-267574f59f11', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '8403ceac-7570-475d-81df-82586ff41921', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', 'ae677dfe-0b1d-4489-98ac-322829e069a4', 'RMS', '2 x 45'),
('6ae8b625-0c81-4e7e-b51d-9c84530b4857', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '6e7c0a0f-be33-4490-826c-814a59048eb5', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', 'de29974c-62c6-4bd2-9679-153f01dedcf5', '', 'Guitar & 2 x MIC inputs (6.35 mm)'),
('6bc5bf94-6adc-4f36-805d-dd8323cf1888', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '0fc1bf44-b61d-4991-9403-0b0ecef8c791', '9b97e2c1-4a01-48ac-910a-2d14cb137069', 'ba3f4372-afe4-4d88-a6d0-9d3ad2b73824', '2b402275-bb39-4d09-bc5c-aa4f3906f3f6', '', 'Volume, Treble, Bass, X-Bass'),
('6cc89652-5702-43a3-8253-6a36b67c5f8c', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '95a8386d-0151-4ef5-9b7a-23f2988ffbd8', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '53cf8166-47b9-4b4c-8e7d-8ae98c62fde6', 'cda903e6-f854-4713-9054-ff3aa4cd75c4', '', '2 x 30.5 cm (12\"), 6 Ohm, 60 W'),
('6cdcc2a1-83d9-451f-9b44-419f2fd622a3', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '8403ceac-7570-475d-81df-82586ff41921', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '1a8d1e3e-4810-4b0c-81c8-caa5b7e501e2', '', '50000'),
('6da91b82-3d90-4ee0-b766-e3d975b551c3', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '83d4e98c-e184-4c24-978e-0f6d0aafffbc', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '68757736-bbeb-4a48-a383-fad6682a0c42', '', 'Multi Input'),
('6edea493-23b9-4c49-8480-2c8ae7e04388', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '83d4e98c-e184-4c24-978e-0f6d0aafffbc', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '11fb867e-f262-41c0-9901-912de9aaa12b', '', '70'),
('6f8c6fee-ffa7-402d-9938-6e4487187da3', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '8cf82b55-a985-4a5f-83ff-0484ffcdf5c5', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '8d10811b-22f9-4e65-b6bd-de72aab10789', 'd4a92c59-b965-4fd4-b913-b9d1982a8898', '', 'MP3 Playback'),
('6fe5f578-f6d2-4983-b608-3726163aa90f', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '83d4e98c-e184-4c24-978e-0f6d0aafffbc', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '8d10811b-22f9-4e65-b6bd-de72aab10789', '5de2a926-69f9-4376-a697-65afff94981d', '', 'Freq. Band : 2.4 GHz (2.4000 GHz - 2.4835 GHz)'),
('70dad81a-7664-4dda-911c-4f49ac3b9ce4', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'd96ca88f-1b20-437d-973e-4a5fc0655de1', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '53cf8166-47b9-4b4c-8e7d-8ae98c62fde6', '0a0bebf9-1e00-48cf-9e2e-2d986ad3f28e', '', '7.6 cm (3\"), 4 Ohm, 30 W'),
('71368d70-4e0a-42ae-9fe2-e54a55fa6e5c', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'ee550140-1522-4320-8790-b868ce5b74f3', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', 'ae677dfe-0b1d-4489-98ac-322829e069a4', 'RMS', '2 x 60'),
('721ab86f-b517-4535-800b-fb31250a3b45', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'f33a3fca-2a2c-4913-8ec9-9a98946ba7b1', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', 'ff866824-bbfc-435a-8782-cb74a04f90c8', '', 'AC 220 V - 50 Hz'),
('72319c3f-c523-44ba-a3af-05b884bf2025', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'd96ca88f-1b20-437d-973e-4a5fc0655de1', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '65b285b2-b1b7-4797-9fe9-06c9642785a8', '', 'No'),
('72cdcc5e-33fe-4d23-a98c-9699d8851c43', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '4e49b2aa-2eb2-4ae4-93af-7729e23fa404', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '8e19f446-827b-44ce-acd0-839e6822d8fb', '', '25 - 20000'),
('73fc8dee-5f78-4e96-9205-4d4009a5479e', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '3847c27a-f9f3-4c62-9213-8f4072e62117', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '11fb867e-f262-41c0-9901-912de9aaa12b', '', '240'),
('754e30ca-e8d6-4e3f-b49c-90e770e4fc27', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'd96ca88f-1b20-437d-973e-4a5fc0655de1', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '8d10811b-22f9-4e65-b6bd-de72aab10789', 'a5c86871-0d5f-4424-ae8d-05004cff7f9a', '', 'RCA 2-pin L/R type, HDMI, OPTICAL'),
('75a2885d-e56c-40af-8f1d-2beea0cf3314', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '6e7c0a0f-be33-4490-826c-814a59048eb5', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '8e19f446-827b-44ce-acd0-839e6822d8fb', '', '40 - 20000'),
('7929a5c4-03d9-46f3-a5c0-be5132be7e0c', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '3847c27a-f9f3-4c62-9213-8f4072e62117', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '8d10811b-22f9-4e65-b6bd-de72aab10789', 'a5c86871-0d5f-4424-ae8d-05004cff7f9a', '', 'RCA 2-pin L/R type, HDMI, OPTICAL'),
('79be6961-d7f8-4308-a684-d6db76ba9f73', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '4dc849b5-3796-4ba4-8878-c194953a9fa3', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', 'fffa2052-239f-4432-bcba-fcee8dd46f20', '', '2-way speaker'),
('7a09bf0f-5878-4d58-a15e-3a170e2deaaa', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '9ab06c62-3e47-4751-abf9-9c2a96d70421', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '11fb867e-f262-41c0-9901-912de9aaa12b', '', '70'),
('7a1a0a01-cc6d-413b-a472-e607c0501b1f', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'a8887af0-547d-42e1-8cca-779cf1841ed5', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', 'dfd9fadf-a260-4f80-abe4-5f5508dd414e', '', 'Luxury'),
('7a6091c3-7f70-4dce-a30d-d566c42066a4', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'd96ca88f-1b20-437d-973e-4a5fc0655de1', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '8d10811b-22f9-4e65-b6bd-de72aab10789', '713305b8-721a-479f-a563-2fc7911b4b1b', '', 'MP3 Playback'),
('7a93734d-9c77-4f4d-aa60-70250ba6fd80', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'a8887af0-547d-42e1-8cca-779cf1841ed5', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '1a8d1e3e-4810-4b0c-81c8-caa5b7e501e2', '', '50000'),
('7aeaaa89-3168-4d06-9874-8f8bd39340ad', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '0fc1bf44-b61d-4991-9403-0b0ecef8c791', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', 'fffa2052-239f-4432-bcba-fcee8dd46f20', '', '3-way speaker');
INSERT INTO `specificationconnector` (`id`, `brandId`, `productId`, `dynamicspecificationParentId`, `dynamicspecificationSubParentId`, `dynamicspecificationId`, `notes`, `value`) VALUES
('7b94f826-f5d2-40e9-a068-d9f9a22d403d', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'd96ca88f-1b20-437d-973e-4a5fc0655de1', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '53cf8166-47b9-4b4c-8e7d-8ae98c62fde6', 'cda903e6-f854-4713-9054-ff3aa4cd75c4', '', '2 x 25.4 cm (10\"), 6 Ohm, 60 W'),
('7bd6eabe-ce7e-4848-b799-600b1dd82fa6', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'ee550140-1522-4320-8790-b868ce5b74f3', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '68757736-bbeb-4a48-a383-fad6682a0c42', '', 'Multi Input'),
('7c98b824-ccac-43f0-9690-7cd4928867c6', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'd1e7baa1-7ce6-4720-9530-30b84eb97c31', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', 'de29974c-62c6-4bd2-9679-153f01dedcf5', '', '2 x MIC inputs (6.35 mm)'),
('7cb67d0a-bed6-44f2-b005-98cd8cd9e994', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '8403ceac-7570-475d-81df-82586ff41921', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '8d10811b-22f9-4e65-b6bd-de72aab10789', '5de2a926-69f9-4376-a697-65afff94981d', '', 'Freq. Band: 2.4 GHz (2.4000 GHz - 2.4835 GHz)'),
('7d1c830a-ad75-4911-83da-808eabecef7b', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'd1e7baa1-7ce6-4720-9530-30b84eb97c31', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '8e19f446-827b-44ce-acd0-839e6822d8fb', '', '25 - 20000'),
('7ddaaf45-079f-4f4f-a11a-3720722c904d', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'f33a3fca-2a2c-4913-8ec9-9a98946ba7b1', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', 'f46bf78f-7ffc-4fea-a378-fe3ee549e86e', '', 'Yes'),
('7f5bd4fb-2753-4dda-b60b-5a77f6e7c206', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '3847c27a-f9f3-4c62-9213-8f4072e62117', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '8d10811b-22f9-4e65-b6bd-de72aab10789', '45ce71bd-0d75-4803-b54a-509330b280f8', '', '*BT connection between 2 units'),
('7fa78b45-f484-4913-b6ed-b494012a3ad0', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '8cf82b55-a985-4a5f-83ff-0484ffcdf5c5', '9b97e2c1-4a01-48ac-910a-2d14cb137069', 'ba3f4372-afe4-4d88-a6d0-9d3ad2b73824', '2b402275-bb39-4d09-bc5c-aa4f3906f3f6', '', 'X-BASS, BASS, TREBLE, VOLUME'),
('8047c278-af4d-452c-8390-dfd342e6c53e', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '9ab06c62-3e47-4751-abf9-9c2a96d70421', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', 'ff866824-bbfc-435a-8782-cb74a04f90c8', '', 'AC 100- 240V ~ 50Hz & DC 13.5V, 3A'),
('808a7996-f045-46ce-ae6c-a29c4ff9262a', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '15a9bc11-1dfb-49c5-8a06-8836d35f9921', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '8d10811b-22f9-4e65-b6bd-de72aab10789', '713305b8-721a-479f-a563-2fc7911b4b1b', '', 'MP3 Playback'),
('8091fae8-21d2-4011-8102-111d85b12e3e', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'a8887af0-547d-42e1-8cca-779cf1841ed5', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '8d10811b-22f9-4e65-b6bd-de72aab10789', '77af6a05-b7ba-4c87-aad3-53eb05bc41bc', '', 'Freq. Range: 87.50 MHz - 108.00 MHz'),
('82844ca7-1841-4351-8c97-c698915487fc', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'ee550140-1522-4320-8790-b868ce5b74f3', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', 'ff866824-bbfc-435a-8782-cb74a04f90c8', '', 'AC 220 V- 50 Hz'),
('82b1a005-9370-4010-85a3-713bbced8d40', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '15a9bc11-1dfb-49c5-8a06-8836d35f9921', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '8d10811b-22f9-4e65-b6bd-de72aab10789', 'd4a92c59-b965-4fd4-b913-b9d1982a8898', '', 'MP3 Playback'),
('82bb28f3-a374-43cf-b13a-28414b68b2fa', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'd1e7baa1-7ce6-4720-9530-30b84eb97c31', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '8d10811b-22f9-4e65-b6bd-de72aab10789', 'a5c86871-0d5f-4424-ae8d-05004cff7f9a', '', 'RCA 2-pin L/R type'),
('82f44755-5a33-4d19-b548-b73ac1274e16', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '57777133-51e7-4ae8-b0de-fee20edce0cc', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '8d10811b-22f9-4e65-b6bd-de72aab10789', 'a5c86871-0d5f-4424-ae8d-05004cff7f9a', '', 'RCA 2-pin L/R type'),
('8312f2d4-1908-4327-83a2-4c3592e8c70f', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '3847c27a-f9f3-4c62-9213-8f4072e62117', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '8d10811b-22f9-4e65-b6bd-de72aab10789', '77af6a05-b7ba-4c87-aad3-53eb05bc41bc', '', 'Freq. Range: 87.50 MHz - 108.00 МHz'),
('83c1d53e-73b9-42d4-99bd-ccb4d5545788', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '15a9bc11-1dfb-49c5-8a06-8836d35f9921', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '8d10811b-22f9-4e65-b6bd-de72aab10789', '77af6a05-b7ba-4c87-aad3-53eb05bc41bc', '', 'Freq. Range: 87.50 MHz - 108.00 MHz'),
('8669a152-1e4b-40bf-b441-b3049878afec', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '83d4e98c-e184-4c24-978e-0f6d0aafffbc', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '1a8d1e3e-4810-4b0c-81c8-caa5b7e501e2', '', '50000'),
('86d4aadb-ec80-4d56-b54c-fbdf0d076582', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '9ab06c62-3e47-4751-abf9-9c2a96d70421', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '8d10811b-22f9-4e65-b6bd-de72aab10789', '77af6a05-b7ba-4c87-aad3-53eb05bc41bc', '', 'Freq. Range: 87.50 MHz - 108.00 MHz'),
('878fe236-9015-4e34-8978-581a687b8511', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '3847c27a-f9f3-4c62-9213-8f4072e62117', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '65b285b2-b1b7-4797-9fe9-06c9642785a8', '', 'No'),
('89502cf3-d099-4df6-bbb7-0ae3fbca8c8f', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '4e49b2aa-2eb2-4ae4-93af-7729e23fa404', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', 'ae677dfe-0b1d-4489-98ac-322829e069a4', 'RMS', '40'),
('8a26cb12-3204-41e8-b9b6-598c73e2dc6e', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '4e49b2aa-2eb2-4ae4-93af-7729e23fa404', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '53cf8166-47b9-4b4c-8e7d-8ae98c62fde6', '53475931-30c0-4f42-bb5d-b5bc9a408c3d', '', '2.5 cm (1\"), 25 W'),
('8a326816-627a-4761-bcc9-8d87990fc2ec', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '8cf82b55-a985-4a5f-83ff-0484ffcdf5c5', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '8d10811b-22f9-4e65-b6bd-de72aab10789', '5de2a926-69f9-4376-a697-65afff94981d', '', 'Freq. Band: 2.4 GHz (2.4000 GHz - 2.4835 GHz)'),
('8b252589-d19d-4dca-8886-89fdbb09b440', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '3847c27a-f9f3-4c62-9213-8f4072e62117', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '6a1f42b2-b07f-429c-9dd9-bcd44c3450bc', 'W x D x H', '353 x 310 x 1115'),
('8ec45a9e-1257-4246-b2f4-b73aeef27ff7', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '4dc849b5-3796-4ba4-8878-c194953a9fa3', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '8d10811b-22f9-4e65-b6bd-de72aab10789', '45ce71bd-0d75-4803-b54a-509330b280f8', '', '*BT connection between 2 units'),
('9106d714-afd3-4d4d-965a-e218e2039bdf', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '3847c27a-f9f3-4c62-9213-8f4072e62117', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', 'de29974c-62c6-4bd2-9679-153f01dedcf5', '', 'Guitar/ Keyboard & 2 x MIC inputs (6.35 mm)'),
('911fafab-5eb5-499c-aae5-63674329d48d', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '57777133-51e7-4ae8-b0de-fee20edce0cc', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', 'dfd9fadf-a260-4f80-abe4-5f5508dd414e', '', 'Pro'),
('9195b8ef-c7f5-4930-8853-5b98c3eb3871', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '5826462f-b495-4df7-a21f-bbf19b981a48', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '8d10811b-22f9-4e65-b6bd-de72aab10789', '45ce71bd-0d75-4803-b54a-509330b280f8', '', '*BT connection between 2 units'),
('9429e157-186a-4dd9-bf3c-fa6bfbcbe441', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '5826462f-b495-4df7-a21f-bbf19b981a48', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', 'ff866824-bbfc-435a-8782-cb74a04f90c8', '', 'AC 220 V - 50 Hz'),
('943cdf34-4d15-495e-8a23-d1ef6296d604', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'ee550140-1522-4320-8790-b868ce5b74f3', '9b97e2c1-4a01-48ac-910a-2d14cb137069', 'dba0d6fd-16b2-4e6c-9923-0950e2db188b', '633de2e4-9792-4adf-8d18-1471cd7c8462', '', 'Mic Priority, Volume, Echo, Reverb'),
('9446c761-2271-4aff-a6c4-1bc10b5e6f4a', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'ee550140-1522-4320-8790-b868ce5b74f3', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '8d10811b-22f9-4e65-b6bd-de72aab10789', '45ce71bd-0d75-4803-b54a-509330b280f8', '', '*BT connection between 2 units'),
('95d9971f-b6e7-487c-b153-0ab29cd15936', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '5826462f-b495-4df7-a21f-bbf19b981a48', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '8e19f446-827b-44ce-acd0-839e6822d8fb', '', '25 - 20000'),
('962d28db-1f00-4bdb-af29-e20c3534a11f', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'd1e7baa1-7ce6-4720-9530-30b84eb97c31', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '11fb867e-f262-41c0-9901-912de9aaa12b', '', '75'),
('963eee08-780d-4bcf-ba8f-5cc209a82c47', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '4dc849b5-3796-4ba4-8878-c194953a9fa3', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '8d10811b-22f9-4e65-b6bd-de72aab10789', '77af6a05-b7ba-4c87-aad3-53eb05bc41bc', '', 'Freq. Range: 87.50 MHz - 108.00 MHz'),
('9700ccdf-ef81-45f4-8eb2-79cbeadcd862', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '8cf82b55-a985-4a5f-83ff-0484ffcdf5c5', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '11fb867e-f262-41c0-9901-912de9aaa12b', '', '150'),
('9787f978-1337-4cc8-b434-e37eff4ea27e', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '3847c27a-f9f3-4c62-9213-8f4072e62117', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', 'ff866824-bbfc-435a-8782-cb74a04f90c8', '', 'AC 220 V - 50 Hz'),
('99b004b9-2154-4879-8b0c-f7a404d767c9', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'f33a3fca-2a2c-4913-8ec9-9a98946ba7b1', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '11fb867e-f262-41c0-9901-912de9aaa12b', '', '75'),
('9afce0b2-fae1-4ae5-8f19-f4e930e8f2e1', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '9ab06c62-3e47-4751-abf9-9c2a96d70421', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', 'fffa2052-239f-4432-bcba-fcee8dd46f20', '', '2-way speaker'),
('9b0e6176-28e4-44e6-8cc9-412e993b0136', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'd96ca88f-1b20-437d-973e-4a5fc0655de1', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '53cf8166-47b9-4b4c-8e7d-8ae98c62fde6', '53475931-30c0-4f42-bb5d-b5bc9a408c3d', '', '2.5 cm (1\"), 25 W'),
('9b50c083-9963-4c30-9c9f-6c091a59724e', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '15a9bc11-1dfb-49c5-8a06-8836d35f9921', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', 'ae677dfe-0b1d-4489-98ac-322829e069a4', 'RMS', '15'),
('9b798dc4-103d-4e4b-95c4-a18a3db95866', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'a8887af0-547d-42e1-8cca-779cf1841ed5', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '8d10811b-22f9-4e65-b6bd-de72aab10789', '713305b8-721a-479f-a563-2fc7911b4b1b', '', 'MP3 Playback'),
('9bb1d9f5-d383-4e29-aefd-581164113b75', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '95a8386d-0151-4ef5-9b7a-23f2988ffbd8', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', 'ae677dfe-0b1d-4489-98ac-322829e069a4', 'RMS', '2 x 150'),
('9c04795b-1656-4f0b-9081-b4eb0df569cb', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '8403ceac-7570-475d-81df-82586ff41921', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', 'de29974c-62c6-4bd2-9679-153f01dedcf5', '', '2 x MIC Input (6.35 mm)'),
('9c207651-2caf-4131-8d34-3e7423ee7e0b', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '5826462f-b495-4df7-a21f-bbf19b981a48', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '65b285b2-b1b7-4797-9fe9-06c9642785a8', '', 'Wheel & Handle'),
('9d5b5c5d-313a-42d4-ac40-1a657d0f541c', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '57777133-51e7-4ae8-b0de-fee20edce0cc', '9b97e2c1-4a01-48ac-910a-2d14cb137069', 'dba0d6fd-16b2-4e6c-9923-0950e2db188b', 'e137db07-98f3-4d79-b67c-74912b613f8e', '', 'MIC VOLUME, Echo, Wireless Volume, Repeat, Delay'),
('9e95fe7b-b85b-4965-9bb8-7f1e4834d742', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'f33a3fca-2a2c-4913-8ec9-9a98946ba7b1', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', 'dce9e0cd-8e5b-4d0a-ae57-21dc3dcefdcb', '', 'Yes'),
('9ed384bc-46a6-4d48-93e9-d07219474344', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '15a9bc11-1dfb-49c5-8a06-8836d35f9921', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', 'de29974c-62c6-4bd2-9679-153f01dedcf5', '', '1 MIC inputs (6.35 mm)'),
('9fb56eaf-a562-49aa-ae84-e50ea23e339d', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '3847c27a-f9f3-4c62-9213-8f4072e62117', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', 'ae677dfe-0b1d-4489-98ac-322829e069a4', 'RMS', '2 x 70'),
('a0439091-4f87-4731-98c6-c2f31c48c78c', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'f33a3fca-2a2c-4913-8ec9-9a98946ba7b1', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', 'de29974c-62c6-4bd2-9679-153f01dedcf5', '', '2 x MIC inputs (6.35 mm)'),
('a0915ad3-70ca-48ec-908e-bfdae54888a4', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'd1e7baa1-7ce6-4720-9530-30b84eb97c31', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '8d10811b-22f9-4e65-b6bd-de72aab10789', '77af6a05-b7ba-4c87-aad3-53eb05bc41bc', '', 'Freq. Range: 87.50 MHz - 108.00 MHz'),
('a12003a4-e101-484c-967a-f4d9087a57a6', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'd96ca88f-1b20-437d-973e-4a5fc0655de1', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '8e19f446-827b-44ce-acd0-839e6822d8fb', '', '20 - 20000'),
('a203a258-fcb6-462c-ac4a-7ecb52fabdb1', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '4dc849b5-3796-4ba4-8878-c194953a9fa3', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '8d10811b-22f9-4e65-b6bd-de72aab10789', '713305b8-721a-479f-a563-2fc7911b4b1b', '', 'MP3 Playback'),
('a2274610-7bd4-408b-8290-404e59c80611', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '9ab06c62-3e47-4751-abf9-9c2a96d70421', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '68757736-bbeb-4a48-a383-fad6682a0c42', '', 'Multi Input'),
('a26bc5e5-69d3-472d-bf3b-a550e4c779df', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '9ab06c62-3e47-4751-abf9-9c2a96d70421', '9b97e2c1-4a01-48ac-910a-2d14cb137069', 'ba3f4372-afe4-4d88-a6d0-9d3ad2b73824', '2b402275-bb39-4d09-bc5c-aa4f3906f3f6', '', 'Volume, Treble, Bass, X-Bass, Mic Priority'),
('a3287c65-6d6a-420b-91d2-48d9e51ef735', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '9ab06c62-3e47-4751-abf9-9c2a96d70421', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '1a8d1e3e-4810-4b0c-81c8-caa5b7e501e2', '', '50000'),
('a4107805-2d50-48fa-9308-0f780bf86827', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '8403ceac-7570-475d-81df-82586ff41921', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '68757736-bbeb-4a48-a383-fad6682a0c42', '', 'Multi Input'),
('a45fc7d6-6126-4a39-a951-d37848c131b3', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '0fc1bf44-b61d-4991-9403-0b0ecef8c791', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '53cf8166-47b9-4b4c-8e7d-8ae98c62fde6', '0a0bebf9-1e00-48cf-9e2e-2d986ad3f28e', '', '7.6 cm (3\"), 4 Ohm 30 W'),
('a4d43d8d-3f5d-4807-95b8-d13a06a2ff1e', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '0fc1bf44-b61d-4991-9403-0b0ecef8c791', '9b97e2c1-4a01-48ac-910a-2d14cb137069', 'dba0d6fd-16b2-4e6c-9923-0950e2db188b', '2b402275-bb39-4d09-bc5c-aa4f3906f3f6', '', 'MIC VOLUME, Echo'),
('a57b8c79-853b-4987-88be-7cc7cb31fdbf', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '5826462f-b495-4df7-a21f-bbf19b981a48', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '68757736-bbeb-4a48-a383-fad6682a0c42', '', 'Multi Input'),
('a599ffff-ac69-4eb6-84f9-657d4ff947f5', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '57777133-51e7-4ae8-b0de-fee20edce0cc', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '53cf8166-47b9-4b4c-8e7d-8ae98c62fde6', 'cda903e6-f854-4713-9054-ff3aa4cd75c4', '', '2 x 38.1 cm (15\"), 6 Ohm, 60 W'),
('a6133c01-5a7b-4aee-897b-145ab1043fce', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '95a8386d-0151-4ef5-9b7a-23f2988ffbd8', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '8d10811b-22f9-4e65-b6bd-de72aab10789', '713305b8-721a-479f-a563-2fc7911b4b1b', '', 'MP3 Playback'),
('a63d56c9-8888-4655-862e-376a94a8fff7', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'f33a3fca-2a2c-4913-8ec9-9a98946ba7b1', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '8d10811b-22f9-4e65-b6bd-de72aab10789', '45ce71bd-0d75-4803-b54a-509330b280f8', '', '*BT connection between 2 units'),
('a644838e-40a8-4f04-9a66-d65b78b906f9', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '8403ceac-7570-475d-81df-82586ff41921', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '11fb867e-f262-41c0-9901-912de9aaa12b', '', '100'),
('a6a134cb-cd3c-4bbe-a4d8-b9e2be7f6472', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '4e49b2aa-2eb2-4ae4-93af-7729e23fa404', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '8d10811b-22f9-4e65-b6bd-de72aab10789', '77af6a05-b7ba-4c87-aad3-53eb05bc41bc', '', 'Freq. Range: 87.50 MHz - 108.00 MHz'),
('a756c62a-76f0-4bf1-91c1-c4cc44bb9df0', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '83d4e98c-e184-4c24-978e-0f6d0aafffbc', '9b97e2c1-4a01-48ac-910a-2d14cb137069', 'dba0d6fd-16b2-4e6c-9923-0950e2db188b', '2b402275-bb39-4d09-bc5c-aa4f3906f3f6', '', 'MIC VOLUME, Echo, Mic Priority'),
('a9640cd8-506e-4658-a2fc-e64440cd16a7', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '83d4e98c-e184-4c24-978e-0f6d0aafffbc', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', 'dce9e0cd-8e5b-4d0a-ae57-21dc3dcefdcb', '', 'No'),
('a9d79e9d-a3c9-49e3-802d-45be13792afb', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '8cf82b55-a985-4a5f-83ff-0484ffcdf5c5', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', 'ff866824-bbfc-435a-8782-cb74a04f90c8', '', 'AC 220 V-50 Hz'),
('abb82cb2-de2f-422d-8a00-3753e6b96530', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '9ab06c62-3e47-4751-abf9-9c2a96d70421', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '8e19f446-827b-44ce-acd0-839e6822d8fb', '', '40 - 20000'),
('aced2bf4-1d3b-4a89-bff7-8f1665ae85ca', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '0fc1bf44-b61d-4991-9403-0b0ecef8c791', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '11fb867e-f262-41c0-9901-912de9aaa12b', '', '75'),
('ada1c158-90f7-41f5-8b8a-723cf988cc49', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '83d4e98c-e184-4c24-978e-0f6d0aafffbc', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '8e19f446-827b-44ce-acd0-839e6822d8fb', '', '40 - 20000'),
('ae395b94-ce15-4e55-b2be-b86ab9bd0809', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '4e49b2aa-2eb2-4ae4-93af-7729e23fa404', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '3652480e-57ee-4d0c-9601-0f8321ed7bfa', '', '22'),
('ae414432-b881-4ca2-a1c2-08841769dba8', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'd1e7baa1-7ce6-4720-9530-30b84eb97c31', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '8d10811b-22f9-4e65-b6bd-de72aab10789', 'd4a92c59-b965-4fd4-b913-b9d1982a8898', '', 'MP3 Playback'),
('b044d61d-8ddc-4af1-920e-0e4a97c88e20', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'a8887af0-547d-42e1-8cca-779cf1841ed5', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '6a1f42b2-b07f-429c-9dd9-bcd44c3450bc', 'W x D x H', '276.4 x 247 x 744'),
('b05340bb-1e61-4c71-8477-2d3e53d82f58', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'd96ca88f-1b20-437d-973e-4a5fc0655de1', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '8d10811b-22f9-4e65-b6bd-de72aab10789', '77af6a05-b7ba-4c87-aad3-53eb05bc41bc', '', 'Freq. Range: 87.50 MHz - 108.00 MHz'),
('b0a57a60-92e6-48e8-9d5e-277e0f9271b5', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '83d4e98c-e184-4c24-978e-0f6d0aafffbc', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', 'fffa2052-239f-4432-bcba-fcee8dd46f20', '', '2-way speaker'),
('b1fef640-f982-4f3f-b264-f7dae5d2489b', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'a8887af0-547d-42e1-8cca-779cf1841ed5', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '53cf8166-47b9-4b4c-8e7d-8ae98c62fde6', 'cda903e6-f854-4713-9054-ff3aa4cd75c4', '', '2 x 15.3 cm (6\"), 6 Ohm, 60 W'),
('b325614d-dbc7-4edb-808d-2ad7754c2c23', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '9ab06c62-3e47-4751-abf9-9c2a96d70421', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '8d10811b-22f9-4e65-b6bd-de72aab10789', '5de2a926-69f9-4376-a697-65afff94981d', '', 'Freq. Band : 2.4 GHz (2.4000 GHz - 2.4835 GHz)'),
('b3bead17-ccd3-4df5-b6c9-87b21aefa69f', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '57777133-51e7-4ae8-b0de-fee20edce0cc', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '8d10811b-22f9-4e65-b6bd-de72aab10789', '5de2a926-69f9-4376-a697-65afff94981d', '', 'Freq. Band: 2.4 GHz (2.4000 GHz - 2.4835 GHz)'),
('b40c27cb-d407-4640-bb0e-00054ba3d7f4', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '4dc849b5-3796-4ba4-8878-c194953a9fa3', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '68757736-bbeb-4a48-a383-fad6682a0c42', '', 'Multi Input'),
('b457fb07-fe68-4d16-8213-aed1736d422a', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '6e7c0a0f-be33-4490-826c-814a59048eb5', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '8d10811b-22f9-4e65-b6bd-de72aab10789', 'd4a92c59-b965-4fd4-b913-b9d1982a8898', '', 'MP3 Playback'),
('b45a2138-3f25-450e-8ff8-b23915dafa89', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '5826462f-b495-4df7-a21f-bbf19b981a48', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '8d10811b-22f9-4e65-b6bd-de72aab10789', '5de2a926-69f9-4376-a697-65afff94981d', '', 'Freq. Band: 2.4 GHz (2.4000 GHz - 2.4835 GHz)'),
('b4d8dab8-8112-4a42-88de-a785f27f9265', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '9ab06c62-3e47-4751-abf9-9c2a96d70421', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', 'de29974c-62c6-4bd2-9679-153f01dedcf5', '', 'Guitar & 2 x MIC inputs (6.35 mm)'),
('b4edafa5-ebc6-43b6-a9d5-174280f09041', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '0fc1bf44-b61d-4991-9403-0b0ecef8c791', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '8d10811b-22f9-4e65-b6bd-de72aab10789', '45ce71bd-0d75-4803-b54a-509330b280f8', '', '*BT connection between 2 units'),
('b56a502a-d8e0-4eac-bcb8-c898936d6c09', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'ee550140-1522-4320-8790-b868ce5b74f3', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '8d10811b-22f9-4e65-b6bd-de72aab10789', '5de2a926-69f9-4376-a697-65afff94981d', '', 'Freq. Band: 2.4 GHz (2.4000 GHz - 2.4835 GHz)'),
('b5a0e71e-21ff-4f01-bd47-643f6517e4dd', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '4e49b2aa-2eb2-4ae4-93af-7729e23fa404', '9b97e2c1-4a01-48ac-910a-2d14cb137069', 'ba3f4372-afe4-4d88-a6d0-9d3ad2b73824', '2b402275-bb39-4d09-bc5c-aa4f3906f3f6', '', 'Volume, Treble, Bass, X-Bass'),
('b5f4b621-932b-40a2-ade7-5b370ccb279f', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'd96ca88f-1b20-437d-973e-4a5fc0655de1', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '68757736-bbeb-4a48-a383-fad6682a0c42', '', 'Multi Input'),
('b65eae28-d9c3-4faf-a880-5b0307458540', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '8403ceac-7570-475d-81df-82586ff41921', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '8d10811b-22f9-4e65-b6bd-de72aab10789', 'a5c86871-0d5f-4424-ae8d-05004cff7f9a', '', 'RCA 2-pin L/R type'),
('b79177bb-2c0a-4284-86d9-795169ccbbc6', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '9ab06c62-3e47-4751-abf9-9c2a96d70421', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '8d10811b-22f9-4e65-b6bd-de72aab10789', '45ce71bd-0d75-4803-b54a-509330b280f8', '', '*BT connection between 2 units'),
('b7aa4f84-4df1-4c15-9cb5-27be2a0beffb', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '5826462f-b495-4df7-a21f-bbf19b981a48', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '8d10811b-22f9-4e65-b6bd-de72aab10789', '77af6a05-b7ba-4c87-aad3-53eb05bc41bc', '', 'Freq. Range: 87.50 MHz - 108.00 MHz'),
('b8457b9e-f644-4369-a074-826a1d77f0b4', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '3847c27a-f9f3-4c62-9213-8f4072e62117', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '8e19f446-827b-44ce-acd0-839e6822d8fb', '', '20 - 20000'),
('b9865638-f368-468f-8fa5-901d4d0be4dc', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '57777133-51e7-4ae8-b0de-fee20edce0cc', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '8d10811b-22f9-4e65-b6bd-de72aab10789', 'd4a92c59-b965-4fd4-b913-b9d1982a8898', '', 'MP3 Playback'),
('b998aa8f-191f-4383-9698-1fe8ef570e67', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '83d4e98c-e184-4c24-978e-0f6d0aafffbc', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '53cf8166-47b9-4b4c-8e7d-8ae98c62fde6', '0a0bebf9-1e00-48cf-9e2e-2d986ad3f28e', '', '7.5 cm (3\"), 4 Ohm 30 W'),
('b9cdae35-62a1-4833-9c9a-5efe6f1822e3', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '8cf82b55-a985-4a5f-83ff-0484ffcdf5c5', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', 'ae677dfe-0b1d-4489-98ac-322829e069a4', 'RMS', '2 x 45'),
('bafdfc75-c17c-4a9f-af75-74a8b8addc28', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '57777133-51e7-4ae8-b0de-fee20edce0cc', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '8e19f446-827b-44ce-acd0-839e6822d8fb', '', '20 - 20000'),
('bb240c86-becd-4125-8d09-c623229cfd41', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '8403ceac-7570-475d-81df-82586ff41921', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '53cf8166-47b9-4b4c-8e7d-8ae98c62fde6', '53475931-30c0-4f42-bb5d-b5bc9a408c3d', '', '2.5 cm (1\"), 4 Ohm, 25 W'),
('bb8482ed-fc3d-42a8-8d16-679fdc6578f7', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '4e49b2aa-2eb2-4ae4-93af-7729e23fa404', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '53cf8166-47b9-4b4c-8e7d-8ae98c62fde6', '0a0bebf9-1e00-48cf-9e2e-2d986ad3f28e', '', '7.6 cm (3\"), 4 Ohm 30 W'),
('bc7ac07b-3563-4df7-920f-b19258976320', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '95a8386d-0151-4ef5-9b7a-23f2988ffbd8', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '8d10811b-22f9-4e65-b6bd-de72aab10789', '77af6a05-b7ba-4c87-aad3-53eb05bc41bc', '', 'Freq. Range: 87.50 MHz - 108.00 MHz'),
('bc831c12-341a-4f13-a70e-460d1a471838', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '4dc849b5-3796-4ba4-8878-c194953a9fa3', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '53cf8166-47b9-4b4c-8e7d-8ae98c62fde6', '0a0bebf9-1e00-48cf-9e2e-2d986ad3f28e', '', '7.5 cm (3\"), 4 Ohm 30 W'),
('bcd203f3-a825-4101-b923-a999d38e7a1b', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '3847c27a-f9f3-4c62-9213-8f4072e62117', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', 'dfd9fadf-a260-4f80-abe4-5f5508dd414e', '', 'Futuristic'),
('bd35f268-ca50-4b16-8cdf-4f35e2fcd2f0', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'ee550140-1522-4320-8790-b868ce5b74f3', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', 'de29974c-62c6-4bd2-9679-153f01dedcf5', '', 'Guitar / Keyboard & 2 x MIC inputs (6.35 mm)'),
('bd91d43e-2f76-4878-b584-7e74d80de3ef', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'd96ca88f-1b20-437d-973e-4a5fc0655de1', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '1a8d1e3e-4810-4b0c-81c8-caa5b7e501e2', '', '50000'),
('bddb866e-38cc-4774-9d25-7aced589f3cb', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '95a8386d-0151-4ef5-9b7a-23f2988ffbd8', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '8d10811b-22f9-4e65-b6bd-de72aab10789', '5de2a926-69f9-4376-a697-65afff94981d', '', 'Freq. Band: 2.4 GHz (2.4000 GHz - 2.4835 GHz)'),
('be76bbaa-062a-4187-bb9e-6ec7ec60a22c', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'a8887af0-547d-42e1-8cca-779cf1841ed5', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', 'fffa2052-239f-4432-bcba-fcee8dd46f20', '', '3-way speaker'),
('c0095dfd-9540-4064-a2a8-99cfd3176507', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '15a9bc11-1dfb-49c5-8a06-8836d35f9921', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '53cf8166-47b9-4b4c-8e7d-8ae98c62fde6', 'cda903e6-f854-4713-9054-ff3aa4cd75c4', '', '15.3 cm (6\"), 6 Ohm, 60 W'),
('c1f1905e-ecb1-4cd1-a098-1c633814059c', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'd96ca88f-1b20-437d-973e-4a5fc0655de1', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '11fb867e-f262-41c0-9901-912de9aaa12b', '', '220'),
('c2620d49-1d2f-4de1-a483-e31c35669f61', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '4e49b2aa-2eb2-4ae4-93af-7729e23fa404', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', 'ff866824-bbfc-435a-8782-cb74a04f90c8', '', 'AC 220 V - 50 Hz'),
('c2a7a0b2-793c-4111-897b-838b77f724e9', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '8cf82b55-a985-4a5f-83ff-0484ffcdf5c5', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '8d10811b-22f9-4e65-b6bd-de72aab10789', 'a5c86871-0d5f-4424-ae8d-05004cff7f9a', '', 'RCA 2-pin L/R type'),
('c3927170-07a1-4bd7-8fe2-8904fdfda1c1', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '83d4e98c-e184-4c24-978e-0f6d0aafffbc', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '8d10811b-22f9-4e65-b6bd-de72aab10789', '77af6a05-b7ba-4c87-aad3-53eb05bc41bc', '', 'Freq. Range: 87.50 MHz - 108.00 MHz'),
('c4fe4824-764d-4c3d-b59e-eab993a2da83', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '9ab06c62-3e47-4751-abf9-9c2a96d70421', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', 'f46bf78f-7ffc-4fea-a378-fe3ee549e86e', '', 'Yes'),
('c56f8645-52e3-43c8-a538-bb7ba94daa3e', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'f33a3fca-2a2c-4913-8ec9-9a98946ba7b1', '9b97e2c1-4a01-48ac-910a-2d14cb137069', 'dba0d6fd-16b2-4e6c-9923-0950e2db188b', '2b402275-bb39-4d09-bc5c-aa4f3906f3f6', '', 'MIC VOLUME, Echo'),
('c5a82f30-d65b-4e6d-bab9-a403f7699a87', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '8403ceac-7570-475d-81df-82586ff41921', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', 'fffa2052-239f-4432-bcba-fcee8dd46f20', '', '3-way Speaker'),
('c5b96eac-b1fa-4619-b1f0-61a14fa28eda', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '8403ceac-7570-475d-81df-82586ff41921', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '6a1f42b2-b07f-429c-9dd9-bcd44c3450bc', 'W x D x H', '271.4 x 203.5 x 548'),
('c6e305e7-1c03-4d8b-b4e5-b70d643dbfc7', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '9ab06c62-3e47-4751-abf9-9c2a96d70421', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', 'dce9e0cd-8e5b-4d0a-ae57-21dc3dcefdcb', '', 'No'),
('c74fe63c-0468-48ca-b53c-23740391d519', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '57777133-51e7-4ae8-b0de-fee20edce0cc', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', 'ae677dfe-0b1d-4489-98ac-322829e069a4', 'RMS', '2 x 150'),
('c812b7c9-6fbd-42db-983f-7a3693870fcf', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'ee550140-1522-4320-8790-b868ce5b74f3', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '53cf8166-47b9-4b4c-8e7d-8ae98c62fde6', 'cda903e6-f854-4713-9054-ff3aa4cd75c4', '', '2 x 25.4 cm (10\"), 4 Ohm, 80 W'),
('c8325b8e-949b-452c-8e9e-0704513b86a4', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'd96ca88f-1b20-437d-973e-4a5fc0655de1', '9b97e2c1-4a01-48ac-910a-2d14cb137069', 'ba3f4372-afe4-4d88-a6d0-9d3ad2b73824', 'f1350c60-aa18-42a5-8197-abe501f67468', '', 'Volume, Treble, Bass, X-Bass'),
('c84e3974-87c7-4aec-ac4f-f55b55a68ccb', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'a8887af0-547d-42e1-8cca-779cf1841ed5', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '53cf8166-47b9-4b4c-8e7d-8ae98c62fde6', '53475931-30c0-4f42-bb5d-b5bc9a408c3d', '', '2.5 cm (1\"), 4 Ohm, 25 W'),
('c902b0d7-9f7a-4838-ac19-eae51f212fcb', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '5826462f-b495-4df7-a21f-bbf19b981a48', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '53cf8166-47b9-4b4c-8e7d-8ae98c62fde6', 'cda903e6-f854-4713-9054-ff3aa4cd75c4', '', '2 x 30 cm (12\"), 4 Ohm, 80 W'),
('c933bd19-a429-4acc-b1f6-0ffd83c0b8b6', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '83d4e98c-e184-4c24-978e-0f6d0aafffbc', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', 'f46bf78f-7ffc-4fea-a378-fe3ee549e86e', '', 'Yes'),
('cb5d9b52-61e6-44a5-8c29-e09e14609eba', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '8cf82b55-a985-4a5f-83ff-0484ffcdf5c5', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '1a8d1e3e-4810-4b0c-81c8-caa5b7e501e2', '', '50000'),
('cb6a7efa-df1f-42cc-8a78-db388df7a0a5', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '9ab06c62-3e47-4751-abf9-9c2a96d70421', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '65b285b2-b1b7-4797-9fe9-06c9642785a8', '', 'Handle only'),
('cb714d66-f282-453c-9ada-bcf2e304ce84', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'f33a3fca-2a2c-4913-8ec9-9a98946ba7b1', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '3652480e-57ee-4d0c-9601-0f8321ed7bfa', '', '22'),
('cc270769-8062-45bc-a5bb-d396e91d2d2c', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '83d4e98c-e184-4c24-978e-0f6d0aafffbc', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '3652480e-57ee-4d0c-9601-0f8321ed7bfa', '', '14'),
('cd4e376b-6827-4a51-99c1-7f11bbcf7726', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '5826462f-b495-4df7-a21f-bbf19b981a48', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', 'f46bf78f-7ffc-4fea-a378-fe3ee549e86e', '', 'No'),
('cdb0abbc-62a0-4316-8558-8d517d84b9e5', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'f33a3fca-2a2c-4913-8ec9-9a98946ba7b1', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', 'ae677dfe-0b1d-4489-98ac-322829e069a4', 'RMS', '40'),
('cdfb4bdc-d487-4819-8c2f-89585820f5ca', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '4e49b2aa-2eb2-4ae4-93af-7729e23fa404', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '11fb867e-f262-41c0-9901-912de9aaa12b', '', '75'),
('ce11862d-374b-40ac-a397-eb93f2535895', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'd1e7baa1-7ce6-4720-9530-30b84eb97c31', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '65b285b2-b1b7-4797-9fe9-06c9642785a8', '', 'Handle & Wheel'),
('ce264613-fd7b-41ec-9c8b-c53a9d6eddf6', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '4e49b2aa-2eb2-4ae4-93af-7729e23fa404', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '8d10811b-22f9-4e65-b6bd-de72aab10789', 'a5c86871-0d5f-4424-ae8d-05004cff7f9a', '', 'RCA 2-pin L/R type'),
('cf019a11-f69a-4eb8-a58e-be21ef670529', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '95a8386d-0151-4ef5-9b7a-23f2988ffbd8', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '3652480e-57ee-4d0c-9601-0f8321ed7bfa', '', '22'),
('cf29e243-57da-4a73-bedf-9e03344797c2', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '4dc849b5-3796-4ba4-8878-c194953a9fa3', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '11fb867e-f262-41c0-9901-912de9aaa12b', '', '70'),
('cff5b062-0f94-436c-a605-46df41a11df1', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '4e49b2aa-2eb2-4ae4-93af-7729e23fa404', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', 'de29974c-62c6-4bd2-9679-153f01dedcf5', '', '2 x MIC inputs (6.35 mm)'),
('d04d4c17-250a-49a8-8327-b6e7b7577841', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '4dc849b5-3796-4ba4-8878-c194953a9fa3', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', 'f46bf78f-7ffc-4fea-a378-fe3ee549e86e', '', 'Yes'),
('d0570f16-49b2-4f42-8bbf-5e7e7970b896', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '6e7c0a0f-be33-4490-826c-814a59048eb5', '9b97e2c1-4a01-48ac-910a-2d14cb137069', 'dba0d6fd-16b2-4e6c-9923-0950e2db188b', '2b402275-bb39-4d09-bc5c-aa4f3906f3f6', '', 'MIC VOLUME, Echo, Mic Priority'),
('d1a7f177-28c0-4619-8816-c534915d8568', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '57777133-51e7-4ae8-b0de-fee20edce0cc', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', 'ff866824-bbfc-435a-8782-cb74a04f90c8', '', 'AC 220 V - 50 Hz'),
('d2827bc4-3972-40a5-b643-a7b65943855a', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'f33a3fca-2a2c-4913-8ec9-9a98946ba7b1', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '6a1f42b2-b07f-429c-9dd9-bcd44c3450bc', 'W x D x H', '360 x 340 x 880'),
('d2fd1222-2fd4-4a37-9817-a587d55aa533', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'd1e7baa1-7ce6-4720-9530-30b84eb97c31', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '68757736-bbeb-4a48-a383-fad6682a0c42', '', 'Multi Input'),
('d37354c6-0f83-4041-849a-eb857ac4a52e', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '3847c27a-f9f3-4c62-9213-8f4072e62117', '9b97e2c1-4a01-48ac-910a-2d14cb137069', 'dba0d6fd-16b2-4e6c-9923-0950e2db188b', '633de2e4-9792-4adf-8d18-1471cd7c8462', '', 'Mic Priority, Volume, Echo, Reverb'),
('d37a18f4-682b-4f2f-8d44-ea7889383dca', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'd1e7baa1-7ce6-4720-9530-30b84eb97c31', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', 'dce9e0cd-8e5b-4d0a-ae57-21dc3dcefdcb', '', 'Yes'),
('d39998ee-0afc-4b98-ace1-3700188e62e3', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '15a9bc11-1dfb-49c5-8a06-8836d35f9921', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '8d10811b-22f9-4e65-b6bd-de72aab10789', '45ce71bd-0d75-4803-b54a-509330b280f8', '', '*BT connection between 2 units'),
('d410b52b-5157-46d2-be8f-4c6b061309a7', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '4e49b2aa-2eb2-4ae4-93af-7729e23fa404', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', 'dce9e0cd-8e5b-4d0a-ae57-21dc3dcefdcb', '', 'Yes'),
('d421272d-1c09-482d-9b95-ce53ba5e4671', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '4e49b2aa-2eb2-4ae4-93af-7729e23fa404', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '8d10811b-22f9-4e65-b6bd-de72aab10789', 'd4a92c59-b965-4fd4-b913-b9d1982a8898', '', 'MP3 Playback'),
('d444dc84-a1d0-4c7a-bb17-58b485569d0c', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '8403ceac-7570-475d-81df-82586ff41921', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', 'dfd9fadf-a260-4f80-abe4-5f5508dd414e', '', 'Luxury'),
('d469effa-b323-4efe-aadf-abf939337e23', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '8403ceac-7570-475d-81df-82586ff41921', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '3652480e-57ee-4d0c-9601-0f8321ed7bfa', '', '22'),
('d49987fe-0a88-4e5d-ba28-d3d63b0bcac8', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'd1e7baa1-7ce6-4720-9530-30b84eb97c31', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '8d10811b-22f9-4e65-b6bd-de72aab10789', '713305b8-721a-479f-a563-2fc7911b4b1b', '', 'MP3 Playback'),
('d4bb4b18-46d7-4c00-8044-d40723eb1edf', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '4dc849b5-3796-4ba4-8878-c194953a9fa3', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '8e19f446-827b-44ce-acd0-839e6822d8fb', '', '40 - 20000'),
('d4c14379-e9b3-40ea-9739-d18a426ed390', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'ee550140-1522-4320-8790-b868ce5b74f3', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', 'f46bf78f-7ffc-4fea-a378-fe3ee549e86e', '', 'No'),
('d6066c2d-50ff-4ffd-8055-d047766e00a3', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '5826462f-b495-4df7-a21f-bbf19b981a48', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '11fb867e-f262-41c0-9901-912de9aaa12b', '', '180'),
('d7c9b9b3-590f-40d7-9094-195d0526c84f', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '4dc849b5-3796-4ba4-8878-c194953a9fa3', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', 'ff866824-bbfc-435a-8782-cb74a04f90c8', '', 'AC 100 - 240V~ 50Hz & DC 13.5V, 3A'),
('d8374f32-f248-442d-854d-8641af991df4', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '15a9bc11-1dfb-49c5-8a06-8836d35f9921', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '8e19f446-827b-44ce-acd0-839e6822d8fb', '', '20 - 20000'),
('d8f37669-bbaa-4c87-bcf2-537060bb49a0', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'ee550140-1522-4320-8790-b868ce5b74f3', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '11fb867e-f262-41c0-9901-912de9aaa12b', '', '180'),
('d988b24c-e448-4a2d-b177-17ae0c74375c', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '8403ceac-7570-475d-81df-82586ff41921', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', 'ff866824-bbfc-435a-8782-cb74a04f90c8', '', 'AC 220 V - 50 Hz'),
('d9a964f8-8dd4-415c-890f-9a4a78c3c663', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'd1e7baa1-7ce6-4720-9530-30b84eb97c31', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', 'ff866824-bbfc-435a-8782-cb74a04f90c8', '', 'AC 220 V- 50 Hz'),
('da3d6376-cad9-49e5-a523-82214b06ae36', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'd1e7baa1-7ce6-4720-9530-30b84eb97c31', '9b97e2c1-4a01-48ac-910a-2d14cb137069', 'dba0d6fd-16b2-4e6c-9923-0950e2db188b', '2b402275-bb39-4d09-bc5c-aa4f3906f3f6', '', 'MIC VOLUME, Echo'),
('db28a069-fb3c-49d8-845a-b5dbba98f0df', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '57777133-51e7-4ae8-b0de-fee20edce0cc', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '68757736-bbeb-4a48-a383-fad6682a0c42', '', 'Multi Input'),
('dc044ffd-3297-417d-93ad-966a56450eb1', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '3847c27a-f9f3-4c62-9213-8f4072e62117', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '1a8d1e3e-4810-4b0c-81c8-caa5b7e501e2', '', '50000'),
('dc3c315f-9467-4ee2-8328-c6442387a658', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '83d4e98c-e184-4c24-978e-0f6d0aafffbc', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '8d10811b-22f9-4e65-b6bd-de72aab10789', 'a5c86871-0d5f-4424-ae8d-05004cff7f9a', '', 'RCA 2-pin L/R type'),
('dcd88cf9-bb57-4f39-b464-fc1ed1ee7cf2', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '3847c27a-f9f3-4c62-9213-8f4072e62117', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '53cf8166-47b9-4b4c-8e7d-8ae98c62fde6', 'cda903e6-f854-4713-9054-ff3aa4cd75c4', '', '2 x 30 cm (12\"), 6 Ohm, 60 W'),
('dd02678a-7677-4dae-b218-e5161ab0c765', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '6e7c0a0f-be33-4490-826c-814a59048eb5', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '53cf8166-47b9-4b4c-8e7d-8ae98c62fde6', 'cda903e6-f854-4713-9054-ff3aa4cd75c4', '', '30.5 cm (12\"), 4 Ohm, 30 W'),
('df153285-f7ed-44b3-a74f-548d56a51753', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '8403ceac-7570-475d-81df-82586ff41921', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '53cf8166-47b9-4b4c-8e7d-8ae98c62fde6', 'cda903e6-f854-4713-9054-ff3aa4cd75c4', '', '15.3 cm (6\"), 6 Ohm, 60 W'),
('df37c4f2-65ec-4b9f-a916-ee334d4b5f29', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '15a9bc11-1dfb-49c5-8a06-8836d35f9921', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '3652480e-57ee-4d0c-9601-0f8321ed7bfa', '', '11'),
('e0326f17-2800-4c88-af12-3bdf19874565', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'a8887af0-547d-42e1-8cca-779cf1841ed5', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '8d10811b-22f9-4e65-b6bd-de72aab10789', 'd4a92c59-b965-4fd4-b913-b9d1982a8898', '', 'MP3 Playback'),
('e053002a-ab7f-41ce-b883-504fcde5612a', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '57777133-51e7-4ae8-b0de-fee20edce0cc', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '8d10811b-22f9-4e65-b6bd-de72aab10789', '45ce71bd-0d75-4803-b54a-509330b280f8', '', '*BT connection between 2 units'),
('e084b3c2-35d2-458c-9736-be2fbf1f982e', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '6e7c0a0f-be33-4490-826c-814a59048eb5', '9b97e2c1-4a01-48ac-910a-2d14cb137069', 'ba3f4372-afe4-4d88-a6d0-9d3ad2b73824', '2b402275-bb39-4d09-bc5c-aa4f3906f3f6', '', 'Volume, Treble, Bass, X-Bass, Mic Priority'),
('e0d891cd-d547-4716-8984-c89092e84b40', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '57777133-51e7-4ae8-b0de-fee20edce0cc', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '8d10811b-22f9-4e65-b6bd-de72aab10789', '713305b8-721a-479f-a563-2fc7911b4b1b', '', 'MP3 Playback'),
('e0fb50cd-e3f5-44d4-8bd8-c89db068716d', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '6e7c0a0f-be33-4490-826c-814a59048eb5', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '8d10811b-22f9-4e65-b6bd-de72aab10789', '45ce71bd-0d75-4803-b54a-509330b280f8', '', '*BT connection between 2 units'),
('e26cce80-5100-4a64-8bcf-cbb1a1956b75', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'a8887af0-547d-42e1-8cca-779cf1841ed5', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', 'de29974c-62c6-4bd2-9679-153f01dedcf5', '', '2 x MIC Input (6.35 mm)'),
('e3605acc-0a58-449e-ae2b-7a54461fcf15', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'd1e7baa1-7ce6-4720-9530-30b84eb97c31', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '3652480e-57ee-4d0c-9601-0f8321ed7bfa', '', '22'),
('e48afdcc-4a54-42e4-aa73-48ab36b8cac3', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'ee550140-1522-4320-8790-b868ce5b74f3', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '6a1f42b2-b07f-429c-9dd9-bcd44c3450bc', 'W x D x H', '420 x 460 x 1050'),
('e5e22023-ab87-41ad-b850-c510455abba5', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '95a8386d-0151-4ef5-9b7a-23f2988ffbd8', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '8e19f446-827b-44ce-acd0-839e6822d8fb', '', '20 - 20000'),
('e66228d7-b860-4fa6-8af1-8fd7fe835aa4', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '9ab06c62-3e47-4751-abf9-9c2a96d70421', '9b97e2c1-4a01-48ac-910a-2d14cb137069', 'dba0d6fd-16b2-4e6c-9923-0950e2db188b', '2b402275-bb39-4d09-bc5c-aa4f3906f3f6', '', 'MIC VOLUME, Echo, Mic Priority'),
('e73de8ea-67ed-4f79-80a3-e89b3bd87f2b', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'a8887af0-547d-42e1-8cca-779cf1841ed5', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', 'ff866824-bbfc-435a-8782-cb74a04f90c8', '', 'AC 220 V - 50 Hz'),
('e76122b8-01f5-408e-a744-382afe670ac9', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'd96ca88f-1b20-437d-973e-4a5fc0655de1', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '8d10811b-22f9-4e65-b6bd-de72aab10789', 'd4a92c59-b965-4fd4-b913-b9d1982a8898', '', 'MP3 Playback'),
('e76283d8-737c-4f87-b874-fc59dc09f79e', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '5826462f-b495-4df7-a21f-bbf19b981a48', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '8d10811b-22f9-4e65-b6bd-de72aab10789', '713305b8-721a-479f-a563-2fc7911b4b1b', '', 'MP3 Playback'),
('e7df8ce1-e337-48b1-a243-e61d368e0070', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '6e7c0a0f-be33-4490-826c-814a59048eb5', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '8d10811b-22f9-4e65-b6bd-de72aab10789', 'a5c86871-0d5f-4424-ae8d-05004cff7f9a', '', 'RCA 2-pin L/R type'),
('e7ee6836-3d85-49d7-983b-ddfa9ce031dd', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '4dc849b5-3796-4ba4-8878-c194953a9fa3', '9b97e2c1-4a01-48ac-910a-2d14cb137069', 'dba0d6fd-16b2-4e6c-9923-0950e2db188b', '2b402275-bb39-4d09-bc5c-aa4f3906f3f6', '', 'MIC VOLUME, Echo, Mic Priority'),
('e8512ee8-2426-4932-a4d8-7c1a9ed21305', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'ee550140-1522-4320-8790-b868ce5b74f3', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '53cf8166-47b9-4b4c-8e7d-8ae98c62fde6', '53475931-30c0-4f42-bb5d-b5bc9a408c3d', '', '2.5 cm (1\"), 25 W'),
('e86630ae-c69e-4b9f-a51e-8e6ee5cde462', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '8403ceac-7570-475d-81df-82586ff41921', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '8e19f446-827b-44ce-acd0-839e6822d8fb', '', '20 - 20000'),
('e8e69473-ec0b-4158-80c1-99a92e9e208e', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '4dc849b5-3796-4ba4-8878-c194953a9fa3', '9b97e2c1-4a01-48ac-910a-2d14cb137069', 'ba3f4372-afe4-4d88-a6d0-9d3ad2b73824', '2b402275-bb39-4d09-bc5c-aa4f3906f3f6', '', 'Volume, Treble, Bass, X-Bass, Mic Priority'),
('e9459780-50bf-4804-8b58-9a0fa831ef87', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '6e7c0a0f-be33-4490-826c-814a59048eb5', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '65b285b2-b1b7-4797-9fe9-06c9642785a8', '', 'Wheel & Handle'),
('eb1d4b05-b6cf-43ad-af3e-6afb5faff4ca', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '5826462f-b495-4df7-a21f-bbf19b981a48', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', 'fffa2052-239f-4432-bcba-fcee8dd46f20', '', '3-way speaker'),
('ed138917-7a99-4036-9dc2-d27aef60d4f7', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '9ab06c62-3e47-4751-abf9-9c2a96d70421', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '3652480e-57ee-4d0c-9601-0f8321ed7bfa', '', '14'),
('ee86e524-921b-46fa-9d0a-7be898f259fb', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '57777133-51e7-4ae8-b0de-fee20edce0cc', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '65b285b2-b1b7-4797-9fe9-06c9642785a8', '', 'No'),
('eed89c21-accf-44f8-ba57-681c0c628145', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '83d4e98c-e184-4c24-978e-0f6d0aafffbc', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '8d10811b-22f9-4e65-b6bd-de72aab10789', '45ce71bd-0d75-4803-b54a-509330b280f8', '', '*BT connection between 2 units'),
('f02b1dd6-6204-44ea-b658-54d0ac058e68', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'ee550140-1522-4320-8790-b868ce5b74f3', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', 'dce9e0cd-8e5b-4d0a-ae57-21dc3dcefdcb', '', 'Yes'),
('f0b3ffe6-738e-449f-a5d6-31aa5a107760', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '8cf82b55-a985-4a5f-83ff-0484ffcdf5c5', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '8d10811b-22f9-4e65-b6bd-de72aab10789', '713305b8-721a-479f-a563-2fc7911b4b1b', '', 'MP3 Playback'),
('f11ff58e-858e-4439-ab1b-570d48927e93', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'd96ca88f-1b20-437d-973e-4a5fc0655de1', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '8d10811b-22f9-4e65-b6bd-de72aab10789', '45ce71bd-0d75-4803-b54a-509330b280f8', '', '*BT connection between 2 units'),
('f1345972-8728-4ab5-92ad-561ed9a4a956', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '3847c27a-f9f3-4c62-9213-8f4072e62117', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '8d10811b-22f9-4e65-b6bd-de72aab10789', 'd4a92c59-b965-4fd4-b913-b9d1982a8898', '', 'MP3 Playback'),
('f15d74ed-1840-4fc3-b4a2-de5e05722758', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'ee550140-1522-4320-8790-b868ce5b74f3', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '8d10811b-22f9-4e65-b6bd-de72aab10789', 'a5c86871-0d5f-4424-ae8d-05004cff7f9a', '', 'RCA 2-pin L/R type, HDMI, OPTICAL'),
('f1700fb5-ac9f-4c4a-8fed-2cd6b7240602', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '6e7c0a0f-be33-4490-826c-814a59048eb5', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', 'ae677dfe-0b1d-4489-98ac-322829e069a4', 'RMS', '70'),
('f19e79d7-49c3-4f0a-af03-2f5730740e28', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '4dc849b5-3796-4ba4-8878-c194953a9fa3', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '1a8d1e3e-4810-4b0c-81c8-caa5b7e501e2', '', '50000'),
('f2cbae7c-53d6-40c4-b3ad-2251951d3a94', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '6e7c0a0f-be33-4490-826c-814a59048eb5', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', 'fffa2052-239f-4432-bcba-fcee8dd46f20', '', '2-way speaker'),
('f33b9fab-fbef-4c04-8998-58c124511716', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '57777133-51e7-4ae8-b0de-fee20edce0cc', '9b97e2c1-4a01-48ac-910a-2d14cb137069', 'ba3f4372-afe4-4d88-a6d0-9d3ad2b73824', 'e137db07-98f3-4d79-b67c-74912b613f8e', '', 'X-Bass, High, Mid, Low, Volume, Master, Music, Guitar & Keyboard'),
('f41ee6ac-96b4-483e-a0b5-045ab11386ca', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '6e7c0a0f-be33-4490-826c-814a59048eb5', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', 'dce9e0cd-8e5b-4d0a-ae57-21dc3dcefdcb', '', 'No'),
('f52af72a-61d6-466c-80b4-b3ae47cf641f', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '8cf82b55-a985-4a5f-83ff-0484ffcdf5c5', '9b97e2c1-4a01-48ac-910a-2d14cb137069', 'dba0d6fd-16b2-4e6c-9923-0950e2db188b', '2b402275-bb39-4d09-bc5c-aa4f3906f3f6', '', 'MIC Volume, Echo'),
('f5a22ecf-23e9-408b-a3a8-673b899c5811', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '6e7c0a0f-be33-4490-826c-814a59048eb5', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '6a1f42b2-b07f-429c-9dd9-bcd44c3450bc', 'W x D x H', '380 x 298 x 611'),
('f5a8d7eb-ce3c-4fbf-b268-f27d3c461695', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'a8887af0-547d-42e1-8cca-779cf1841ed5', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', 'ae677dfe-0b1d-4489-98ac-322829e069a4', 'RMS', '2 x 45'),
('f6a8122b-9471-42ed-95fe-7c6ce491d304', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '57777133-51e7-4ae8-b0de-fee20edce0cc', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '53cf8166-47b9-4b4c-8e7d-8ae98c62fde6', 'bec7dbb1-579b-4f00-b3c0-21ee663f65c7', '', '2.5 cm (1\"), 4 Ohm, 25 W'),
('f7014500-fd7d-4856-b1a4-11f6127514c7', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '8cf82b55-a985-4a5f-83ff-0484ffcdf5c5', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '53cf8166-47b9-4b4c-8e7d-8ae98c62fde6', 'cda903e6-f854-4713-9054-ff3aa4cd75c4', '', '2 x 20.3 cm (8\"), 6 Ohm, 60 W'),
('f7156b20-0d54-439e-b7ce-81cff42bff9b', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '0fc1bf44-b61d-4991-9403-0b0ecef8c791', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '68757736-bbeb-4a48-a383-fad6682a0c42', '', 'Multi Input'),
('f7c97309-c95d-47b9-b6cc-5cf9c89e7e67', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '3847c27a-f9f3-4c62-9213-8f4072e62117', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '68757736-bbeb-4a48-a383-fad6682a0c42', '', 'Multi Input'),
('f814c510-1fa1-4923-ad55-bc12356831b8', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'ee550140-1522-4320-8790-b868ce5b74f3', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '8e19f446-827b-44ce-acd0-839e6822d8fb', '', '25 - 20000');
INSERT INTO `specificationconnector` (`id`, `brandId`, `productId`, `dynamicspecificationParentId`, `dynamicspecificationSubParentId`, `dynamicspecificationId`, `notes`, `value`) VALUES
('f89ffb78-ff92-4b39-a981-0f65b7a7b3b0', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'a8887af0-547d-42e1-8cca-779cf1841ed5', '9b97e2c1-4a01-48ac-910a-2d14cb137069', 'ba3f4372-afe4-4d88-a6d0-9d3ad2b73824', '2b402275-bb39-4d09-bc5c-aa4f3906f3f6', '', 'X-BASS, BASS, TREBLE, VOLUME'),
('f924639e-8700-48fe-b9d5-7c508e60c286', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '9ab06c62-3e47-4751-abf9-9c2a96d70421', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '6a1f42b2-b07f-429c-9dd9-bcd44c3450bc', 'W x D x H', '264 x 240 x 319.5'),
('f9385b10-25bb-401c-bc6e-7dda4253a532', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '0fc1bf44-b61d-4991-9403-0b0ecef8c791', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', 'dce9e0cd-8e5b-4d0a-ae57-21dc3dcefdcb', '', 'Yes'),
('f96a9824-b44a-4699-8cca-2fad8c4da5da', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '0fc1bf44-b61d-4991-9403-0b0ecef8c791', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '6a1f42b2-b07f-429c-9dd9-bcd44c3450bc', 'W x D x H', '340 x 320 x 730'),
('fb415551-39eb-4d83-a42d-8db305d7d43d', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'd1e7baa1-7ce6-4720-9530-30b84eb97c31', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '53cf8166-47b9-4b4c-8e7d-8ae98c62fde6', '53475931-30c0-4f42-bb5d-b5bc9a408c3d', '', '2.5 cm (1\"), 25 W'),
('fbc87823-7314-408c-a366-8abfd0e7b11a', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '5826462f-b495-4df7-a21f-bbf19b981a48', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '6a1f42b2-b07f-429c-9dd9-bcd44c3450bc', 'W x D x H', '490 x 500 x 1130'),
('fc72ddf6-9425-4477-9302-98a6237e6109', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'f33a3fca-2a2c-4913-8ec9-9a98946ba7b1', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', '8e19f446-827b-44ce-acd0-839e6822d8fb', '', '25 - 20000'),
('fd453015-05d1-4343-972a-a840be7d429d', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '9ab06c62-3e47-4751-abf9-9c2a96d70421', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', 'ae677dfe-0b1d-4489-98ac-322829e069a4', 'RMS', '70'),
('fd988d3c-7f89-4106-bbb5-fab58b6b01de', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '5826462f-b495-4df7-a21f-bbf19b981a48', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '53cf8166-47b9-4b4c-8e7d-8ae98c62fde6', '53475931-30c0-4f42-bb5d-b5bc9a408c3d', '', '2.5 cm (1\"), 25 W'),
('fda9f7cc-31c5-4f87-9584-7430ba9163cb', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'ee550140-1522-4320-8790-b868ce5b74f3', '9b97e2c1-4a01-48ac-910a-2d14cb137069', 'ba3f4372-afe4-4d88-a6d0-9d3ad2b73824', 'f1350c60-aa18-42a5-8197-abe501f67468', '', 'Volume, Treble, Bass, X-Bass'),
('fe7e0dc9-aae8-40d0-b65a-9274e76524ed', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '95a8386d-0151-4ef5-9b7a-23f2988ffbd8', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', 'dfd9fadf-a260-4f80-abe4-5f5508dd414e', '', 'Pro'),
('ff27d1cd-183a-4eae-b2e3-f001240746f6', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '95a8386d-0151-4ef5-9b7a-23f2988ffbd8', '9b97e2c1-4a01-48ac-910a-2d14cb137069', '', 'fffa2052-239f-4432-bcba-fcee8dd46f20', '', '2-way speaker');

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
