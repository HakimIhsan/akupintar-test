-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 13 Okt 2022 pada 15.50
-- Versi Server: 10.1.28-MariaDB
-- PHP Version: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `akupintar`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_kampus`
--

CREATE TABLE `data_kampus` (
  `id_data_kampus` int(11) NOT NULL,
  `id_kampus` int(11) NOT NULL,
  `id_jurusan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `data_kampus`
--

INSERT INTO `data_kampus` (`id_data_kampus`, `id_kampus`, `id_jurusan`) VALUES
(1, 5, 1),
(2, 5, 5),
(3, 5, 2),
(4, 3, 1),
(5, 3, 4),
(6, 3, 5),
(7, 1, 3),
(9, 1, 5);

-- --------------------------------------------------------

--
-- Struktur dari tabel `jurusan`
--

CREATE TABLE `jurusan` (
  `id_jurusan` int(11) NOT NULL,
  `nama_jurusan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `jurusan`
--

INSERT INTO `jurusan` (`id_jurusan`, `nama_jurusan`) VALUES
(1, 'Elektronika'),
(2, 'Mekatronika'),
(3, 'Komunikasi'),
(4, 'Bisnis'),
(5, 'Informatika');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kampus`
--

CREATE TABLE `kampus` (
  `id_kampus` int(11) NOT NULL,
  `nama_kampus` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kampus`
--

INSERT INTO `kampus` (`id_kampus`, `nama_kampus`) VALUES
(1, 'UI'),
(3, 'ITB'),
(5, 'PENS');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mengikuti`
--

CREATE TABLE `mengikuti` (
  `id_mengikuti` int(11) NOT NULL,
  `id_pengguna` int(11) NOT NULL,
  `id_kampus` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `mengikuti`
--

INSERT INTO `mengikuti` (`id_mengikuti`, `id_pengguna`, `id_kampus`) VALUES
(2, 1, 3),
(3, 1, 1),
(4, 2, 5);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengguna`
--

CREATE TABLE `pengguna` (
  `id_pengguna` int(11) NOT NULL,
  `nama_pengguna` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pengguna`
--

INSERT INTO `pengguna` (`id_pengguna`, `nama_pengguna`) VALUES
(1, 'Hakim'),
(2, 'Rian');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data_kampus`
--
ALTER TABLE `data_kampus`
  ADD PRIMARY KEY (`id_data_kampus`),
  ADD KEY `id_jurusan` (`id_jurusan`),
  ADD KEY `id_kampus` (`id_kampus`);

--
-- Indexes for table `jurusan`
--
ALTER TABLE `jurusan`
  ADD PRIMARY KEY (`id_jurusan`);

--
-- Indexes for table `kampus`
--
ALTER TABLE `kampus`
  ADD PRIMARY KEY (`id_kampus`);

--
-- Indexes for table `mengikuti`
--
ALTER TABLE `mengikuti`
  ADD PRIMARY KEY (`id_mengikuti`),
  ADD KEY `id_kampus` (`id_kampus`),
  ADD KEY `id_pengguna` (`id_pengguna`);

--
-- Indexes for table `pengguna`
--
ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`id_pengguna`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `data_kampus`
--
ALTER TABLE `data_kampus`
  MODIFY `id_data_kampus` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `jurusan`
--
ALTER TABLE `jurusan`
  MODIFY `id_jurusan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `kampus`
--
ALTER TABLE `kampus`
  MODIFY `id_kampus` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `mengikuti`
--
ALTER TABLE `mengikuti`
  MODIFY `id_mengikuti` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `pengguna`
--
ALTER TABLE `pengguna`
  MODIFY `id_pengguna` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `data_kampus`
--
ALTER TABLE `data_kampus`
  ADD CONSTRAINT `data_kampus_ibfk_1` FOREIGN KEY (`id_jurusan`) REFERENCES `jurusan` (`id_jurusan`),
  ADD CONSTRAINT `data_kampus_ibfk_2` FOREIGN KEY (`id_kampus`) REFERENCES `kampus` (`id_kampus`);

--
-- Ketidakleluasaan untuk tabel `mengikuti`
--
ALTER TABLE `mengikuti`
  ADD CONSTRAINT `mengikuti_ibfk_1` FOREIGN KEY (`id_kampus`) REFERENCES `kampus` (`id_kampus`),
  ADD CONSTRAINT `mengikuti_ibfk_2` FOREIGN KEY (`id_pengguna`) REFERENCES `pengguna` (`id_pengguna`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
