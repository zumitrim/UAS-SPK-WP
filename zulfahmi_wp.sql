-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 23, 2023 at 10:12 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `zulfahmi_wp`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `UserName` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`UserName`, `Password`) VALUES
('admin', 'admin'),
('zulfahmi', 'zulfahmi123');

-- --------------------------------------------------------

--
-- Table structure for table `alternatif`
--

CREATE TABLE `alternatif` (
  `Kode_A` varchar(2) NOT NULL,
  `Nama_A` varchar(11) NOT NULL,
  `C1` varchar(11) NOT NULL,
  `C2` int(2) NOT NULL,
  `C3` int(2) NOT NULL,
  `C4` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `alternatif`
--

INSERT INTO `alternatif` (`Kode_A`, `Nama_A`, `C1`, `C2`, `C3`, `C4`) VALUES
('A1', 'AWS', '10', 95, 5, '4'),
('A2', 'Azure', '10', 92, 5, '5'),
('A3', 'Alibaba', '9', 87, 4, '4'),
('A4', 'Huawei', '7', 85, 4, '4');

-- --------------------------------------------------------

--
-- Table structure for table `bobot_s`
--

CREATE TABLE `bobot_s` (
  `Si` varchar(2) NOT NULL,
  `C1` varchar(11) NOT NULL,
  `C2` varchar(11) NOT NULL,
  `C3` varchar(11) NOT NULL,
  `C4` varchar(11) NOT NULL,
  `Total` varchar(12) NOT NULL,
  `Total_Keseluruhan` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `bobot_s`
--

INSERT INTO `bobot_s` (`Si`, `C1`, `C2`, `C3`, `C4`, `Total`, `Total_Keseluruhan`) VALUES
('', '', '', '', '', '', '31,37098087'),
('S1', '1.506065855', '0.507995684', '3.022252145', '3.314454017', '8.261167701', '0'),
('S2', '1.439282848', '0.459280272', '3.145429892', '0.646872', '6.370865012', '0'),
('S3', '1.259282848', '0.359280272', '3.544252145', '2.521886432', '7.234701696', '0'),
('S4', '1.51612555', '1.128237', '3.425429892', '3.424454017', '9.425546459', '0');

-- --------------------------------------------------------

--
-- Table structure for table `bobot_v`
--

CREATE TABLE `bobot_v` (
  `Ai` varchar(2) NOT NULL,
  `Vi` varchar(2) NOT NULL,
  `Bobot_V` varchar(11) NOT NULL,
  `Rangking` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `bobot_v`
--

INSERT INTO `bobot_v` (`Ai`, `Vi`, `Bobot_V`, `Rangking`) VALUES
('A1', 'V1', '0.242206777', 2),
('A2', 'V2', '0.188387389', 4),
('A3', 'V3', '0.291992963', 3),
('A4', 'V4', '0.310412872', 1);

-- --------------------------------------------------------

--
-- Table structure for table `hasil`
--

CREATE TABLE `hasil` (
  `Ai` varchar(2) NOT NULL,
  `Keterangan` varchar(10) NOT NULL,
  `C1` int(2) NOT NULL,
  `C2` int(2) NOT NULL,
  `C3` int(2) NOT NULL,
  `C4` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `hasil`
--

INSERT INTO `hasil` (`Ai`, `Keterangan`, `C1`, `C2`, `C3`, `C4`) VALUES
('A1', 'AWS', 10, 95, 5, 5),
('A2', 'Azure', 10, 92, 5, 5),
('A3', 'Alibaba', 9, 89, 4, 5),
('A4', 'Huawei', 7, 85, 4, 4);

-- --------------------------------------------------------

--
-- Table structure for table `kriteria`
--

CREATE TABLE `kriteria` (
  `Kode_C` varchar(2) NOT NULL,
  `Nama_C` varchar(50) NOT NULL,
  `Bobot` int(3) NOT NULL,
  `Atribut` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `kriteria`
--

INSERT INTO `kriteria` (`Kode_C`, `Nama_C`, `Bobot`, `Atribut`) VALUES
('C1', 'Reputasi', 1, 'Benefit'),
('C2', 'Harga dan Skalabilitas', 2, 'Cost'),
('C3', 'Keamanan dan Kepatuhan', 3, 'Benefit'),
('C4', 'Dukungan Pelanggan', 4, 'Benefit');

-- --------------------------------------------------------

--
-- Table structure for table `nornalisasi`
--

CREATE TABLE `nornalisasi` (
  `Wi` varchar(2) NOT NULL,
  `W_Awal` int(2) NOT NULL,
  `W_Normal` varchar(50) NOT NULL,
  `Bobot_Sederhana` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `nornalisasi`
--

INSERT INTO `nornalisasi` (`Wi`, `W_Awal`, `W_Normal`, `Bobot_Sederhana`) VALUES
('W1', 1, '0,1', '0,1'),
('W2', 2, '0,2', '-0,2'),
('W3', 3, '0,3', '0,3'),
('W4', 4, '0,4', '0,4');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`UserName`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
