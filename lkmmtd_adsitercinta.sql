-- phpMyAdmin SQL Dump
-- version 4.0.10.14
-- http://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: Sep 02, 2019 at 10:49 AM
-- Server version: 5.1.73-cll
-- PHP Version: 5.4.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `lkmmtd_adsitercinta`
--
CREATE DATABASE IF NOT EXISTS `lkmmtd_adsitercinta` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `lkmmtd_adsitercinta`;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE IF NOT EXISTS `customer` (
  `id_customer` int(11) NOT NULL AUTO_INCREMENT,
  `nama_customer` varchar(50) NOT NULL,
  `email_customer` varchar(50) NOT NULL,
  `notlp_customer` varchar(12) NOT NULL,
  `username_customer` varchar(50) NOT NULL,
  `password_customer` varchar(50) NOT NULL,
  `poin_customer` int(11) NOT NULL,
  `nokredit_customer` varchar(16) NOT NULL,
  PRIMARY KEY (`id_customer`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id_customer`, `nama_customer`, `email_customer`, `notlp_customer`, `username_customer`, `password_customer`, `poin_customer`, `nokredit_customer`) VALUES
(1, 'joella', 'joella', '081238915999', 'joella', 'joella', 125, '1111222233334444'),
(2, 'andhika', 'andhika', '081233030026', 'andhika', 'andhika', 5, '5555666677778888'),
(3, 'aye', 'aye', '012345678900', 'aye', 'aye', 0, '4444333322221111'),
(4, 'orangbaru', 'orangbaru', '081703124779', 'orangbaru', 'orangbaru', 5, '5505617899990000');

-- --------------------------------------------------------

--
-- Table structure for table `film`
--

CREATE TABLE IF NOT EXISTS `film` (
  `id_film` int(11) NOT NULL AUTO_INCREMENT,
  `judul_film` varchar(50) NOT NULL,
  `deskripsi_film` varchar(500) NOT NULL,
  `foto_film` varchar(50) NOT NULL,
  PRIMARY KEY (`id_film`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `film`
--

INSERT INTO `film` (`id_film`, `judul_film`, `deskripsi_film`, `foto_film`) VALUES
(1, 'Aladdin', 'Aladdin is a street urchin who lives in a large and busy town long ago with his faithful monkey friend Abu. When Princess Jasmine gets tired of being forced to remain in the palace that overlooks the city, she sneaks out to the marketplace, where she accidentally meets Aladdin.', 'aladdin'),
(2, 'The Avengers: Endgame', 'New Avengers: Endgame trailer brings the fight to Thanos. Marvel has released another short trailer for Avengers: Endgame, and it''s made up of primarily new footage. But even though the footage is new, it doesn''t tell us much. All we know is that the Avengers are assembling to bring the fight to Thanos.', 'endgame');

-- --------------------------------------------------------

--
-- Table structure for table `jadwal`
--

CREATE TABLE IF NOT EXISTS `jadwal` (
  `id_jadwal` int(11) NOT NULL AUTO_INCREMENT,
  `tanggal_jadwal` date NOT NULL,
  `jam_jadwal` varchar(5) NOT NULL,
  `id_studio` int(11) NOT NULL,
  `id_film` int(11) NOT NULL,
  `harga_tiket` int(11) NOT NULL,
  PRIMARY KEY (`id_jadwal`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=29 ;

--
-- Dumping data for table `jadwal`
--

INSERT INTO `jadwal` (`id_jadwal`, `tanggal_jadwal`, `jam_jadwal`, `id_studio`, `id_film`, `harga_tiket`) VALUES
(1, '2019-06-14', '12.15', 1, 1, 35000),
(2, '2019-06-14', '15.30', 2, 1, 35000),
(3, '2019-06-14', '19.00', 3, 1, 35000),
(4, '2019-06-14', '23.45', 4, 1, 35000),
(5, '2019-06-14', '13.45', 5, 1, 35000),
(6, '2019-06-14', '18.00', 6, 1, 35000),
(7, '2019-06-14', '16.30', 7, 1, 35000),
(8, '2019-06-14', '19.00', 8, 1, 35000),
(9, '2019-06-14', '20.15', 9, 1, 35000),
(10, '2019-06-14', '21.00', 10, 1, 35000),
(11, '2019-06-14', '17.30', 11, 2, 35000),
(12, '2019-06-14', '14.30', 12, 2, 35000),
(13, '2019-06-14', '14.00', 13, 2, 35000),
(14, '2019-06-14', '16.00', 14, 2, 35000),
(15, '2019-06-14', '15.00', 15, 2, 35000),
(16, '2019-06-14', '15.45', 16, 2, 35000),
(17, '2019-06-14', '12.00', 17, 2, 35000),
(18, '2019-06-14', '13.15', 18, 2, 35000),
(19, '2019-06-14', '18.45', 19, 2, 35000),
(20, '2019-06-14', '19.30', 20, 2, 35000),
(21, '2019-06-14', '18.00', 1, 2, 35000),
(22, '2019-06-14', '18.00', 1, 1, 35000),
(23, '2019-06-14', '07.00', 1, 2, 35000),
(24, '2019-06-14', '05.33', 5, 2, 40000);

-- --------------------------------------------------------

--
-- Table structure for table `mall`
--

CREATE TABLE IF NOT EXISTS `mall` (
  `id_mall` int(11) NOT NULL AUTO_INCREMENT,
  `nama_mall` varchar(50) NOT NULL,
  PRIMARY KEY (`id_mall`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `mall`
--

INSERT INTO `mall` (`id_mall`, `nama_mall`) VALUES
(1, 'Grand City'),
(2, 'Ciputra World'),
(3, 'Pakuwon Mall'),
(4, 'Galaxy Mall'),
(5, 'Lenmarc');

-- --------------------------------------------------------

--
-- Table structure for table `pegawai`
--

CREATE TABLE IF NOT EXISTS `pegawai` (
  `id_pegawai` int(11) NOT NULL AUTO_INCREMENT,
  `nama_pegawai` varchar(50) NOT NULL,
  `username_pegawai` varchar(50) NOT NULL,
  `password_pegawai` varchar(50) NOT NULL,
  `status_pegawai` int(11) NOT NULL,
  PRIMARY KEY (`id_pegawai`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `pegawai`
--

INSERT INTO `pegawai` (`id_pegawai`, `nama_pegawai`, `username_pegawai`, `password_pegawai`, `status_pegawai`) VALUES
(1, 'joella', 'joella', 'joella', 1),
(4, 'andhika', 'andhika', 'andhika', 1),
(11, 'joella', 'joella', 'joella123', 2);

-- --------------------------------------------------------

--
-- Table structure for table `pesanan`
--

CREATE TABLE IF NOT EXISTS `pesanan` (
  `id_pesanan` int(11) NOT NULL AUTO_INCREMENT,
  `status_pembayaran` int(11) NOT NULL,
  `jenis_pembayaran` int(11) NOT NULL,
  `id_customer` int(11) NOT NULL,
  `id_pegawai` int(11) NOT NULL,
  `total_harga` int(11) NOT NULL,
  PRIMARY KEY (`id_pesanan`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `pesanan`
--

INSERT INTO `pesanan` (`id_pesanan`, `status_pembayaran`, `jenis_pembayaran`, `id_customer`, `id_pegawai`, `total_harga`) VALUES
(1, 0, 0, 1, 0, 35000),
(3, 1, 2, 1, 0, 105000),
(4, 1, 2, 1, 0, 70000),
(5, 1, 3, 1, 0, 70000),
(6, 1, 2, 1, 0, 210000),
(7, 1, 2, 1, 0, 70000),
(8, 1, 3, 1, 0, 70000),
(9, 1, 3, 1, 0, 105000),
(10, 1, 3, 1, 0, 105000),
(11, 1, 3, 1, 0, 35000),
(12, 1, 3, 1, 0, 35000),
(13, 1, 2, 4, 0, 35000),
(14, 1, 1, 1, 11, 105000),
(15, 1, 2, 2, 11, 35000);

-- --------------------------------------------------------

--
-- Table structure for table `studio`
--

CREATE TABLE IF NOT EXISTS `studio` (
  `id_studio` int(11) NOT NULL AUTO_INCREMENT,
  `nama_studio` int(11) NOT NULL,
  `id_mall` int(11) NOT NULL,
  PRIMARY KEY (`id_studio`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=31 ;

--
-- Dumping data for table `studio`
--

INSERT INTO `studio` (`id_studio`, `nama_studio`, `id_mall`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 4, 1),
(5, 51, 1),
(6, 1, 2),
(7, 2, 2),
(8, 3, 2),
(9, 4, 2),
(10, 52, 2),
(11, 1, 3),
(12, 2, 3),
(13, 3, 3),
(14, 4, 3),
(15, 53, 3),
(16, 1, 4),
(17, 2, 4),
(18, 3, 4),
(19, 4, 4),
(20, 54, 4);

-- --------------------------------------------------------

--
-- Table structure for table `tiket`
--

CREATE TABLE IF NOT EXISTS `tiket` (
  `id_tiket` int(11) NOT NULL AUTO_INCREMENT,
  `nomor_kursi` varchar(3) NOT NULL,
  `status_tiket` int(11) NOT NULL,
  `id_pesanan` int(11) NOT NULL,
  `id_jadwal` int(11) NOT NULL,
  PRIMARY KEY (`id_tiket`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=209 ;

--
-- Dumping data for table `tiket`
--

INSERT INTO `tiket` (`id_tiket`, `nomor_kursi`, `status_tiket`, `id_pesanan`, `id_jadwal`) VALUES
(1, 'A1', 1, 0, 4),
(2, 'A2', 1, 13, 4),
(3, 'A3', 1, 0, 4),
(4, 'A4', 1, 2, 4),
(5, 'A5', 1, 2, 4),
(6, 'A6', 1, 2, 4),
(7, 'A7', 1, 4, 4),
(8, 'A8', 1, 4, 4),
(9, 'A9', 1, 5, 4),
(10, 'A10', 1, 5, 4),
(11, 'A11', 1, 6, 4),
(12, 'A12', 1, 6, 4),
(13, 'A13', 1, 6, 4),
(14, 'A14', 1, 6, 4),
(15, 'A15', 1, 6, 4),
(16, 'A16', 1, 6, 4),
(17, 'B1', 1, 9, 4),
(18, 'B2', 1, 9, 4),
(19, 'B3', 1, 9, 4),
(20, 'B4', 1, 11, 4),
(21, 'B5', 0, 0, 4),
(22, 'B6', 0, 0, 4),
(23, 'B7', 1, 7, 4),
(24, 'B8', 1, 7, 4),
(25, 'B9', 1, 8, 4),
(26, 'B10', 1, 8, 4),
(27, 'B11', 0, 0, 4),
(28, 'B12', 0, 0, 4),
(29, 'B13', 1, 12, 4),
(30, 'B14', 1, 10, 4),
(31, 'B15', 1, 10, 4),
(32, 'B16', 1, 10, 4),
(33, 'C1', 1, 14, 4),
(34, 'C2', 1, 14, 4),
(35, 'C3', 1, 14, 4),
(36, 'C4', 1, 15, 4),
(37, 'C5', 0, 0, 4),
(38, 'C6', 0, 16, 4),
(39, 'C7', 0, 16, 4),
(40, 'C8', 0, 16, 4),
(41, 'C9', 0, 0, 4),
(42, 'C10', 0, 0, 4),
(43, 'C11', 0, 0, 4),
(44, 'C12', 0, 0, 4),
(45, 'C13', 0, 0, 4),
(46, 'C14', 0, 0, 4),
(47, 'C15', 0, 0, 4),
(48, 'C16', 0, 0, 4);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
