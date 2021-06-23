-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 07, 2021 at 04:04 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `alcampcoba`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(10) NOT NULL,
  `nama_admin` varchar(255) NOT NULL,
  `username_admin` varchar(255) NOT NULL,
  `password_admin` varchar(255) NOT NULL,
  `nohp_admin` varchar(255) NOT NULL,
  `alamat_admin` varchar(255) NOT NULL,
  `tgllahir_admin` date NOT NULL,
  `foto_admin` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_admin`, `nama_admin`, `username_admin`, `password_admin`, `nohp_admin`, `alamat_admin`, `tgllahir_admin`, `foto_admin`) VALUES
(4, 'Talitha Rizki', 'tal', '$2y$10$bStt0q4/lPeKmp/UCh1IBupuZ6o8/1MGo94ky3xXpiXzZrBY3VR4a', '082216137556', 'Jl. Babakan Ciamis, Bandung', '2001-06-26', '60a6b889df29d.jpg'),
(5, 'Friska Andalusia', 'friskaandalusia', '$2y$10$r9eCRdG4On5QsAI4ZXTTr.8xP2tNsJUcBQ3kV7dRTgp2PV3rbC9.e', '+6281318271630', 'Jl. Telekomunikasi Jl. Terusan Buah Batu, Sukapura, Kec. Dayeuhkolot, Bandung, Jawa Barat 40257', '2001-06-28', '60aa64f8b439c.jpg'),
(6, 'Fera Julianti', 'fera22', '$2y$10$y6KQOodS074ydTkAkfNhv.nTM0aOic4KVFBSoQBjplXRKOFuIeYcm', '081373395174', 'Lampung', '2001-07-22', '60aab14984226.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `alat_camping`
--

CREATE TABLE `alat_camping` (
  `id_alat` int(100) NOT NULL,
  `nama_alat` varchar(255) NOT NULL,
  `deskripsi_alat` varchar(255) NOT NULL,
  `spesifikasi_alat` varchar(255) NOT NULL,
  `hargasewa_alat` int(100) NOT NULL,
  `foto_alat` varchar(255) NOT NULL,
  `id_mitra` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `alat_camping`
--

INSERT INTO `alat_camping` (`id_alat`, `nama_alat`, `deskripsi_alat`, `spesifikasi_alat`, `hargasewa_alat`, `foto_alat`, `id_mitra`) VALUES
(1, 'Tenda', 'Import from China. Cocok untuk digunakan camping  di atas gunung, ke dalam hutan, ataupun ke pantai karena dapat memudahkan trip atas kegunaannya.', 'Biru || Merk Eiger', 25000, '60a584bd3052c.jpeg', 1),
(9, 'Tas Besar', 'Tas besar banyak bawaan. Cocok untuk digunakan camping  di atas gunung, ke dalam hutan, ataupun ke pantai karena dapat memudahkan trip atas kegunaannya', 'Hijau Lumut || Tas Punggung', 20000, '60a5ef7a6cb1d.jpeg', 1),
(10, 'Carrier Eiger', 'Tas ini bermuatan sampai 1 kg, memiliki banyak kantong dan fashionable.  Cocok untuk digunakan camping  di atas gunung, ke dalam hutan, ataupun ke pantai karena dapat memudahkan trip atas kegunaannya', 'Biru Hitam || Waterproof', 25000, '60a664f7ce765.jpeg', 1),
(11, 'Sleeping Bag', 'Merk Eiger, Tahan Air, bahan tebal dan elastis.  Cocok untuk digunakan camping  di atas gunung, ke dalam hutan, ataupun ke pantai karena dapat memudahkan trip atas kegunaannya', 'Hijau Cerah || Kapasitas 2 Orang', 45000, '60a6b9aebdf58.jpeg', 1),
(12, 'Talkie Walkie', 'Sebuah alat komunikasi yang digunakan tanpa memerlukan internet hanya memerlukan baterai dengan daya tahan tinggi.  Cocok untuk digunakan camping  di atas gunung, ke dalam hutan, ataupun ke pantai karena dapat memudahkan trip atas kegunaannya.', '40 pcs || Cocok untuk acara gathering dll', 35000, '60aa690005d89.jpg', 1),
(13, 'Alat Hiking', 'Satu set alat hiking terdiri dari tongkat gunung.  Cocok untuk digunakan camping  di atas gunung, ke dalam hutan, ataupun ke pantai karena dapat memudahkan trip atas kegunaannya', 'Bahan Stainless Stell || Kuat dan panjang', 35000, '60aa699a50d62.jpg', 2),
(14, 'Tas Carrier Merah', 'Tas carrier dengan bahan eiger, model terbaru dan praktis. Cocok untuk digunakan camping  di atas gunung, ke dalam hutan, ataupun ke pantai karena dapat memudahkan trip atas kegunaannya', 'Warna Merah || kapasitas sampai 60 liter || Bonus Jas Hujan', 40000, '60aa6a1774f71.jpg', 2),
(15, 'Karimor Sleeping Bag', 'Merk Eiger, Tahan Air, bahan tebal dan elastis.  Cocok untuk digunakan camping  di atas gunung, ke dalam hutan, ataupun ke pantai karena dapat memudahkan trip atas kegunaannya', 'Hitam || Waterproof || Double layer', 35000, '60aa6a54ee138.jpg', 1),
(16, 'Sleeping Bag Eiger B.045', 'Merk Eiger, Tahan Air, bahan tebal dan elastis.  Cocok untuk digunakan camping  di atas gunung, ke dalam hutan, ataupun ke pantai karena dapat memudahkan trip atas kegunaannya', 'Warna Biru || kapasitas 2 orang || Waterproof', 45000, '60aa6abaafc75.jpg', 2);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `no_ktp` int(100) NOT NULL,
  `nama_customer` varchar(255) NOT NULL,
  `username_customer` varchar(255) NOT NULL,
  `password_customer` varchar(255) NOT NULL,
  `nohp_customer` varchar(255) NOT NULL,
  `alamat_customer` varchar(255) NOT NULL,
  `jenkel_customer` varchar(255) NOT NULL,
  `tgllahir_customer` date NOT NULL,
  `foto_customer` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`no_ktp`, `nama_customer`, `username_customer`, `password_customer`, `nohp_customer`, `alamat_customer`, `jenkel_customer`, `tgllahir_customer`, `foto_customer`) VALUES
(987654322, 'Nuriffah Syahirah', 'ipeh', '$2y$10$GcvW.zrcytt6jTO6JeLvu.Ai3CBDq3EB5vsDEMqu9u7tPbl1zLixy', '0811323456', 'Jalan Telekomunikasi', 'Perempuan', '2021-05-10', '60aaa2c4c3906.jpg'),
(987654323, 'M.Alfi Syahri', 'malfisyahri', '$2y$10$Ux9pEqBlponJUqwKOkav8O0/9U2HtEV4Q5GTcRDSP2/.bZgV5oTO.', '08124858685', 'Jalan Manggis,Jakarta', 'Perempuan', '2001-11-28', '60aaa75095a1b.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `informasi`
--

CREATE TABLE `informasi` (
  `id_informasi` int(100) NOT NULL,
  `judul_informasi` varchar(255) NOT NULL,
  `artikel_informasi` varchar(255) NOT NULL,
  `foto_informasi` varchar(255) NOT NULL,
  `id_admin` int(100) NOT NULL,
  `sumber_informasi` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `informasi`
--

INSERT INTO `informasi` (`id_informasi`, `judul_informasi`, `artikel_informasi`, `foto_informasi`, `id_admin`, `sumber_informasi`) VALUES
(1, '8 Langkah Mudah untuk Selalu Go Green di Rumah dan di mana saja', 'Konsep go green bisa diterapkan di mana saja, termasuk di rumah. Simak langkah mudah untuk melakukannya dalam artikel berikut ini. 1. Mengurangi Sampah Plastik Salah satu langkah yang bisa dilakukan untuk go green adalah mengurangi sampah plastik.', '60aa9c316ec4e.jpg', 4, 'Rumah.com'),
(3, 'Artikel Lain Go-green', 'Ini adalah penjelasan mengenai go-green dan juga cara menjaga kebersihan ketika camping. Simaklah penjelasannya berikut. Ini adalah penjelasan mengenai go-green dan juga cara menjaga kebersihan ketika camping', '60a6c37ac2940.jpg', 4, 'Google'),
(4, 'Info Promo Jejaka Outdoor', 'Promo Jejaka Outdoor Diskon Hingga 30%. Disini banyak promo lainnya, termasuk promo ongkir dan banyak lagi. Ini adalah penjelasan mengenai go-green dan juga cara menjaga kebersihan ketika camping.', '60bbb932f18df.jpeg', 4, 'Jejaka Outdoor'),
(6, 'Info Promo Jejaka Outdoor Part 2', 'Promo Jejaka Outdoor Diskon Hingga 50% || Dapatkan segera dan jangan sampai terlambat karena ada promo menarik lainnya!!!', '60bbd072ed8fe.jpeg', 4, 'Jejaka Outdoor');

-- --------------------------------------------------------

--
-- Table structure for table `mitra`
--

CREATE TABLE `mitra` (
  `id_mitra` int(100) NOT NULL,
  `nama_mitra` varchar(255) NOT NULL,
  `deskripsi_mitra` varchar(255) NOT NULL,
  `username_mitra` varchar(255) NOT NULL,
  `password_mitra` varchar(255) NOT NULL,
  `nohp_mitra` varchar(255) NOT NULL,
  `alamat_mitra` varchar(255) NOT NULL,
  `daerah_mitra` varchar(255) NOT NULL,
  `logo_mitra` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mitra`
--

INSERT INTO `mitra` (`id_mitra`, `nama_mitra`, `deskripsi_mitra`, `username_mitra`, `password_mitra`, `nohp_mitra`, `alamat_mitra`, `daerah_mitra`, `logo_mitra`) VALUES
(1, 'Jejaka Outdoor', 'Jejaka Outdoor Adalah Layanan Persewaan Alat Camping di Bandung untuk memenuhi kebutuhan kegiatan pendakian , acara camping dengan skala kecil atau besar.', 'jejaka06', '$2y$10$8DM7ZXCSAHNrUsa4SbApduhYZrVSItJb7SMY/hYPG18qXkIxaHAvu', '08999016417', 'Komplek Cibogo Indah No.36, Cangkuang Kulon', 'Bandung, Jawa Barat', '60bb5a6d09dd3.jpeg'),
(2, 'Venus Outdoor', 'Venus Outdoor Adalah Layanan Persewaan &amp; Penjualan Alat Camping lengkap di Bandung untuk memenuhi kebutuhan kegiatan pendakian dan lainnya.', 'venus12', '$2y$10$QiX5p31yD.6k86zM8NTM1.nbFz0H2k5mRuDgS.oToLNhIFHwyAVCa', '085795054291', 'Jalan GUMURUH NO. 75 A Gumuruh Batununggal', 'Bandung, Jawa Barat', '60bb134a02e7b.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `open_trip`
--

CREATE TABLE `open_trip` (
  `id_optrip` int(100) NOT NULL,
  `tujuan_optrip` varchar(255) NOT NULL,
  `tarif_optrip` int(100) NOT NULL,
  `deskripsi_optrip` varchar(255) NOT NULL,
  `kuota_optrip` int(100) NOT NULL,
  `foto_optrip` varchar(255) NOT NULL,
  `id_admin` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `open_trip`
--

INSERT INTO `open_trip` (`id_optrip`, `tujuan_optrip`, `tarif_optrip`, `deskripsi_optrip`, `kuota_optrip`, `foto_optrip`, `id_admin`) VALUES
(1, 'Candi Borobudur', 200000, '3 Hari', 4, '60a6c0a6ccf60.jpeg', 4),
(4, 'Gunung Semeru', 250000, '2-6Hari', 12, '60a6bc9ab88fb.jpg', 4),
(6, 'Gn.Putri Lembang', 75000, '3 Hari', 1, '60aa6b7f6a3c8.jpg', 5),
(7, 'Gn. Manglayang', 100000, '3 Hari', 1, '60aa6bae064db.jpg', 5),
(8, 'Gn.BurangRang', 120000, '3 Hari', 1, '60aa6c51f1d88.jpg', 5),
(9, 'Gn.Artapela', 125000, '3 Hari', 1, '60aa6c7c60981.jpg', 5),
(10, 'Rock Mountain (Gn.Batu)', 150000, '3 Hari', 1, '60aa6d73d45a8.jpg', 5),
(11, 'Labuan Bajo-Pulau Komodo', 8000000, '3 Hari', 1, '60aa6e277ac52.jpg', 5),
(12, 'Gn.Bromo', 750000, '5 Hari', 14, '60aa6e961e2ff.jpg', 4);

-- --------------------------------------------------------

--
-- Table structure for table `pesan_admin`
--

CREATE TABLE `pesan_admin` (
  `id_pesan` int(100) NOT NULL,
  `judul_informasi` varchar(255) NOT NULL,
  `artikel_informasi` varchar(255) NOT NULL,
  `foto_informasi` varchar(255) NOT NULL,
  `id_admin` int(100) NOT NULL,
  `sumber_informasi` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pesan_admin`
--

INSERT INTO `pesan_admin` (`id_pesan`, `judul_informasi`, `artikel_informasi`, `foto_informasi`, `id_admin`, `sumber_informasi`) VALUES
(6, 'Info Paket Bundle Venus Outdoor Part 1', 'Paket dapat dilihat di Produk Sewa || Paket 1 terdiri dari 5 barang yaitu tenda untuk 4-5 orang, senter, Sleeping Bag dan juga Walkie Talkie untuk 5 orang || Untuk yang tercepat mendapat diskon 20%', '60bbccde55c9a.jpeg', 5, 'Venus Outdoor'),
(7, 'Info Promo Jejaka Outdoor Part 2', 'Promo Jejaka Outdoor Diskon Hingga 50% || Dapatkan segera dan jangan sampai terlambat karena ada promo menarik lainnya!!!', '60bbd072ed8fe.jpeg', 4, 'Jejaka Outdoor');

-- --------------------------------------------------------

--
-- Table structure for table `testimoni`
--

CREATE TABLE `testimoni` (
  `id_testimoni` int(100) NOT NULL,
  `no_ktp` int(100) NOT NULL,
  `status_customer` varchar(255) NOT NULL,
  `institusi_customer` varchar(255) NOT NULL,
  `komentar_testimoni` varchar(255) NOT NULL,
  `balasan_testimoni` varchar(255) NOT NULL,
  `rating` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `testimoni`
--

INSERT INTO `testimoni` (`id_testimoni`, `no_ktp`, `status_customer`, `institusi_customer`, `komentar_testimoni`, `balasan_testimoni`, `rating`) VALUES
(1, 987654323, 'Mahasiswa', 'Telkom University', 'Saya sangaat sukaa, pengantarannya sangat cepat dan bisa langsung digunakan, saya suka warna biru dan sesuai dengar warna kesukaan saya.. Terima kasih banyak yaa pelayanannya juga sangat baik', 'Terima kasih :)', 4),
(2, 987654322, 'Mahasiswa', 'Telkom University', 'Terima kasih banyak yaa seller.. Pelayanannya sangat baik dan sewanya murah-murah. Cocok dengan kantong mahasiswa.', 'Terima kasih kembali :)', 5);

-- --------------------------------------------------------

--
-- Table structure for table `transaksi_optrip`
--

CREATE TABLE `transaksi_optrip` (
  `id_transaksi_optrip` int(100) NOT NULL,
  `no_ktp` int(100) NOT NULL,
  `id_optrip` int(100) NOT NULL,
  `bukti_pembayaran` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaksi_optrip`
--

INSERT INTO `transaksi_optrip` (`id_transaksi_optrip`, `no_ktp`, `id_optrip`, `bukti_pembayaran`) VALUES
(2, 987654322, 6, '60ab0ce24d1fb.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi_sewa`
--

CREATE TABLE `transaksi_sewa` (
  `id_transaksisewa` int(100) NOT NULL,
  `no_ktp` int(100) NOT NULL,
  `id_alat` int(100) NOT NULL,
  `tgl_sewa` date NOT NULL,
  `bukti_pembayaran` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaksi_sewa`
--

INSERT INTO `transaksi_sewa` (`id_transaksisewa`, `no_ktp`, `id_alat`, `tgl_sewa`, `bukti_pembayaran`) VALUES
(4, 987654322, 10, '2021-05-24', '60ab03e69dd14.jpg'),
(5, 987654322, 16, '2021-05-26', '60ab0c34aa867.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `alat_camping`
--
ALTER TABLE `alat_camping`
  ADD PRIMARY KEY (`id_alat`),
  ADD KEY `id_mitra` (`id_mitra`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`no_ktp`);

--
-- Indexes for table `informasi`
--
ALTER TABLE `informasi`
  ADD PRIMARY KEY (`id_informasi`),
  ADD KEY `id_admin` (`id_admin`);

--
-- Indexes for table `mitra`
--
ALTER TABLE `mitra`
  ADD PRIMARY KEY (`id_mitra`);

--
-- Indexes for table `open_trip`
--
ALTER TABLE `open_trip`
  ADD PRIMARY KEY (`id_optrip`),
  ADD KEY `id_admin` (`id_admin`);

--
-- Indexes for table `pesan_admin`
--
ALTER TABLE `pesan_admin`
  ADD PRIMARY KEY (`id_pesan`);

--
-- Indexes for table `testimoni`
--
ALTER TABLE `testimoni`
  ADD PRIMARY KEY (`id_testimoni`),
  ADD KEY `no_ktp` (`no_ktp`);

--
-- Indexes for table `transaksi_optrip`
--
ALTER TABLE `transaksi_optrip`
  ADD PRIMARY KEY (`id_transaksi_optrip`),
  ADD KEY `no_ktp` (`no_ktp`),
  ADD KEY `id_optrip` (`id_optrip`);

--
-- Indexes for table `transaksi_sewa`
--
ALTER TABLE `transaksi_sewa`
  ADD PRIMARY KEY (`id_transaksisewa`),
  ADD KEY `no_ktp` (`no_ktp`),
  ADD KEY `id_alat` (`id_alat`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `alat_camping`
--
ALTER TABLE `alat_camping`
  MODIFY `id_alat` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `no_ktp` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=987654324;

--
-- AUTO_INCREMENT for table `informasi`
--
ALTER TABLE `informasi`
  MODIFY `id_informasi` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `mitra`
--
ALTER TABLE `mitra`
  MODIFY `id_mitra` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `open_trip`
--
ALTER TABLE `open_trip`
  MODIFY `id_optrip` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `pesan_admin`
--
ALTER TABLE `pesan_admin`
  MODIFY `id_pesan` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `testimoni`
--
ALTER TABLE `testimoni`
  MODIFY `id_testimoni` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `transaksi_optrip`
--
ALTER TABLE `transaksi_optrip`
  MODIFY `id_transaksi_optrip` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `transaksi_sewa`
--
ALTER TABLE `transaksi_sewa`
  MODIFY `id_transaksisewa` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `informasi`
--
ALTER TABLE `informasi`
  ADD CONSTRAINT `informasi_ibfk_1` FOREIGN KEY (`id_admin`) REFERENCES `admin` (`id_admin`);

--
-- Constraints for table `open_trip`
--
ALTER TABLE `open_trip`
  ADD CONSTRAINT `open_trip_ibfk_1` FOREIGN KEY (`id_admin`) REFERENCES `admin` (`id_admin`);

--
-- Constraints for table `testimoni`
--
ALTER TABLE `testimoni`
  ADD CONSTRAINT `testimoni_ibfk_1` FOREIGN KEY (`no_ktp`) REFERENCES `customer` (`no_ktp`);

--
-- Constraints for table `transaksi_optrip`
--
ALTER TABLE `transaksi_optrip`
  ADD CONSTRAINT `transaksi_optrip_ibfk_1` FOREIGN KEY (`no_ktp`) REFERENCES `customer` (`no_ktp`),
  ADD CONSTRAINT `transaksi_optrip_ibfk_2` FOREIGN KEY (`id_optrip`) REFERENCES `open_trip` (`id_optrip`);

--
-- Constraints for table `transaksi_sewa`
--
ALTER TABLE `transaksi_sewa`
  ADD CONSTRAINT `transaksi_sewa_ibfk_1` FOREIGN KEY (`no_ktp`) REFERENCES `customer` (`no_ktp`),
  ADD CONSTRAINT `transaksi_sewa_ibfk_2` FOREIGN KEY (`id_alat`) REFERENCES `alat_camping` (`id_alat`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
