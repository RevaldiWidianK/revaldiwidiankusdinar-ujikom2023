-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 08 Mar 2023 pada 01.52
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_laundry1`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_transaksi`
--

CREATE TABLE `detail_transaksi` (
  `id_detail` int(11) NOT NULL,
  `id_transaksi` int(11) NOT NULL,
  `id_paket` int(11) NOT NULL,
  `qty` double NOT NULL,
  `total_harga` double NOT NULL,
  `keterangan` text NOT NULL,
  `total_bayar` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `detail_transaksi`
--

INSERT INTO `detail_transaksi` (`id_detail`, `id_transaksi`, `id_paket`, `qty`, `total_harga`, `keterangan`, `total_bayar`) VALUES
(16, 36, 20, 20, 44000, '', 500000),
(17, 37, 20, 50, 110000, '', 200000),
(18, 39, 21, 15, 21000, '', 25000),
(19, 40, 20, 10, 22000, '', 0),
(20, 41, 20, 10, 22000, '', 50000),
(21, 42, 20, 1, 2200, '', 2200),
(22, 43, 20, 2, 4400, '', 0),
(23, 44, 20, 1, 2200, '', 0),
(24, 45, 20, 2, -440, '', 0),
(25, 47, 20, 2, -440, '', 0),
(26, 48, 20, 2, -4000, '', 0),
(27, 49, 20, 2, 36000, '', 0),
(28, 49, 20, 2, 36000, '', 0),
(29, 49, 20, 2, 36000, '', 0),
(30, 49, 20, 2, 36000, '', 0),
(31, 49, 20, 2, 36000, '', 0),
(32, 49, 20, 2, 36000, '', 0),
(33, 49, 20, 2, 36000, '', 0),
(34, 49, 20, 2, 36000, '', 0),
(35, 57, 20, 2, 36000, '', 0),
(36, 58, 20, 2, 38000, '', 0),
(37, 59, 20, 10, 180000, '', 0),
(38, 60, 20, 10, 200000, '', 0),
(39, 61, 21, 2, 33000, '', 0),
(40, 62, 20, 1, 20900, '', 0),
(41, 63, 20, 1, 1100, '', 0),
(42, 64, 20, 1, 23100, '', 0),
(43, 65, 20, 1, 20900, '', 0),
(44, 66, 20, 1, 23100, '', 50000),
(45, 67, 20, 1, 20900, '', 30000),
(46, 70, 20, 1, 20900, '', 0),
(47, 74, 20, 1, 22000, '', 50000),
(48, 77, 21, 1, 15950, '', 0),
(49, 78, 20, 1, 20900, '', 0),
(50, 79, 27, 1, 50600, '', 0),
(51, 80, 27, 2, 100100, '', 200000),
(52, 81, 27, 1, 53350, '', 0),
(53, 82, 30, 1, 16000, '', 0),
(54, 83, 30, 2, 30800, '', 0),
(55, 84, 27, 2, 100100, '', 0),
(56, 85, 27, 2, 99000, '', 99000),
(57, 86, 34, 2, 45100, '', 0),
(58, 87, 28, 2, 5060, '', 0),
(59, 88, 24, 1, 6050, '', 0),
(60, 89, 24, 1, 6050, '', 0),
(61, 90, 24, 1, 6050, '', 0),
(62, 91, 24, 1, 6050, '', 0),
(63, 92, 24, 1, 6050, '', 0),
(64, 94, 24, 1, 18150, '', 0),
(65, 95, 24, 1, 6050, '', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `outlet`
--

CREATE TABLE `outlet` (
  `id_outlet` int(11) NOT NULL,
  `nama_outlet` varchar(228) CHARACTER SET utf8mb4 DEFAULT NULL,
  `alamat_outlet` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `telp_outlet` varchar(15) CHARACTER SET utf8mb4 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `outlet`
--

INSERT INTO `outlet` (`id_outlet`, `nama_outlet`, `alamat_outlet`, `telp_outlet`) VALUES
(9, 'Outlet Merah', 'Yogyakarta, Indonesia', '08555555555'),
(10, 'Outlet Putih', 'Bantul, Yogyakarta, Indonesia', '081222222222'),
(11, 'Outlet Biru', 'Bantul, Daerah Istimewa Yogyakarta', '081223446312'),
(12, 'Outlet Abu-abu', 'Bantul, Yogyakarta', '0826377453886'),
(13, 'TEST', 'WKJB', '4235'),
(14, 'COBA', 'ASD', '325'),
(15, 'BARU', 'WAHID', '0872631'),
(16, 'BARU LAGI', 'SEKECENGEK', '92183234');

-- --------------------------------------------------------

--
-- Struktur dari tabel `paket_cuci`
--

CREATE TABLE `paket_cuci` (
  `id_paket` int(11) NOT NULL,
  `jenis_paket` enum('kiloan','selimut','bedcover','kaos','lain') NOT NULL,
  `nama_paket` varchar(228) NOT NULL,
  `harga` int(11) NOT NULL,
  `outlet_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `paket_cuci`
--

INSERT INTO `paket_cuci` (`id_paket`, `jenis_paket`, `nama_paket`, `harga`, `outlet_id`) VALUES
(20, 'kiloan', 'Paket Wangi Tahan Lama', 20000, 11),
(21, 'kaos', 'Paket Cepat Kering', 15000, 9),
(22, 'selimut', 'Paket Harum', 15000, 9),
(23, 'kiloan', 'Paket Kering Wangi', 25000, 11),
(24, 'kiloan', 'TEST', 5000, 13),
(25, 'kiloan', 'TEST2', 2000, 13),
(26, 'kiloan', 'TEST LAGI', 1000, 11),
(27, 'kiloan', 'PAKET HEMAT BANGET', 50000, 14),
(28, 'kiloan', 'HARUM', 2000, 14),
(29, 'kiloan', 'BARU', 5000, 15),
(30, 'kiloan', 'COOL', 15000, 14),
(31, 'kiloan', 'HARUM SEMERBAK', 20000, 14),
(32, 'selimut', 'CUCI KERING HARUM', 20000, 14),
(33, 'bedcover', 'HARUM SEMERBAK', 20000, 15),
(34, 'kaos', 'Paket Cuci Kering', 20000, 14);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pelanggan`
--

CREATE TABLE `pelanggan` (
  `id_pelanggan` int(11) NOT NULL,
  `nama_pelanggan` varchar(228) NOT NULL,
  `alamat_pelanggan` text NOT NULL,
  `jenis_kelamin` enum('L','P') NOT NULL,
  `telp_pelanggan` varchar(15) NOT NULL,
  `no_ktp` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pelanggan`
--

INSERT INTO `pelanggan` (`id_pelanggan`, `nama_pelanggan`, `alamat_pelanggan`, `jenis_kelamin`, `telp_pelanggan`, `no_ktp`) VALUES
(27, 'Dita', 'Cibeber Cimahi Selatan', 'P', '087737942132', '321193927515234'),
(31, 'Rizal', 'Cimerang ', 'L', '08774625124', '327773271645'),
(33, 'Indahh', 'Ciampel', 'P', '0874266124431', '09214724343'),
(34, 'urip', 'ksajfhsaf', 'L', '98271467124', '878723572');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `id_transaksi` int(11) NOT NULL,
  `outlet_id` int(11) DEFAULT NULL,
  `kode_invoice` varchar(228) CHARACTER SET utf8mb4 DEFAULT NULL,
  `id_pelanggan` int(11) DEFAULT NULL,
  `tgl` datetime DEFAULT NULL,
  `batas_waktu` datetime DEFAULT NULL,
  `tgl_pembayaran` datetime DEFAULT NULL,
  `biaya_tambahan` int(11) DEFAULT NULL,
  `diskon` double DEFAULT NULL,
  `pajak` int(11) DEFAULT NULL,
  `status` enum('baru','proses','selesai','diambil') CHARACTER SET utf8mb4 DEFAULT NULL,
  `status_bayar` enum('dibayar','belum') CHARACTER SET utf8mb4 DEFAULT NULL,
  `id_user` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `transaksi`
--

INSERT INTO `transaksi` (`id_transaksi`, `outlet_id`, `kode_invoice`, `id_pelanggan`, `tgl`, `batas_waktu`, `tgl_pembayaran`, `biaya_tambahan`, `diskon`, `pajak`, `status`, `status_bayar`, `id_user`) VALUES
(36, 9, 'CLN202009033737', NULL, '2020-09-03 04:37:43', '2020-09-10 12:00:00', '2020-09-03 04:40:03', 0, 0, 0, 'baru', 'dibayar', NULL),
(37, 9, 'CLN202009035702', NULL, '2020-09-03 05:03:37', '2020-09-10 12:00:00', '2020-09-03 05:08:28', 0, 0, 0, 'baru', 'dibayar', NULL),
(39, 10, 'CLN202009034317', NULL, '2020-09-03 05:19:12', '2020-09-10 12:00:00', '2020-09-03 05:21:41', 0, 0, 0, 'baru', 'dibayar', NULL),
(40, 9, 'CLN202009040521', NULL, '2020-09-04 03:21:09', '2020-09-11 12:00:00', NULL, 0, 0, 0, 'baru', 'belum', NULL),
(41, 9, 'CLN202009040528', NULL, '2020-09-04 03:28:21', '2020-09-11 12:00:00', '2020-09-04 03:29:00', 0, 0, 0, 'selesai', 'dibayar', NULL),
(42, 9, 'CLN202302020813', 27, '2023-02-02 09:13:26', '2023-02-09 12:00:00', '2023-02-15 09:17:49', 0, 20, 0, 'baru', 'dibayar', 10),
(43, 9, 'CLN202302022220', NULL, '2023-02-02 09:20:41', '2023-02-09 12:00:00', NULL, 2000, 15, 0, 'diambil', 'belum', 10),
(44, 9, 'CLN202302093447', NULL, '2023-02-09 01:47:50', '2023-02-16 12:00:00', NULL, 0, 0, 0, 'baru', 'belum', 10),
(45, 9, 'CLN202302093453', NULL, '2023-02-09 02:53:44', '2023-02-16 12:00:00', NULL, 0, 10, 10, 'baru', 'belum', 10),
(46, 9, 'CLN202302093453', NULL, '2023-02-09 02:59:05', '2023-02-16 12:00:00', NULL, 0, 10, 10, 'baru', 'belum', 10),
(47, 9, 'CLN202302091659', NULL, '2023-02-09 03:00:06', '2023-02-16 12:00:00', NULL, 0, 10, 10, 'baru', 'belum', 10),
(48, 9, 'CLN202302093600', NULL, '2023-02-09 03:00:43', '2023-02-16 12:00:00', NULL, 0, 10, 10, 'baru', 'belum', 10),
(49, 9, 'CLN202302094001', NULL, '2023-02-09 03:01:49', '2023-02-16 12:00:00', NULL, 0, 10, 10, 'baru', 'belum', 10),
(50, 9, 'CLN202302094001', NULL, '2023-02-09 03:01:50', '2023-02-16 12:00:00', NULL, 0, 10, 10, 'baru', 'belum', 10),
(51, 9, 'CLN202302094001', NULL, '2023-02-09 03:01:51', '2023-02-16 12:00:00', NULL, 0, 10, 10, 'baru', 'belum', 10),
(52, 9, 'CLN202302094001', NULL, '2023-02-09 03:01:51', '2023-02-16 12:00:00', NULL, 0, 10, 10, 'baru', 'belum', 10),
(53, 9, 'CLN202302094001', NULL, '2023-02-09 03:01:51', '2023-02-16 12:00:00', NULL, 0, 10, 10, 'baru', 'belum', 10),
(54, 9, 'CLN202302094001', NULL, '2023-02-09 03:01:52', '2023-02-16 12:00:00', NULL, 0, 10, 10, 'baru', 'belum', 10),
(55, 9, 'CLN202302094001', NULL, '2023-02-09 03:01:52', '2023-02-16 12:00:00', NULL, 0, 10, 10, 'baru', 'belum', 10),
(56, 9, 'CLN202302094001', NULL, '2023-02-09 03:01:52', '2023-02-16 12:00:00', NULL, 0, 10, 10, 'baru', 'belum', 10),
(57, 9, 'CLN202302091706', NULL, '2023-02-09 03:06:33', '2023-02-16 12:00:00', NULL, 0, 10, 10, 'baru', 'belum', 10),
(58, 9, 'CLN202302092815', NULL, '2023-02-09 03:15:38', '2023-02-16 12:00:00', NULL, 0, 5, 10, 'baru', 'belum', 10),
(59, 9, 'CLN202302142246', NULL, '2023-02-14 01:46:53', '2023-02-21 12:00:00', NULL, 0, 10, 10, 'baru', 'belum', 10),
(60, 9, 'CLN202302140547', NULL, '2023-02-14 01:47:15', '2023-02-21 12:00:00', NULL, 0, 0, 10, 'baru', 'belum', 10),
(61, 9, 'CLN202302152619', 31, '2023-02-15 09:19:35', '2023-02-22 12:00:00', NULL, 0, 0, 10, 'proses', 'belum', 10),
(62, 9, 'CLN202302234604', 31, '2023-02-23 03:04:59', '2023-03-02 12:00:00', NULL, 1000, 10, 10, 'baru', 'belum', 10),
(63, 9, 'CLN202302231907', 31, '2023-02-23 03:07:32', '2023-03-02 12:00:00', NULL, 1000, 10, 10, 'baru', 'belum', 10),
(64, 9, 'CLN202302234707', 31, '2023-02-23 03:07:55', '2023-03-02 12:00:00', NULL, 1000, 0, 10, 'baru', 'belum', 10),
(65, 9, 'CLN202302233508', 31, '2023-02-23 03:08:43', '2023-03-02 12:00:00', NULL, 1000, 10, 10, 'baru', 'belum', 10),
(66, 9, 'CLN202302234816', 27, '2023-02-23 03:17:21', '2023-03-02 12:00:00', '2023-03-07 08:22:44', 3000, 10, 10, 'baru', 'dibayar', 10),
(67, 9, 'CLN202302233443', 27, '2023-02-23 03:44:10', '2023-03-02 12:00:00', '2023-03-07 08:32:54', 1000, 10, 10, 'baru', 'dibayar', 10),
(68, 10, 'CLN202303015725', NULL, '2023-03-01 01:29:16', '2023-03-08 12:00:00', NULL, 1000, 10, 10, 'baru', 'belum', 11),
(69, 10, 'CLN202303015725', NULL, '2023-03-01 01:30:27', '2023-03-08 12:00:00', NULL, 1000, 10, 10, 'baru', 'belum', 11),
(70, 9, 'CLN202303013432', NULL, '2023-03-01 01:34:00', '2023-03-08 12:00:00', NULL, 1000, 10, 10, 'baru', 'belum', 10),
(71, 10, 'CLN202303010135', NULL, '2023-03-01 01:35:10', '2023-03-08 12:00:00', NULL, 1, 0, 10, 'baru', 'belum', 11),
(72, 10, 'CLN202303010135', NULL, '2023-03-01 01:38:56', '2023-03-08 12:00:00', NULL, 1, 0, 10, 'baru', 'belum', 11),
(73, 10, 'CLN202303015043', NULL, '2023-03-01 01:54:40', '2023-03-08 12:00:00', NULL, 1000, 10, 10, 'baru', 'belum', 11),
(74, 9, 'CLN202303013014', 27, '2023-03-01 02:14:43', '2023-03-08 12:00:00', '2023-03-07 08:44:08', 2000, 10, 10, 'baru', 'dibayar', 10),
(75, 10, 'CLN202303013215', 27, '2023-03-01 02:18:13', '2023-03-08 12:00:00', NULL, 1000, 10, 10, 'baru', 'belum', 11),
(76, 10, 'CLN202303013127', 31, '2023-03-01 02:27:40', '2023-03-08 12:00:00', NULL, 0, 0, 10, 'baru', 'belum', 11),
(77, 9, 'CLN202303013629', 27, '2023-03-01 02:29:45', '2023-03-08 12:00:00', NULL, 1000, 10, 10, 'baru', 'belum', 10),
(78, 9, 'CLN202303014630', NULL, '2023-03-01 02:31:01', '2023-03-08 12:00:00', NULL, 1000, 10, 10, 'baru', 'belum', 10),
(79, 14, 'CLN202303015512', 31, '2023-03-01 03:13:07', '2023-03-08 12:00:00', NULL, 1000, 10, 10, 'baru', 'belum', 16),
(80, 14, 'CLN202303015513', 31, '2023-03-01 03:14:25', '2023-03-08 12:00:00', '2023-03-07 09:10:27', 1000, 10, 10, 'baru', 'dibayar', 16),
(81, 14, 'CLN202303015814', 31, '2023-03-01 03:15:22', '2023-03-08 12:00:00', NULL, 1000, 5, 10, 'baru', 'belum', 16),
(82, 14, 'CLN202303012426', 31, '2023-03-01 03:26:36', '2023-03-08 12:00:00', NULL, 1000, 0, 0, 'baru', 'belum', 16),
(83, 14, 'CLN202303025656', 31, '2023-03-02 01:57:13', '2023-03-09 12:00:00', NULL, 1000, 10, 10, 'baru', 'belum', 16),
(84, 14, 'CLN202303020627', 33, '2023-03-02 02:27:41', '2023-03-09 12:00:00', NULL, 1000, 10, 10, 'baru', 'belum', 16),
(85, 14, 'CLN202303022829', 33, '2023-03-02 02:29:42', '2023-03-09 12:00:00', '2023-03-02 02:30:43', 0, 10, 10, 'baru', 'dibayar', 16),
(86, 14, 'CLN202303020948', 33, '2023-03-02 02:48:44', '2023-03-09 12:00:00', NULL, 1000, 0, 10, 'baru', 'belum', 16),
(87, 14, 'CLN202303063104', 34, '2023-03-06 04:05:03', '2023-03-13 12:00:00', NULL, 1000, 10, 10, 'baru', 'belum', 16),
(88, 13, 'CLN202303072216', 27, '2023-03-07 05:16:33', '2023-03-14 12:00:00', NULL, 1000, 10, 10, 'baru', 'belum', 15),
(89, 13, 'CLN202303070019', 27, '2023-03-07 05:19:19', '2023-03-14 12:00:00', NULL, 1000, 10, 10, 'baru', 'belum', 15),
(90, 13, 'CLN202303075637', 34, '2023-03-07 06:38:04', '2023-03-14 12:00:00', NULL, 1000, 10, 10, 'baru', 'belum', 15),
(91, 13, 'CLN202303070650', 34, '2023-03-07 07:50:14', '2023-03-14 12:00:00', NULL, 1000, 10, 10, 'baru', 'belum', 15),
(92, 13, 'CLN202303071051', 34, '2023-03-07 07:51:17', '2023-03-14 12:00:00', NULL, 1000, 10, 10, 'baru', 'belum', 15),
(93, 13, 'CLN202303073403', 31, '2023-03-07 08:03:36', '2023-03-14 12:00:00', NULL, 0, 0, 10, 'baru', 'belum', 15),
(94, 13, 'CLN202303073903', 31, '2023-03-07 08:03:47', '2023-03-14 12:00:00', NULL, 12000, 10, 10, 'baru', 'belum', 15),
(95, 13, 'CLN202303073316', 31, '2023-03-07 08:16:38', '2023-03-14 12:00:00', NULL, 1000, 10, 10, 'baru', 'belum', 15);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `nama_user` varchar(228) CHARACTER SET utf8mb4 DEFAULT NULL,
  `username` varchar(228) CHARACTER SET utf8mb4 DEFAULT NULL,
  `password` varchar(228) CHARACTER SET utf8mb4 DEFAULT NULL,
  `outlet_id` int(11) DEFAULT NULL,
  `role` enum('admin','kasir','owner') CHARACTER SET utf8mb4 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_user`, `nama_user`, `username`, `password`, `outlet_id`, `role`) VALUES
(10, 'Revaldi', 'Valldi', '25d55ad283aa400af464c76d713c07ad', NULL, 'admin'),
(11, 'Revaldi', 'pall', '25d55ad283aa400af464c76d713c07ad', NULL, 'kasir'),
(12, 'owner', 'REVALDI', '25d55ad283aa400af464c76d713c07ad', 13, 'owner'),
(13, 'TEST', 'TEST', 'd41d8cd98f00b204e9800998ecf8427e', NULL, 'kasir'),
(14, 'KASIR', 'KASIR', '64e8efe726d48358d8692ff6ded50a97', 13, 'kasir'),
(15, 'ADMIN', 'ADMIN', '73acd9a5972130b75066c82595a1fae3', 13, 'admin'),
(16, 'KASIR COBA', 'KASIR COBA', '202cb962ac59075b964b07152d234b70', 14, 'kasir'),
(17, 'KASIR BARU', 'KASIR BARU', '81dc9bdb52d04dc20036dbd8313ed055', 15, 'kasir');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `detail_transaksi`
--
ALTER TABLE `detail_transaksi`
  ADD PRIMARY KEY (`id_detail`),
  ADD KEY `id_transaksi` (`id_transaksi`),
  ADD KEY `id_paket` (`id_paket`);

--
-- Indeks untuk tabel `outlet`
--
ALTER TABLE `outlet`
  ADD PRIMARY KEY (`id_outlet`);

--
-- Indeks untuk tabel `paket_cuci`
--
ALTER TABLE `paket_cuci`
  ADD PRIMARY KEY (`id_paket`),
  ADD KEY `outlet_id` (`outlet_id`);

--
-- Indeks untuk tabel `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`id_pelanggan`);

--
-- Indeks untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_transaksi`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_pelanggan` (`id_pelanggan`),
  ADD KEY `outlet_id` (`outlet_id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`),
  ADD KEY `outlet_id` (`outlet_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `detail_transaksi`
--
ALTER TABLE `detail_transaksi`
  MODIFY `id_detail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT untuk tabel `outlet`
--
ALTER TABLE `outlet`
  MODIFY `id_outlet` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `paket_cuci`
--
ALTER TABLE `paket_cuci`
  MODIFY `id_paket` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT untuk tabel `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `id_pelanggan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `detail_transaksi`
--
ALTER TABLE `detail_transaksi`
  ADD CONSTRAINT `detail_transaksi_ibfk_3` FOREIGN KEY (`id_transaksi`) REFERENCES `transaksi` (`id_transaksi`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `detail_transaksi_ibfk_4` FOREIGN KEY (`id_paket`) REFERENCES `paket_cuci` (`id_paket`) ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `paket_cuci`
--
ALTER TABLE `paket_cuci`
  ADD CONSTRAINT `paket_cuci_ibfk_1` FOREIGN KEY (`outlet_id`) REFERENCES `outlet` (`id_outlet`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `paket_cuci_ibfk_2` FOREIGN KEY (`outlet_id`) REFERENCES `outlet` (`id_outlet`);

--
-- Ketidakleluasaan untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD CONSTRAINT `transaksi_ibfk_4` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `transaksi_ibfk_5` FOREIGN KEY (`id_pelanggan`) REFERENCES `pelanggan` (`id_pelanggan`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `transaksi_ibfk_6` FOREIGN KEY (`outlet_id`) REFERENCES `outlet` (`id_outlet`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`outlet_id`) REFERENCES `outlet` (`id_outlet`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
