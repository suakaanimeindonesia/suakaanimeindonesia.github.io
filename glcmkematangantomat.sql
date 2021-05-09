-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 09 Bulan Mei 2021 pada 14.35
-- Versi server: 10.4.18-MariaDB
-- Versi PHP: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `glcmkematangantomat`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `rekamjejak`
--

CREATE TABLE `rekamjejak` (
  `id` int(11) NOT NULL,
  `preview` varchar(255) NOT NULL,
  `kematangan` varchar(50) NOT NULL,
  `presentase` varchar(50) NOT NULL,
  `timeused` varchar(255) NOT NULL,
  `status` varchar(50) NOT NULL,
  `labelledpreview` varchar(255) NOT NULL,
  `tanggal` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `rekamjejak`
--

INSERT INTO `rekamjejak` (`id`, `preview`, `kematangan`, `presentase`, `timeused`, `status`, `labelledpreview`, `tanggal`) VALUES
(8, '9f030161-b098-11eb-ae15-94b86dfaf47a.jpg', 'Setengah matang', '57.60810971260071', '1.4901165962219238', 'Classified', '9fe15c50-b098-11eb-86da-94b86dfaf47a.jpg', '2021-05-09 14:31:52');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_user`, `email`, `password`) VALUES
(1, 'admin@mail.com', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `rekamjejak`
--
ALTER TABLE `rekamjejak`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `rekamjejak`
--
ALTER TABLE `rekamjejak`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
