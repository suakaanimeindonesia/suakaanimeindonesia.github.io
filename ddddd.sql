-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 22 Jun 2020 pada 06.29
-- Versi server: 10.1.30-MariaDB
-- Versi PHP: 7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ddddd`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `stakeholder`
--

CREATE TABLE `stakeholder` (
  `id_stakeholder` int(11) NOT NULL,
  `nama_stakeholder` varchar(255) NOT NULL,
  `jenis` varchar(255) NOT NULL,
  `alamat_kantor` varchar(255) NOT NULL,
  `sektor` varchar(100) NOT NULL,
  `nomor_telepon` varchar(50) NOT NULL,
  `nomor_faks` varchar(50) NOT NULL,
  `alamat_email` varchar(100) NOT NULL,
  `alamat_website` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `stakeholder`
--

INSERT INTO `stakeholder` (`id_stakeholder`, `nama_stakeholder`, `jenis`, `alamat_kantor`, `sektor`, `nomor_telepon`, `nomor_faks`, `alamat_email`, `alamat_website`) VALUES
(1, 'haiyahaiayaya', 'bbbbb', 'cccc', 'dddd', 'eeee', 'ffff', 'gggg', 'website');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_user`, `email`, `password`) VALUES
(1, 'terrificsubs@gmail.com', 'p3rw1rapc'),
(2, 'ezrakontol@gmail.com', 'ezrakontol');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `stakeholder`
--
ALTER TABLE `stakeholder`
  ADD PRIMARY KEY (`id_stakeholder`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `stakeholder`
--
ALTER TABLE `stakeholder`
  MODIFY `id_stakeholder` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
