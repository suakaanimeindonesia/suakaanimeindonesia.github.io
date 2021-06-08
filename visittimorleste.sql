-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 08 Jun 2021 pada 05.58
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
-- Database: `visittimorleste`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `category`
--

CREATE TABLE `category` (
  `id_category` int(11) NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `category`
--

INSERT INTO `category` (`id_category`, `category_name`, `image`) VALUES
(1, 'Attractions', 'categoryattractions.jpg'),
(2, 'Accomodations', 'categoryaccomodations.jpg'),
(3, 'Food & Beverages', 'categoryfoodbeverages.jpg'),
(4, 'Bars & Clubs', 'categorybarsclubs.jpg'),
(5, 'Mall & Shops', 'categorymallshops.jpg'),
(6, 'Tours', 'categorytours.jpg'),
(7, 'Events', 'categoryevents.jpg'),
(9, 'really', 'sneakpeak1.png-1623075949653-644552459.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `localreview`
--

CREATE TABLE `localreview` (
  `id_localreview` int(11) NOT NULL,
  `id_tours` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `quote` varchar(255) NOT NULL,
  `whyshouldvisit` text NOT NULL,
  `specialtip` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `precinct`
--

CREATE TABLE `precinct` (
  `id_precinct` int(11) NOT NULL,
  `precinct_name` varchar(255) NOT NULL,
  `mini_description` text NOT NULL,
  `description` text NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `precinct_tours`
--

CREATE TABLE `precinct_tours` (
  `id_precinct` int(11) NOT NULL,
  `id_tours` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `promotions`
--

CREATE TABLE `promotions` (
  `id_promotions` int(11) NOT NULL,
  `promotions_name` varchar(255) NOT NULL,
  `id_tours` int(11) NOT NULL,
  `from_time` date NOT NULL,
  `to_time` date NOT NULL,
  `description` text NOT NULL,
  `redemptioninstruction` text NOT NULL,
  `termsandconditions` text NOT NULL,
  `disclaimer` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `schedule`
--

CREATE TABLE `schedule` (
  `days` varchar(50) NOT NULL,
  `from_time` time NOT NULL,
  `to_time` time NOT NULL,
  `id_tours` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `schedule`
--

INSERT INTO `schedule` (`days`, `from_time`, `to_time`, `id_tours`) VALUES
('Sunday', '09:30:00', '09:30:00', 3),
('Sunday', '09:30:00', '09:30:00', 5),
('Sunday', '09:30:00', '09:30:00', 2),
('Thursday', '09:30:00', '09:30:00', 1),
('Sunday', '09:30:00', '09:30:00', 6),
('Public Holiday', '09:30:00', '09:30:00', 6);

-- --------------------------------------------------------

--
-- Struktur dari tabel `spotlights`
--

CREATE TABLE `spotlights` (
  `id_spotlights` int(11) NOT NULL,
  `spotlights_title` varchar(255) NOT NULL,
  `id_tours` int(11) NOT NULL,
  `date_posted` datetime NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tours`
--

CREATE TABLE `tours` (
  `id_tours` int(11) NOT NULL,
  `id_category` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `website` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tours`
--

INSERT INTO `tours` (`id_tours`, `id_category`, `name`, `address`, `website`, `phone`, `description`, `image`) VALUES
(1, 1, 'sadasd', 'sadasda', 'sdasdasd', 'asdadsa', 'asdadsad', 'a.jpg'),
(2, 1, 'satu', 'satu', 'satu', 'satu', 'satu', '405ff63f-2ac8-473e-807e-495f21850af9.jpg'),
(3, 1, 'xxx', 'xxx', 'xxx', 'xxx', 'xxx', '405ff63f-2ac8-473e-807e-495f21850af9.jpg'),
(5, 1, 'Memek', 'awaw', 'awaw', 'aw', 'awaw', '02a54dee1a0b584d33e37c89a80aad68.jpg-1623085069886-915700970.jpg'),
(6, 9, 'nyiahaha', 'nyiahaha', 'nyiahaha', 'nyiahaha', 'nyiahaha', 'sneakpeak1.png-1623087855205-688261418.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `type` varchar(50) NOT NULL,
  `minitype` varchar(255) NOT NULL,
  `aboutme` text NOT NULL,
  `locals` enum('Yes','No') NOT NULL,
  `avatar` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id_category`);

--
-- Indeks untuk tabel `localreview`
--
ALTER TABLE `localreview`
  ADD PRIMARY KEY (`id_localreview`),
  ADD KEY `id_tours` (`id_tours`),
  ADD KEY `id_user` (`id_user`);

--
-- Indeks untuk tabel `precinct`
--
ALTER TABLE `precinct`
  ADD PRIMARY KEY (`id_precinct`);

--
-- Indeks untuk tabel `precinct_tours`
--
ALTER TABLE `precinct_tours`
  ADD KEY `id_precinct` (`id_precinct`),
  ADD KEY `id_tours` (`id_tours`);

--
-- Indeks untuk tabel `promotions`
--
ALTER TABLE `promotions`
  ADD PRIMARY KEY (`id_promotions`),
  ADD KEY `id_tours` (`id_tours`);

--
-- Indeks untuk tabel `schedule`
--
ALTER TABLE `schedule`
  ADD KEY `id_tours` (`id_tours`);

--
-- Indeks untuk tabel `spotlights`
--
ALTER TABLE `spotlights`
  ADD PRIMARY KEY (`id_spotlights`),
  ADD KEY `id_tours` (`id_tours`);

--
-- Indeks untuk tabel `tours`
--
ALTER TABLE `tours`
  ADD PRIMARY KEY (`id_tours`),
  ADD KEY `id_category` (`id_category`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `category`
--
ALTER TABLE `category`
  MODIFY `id_category` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `localreview`
--
ALTER TABLE `localreview`
  MODIFY `id_localreview` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `precinct`
--
ALTER TABLE `precinct`
  MODIFY `id_precinct` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `promotions`
--
ALTER TABLE `promotions`
  MODIFY `id_promotions` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `spotlights`
--
ALTER TABLE `spotlights`
  MODIFY `id_spotlights` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tours`
--
ALTER TABLE `tours`
  MODIFY `id_tours` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `localreview`
--
ALTER TABLE `localreview`
  ADD CONSTRAINT `localreview_ibfk_1` FOREIGN KEY (`id_tours`) REFERENCES `tours` (`id_tours`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `localreview_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `precinct_tours`
--
ALTER TABLE `precinct_tours`
  ADD CONSTRAINT `precinct_tours_ibfk_1` FOREIGN KEY (`id_precinct`) REFERENCES `precinct` (`id_precinct`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `precinct_tours_ibfk_2` FOREIGN KEY (`id_tours`) REFERENCES `tours` (`id_tours`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `promotions`
--
ALTER TABLE `promotions`
  ADD CONSTRAINT `promotions_ibfk_1` FOREIGN KEY (`id_tours`) REFERENCES `tours` (`id_tours`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `schedule`
--
ALTER TABLE `schedule`
  ADD CONSTRAINT `schedule_ibfk_1` FOREIGN KEY (`id_tours`) REFERENCES `tours` (`id_tours`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `spotlights`
--
ALTER TABLE `spotlights`
  ADD CONSTRAINT `spotlights_ibfk_1` FOREIGN KEY (`id_tours`) REFERENCES `tours` (`id_tours`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tours`
--
ALTER TABLE `tours`
  ADD CONSTRAINT `tours_ibfk_1` FOREIGN KEY (`id_category`) REFERENCES `category` (`id_category`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
