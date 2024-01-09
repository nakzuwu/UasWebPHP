-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 08, 2024 at 06:42 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `uas2`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `id_barang` varchar(10) NOT NULL,
  `nama_barang` char(20) NOT NULL,
  `kategori_id_kategori` varchar(10) NOT NULL,
  `harga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` varchar(10) NOT NULL,
  `nama` char(20) NOT NULL,
  `no_telp` varchar(15) NOT NULL,
  `alamat` varchar(20) NOT NULL,
  `gender_id_gender` int(11) NOT NULL,
  `gender_desc` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `nama`, `no_telp`, `alamat`, `gender_id_gender`, `gender_desc`) VALUES
('1', 'Eka Setiawan Hadiwij', '084288764202', 'Jl. Diponegoro, No. ', 1, 'L'),
('10', 'Budi Prabowo Hadiwij', '081017276659', 'Jl. Gatot Subroto, N', 1, 'L'),
('11', 'Hadi Prabowo Kusumaw', '083437307512', 'Jl. Gatot Subroto, N', 1, 'L'),
('12', 'Indah Wijaya Kusumaw', '087729013507', 'Jl. Gatot Subroto, N', 2, 'P'),
('13', 'Citra Prabowo Kusuma', '089338430009', 'Jl. Diponegoro, No. ', 2, 'P'),
('14', 'Budi Sari Wibowo', '085228300882', 'Jl. Gatot Subroto, N', 1, 'L'),
('15', 'Joko Mulyono Widiant', '086672822300', 'Jl. Diponegoro, No. ', 1, 'L'),
('16', 'Hadi Sari Pertiwi', '087194346040', 'Jl. Gajah Mada, No. ', 1, 'L'),
('17', 'Joko Mulyono Pertiwi', '081908662322', 'Jl. Diponegoro, No. ', 1, 'L'),
('18', 'Gita Prabowo Ningsih', '085666711080', 'Jl. Gatot Subroto, N', 2, 'P'),
('19', 'Fajar Nugroho Susant', '089456591753', 'Jl. Pahlawan, No. 45', 1, 'L'),
('2', 'Hadi Utami Ningsih', '084760039038', 'Jl. Pahlawan, No. 30', 1, 'L'),
('20', 'Hadi Sari Wibowo', '083960858726', 'Jl. Gajah Mada, No. ', 1, 'L'),
('21', 'Gita Prabowo Purnama', '084267987472', 'Jl. Gatot Subroto, N', 2, 'P'),
('22', 'Dewi Mulyono Wibowo', '089785664588', 'Jl. Gajah Mada, No. ', 2, 'P'),
('23', 'Budi Prabowo Widodo', '084637330177', 'Jl. Gajah Mada, No. ', 1, 'L'),
('24', 'Indah Sari Widodo', '087534803844', 'Jl. Diponegoro, No. ', 2, 'P'),
('25', 'Joko Lestari Kusumaw', '080698177727', 'Jl. Gajah Mada, No. ', 1, 'L'),
('26', 'Budi Putra Wibowo', '087003222212', 'Jl. Merdeka, No. 456', 1, 'L'),
('27', 'Dewi Prabowo Purnama', '083250424342', 'Jl. Sudirman, No. 20', 2, 'P'),
('28', 'Fajar Nugroho Wibowo', '088432363446', 'Jl. Diponegoro, No. ', 1, 'L'),
('29', 'Fajar Prabowo Wibowo', '089036682418', 'Jl. Merdeka, No. 789', 1, 'L'),
('3', 'Hadi Putra Pertiwi', '085805667458', 'Jl. Diponegoro, No. ', 1, 'L'),
('30', 'Joko Lestari Pertiwi', '080343687673', 'Jl. Pahlawan, No. 10', 1, 'L'),
('31', 'Fajar Prabowo Widodo', '081893101152', 'Jl. Gajah Mada, No. ', 1, 'L'),
('32', 'Dewi Nugroho Pertiwi', '089611850044', 'Jl. Sudirman, No. 10', 2, 'P'),
('33', 'Dewi Nugroho Widiant', '080712503888', 'Jl. Merdeka, No. 303', 2, 'P'),
('34', 'Dewi Hidayat Pertiwi', '087180614236', 'Jl. Merdeka, No. 123', 2, 'P'),
('35', 'Gita Mulyono Santoso', '088781130822', 'Jl. Gajah Mada, No. ', 2, 'P'),
('36', 'Gita Putra Susanto', '084110360061', 'Jl. Sudirman, No. 12', 2, 'P'),
('37', 'Fajar Mulyono Widian', '087911945190', 'Jl. Merdeka, No. 101', 1, 'L'),
('38', 'Gita Prabowo Wibowo', '088548611746', 'Jl. Pahlawan, No. 10', 2, 'P'),
('39', 'Dewi Lestari Purnama', '083071900609', 'Jl. Sudirman, No. 30', 2, 'P'),
('4', 'Fajar Lestari Ningsi', '081640873891', 'Jl. Sudirman, No. 10', 1, 'L'),
('40', 'Budi Setiawan Widian', '085910320435', 'Jl. Merdeka, No. 202', 1, 'L'),
('41', 'Dewi Mulyono Purnama', '089248684229', 'Jl. Sudirman, No. 12', 2, 'P'),
('42', 'Indah Hidayat Hadiwi', '089159658847', 'Jl. Merdeka, No. 123', 2, 'P'),
('43', 'Dewi Lestari Susanto', '082215898106', 'Jl. Sudirman, No. 12', 2, 'P'),
('44', 'Dewi Lestari Purnama', '089115919570', 'Jl. Gajah Mada, No. ', 2, 'P'),
('45', 'Joko Wijaya Ningsih', '080276105900', 'Jl. Diponegoro, No. ', 1, 'L'),
('46', 'Eka Utami Purnama', '087071877590', 'Jl. Gatot Subroto, N', 1, 'L'),
('47', 'Hadi Mulyono Wibowo', '083052451996', 'Jl. Diponegoro, No. ', 1, 'L'),
('48', 'Hadi Putra Purnama', '089894228459', 'Jl. Pahlawan, No. 20', 1, 'L'),
('49', 'Citra Prabowo Widian', '082750812388', 'Jl. Merdeka, No. 303', 2, 'P'),
('5', 'Fajar Utami Pertiwi', '085994084367', 'Jl. Gatot Subroto, N', 1, 'L'),
('50', 'Citra Putra Widodo', '087380051760', 'Jl. Sudirman, No. 10', 2, 'P'),
('51', 'Fajar Sari Ningsih', '080529833331', 'Jl. Sudirman, No. 45', 1, 'L'),
('52', 'Citra Lestari Susant', '085147539498', 'Jl. Gatot Subroto, N', 2, 'P'),
('53', 'Fajar Sari Wibowo', '082409202254', 'Jl. Diponegoro, No. ', 1, 'L'),
('54', 'Budi Utami Ningsih', '081967135352', 'Jl. Diponegoro, No. ', 1, 'L'),
('55', 'Dewi Lestari Pertiwi', '080309280653', 'Jl. Gajah Mada, No. ', 2, 'P'),
('56', 'Kusuma Sari Wibowo', '083979971000', 'Jl. Pahlawan, No. 10', 1, 'L'),
('57', 'Budi Utami Widianto', '088185255680', 'Jl. Merdeka, No. 202', 1, 'L'),
('58', 'Hadi Wijaya Pertiwi', '081473780846', 'Jl. Gajah Mada, No. ', 1, 'L'),
('59', 'Indah Setiawan Kusum', '084910993124', 'Jl. Gatot Subroto, N', 2, 'P'),
('6', 'Fajar Mulyono Widodo', '088398481700', 'Jl. Gajah Mada, No. ', 1, 'L'),
('60', 'Dewi Utami Wibowo', '083350400319', 'Jl. Gajah Mada, No. ', 2, 'P'),
('61', 'Joko Mulyono Ningsih', '080651289598', 'Jl. Sudirman, No. 10', 1, 'L'),
('62', 'Hadi Putra Santoso', '087998791279', 'Jl. Gajah Mada, No. ', 1, 'L'),
('63', 'Indah Hidayat Kusuma', '089531940576', 'Jl. Merdeka, No. 456', 2, 'P'),
('64', 'Dewi Utami Purnama', '087318155868', 'Jl. Pahlawan, No. 20', 2, 'P'),
('65', 'Kusuma Putra Wibowo', '080520456401', 'Jl. Gajah Mada, No. ', 1, 'L'),
('66', 'Gita Wijaya Susanto', '085222422984', 'Jl. Sudirman, No. 12', 2, 'P'),
('67', 'Kusuma Nugroho Purna', '084261875644', 'Jl. Pahlawan, No. 78', 1, 'L'),
('7', 'Dewi Sari Santoso', '087089541367', 'Jl. Sudirman, No. 20', 2, 'P'),
('8', 'Eka Putra Wibowo', '084597784333', 'Jl. Pahlawan, No. 45', 1, 'L'),
('9', 'Hadi Mulyono Ningsih', '086157241606', 'Jl. Sudirman, No. 45', 1, 'L');

-- --------------------------------------------------------

--
-- Table structure for table `detail_transaksi`
--

CREATE TABLE `detail_transaksi` (
  `transaksi_no_struk` int(11) NOT NULL,
  `barang_id_barang` varchar(10) NOT NULL,
  `id_detail` varchar(10) NOT NULL,
  `harga` int(11) NOT NULL,
  `kuantitas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `detail_transaksi`
--

INSERT INTO `detail_transaksi` (`transaksi_no_struk`, `barang_id_barang`, `id_detail`, `harga`, `kuantitas`) VALUES
(1, '8', '138829188', 1000000, 4),
(3, '15', '138830011', 750000, 3),
(2, '15', '138830428', 750000, 1),
(4, '9', '138831250', 500000, 1),
(5, '11', '138831572', 2800000, 4),
(6, '18', '138832189', 900000, 3),
(7, '6', '138832390', 4500000, 2),
(8, '16', '138833764', 1000000, 4),
(9, '11', '138836123', 2800000, 2),
(10, '3', '138836259', 1200000, 1),
(13, '3', '138837132', 1200000, 3),
(17, '8', '138837137', 1000000, 1),
(11, '7', '138837172', 2200000, 3),
(15, '18', '138837214', 900000, 2),
(14, '15', '138837340', 750000, 4),
(12, '5', '138837472', 7000000, 2),
(16, '16', '138837583', 1000000, 1),
(27, '1', '138838001', 3500000, 5),
(45, '1', '138838017', 3500000, 3),
(20, '8', '138838045', 1000000, 4),
(41, '16', '138838051', 1000000, 4),
(44, '9', '138838052', 500000, 3),
(22, '11', '138838071', 2800000, 4),
(32, '14', '138838089', 1300000, 5),
(29, '1', '138838116', 3500000, 4),
(25, '11', '138838203', 2800000, 3),
(18, '19', '138838269', 300000, 5),
(37, '13', '138838271', 1700000, 3),
(34, '11', '138838290', 2800000, 5),
(40, '10', '138838297', 600000, 1),
(33, '8', '138838361', 1000000, 4),
(19, '4', '138838378', 800000, 5),
(31, '12', '138838487', 2000000, 1),
(28, '16', '138838505', 1000000, 4),
(21, '14', '138838537', 1300000, 1),
(36, '20', '138838550', 450000, 1),
(47, '13', '138838634', 1700000, 1),
(24, '10', '138838654', 600000, 4),
(42, '6', '138838665', 4500000, 5),
(39, '18', '138838690', 900000, 4),
(23, '12', '138838691', 2000000, 2),
(30, '12', '138838714', 2000000, 2),
(35, '13', '138838744', 1700000, 2),
(46, '19', '138838868', 300000, 4),
(38, '1', '138838876', 3500000, 2),
(26, '10', '138838956', 600000, 5),
(43, '20', '138838970', 450000, 5),
(73, '2', '138839092', 5800000, 3),
(79, '6', '138839131', 4500000, 3),
(48, '5', '138839172', 7000000, 1),
(80, '6', '138839183', 4500000, 1),
(83, '17', '138839207', 400000, 5),
(77, '18', '138839216', 900000, 1),
(60, '19', '138839240', 300000, 3),
(51, '11', '138839243', 2800000, 5),
(64, '4', '138839252', 800000, 1),
(58, '9', '138839253', 500000, 3),
(50, '14', '138839306', 1300000, 1),
(74, '3', '138839317', 1200000, 5),
(84, '4', '138839350', 800000, 1),
(71, '15', '138839366', 750000, 3),
(72, '2', '138839367', 5800000, 1),
(70, '14', '138839374', 1300000, 4),
(87, '15', '138839389', 750000, 3),
(53, '8', '138839396', 1000000, 1),
(49, '15', '138839414', 750000, 4),
(78, '18', '138839421', 900000, 2),
(89, '10', '138839423', 600000, 1),
(69, '12', '138839471', 2000000, 4),
(81, '13', '138839472', 1700000, 4),
(52, '19', '138839480', 300000, 4),
(86, '12', '138839545', 2000000, 3),
(91, '16', '138839546', 1000000, 2),
(63, '13', '138839570', 1700000, 3),
(66, '10', '138839589', 600000, 3),
(54, '2', '138839598', 5800000, 1),
(76, '13', '138839611', 1700000, 4),
(59, '3', '138839661', 1200000, 2),
(61, '12', '138839676', 2000000, 4),
(56, '9', '138839728', 500000, 2),
(75, '5', '138839763', 7000000, 5),
(88, '6', '138839774', 4500000, 5),
(57, '20', '138839830', 450000, 3),
(90, '3', '138839851', 1200000, 3),
(68, '7', '138839859', 2200000, 2),
(55, '4', '138839863', 800000, 4),
(62, '15', '138839925', 750000, 5),
(82, '1', '138839946', 3500000, 4),
(85, '8', '138839957', 1000000, 3),
(65, '5', '138839983', 7000000, 1),
(67, '14', '138839989', 1300000, 3),
(111, '13', '138840030', 1700000, 3),
(104, '11', '138840037', 2800000, 5),
(102, '7', '138840044', 2200000, 5),
(117, '13', '138840078', 1700000, 4),
(115, '5', '138840152', 7000000, 5),
(93, '3', '138840195', 1200000, 3),
(100, '1', '138840208', 3500000, 5),
(94, '14', '138840212', 1300000, 5),
(109, '12', '138840326', 2000000, 1),
(92, '18', '138840334', 900000, 2),
(112, '20', '138840400', 450000, 2),
(108, '5', '138840410', 7000000, 3),
(105, '14', '138840454', 1300000, 2),
(98, '7', '138840534', 2200000, 1),
(114, '12', '138840538', 2000000, 1),
(110, '2', '138840664', 5800000, 4),
(103, '13', '138840696', 1700000, 3),
(113, '2', '138840723', 5800000, 1),
(99, '17', '138840766', 400000, 5),
(96, '10', '138840775', 600000, 2),
(95, '12', '138840794', 2000000, 5),
(116, '8', '138840853', 1000000, 2),
(97, '17', '138840880', 400000, 2),
(101, '8', '138840898', 1000000, 1),
(107, '10', '138840905', 600000, 3),
(106, '20', '138840921', 450000, 2),
(118, '12', '138841016', 2000000, 3),
(125, '15', '138841074', 750000, 5),
(123, '18', '138841163', 900000, 3),
(133, '16', '138841214', 1000000, 5),
(137, '3', '138841219', 1200000, 2),
(121, '6', '138841220', 4500000, 1),
(155, '12', '138841226', 2000000, 5),
(144, '11', '138841256', 2800000, 2),
(147, '6', '138841299', 4500000, 5),
(129, '12', '138841303', 2000000, 5),
(153, '19', '138841309', 300000, 4),
(135, '20', '138841311', 450000, 2),
(132, '17', '138841336', 400000, 2),
(139, '19', '138841356', 300000, 2),
(158, '2', '138841358', 5800000, 1),
(154, '4', '138841389', 800000, 5),
(156, '18', '138841409', 900000, 4),
(136, '20', '138841410', 450000, 3),
(142, '19', '138841423', 300000, 2),
(151, '17', '138841466', 400000, 1),
(134, '6', '138841478', 4500000, 3),
(138, '16', '138841488', 1000000, 2),
(141, '11', '138841490', 2800000, 5),
(145, '5', '138841538', 7000000, 5),
(120, '16', '138841545', 1000000, 3),
(122, '19', '138841595', 300000, 1),
(140, '7', '138841599', 2200000, 1),
(119, '16', '138841631', 1000000, 1),
(146, '11', '138841635', 2800000, 5),
(127, '9', '138841671', 500000, 4),
(126, '7', '138841676', 2200000, 1),
(128, '4', '138841683', 800000, 5),
(131, '11', '138841685', 2800000, 1),
(124, '11', '138841705', 2800000, 2),
(152, '12', '138841712', 2000000, 4),
(143, '2', '138841773', 5800000, 5),
(148, '5', '138841776', 7000000, 4),
(149, '16', '138841780', 1000000, 1),
(157, '18', '138841784', 900000, 2),
(130, '15', '138841835', 750000, 3),
(150, '4', '138841997', 800000, 3),
(175, '8', '138842003', 1000000, 4),
(169, '8', '138842006', 1000000, 3),
(162, '5', '138842021', 7000000, 1),
(167, '3', '138842024', 1200000, 2),
(174, '19', '138842072', 300000, 2),
(159, '8', '138842113', 1000000, 5),
(186, '13', '138842118', 1700000, 1),
(181, '12', '138842152', 2000000, 1),
(187, '2', '138842155', 5800000, 3),
(166, '1', '138842173', 3500000, 4),
(177, '7', '138842232', 2200000, 5),
(163, '8', '138842237', 1000000, 5),
(173, '14', '138842289', 1300000, 2),
(160, '11', '138842374', 2800000, 1),
(191, '8', '138842405', 1000000, 5),
(168, '5', '138842475', 7000000, 2),
(189, '5', '138842517', 7000000, 5),
(185, '8', '138842539', 1000000, 3),
(183, '3', '138842555', 1200000, 3),
(182, '15', '138842562', 750000, 2),
(165, '12', '138842624', 2000000, 3),
(195, '3', '138842635', 1200000, 2),
(171, '10', '138842640', 600000, 1),
(164, '1', '138842670', 3500000, 5),
(178, '8', '138842672', 1000000, 5),
(184, '13', '138842711', 1700000, 2),
(197, '14', '138842736', 1300000, 4),
(172, '10', '138842741', 600000, 2),
(190, '15', '138842745', 750000, 2),
(196, '4', '138842751', 800000, 3),
(161, '16', '138842813', 1000000, 4),
(170, '11', '138842816', 2800000, 5),
(176, '5', '138842827', 7000000, 2),
(193, '20', '138842853', 450000, 1),
(192, '8', '138842872', 1000000, 3),
(188, '6', '138842873', 4500000, 5),
(180, '19', '138842922', 300000, 4),
(194, '15', '138842937', 750000, 5),
(179, '3', '138842957', 1200000, 3),
(198, '10', '138843015', 600000, 3),
(203, '2', '138843083', 5800000, 2),
(209, '2', '138843146', 5800000, 4),
(217, '10', '138843150', 600000, 3),
(200, '10', '138843160', 600000, 3),
(204, '16', '138843308', 1000000, 3),
(202, '15', '138843340', 750000, 2),
(208, '9', '138843390', 500000, 4),
(207, '8', '138843444', 1000000, 2),
(210, '5', '138843479', 7000000, 2),
(201, '2', '138843497', 5800000, 5),
(205, '5', '138843506', 7000000, 4),
(214, '18', '138843653', 900000, 4),
(213, '1', '138843700', 3500000, 2),
(212, '13', '138843712', 1700000, 4),
(199, '12', '138843747', 2000000, 4),
(215, '13', '138843917', 1700000, 3),
(211, '11', '138843931', 2800000, 1),
(206, '1', '138843936', 3500000, 4),
(216, '4', '138843984', 800000, 2),
(219, '3', '138848197', 1200000, 2),
(218, '4', '138848322', 800000, 5),
(222, '2', '138848359', 5800000, 2),
(221, '8', '138848420', 1000000, 3),
(225, '9', '138848492', 500000, 2),
(220, '16', '138848679', 1000000, 2),
(224, '13', '138848871', 1700000, 1),
(223, '1', '138848958', 3500000, 2),
(242, '5', '138849004', 7000000, 5),
(272, '9', '138849020', 500000, 5),
(244, '15', '138849021', 750000, 5),
(265, '15', '138849022', 750000, 5),
(256, '20', '138849083', 450000, 1),
(236, '6', '138849088', 4500000, 3),
(248, '11', '138849111', 2800000, 4),
(269, '8', '138849116', 1000000, 5),
(257, '14', '138849120', 1300000, 3),
(262, '18', '138849121', 900000, 1),
(241, '13', '138849128', 1700000, 2),
(255, '13', '138849149', 1700000, 2),
(239, '8', '138849175', 1000000, 1),
(238, '1', '138849181', 3500000, 4),
(259, '6', '138849182', 4500000, 2),
(253, '10', '138849223', 600000, 1),
(275, '16', '138849249', 1000000, 2),
(271, '20', '138849272', 450000, 3),
(261, '19', '138849310', 300000, 4),
(227, '19', '138849324', 300000, 2),
(250, '4', '138849331', 800000, 3),
(263, '4', '138849333', 800000, 2),
(240, '8', '138849369', 1000000, 1),
(234, '9', '138849409', 500000, 3),
(260, '9', '138849435', 500000, 4),
(264, '9', '138849439', 500000, 1),
(278, '18', '138849448', 900000, 2),
(232, '10', '138849513', 600000, 1),
(251, '10', '138849523', 600000, 1),
(231, '7', '138849602', 2200000, 3),
(229, '2', '138849616', 5800000, 3),
(273, '10', '138849620', 600000, 4),
(235, '19', '138849641', 300000, 3),
(274, '9', '138849642', 500000, 2),
(276, '6', '138849644', 4500000, 3),
(230, '10', '138849647', 600000, 2),
(237, '9', '138849697', 500000, 3),
(228, '9', '138849709', 500000, 5),
(254, '20', '138849716', 450000, 4),
(246, '20', '138849719', 450000, 3),
(243, '9', '138849787', 500000, 4),
(258, '3', '138849796', 1200000, 4),
(233, '16', '138849819', 1000000, 2),
(277, '5', '138849834', 7000000, 1),
(249, '12', '138849879', 2000000, 4),
(245, '3', '138849880', 1200000, 4),
(267, '17', '138849888', 400000, 1),
(268, '14', '138849914', 1300000, 4),
(252, '9', '138849917', 500000, 5),
(270, '20', '138849953', 450000, 4),
(226, '13', '138849954', 1700000, 3),
(266, '17', '138849961', 400000, 5),
(247, '18', '138849989', 900000, 2),
(279, '18', '138850075', 900000, 3),
(285, '18', '138850200', 900000, 4),
(282, '4', '138850320', 800000, 3),
(283, '2', '138850398', 5800000, 1),
(286, '9', '138850857', 500000, 3),
(284, '1', '138850866', 3500000, 5),
(280, '1', '138850901', 3500000, 1),
(281, '11', '138850942', 2800000, 5),
(313, '12', '138861047', 2000000, 1),
(308, '19', '138861086', 300000, 2),
(289, '8', '138861196', 1000000, 5),
(312, '20', '138861213', 450000, 1),
(307, '15', '138861217', 750000, 3),
(293, '15', '138861304', 750000, 3),
(309, '2', '138861306', 5800000, 2),
(301, '11', '138861394', 2800000, 1),
(303, '13', '138861440', 1700000, 1),
(295, '10', '138861448', 600000, 2),
(298, '7', '138861498', 2200000, 1),
(299, '19', '138861515', 300000, 1),
(291, '14', '138861569', 1300000, 4),
(294, '12', '138861572', 2000000, 3),
(287, '9', '138861629', 500000, 2),
(305, '11', '138861682', 2800000, 4),
(300, '4', '138861721', 800000, 1),
(306, '18', '138861731', 900000, 2),
(310, '8', '138861743', 1000000, 3),
(311, '4', '138861753', 800000, 1),
(288, '12', '138861774', 2000000, 5),
(290, '18', '138861775', 900000, 2),
(296, '15', '138861881', 750000, 2),
(297, '18', '138861929', 900000, 2),
(292, '13', '138861942', 1700000, 1),
(304, '12', '138861975', 2000000, 5),
(302, '1', '138861979', 3500000, 2),
(323, '10', '138862088', 600000, 1),
(322, '16', '138862125', 1000000, 3),
(321, '12', '138862138', 2000000, 5),
(327, '16', '138862145', 1000000, 3),
(320, '17', '138862323', 400000, 1),
(314, '4', '138862369', 800000, 5),
(324, '13', '138862389', 1700000, 2),
(316, '11', '138862391', 2800000, 1),
(319, '13', '138862413', 1700000, 5),
(325, '18', '138862441', 900000, 3),
(315, '12', '138862585', 2000000, 2),
(318, '5', '138862703', 7000000, 2),
(317, '11', '138862868', 2800000, 4),
(326, '5', '138862873', 7000000, 4),
(328, '17', '138891104', 400000, 3),
(331, '15', '138900184', 750000, 2),
(332, '10', '138900266', 600000, 3),
(329, '13', '138900484', 1700000, 5),
(330, '9', '138900571', 500000, 3),
(334, '10', '138900661', 600000, 5),
(333, '10', '138900862', 600000, 1),
(342, '18', '138901017', 900000, 1),
(341, '11', '138901052', 2800000, 5),
(345, '16', '138901071', 1000000, 3),
(337, '13', '138901089', 1700000, 5),
(350, '14', '138901107', 1300000, 3),
(336, '20', '138901130', 450000, 5),
(351, '5', '138901133', 7000000, 1),
(361, '20', '138901269', 450000, 3),
(363, '17', '138901289', 400000, 4),
(360, '5', '138901307', 7000000, 2),
(338, '2', '138901321', 5800000, 1),
(355, '7', '138901337', 2200000, 5),
(339, '2', '138901352', 5800000, 1),
(354, '14', '138901382', 1300000, 1),
(347, '14', '138901443', 1300000, 5),
(343, '6', '138901527', 4500000, 2),
(359, '6', '138901536', 4500000, 4),
(349, '10', '138901560', 600000, 5),
(348, '16', '138901562', 1000000, 1),
(352, '6', '138901704', 4500000, 2),
(357, '2', '138901707', 5800000, 5),
(353, '6', '138901729', 4500000, 3),
(358, '4', '138901753', 800000, 3),
(344, '2', '138901891', 5800000, 3),
(356, '8', '138901898', 1000000, 3),
(335, '4', '138901925', 800000, 2),
(362, '5', '138901928', 7000000, 5),
(340, '8', '138901983', 1000000, 4),
(346, '17', '138901992', 400000, 3),
(367, '15', '138902181', 750000, 4),
(365, '8', '138902381', 1000000, 2),
(368, '8', '138902414', 1000000, 1),
(364, '3', '138902644', 1200000, 4),
(366, '9', '138902923', 500000, 1),
(369, '6', '138911140', 4500000, 3),
(371, '12', '138911241', 2000000, 1),
(370, '3', '138911659', 1200000, 3),
(372, '6', '138911989', 4500000, 3),
(379, '7', '138937279', 2200000, 3),
(381, '16', '138937409', 1000000, 5),
(382, '7', '138937431', 2200000, 4),
(373, '6', '138937537', 4500000, 3),
(375, '1', '138937565', 3500000, 2),
(374, '9', '138937592', 500000, 5),
(378, '15', '138937668', 750000, 2),
(377, '16', '138937699', 1000000, 5),
(383, '6', '138937846', 4500000, 5),
(376, '20', '138937884', 450000, 2),
(380, '1', '138937972', 3500000, 3),
(385, '7', '138938002', 2200000, 4),
(390, '13', '138938068', 1700000, 5),
(397, '6', '138938125', 4500000, 5),
(391, '1', '138938165', 3500000, 4),
(392, '12', '138938221', 2000000, 2),
(393, '10', '138938231', 600000, 5),
(384, '18', '138938332', 900000, 3),
(387, '11', '138938402', 2800000, 3),
(399, '9', '138938561', 500000, 2),
(388, '18', '138938591', 900000, 2),
(394, '10', '138938752', 600000, 2),
(396, '9', '138938765', 500000, 4),
(395, '15', '138938766', 750000, 5),
(389, '14', '138938784', 1300000, 4),
(398, '15', '138938810', 750000, 4),
(386, '6', '138938823', 4500000, 5);

-- --------------------------------------------------------

--
-- Table structure for table `gender`
--

CREATE TABLE `gender` (
  `id_gender` int(11) NOT NULL,
  `deskripsi` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `gender`
--

INSERT INTO `gender` (`id_gender`, `deskripsi`) VALUES
(1, 'Laki-Laki'),
(2, 'Perempuan');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` varchar(10) NOT NULL,
  `kategori` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `customer_id` varchar(10) NOT NULL,
  `no_struk` int(11) NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`customer_id`, `no_struk`, `tanggal`) VALUES
('58', 2, '2023-07-07'),
('3', 3, '2023-07-08'),
('27', 4, '2023-07-09'),
('55', 5, '2023-07-10'),
('45', 6, '2023-07-11'),
('62', 7, '2023-07-12'),
('45', 8, '2023-07-13'),
('31', 9, '2023-07-14'),
('18', 10, '2023-07-15'),
('18', 11, '2023-07-16'),
('67', 12, '2023-07-17'),
('21', 13, '2023-07-18'),
('8', 14, '2023-07-19'),
('39', 15, '2023-07-20'),
('58', 16, '2023-07-21'),
('15', 17, '2023-07-22'),
('23', 18, '2023-07-23'),
('63', 19, '2023-07-24'),
('34', 20, '2023-07-25'),
('33', 21, '2023-07-26'),
('17', 22, '2023-07-27'),
('38', 23, '2023-07-28'),
('31', 24, '2023-07-29'),
('53', 25, '2023-07-30'),
('42', 26, '2023-07-31'),
('52', 27, '2023-08-01'),
('11', 28, '2023-08-02'),
('22', 29, '2023-08-03'),
('8', 30, '2023-08-04'),
('46', 31, '2023-08-05'),
('41', 32, '2023-08-06'),
('24', 33, '2023-08-07'),
('40', 34, '2023-08-08'),
('54', 35, '2023-08-09'),
('19', 36, '2023-08-10'),
('7', 37, '2023-08-11'),
('8', 38, '2023-08-12'),
('43', 39, '2023-08-13'),
('29', 40, '2023-08-14'),
('15', 41, '2023-08-15'),
('38', 42, '2023-08-16'),
('5', 43, '2023-08-17'),
('13', 44, '2023-08-18'),
('35', 45, '2023-08-19'),
('19', 46, '2023-08-20'),
('4', 47, '2023-08-21'),
('54', 48, '2023-08-22'),
('15', 49, '2023-08-23'),
('43', 50, '2023-08-24'),
('58', 51, '2023-08-25'),
('10', 52, '2023-08-26'),
('61', 53, '2023-08-27'),
('7', 54, '2023-08-28'),
('38', 55, '2023-08-29'),
('64', 56, '2023-08-30'),
('51', 57, '2023-08-31'),
('33', 58, '2023-09-01'),
('27', 59, '2023-09-02'),
('52', 60, '2023-09-03'),
('67', 61, '2023-09-04'),
('54', 62, '2023-09-05'),
('29', 63, '2023-09-06'),
('11', 64, '2023-09-07'),
('4', 65, '2023-09-08'),
('21', 66, '2023-09-09'),
('21', 67, '2023-09-10'),
('39', 68, '2023-09-11'),
('13', 69, '2023-09-12'),
('18', 70, '2023-09-13'),
('64', 71, '2023-09-14'),
('61', 72, '2023-09-15'),
('53', 73, '2023-09-16'),
('26', 74, '2023-09-17'),
('44', 75, '2023-09-18'),
('17', 76, '2023-09-19'),
('44', 77, '2023-09-20'),
('44', 78, '2023-09-21'),
('45', 79, '2023-09-22'),
('67', 80, '2023-09-23'),
('3', 81, '2023-09-24'),
('32', 82, '2023-09-25'),
('48', 83, '2023-09-26'),
('36', 84, '2023-09-27'),
('20', 85, '2023-09-28'),
('24', 86, '2023-09-29'),
('48', 87, '2023-09-30'),
('28', 88, '2023-10-01'),
('5', 89, '2023-10-02'),
('35', 90, '2023-10-03'),
('65', 91, '2023-10-04'),
('53', 92, '2023-10-05'),
('21', 93, '2023-10-06'),
('33', 94, '2023-10-07'),
('27', 95, '2023-10-08'),
('56', 96, '2023-10-09'),
('54', 97, '2023-10-10'),
('18', 98, '2023-10-11'),
('56', 99, '2023-10-12'),
('61', 100, '2023-10-13'),
('5', 101, '2023-10-14'),
('57', 102, '2023-10-15'),
('59', 103, '2023-10-16'),
('13', 104, '2023-10-17'),
('14', 105, '2023-10-18'),
('66', 106, '2023-10-19'),
('48', 107, '2023-10-20'),
('46', 108, '2023-10-21'),
('63', 109, '2023-10-22'),
('10', 110, '2023-10-23'),
('63', 111, '2023-10-24'),
('39', 112, '2023-10-25'),
('45', 113, '2023-10-26'),
('64', 114, '2023-10-27'),
('64', 115, '2023-10-28'),
('24', 116, '2023-10-29'),
('12', 117, '2023-10-30'),
('8', 118, '2023-10-31'),
('61', 119, '2023-11-01'),
('33', 120, '2023-11-02'),
('6', 121, '2023-11-03'),
('30', 122, '2023-11-04'),
('29', 123, '2023-11-05'),
('34', 124, '2023-11-06'),
('19', 125, '2023-11-07'),
('60', 126, '2023-11-08'),
('4', 127, '2023-11-09'),
('44', 128, '2023-11-10'),
('54', 129, '2023-11-11'),
('10', 130, '2023-11-12'),
('15', 131, '2023-11-13'),
('13', 132, '2023-11-14'),
('59', 133, '2023-11-15'),
('10', 134, '2023-11-16'),
('12', 135, '2023-11-17'),
('28', 136, '2023-11-18'),
('59', 137, '2023-11-19'),
('47', 138, '2023-11-20'),
('66', 139, '2023-11-21'),
('43', 140, '2023-11-22'),
('22', 141, '2023-11-23'),
('29', 142, '2023-11-24'),
('54', 143, '2023-11-25'),
('38', 144, '2023-11-26'),
('43', 145, '2023-11-27'),
('4', 146, '2023-11-28'),
('28', 147, '2023-11-29'),
('29', 148, '2023-11-30'),
('38', 149, '2023-12-01'),
('7', 150, '2023-12-02'),
('39', 151, '2023-12-03'),
('1', 152, '2023-12-04'),
('52', 153, '2023-12-05'),
('11', 154, '2023-12-06'),
('39', 155, '2023-12-07'),
('9', 156, '2023-12-08'),
('3', 157, '2023-12-09'),
('16', 158, '2023-12-10'),
('59', 159, '2023-12-11'),
('16', 160, '2023-12-12'),
('7', 161, '2023-12-13'),
('4', 162, '2023-12-14'),
('9', 163, '2023-12-15'),
('38', 164, '2023-12-16'),
('34', 165, '2023-12-17'),
('43', 166, '2023-12-18'),
('41', 167, '2023-12-19'),
('28', 168, '2023-12-20');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id_barang`),
  ADD KEY `barang_kategori_fk` (`kategori_id_kategori`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_gender_fk` (`gender_id_gender`);

--
-- Indexes for table `detail_transaksi`
--
ALTER TABLE `detail_transaksi`
  ADD PRIMARY KEY (`id_detail`),
  ADD KEY `detail_transaksi_barang_fk` (`barang_id_barang`),
  ADD KEY `detail_transaksi_transaksi_fk` (`transaksi_no_struk`);

--
-- Indexes for table `gender`
--
ALTER TABLE `gender`
  ADD PRIMARY KEY (`id_gender`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`no_struk`),
  ADD KEY `transaksi_customer_fk` (`customer_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `barang`
--
ALTER TABLE `barang`
  ADD CONSTRAINT `barang_kategori_fk` FOREIGN KEY (`kategori_id_kategori`) REFERENCES `kategori` (`id_kategori`);

--
-- Constraints for table `customer`
--
ALTER TABLE `customer`
  ADD CONSTRAINT `customer_gender_fk` FOREIGN KEY (`gender_id_gender`) REFERENCES `gender` (`id_gender`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;