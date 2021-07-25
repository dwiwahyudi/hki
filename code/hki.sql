-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 25, 2021 at 12:06 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hki`
--

-- --------------------------------------------------------

--
-- Table structure for table `d_paten`
--

CREATE TABLE `d_paten` (
  `id` int(11) NOT NULL,
  `nomor` varchar(50) DEFAULT NULL COMMENT 'nomor pendaftaran',
  `tanggal` date DEFAULT NULL,
  `jns_paten` enum('Biasa','Sederhana') DEFAULT NULL,
  `id_pegawai` int(11) DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `nama_tanpa_gelar` varchar(255) DEFAULT NULL,
  `nip` varchar(18) DEFAULT NULL,
  `id_fakultas` int(11) DEFAULT NULL,
  `fakultas` varchar(100) DEFAULT NULL,
  `jurusan` varchar(100) DEFAULT NULL,
  `pekerjaan` varchar(100) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `hp` varchar(50) DEFAULT NULL,
  `wa` varchar(50) DEFAULT NULL,
  `alamat` text DEFAULT NULL COMMENT 'Alamat tempat tinggal',
  `alamat_ktp` text DEFAULT NULL COMMENT 'Alamat sesuai KTP',
  `id_verifikator` int(11) DEFAULT NULL,
  `verifikator` varchar(100) DEFAULT NULL COMMENT 'Nama Verifikator',
  `no_permohonan` varchar(20) DEFAULT NULL,
  `tgl_penerimaan` date DEFAULT NULL,
  `no_paten` varchar(20) DEFAULT NULL,
  `tgl_paten` date DEFAULT NULL,
  `no_pengumuman` varchar(20) DEFAULT NULL,
  `tgl_pengumuman` date DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Data paten';

-- --------------------------------------------------------

--
-- Table structure for table `d_paten_history`
--

CREATE TABLE `d_paten_history` (
  `id` int(11) NOT NULL,
  `nomor` varchar(50) NOT NULL DEFAULT '0',
  `tanggal` date NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `keterangan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `d_paten_invensi`
--

CREATE TABLE `d_paten_invensi` (
  `id` int(11) NOT NULL,
  `nomor` varchar(50) DEFAULT NULL,
  `judul_id` text DEFAULT NULL,
  `judul_en` text DEFAULT NULL,
  `klaim` text DEFAULT NULL,
  `abstrak_id` text DEFAULT NULL,
  `abstrak_en` text DEFAULT NULL,
  `konten` text DEFAULT NULL,
  `file_abstrak` varchar(100) DEFAULT NULL,
  `file_gambar` varchar(100) DEFAULT NULL,
  `file_deskripsi` varchar(100) DEFAULT NULL,
  `file_pengalihan` varchar(100) DEFAULT NULL,
  `file_kepemilikan` varchar(100) DEFAULT NULL,
  `revisi_ke` int(11) DEFAULT NULL,
  `id_bidangilmu` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `d_paten_inventor`
--

CREATE TABLE `d_paten_inventor` (
  `id` int(11) NOT NULL,
  `nomor` varchar(50) NOT NULL DEFAULT '0',
  `nourut` int(11) NOT NULL DEFAULT 0,
  `nidn` varchar(50) DEFAULT NULL,
  `id_pegawai` int(11) NOT NULL DEFAULT 0,
  `nama` varchar(150) NOT NULL DEFAULT '0',
  `nip` varchar(18) NOT NULL DEFAULT '0',
  `id_fakultas` int(11) NOT NULL DEFAULT 0,
  `fakultas` varchar(100) NOT NULL DEFAULT '0',
  `jurusan` varchar(100) NOT NULL DEFAULT '0',
  `alamat` text NOT NULL,
  `email` varchar(50) NOT NULL DEFAULT '',
  `hp` varchar(50) NOT NULL DEFAULT '',
  `wa` varchar(50) NOT NULL DEFAULT '',
  `file_ktp` varchar(100) NOT NULL DEFAULT '',
  `file_ttd` varchar(100) NOT NULL DEFAULT '',
  `id_jnspenulis` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `d_paten_veifikasi`
--

CREATE TABLE `d_paten_veifikasi` (
  `id` int(11) NOT NULL,
  `nomor` varchar(50) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `id_verifikator` int(11) DEFAULT NULL,
  `verifikator` varchar(100) DEFAULT NULL,
  `catatan` text DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `d_unduh`
--

CREATE TABLE `d_unduh` (
  `id` int(11) NOT NULL,
  `judul` varchar(200) DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `url` varchar(150) DEFAULT NULL,
  `file` varchar(100) DEFAULT NULL,
  `id_jnsunduh` int(11) DEFAULT NULL,
  `tampil` enum('Y','N') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `ref_bidang_ilmu`
--

CREATE TABLE `ref_bidang_ilmu` (
  `id_bidangilmu` int(11) NOT NULL,
  `nama_bidangilmu` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ref_bidang_ilmu`
--

INSERT INTO `ref_bidang_ilmu` (`id_bidangilmu`, `nama_bidangilmu`) VALUES
(1, 'AGAMA'),
(2, 'EKONOMI'),
(7, 'HUKUM'),
(8, 'KESEHATAN'),
(9, 'MIPA'),
(10, 'PENDIDIKAN'),
(11, 'PERTANIAN'),
(12, 'POLITIK'),
(13, 'PSIKOLOGI'),
(14, 'SASTRA/FILSAFAT'),
(15, 'SENI'),
(16, 'SOSIAL'),
(17, 'TEKNOLOGI');

-- --------------------------------------------------------

--
-- Table structure for table `ref_fakultas`
--

CREATE TABLE `ref_fakultas` (
  `id_fakultas` int(11) NOT NULL,
  `fakultas` varchar(50) DEFAULT NULL,
  `fakultas2` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ref_fakultas`
--

INSERT INTO `ref_fakultas` (`id_fakultas`, `fakultas`, `fakultas2`) VALUES
(1, 'FSSRD', 'FAK. SASTRA DAN SENI RUPA\r\n'),
(2, 'FIB', 'ILMU BUDAYA (FIB)\r\n'),
(3, 'FKIP', 'FAK. KEGURUAN DAN ILMU PENDIDIKAN'),
(4, 'FH', 'FAK. HUKUM'),
(5, 'FEB', 'FAK. EKONOMI & BISNIS'),
(6, 'FISIP', 'FAK. ILMU SOSIAL DAN ILMU POLITIK'),
(7, 'FP', 'FAK. PERTANIAN'),
(8, 'FK', 'FAK. KEDOKTERAN'),
(9, 'FT', 'FAK. TEKNIK'),
(10, 'FMIPA', 'FAK. MATEMATIKA DAN ILMU PENGETAHUAN ALAM'),
(11, 'PASCA', 'FAK. PASCASARJANA'),
(12, 'FKOR', 'FAK. Fakultas Keolahragaan'),
(13, 'SV', 'FAK. Sekolah Vokasi');

-- --------------------------------------------------------

--
-- Table structure for table `ref_jns_penulis`
--

CREATE TABLE `ref_jns_penulis` (
  `id_jnspenulis` int(11) NOT NULL,
  `jenis_penulis` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ref_jns_penulis`
--

INSERT INTO `ref_jns_penulis` (`id_jnspenulis`, `jenis_penulis`) VALUES
(1, 'PENULIS UTAMA'),
(2, 'ANGGOTA PENULIS');

-- --------------------------------------------------------

--
-- Table structure for table `ref_jns_unduh`
--

CREATE TABLE `ref_jns_unduh` (
  `id_jnsunduh` int(11) NOT NULL,
  `jenis_unduh` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ref_jns_unduh`
--

INSERT INTO `ref_jns_unduh` (`id_jnsunduh`, `jenis_unduh`) VALUES
(1, 'MEREK'),
(2, 'PATEN'),
(3, 'HAK CIPTA'),
(4, 'DESAIN INDUSTRI'),
(5, 'LAIN-LAIN');

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_ki`
-- (See below for the actual view)
--
CREATE TABLE `v_ki` (
`nomor` varchar(50)
,`judul_id` text
,`no_ki` varchar(20)
,`tgl_penerimaan` date
,`bidang_ilmu` int(11)
);

-- --------------------------------------------------------

--
-- Structure for view `v_ki`
--
DROP TABLE IF EXISTS `v_ki`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_ki`  AS SELECT `a`.`nomor` AS `nomor`, `b`.`judul_id` AS `judul_id`, `a`.`no_permohonan` AS `no_ki`, `a`.`tgl_penerimaan` AS `tgl_penerimaan`, `c`.`id_bidangilmu` AS `bidang_ilmu` FROM ((`d_paten` `a` join `d_paten_invensi` `b` on(`a`.`nomor` = `b`.`nomor`)) join `ref_bidang_ilmu` `c` on(`b`.`id_bidangilmu` = `c`.`id_bidangilmu`)) WHERE `a`.`no_permohonan` <> '' OR `a`.`no_permohonan` is not null ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `d_paten`
--
ALTER TABLE `d_paten`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `d_paten_history`
--
ALTER TABLE `d_paten_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `d_paten_invensi`
--
ALTER TABLE `d_paten_invensi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `d_paten_inventor`
--
ALTER TABLE `d_paten_inventor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `d_paten_veifikasi`
--
ALTER TABLE `d_paten_veifikasi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `d_unduh`
--
ALTER TABLE `d_unduh`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ref_bidang_ilmu`
--
ALTER TABLE `ref_bidang_ilmu`
  ADD PRIMARY KEY (`id_bidangilmu`);

--
-- Indexes for table `ref_fakultas`
--
ALTER TABLE `ref_fakultas`
  ADD PRIMARY KEY (`id_fakultas`) USING BTREE;

--
-- Indexes for table `ref_jns_penulis`
--
ALTER TABLE `ref_jns_penulis`
  ADD PRIMARY KEY (`id_jnspenulis`);

--
-- Indexes for table `ref_jns_unduh`
--
ALTER TABLE `ref_jns_unduh`
  ADD PRIMARY KEY (`id_jnsunduh`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `d_paten`
--
ALTER TABLE `d_paten`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `d_paten_history`
--
ALTER TABLE `d_paten_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `d_paten_invensi`
--
ALTER TABLE `d_paten_invensi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `d_paten_inventor`
--
ALTER TABLE `d_paten_inventor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `d_paten_veifikasi`
--
ALTER TABLE `d_paten_veifikasi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `d_unduh`
--
ALTER TABLE `d_unduh`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ref_bidang_ilmu`
--
ALTER TABLE `ref_bidang_ilmu`
  MODIFY `id_bidangilmu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `ref_fakultas`
--
ALTER TABLE `ref_fakultas`
  MODIFY `id_fakultas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `ref_jns_unduh`
--
ALTER TABLE `ref_jns_unduh`
  MODIFY `id_jnsunduh` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
