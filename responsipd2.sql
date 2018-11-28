-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 28, 2018 at 12:54 PM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `responsipd2`
--

-- --------------------------------------------------------

--
-- Table structure for table `tabungan`
--

CREATE TABLE `tabungan` (
  `nrp` varchar(10) NOT NULL,
  `uang_masuk` int(50) DEFAULT NULL,
  `uang_keluar` int(50) DEFAULT NULL,
  `tanggal` date NOT NULL,
  `saldo` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `nrp` varchar(10) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `jk` char(1) NOT NULL,
  `telp` int(12) NOT NULL,
  `alamat` text NOT NULL,
  `password` varchar(5) NOT NULL,
  `ttl` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`nrp`, `nama`, `jk`, `telp`, `alamat`, `password`, `ttl`) VALUES
('161111001', 'Aditya  Fais Rofi', 'L', 85143, 'Bululawang', 'c123', 'Malang 28 November 1997'),
('171111011', 'shania saraswati', 'P', 821789156, 'Sempalwadak', 'a123', 'Malang 24 oktober 1998'),
('171111040', 'Risky Feryansyah P', 'L', 8383, 'gadang gang 5c', 'b123', 'Malang 7 November 1998');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tabungan`
--
ALTER TABLE `tabungan`
  ADD KEY `nrp` (`nrp`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`nrp`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tabungan`
--
ALTER TABLE `tabungan`
  ADD CONSTRAINT `tabungan_ibfk_1` FOREIGN KEY (`nrp`) REFERENCES `user` (`nrp`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
