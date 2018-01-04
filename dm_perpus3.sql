-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 04, 2018 at 11:34 AM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dm_perpus3`
--

-- --------------------------------------------------------

--
-- Table structure for table `anggota`
--

CREATE TABLE `anggota` (
  `anggota_id` int(11) NOT NULL,
  `anggota_nama` varchar(40) NOT NULL,
  `anggota_pekerjaan` varchar(40) NOT NULL,
  `anggota_alamat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `anggota`
--

INSERT INTO `anggota` (`anggota_id`, `anggota_nama`, `anggota_pekerjaan`, `anggota_alamat`) VALUES
(1, 'Muhammad Agus Priyogo', 'Mahasiswa', 'Jln Mandonga'),
(2, 'Ahmad Khairun Arsyad', 'Pengangguran', 'BTN UHO\r\n'),
(3, 'Muhammad Budi Dharmawan', 'Siswa', 'Pasar Baru'),
(4, 'Alba Purnama', 'Penjual Keliling', 'Pasar Baru'),
(5, 'Moh. La Andi Rais', 'Guru', 'Jln Sisingamangaraja'),
(6, 'Muazharin Alfan', 'Penjual Helm', 'Wanggu'),
(7, 'Darul Zulkifli', 'Tukang Parkir', 'Lippo'),
(8, 'Jimmy Odelyzed', 'Polisi', 'Azatata'),
(9, 'Tono Leon', 'CEO ADR Studio', 'Lab Robot'),
(10, 'Ragil Manggalaning Yudhanto', 'Sopir', 'Turikale');

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `barang_id` int(11) NOT NULL,
  `barang_nama` varchar(50) NOT NULL,
  `barang_harga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`barang_id`, `barang_nama`, `barang_harga`) VALUES
(1, 'Laptop', 5000000),
(2, 'Notebook', 3000000),
(3, 'Kemputer', 2000000);

-- --------------------------------------------------------

--
-- Table structure for table `pencatatan`
--

CREATE TABLE `pencatatan` (
  `pencatatan_id` int(11) NOT NULL,
  `anggota_id` int(11) NOT NULL,
  `barang_id` int(11) NOT NULL,
  `tanggal_id` int(11) NOT NULL,
  `pencatatan_jumlah` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pencatatan`
--

INSERT INTO `pencatatan` (`pencatatan_id`, `anggota_id`, `barang_id`, `tanggal_id`, `pencatatan_jumlah`) VALUES
(1, 2, 2, 1, 2),
(2, 2, 3, 1, 3),
(3, 4, 3, 1, 1),
(4, 7, 1, 2, 1),
(5, 7, 3, 2, 1),
(6, 4, 2, 3, 1),
(7, 8, 1, 3, 1),
(8, 5, 2, 4, 2),
(9, 5, 1, 5, 1),
(10, 6, 1, 6, 3),
(11, 8, 3, 6, 2),
(12, 9, 2, 7, 2),
(13, 10, 3, 8, 1),
(14, 3, 3, 8, 5),
(15, 1, 3, 8, 8),
(16, 6, 3, 9, 1),
(17, 4, 2, 9, 2),
(18, 6, 1, 10, 1),
(19, 2, 1, 10, 11),
(20, 3, 2, 11, 4),
(21, 1, 2, 11, 6),
(22, 7, 1, 12, 1),
(23, 10, 1, 12, 1),
(24, 1, 2, 13, 3),
(25, 6, 2, 14, 2),
(26, 1, 1, 15, 12),
(27, 2, 1, 16, 14),
(28, 7, 3, 17, 2),
(29, 9, 3, 18, 1),
(30, 8, 2, 18, 2),
(31, 10, 3, 19, 1),
(32, 4, 2, 20, 3),
(33, 1, 3, 20, 1),
(34, 8, 3, 21, 1),
(35, 3, 1, 21, 12),
(36, 1, 1, 22, 14),
(37, 3, 2, 23, 11),
(38, 3, 1, 24, 1),
(39, 10, 3, 25, 2),
(40, 5, 3, 25, 2),
(41, 9, 1, 26, 3),
(42, 5, 1, 26, 2),
(43, 1, 3, 27, 12),
(44, 6, 3, 28, 1),
(45, 8, 2, 29, 12),
(46, 7, 1, 30, 12),
(47, 4, 2, 31, 22),
(48, 8, 1, 31, 1),
(49, 7, 3, 32, 12),
(50, 5, 1, 33, 1),
(51, 10, 2, 33, 22),
(52, 5, 2, 34, 1),
(53, 3, 3, 34, 12);

-- --------------------------------------------------------

--
-- Table structure for table `tanggal`
--

CREATE TABLE `tanggal` (
  `tanggal_id` int(11) NOT NULL,
  `tanggal_hari` int(11) NOT NULL,
  `tanggal_bulan` int(11) NOT NULL,
  `tanggal_tahun` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tanggal`
--

INSERT INTO `tanggal` (`tanggal_id`, `tanggal_hari`, `tanggal_bulan`, `tanggal_tahun`) VALUES
(1, 5, 1, 2017),
(2, 7, 1, 2017),
(3, 12, 1, 2017),
(4, 2, 1, 2017),
(5, 1, 2, 2017),
(6, 2, 2, 2017),
(7, 5, 2, 2017),
(8, 7, 2, 2017),
(9, 23, 3, 2017),
(10, 28, 3, 2017),
(11, 12, 4, 2017),
(12, 16, 4, 2017),
(13, 24, 4, 2017),
(14, 6, 5, 2017),
(15, 12, 5, 2017),
(16, 16, 5, 2017),
(17, 4, 6, 2017),
(18, 7, 6, 2017),
(19, 5, 7, 0),
(20, 7, 7, 0),
(21, 13, 7, 2017),
(22, 16, 7, 2017),
(23, 14, 8, 2017),
(24, 1, 9, 2017),
(25, 25, 9, 2017),
(26, 26, 9, 2017),
(27, 13, 10, 2017),
(28, 16, 10, 2017),
(29, 12, 11, 2017),
(30, 15, 11, 2017),
(31, 24, 11, 2017),
(32, 2, 12, 2017),
(33, 14, 12, 2017),
(34, 16, 12, 2017);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `anggota`
--
ALTER TABLE `anggota`
  ADD PRIMARY KEY (`anggota_id`);

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`barang_id`);

--
-- Indexes for table `pencatatan`
--
ALTER TABLE `pencatatan`
  ADD PRIMARY KEY (`pencatatan_id`),
  ADD KEY `anggota_id` (`anggota_id`),
  ADD KEY `buku_id` (`barang_id`),
  ADD KEY `tanggal_id` (`tanggal_id`);

--
-- Indexes for table `tanggal`
--
ALTER TABLE `tanggal`
  ADD PRIMARY KEY (`tanggal_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `anggota`
--
ALTER TABLE `anggota`
  MODIFY `anggota_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `barang`
--
ALTER TABLE `barang`
  MODIFY `barang_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `pencatatan`
--
ALTER TABLE `pencatatan`
  MODIFY `pencatatan_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;
--
-- AUTO_INCREMENT for table `tanggal`
--
ALTER TABLE `tanggal`
  MODIFY `tanggal_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `pencatatan`
--
ALTER TABLE `pencatatan`
  ADD CONSTRAINT `pencatatan_ibfk_1` FOREIGN KEY (`barang_id`) REFERENCES `barang` (`barang_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pencatatan_ibfk_2` FOREIGN KEY (`tanggal_id`) REFERENCES `tanggal` (`tanggal_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pencatatan_ibfk_3` FOREIGN KEY (`anggota_id`) REFERENCES `anggota` (`anggota_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
