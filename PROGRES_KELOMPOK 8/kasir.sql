-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 23 Des 2023 pada 08.49
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kasir`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `produk`
--

CREATE TABLE `produk` (
  `id_produk` int(11) NOT NULL,
  `nama_produk` varchar(20) NOT NULL,
  `harga` int(20) NOT NULL,
  `kode_produk` varchar(11) NOT NULL,
  `nomor_izin` int(15) NOT NULL,
  `jenis_produk` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `produk`
--

INSERT INTO `produk` (`id_produk`, `nama_produk`, `harga`, `kode_produk`, `nomor_izin`, `jenis_produk`) VALUES
(1, 'Le Minerale', 3000, 'LM-1', 256, 'Minuman'),
(2, 'Nasi Putih', 5000, 'NS-1', 22534, 'Makanan'),
(3, 'Nasi Uduk', 8000, 'NS-2', 25, 'Makanan'),
(4, 'Nutrisari', 4000, 'NT-1', 432, 'Minuman'),
(5, 'Aqua', 3000, 'AQ-1', 4234, 'Minuman'),
(6, 'Ayam Goreng', 21000, 'AG-1', 23434, 'Makanan'),
(7, 'Ayam Bakar', 25000, 'AB-1', 17, 'Makanan'),
(8, 'Ati Ampela', 5000, 'AA-1', 1586, 'Makanan'),
(9, 'Gorengan', 2000, 'GR-1', 24695, 'Makanan'),
(10, 'Kopi', 3000, 'KP-1', 644666, 'Minuman');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `id_transaksi` int(11) NOT NULL,
  `kode_produk` varchar(20) NOT NULL,
  `nama_produk` varchar(20) NOT NULL,
  `harga` int(15) NOT NULL,
  `jumlah` int(15) NOT NULL,
  `sub_total` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `transaksi`
--

INSERT INTO `transaksi` (`id_transaksi`, `kode_produk`, `nama_produk`, `harga`, `jumlah`, `sub_total`) VALUES
(28, 'GR-1', 'Gorengan', 2000, 5, 10000),
(29, 'NS-1', 'Nasi Putih', 5000, 2, 10000),
(30, 'AB-1', 'Ayam Bakar', 25000, 2, 50000),
(31, 'NT-1', 'Nutrisari', 4000, 1, 4000),
(32, 'AQ-1', 'Aqua', 3000, 1, 3000);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id_produk`);

--
-- Indeks untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_transaksi`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `produk`
--
ALTER TABLE `produk`
  MODIFY `id_produk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
