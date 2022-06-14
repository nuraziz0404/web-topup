-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 23 Jan 2022 pada 03.45
-- Versi server: 10.4.14-MariaDB
-- Versi PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `finalproject`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `freefire`
--

CREATE TABLE `freefire` (
  `id` int(99) NOT NULL,
  `id_account` int(99) NOT NULL,
  `region_account` varchar(99) NOT NULL,
  `purchase` varchar(30) NOT NULL,
  `method_payment` varchar(255) NOT NULL,
  `transaction_invoice` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `freefire`
--

INSERT INTO `freefire` (`id`, `id_account`, `region_account`, `purchase`, `method_payment`, `transaction_invoice`) VALUES
(1, 1234566, 'Indonesia', '720 Diamond', 'OVO', 'petrik.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migration`
--

CREATE TABLE `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `migration`
--

INSERT INTO `migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1636970255),
('m130524_201442_init', 1636986382),
('m190124_110200_add_verification_token_column_to_user_table', 1636986382);

-- --------------------------------------------------------

--
-- Struktur dari tabel `mobilelegends`
--

CREATE TABLE `mobilelegends` (
  `id` int(11) NOT NULL,
  `id_account` int(255) NOT NULL,
  `server_account` int(255) NOT NULL,
  `nickname_account` varchar(255) NOT NULL,
  `purchase` varchar(30) NOT NULL,
  `method_payment` varchar(20) NOT NULL,
  `transaction_invoice` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `mobilelegends`
--

INSERT INTO `mobilelegends` (`id`, `id_account`, `server_account`, `nickname_account`, `purchase`, `method_payment`, `transaction_invoice`) VALUES
(1, 1099805872, 13413, 'Serene TEMPEST.', '706 Diamond', 'Bank Mandiri', 'www.instagram.com/maryaputrap'),
(2, 902350002, 12568, 'Ryan.', '344 Diamond', 'DANA', 'www.instagram.com/ryan'),
(3, 123445241, 124141, 'Arya', '344 Diamond', 'Ovo', 'www.instagram.com/arya'),
(4, 1234567891, 120100, 'Testing', '86 Diamonds', 'DANA', 'www.instagram.com/test'),
(8, 8081318, 12344, 'E i n.', '514 Diamond', 'DANA', 'logo-dana.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pubgindonesia`
--

CREATE TABLE `pubgindonesia` (
  `id` int(11) NOT NULL,
  `id_account` int(255) NOT NULL,
  `nickname_account` varchar(255) NOT NULL,
  `purchase` varchar(30) NOT NULL,
  `method_payment` varchar(20) NOT NULL,
  `transaction_invoice` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `pubgindonesia`
--

INSERT INTO `pubgindonesia` (`id`, `id_account`, `nickname_account`, `purchase`, `method_payment`, `transaction_invoice`) VALUES
(1, 123455, 'Pubg_Mobile', '1925 UC', 'Bank Mandiri', 'uc_mobile.jpg'),
(2, 99999, 'Testi_Pubg', '530 UC', 'Bank Mandiri', 'www.inibukti.com'),
(4, 12432, 'demo', '530 UC', 'DANA', 'logo-pubg.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `reseller`
--

CREATE TABLE `reseller` (
  `id` int(11) NOT NULL,
  `name` varchar(35) NOT NULL,
  `email` varchar(35) NOT NULL,
  `phone_number` int(13) NOT NULL,
  `address` varchar(255) NOT NULL,
  `transaction_invoice` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `reseller`
--

INSERT INTO `reseller` (`id`, `name`, `email`, `phone_number`, `address`, `transaction_invoice`) VALUES
(1, 'Aryanto Tri Nashrullah', 'ryan@gmail.com', 2147483647, 'Sidoarjo', 'petrik.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sausageman`
--

CREATE TABLE `sausageman` (
  `id` int(99) NOT NULL,
  `id_account` int(255) NOT NULL,
  `purchase` varchar(30) NOT NULL,
  `method_payment` varchar(20) NOT NULL,
  `transaction_invoice` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `sausageman`
--

INSERT INTO `sausageman` (`id`, `id_account`, `purchase`, `method_payment`, `transaction_invoice`) VALUES
(1, 123456, '720 Diamond', 'Bank Mandiri', 'candy.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT 10,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `verification_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `username`, `auth_key`, `password_hash`, `password_reset_token`, `email`, `status`, `created_at`, `updated_at`, `verification_token`) VALUES
(1, 'arya', 'wrOfueHfznD2zRBUv4mGFhaXBmnd0DtC', '$2y$13$lL13ztYoQP4JYY6Yo698T.7.EGzM./PxYsVtTXg1ReY6.mRnodaVC', NULL, 'arya@gmail.com', 10, 1636986436, 1636986436, '0tG906PJKAsf2zU2KcBQIZditer8ixNU_1636986436'),
(2, 'aryaputra', 'S45EHGVW7Ou-_zpRP3Q6mzyFAFLTO9iN', '$2y$13$N3ymxqNW2DwEr8pEW02qdeQzeb6A/cWkOgxwHGYaP9W3WeySqMcMe', NULL, 'aryaputra@gmail.com', 10, 1638093314, 1638093314, 'GMTAQgExYFM7eyy3kJLRBuvzq2F4DZ_2_1638093314'),
(3, 'muhammadarya', 'i9xLdblHTcf12oQMpH0AnVlUMFJ_cYDC', '$2y$13$zBhLQUV3u2.DbP.uFntef.kAHtUb21qQPZq5qmUcKa4OkRBpeLse.', NULL, 'arryyaa@gmail.com', 10, 1638346097, 1638346097, 'PlLs4LCvq02Fyg6rpOgIIPeVo1YTknra_1638346097');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `freefire`
--
ALTER TABLE `freefire`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migration`
--
ALTER TABLE `migration`
  ADD PRIMARY KEY (`version`);

--
-- Indeks untuk tabel `mobilelegends`
--
ALTER TABLE `mobilelegends`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pubgindonesia`
--
ALTER TABLE `pubgindonesia`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `reseller`
--
ALTER TABLE `reseller`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `sausageman`
--
ALTER TABLE `sausageman`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `password_reset_token` (`password_reset_token`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `freefire`
--
ALTER TABLE `freefire`
  MODIFY `id` int(99) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `mobilelegends`
--
ALTER TABLE `mobilelegends`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `pubgindonesia`
--
ALTER TABLE `pubgindonesia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `reseller`
--
ALTER TABLE `reseller`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `sausageman`
--
ALTER TABLE `sausageman`
  MODIFY `id` int(99) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
