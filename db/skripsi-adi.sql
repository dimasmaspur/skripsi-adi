-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 18 Jul 2022 pada 17.14
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `skripsi-adi`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `keranjang`
--

CREATE TABLE `keranjang` (
  `id` int(11) NOT NULL,
  `namamenu` varchar(255) DEFAULT NULL,
  `qty` varchar(255) DEFAULT NULL,
  `subtotal` varchar(255) DEFAULT NULL,
  `harga` bigint(1) DEFAULT NULL,
  `user` varchar(255) DEFAULT NULL,
  `idmenu` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Struktur dari tabel `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `harga` int(20) NOT NULL,
  `kategori` varchar(255) NOT NULL,
  `image` text NOT NULL,
  `diskon` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `menu`
--

INSERT INTO `menu` (`id`, `nama`, `harga`, `kategori`, `image`, `diskon`) VALUES
(3, 'Susu ibu hamil', 560000, 'Ibu Hamil', 'menu_220705083146.png', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `m_user`
--

CREATE TABLE `m_user` (
  `id` int(11) NOT NULL,
  `username` varchar(150) NOT NULL,
  `password` varchar(250) NOT NULL,
  `role` enum('admin','user') NOT NULL,
  `nama` varchar(255) NOT NULL,
  `alamat` text NOT NULL,
  `no_telp` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `m_user`
--

INSERT INTO `m_user` (`id`, `username`, `password`, `role`, `nama`, `alamat`, `no_telp`) VALUES
(11, 'admin', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'admin', 'admin', 'jalan sini', '0867327723'),
(13, 'user', '12dea96fec20593566ab75692c9949596833adc9', 'user', 'user', 'jalan user', '08349349`'),
(15, 'adi', 'a7f01e69d25589040bde46ea0009f93bbf0e1a31', 'user', 'adi', 'cengkareng', '08732873');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pesanan`
--

CREATE TABLE `pesanan` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `subtotal` bigint(20) DEFAULT NULL,
  `item` longtext DEFAULT NULL,
  `user` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `total` bigint(20) DEFAULT NULL,
  `alamat` text NOT NULL,
  `notes` varchar(255) NOT NULL,
  `kota` varchar(255) NOT NULL,
  `ongkir` int(20) NOT NULL,
  `sent` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `pesanan`
--

INSERT INTO `pesanan` (`id`, `nama`, `tanggal`, `subtotal`, `item`, `user`, `status`, `qty`, `total`, `alamat`, `notes`, `kota`, `ongkir`, `sent`) VALUES
(1, 'White Cloth', '2022-06-27', 200000, '\"[{\\\"id\\\":\\\"3\\\",\\\"namamenu\\\":\\\"White Cloth\\\",\\\"qty\\\":\\\"1\\\",\\\"subtotal\\\":\\\"200000\\\",\\\"harga\\\":\\\"200000\\\",\\\"user\\\":\\\"hasbi\\\",\\\"idmenu\\\":\\\"1\\\"}]\"', 'hasbi', 'hasbi', 1, 200000, 'tasdt', 'asdhasjhd', 'JABODETABEK', 8000, 1),
(2, 'White Cloth', '2022-06-27', 200000, '\"[{\\\"id\\\":\\\"3\\\",\\\"namamenu\\\":\\\"White Cloth\\\",\\\"qty\\\":\\\"1\\\",\\\"subtotal\\\":\\\"200000\\\",\\\"harga\\\":\\\"200000\\\",\\\"user\\\":\\\"hasbi\\\",\\\"idmenu\\\":\\\"1\\\"}]\"', 'hasbi', 'hasbi', 1, 200000, 'jhabjhdas', 'ahdbajhd', 'JABODETABEK', 8000, 1),
(3, 'Susu Balita', '2022-06-27', 30000, '\"[{\\\"id\\\":\\\"4\\\",\\\"namamenu\\\":\\\"Susu Balita\\\",\\\"qty\\\":\\\"1\\\",\\\"subtotal\\\":\\\"30000\\\",\\\"harga\\\":\\\"30000\\\",\\\"user\\\":\\\"adi\\\",\\\"idmenu\\\":\\\"2\\\"}]\"', 'adi', 'adi', 1, 30000, 'jakarta', 'jabek', 'JABODETABEK', 8000, 0),
(4, 'Susu Balita', '2022-07-05', 30000, '\"[{\\\"id\\\":\\\"5\\\",\\\"namamenu\\\":\\\"Susu Balita\\\",\\\"qty\\\":\\\"1\\\",\\\"subtotal\\\":\\\"30000\\\",\\\"harga\\\":\\\"30000\\\",\\\"user\\\":\\\"user\\\",\\\"idmenu\\\":\\\"2\\\"},{\\\"id\\\":\\\"6\\\",\\\"namamenu\\\":\\\"Susu Balita\\\",\\\"qty\\\":\\\"1\\\",\\\"subtotal\\\":\\\"30000\\\",\\\"harga\\\":\\\"30000\\\",\\\"user\\\":\\\"user\\\",\\\"idmenu\\\":\\\"2\\\"},{\\\"id\\\":\\\"7\\\",\\\"namamenu\\\":\\\"Susu ibu hamil\\\",\\\"qty\\\":\\\"1\\\",\\\"subtotal\\\":\\\"560000\\\",\\\"harga\\\":\\\"560000\\\",\\\"user\\\":\\\"user\\\",\\\"idmenu\\\":\\\"3\\\"}]\"', 'user', 'user', 1, 620000, 'tes', 'tes', 'JABODETABEK', 8000, 0),
(5, 'Susu Balita', '2022-07-05', 30000, '\"[{\\\"id\\\":\\\"5\\\",\\\"namamenu\\\":\\\"Susu Balita\\\",\\\"qty\\\":\\\"1\\\",\\\"subtotal\\\":\\\"30000\\\",\\\"harga\\\":\\\"30000\\\",\\\"user\\\":\\\"user\\\",\\\"idmenu\\\":\\\"2\\\"},{\\\"id\\\":\\\"6\\\",\\\"namamenu\\\":\\\"Susu Balita\\\",\\\"qty\\\":\\\"1\\\",\\\"subtotal\\\":\\\"30000\\\",\\\"harga\\\":\\\"30000\\\",\\\"user\\\":\\\"user\\\",\\\"idmenu\\\":\\\"2\\\"},{\\\"id\\\":\\\"7\\\",\\\"namamenu\\\":\\\"Susu ibu hamil\\\",\\\"qty\\\":\\\"1\\\",\\\"subtotal\\\":\\\"560000\\\",\\\"harga\\\":\\\"560000\\\",\\\"user\\\":\\\"user\\\",\\\"idmenu\\\":\\\"3\\\"}]\"', 'user', 'user', 1, 620000, 'tes', 'tes', 'JABODETABEK', 8000, 0),
(6, 'Susu ibu hamil', '2022-07-05', 560000, '\"[{\\\"id\\\":\\\"5\\\",\\\"namamenu\\\":\\\"Susu Balita\\\",\\\"qty\\\":\\\"1\\\",\\\"subtotal\\\":\\\"30000\\\",\\\"harga\\\":\\\"30000\\\",\\\"user\\\":\\\"user\\\",\\\"idmenu\\\":\\\"2\\\"},{\\\"id\\\":\\\"6\\\",\\\"namamenu\\\":\\\"Susu Balita\\\",\\\"qty\\\":\\\"1\\\",\\\"subtotal\\\":\\\"30000\\\",\\\"harga\\\":\\\"30000\\\",\\\"user\\\":\\\"user\\\",\\\"idmenu\\\":\\\"2\\\"},{\\\"id\\\":\\\"7\\\",\\\"namamenu\\\":\\\"Susu ibu hamil\\\",\\\"qty\\\":\\\"1\\\",\\\"subtotal\\\":\\\"560000\\\",\\\"harga\\\":\\\"560000\\\",\\\"user\\\":\\\"user\\\",\\\"idmenu\\\":\\\"3\\\"}]\"', 'user', 'user', 1, 620000, 'tes', 'tes', 'JABODETABEK', 8000, 0),
(7, 'Susu ibu hamil', '2022-07-18', 560000, '\"[{\\\"id\\\":\\\"8\\\",\\\"namamenu\\\":\\\"Susu ibu hamil\\\",\\\"qty\\\":\\\"1\\\",\\\"subtotal\\\":\\\"560000\\\",\\\"harga\\\":\\\"560000\\\",\\\"user\\\":\\\"admin\\\",\\\"idmenu\\\":\\\"3\\\"}]\"', 'admin', 'admin', 1, 560000, 'asd', 'sfdsf', 'JABODETABEK', 8000, 1);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `keranjang`
--
ALTER TABLE `keranjang`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `m_user`
--
ALTER TABLE `m_user`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pesanan`
--
ALTER TABLE `pesanan`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `keranjang`
--
ALTER TABLE `keranjang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `m_user`
--
ALTER TABLE `m_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `pesanan`
--
ALTER TABLE `pesanan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
