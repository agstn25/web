-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 02, 2024 at 09:25 PM
-- Server version: 10.1.8-MariaDB
-- PHP Version: 5.6.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `media pembelajaran`
--

-- --------------------------------------------------------

--
-- Table structure for table `game`
--

CREATE TABLE `game` (
  `id_game` int(11) NOT NULL,
  `judul` varchar(50) NOT NULL,
  `swf` varchar(255) NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `game`
--

INSERT INTO `game` (`id_game`, `judul`, `swf`, `tanggal`) VALUES
(1, 'Game Edukasi', 'kuis.swf', '2024-06-26');

-- --------------------------------------------------------

--
-- Table structure for table `materi`
--

CREATE TABLE `materi` (
  `id_materi` int(11) NOT NULL,
  `judul` varchar(50) NOT NULL,
  `isimateri` text NOT NULL,
  `swf` varchar(255) NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `materi`
--

INSERT INTO `materi` (`id_materi`, `judul`, `isimateri`, `swf`, `tanggal`) VALUES
(1, 'Kisi-Kisi Fluida Dinamis Berpikir Kreatif', '<p>DalamMateri kali ini, Kalian diminta untuk Menganalisis Kesulitan yang didapat saat mengerjakan soal Berikut.</p>\r\n\r\n<p>Selamat Berkerja</p>\r\n', 'ilide.info-kisi-kisi-soal-pr_c90b6d1f7623794bf4d8980b5019af04.pdf', '2024-06-26');

-- --------------------------------------------------------

--
-- Table structure for table `tabel_alasan`
--

CREATE TABLE `tabel_alasan` (
  `id_alasan` int(11) NOT NULL,
  `alasan` text NOT NULL,
  `alasan_a` text NOT NULL,
  `alasan_b` text NOT NULL,
  `alasan_c` text NOT NULL,
  `alasan_d` text NOT NULL,
  `alasan_e` text NOT NULL,
  `jawaban` varchar(100) NOT NULL,
  `publish` enum('yes','no') NOT NULL,
  `tipe` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tabel_loginsiswa`
--

CREATE TABLE `tabel_loginsiswa` (
  `id_loginsiswa` int(11) NOT NULL,
  `Nis` varchar(10) NOT NULL,
  `kelas` varchar(10) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `Aktif` enum('N','Y') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tabel_nilai`
--

CREATE TABLE `tabel_nilai` (
  `id_nilai` int(11) NOT NULL,
  `benar` int(4) NOT NULL,
  `salah` int(4) NOT NULL,
  `kosong` int(4) NOT NULL,
  `poin` int(4) NOT NULL,
  `id_loginsiswa` int(11) NOT NULL,
  `tanggal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tabel_soal`
--

CREATE TABLE `tabel_soal` (
  `id_soal` int(11) NOT NULL,
  `pertanyaan` text NOT NULL,
  `pilihan_a` text NOT NULL,
  `pilihan_b` text NOT NULL,
  `pilihan_c` text NOT NULL,
  `pilihan_d` int(11) NOT NULL,
  `pilihan_e` int(11) NOT NULL,
  `jawaban` varchar(100) NOT NULL,
  `publish` enum('yes','no') NOT NULL,
  `tipe` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tabel_soal`
--

INSERT INTO `tabel_soal` (`id_soal`, `pertanyaan`, `pilihan_a`, `pilihan_b`, `pilihan_c`, `pilihan_d`, `pilihan_e`, `jawaban`, `publish`, `tipe`) VALUES
(1, '<p>Wulan hendak menaikkan batu bermassa 1 ton jika luas penampang pipa besar adalah 250 kali luas penampang pipa kecil dan tekanan cairan pengisi pipa diabaikan, tentukan gaya minimal yang harus diberikan anak agar batu bisa terangkat!</p>\r\n', 'Sangat Yakin', 'Yakin', 'Netral', 0, 0, 'a', 'yes', 0);

-- --------------------------------------------------------

--
-- Table structure for table `timer`
--

CREATE TABLE `timer` (
  `id` int(11) NOT NULL,
  `waktu` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `timer`
--

INSERT INTO `timer` (`id`, `waktu`) VALUES
(1, 60);

-- --------------------------------------------------------

--
-- Table structure for table `tingkat_keyakinan`
--

CREATE TABLE `tingkat_keyakinan` (
  `id_keyakinan` int(11) NOT NULL,
  `sangat yakin` text NOT NULL,
  `yakin` text NOT NULL,
  `tidak yakin` text NOT NULL,
  `sangat tidak yakin` text NOT NULL,
  `jawaban` varchar(100) NOT NULL,
  `publish` enum('yes','no') NOT NULL,
  `tipe` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `username`, `password`) VALUES
(2, 'admin', 'e10adc3949ba59abbe56e057f20f883e'),
(3, 'admin', '96e79218965eb72c92a549dd5a330112');

-- --------------------------------------------------------

--
-- Table structure for table `video`
--

CREATE TABLE `video` (
  `id` int(11) NOT NULL,
  `judul` varchar(50) NOT NULL,
  `link` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `game`
--
ALTER TABLE `game`
  ADD PRIMARY KEY (`id_game`);

--
-- Indexes for table `materi`
--
ALTER TABLE `materi`
  ADD PRIMARY KEY (`id_materi`);

--
-- Indexes for table `tabel_alasan`
--
ALTER TABLE `tabel_alasan`
  ADD PRIMARY KEY (`id_alasan`);

--
-- Indexes for table `tabel_loginsiswa`
--
ALTER TABLE `tabel_loginsiswa`
  ADD PRIMARY KEY (`id_loginsiswa`);

--
-- Indexes for table `tabel_nilai`
--
ALTER TABLE `tabel_nilai`
  ADD PRIMARY KEY (`id_nilai`);

--
-- Indexes for table `tabel_soal`
--
ALTER TABLE `tabel_soal`
  ADD PRIMARY KEY (`id_soal`);

--
-- Indexes for table `timer`
--
ALTER TABLE `timer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tingkat_keyakinan`
--
ALTER TABLE `tingkat_keyakinan`
  ADD PRIMARY KEY (`id_keyakinan`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- Indexes for table `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `game`
--
ALTER TABLE `game`
  MODIFY `id_game` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `materi`
--
ALTER TABLE `materi`
  MODIFY `id_materi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tabel_alasan`
--
ALTER TABLE `tabel_alasan`
  MODIFY `id_alasan` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tabel_loginsiswa`
--
ALTER TABLE `tabel_loginsiswa`
  MODIFY `id_loginsiswa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tabel_nilai`
--
ALTER TABLE `tabel_nilai`
  MODIFY `id_nilai` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tabel_soal`
--
ALTER TABLE `tabel_soal`
  MODIFY `id_soal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `timer`
--
ALTER TABLE `timer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tingkat_keyakinan`
--
ALTER TABLE `tingkat_keyakinan`
  MODIFY `id_keyakinan` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `video`
--
ALTER TABLE `video`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
