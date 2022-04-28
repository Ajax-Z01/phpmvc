-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 22, 2021 at 10:01 AM
-- Server version: 5.7.24
-- PHP Version: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `si_penjualan_makanan_dishserve`
--

-- --------------------------------------------------------

--
-- Table structure for table `bayar`
--

CREATE TABLE `bayar` (
  `id_bayar` int(50) NOT NULL,
  `id_pembeli` int(50) NOT NULL,
  `id_harga_makanan` int(50) NOT NULL,
  `id_harga_minuman` int(50) NOT NULL,
  `id_paket` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bayar`
--

INSERT INTO `bayar` (`id_bayar`, `id_pembeli`, `id_harga_makanan`, `id_harga_minuman`, `id_paket`) VALUES
(3625, 3215, 5627, 3461, 6346),
(6291, 2317, 6528, 6687, 5842),
(7521, 1265, 4517, 5510, 6017);

-- --------------------------------------------------------

--
-- Table structure for table `daftar`
--

CREATE TABLE `daftar` (
  `id_daftar` int(50) NOT NULL,
  `tgl_daftar` date NOT NULL,
  `id_pembeli` int(50) NOT NULL,
  `id_user` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `daftar`
--

INSERT INTO `daftar` (`id_daftar`, `tgl_daftar`, `id_pembeli`, `id_user`) VALUES
(3654, '2020-09-03', 7521, 4876),
(5612, '2019-08-23', 3215, 4517),
(6543, '2020-07-05', 2317, 6743);

-- --------------------------------------------------------

--
-- Table structure for table `harga_makanan`
--

CREATE TABLE `harga_makanan` (
  `id_harga_makanan` int(50) NOT NULL,
  `id_jns_makanan` int(50) NOT NULL,
  `id_makanan` int(50) NOT NULL,
  `harga` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `harga_makanan`
--

INSERT INTO `harga_makanan` (`id_harga_makanan`, `id_jns_makanan`, `id_makanan`, `harga`) VALUES
(4517, 9762, 8657, 'Rp.35.000'),
(5627, 8012, 7620, 'Rp.35.000'),
(6528, 4876, 9054, 'Rp.32.000');

-- --------------------------------------------------------

--
-- Table structure for table `harga_minuman`
--

CREATE TABLE `harga_minuman` (
  `id_harga_minuman` int(50) NOT NULL,
  `id_jns_minuman` int(50) NOT NULL,
  `id_minuman` int(50) NOT NULL,
  `harga` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `harga_minuman`
--

INSERT INTO `harga_minuman` (`id_harga_minuman`, `id_jns_minuman`, `id_minuman`, `harga`) VALUES
(3461, 6738, 8734, 'Rp.22.000'),
(5510, 6949, 7453, 'Rp.20.000'),
(6687, 7456, 7378, 'Rp.20.000');

-- --------------------------------------------------------

--
-- Table structure for table `harga_paket`
--

CREATE TABLE `harga_paket` (
  `id_harga_paket` int(50) NOT NULL,
  `id_jns_makanan` int(50) NOT NULL,
  `id_jns_minuman` int(50) NOT NULL,
  `id_makanan` int(50) NOT NULL,
  `id_minuman` int(50) NOT NULL,
  `id_paket` int(50) NOT NULL,
  `id_harga_makanan` int(50) NOT NULL,
  `id_harga_minuman` int(50) NOT NULL,
  `diskon` varchar(100) NOT NULL,
  `harga` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `harga_paket`
--

INSERT INTO `harga_paket` (`id_harga_paket`, `id_jns_makanan`, `id_jns_minuman`, `id_makanan`, `id_minuman`, `id_paket`, `id_harga_makanan`, `id_harga_minuman`, `diskon`, `harga`) VALUES
(5473, 8012, 6949, 7620, 7453, 5842, 5627, 5510, 'Rp.10.000', 'Rp.45.000'),
(6451, 9762, 6738, 8657, 8734, 6346, 4517, 3461, 'Rp. 10.000', 'Rp.47.000'),
(9856, 4876, 7456, 9054, 7378, 6017, 6528, 6687, 'Rp. 10.000', 'Rp.42.000');

-- --------------------------------------------------------

--
-- Table structure for table `jenis_makanan`
--

CREATE TABLE `jenis_makanan` (
  `id_jns_makanan` int(50) NOT NULL,
  `nama_jns_makanan` varchar(100) NOT NULL,
  `gbr_jns_makanan` varchar(100) NOT NULL,
  `ket` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jenis_makanan`
--

INSERT INTO `jenis_makanan` (`id_jns_makanan`, `nama_jns_makanan`, `gbr_jns_makanan`, `ket`) VALUES
(4876, 'Nasbar ', 'nasibakar.png', 'NASI bakar adalah makanan yang cukup sederhana, tetapi selalu menarik untuk dicicipi. Tidak hanya kuat dengan kesan alaminya, menggunakan daun pisang sebagai pembungkus nasi, tetapi bau hangus daun pisang yang terbakar juga menebarkan aroma nikmat yang sangat menggugah selera.'),
(8012, 'Ricebowl Chicken', 'chicken.png', 'Ricebowl Chicken ini adalah perpaduan nasi dengan chicken yang renyah. Dengan porsi yang pas pula.'),
(8013, 'Ricebowl Meatball', 'meatball.png', 'Ricebowl Meatball adalah perpaduan nasi dengan daing sapi asli yang dibuat berbentuk seperti bola-bola yang nikmat.');

-- --------------------------------------------------------

--
-- Table structure for table `jenis_minuman`
--

CREATE TABLE `jenis_minuman` (
  `id_jns_minuman` int(50) NOT NULL,
  `nama_jns_minuman` varchar(100) NOT NULL,
  `gbr_jns_minuman` varchar(100) NOT NULL,
  `ket` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jenis_minuman`
--

INSERT INTO `jenis_minuman` (`id_jns_minuman`, `nama_jns_minuman`, `gbr_jns_minuman`, `ket`) VALUES
(6738, 'Iced Blackcurrent Tea', 'blackcurrent.png', 'Iced Tea dengan rasa blackcurrent yang nikmat dan harum.'),
(6949, 'Iced Lemon Tea', 'lemon.png', 'Iced Tea dengan rasa lemon yang pas dengan rasa sedikit soda didalamnya.'),
(7456, 'Iced Lychee Tea', 'lychee.png', 'Iced Tea dengan rasa lychee yang nikmat dan pas juga harumnya lychee.');

-- --------------------------------------------------------

--
-- Table structure for table `jual`
--

CREATE TABLE `jual` (
  `id_jual` int(50) NOT NULL,
  `id_makanan` int(50) NOT NULL,
  `id_minuman` int(50) NOT NULL,
  `id_paket` int(50) NOT NULL,
  `id_jns_makanan` int(50) NOT NULL,
  `id_jns_minuman` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jual`
--

INSERT INTO `jual` (`id_jual`, `id_makanan`, `id_minuman`, `id_paket`, `id_jns_makanan`, `id_jns_minuman`) VALUES
(6056, 7620, 7453, 5842, 8012, 6949),
(7456, 8657, 8734, 6346, 9762, 6738),
(7623, 9054, 7378, 6017, 4876, 7456);

-- --------------------------------------------------------

--
-- Table structure for table `makanan`
--

CREATE TABLE `makanan` (
  `id_makanan` int(20) NOT NULL,
  `id_jns_makanan` int(50) NOT NULL,
  `nama_makanan` varchar(100) NOT NULL,
  `harga` varchar(50) NOT NULL,
  `jmlh_stok` int(100) NOT NULL,
  `ket` text NOT NULL,
  `gbr_makanan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `makanan`
--

INSERT INTO `makanan` (`id_makanan`, `id_jns_makanan`, `nama_makanan`, `harga`, `jmlh_stok`, `ket`, `gbr_makanan`) VALUES
(1231, 6528, 'ricebowl chicken saus hitam', '32000', 30, 'nasi dengan chicken', 'mentai.png'),
(7620, 8012, 'Ricebowl Chichen Saus Mentai', '35000', 24, 'Ricebowl Chicken yaitu nasi dengan Chicken Katsu', 'mentai.png'),
(8657, 8013, 'Ricebowl Meatball Saus Teriyaki', '35000', 34, 'Ricebowl Meatball yaitu nasi dengan daging berbentuk bulat yang renyah', 'teriyaki.png'),
(9054, 4876, 'Nasbar Cumi Saus Hitam', '32000', 28, 'Nasbar yaitu nasi dibakar dengan diberi isi cumi saus hitam', 'nasbar.png');

-- --------------------------------------------------------

--
-- Table structure for table `menu_paket`
--

CREATE TABLE `menu_paket` (
  `id_paket` int(50) NOT NULL,
  `id_makanan` int(50) NOT NULL,
  `id_minuman` int(50) NOT NULL,
  `id_jns_makanan` int(50) NOT NULL,
  `id_jns_minuman` int(50) NOT NULL,
  `id_harga_paket` int(50) NOT NULL,
  `nama_paket` varchar(100) NOT NULL,
  `quantity` int(60) NOT NULL,
  `harga` varchar(50) NOT NULL,
  `gbr_paket` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `menu_paket`
--

INSERT INTO `menu_paket` (`id_paket`, `id_makanan`, `id_minuman`, `id_jns_makanan`, `id_jns_minuman`, `id_harga_paket`, `nama_paket`, `quantity`, `harga`, `gbr_paket`) VALUES
(5842, 7620, 7453, 8012, 6949, 5473, 'Paket Berdua 1', 3, '80000', 'berdua1.png'),
(6017, 9054, 7378, 4876, 7456, 9856, 'Paket Berdua 2', 2, '45000', 'berdua2.png'),
(6346, 8657, 8734, 9762, 6738, 6451, 'Paket Berdua 3', 4, '98000', 'berdua3.png');

-- --------------------------------------------------------

--
-- Table structure for table `minuman`
--

CREATE TABLE `minuman` (
  `id_minuman` int(20) NOT NULL,
  `id_jns_minuman` int(50) NOT NULL,
  `nama_minuman` varchar(100) NOT NULL,
  `harga` varchar(50) NOT NULL,
  `jmlh_stok` int(50) NOT NULL,
  `ket` text NOT NULL,
  `gbr_minuman` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `minuman`
--

INSERT INTO `minuman` (`id_minuman`, `id_jns_minuman`, `nama_minuman`, `harga`, `jmlh_stok`, `ket`, `gbr_minuman`) VALUES
(7378, 7456, 'Iced lychee Tea', '20000', 30, 'Iced Tea dengan rasa lychee yang nikmat dan pas juga harumnya lychee.', 'lychee.png'),
(7453, 6249, 'Iced Lemon Tea', '20000', 25, 'Iced Tea dengan rasa lemon yang pas dan rasa sedikit soda didalamnya.', 'lemon.png'),
(8734, 6738, 'Iced Blackcurrent Tea', '22000', 30, 'Iced Tea dengan rasa blackcurrent yang nikmat dan harum', 'blackcurrent.png');

-- --------------------------------------------------------

--
-- Table structure for table `pembeli`
--

CREATE TABLE `pembeli` (
  `id_pembeli` int(20) NOT NULL,
  `nama_pembeli` varchar(100) NOT NULL,
  `alamat_pembeli` varchar(100) NOT NULL,
  `no_telp_pembeli` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pembeli`
--

INSERT INTO `pembeli` (`id_pembeli`, `nama_pembeli`, `alamat_pembeli`, `no_telp_pembeli`) VALUES
(2317, 'gusti', 'jalan kemerdekaan', 853729983),
(3215, 'triyono', 'jalan cempaka mas', 873617281),
(7521, 'riris', 'jalan asia timur', 893427736);

-- --------------------------------------------------------

--
-- Table structure for table `pesan`
--

CREATE TABLE `pesan` (
  `id_pesan` int(50) NOT NULL,
  `id_supplier` int(50) NOT NULL,
  `id_makanan` int(50) NOT NULL,
  `id_minuman` int(50) NOT NULL,
  `id_jns_makanan` int(50) NOT NULL,
  `id_jns_minuman` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pesan`
--

INSERT INTO `pesan` (`id_pesan`, `id_supplier`, `id_makanan`, `id_minuman`, `id_jns_makanan`, `id_jns_minuman`) VALUES
(2837, 9210, 7620, 7453, 8012, 6249),
(8371, 8422, 8657, 8734, 9762, 6738),
(8739, 6392, 9054, 7456, 4876, 7456);

-- --------------------------------------------------------

--
-- Table structure for table `stok_makanan`
--

CREATE TABLE `stok_makanan` (
  `id_makanan` int(50) NOT NULL,
  `id_jns_makanan` int(50) NOT NULL,
  `stok_makanan_masuk` int(80) NOT NULL,
  `stok_makanan_keluar` int(80) NOT NULL,
  `jmlh_stok` int(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `stok_makanan`
--

INSERT INTO `stok_makanan` (`id_makanan`, `id_jns_makanan`, `stok_makanan_masuk`, `stok_makanan_keluar`, `jmlh_stok`) VALUES
(9058, 4876, 50, 22, 28),
(7620, 8012, 50, 26, 24),
(8657, 9762, 50, 16, 34);

-- --------------------------------------------------------

--
-- Table structure for table `stok_minuman`
--

CREATE TABLE `stok_minuman` (
  `id_jns_minuman` int(50) NOT NULL,
  `stok_minuman_masuk` int(80) NOT NULL,
  `stok_minuman_keluar` int(80) NOT NULL,
  `jmlh_stok` int(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `stok_minuman`
--

INSERT INTO `stok_minuman` (`id_jns_minuman`, `stok_minuman_masuk`, `stok_minuman_keluar`, `jmlh_stok`) VALUES
(6249, 40, 15, 25),
(6738, 40, 10, 30),
(7456, 40, 10, 30);

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `id_supplier` int(20) NOT NULL,
  `nama_supplier` varchar(100) NOT NULL,
  `no_telp_supplier` varchar(30) NOT NULL,
  `alamat_supplier` varchar(100) NOT NULL,
  `gbr_supplier` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`id_supplier`, `nama_supplier`, `no_telp_supplier`, `alamat_supplier`, `gbr_supplier`) VALUES
(6392, 'Modena', '(021)1500715', 'JL. Letjen S. Parman, Kav. 21, 11470 Jakarta Barat', 'modena.png'),
(8422, 'Samsung', '(021) 56997777', 'Jl. Tomang Raya No. 1, Jakarta Barat', 'samsung.png'),
(9210, 'Dishserve Pusat', '+62-821-2538-5562', 'Jl. Jendral Sudirman Kav 25 Karet Setiabudi Jakarta Selatan', 'dishserve.png');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id_transaksi` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(70) NOT NULL,
  `email` varchar(60) NOT NULL,
  `alamat` text NOT NULL,
  `pos` int(6) NOT NULL,
  `kota` varchar(60) NOT NULL,
  `hp` varchar(12) NOT NULL,
  `no_rek` char(30) NOT NULL,
  `nama_rek` varchar(60) NOT NULL,
  `bank` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`id_transaksi`, `nama`, `username`, `password`, `email`, `alamat`, `pos`, `kota`, `hp`, `no_rek`, `nama_rek`, `bank`) VALUES
(1, 'kokok', 'admin', 'admin', 'ocikyamin93@gmail.com', 'nknknknkn', 0, 'nknknknk', '909090909', '09090', 'yamin', 'Mandiri'),
(2, 'kokok', 'admin', 'admin', 'ocikyamin93@gmail.com', 'nknknknkn', 0, 'nknknknk', '909090909', '09090', 'yamin', 'Mandiri'),
(3, 'Bayu', 'user', 'user', 'ocikyamin93@gmail.com', 'd', 0, 'gg', '988989', '898989898989', 'bayu', 'BNI');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `level` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `username`, `password`, `level`) VALUES
(6218, 'riris', 'e10adc3949ba59abbe56e057f20f883e', ''),
(7638, 'tri', 'adcaec3805aa912c0d0b14a81bedb6ff', ''),
(8392, 'agus', 'def7924e3199be5e18060bb3e1d547a7', ''),
(1112, 'fika', '827ccb0eea8a706c4c34a16891f84e7b', ''),
(6218, 'riris', '827ccb0eea8a706c4c34a16891f84e7b', 'Anggota'),
(7638, 'vyca', '81dc9bdb52d04dc20036dbd8313ed055', 'Administrator');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bayar`
--
ALTER TABLE `bayar`
  ADD PRIMARY KEY (`id_bayar`),
  ADD UNIQUE KEY `id_pembeli` (`id_pembeli`),
  ADD UNIQUE KEY `id_harga_makanan` (`id_harga_makanan`),
  ADD UNIQUE KEY `id_harga_minuman` (`id_harga_minuman`),
  ADD UNIQUE KEY `id_paket` (`id_paket`);

--
-- Indexes for table `daftar`
--
ALTER TABLE `daftar`
  ADD PRIMARY KEY (`id_daftar`),
  ADD UNIQUE KEY `id_pembeli` (`id_pembeli`),
  ADD UNIQUE KEY `id_user` (`id_user`);

--
-- Indexes for table `harga_makanan`
--
ALTER TABLE `harga_makanan`
  ADD PRIMARY KEY (`id_harga_makanan`),
  ADD UNIQUE KEY `id_jns_makanan` (`id_jns_makanan`),
  ADD UNIQUE KEY `id_makanan` (`id_makanan`);

--
-- Indexes for table `harga_minuman`
--
ALTER TABLE `harga_minuman`
  ADD PRIMARY KEY (`id_harga_minuman`),
  ADD UNIQUE KEY `id_jns_minuman` (`id_jns_minuman`),
  ADD UNIQUE KEY `id_minuman` (`id_minuman`);

--
-- Indexes for table `harga_paket`
--
ALTER TABLE `harga_paket`
  ADD PRIMARY KEY (`id_harga_paket`),
  ADD UNIQUE KEY `id_jns_makanan` (`id_jns_makanan`),
  ADD UNIQUE KEY `id_jns_minuman` (`id_jns_minuman`),
  ADD UNIQUE KEY `id_makanan` (`id_makanan`),
  ADD UNIQUE KEY `id_minuman` (`id_minuman`),
  ADD UNIQUE KEY `id_harga_makanan` (`id_harga_makanan`),
  ADD UNIQUE KEY `id_harga_minuman` (`id_harga_minuman`),
  ADD UNIQUE KEY `id_paket` (`id_paket`);

--
-- Indexes for table `jenis_makanan`
--
ALTER TABLE `jenis_makanan`
  ADD PRIMARY KEY (`id_jns_makanan`);

--
-- Indexes for table `jenis_minuman`
--
ALTER TABLE `jenis_minuman`
  ADD PRIMARY KEY (`id_jns_minuman`);

--
-- Indexes for table `jual`
--
ALTER TABLE `jual`
  ADD PRIMARY KEY (`id_jual`),
  ADD UNIQUE KEY `id_makanan/minuman` (`id_makanan`),
  ADD UNIQUE KEY `id_jns_makanan/minuman` (`id_minuman`),
  ADD UNIQUE KEY `id_paket` (`id_paket`),
  ADD UNIQUE KEY `id_jns_makanan` (`id_jns_makanan`),
  ADD UNIQUE KEY `id_jns_minuman` (`id_jns_minuman`);

--
-- Indexes for table `makanan`
--
ALTER TABLE `makanan`
  ADD PRIMARY KEY (`id_makanan`),
  ADD UNIQUE KEY `id_jns_makanan` (`id_jns_makanan`);

--
-- Indexes for table `menu_paket`
--
ALTER TABLE `menu_paket`
  ADD PRIMARY KEY (`id_paket`),
  ADD UNIQUE KEY `id_makanan` (`id_makanan`),
  ADD UNIQUE KEY `id_minuman` (`id_minuman`),
  ADD UNIQUE KEY `id_jns_makanan` (`id_jns_makanan`),
  ADD UNIQUE KEY `id_jns_minuman` (`id_jns_minuman`),
  ADD UNIQUE KEY `id_harga_paket` (`id_harga_paket`);

--
-- Indexes for table `minuman`
--
ALTER TABLE `minuman`
  ADD PRIMARY KEY (`id_minuman`),
  ADD UNIQUE KEY `id_jns_minuman` (`id_jns_minuman`);

--
-- Indexes for table `pembeli`
--
ALTER TABLE `pembeli`
  ADD PRIMARY KEY (`id_pembeli`);

--
-- Indexes for table `pesan`
--
ALTER TABLE `pesan`
  ADD PRIMARY KEY (`id_pesan`),
  ADD UNIQUE KEY `id_supplier` (`id_supplier`),
  ADD UNIQUE KEY `id_makanan` (`id_makanan`),
  ADD UNIQUE KEY `id_minuman` (`id_minuman`),
  ADD UNIQUE KEY `id_jns_makanan` (`id_jns_makanan`),
  ADD UNIQUE KEY `id_jns_minuman` (`id_jns_minuman`);

--
-- Indexes for table `stok_makanan`
--
ALTER TABLE `stok_makanan`
  ADD UNIQUE KEY `id_jns_makanan` (`id_jns_makanan`),
  ADD UNIQUE KEY `id_makanan` (`id_makanan`);

--
-- Indexes for table `stok_minuman`
--
ALTER TABLE `stok_minuman`
  ADD UNIQUE KEY `id_jns_minuman` (`id_jns_minuman`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`id_supplier`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_transaksi`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
