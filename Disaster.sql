-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 08 Des 2023 pada 20.28
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `donasi`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `donasi`
--

CREATE TABLE `donasi` (
  `id_donasi` int(11) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `phone` int(12) NOT NULL,
  `pesan` text NOT NULL,
  `nominal` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `donasi`
--

INSERT INTO `donasi` (`id_donasi`, `nama`, `email`, `phone`, `pesan`, `nominal`) VALUES
(11, 'Rafi', 'Rafinaufal@gmail.com', 123456789, 'saya sangat senang dengan web ini', 50);

-- --------------------------------------------------------

--
-- Struktur dari tabel `provinsi`
--

CREATE TABLE `provinsi` (
  `id` int(11) NOT NULL,
  `nama_provinsi` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `provinsi`
--

INSERT INTO `provinsi` (`id`, `nama_provinsi`) VALUES
(1, 'Aceh'),
(2, 'Sumatera Utara'),
(3, 'Sumatera Barat'),
(4, 'Riau'),
(5, 'Jambi'),
(6, 'Sumatera Selatan'),
(7, 'Bengkulu'),
(8, 'Lampung'),
(9, 'Bangka Belitung'),
(10, 'Kepulauan Riau'),
(11, 'DKI Jakarta'),
(12, 'Jawa Barat'),
(13, 'Jawa Tengah'),
(14, 'Jawa Timur'),
(15, 'Banten'),
(16, 'Bali'),
(17, 'Nusa Tenggara Barat'),
(18, 'Nusa Tenggara Timur'),
(19, 'Kalimantan Barat'),
(20, 'Kalimantan Tengah'),
(21, 'Kalimantan Selatan'),
(22, 'Kalimantan Timur'),
(23, 'Kalimantan Utara'),
(24, 'Sulawesi Utara'),
(25, 'Sulawesi Tengah'),
(26, 'Sulawesi Selatan'),
(27, 'Sulawesi Tenggara'),
(28, 'Gorontalo'),
(29, 'Maluku'),
(30, 'Maluku Utara'),
(31, 'Papua Barat'),
(32, 'Papua');

-- --------------------------------------------------------

--
-- Struktur dari tabel `register`
--

CREATE TABLE `register` (
  `id_user` int(11) NOT NULL,
  `username` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `confirm_password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `register`
--

INSERT INTO `register` (`id_user`, `username`, `email`, `password`, `confirm_password`) VALUES
(1, 'devi', 'devi@gmail.com', 'devisamosir', 'devisamosir');

-- --------------------------------------------------------

--
-- Struktur dari tabel `relawan`
--

CREATE TABLE `relawan` (
  `id_relawan` int(100) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `nik` varchar(200) NOT NULL,
  `jk` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `telp` int(100) NOT NULL,
  `kategori` varchar(100) NOT NULL,
  `fotodiri` char(255) NOT NULL,
  `alamat` text NOT NULL,
  `keahlian` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_bencana`
--

CREATE TABLE `tbl_bencana` (
  `id` int(11) NOT NULL,
  `jenis_bencana` varchar(255) DEFAULT NULL,
  `provinsi` int(11) DEFAULT NULL,
  `deskripsi_kejadian` varchar(255) DEFAULT NULL,
  `tingkat_kematian` varchar(255) DEFAULT NULL,
  `tingkat_kerusakan` varchar(255) DEFAULT NULL,
  `tanggal_waktu_kejadian` datetime DEFAULT NULL,
  `wilayah` varchar(255) DEFAULT NULL,
  `potensi` varchar(255) DEFAULT NULL,
  `dialami` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tbl_bencana`
--

INSERT INTO `tbl_bencana` (`id`, `jenis_bencana`, `provinsi`, `deskripsi_kejadian`, `tingkat_kematian`, `tingkat_kerusakan`, `tanggal_waktu_kejadian`, `wilayah`, `potensi`, `dialami`, `image`, `url`, `createdAt`, `updatedAt`) VALUES
(1, 'tsunami', 1, 'Gempa Pada Laut dengan kedalaman sekian km, terasa pada kabutpaten kodomo', '14', '12', '2002-12-11 17:00:00', 'Selat Biru', 'Tidak terjadi tsunami', 'tias, surya, dan warga sekitar selat biru', 'f5b0ba792eacdbb9deaae1005678d477.jpg', 'http://localhost:3000/images/f5b0ba792eacdbb9deaae1005678d477.jpg', '2023-12-04 16:46:36', '2023-12-04 16:51:08'),
(3, 'gempa', 1, 'Gempa Pada Laut dengan kedalaman sekian km, terasa pada kabutpaten kodomo', '14', '12', '2002-12-11 17:00:00', 'Selat Biru', 'Tidak terjadi tsunami', 'tias, surya, dan warga sekitar selat biru', 'f5b0ba792eacdbb9deaae1005678d477.jpg', 'http://localhost:3000/images/f5b0ba792eacdbb9deaae1005678d477.jpg', '2023-12-04 16:48:34', '2023-12-04 16:48:34'),
(4, 'Gempa Bumi', NULL, 'Gempa dengan kekuatan Magnitude: 2.7', NULL, NULL, '2023-12-02 18:32:02', 'Pusat gempa berada di darat, 24 km BaratDaya Kab. Bandung', 'Tinggi', 'II - III Kab. Bandung, III Cianjur', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'Gempa Bumi', NULL, 'Gempa dengan kekuatan Magnitude: 5.0', NULL, NULL, '2023-12-02 14:57:22', 'Pusat gempa berada di laut 21 km TimurLaut Wahai', 'Tinggi', 'II Kairatu', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'Gempa Bumi', NULL, 'Gempa dengan kekuatan Magnitude: 7.5', NULL, NULL, '2023-12-02 14:37:07', 'Pusat gempa berada di laut 420 km BaratLaut Pulau Karatung', 'Tinggi', 'III Naha', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_relawan`
--

CREATE TABLE `tbl_relawan` (
  `id` int(11) NOT NULL,
  `id_users` int(11) DEFAULT NULL,
  `no_telp` varchar(255) DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `jk` enum('laki-laki','perempuan') DEFAULT NULL,
  `nik` varchar(255) DEFAULT NULL,
  `status_anggota` enum('aktif','tidak aktif') DEFAULT 'tidak aktif',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tbl_relawan`
--

INSERT INTO `tbl_relawan` (`id`, `id_users`, `no_telp`, `alamat`, `jk`, `nik`, `status_anggota`, `createdAt`, `updatedAt`) VALUES
(1, 1, '121212121212', 'Karangmoncol', 'laki-laki', '1234567890', 'tidak aktif', '2023-12-04 17:27:32', '2023-12-04 17:27:32');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_riwayat`
--

CREATE TABLE `tbl_riwayat` (
  `id` int(11) NOT NULL,
  `id_users` int(11) DEFAULT NULL,
  `jumlah_donasi` varchar(255) DEFAULT NULL,
  `tanggal_donasi` datetime DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tbl_riwayat`
--

INSERT INTO `tbl_riwayat` (`id`, `id_users`, `jumlah_donasi`, `tanggal_donasi`, `createdAt`, `updatedAt`) VALUES
(1, 1, '300000', '2023-05-11 17:00:00', '2023-12-04 17:09:53', '2023-12-04 17:09:53');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_users`
--

CREATE TABLE `tbl_users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `image` text DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT 'users',
  `refresh_token` text DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tbl_users`
--

INSERT INTO `tbl_users` (`id`, `name`, `username`, `email`, `password`, `image`, `url`, `role`, `refresh_token`, `createdAt`, `updatedAt`) VALUES
(1, NULL, NULL, 'gilsatria121@gmail.com', '$2b$10$HxkwJevV0l8SkxITC45Etu9q0BUN9SH0lSLYNspIJRCB4ryjIPpAe', NULL, NULL, NULL, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEsIm5hbWUiOm51bGwsInVzZXJuYW1lIjpudWxsLCJlbWFpbCI6ImdpbHNhdHJpYTEyMUBnbWFpbC5jb20iLCJpbWFnZSI6bnVsbCwicm9sZSI6bnVsbCwiaWF0IjoxNzAyMDIxNDczLCJleHAiOjE3MDIxMDc4NzN9.SuM0N0qnaCauhN-BZCrP3Tw8ta7Vjf3VXtOkqpTIBeM', '2023-12-04 15:44:43', '2023-12-08 07:44:33'),
(2, NULL, NULL, 'naufal@gmail.com', '$2b$10$QIZBzORAeraQUra1iEbddenMH5Es3ZJ67ChTUTSh91CrSDT5zaAyi', NULL, NULL, 'users', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjIsIm5hbWUiOm51bGwsInVzZXJuYW1lIjpudWxsLCJlbWFpbCI6Im5hdWZhbEBnbWFpbC5jb20iLCJpbWFnZSI6bnVsbCwicm9sZSI6InVzZXJzIiwiaWF0IjoxNzAyMDIxNjA3LCJleHAiOjE3MDIxMDgwMDd9.Eau0tZk1FnB-pgBmXuilxQQxHAL4SvxVWsblrwQ5oVA', '2023-12-08 07:45:25', '2023-12-08 07:46:47');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id_user` int(11) NOT NULL,
  `username` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `donasi`
--
ALTER TABLE `donasi`
  ADD PRIMARY KEY (`id_donasi`);

--
-- Indeks untuk tabel `provinsi`
--
ALTER TABLE `provinsi`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`id_user`);

--
-- Indeks untuk tabel `relawan`
--
ALTER TABLE `relawan`
  ADD PRIMARY KEY (`id_relawan`);

--
-- Indeks untuk tabel `tbl_bencana`
--
ALTER TABLE `tbl_bencana`
  ADD PRIMARY KEY (`id`),
  ADD KEY `constraint_provinsi_foreign_key` (`provinsi`);

--
-- Indeks untuk tabel `tbl_relawan`
--
ALTER TABLE `tbl_relawan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `constraint_relawan_foreign_key` (`id_users`);

--
-- Indeks untuk tabel `tbl_riwayat`
--
ALTER TABLE `tbl_riwayat`
  ADD PRIMARY KEY (`id`),
  ADD KEY `constraint_riwayat_foreign_key` (`id_users`);

--
-- Indeks untuk tabel `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `donasi`
--
ALTER TABLE `donasi`
  MODIFY `id_donasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `provinsi`
--
ALTER TABLE `provinsi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT untuk tabel `register`
--
ALTER TABLE `register`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `relawan`
--
ALTER TABLE `relawan`
  MODIFY `id_relawan` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_bencana`
--
ALTER TABLE `tbl_bencana`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `tbl_relawan`
--
ALTER TABLE `tbl_relawan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `tbl_riwayat`
--
ALTER TABLE `tbl_riwayat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `tbl_bencana`
--
ALTER TABLE `tbl_bencana`
  ADD CONSTRAINT `constraint_provinsi_foreign_key` FOREIGN KEY (`provinsi`) REFERENCES `provinsi` (`id`);

--
-- Ketidakleluasaan untuk tabel `tbl_relawan`
--
ALTER TABLE `tbl_relawan`
  ADD CONSTRAINT `constraint_relawan_foreign_key` FOREIGN KEY (`id_users`) REFERENCES `tbl_users` (`id`);

--
-- Ketidakleluasaan untuk tabel `tbl_riwayat`
--
ALTER TABLE `tbl_riwayat`
  ADD CONSTRAINT `constraint_riwayat_foreign_key` FOREIGN KEY (`id_users`) REFERENCES `tbl_users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
