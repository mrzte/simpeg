-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 26, 2019 at 02:59 PM
-- Server version: 5.7.18
-- PHP Version: 7.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `p1`
--

-- --------------------------------------------------------

--
-- Table structure for table `jabatanx`
--

CREATE TABLE `jabatanx` (
  `id_jabatan` int(11) NOT NULL,
  `id_parent` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL COMMENT '1. Struktural 2 Fungsional',
  `jabatan` varchar(255) NOT NULL,
  `deskripsi` text,
  `kelas` tinyint(2) NOT NULL,
  `bezetthing` tinyint(2) NOT NULL,
  `kebutuhan` tinyint(2) NOT NULL,
  `singkatan` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jabatanx`
--

INSERT INTO `jabatanx` (`id_jabatan`, `id_parent`, `status`, `jabatan`, `deskripsi`, `kelas`, `bezetthing`, `kebutuhan`, `singkatan`) VALUES
(1, NULL, 1, 'DIREKTUR JENDERAL PENGUATAN INOVASI', NULL, 18, 0, 0, 'Direktur Jenderal Penguatan Inovasi'),
(2, 1, 1, 'SEKRETARIS DIREKTORAT JENDERAL PENGUATAN INOVASI', NULL, 15, 0, 0, 'Sekretaris Direktorat Jenderal Penguatan Inovasi'),
(3, 2, 1, 'KEPALA BAGIAN PERENCANAAN DAN PENGANGGARAN', NULL, 12, 0, 0, 'Kabag Perencanaan Dan Penganggaran'),
(4, 2, 1, 'KEPALA BAGIAN HUKUM, KERJA SAMA DAN LAYANAN INFORMASI', NULL, 12, 0, 0, 'Kabag Hukum, Kerja Sama Dan Layanan Informasi'),
(5, 2, 1, 'KEPALA BAGIAN UMUM', NULL, 12, 0, 0, 'Kabag Umum'),
(6, 3, 1, 'KEPALA SUBBAGIAN PERENCANAAN', NULL, 9, 0, 0, 'Kasubag Perencanaan'),
(7, 4, 1, 'KEPALA SUBBAGIAN HUKUM', NULL, 9, 0, 0, 'Kasubag Hukum'),
(8, 5, 1, 'KEPALA SUBBAGIAN TATA USAHA DAN KEPEGAWAIAN', NULL, 9, 0, 0, 'Kasubag Tata Usaha Dan Kepegawaian'),
(9, 3, 1, 'KEPALA SUBBAGIAN PEMANTAUAN DAN EVALUASI', NULL, 9, 0, 0, 'Kasubag Pemantauan Dan Evaluasi'),
(10, 3, 1, 'KEPALA SUBBAGIAN PERBENDAHARAAN DAN PELAPORAN KEUANGAN', NULL, 9, 0, 0, 'Kasubag Perbendaharaan Dan Pelaporan Keuangan'),
(11, 4, 1, 'KEPALA SUBBAGIAN KERJA SAMA', NULL, 9, 0, 0, 'Kasubag Kerja Sama'),
(12, 4, 1, 'KEPALA SUBBAGIAN LAYANAN INFORMASI', NULL, 9, 0, 0, 'Kasubag Layanan Informasi'),
(13, 5, 1, 'KEPALA SUBBAGIAN RUMAH TANGGA', NULL, 9, 0, 0, 'Kasubag Rumah Tangga'),
(14, 5, 1, 'KEPALA SUBBAGIAN BARANG MILIK NEGARA', NULL, 9, 0, 0, 'Kasubag Barang Milik Negara'),
(15, 2, 2, 'Perancang Peraturan Perundang-undangan Muda', NULL, 9, 0, 1, NULL),
(16, 6, 2, 'Penyusun Program Anggaran dan Pelaporan', NULL, 7, 2, 2, NULL),
(17, 6, 2, 'Pengelola Data Pelaksanaan Program dan Anggaran', NULL, 6, 1, 1, NULL),
(18, 6, 2, 'Pengadministrasi Umum', NULL, 5, 1, 1, NULL),
(19, 9, 2, 'Analis Monitoring, Evaluasi, dan Pelaporan', NULL, 7, 1, 2, NULL),
(20, 9, 2, 'Pengelola Data Pelaksanaan Program dan Anggaran', NULL, 6, 1, 1, NULL),
(21, 9, 2, 'Pengadministrasi Anggaran', NULL, 5, 1, 1, NULL),
(22, 10, 2, 'Penyusun Laporan Keuangan', NULL, 7, 1, 1, NULL),
(23, 10, 2, 'Bendahara', NULL, 7, 2, 3, NULL),
(24, 10, 2, 'Pengelola Keuangan', NULL, 6, 1, 2, NULL),
(25, 10, 2, 'Pengelola Database Surat Perintah Membayar', NULL, 6, 0, 1, NULL),
(26, 10, 2, 'Pengelola Gaji ', NULL, 6, 1, 1, NULL),
(27, 10, 2, 'Pengadministrasi Keuangan', NULL, 5, 2, 2, NULL),
(28, 7, 2, 'Perancang Peraturan Perundang-undangan Pertama', NULL, 8, 0, 2, NULL),
(29, 7, 2, 'Analis Peraturan Perundang-Undangan dan Rancangan Peraturan Perundang-Undangan', NULL, 7, 1, 1, NULL),
(30, 7, 2, 'Penyusun Bahan Bantuan Hukum', NULL, 7, 1, 1, NULL),
(31, 7, 2, 'Pengadministrasi Data Peraturan Perundang - Undangan', NULL, 5, 0, 1, NULL),
(32, 11, 2, 'Analis Kerjasama', NULL, 7, 2, 2, NULL),
(33, 11, 2, 'Pengelola Informasi Kerjasama', NULL, 6, 1, 2, NULL),
(34, 11, 2, 'Pengadministrasi Program dan Kerjasama', NULL, 5, 1, 1, NULL),
(35, 11, 2, 'Pengadministrasi Perjalanan Dinas Luar Negeri', NULL, 5, 0, 1, NULL),
(36, 12, 2, 'Penyusun Informasi dan Publikasi Pendidikan Tinggi', NULL, 7, 1, 1, NULL),
(37, 12, 2, 'Pengolah Data dan Informasi', NULL, 6, 1, 1, NULL),
(38, 12, 2, 'Pengelola Situs/ Web', NULL, 6, 0, 1, NULL),
(39, 12, 2, 'Pengadministrasi Umum', NULL, 5, 1, 1, NULL),
(40, 8, 2, 'Arsiparis Penyelia', NULL, 8, 0, 1, NULL),
(41, 8, 2, 'Arsiparis Pelaksana Lanjutan', NULL, 7, 0, 0, NULL),
(42, 8, 2, 'Arsiparis Pelaksana ', NULL, 6, 0, 0, NULL),
(43, 8, 2, 'Analis Organisasi dan Tata Laksana', NULL, 7, 2, 2, NULL),
(44, 8, 2, 'Pengolah Data', NULL, 6, 1, 1, NULL),
(45, 8, 2, 'Pengelola Kepegawaian', NULL, 6, 1, 1, NULL),
(46, 8, 2, 'Sekretaris', NULL, 6, 1, 1, NULL),
(47, 8, 2, 'Ajudan', NULL, 6, 0, 1, NULL),
(48, 8, 2, 'Pengadministrasi Kepegawaian', NULL, 5, 1, 1, NULL),
(49, 8, 2, 'Pranata Kearsipan', NULL, 5, 1, 1, NULL),
(50, 8, 2, 'Pengadministrasi Persuratan', NULL, 5, 2, 2, NULL),
(51, 13, 2, 'Analis Pengembangan Sarana Dan Prasarana', NULL, 7, 2, 2, NULL),
(52, 13, 2, 'Pengelola Sarana dan Prasarana Kantor', NULL, 6, 3, 3, NULL),
(53, 13, 2, 'Pengadministrasi Umum', NULL, 5, 1, 1, NULL),
(54, 13, 2, 'Teknisi Peralatan Kantor', NULL, 5, 5, 6, NULL),
(55, 13, 2, 'Pramu Bakti', NULL, 3, 2, 2, NULL),
(56, 14, 2, 'Pengelola Pengadaan Barang/Jasa Pertama', NULL, 8, 0, 1, NULL),
(57, 14, 2, 'Analis Kebijakan Barang Milik Negara', NULL, 7, 0, 1, NULL),
(58, 14, 2, 'Pengelola Barang Milik Negara', NULL, 6, 2, 2, NULL),
(59, 14, 2, 'Pengadministrasi Umum', NULL, 5, 2, 3, NULL),
(60, 1, 1, 'DIREKTUR INOVASI INDUSTRI', NULL, 15, 0, 0, 'Direktur Inovasi Industri'),
(61, 60, 1, 'KEPALA SUBBAGIAN TATA USAHA', NULL, 9, 0, 0, 'Kasubag Tata Usaha'),
(62, 60, 1, 'KEPALA SUBDIREKTORAT INDUSTRI TEKNOLOGI INFORMASI DAN KOMUNIKASI DAN PERTAHANAN DAN KEAMANAN', NULL, 12, 0, 0, 'Kasubdit Industri TIK Dan Pertahanan Dan Keamanan'),
(63, 60, 1, 'KEPALA SUBDIREKTORAT INDUSTRI ENERGI DAN TRANSPORTASI', NULL, 12, 0, 0, 'Kasubdit Industri Energi Dan Transportasi'),
(64, 60, 1, 'KEPALA SUBDIREKTORAT INDUSTRI PANGAN, KESEHATAN DAN OBAT', NULL, 12, 0, 0, 'Kasubdit Industri Pangan, Kesehatan Dan Obat'),
(65, 60, 1, 'KEPALA SUBDIREKTORAT INDUSTRI BAHAN BAKU DAN MATERIAL MAJU', NULL, 12, 0, 0, 'Kasubdit Industri Bahan Baku Dan Material Maju'),
(66, 62, 1, 'KEPALA SEKSI INDUSTRI TEKNOLOGI INFORMASI DAN KOMUNIKASI', NULL, 9, 0, 0, 'Kasi Industri Teknologi Informasi Dan Komunikasi'),
(67, 62, 1, 'KEPALA SEKSI INDUSTRI PERTAHANAN DAN KEAMANAN', NULL, 9, 0, 0, 'Kasi Industri Pertahanan Dan Keamanan'),
(68, 63, 1, 'KEPALA SEKSI INDUSTRI ENERGI', NULL, 9, 0, 0, 'Kasi Industri Energi'),
(69, 63, 1, 'KEPALA SEKSI INDUSTRI TRANSPORTASI', NULL, 9, 0, 0, 'Kasi Industri Transportasi'),
(70, 64, 1, 'KEPALA SEKSI INDUSTRI PANGAN', NULL, 9, 0, 0, 'Kasi Industri Pangan'),
(71, 64, 1, 'KEPALA SEKSI INDUSTRI KESEHATAN DAN OBAT', NULL, 9, 0, 0, 'Kasi Industri Kesehatan Dan Obat'),
(72, 65, 1, 'KEPALA SEKSI INDUSTRI BAHAN BAKU', NULL, 9, 0, 0, 'Kasi Industri Bahan Baku'),
(73, 65, 1, 'KEPALA SEKSI INDUSTRI MATERIAL MAJU', NULL, 9, 0, 0, 'Kasi Industri Material Maju'),
(74, 61, 2, 'Arsiparis Penyelia', NULL, 8, 0, 1, NULL),
(75, 61, 2, 'Arsiparis Pelaksana Lanjutan', NULL, 7, 0, 0, NULL),
(76, 61, 2, 'Arsiparis Pelaksana ', NULL, 6, 0, 0, NULL),
(77, 61, 2, 'Bendahara ', NULL, 7, 0, 1, NULL),
(78, 61, 2, 'Penyusun Laporan Keuangan', NULL, 7, 0, 1, NULL),
(79, 61, 2, 'Pengola Data ', NULL, 6, 0, 1, NULL),
(80, 61, 2, 'Pengelola Barang Milik Negara', NULL, 6, 0, 1, NULL),
(81, 61, 2, 'Pengelola Keuangan', NULL, 6, 1, 2, NULL),
(82, 61, 2, 'Pengolah Database Surat Perintah Membayar', NULL, 6, 0, 1, NULL),
(83, 61, 2, 'Pengadministrasi Persuratan', NULL, 5, 1, 2, NULL),
(84, 61, 2, 'Pengadministrasi Umum', NULL, 5, 2, 2, NULL),
(85, 61, 2, 'Pengadministrasi Keuangan', NULL, 5, 1, 1, NULL),
(86, 61, 2, 'Pengadministrasi Kepegawaian', NULL, 5, 0, 1, NULL),
(87, 61, 2, 'Pranata Kearsipan', NULL, 5, 0, 1, NULL),
(88, 66, 2, 'Analis Pemanpaatan Teknologi', NULL, 7, 1, 1, NULL),
(89, 66, 2, 'Pengolah Data', NULL, 6, 1, 1, NULL),
(90, 66, 2, 'Pengadministrasi Umum', NULL, 5, 1, 1, NULL),
(91, 67, 2, 'Analis Pemanpaatan Teknologi', NULL, 7, 1, 1, NULL),
(92, 67, 2, 'Pengolah Data', NULL, 6, 0, 1, NULL),
(93, 68, 2, 'Analis Pemanpaatan Teknologi', NULL, 7, 1, 1, NULL),
(94, 68, 2, 'Pengolah Data', NULL, 6, 1, 1, NULL),
(95, 69, 2, 'Analis Pemanpaatan Teknologi', NULL, 7, 1, 1, NULL),
(96, 69, 2, 'Pengolah Data', NULL, 6, 0, 1, NULL),
(97, 69, 2, 'Pengadministrasi Umum', NULL, 5, 1, 1, NULL),
(98, 70, 2, 'Analis Pemanpaatan Teknologi', NULL, 7, 1, 1, NULL),
(99, 70, 2, 'Pengolah Data', NULL, 6, 0, 1, NULL),
(100, 71, 2, 'Analis Pemanpaatan Teknologi', NULL, 7, 1, 1, NULL),
(101, 71, 2, 'Pengolah Data', NULL, 6, 0, 1, NULL),
(102, 71, 2, 'Pengadministrasi Umum', NULL, 5, 1, 1, NULL),
(103, 72, 2, 'Analis Pemanpaatan Teknologi', NULL, 7, 1, 1, NULL),
(104, 72, 2, 'Pengolah Data', NULL, 6, 0, 1, NULL),
(105, 73, 2, 'Analis Pemanpaatan Teknologi', NULL, 7, 1, 1, NULL),
(106, 73, 2, 'Pengolah Data', NULL, 6, 0, 1, NULL),
(107, 73, 2, 'Pengadministrasi Umum', NULL, 5, 1, 1, NULL),
(108, 1, 1, 'DIREKTUR PERUSAHAAN PEMULA BERBASIS TEKNOLOGI', NULL, 15, 0, 0, 'Direktur Perusahaan Pemula Berbasis Teknologi'),
(109, 108, 1, 'KEPALA SUBBAGIAN TATA USAHA', NULL, 9, 0, 0, 'Kasubag Tata Usaha'),
(110, 108, 1, 'KEPALA SUBDIREKTORAT TEKNOLOGI INFORMASI DAN KOMUNIKASI DAN PERTAHANAN DAN KEAMANAN', NULL, 12, 0, 0, 'Kasubdit TIK Dan Pertahanan Dan Keamanan'),
(111, 108, 1, 'KEPALA SUBDIREKTORAT ENERGI DAN TRANSPORTASI', NULL, 12, 0, 0, 'Kasubdit Energi Dan Transportasi'),
(112, 108, 1, 'KEPALA SUBDIREKTORAT PANGAN, KESEHATAN, DAN OBAT', NULL, 12, 0, 0, 'Kasubdit Pangan, Kesehatan, Dan Obat'),
(113, 108, 1, 'KEPALA SUBDIREKTORAT BAHAN BAKU DAN MATERIAL MAJU', NULL, 12, 0, 0, 'Kasubdit Bahan Baku Dan Material Maju'),
(114, 110, 1, 'KEPALA SEKSI TEKNOLOGI INFORMASI DAN KOMUNIKASI', NULL, 9, 0, 0, 'Kasi Teknologi Informasi Dan Komunikasi'),
(115, 110, 1, 'KEPALA SEKSI PERTAHANAN DAN KEAMANAN', NULL, 9, 0, 0, 'Kasi Pertahanan Dan Keamanan'),
(116, 111, 1, 'KEPALA SEKSI ENERGI', NULL, 9, 0, 0, 'Kasi Energi'),
(117, 111, 1, 'KEPALA SEKSI TRANSPORTASI', NULL, 9, 0, 0, 'Kasi Transportasi'),
(118, 112, 1, 'KEPALA SEKSI PANGAN', NULL, 9, 0, 0, 'Kasi Pangan'),
(119, 112, 1, 'KEPALA SEKSI KESEHATAN DAN OBAT', NULL, 9, 0, 0, 'Kasi Kesehatan Dan Obat'),
(120, 113, 1, 'KEPALA SEKSI BAHAN BAKU', NULL, 9, 0, 0, 'Kasi Bahan Baku'),
(121, 113, 1, 'KEPALA SEKSI MATERIAL MAJU', NULL, 9, 0, 0, 'Kasi Material Maju'),
(122, 109, 2, 'Arsiparis Penyelia', NULL, 8, 0, 1, NULL),
(123, 109, 2, 'Arsiparis Pelaksana Lanjutan', NULL, 7, 0, 0, NULL),
(124, 109, 2, 'Arsiparis Pelaksana ', NULL, 6, 0, 0, NULL),
(125, 109, 2, 'Bendahara ', NULL, 7, 0, 1, NULL),
(126, 109, 2, 'Penyusun Laporan Keuangan', NULL, 7, 0, 1, NULL),
(127, 109, 2, 'Pengolah Data ', NULL, 6, 0, 1, NULL),
(128, 109, 2, 'Pengelola Barang Milik Negara', NULL, 6, 0, 1, NULL),
(129, 109, 2, 'Pengelola Keuangan', NULL, 6, 0, 2, NULL),
(130, 109, 2, 'Pengolah Database Surat Perintah Membayar', NULL, 6, 0, 1, NULL),
(131, 109, 2, 'Pengadministrasi Persuratan', NULL, 5, 1, 2, NULL),
(132, 109, 2, 'Pengadministrasi Umum', NULL, 5, 1, 2, NULL),
(133, 109, 2, 'Pengadministrasi Keuangan', NULL, 5, 0, 1, NULL),
(134, 109, 2, 'Pengadministrasi Kepegawaian', NULL, 5, 0, 1, NULL),
(135, 109, 2, 'Pranata Kearsipan', NULL, 5, 0, 1, NULL),
(136, 114, 2, 'Analis Pemanpaatan Teknologi ', NULL, 7, 1, 1, NULL),
(137, 114, 2, 'Pengolah Data', NULL, 6, 1, 1, NULL),
(138, 115, 2, 'Analis Pemanpaatan Teknologi ', NULL, 7, 0, 1, NULL),
(139, 115, 2, 'Pengolah Data', NULL, 6, 1, 1, NULL),
(140, 115, 2, 'Pengadministrasi Umum', NULL, 5, 0, 1, NULL),
(141, 116, 2, 'Analis Pemanpaatan Teknologi ', NULL, 7, 1, 1, NULL),
(142, 116, 2, 'Pengolah Data', NULL, 6, 0, 1, NULL),
(143, 117, 2, 'Analis Pemanpaatan Teknologi ', NULL, 7, 0, 1, NULL),
(144, 117, 2, 'Pengolah Data ', NULL, 6, 0, 1, NULL),
(145, 117, 2, 'Pengadministrasi Umum ', NULL, 5, 1, 1, NULL),
(146, 118, 2, 'Analis Pemanpaatan Teknologi ', NULL, 7, 1, 1, NULL),
(147, 118, 2, 'Pengolah Data ', NULL, 6, 0, 1, NULL),
(148, 119, 2, 'Analis Pemanpaatan Teknologi ', NULL, 7, 0, 1, NULL),
(149, 119, 2, 'Pengolah Data ', NULL, 6, 1, 1, NULL),
(150, 119, 2, 'Pengadministrasi Umum ', NULL, 5, 1, 1, NULL),
(151, 120, 2, 'Analis Pemanpaatan Teknologi ', NULL, 7, 1, 1, NULL),
(152, 120, 2, 'Pengolah Data ', NULL, 6, 0, 1, NULL),
(153, 121, 2, 'Analis Pemanpaatan Teknologi ', NULL, 7, 0, 1, NULL),
(154, 121, 2, 'Pengolah Data', NULL, 6, 1, 1, NULL),
(155, 121, 2, 'Pengadministrasi Umum ', NULL, 5, 1, 1, NULL),
(156, 1, 1, 'DIREKTUR SISTEM INOVASI ', NULL, 0, 0, 0, 'Direktur Sistem Inovasi '),
(157, 156, 1, 'KEPALA SUBBAGIAN TATA USAHA', NULL, 0, 0, 0, 'Kasubag Tata Usaha'),
(158, 156, 1, 'KEPALA SUBDIREKTORAT PENGEMBANGAN SISTEM DAN JARINGAN INOVASI', NULL, 0, 0, 0, 'Kasubdit Pengembangan Sistem Dan Jaringan Inovasi'),
(159, 156, 1, 'KEPALA SUBDIREKTORAT HARMONISASI KEBIJAKAN DAN PROGRAM INOVASI', NULL, 0, 0, 0, 'Kasubdit Harmonisasi Kebijakan Dan Program Inovasi'),
(160, 156, 1, 'KEPALA SUBDIREKTORAT KEMITRAAN STRATEGIS DAN WAHANA INOVASI', NULL, 0, 0, 0, 'Kasubdit Kemitraan Strategis Dan Wahana Inovasi'),
(161, 156, 1, 'KEPALA SUBDIREKTORAT SISTEM INFORMASI DAN DISEMINASI INOVASI', NULL, 0, 0, 0, 'Kasubdit Sistem Informasi Dan Diseminasi Inovasi'),
(162, 158, 1, 'KEPALA SEKSI KEBIJAKAN INOVASI', NULL, 0, 0, 0, 'Kasi Kebijakan Inovasi'),
(163, 158, 1, 'KEPALA SEKSI JARINGAN INOVASI', NULL, 0, 0, 0, 'Kasi Jaringan Inovasi'),
(164, 159, 1, 'KEPALA SEKSI HARMONISASI PROGRAM DAN KEGIATAN', NULL, 0, 0, 0, 'Kasi Harmonisasi Program Dan Kegiatan'),
(165, 159, 1, 'KEPALA SEKSI EVALUASI SISTEM INOVASI', NULL, 0, 0, 0, 'Kasi Evaluasi Sistem Inovasi'),
(166, 160, 1, 'KEPALA SEKSI KEMITRAAN STRATEGIS', NULL, 0, 0, 0, 'Kasi Kemitraan Strategis'),
(167, 160, 1, 'KEPALA SEKSI WAHANA INOVASI', NULL, 0, 0, 0, 'Kasi Wahana Inovasi'),
(168, 161, 1, 'KEPALA SEKSI SISTEM INFORMASI INOVASI', NULL, 0, 0, 0, 'Kasi Sistem Informasi Inovasi'),
(169, 161, 1, 'KEPALA SEKSI DISEMINASI', NULL, 0, 0, 0, 'Kasi Diseminasi'),
(170, 157, 2, 'Arsiparis Penyelia', NULL, 8, 0, 1, NULL),
(171, 157, 2, 'Arsiparis Pelaksana Lanjutan', NULL, 7, 0, 0, NULL),
(172, 157, 2, 'Arsiparis Pelaksana ', NULL, 6, 0, 0, NULL),
(173, 157, 2, 'Bendahara', NULL, 7, 0, 1, NULL),
(174, 157, 2, 'Penyusun Laporan Keuangan', NULL, 7, 0, 1, NULL),
(175, 157, 2, 'Pengolah Data', NULL, 6, 1, 1, NULL),
(176, 157, 2, 'Pengelola Barang Milik Negara', NULL, 6, 0, 1, NULL),
(177, 157, 2, 'Pengelola Keuangan', NULL, 6, 0, 2, NULL),
(178, 157, 2, 'Pengelola Database Surat Perintah Membayar', NULL, 6, 0, 1, NULL),
(179, 157, 2, 'Pengadministrasi Persuratan', NULL, 5, 1, 2, NULL),
(180, 157, 2, 'Pengadministrasi Umum', NULL, 5, 1, 2, NULL),
(181, 157, 2, 'Pengadministrasi Keuangan', NULL, 5, 0, 1, NULL),
(182, 157, 2, 'Pengadministrasi Kepegawaian', NULL, 5, 0, 1, NULL),
(183, 157, 2, 'Pranata Kearsipan', NULL, 5, 0, 1, NULL),
(184, 162, 2, 'Penyusun Rencana Kebijakan', NULL, 7, 2, 2, NULL),
(185, 162, 2, 'Pengolah Data', NULL, 6, 0, 1, NULL),
(186, 162, 2, 'Pengadministrasi Umum', NULL, 5, 0, 1, NULL),
(187, 163, 2, 'Penyusun Rencana Kebijakan', NULL, 7, 1, 1, NULL),
(188, 163, 2, 'Pengolah Data', NULL, 6, 0, 1, NULL),
(189, 164, 2, 'Penyusun Rencana Kebijakan', NULL, 7, 2, 2, NULL),
(190, 164, 2, 'Pengolah Data', NULL, 6, 0, 1, NULL),
(191, 164, 2, 'Pengadministrasi Umum', NULL, 5, 0, 1, NULL),
(192, 165, 2, 'Penyusun Rencana Kebijakan', NULL, 7, 0, 2, NULL),
(193, 165, 2, 'Pengolah Data ', NULL, 6, 1, 1, NULL),
(194, 166, 2, 'Analis Ilmu Pengetahuan dan Teknologi', NULL, 7, 0, 2, NULL),
(195, 166, 2, 'Pengolah Data ', NULL, 6, 1, 2, NULL),
(196, 166, 2, 'Pengadministrasi Umum', NULL, 5, 1, 1, NULL),
(197, 167, 2, 'Analis Ilmu Pengetahuan dan Teknologi', NULL, 7, 3, 3, NULL),
(198, 167, 2, 'Pengolah Data', NULL, 6, 0, 1, NULL),
(199, 168, 2, 'Analis Sistem Informasi ', NULL, 7, 1, 1, NULL),
(200, 168, 2, 'Pengolah Data dan Informasi', NULL, 6, 0, 1, NULL),
(201, 168, 2, 'Pengelola Situs/ Web', NULL, 6, 0, 1, NULL),
(202, 169, 2, 'Analis Ilmu Pengetahuan dan Teknologi', NULL, 7, 1, 1, NULL),
(203, 169, 2, 'Pengolah Data', NULL, 6, 1, 2, NULL),
(204, 169, 2, 'Pengadministrasi Umum', NULL, 5, 2, 2, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pegawaix`
--

CREATE TABLE `pegawaix` (
  `id_pegawai` int(50) NOT NULL,
  `nip` bigint(20) NOT NULL,
  `nip_lama` bigint(20) NOT NULL,
  `no_kartu_pegawai` varchar(20) NOT NULL,
  `nama_pegawai` varchar(150) NOT NULL,
  `tempat_lahir` varchar(150) NOT NULL,
  `tanggal_lahir` varchar(50) NOT NULL,
  `jenis_kelamin` enum('Pria','Wanita') NOT NULL,
  `agama` enum('Islam','Kristen','Katolik','Hindu','Budha','Konghuchu','Aliran Kepercayaan','-') NOT NULL,
  `usia` int(10) NOT NULL,
  `status_pegawai` tinyint(4) NOT NULL,
  `tanggal_pengangkatan_cpns` date NOT NULL,
  `alamat` text NOT NULL,
  `no_npwp` varchar(20) NOT NULL,
  `kartu_askes_pegawai` varchar(20) NOT NULL,
  `status_pegawai_pangkat` tinyint(4) NOT NULL,
  `id_golongan` int(20) NOT NULL,
  `nomor_sk_pangkat` varchar(50) NOT NULL,
  `tanggal_sk_pangkat` date NOT NULL,
  `tanggal_mulai_pangkat` date NOT NULL,
  `tanggal_selesai_pangkat` date NOT NULL,
  `id_status_jabatan` int(20) NOT NULL,
  `id_jabatan` int(20) NOT NULL,
  `id_unit_kerja` int(20) NOT NULL,
  `id_satuan_kerja` int(20) NOT NULL,
  `lokasi_kerja` varchar(100) NOT NULL,
  `nomor_sk_jabatan` varchar(50) NOT NULL,
  `tanggal_sk_jabatan` varchar(50) NOT NULL,
  `tanggal_mulai_jabatan` date NOT NULL,
  `tanggal_selesai_jabatan` date NOT NULL,
  `id_eselon` int(20) NOT NULL,
  `tmt_eselon` date NOT NULL,
  `foto` varchar(100) NOT NULL DEFAULT 'default.jpg',
  `telepon` varchar(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `status_kawin` enum('Bujangan','Kawin','Tidak Kawin') DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pegawaix`
--

INSERT INTO `pegawaix` (`id_pegawai`, `nip`, `nip_lama`, `no_kartu_pegawai`, `nama_pegawai`, `tempat_lahir`, `tanggal_lahir`, `jenis_kelamin`, `agama`, `usia`, `status_pegawai`, `tanggal_pengangkatan_cpns`, `alamat`, `no_npwp`, `kartu_askes_pegawai`, `status_pegawai_pangkat`, `id_golongan`, `nomor_sk_pangkat`, `tanggal_sk_pangkat`, `tanggal_mulai_pangkat`, `tanggal_selesai_pangkat`, `id_status_jabatan`, `id_jabatan`, `id_unit_kerja`, `id_satuan_kerja`, `lokasi_kerja`, `nomor_sk_jabatan`, `tanggal_sk_jabatan`, `tanggal_mulai_jabatan`, `tanggal_selesai_jabatan`, `id_eselon`, `tmt_eselon`, `foto`, `telepon`, `email`, `status_kawin`) VALUES
(1, 195910251987031001, 0, '', 'Dr. Ir. Jumain Appe, M.Si', 'Bogor', '25 Oktober 1959', 'Pria', 'Islam', 60, -2, '0000-00-00', 'Jakarta', '', '', 0, 0, '', '0000-00-00', '1987-03-01', '0000-00-00', 0, 1, 0, 0, '', '', '', '2019-01-01', '0000-00-00', 0, '0000-00-00', 'default.jpg', '081500000000', '@yahoo.co.id', 'Kawin'),
(2, 196004171988032001, 0, '', 'Ir. Retno Sumekar, M.Si', 'Jakarta', '17 April 1960', 'Wanita', 'Islam', 0, 0, '0000-00-00', 'Jakarta', '', '', 0, 0, '', '0000-00-00', '1988-03-01', '0000-00-00', 0, 108, 0, 0, '', '', '', '2019-01-01', '0000-00-00', 0, '0000-00-00', 'default.jpg', '08100000000', '@yahoo.co.id', 'Kawin'),
(3, 195910251987111001, 0, '', 'Dr. Ir. Ophirtus Sumule, DEA', 'Jakarta', '25 Oktober 1959', 'Pria', 'Kristen', 0, 0, '0000-00-00', 'Tangerang', '', '', 0, 0, '', '0000-00-00', '1987-11-01', '0000-00-00', 0, 156, 0, 0, '', '', '', '2019-01-01', '0000-00-00', 0, '0000-00-00', 'default.jpg', '08220000000000', '@yahoo.co.id', 'Kawin'),
(4, 196507061990121001, 0, '', 'Ir. Santosa Yudo Warsono, MT', 'Bogor', '6 Juli 1965', 'Pria', 'Islam', 0, 0, '0000-00-00', 'Depok', '', '', 0, 0, '', '0000-00-00', '1997-12-01', '0000-00-00', 0, 60, 0, 0, '', '', '', '2019-01-01', '0000-00-00', 0, '0000-00-00', 'default.jpg', '081800000', '@yahoo.co.id', 'Kawin'),
(5, 196402131988102001, 0, '', 'Godlan Situmorang, SE', 'Medan', '13 Februari 1964', 'Pria', 'Kristen', 0, 0, '0000-00-00', 'Bekasi', '', '', 0, 0, '', '0000-00-00', '1988-10-01', '0000-00-00', 0, 189, 0, 0, '', '', '', '2019-01-01', '0000-00-00', 0, '0000-00-00', 'default.jpg', '0819000000', '@gmail.com', 'Kawin'),
(6, 196901121992031003, 0, '', 'Medy Eka Suryana, S.IP., M.M.', 'Jakarta', '12 Januari 1969', 'Pria', 'Islam', 0, 0, '0000-00-00', 'Depok', '', '', 0, 0, '', '0000-00-00', '1992-03-01', '0000-00-00', 0, 5, 0, 0, '', '', '', '2019-01-01', '0000-00-00', 0, '0000-00-00', 'default.jpg', '0812000000', '@gmail.com', 'Kawin'),
(7, 196704131993031007, 0, '', 'Ir. Zulfan Adrinaldi, MT', 'Bogor', '13 April 1967', 'Pria', 'Islam', 0, 0, '0000-00-00', 'Jakarta', '', '', 0, 0, '', '0000-00-00', '1993-03-01', '0000-00-00', 0, 3, 0, 0, '', '', '', '2019-01-01', '0000-00-00', 0, '0000-00-00', 'default.jpg', '0817000000', '@yahoo.co.id', 'Kawin'),
(8, 197804152006041015, 0, '', 'Eka Gandara, S.Pi., M.Si.', 'Bekasi', '15 April 1978', 'Wanita', 'Islam', 0, 0, '0000-00-00', 'Jakarta', '', '', 0, 0, '', '0000-00-00', '2006-04-01', '0000-00-00', 0, 160, 0, 0, '', '', '', '2019-01-01', '0000-00-00', 0, '0000-00-00', 'default.jpg', '0819000001', '@yahoo.co.id', 'Kawin'),
(9, 197906162005021001, 0, '', 'Rosliadhi Hadi Santoso, SE, ME', 'Jakarta', '16 Juni 1979', 'Wanita', 'Islam', 0, 0, '0000-00-00', 'Tangerang', '', '', 0, 0, '', '0000-00-00', '2005-02-01', '0000-00-00', 0, 10, 0, 0, '', '', '', '2019-01-01', '0000-00-00', 0, '0000-00-00', 'default.jpg', '089000010', '@yahoo.co.id', 'Kawin'),
(10, 197407102009102001, 0, '', 'Indrawati, SP', 'Jakarta', '10 Juli 1947', 'Wanita', 'Islam', 0, 0, '0000-00-00', '', '', '', 0, 0, '', '0000-00-00', '2009-10-01', '0000-00-00', 0, 14, 0, 0, '', '', '', '2019-01-01', '0000-00-00', 0, '0000-00-00', 'default.jpg', '0813000009', '@yahoo.co.id', 'Kawin'),
(11, 196606152006041017, 0, '', 'Darwin Santoso Kadir, S.Kom', 'Jakarta', '15 Juni 1966', 'Pria', 'Islam', 0, 0, '0000-00-00', 'Jakarta', '', '', 0, 0, '', '0000-00-00', '2006-04-01', '0000-00-00', 0, 11, 0, 0, '', '', '', '2019-01-01', '0000-00-00', 0, '0000-00-00', 'default.jpg', '085621000000', '@yahoo.com', 'Kawin'),
(12, 197211152007101001, 0, '', 'Bambang Suwarno, ST.,MM', 'Jakarta', '15 Nopember 1972', 'Pria', 'Islam', 0, 0, '0000-00-00', 'Depok\r\n', '', '', 0, 0, '', '0000-00-00', '2007-10-01', '0000-00-00', 0, 16, 0, 0, '', '', '', '2019-01-01', '0000-00-00', 0, '0000-00-00', 'default.jpg', '0812000000', '@gmail.com', 'Kawin'),
(13, 197305042003121001, 0, '', 'Fadoli, ST, MAB', 'Bogor', '4 Mei 1973', 'Pria', 'Islam', 0, 0, '0000-00-00', 'Jakarta', '', '', 0, 0, '', '0000-00-00', '2003-12-01', '0000-00-00', 0, 13, 0, 0, '', '', '', '2019-01-01', '0000-00-00', 0, '0000-00-00', 'default.jpg', '08100000000', '@gmail.com', 'Kawin'),
(14, 198612172010122001, 0, '', 'Pratiwi Eka Sari, SH', 'Bogor', '17 Desember 1986', 'Wanita', 'Islam', 0, 0, '0000-00-00', 'Bekasi', '', '', 0, 0, '', '0000-00-00', '2010-12-01', '0000-00-00', 0, 7, 0, 0, '', '', '', '2019-01-01', '0000-00-00', 0, '0000-00-00', 'default.jpg', '08220000000000', '@gmail.com', 'Kawin'),
(15, 198205082009101001, 0, '', 'Harmoko', 'Yogyakarta', '8 Mei 1982', 'Pria', 'Islam', 0, 0, '0000-00-00', 'Jakarta', '', '', 0, 0, '', '0000-00-00', '2009-10-01', '0000-00-00', 0, 59, 0, 0, '', '', '', '2019-01-01', '0000-00-00', 0, '0000-00-00', 'default.jpg', '081500000000', '@gmail.com', 'Kawin'),
(16, 197507092008111001, 0, '', 'Juliadri, S.Kom', 'Jakarta', '9 Juli 1975', 'Pria', 'Islam', 0, 0, '0000-00-00', 'Tangerang', '', '', 0, 0, '', '0000-00-00', '2008-11-01', '0000-00-00', 0, 12, 0, 0, '', '', '', '2019-01-01', '0000-00-00', 0, '0000-00-00', 'default.jpg', '0819000000', '@gmail.com', 'Kawin'),
(17, 197111032003122001, 0, '', 'Novi Mukti Rahayu, ST, MT', 'Bogor', '10 Nopember 1971', 'Wanita', 'Islam', 0, 0, '0000-00-00', 'Depok', '', '', 0, 0, '', '0000-00-00', '2003-12-01', '0000-00-00', 0, 64, 0, 0, '', '', '', '2019-01-01', '0000-00-00', 0, '0000-00-00', 'default.jpg', '0812000000', '@gmail.com', 'Kawin'),
(18, 196403261990011001, 0, '', 'Moh. Rohadi, S.Kom', 'Bekasi', '26 maret 1964', 'Pria', 'Islam', 0, 0, '0000-00-00', 'Jakarta', '', '', 0, 0, '', '0000-00-00', '1990-01-02', '0000-00-00', 0, 8, 0, 0, '', '', '', '2019-01-01', '0000-00-00', 0, '0000-00-00', 'default.jpg', '081800000', '@yahoo.com', 'Kawin'),
(19, 198610062010122001, 0, '', 'Puput Setia Palupi, S.I.Kom.,M.Si', 'Jakarta', '6 Oktober 1986', 'Wanita', 'Islam', 0, 0, '0000-00-00', 'Depok', '', '', 0, 0, '', '0000-00-00', '2010-02-01', '0000-00-00', 0, 36, 0, 0, '', '', '', '2019-01-01', '0000-00-00', 0, '0000-00-00', 'default.jpg', '0812000000', '@yahoo.co.id', 'Kawin'),
(20, 196808212006041015, 0, '', 'Guntur', 'Yogyakarta', '21 Agustus 1968', 'Pria', 'Islam', 0, 0, '0000-00-00', 'Jakarta', '', '', 0, 0, '', '0000-00-00', '2006-04-01', '0000-00-00', 0, 39, 0, 0, '', '', '', '2019-01-01', '0000-00-00', 0, '0000-00-00', 'default.jpg', '0819000000', '@gmail.com', 'Kawin'),
(21, 197809062008112001, 0, '', 'Tarwiyah', 'Yogyakarta', '6 September 1978', 'Wanita', 'Islam', 0, 0, '0000-00-00', 'Jakarta', '', '', 0, 0, '', '0000-00-00', '2008-11-01', '0000-00-00', 0, 50, 0, 0, '', '', '', '2019-01-01', '0000-00-00', 0, '0000-00-00', 'default.jpg', '081500000000', '@yahoo.com', 'Kawin'),
(22, 198508232015031002, 0, '', 'Muhammad Zulkarnain Purwokusumo, ST', 'Jakarta', '23 Agustus 1985', 'Pria', 'Islam', 0, 0, '0000-00-00', 'Tangerang', '', '', 0, 0, '', '0000-00-00', '2015-03-01', '0000-00-00', 0, 51, 0, 0, '', '', '', '2019-01-01', '0000-00-00', 0, '0000-00-00', 'default.jpg', '081800000', '@yahoo.co.id', 'Kawin'),
(23, 197202101998032001, 0, '', 'Tien Rahmiatin, S.IP., M.PA', 'Bogor', '10 Februari 1972', 'Wanita', 'Islam', 0, 0, '0000-00-00', 'Jakarta', '', '', 0, 0, '', '0000-00-00', '1998-03-01', '0000-00-00', 0, 112, 0, 0, '', '', '', '2019-01-01', '0000-00-00', 0, '0000-00-00', 'default.jpg', '081800000', '@yahoo.com', 'Kawin'),
(24, 197607162014091002, 0, '', 'I Dewa Gede Agung Kurnia Juliharta, S.T.', 'Denpasar', '16 Juli 1976', 'Pria', 'Islam', 0, 0, '0000-00-00', 'Jakarta', '', '', 0, 0, '', '0000-00-00', '2014-09-01', '0000-00-00', 0, 17, 0, 0, '', '', '', '2019-01-01', '0000-00-00', 0, '0000-00-00', 'default.jpg', '0812000000', '@gmail.com', 'Kawin'),
(25, 197312182014121001, 0, '', 'Priyadiartono, S.T.', 'Solo', '18 Desember 1973', 'Pria', 'Islam', 0, 0, '0000-00-00', 'Jakarta', '', '', 0, 0, '', '0000-00-00', '2014-12-01', '0000-00-00', 0, 44, 0, 0, '', '', '', '2019-01-01', '0000-00-00', 0, '0000-00-00', 'default.jpg', '08220000000000', '@yahoo.com', 'Kawin'),
(26, 198308072008121001, 0, '', 'Syarif Budiman, S.Kom', 'Jakarta', '7 Agustus 1983', 'Pria', 'Islam', 0, 0, '0000-00-00', 'Depok', '', '', 0, 0, '', '0000-00-00', '2008-12-01', '0000-00-00', 0, 6, 0, 0, '', '', '', '2019-01-01', '0000-00-00', 0, '0000-00-00', 'default.jpg', '081500000000', '@yahoo.co.id', 'Kawin'),
(27, 196205301986031004, 0, '', 'Supriyadi, S.Sos', 'Bogor', '30 Mei 1962', 'Pria', 'Islam', 0, 0, '0000-00-00', 'Jakarta', '', '', 0, 0, '', '0000-00-00', '1986-03-01', '0000-00-00', 0, 4, 0, 0, '', '', '', '2019-01-01', '0000-00-00', 0, '0000-00-00', 'default.jpg', '08100000000', '@gmail.com', 'Kawin'),
(28, 198505062015031002, 0, '', 'Hendra Permana Putra, S.Sos', 'Bogor', '6 Mei 1985', 'Pria', 'Islam', 0, 0, '0000-00-00', 'Bekasi', '', '', 0, 0, '', '0000-00-00', '2015-03-01', '0000-00-00', 0, 43, 0, 0, '', '', '', '2019-01-01', '0000-00-00', 0, '0000-00-00', 'default.jpg', '0819000000', '@yahoo.co.id', 'Kawin'),
(29, 196807251997031002, 0, '', 'Aldi Haryadi, S.T.', 'Bekasi', '25 Juli 1968', 'Pria', 'Islam', 0, 0, '0000-00-00', 'Jakarta', '', '', 0, 0, '', '0000-00-00', '1997-03-01', '0000-00-00', 0, 65, 0, 0, '', '', '', '2019-01-01', '0000-00-00', 0, '0000-00-00', 'default.jpg', '08100000000', '@yahoo.com', 'Kawin'),
(30, 196710121987011001, 0, '', 'Dr. Wihatmoko Waskitoaji', 'Solo', '12 Oktober 1967', 'Pria', 'Islam', 0, 0, '0000-00-00', 'Depok', '', '', 0, 0, '', '0000-00-00', '1987-01-02', '0000-00-00', 0, 158, 0, 0, '', '', '', '2019-01-01', '0000-00-00', 0, '0000-00-00', 'default.jpg', '08220000000000', '@gmail.com', 'Kawin'),
(31, 196710101995122001, 0, '', 'Dr. Ir. Adawiah, M.Si', 'Yogyakarta', '10 oktober 1967', 'Wanita', 'Islam', 0, 0, '0000-00-00', 'Bekasi', '', '', 0, 0, '', '0000-00-00', '1995-12-01', '0000-00-00', 0, 159, 0, 0, '', '', '', '2019-01-01', '0000-00-00', 0, '0000-00-00', 'default.jpg', '08220000000000', '@yahoo.co.id', 'Kawin'),
(32, 196407011992031001, 0, '', 'Drs. Erwin Sjachrial', 'Bandung', '1 Juli 1964', 'Pria', 'Islam', 0, 0, '0000-00-00', 'Jakarta', '', '', 0, 0, '', '0000-00-00', '1992-03-01', '0000-00-00', 0, 62, 0, 0, '', '', '', '2019-01-01', '0000-00-00', 0, '0000-00-00', 'default.jpg', '081800000', '@yahoo.com', 'Kawin'),
(33, 196607221986122001, 0, '', 'Ing. Wiwiek Joelijani, MT', 'Yogyakarta', '22 Juli 1966', 'Wanita', 'Islam', 0, 0, '0000-00-00', '', '', '', 0, 0, '', '0000-00-00', '1986-12-01', '0000-00-00', 0, 63, 0, 0, '', '', '', '2019-01-01', '0000-00-00', 0, '0000-00-00', 'default.jpg', '0812000000', '@yahoo.com', 'Kawin'),
(34, 198106072008111002, 0, '', 'Dr. Muhamad Amin, ST, MMSI', 'Jakarta', '7 Juni 1981', 'Pria', 'Islam', 0, 0, '0000-00-00', 'Depok', '', '', 0, 0, '', '0000-00-00', '2008-11-01', '0000-00-00', 0, 161, 0, 0, '', '', '', '2019-01-01', '0000-00-00', 0, '0000-00-00', 'default.jpg', '0819000000', '@yahoo.com', 'Kawin'),
(35, 196904151996031001, 0, '', 'Aries Setyarto, S.Sos., M.AP.', 'Bogor', '15 April 1969', 'Pria', 'Islam', 0, 0, '0000-00-00', 'Tangerang', '', '', 0, 0, '', '0000-00-00', '1996-03-01', '0000-00-00', 0, 111, 0, 0, '', '', '', '2019-01-01', '0000-00-00', 0, '0000-00-00', 'default.jpg', '081500000000', '@yahoo.com', 'Kawin'),
(36, 196201021990032001, 0, '', 'Ir. Sri Latifah', 'Jakarta', '2 Januari 1962', 'Wanita', 'Islam', 0, 0, '0000-00-00', 'Depok', '', '', 0, 0, '', '0000-00-00', '1990-03-01', '0000-00-00', 0, 113, 0, 0, '', '', '', '2019-01-01', '0000-00-00', 0, '0000-00-00', 'default.jpg', '08190000001', '@gmail.com', 'Kawin'),
(37, 197012242003121001, 0, '', 'Ir. Muchlis Fasihu, MIB', 'Jakarta', '22 Januari 1970', 'Pria', 'Islam', 0, 0, '0000-00-00', 'Jakarta', '', '', 0, 0, '', '0000-00-00', '2003-12-01', '0000-00-00', 0, 110, 0, 0, '', '', '', '2019-01-01', '0000-00-00', 0, '0000-00-00', 'default.jpg', '081560000000', '@yahoo.com', 'Kawin'),
(88, 123123123, 321321321, '667765456765678', 'Rangga Kalam Sidiq', 'Tasikmalaya', '2001-08-14', 'Pria', 'Islam', 18, 5, '2018-07-12', 'Jl. Tentara Pelajar No.46', '727182718294637', '738291046573849', 6, 6, '627184950673826', '2019-02-05', '2019-03-01', '2019-06-11', 2, 38, 33, 11, 'DKI JAKARTA', '876546758392758', '2019-07-18', '2019-08-02', '2019-10-02', 25, '2019-06-24', 'default.jpg', '', '', 'Bujangan');

-- --------------------------------------------------------

--
-- Table structure for table `pejabatx`
--

CREATE TABLE `pejabatx` (
  `id` int(11) NOT NULL,
  `id_pegawai` int(11) DEFAULT NULL,
  `id_jabatan` int(11) DEFAULT NULL,
  `tmt` int(11) DEFAULT NULL,
  `event` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pejabatx`
--

INSERT INTO `pejabatx` (`id`, `id_pegawai`, `id_jabatan`, `tmt`, `event`) VALUES
(1, 1, 1, 1567883468, '2019'),
(2, 2, 108, 1567883468, '2019'),
(3, 3, 156, 1567883468, '2019'),
(4, 4, 60, 1567883468, '2019'),
(5, 5, 189, 1567883468, '2019'),
(6, 6, 5, 1567883468, '2019'),
(7, 7, 3, 1567883468, '2019'),
(8, 8, 160, 1567883468, '2019'),
(9, 9, 10, 1567883468, '2019'),
(10, 10, 14, 1567883468, '2019'),
(11, 11, 11, 1567883468, '2019'),
(12, 12, 16, 1567883468, '2019'),
(13, 13, 13, 1567883468, '2019'),
(14, 14, 7, 1567883468, '2019'),
(15, 15, 59, 1567883468, '2019'),
(16, 16, 12, 1567883468, '2019'),
(17, 17, 64, 1567883468, '2019'),
(18, 18, 8, 1567883468, '2019'),
(19, 19, 36, 1567883468, '2019'),
(20, 20, 39, 1567883468, '2019'),
(21, 21, 50, 1567883468, '2019'),
(22, 22, 51, 1567883468, '2019'),
(23, 23, 112, 1567883468, '2019'),
(24, 24, 17, 1567883468, '2019'),
(25, 25, 44, 1567883468, '2019'),
(26, 26, 6, 1567883468, '2019'),
(27, 27, 4, 1567883468, '2019'),
(28, 28, 43, 1567883468, '2019'),
(29, 29, 65, 1567883468, '2019'),
(30, 30, 158, 1567883468, '2019'),
(31, 31, 159, 1567883468, '2019'),
(32, 32, 62, 1567883468, '2019'),
(33, 33, 63, 1567883468, '2019'),
(34, 34, 161, 1567883468, '2019'),
(35, 35, 64, 1567883468, '2019'),
(36, 36, 111, 1567883468, '2019'),
(37, 37, 113, 1567883468, '2019'),
(38, 38, 110, 1567883468, '2019');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_data_keluarga`
--

CREATE TABLE `tbl_data_keluarga` (
  `id_data_keluarga` int(50) NOT NULL,
  `id_pegawai` int(50) NOT NULL,
  `nama_anggota_keluarga` varchar(150) NOT NULL,
  `tempat_lahir` varchar(50) DEFAULT NULL,
  `tanggal_lahir` varchar(100) NOT NULL,
  `status_kawin` varchar(50) NOT NULL,
  `tanggal_nikah` varchar(100) NOT NULL,
  `uraian` text NOT NULL,
  `tanggal_cerai_meninggal` text NOT NULL,
  `pekerjaan` varchar(50) NOT NULL,
  `hubungan` enum('Istri/Suami','Anak') DEFAULT NULL,
  `jenis_kelamin` enum('Pria','Wanita') DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_data_keluarga`
--

INSERT INTO `tbl_data_keluarga` (`id_data_keluarga`, `id_pegawai`, `nama_anggota_keluarga`, `tempat_lahir`, `tanggal_lahir`, `status_kawin`, `tanggal_nikah`, `uraian`, `tanggal_cerai_meninggal`, `pekerjaan`, `hubungan`, `jenis_kelamin`) VALUES
(1, 7, 'HELENA P. NGOEO', NULL, '19 April 1967', 'KAWIN', '20 Juni 1992', '-', '14 November 2012', '-', 'Istri/Suami', NULL),
(2, 7, 'SITI RAHAYU', NULL, '-', 'KAWIN', '-', '-', '-', '-', 'Anak', 'Pria'),
(3, 19, '-', NULL, '-', '-', '-', '-', '-', '-', 'Anak', 'Wanita');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_data_pegawai`
--

CREATE TABLE `tbl_data_pegawai` (
  `id_pegawai` int(50) NOT NULL,
  `nip` varchar(20) NOT NULL,
  `nip_lama` varchar(20) NOT NULL,
  `no_kartu_pegawai` varchar(20) NOT NULL,
  `gelar_depan` varchar(20) DEFAULT NULL,
  `nama_pegawai` varchar(150) NOT NULL,
  `gelar_belakang` varchar(20) DEFAULT NULL,
  `tempat_lahir` varchar(150) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `jenis_kelamin` enum('Laki-laki','Perempuan','L','P') NOT NULL,
  `agama` enum('Islam','Kristen','Katolik','Hindu','Budha','Konghuchu','Aliran Kepercayaan','-') DEFAULT NULL,
  `usia` varchar(2) NOT NULL,
  `status_pegawai` varchar(50) NOT NULL,
  `no_sk_cpns` varchar(50) DEFAULT NULL,
  `tanggal_sk_cpns` date DEFAULT NULL,
  `tmt_cpns` date DEFAULT NULL,
  `id_golongan_cpns` int(4) DEFAULT NULL,
  `alamat` text NOT NULL,
  `no_npwp` varchar(20) NOT NULL,
  `kartu_askes_pegawai` varchar(20) NOT NULL,
  `status_pegawai_pangkat` tinyint(4) DEFAULT NULL,
  `no_sk_pns` varchar(50) DEFAULT NULL,
  `tanggal_sk_pns` date DEFAULT NULL,
  `tmt_pns` date DEFAULT NULL,
  `id_golongan_pns` int(4) DEFAULT NULL,
  `id_golongan` int(4) NOT NULL,
  `nomor_sk_pangkat` varchar(50) NOT NULL,
  `tanggal_sk_pangkat` date NOT NULL,
  `tanggal_mulai_pangkat` date NOT NULL,
  `tanggal_selesai_pangkat` date NOT NULL,
  `id_status_jabatan` int(20) NOT NULL,
  `id_jabatan` int(20) NOT NULL,
  `id_unit_kerja` int(20) NOT NULL,
  `id_satuan_kerja` int(20) NOT NULL,
  `lokasi_kerja` varchar(100) NOT NULL,
  `nomor_sk_jabatan` varchar(50) NOT NULL,
  `tanggal_sk_jabatan` date NOT NULL,
  `tanggal_mulai_jabatan` date NOT NULL,
  `tanggal_selesai_jabatan` date NOT NULL,
  `id_eselon` int(20) NOT NULL,
  `tmt_eselon` date NOT NULL,
  `foto` varchar(100) NOT NULL DEFAULT 'default.jpg',
  `telepon` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `status_kawin` enum('Bujangan','Kawin','Tidak Kawin') DEFAULT NULL,
  `pendidikan_terakhir` varchar(10) DEFAULT NULL,
  `pendidikan_bidang` varchar(100) DEFAULT NULL,
  `pendidikan_lulus` varchar(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_data_pegawai`
--

INSERT INTO `tbl_data_pegawai` (`id_pegawai`, `nip`, `nip_lama`, `no_kartu_pegawai`, `gelar_depan`, `nama_pegawai`, `gelar_belakang`, `tempat_lahir`, `tanggal_lahir`, `jenis_kelamin`, `agama`, `usia`, `status_pegawai`, `no_sk_cpns`, `tanggal_sk_cpns`, `tmt_cpns`, `id_golongan_cpns`, `alamat`, `no_npwp`, `kartu_askes_pegawai`, `status_pegawai_pangkat`, `no_sk_pns`, `tanggal_sk_pns`, `tmt_pns`, `id_golongan_pns`, `id_golongan`, `nomor_sk_pangkat`, `tanggal_sk_pangkat`, `tanggal_mulai_pangkat`, `tanggal_selesai_pangkat`, `id_status_jabatan`, `id_jabatan`, `id_unit_kerja`, `id_satuan_kerja`, `lokasi_kerja`, `nomor_sk_jabatan`, `tanggal_sk_jabatan`, `tanggal_mulai_jabatan`, `tanggal_selesai_jabatan`, `id_eselon`, `tmt_eselon`, `foto`, `telepon`, `email`, `status_kawin`, `pendidikan_terakhir`, `pendidikan_bidang`, `pendidikan_lulus`) VALUES
(80, '197812032005021001', '', '', NULL, 'Amir Faisal Manurung, S.Si, MPI', 'S.Si, MPI', 'Jakarta', '1978-12-03', 'Laki-laki', 'Kristen', '', '5', '22/M/KP/OO/2015', '2005-02-28', '2005-02-01', 13, 'JALAN SWAKARSA IV NO. 19 KEL. PONDOK KELAPA, KEC. DUREN SAWIT, KAB. JAKARTA TIMUR, PROPINSI. DKI JAKARTA', '', '', 0, '070/M/KP/I/2006', '2006-01-30', '2006-02-01', 13, 17, '57154/A2.2/KP/2018', '2018-11-21', '2018-10-01', '0000-00-00', 7, 206, 36, 13, '', '', '0000-00-00', '0000-00-00', '0000-00-00', 32, '0000-00-00', '197812032005021001.jpg', 'NULL', '', 'Kawin', 'S-2', 'Masters Of Public Policy', '2014'),
(78, '198508232015031002', '', '', NULL, 'Muhammad Zulkarnain Purwokusumo, ST', 'ST', 'Semarang', '1985-08-23', 'Laki-laki', 'Islam', '', '5', '41/M/KP/III/2015', '2015-03-30', '2015-03-01', 13, 'PERUM KORPRI BULUSAN VI NO 36 SEMARANG', '', '', 0, '66590/A2.1/KP/2016', '2016-08-26', '2016-09-01', 13, 14, '13656/M/KP/2019', '2019-04-26', '2019-04-01', '0000-00-00', 7, 51, 36, 13, '', '', '0000-00-00', '0000-00-00', '0000-00-00', 32, '0000-00-00', '198508232015031002.jpg', 'NULL', 'mz.purwokusumo@gmail.com', 'Bujangan', 'S-1', 'Teknik Industri ', '2009'),
(79, '198205082009101001', '', '', NULL, 'Harmoko, S.Sos', 'S.Sos', 'Jakarta', '1982-05-08', 'Laki-laki', 'Islam', '', '5', '177/M/KP/XI/2009', '2009-11-01', '2009-10-01', 9, 'PERUMAHAN GRAND NUSA INDAH\r\n\r\nBLOK.B02/24, RT.002 RW.016, KEL. MAMPIR, KEC.CILEUNGSI, KAB. BOGOR', '', '', 0, '39/M/KP/1/2011', '2011-01-31', '2011-02-01', 9, 13, '25216/M/KP/2019', '2019-04-01', '2019-04-01', '0000-00-00', 7, 59, 36, 13, '', '04/F1.3/SK/KU/2017', '2017-09-01', '2017-09-01', '0000-00-00', 32, '0000-00-00', '198205082009101001.jpg', 'NULL', 'harmoko@ristek.go.id', 'Kawin', 'S-1', 'Ilmu Administrasi Negara', '2010'),
(77, '197809062008112001', '', '', NULL, 'Tarwiyah', NULL, 'Jakarta', '1978-09-06', 'Perempuan', 'Islam', '', '5', '226/M/KP/XII/2008', '2008-12-10', '2008-11-01', 9, 'JALAN LERENG INDAH NO. 49 RT 01/12 KEL. CINERE, KEC. CINERE, KAB. DEPOK, PROPINSI. JAWA BARAT', '', '', 0, '13/M/KP/I/2010', '2010-01-29', '2010-02-01', 9, 11, '67573/A2.2/KP/2017', '2017-06-12', '2017-04-01', '0000-00-00', 7, 205, 36, 13, '', '03/F1.3/SK/KU/2017', '2017-10-31', '2017-10-31', '0000-00-00', 32, '0000-00-00', '197809062008112001.jpg', 'NULL', 'cingawie.kadicha@gmail.com', 'Kawin', 'SMK', 'Administrasi Perkantoran', '1997'),
(76, '198505062015031002', '', '', NULL, 'Hendra Permana Putra, S.Sos', 'S.Sos', 'Probolinggo', '1985-05-06', 'Laki-laki', 'Islam', '', '5', '26/M/KP/III/2015', '2015-03-30', '2015-03-01', 13, 'Jalan Pala Bali Rt.13 Rw.06, Kelurahan Bojong Pondok Terong, Kecamatan Cipayung, Kota Depok', '', '', 0, '66591/A2.1/KP/2016', '2016-08-26', '2016-09-01', 13, 14, '13658/M/KP/2019', '2019-04-26', '2019-04-01', '0000-00-00', 7, 43, 36, 13, '', '96/F/Kp/II/2019', '2019-02-14', '2018-04-01', '0000-00-00', 32, '0000-00-00', '198505062015031002.jpg', '085257345599', 'hpp6585@gmail.com', 'Kawin', 'S-1', 'Ilmu Sosial/Sosiologi', '2009'),
(75, '197312182014121001', '', '', NULL, 'Priyadiartono, ST', 'ST', 'Bandung', '1973-12-18', 'Laki-laki', 'Islam', '', '5', '810/KEP.870-BKD/2014', '2014-12-29', '2014-12-01', 13, 'GRIYA MALEBER C2 NO 4, RT/RW 07/09, DS. MALEBER, KEC. KARANG TENGAH, CIANJUR', '', '', 0, '821.13/Kep.531-BKD/2016', '2016-04-29', '2016-05-01', 13, 14, '13660/M/KP/2019', '2019-04-26', '2019-04-01', '0000-00-00', 7, 44, 36, 13, '', '109/F/Kp/II/2019', '2018-04-01', '2019-02-14', '0000-00-00', 32, '0000-00-00', '197312182014121001.jpg', '085222215247', 'priyadiartono92@gmail.com', 'Kawin', 'S-1', 'Teknologi pangan', '1998'),
(74, '196808212006041015', '', '', NULL, 'Guntur', NULL, 'Tangerang', '1968-08-21', 'Laki-laki', 'Islam', '', '5', '130 X/M/KP/XII/2006', '2006-12-21', '2006-04-01', 9, 'JALAN BUNDER RT 02 RW 03 NO. 57 KEL. JURANGMANGU BARAT, KEC. PONDOK AREN, KAB. TANGERANG SELATAN, PROPINSI BANTEN', '', '', 0, '44/M/KP/III/2007', '2007-03-30', '2007-04-01', 9, 12, '25406/A2.2/KP/2018', '2018-05-21', '2018-04-01', '0000-00-00', 7, 191, 36, 13, '', '', '0000-00-00', '0000-00-00', '0000-00-00', 32, '0000-00-00', '196808212006041015.jpg', 'NULL', 'guntur.ristek@gmail.com', 'Kawin', 'SMA', '', '1989'),
(73, '198610062010122001', '', '', NULL, 'Puput Setia Palupi, S.I.Kom.,M.Si', 'S.I.Kom.,M.Si', 'Semarang', '1986-10-06', 'Perempuan', 'Islam', '', '5', '299/M/KP/XII/2010', '2010-12-29', '2010-12-01', 13, 'JALAN KESATRIAN 14, RT 04/07, KEL. JATINGALEH, KEC. CANDISARI, KOTA SEMARANG, PROPINSI JAWA TENGAH', '', '', 0, '56/M/KP/I/2012', '2012-01-30', '2012-02-01', 13, 15, '13662/M/KP/2019', '2019-04-26', '2019-04-01', '0000-00-00', 7, 36, 36, 13, '', '022/F/KP/V/2017', '2017-05-22', '2017-05-22', '0000-00-00', 32, '0000-00-00', '198610062010122001.jpg', 'NULL', 'ollapalupi@gmail.com', 'Kawin', 'S-2', 'Magister Sains', '2016'),
(72, '197006292007011001', '', '', NULL, 'Ponang Wirawan', NULL, 'Jakarta', '1970-06-29', 'Laki-laki', 'Islam', '', '5', '159/M/KP/XII/2007', '2007-12-28', '2007-01-01', 9, 'JL. PEJAMBON I KOMP. PHB RT. 015 RW. 01 NO. I.7 GAMBIR - JAKARTA PUSAT', '', '', 0, '119/M/KP/VI/2008', '2008-06-30', '2008-07-01', 9, 12, '13649/M/KP/2019', '2019-04-26', '2019-04-01', '0000-00-00', 7, 205, 36, 13, '', '', '0000-00-00', '0000-00-00', '0000-00-00', 32, '0000-00-00', '197006292007011001.jpg', '', 'ponang@ristek.go.id', 'Kawin', 'SMA', 'Ilmu-Ilmu Fisika', '1990'),
(71, '198308072008121001', '', '', NULL, 'Syarif Budiman, S.Kom, M.KP', 'S.Kom, MKP', 'Jakarta', '1983-08-07', 'Laki-laki', 'Islam', '', '5', '207/M/KP/XII/2008', '2008-12-09', '2008-12-01', 13, 'JALAN CIDODOL NO. 5 RT. 004 RW. 006 KEL. GROGOL SELATAN, KEC. KEBAYORAN LAMA, KAB. JAKARTA SELATAN, PROPINSI. DKI JAKARTA', '', '', 0, '161/M/KP/XI/2009', '2009-11-11', '2009-12-01', 13, 15, '67563/A2.2/KP/2017', '2017-06-12', '2017-04-01', '0000-00-00', 7, 6, 36, 13, '', '155/A.A2/KPT.KP/2018', '2018-03-20', '2018-03-20', '0000-00-00', 32, '0000-00-00', '198308072008121001.jpg', NULL, 'budi@ristek.go.id', 'Kawin', 'S-2', 'Magister Kebijakan Publik', '2017'),
(70, '197607162014091002', '', '', NULL, 'I Dewa Gede Agung Kurnia Juliharta, S.T', 'ST', 'Denpasar', '1976-07-16', 'Laki-laki', 'Hindu', '', '5', '185931/A4/KP/2014', '2014-08-28', '2014-09-01', 13, 'JL KEPUNDUNG 5 DENPASAR BALI', '', '', 0, '505//UN14.1.B/KP/2017', '2016-12-30', '2017-01-01', 13, 14, '51200/A2.2/KP/2018', '2018-10-24', '2018-10-01', '0000-00-00', 7, 17, 36, 13, '', '', '0000-00-00', '0000-00-00', '0000-00-00', 32, '0000-00-00', '197607162014091002.jpg', '', 'rikibejo@gmail.com', 'Kawin', 'S-1', 'Teknik Industri', '2002'),
(69, '197211152007101001', '', '', NULL, 'Bambang Suwarno, ST.,MM', 'ST, MM', 'Semarang', '1972-11-15', 'Laki-laki', 'Islam', '', '5', '61/M/KP/IV/2008', '2008-04-01', '2007-10-01', 9, 'Jl. Perum Wahana Pondok Gede B2/9 Jatisampurna, Bekasi', '', '', 0, '183/M/KP/X/2008', '2008-10-26', '2008-10-06', 9, 15, '676000/A2.2/KP/2017', '2017-06-12', '2017-04-01', '0000-00-00', 7, 16, 36, 13, '', '', '0000-00-00', '0000-00-00', '0000-00-00', 32, '0000-00-00', '197211152007101001.jpg', '', 'bambangsw@ristek.go.id', 'Kawin', 'S-2', 'Magister Manajemen', '2010'),
(68, '197003192008112001', '', '', NULL, 'Enny Nurafiah,  A.Md', 'A.Md', 'Subang', '1970-03-19', 'Perempuan', 'Islam', '', '5', '256/M/KP/XII/2008', '2008-12-10', '2008-11-01', 11, '\r\nGraha Mustika Media Blok D9 No.26 Lubang Buaya, Setu - Bekasi', '', '', 0, '40/M/KP/I/2010', '2010-01-29', '2010-02-01', 11, 13, '53933/A2.2/KP/2018', '2018-11-07', '2018-10-01', '0000-00-00', 7, 205, 36, 13, '', '2/F/KP/V/2017', '2017-05-22', '2017-05-22', '0000-00-00', 32, '0000-00-00', '197003192008112001.jpg', 'NULL', 'NULL', 'Kawin', 'D-3', 'Manajemen Informatika ', '1997'),
(67, '197309212012121001', '', '', NULL, 'Harry Hermawan Harahap', NULL, 'Bandung', '1973-09-21', 'Laki-laki', 'Islam', '', '5', '05.72/M/KP/I/2013', '2013-01-07', '2012-12-01', 9, '\r\nPerumahan Bumi Puspiptek Asri Sektor 3 AD No. 6 Pagedangan', '', '', 0, '71M/KP/II/2014', '2014-02-13', '2014-03-01', 9, 10, '67572/A2.2/KP/2017', '2017-06-12', '2017-04-01', '0000-00-00', 7, 205, 36, 13, '', '02/F/KP/V/2017', '2017-05-22', '2017-05-22', '0000-00-00', 32, '0000-00-00', '197309212012121001.jpg', 'NULL', 'NULL', 'Kawin', 'SMA', 'Ilmu-Ilmu Sosial', '1992'),
(66, '197412182012122001', '', '', NULL, 'Mulyanti', NULL, 'Jakarta', '1974-12-18', 'Perempuan', 'Islam', '', '5', '05.43/M/KP/I/2013', '2013-01-07', '2012-12-01', 9, '\r\nJl. Raya Ceger No. 35, Ceger - Cipayung', '', '', 0, '42/M/KP/II/2014', '2014-02-13', '2014-03-01', 9, 10, '67577/A2.2/KP/2017', '2017-06-12', '2017-04-01', '0000-00-00', 7, 205, 36, 13, '', '02/F/KP/V/2017', '2017-03-22', '2017-03-22', '0000-00-00', 32, '0000-00-00', '197412182012122001.jpg', 'NULL', 'NULL', 'Kawin', 'SMA', 'Ilmu-Ilmu Sosial', '1993'),
(65, '196609212007011001', '', '', NULL, 'Amos Lempa Pasorong', NULL, 'Makasar', '1966-09-21', 'Laki-laki', 'Kristen', '', '5', '162/M/KP/XII/2007', '2007-12-28', '2007-01-01', 9, '\r\nPerumahan Delta Pekayon Jaya Jl. Delta Timur IV Blok C No. 15, Pekayon - Bekasi', '', '', 0, '122/M/KP/VI/2008', '2008-06-30', '2008-04-01', 9, 12, '13650/M/KP/2019', '2019-04-26', '2019-04-01', '0000-00-00', 7, 205, 36, 13, '', '', '0000-00-00', '0000-00-00', '0000-00-00', 32, '0000-00-00', '196609212007011001.jpg', 'NULL', ' amos@ristekdikti.go.id', 'Kawin', 'SMA', '', '1986'),
(64, '198604122015032006', '', '', NULL, 'Herni Widya Retno, S.IP', 'S.IP', 'Surabaya', '1986-04-12', 'Perempuan', 'Islam', '', '5', '62/M/KP/III/2015', '2015-03-30', '2015-03-01', 13, '\r\nKalasan Raya Blok N No. 34', '', '', 0, '66593/A2.1/KP/2016', '2016-08-26', '2016-09-01', 13, 14, '13655/M/KP/2019', '2019-04-26', '2019-04-01', '0000-00-00', 7, 205, 36, 13, '', '2/F/KP/V/2017', '2017-05-22', '2017-05-22', '0000-00-00', 32, '0000-00-00', '198604122015032006.jpg', ' 081803031515', ' herni.office@gmail.com', 'Bujangan', 'S-1', 'Ilmu Hubungan Internasional', '2009'),
(63, '198506302015031003', '', '', NULL, 'Kukuh Wijayatno, ST', 'ST', 'Jakarta', '1985-06-30', 'Laki-laki', 'Islam', '', '5', '40/M/KP/III/2015', '2015-03-30', '2015-03-01', 13, '\r\nJl. H. Aba Sawah Dalam Rt/Rw. 001/004 Panunggangan Utara', '', '', 0, '66592/A2.1/KP/2016', '2016-08-26', '2016-09-01', 13, 14, '13657/M/KP/2019', '2019-04-26', '2019-04-01', '0000-00-00', 7, 205, 36, 13, '', '02/KP/V/2017', '2017-05-22', '2017-05-22', '0000-00-00', 32, '0000-00-00', '198506302015031003.jpg', ' 085697815707', 'NULL', 'Kawin', 'S-1', 'Teknik Industri', '2012'),
(62, '197202101998032001', '', '', NULL, 'Tien Rahmiatin, SIP, MPA', 'SIP, MPA', 'Jakarta', '1972-02-10', 'Laki-laki', 'Islam', '', '5', '22/SETNEG/PERS-IN/S/1998', '0000-00-00', '1998-05-18', 13, 'JL BULAK BARAT II/37 KLENDER JAKTIM', '', '', 0, 'KEP/15/SESNEG/PERS/2000', '2000-02-28', '2000-03-01', 13, 18, '47392/A2.2/KP/2018', '2008-10-10', '2008-10-01', '0000-00-00', 7, 205, 36, 13, '', '', '0000-00-00', '0000-00-00', '0000-00-00', 32, '0000-00-00', '197202101998032001.jpg', '', 'tien@ristekdikti.go.id', 'Kawin', 'S-2', 'Master Of Public Administration', '2009'),
(61, '195912241986031004', '', '', NULL, 'Drs. Goenawan Wybiesana', 'Drs', 'Surabaya', '1959-12-24', 'Laki-laki', 'Islam', '', '5', 'SK/0537/M/BPPT/V/1986', '1986-05-28', '1986-03-01', 13, '\r\nJl. Wijaya Kusuma X No. 60, Taman Yasmin', '', '', 0, 'SK/078/M/BPPT/IV/1987', '1987-04-01', '1987-04-01', 13, 20, '15/K TAHUN 2013', '2013-01-30', '2012-10-01', '0000-00-00', 7, 205, 36, 13, '', '', '0000-00-00', '0000-00-00', '0000-00-00', 32, '0000-00-00', '195912241986031004.jpg', '0817123208', ' goenawan@ristek.go.id', 'Kawin', 'S-1', 'Manajemen', '1984'),
(59, '196402131988102001', '', '', NULL, 'Godlan Situmorang, SE', 'SE', 'Lontung', '1964-02-13', 'Perempuan', 'Kristen', '', '5', 'SK/981/M/BPPT/XII/88', '1988-12-06', '1988-10-01', 9, 'Kav. DPA No. 8 Rawa Bogo Jatimekar - Jatiasih', '', '', 0, 'SK/200/M/BPPT/IV/1990', '1990-04-01', '1990-04-01', 9, 18, '307 Tahun 2011', '2011-09-23', '2011-10-01', '0000-00-00', 7, 205, 36, 13, '', '02/F/KP/V/2019', '2017-05-22', '2017-05-22', '0000-00-00', 32, '0000-00-00', '196402131988102001.jpg', ' 08129036295', ' godland@ristekdikti.go.id; godlan14@gmail.com', 'Kawin', 'S-1', 'Manajemen Perusahaan', '1992'),
(60, '198808102010122001', '', '', NULL, 'Mutiara, S.E., M.E', 'S.E., M.E', 'Tangerang', '1988-08-10', 'Perempuan', 'Islam', '', '5', '269/M/KP/XII/2010', '2010-12-29', '2010-12-01', 13, '\r\nJl. Otista No. 36 CIMANGGIS.CIPUTAT-TANGGERANG-BANTEN', '', '', 0, '46/M/KP/I/2012', '2012-01-30', '2012-02-01', 13, 15, '96/M/KP/V/2015', '2015-05-27', '2015-03-02', '0000-00-00', 7, 165, 36, 13, '', '367/M/KP/2019', '0000-00-00', '0000-00-00', '0000-00-00', 32, '0000-00-00', 'default.jpg', 'NULL', 'NULL', 'Kawin', 'S-2', 'Magister Perencanaan dan kebijakan Publik', '2016'),
(58, '199002022015032003', '', '', NULL, 'Hica Dian Floren Nightingale, ST', 'ST', 'Jakarta', '1990-02-02', 'Perempuan', 'Kristen', '', '5', '59/M/KP/III/2015', '2015-03-30', '2015-03-01', 13, 'Jl. H. Shibi Kavling Shibi/Kampung Sawah Blok C No. 11 Jakarta Selatan', '', '', 0, '65596/A2.1/KP/2016', '2016-08-11', '2016-09-01', 13, 14, '13654/M/KP/2019', '2019-04-26', '2019-04-01', '0000-00-00', 7, 205, 36, 13, '', '02/F/KP/V/2017', '2017-05-22', '2017-05-22', '0000-00-00', 32, '0000-00-00', '199002022015032003.jpg', ' 087871632274', ' hica.silaban@ristekdikti.go.id', 'Kawin', 'S-1', 'Teknik Industri', '2012'),
(57, '198401232008122001', '', '', NULL, 'Yuanita Eka Damayanti, SE, ME', 'SE, ME', 'Malang', '1984-01-23', 'Perempuan', 'Islam', '', '5', '211/M/KP/XII/2008', '2008-12-09', '2008-12-01', 13, 'Peninggaran Barat Rt/Rw 012/011 Kebayoran Lama Utara Kebayoran Lama Jakarta Selatan', '', '', 0, '153/M/KP/XI/2009', '0000-00-00', '0000-00-00', 13, 15, '67254/A2.2/KP/2017', '2017-06-12', '2017-04-01', '0000-00-00', 7, 205, 36, 13, '', '022/F/Kp/V/2017', '2017-05-22', '2017-05-22', '0000-00-00', 32, '0000-00-00', '198401232008122001.jpg', 'NULL', 'NULL', 'Kawin', 'S-2', 'Magister Perencanaan dan kebijakan Publik', '2014'),
(56, '199012172015031004', '', '', NULL, 'Barikur Rahman, S.Sos', 'S.Sos', 'Kediri', '1990-12-17', 'Laki-laki', 'Islam', '', '5', '63/M/KP/III/2015', '2015-03-30', '2015-03-01', 13, 'DUSUN WONOREJO, RT 001 RW 002, DESA SEMANDING, KECAMATAN PAGU, KABUPATEN KEDIRI, JAWA TIMUR', '', '', 0, '65766i/A2.1/KP/2016', '2016-08-15', '2016-09-01', 13, 14, '13651/M/KP/2019', '2019-04-26', '2019-04-01', '0000-00-00', 7, 153, 36, 13, '', '', '0000-00-00', '0000-00-00', '0000-00-00', 32, '0000-00-00', '199012172015031004.jpg', 'NULL', 'namharrukirab@gmail.com', 'Kawin', 'S.1', 'Sosiologi', '2013'),
(55, '197210102008111001', '', '', NULL, 'Mad Johan', NULL, 'Serang', '1972-10-10', 'Laki-laki', 'Islam', '', '5', '258/M/KP/XII/2008', '2008-12-10', '2008-11-01', 9, 'JL. KEMIRI JAYA II RT.03/01 NO. 75A KEL BEJI KEC BEJI KOTA DEPOK JAWA BARAT', '', '', 0, '42/M/KP/I/2010', '2010-01-29', '2010-02-01', 9, 11, '67562/A2.2/KP/2017', '2017-06-12', '2017-04-01', '0000-00-00', 7, 155, 36, 13, '', '', '0000-00-00', '0000-00-00', '0000-00-00', 32, '0000-00-00', '197210102008111001.jpg', 'NULL', 'johan@ristek.go.id', 'Kawin', 'S1', 'ADMINISTRASI NEGARA', '2008'),
(54, '199207052015032001', '', '', NULL, 'Rugun Amelia Karolina Simanjuntak, S.Ant', 'S.Ant', 'Medan', '1992-07-05', 'Perempuan', 'Kristen', '', '5', '70/M/KP/III/2015', '2015-03-30', '2015-03-01', 13, 'JL. SM RAJA G.SEPAKAT NO.35 MEDAN', '', '', 0, '65766j/A2.1/KP/2016', '2016-08-15', '2016-09-01', 13, 14, '13652/M/KP/2019', '2019-04-26', '2019-04-01', '0000-00-00', 7, 138, 36, 13, '', '', '0000-00-00', '0000-00-00', '0000-00-00', 32, '0000-00-00', '199207052015032001.jpg', 'NULL', 'rugunamelia@ristek.go.id', 'Bujangan', 'S-1', 'Antropologi', '2014'),
(53, '198012052012121002', '', '', NULL, 'Dedy Sutendi', NULL, 'Jakarta', '1980-12-05', 'Laki-laki', 'Islam', '', '5', '05.45/M/KP/I/2013', '2013-01-07', '2012-12-01', 9, 'JL. LAKSAMANA I NO. 8 BAMBU APUS JAK-TIM', '', '', 0, '44/M/KP/I/2014', '2014-02-13', '2014-03-01', 9, 10, '112802/A2.2/KP/2017', '2017-12-21', '2017-10-01', '0000-00-00', 7, 140, 36, 13, '', '02/F1.3/SK/KU/2017', '2017-10-31', '2017-10-31', '0000-00-00', 32, '0000-00-00', '198012052012121002.jpg', 'NULL', 'dedysutendi@ristekdikti.go.id', 'Kawin', 'S-1', 'Teknik Informatika', '2010'),
(52, '198110122012122002', '', '', NULL, 'Nana Fardiana, S.Kom', 'S.Kom', 'Jakarta', '1981-10-12', 'Perempuan', 'Islam', '', '5', '05.35/M/KP/I/2013', '2013-01-07', '2012-12-01', 13, 'JL. KEBON MANGGA IV/26/RT.013/RW.02 KEBAYORAN LAMA JAKARTA SELATAN', '', '', 0, '34/M/KP/II/2014', '0000-00-00', '2014-03-01', 13, 14, '67558/A2.2/KP/2017', '2017-06-12', '2017-04-01', '0000-00-00', 7, 138, 36, 13, '', '329/M/KP/XI/2015', '2015-11-16', '2015-11-16', '0000-00-00', 32, '0000-00-00', '198110122012122002.jpg', 'NULL', 'nana@ristek.go.id', 'Kawin', 'S-1', 'Sistem Informasi', '2003'),
(51, '198611062010121001', '', '', NULL, 'Muh. Yasir, S.Kom, M.T.I.', 'S.Kom, M.T.I.', 'Makassar', '1986-11-06', 'Laki-laki', 'Islam', '', '5', '286/M/KP/XII/2010', '2010-12-29', '2010-12-01', 13, 'JL. PALLANTIKANG LR. I NO. 18D. KABUPATEN GOWA, SULAWESI SELATAN', '', '', 0, '45/M/KP/I/2012', '2012-01-30', '2012-02-01', 13, 15, '13664/M/KP/2019', '2019-04-26', '2019-04-01', '0000-00-00', 7, 114, 36, 13, '', '367/M/KP/2019', '2019-01-11', '2019-01-11', '0000-00-00', 32, '0000-00-00', '198611062010121001.jpg', '', 'yasir@ristek.go.id', 'Kawin', 'S-2', 'Teknologi Informasi', '2016'),
(50, '199002172015031003', '', '', NULL, 'Ananda Prakoso, S.Kom', 'S.Kom', 'Jakarta', '1990-02-17', 'Laki-laki', 'Islam', '', '5', '61/M/KP/III/2015', '2015-03-30', '2015-03-01', 13, 'JL. BUMI DAYA VII NO.58 BLOK D RT/RW 002/019 CINERE DEPOK', '', '', 0, '66593/A2.1/KP/2016', '2016-08-24', '2016-09-01', 13, 14, '13653/M/KP/2019', '2019-04-26', '2019-04-01', '0000-00-00', 7, 136, 36, 13, '', '', '0000-00-00', '0000-00-00', '0000-00-00', 32, '0000-00-00', '199002172015031003.jpg', 'NULL', 'ananda.prakoso@ristek.go.id', 'Bujangan', 'S-1', 'Sistem Informasi', '2012'),
(49, '196810022007012001', '', '', NULL, 'Maryunis, SE', 'SE', 'Padang Pariaman', '1968-10-02', 'Perempuan', 'Islam', '', '5', '187/M/KP/XII/2007', '2007-12-28', '2007-01-01', 9, 'Brata Sena III Komp. Reni Jaya BBI/5 Pamulang', '', '', 0, '91/M/KP/VI/2008', '2008-06-30', '2008-04-01', 9, 15, '67581/A2.2/KP/2017', '2017-06-12', '2017-04-01', '0000-00-00', 7, 61, 36, 13, '', '', '0000-00-00', '0000-00-00', '0000-00-00', 32, '0000-00-00', '196810022007012001.jpg', 'NULL', 'yunis@ristek.go.id', 'Kawin', 'S-1', 'Manajemen', '2007'),
(48, '196405031994031004', '', '', 'Drs', 'Drs. Hendri Kurniadi, M.MPd', 'M.MPd', 'Ciamis', '1964-05-03', 'Laki-laki', 'Islam', '', '5', 'NULL', '0000-00-00', '0000-00-00', 13, '\r\nPerum Bumi Pasanggrahan Indah Blok B No.5', '', '', 0, 'NULL', '0000-00-00', '0000-00-00', 13, 18, '823.4/Kep.316-BKD/2016', '2016-04-01', '2016-04-01', '0000-00-00', 7, 169, 36, 13, '', '367/N/KP/2019', '0000-00-00', '0000-00-00', '0000-00-00', 32, '0000-00-00', '196405031994031004.jpg', '085294222425', 'kurniadi030564@gmail.com', 'Kawin', 'S-2', 'Magister Manajemen Pendidikan', '2016'),
(47, '196801041992031001', '', '', 'Dr', 'Dr. Radiwan, SE.,MAB', 'SE.,MAB', 'Cilacap', '1968-01-04', 'Laki-laki', 'Islam', '', '5', 'KEP-55/BP-7/VI/1992', '1992-06-19', '1992-03-01', 10, 'RT 01/01 CIJANTUNG NO 73', '', '', 0, 'NULL', '0000-00-00', '0000-00-00', 11, 16, '194 Tahun 2015', '2015-10-15', '2015-10-01', '0000-00-00', 7, 65, 36, 13, '', '318/M/KP/X/2015', '2015-10-13', '2015-10-15', '0000-00-00', 32, '0000-00-00', '196801041992031001.jpg', 'NULL', 'radiwan04@yahoo.co.id', 'Kawin', 'S-3', 'Ilmu Administrasi', '2016'),
(46, '196911112008111001', '', '', NULL, 'Danang Rita Handoko, SE', 'SE', 'Wonogiri', '1969-11-11', 'Laki-laki', 'Islam', '', '5', '242/M/KP/XII/2008', '2008-12-10', '2008-11-01', 13, '\r\nCinere Residence Blok F6 No. 18, Meruyung - Depok', '', '', 0, '26/M/KP/I/2010', '2010-01-29', '2010-02-01', 13, 16, '57152/A2.2/KP/2018', '2018-11-21', '2018-10-01', '0000-00-00', 7, 168, 36, 13, '', '367/M/KP/2019', '0000-00-00', '0000-00-00', '0000-00-00', 32, '0000-00-00', 'default.jpg', 'NULL', 'NULL', 'Kawin', 'S-1', 'Manajemen', '1994'),
(45, '197509012009102001', '', '', NULL, 'Anteng Setia Ningsih, S.Tp, MA', ' S.Tp, MA', 'Palembang', '1975-09-01', 'Perempuan', 'Islam', '', '5', '215/M/KP/XII/2009', '2009-12-31', '2009-10-01', 13, 'Jl. Raya Gunung Batu Loji Bogor Barat - Jawa Barat', '', '', 0, '30/MKP/I/2011', '2011-01-31', '2011-02-01', 13, 16, '57153/A2.2/KP/2018', '2018-11-21', '2018-10-01', '0000-00-00', 7, 70, 36, 13, '', '318/M/KP/X/2015', '2015-10-13', '2015-10-15', '0000-00-00', 32, '0000-00-00', '197509012009102001.jpg', '', 'anteng@ristek.go.id', 'Kawin', 'S-2', 'Ilmu Administrasi ', '2011'),
(44, '197603282008112001', '', '', NULL, 'Noor Indriasari, SE', 'SE', 'Jakarta', '1976-03-28', 'Perempuan', 'Islam', '', '5', '240/M/KP/XII/2008', '2008-12-10', '2008-11-01', 13, 'JALAN KOMPLEK TAMAN ASRI BLOK B6 NO. 7 KEL. CIPADU JAYA, KEC. LARANGAN, KAB. TANGERANG, PROPINSI. JAWA BARAT', '', '', 0, '25/M/KP/I/2010', '2010-01-29', '2010-02-01', 13, 16, '57150/A2.2/KP/2018', '2018-11-21', '2018-10-01', '0000-00-00', 7, 69, 36, 13, '', '318/M/KP/X/2015', '2015-10-13', '2015-10-15', '0000-00-00', 32, '0000-00-00', '197603282008112001.jpg', 'NULL', 'ceceiin17@gmail.com', 'Kawin', 'S-1', 'Manajemen Perusahaan', '1999'),
(43, '198408192010122001', '', '', NULL, 'Erlani Pusparini, ST, M.Eng', 'ST, M.Eng', 'Sleman', '1984-08-19', 'Perempuan', 'Islam', '', '5', '283/M/KP/XII/2010', '2010-12-29', '2010-12-01', 13, 'JALAN KUSUMA BARAT II BLOK I/4 KEL. DUREN JAYA, KEC. BEKASI TIMUR, KAB. KOTA BEKASI, PROPINSI. JAWA BARAT', '', '', 0, '32/M/KP/I/2012', '2012-01-30', '2012-02-01', 13, 15, '67596/A2.2/KP/2017', '2017-06-12', '2017-04-01', '0000-00-00', 7, 68, 36, 13, '', '318/M/KP/X/2015', '2015-10-13', '2015-10-15', '0000-00-00', 32, '0000-00-00', '198408192010122001.jpg', 'NULL', 'erlani@ristekdikti.go.id', 'Kawin', 'S-2', 'Engineering', '2011'),
(42, '196912091995032001', '', '', NULL, 'Cornelia Tantri W, S.Kom', 'S.Kom', 'Jakarta', '1969-12-09', 'Perempuan', 'Islam', '', '5', 'SK/22/KA/BPPT/VI/1995', '1995-06-16', '1995-03-01', 13, 'Jl. Kebon Nanas Selatan I No.27 Cipinang Cempedak-Jatinegara-Jakarta Timur\r\n', '', '', 0, 'NULL', '0000-00-00', '0000-00-00', 0, 16, '51/Kp/BPPT/II/2008', '2008-02-25', '2008-04-01', '0000-00-00', 7, 67, 36, 13, '', '31/M/KP/X/2015', '2015-10-13', '2015-10-15', '0000-00-00', 32, '0000-00-00', '196912091995032001.jpg', 'NULL', 'lia@ristek.go.id', 'Bujangan', 'S-1', 'Manajemen Informatika ', '1994'),
(41, '198301112006042001', '', '', NULL, 'Yenni Kusumawati, ST', 'ST', 'Surakarta', '1983-01-11', 'Perempuan', 'Islam', '', '5', '28/M/KP/III/2006', '2006-03-29', '2006-04-01', 13, 'JALAN PURBAYAN NO. 19 RT. 07 RW. 01 KEL. SINGOPURAN, KEC. KARTASURA, KAB. SUKOHARJO, PROPINSI JAWA TENGAH', '', '', 0, '17/M/KP/III/2007', '2007-03-30', '2007-04-01', 13, 16, '3913/A2.2/KP/2016', '2016-03-04', '2015-10-01', '0000-00-00', 7, 66, 36, 13, '', '318/M/KP/X/2015', '2015-10-13', '2015-10-15', '0000-00-00', 32, '0000-00-00', '198301112006042001.jpg', 'NULL', 'kusuma@ristekdikti.go.id', 'Bujangan', 'S-1', 'Teknik Industri', '2005'),
(40, '197407102009102001', '', '', NULL, 'Indrawati, SP', 'SP', 'Jakarta', '1974-07-10', 'Perempuan', 'Islam', '', '5', '172/M/KP/XI/2009', '2009-11-23', '2009-10-01', 13, 'JL. MAHONI GG. PERSAHABATAN NO. 1 RT. 001/007 KELURAHAN TUGU UTARA, KECAMATAN KOJA JAKARTA UTARA', '', '', 0, '34/M/KP/I/2011', '2011-01-31', '2011-02-01', 13, 15, '67595/A2.2/KP/2017', '2017-06-12', '2017-04-01', '0000-00-00', 7, 14, 36, 13, '', '020/F/Kp/V/2017', '2017-05-22', '2017-06-01', '0000-00-00', 32, '0000-00-00', '197407102009102001.jpg', 'NULL', 'indrawati@ristek.go.id', 'Kawin', 'S-1', 'Sosial Ekonomi Pertanian', '2000'),
(39, '197305042003121001', '', '', NULL, 'Fadoli, ST, MAB', 'ST, MAB', 'Kebumen', '1973-05-04', 'Laki-laki', 'Islam', '', '5', '28/M/KP/II/2004', '2004-02-26', '2003-12-01', 13, 'JL. MASJID GG. ANGGREK RT.015/04 KELURAHAN SETU KECAMATAN SETU KOTA TANGERANG SELATAN', '', '', 0, '47/M/KP/II/2005', '2005-02-28', '2005-03-01', 13, 17, '57149/A2.2/KP/2018', '2018-11-21', '2018-10-01', '0000-00-00', 7, 13, 36, 13, '', '318/M/KP/X/2015', '2015-10-13', '2015-10-15', '0000-00-00', 32, '0000-00-00', '197305042003121001.jpg', '', 'fadoli@ristek.go.id', 'Kawin', 'S-2', 'Manajemen Ekonomi Publik', '2009'),
(38, '196403261990011001', '', '', NULL, 'Moh. Rohadi, S. Kom', 'S.Kom', 'Magelang', '1964-03-26', 'Laki-laki', 'Islam', '', '5', 'SK/005/M/BPPT/I/1990', '1990-01-01', '1990-01-01', 9, 'PERUM PUSPIPTEK ASRI SEKTOR III, BLOK S, NO.2, KEL.PAGEDANGAN, KEC.PAGEDANGAN, KAB.TANGERANG, PROPINSI BANTEN', '', '', 0, 'SK/1005/M/BPPT/XII/1991', '1991-12-13', '1992-01-01', 9, 16, '3883/A2.2/KP/2016', '2016-03-04', '2015-10-01', '0000-00-00', 7, 8, 36, 13, '', '020/F/Kp/V/2017', '2017-05-22', '2017-05-22', '0000-00-00', 32, '0000-00-00', '196403261990011001.jpg', '081291987123', 'muhammadrohadi95@yahoo.com', 'Kawin', 'S-1', 'Teknik Informatika', '2014'),
(36, '196606152006041017', '', '', NULL, 'Darwin Santoso Kadir, S.Kom', 'S.Kom', 'Jakarta', '1966-06-15', 'Laki-laki', 'Islam', '', '5', '135/M/KP/XII/2006', '2006-12-29', '2006-04-01', 13, 'KAMPUNG BABAKAN BARU, RT. 003/009, DESA CIPICUNG, KECAMATAN BANYURESMI, GARUT', '', '', 0, '48/M/KP/III/2007', '2007-03-30', '2007-04-01', 13, 16, '31616/A2.2/KP/2018', '2018-11-30', '2018-04-01', '0000-00-00', 7, 11, 36, 13, '', '318/M/KP/X/2015', '2015-10-13', '2015-10-15', '0000-00-00', 32, '0000-00-00', '196606152006041017.jpg', '', 'darwinsantoso@ristekdikti.go.id', 'Kawin', 'S-1', 'Teknik Komputer', '1993'),
(37, '197507092008111001', '', '', NULL, 'Juliadri, S.Kom', 'S.Kom', 'Jakarta', '1975-07-09', 'Laki-laki', 'Islam', '', '5', '223/M/KP/XII/2008', '2008-12-10', '2008-11-11', 9, 'JALAN PASIR PUTIH KEL. BEDAHAN, KEC. SAWANGAN, KAB. DEPOK, PROPINSI. JAWA BARAT', '', '', 0, '11/M/KP/I/2010', '2010-01-29', '2010-02-01', 9, 15, '18640/M/KP/2019', '2019-05-21', '2019-04-01', '0000-00-00', 7, 12, 36, 13, '', '020/F/KP/V/2017', '2017-05-22', '2017-05-22', '0000-00-00', 32, '0000-00-00', '197507092008111001.jpg', '', 'juliadri@ristek.go.id', 'Kawin', 'S-1', 'Teknik Informatika', '2003'),
(35, '198612172010122001', '', '', NULL, 'Pratiwi Eka Sari, SH', 'SH', 'Jember', '1986-12-17', 'Perempuan', 'Islam', '', '5', '276/M/KP/XII/2010', '2010-12-29', '2010-12-01', 13, 'pratiwi@ristek.go.id', '', '', 0, '53/M/KP/I/2012', '2012-01-30', '2012-02-01', 13, 15, '67599/A2.2/KP/2017', '2017-06-12', '2017-04-01', '0000-00-00', 7, 7, 36, 13, '', '', '0000-00-00', '0000-00-00', '0000-00-00', 32, '0000-00-00', '198612172010122001.jpg', 'NULL', 'pratiwi@ristek.go.id', 'Kawin', 'S-1', 'Ilmu Hukum', '2010'),
(34, '197906162005021001', '', '', NULL, 'Rosliadhi Hadi Santoso, SE, ME', 'SE, ME', 'Indramayu', '1979-06-16', 'Laki-laki', 'Islam', '', '5', '21/M/KP/II/2005', '2005-02-28', '2005-02-01', 13, 'TAMAN WISMA ASRI BLOK M 54 NO. 29 BEKASI UTARA', '', '', 0, '080/M/KP/I/2006', '2006-01-30', '2006-02-01', 13, 16, '080/M/KP/I/2006', '2014-09-30', '2014-10-01', '0000-00-00', 7, 10, 36, 13, '', '216/M/KP/IX/2014', '2014-09-30', '2014-10-01', '0000-00-00', 32, '0000-00-00', '197906162005021001.jpg', '', 'rosliadhi260806@gmail.com', 'Kawin', 'S-2', 'Magister Perencanaan dan kebijakan Publik', '2014'),
(33, '197210012006042030', '', '', NULL, 'Aas Suryati, S.Kom. M.AP', 'S.Kom. M.AP', 'Jakarta', '1972-10-01', 'Perempuan', 'Islam', '', '5', '130Y/M/KP/XII/2006', '2006-12-21', '2006-04-01', 9, 'JL. KESATRIAN X RT.10 RW.03 NO. 12 C MATRAMAN JAKARTA 13150', '', '', 0, '45/M/KP/III/2007', '2007-03-30', '2007-04-01', 9, 15, '67553/A2.2/KP/2017', '2017-06-12', '2017-04-01', '0000-00-00', 7, 9, 36, 13, '', '318/M/KP/X/2015', '2015-10-13', '2015-10-15', '0000-00-00', 32, '0000-00-00', '197210012006042030.jpg', NULL, 'aas@ristek.go.id', 'Kawin', 'S-2', 'Administrasi Publik', '2014'),
(32, '198410272010122002', '', '', NULL, 'Leny Oktaviani, SE', 'SE', 'Jakarta', '1984-10-27', 'Perempuan', 'Islam', '', '5', '297/M/KP/XII/2010', '2010-12-29', '2010-12-01', 13, 'Jl. Menteng Pulo No. 3 ', '', '', 0, '40/M/KP/I/2012', '2012-01-30', '2012-02-01', 13, 15, '67604/A2.2/KP/2017', '2017-06-12', '2017-04-01', '0000-00-00', 7, 157, 36, 13, '', '318/M/KP/X/2015', '2015-10-13', '2015-10-15', '0000-00-00', 32, '0000-00-00', '198410272010122002.jpg', '08179413797', 'lenyoktav@ristek.go.id', 'Kawin', 'S-1', 'Akuntansi', '2006'),
(31, '197804152006041015', '', '', NULL, 'Eka Gandara, S.Pi, M.Si', 'S.Pi, M.Si', 'Ciamis', '1978-04-15', 'Laki-laki', 'Islam', '', '5', '130K/M/KP/XII/2006', '2006-12-21', '2006-04-01', 13, 'JBSD BLOK NA NO 53 SEKTOR XIV-6. RT 007 RW 08, DESA RAWAMEKARJAYA, KEC. SARPONG. KOTA TANGERANG SELATAN. PROPINSI BANTEN', '', '', 0, '32/M/KP/II/2007', '2007-03-30', '2007-04-01', 13, 16, '31615/A2.2/KP/2018', '2018-06-25', '2018-04-01', '0000-00-00', 7, 160, 36, 13, '', '366/M/KP/2019', '2019-01-11', '2019-01-15', '0000-00-00', 32, '0000-00-00', '197804152006041015.jpg', '081285041629', 'gandarosi@ristekdikti.go.id', 'Kawin', 'S-2', 'Magister Administrasi Publik', '2015'),
(30, '198106072008111002', '', '', 'Dr', 'Dr. Muhamad Amin, ST, MMSI', ' ST, MMSI', 'Jakarta', '1981-06-07', 'Laki-laki', 'Islam', '', '5', '233/M/KP/XII/2008', '2008-12-10', '2008-11-01', 13, 'JALAN LODAN DALAM II NO. 17 RT: 003 RW: 08 KEL. ANCOL, KEC. PADEMANGAN, KAB. JAKARTA UTARA, PROPINSI. DKI JAKARTA', '', '', 0, '19/M/KP/I/2010', '2010-01-29', '2010-02-01', 14, 16, '47770/A2.2/KP/2018', '2018-10-11', '2018-10-01', '0000-00-00', 7, 161, 36, 13, '', '366/M/KP/2019', '2019-01-11', '2019-01-15', '0000-00-00', 32, '0000-00-00', '198106072008111002.jpg', '08129473759', 'amien@ristekdikti.go.id', 'Kawin', 'S-3', 'Manajemen Sistem Informasi', '2010'),
(29, '198106112008111001', '', '', NULL, 'Nuhansyah Harahap, S.Kom.,M.Si', 'S.Kom, M.Si', 'Medan', '1981-06-11', 'Laki-laki', 'Islam', '', '5', '217/M/KP/XII/2008', '2008-12-10', '2008-11-01', 9, '\r\nPondok Ungu Permai Blok FF 2 No. 1 Kaliabang Tengah, Bekasi', '', '', 0, '5/M/KP/I/2010', '2010-01-29', '2010-02-01', 9, 15, '67602/A2.2/KP/2017', '2017-06-12', '2017-04-01', '0000-00-00', 7, 167, 36, 13, '', '020/F/Kp/V/2017', '2017-05-22', '2017-05-22', '0000-00-00', 32, '0000-00-00', '198106112008111001.jpg', '081386757300', 'ancha@ristek.go.id', 'Kawin', 'S-2', 'Magister Ilmu Administrasi', '2012'),
(28, '198405162009122001', '', '', NULL, 'Sania Diaurrahmi Bs, S.Pt, ME', 'S.Pt, ME', 'Sleman', '1984-05-16', 'Perempuan', 'Islam', '', '5', '208/M/KP/XII/2009', '2009-12-30', '2009-12-01', 13, '\r\nGrand Pamulang Residence Blok D No. 2, Jl. Sukamulya', '', '', 0, '23/M/KP/I/2011', '2011-01-31', '2011-02-01', 13, 15, '67603/A2.2/KP/2017', '2017-06-12', '2017-04-01', '0000-00-00', 7, 166, 36, 13, '', '318/M/KP/2015', '2015-10-10', '2015-10-13', '0000-00-00', 32, '0000-00-00', '198405162009122001.jpg', '081802424896', 'saniarahmi@ristek.go.id', 'Kawin', 'S-2', 'Magister Perencanaan dan kebijakan Publik', '2015'),
(27, '198911262010122001', '', '', NULL, 'Pembayun Sekaringtyas, ST', 'ST', 'Sleman', '1989-11-26', 'Perempuan', 'Islam', '', '5', ' Aspol Panaragan No.33 Rt.03 Rw.04 - Bogor Tengah', '2010-12-29', '2010-12-01', 13, '\r\nAspol Panaragan No.33 Rt.03 Rw.04 - Bogor Tengah', '', '', 0, '51/M/KP/I/2012', '2012-01-30', '2012-02-01', 13, 15, '67582/A2.2/KP/2017', '2017-06-12', '2017-04-01', '0000-00-00', 7, 205, 36, 13, '', '', '0000-00-00', '0000-00-00', '0000-00-00', 32, '0000-00-00', '198911262010122001.jpg', 'NULL', 'NULL', 'Kawin', 'S-1', 'Urban And Regional Planning', '2015'),
(26, '197804082008112001', '', '', NULL, 'Eva Yulinda, S.I.Kom', 'S.I.Kom', 'Tangerang', '1978-04-08', 'Perempuan', 'Islam', '', '5', '219/M/KP/XII/2008', '2008-12-10', '2008-01-11', 9, '\r\nJl. Samudera 1 No.25 A', '', '', 0, '007/M/KP/I/2010', '2010-01-29', '2010-02-01', 9, 15, '67598/A2.2/KP/2017', '2017-06-12', '2017-04-01', '0000-00-00', 7, 163, 36, 13, '', '318/M/KP/X/2015', '2015-10-13', '2015-10-13', '0000-00-00', 32, '0000-00-00', '197804082008112001.jpg', 'NULL', 'NULL', 'Kawin', 'S-1', 'Ilmu Komunikasi', '2008'),
(25, '198111202008121001', '', '', NULL, 'Eko Kurniawan, SE, MSC', 'SE, M.Sc', 'Cianjur', '1981-11-20', 'Laki-laki', 'Islam', '', '5', '208/M/KP/XII/2008', '2008-12-09', '2008-12-01', 13, 'Kavling Poncol No. 9 A Rt/Rw 007/018 Jatirahayu Pondok Melati', '', '', 0, '152/M/KP/XI/2009', '2009-11-11', '2009-12-01', 13, 16, '47771/A2.2/KP/2018', '2018-10-11', '2018-10-01', '0000-00-00', 7, 162, 36, 13, '', '020/F/KP/V/2019', '2017-05-22', '2017-05-22', '0000-00-00', 32, '0000-00-00', '198111202008121001.jpg', ' 08995075849', 'ekokurniawan@ristekdikti.go.id', 'Kawin', 'S-2', 'Innovation Management And Entrepreneurship', '2016'),
(24, '197001142006042005', '', '', NULL, 'Sumiarti Esti Ningsih, SE', 'SE', 'Cilacap', '1970-01-14', 'Perempuan', 'Islam', '', '5', '130/M/KP/XII/2006', '2006-12-21', '2006-04-01', 13, 'JALAN PERUM PESONA ANGGREK HARAPAN BEKASI BLOK F 22/22 RT. 001/024 KEL. HARAPAN JAYA, KEC. BEKASI UTARA, KAB. KOTA BEKASI, PROPINSI. JAWA BARAT', '', '', 0, '36/M/KP/III/2007', '2007-03-30', '2007-04-01', 13, 16, '3912/A2.2/KP/2016', '2016-03-04', '2015-10-01', '0000-00-00', 7, 109, 36, 13, '', '318/M/KP/X/2015', '2015-10-13', '2015-10-15', '0000-00-00', 32, '0000-00-00', '197001142006042005.jpg', 'NULL', 'esti@ristek.go.id', 'Kawin', 'S-1', 'Manajemen Perusahaan', '1994'),
(23, '197108282006042019', '', '', NULL, 'Sari Mayang, S.Kom', 'S.Kom', 'Padang', '1971-08-28', 'Perempuan', 'Islam', '', '5', '130 H/M/KP/XII/2006', '2006-12-21', '2006-04-01', 13, 'JL. H. BALOK NO.65 RT 013/002 KALISARI, PASAR REBO, JAKARTA TIMUR', '', '', 0, '29/M/KP/III/2007', '2007-03-30', '2007-04-01', 13, 16, '4901/A2.2/KP/2016', '2016-02-05', '2015-10-01', '0000-00-00', 7, 121, 36, 13, '', '318/M/KP/X/2015', '2015-10-13', '2015-10-15', '0000-00-00', 32, '0000-00-00', '197108282006042019.jpg', 'NULL', 'mayang@ristek.go.id', 'Bujangan', 'S-1', 'Teknik Komputer', '1996'),
(22, '196507042006041013', '', '', NULL, 'Yayan Sudaryana, ST', 'ST', 'Subang', '1965-07-04', 'Laki-laki', 'Islam', '', '5', '159/M/KP/XII/2006', '2006-12-29', '2006-04-01', 13, 'KEL. JATIASIH, KEC. JATIASIH, KAB. KOTA BEKASI, PROPINSI. JAWA BARAT', '', '', 0, '72/M/KP/III/2007', '2007-03-30', '2007-04-01', 13, 16, '3878/A2.2/KP/2016', '2016-03-18', '2015-10-01', '0000-00-00', 7, 120, 36, 13, '', '318/M/KP/X/2015', '2015-10-13', '2015-10-13', '0000-00-00', 32, '0000-00-00', '196507042006041013.jpg', 'NULL', 'yayan@ristek.go.id', 'Kawin', 'S-1', 'Teknik Elektro', '1995'),
(21, '197702222003122001', '', '', NULL, 'Poppy Indah Dwi Prastiti, SE', 'SE', 'Bogor', '1977-02-22', 'Perempuan', 'Islam', '', '5', '33/M/KP/II/2004', '2004-02-26', '2003-12-01', 13, 'BINTARO TERRACE KAV. 35 JL. H. SAWIL 99 RT/RW. 004/005, PERIGI, PD. AREN TANGERANG SELATAN 15227', '', '', 0, '55/M/KP/III/2005', '2005-02-28', '2005-03-01', 13, 16, '220/M/KP/X/2013', '2013-10-07', '2013-10-01', '0000-00-00', 7, 119, 36, 13, '', '318/M/KP/X/2015', '2015-10-13', '2015-10-13', '0000-00-00', 32, '0000-00-00', '197702222003122001.jpg', '085780999111', 'poppy.idp@gmail.com', 'Kawin', 'S-1', 'EKONOMI AKUNTANSI', '2000'),
(20, '197202102006041022', '', '', NULL, 'Suranto, SE', 'SE', 'Gunung Kidul', '1972-02-10', 'Laki-laki', 'Islam', '', '5', '1305/M/KP/XII/2006', '2006-12-21', '2006-04-01', 13, 'JALAN PLERED, KP. JOGLO RT. 05/RW. 07 NO 50 KEL. PENGASINAN, KEC. SAWANGAN, KAB. DEPOK, PROPINSI. JAWA BARAT', '', '', 0, '31/M/KP/III/2007', '2007-03-30', '2007-04-01', 13, 16, '3877/A2.2/KP/2016', '2016-03-18', '2015-10-01', '0000-00-00', 7, 118, 36, 13, '', '318/M/KP/X/2015', '2015-10-13', '2015-10-13', '0000-00-00', 32, '0000-00-00', '197202102006041022.jpg', '', 'ranto@ristek.go.id', 'Kawin', 'S-1', 'Manajemen Keuangan Dan Perbankan', '2002'),
(19, '197408052008112001', '', '', NULL, 'Maria Ulfa, ST', 'ST', 'Surabaya', '1974-08-05', 'Perempuan', 'Islam', '', '5', '239/M/KP/XII/2008', '2008-12-10', '2008-11-01', 13, 'GRAND DEPOK CITY SEKTOR ANGGREK 3 BLOK D3 NO. 10 DEPOK - 16412', '', '', 0, '24/M/KP/I/2010', '2010-01-29', '2010-02-01', 13, 16, '57151/A2.2/KP/2018', '2018-11-21', '2018-10-01', '0000-00-00', 7, 117, 36, 13, '', '', '0000-00-00', '0000-00-00', '0000-00-00', 32, '0000-00-00', '197408052008112001.jpg', '', 'maria_ulfa@ristek.go.id', 'Kawin', 'S-1', 'Teknik Sipil', '1999'),
(18, '197202042003121001', '', '', NULL, 'Nurul Falah, SE', 'SE', 'Jakarta', '1972-02-04', 'Laki-laki', 'Islam', '', '5', '15/M/KP/II/2004', '2004-02-26', '2003-12-01', 13, 'JALAN PEPAYA NO. 1 RT 03 / RW 06 KEL. PEJATEN BARAT, KEC. PASAR MINGGU, KAB. JAKARTA SELATAN, PROPINSI. DKI JAKARTA', '', '', 0, '35/M/KP/II/2005', '2005-02-28', '2005-03-01', 13, 16, '219/M/KP/X/2013', '2013-10-07', '2013-10-01', '0000-00-00', 7, 116, 36, 13, '', '318/M/KP/X/2015', '2015-10-13', '2015-10-13', '0000-00-00', 32, '0000-00-00', '197202042003121001.jpg', '', 'nurulfalah.nf@gmail.com', 'Kawin', 'S-1', 'Manajemen ', '2003'),
(17, '197812112009102002', '', '', NULL, 'Nurul Fadhila Lukman Hakim, STP', 'STP', 'Bogor', '1978-12-11', 'Perempuan', 'Islam', '', '5', '169/M/KP/XI/2009', '2009-11-23', '2009-10-01', 13, 'KAMPUNG BAHARI 2 A5 NO. 85C, RT. 007 RW. 04 KEL. TANJUNG PRIOK, KOTAMADYA JAKARTA UTARA, PROPINSI DKI JAKARTA', '', '', 0, '31/M/KP/I/2011', '2011-01-31', '2011-02-01', 13, 15, '67580/A2.2/KP/2017', '2017-06-12', '2017-04-01', '0000-00-00', 7, 115, 36, 13, '', '318/M/KP/X/2015', '2015-10-13', '2015-10-13', '0000-00-00', 32, '0000-00-00', '197812112009102002.jpg', '', 'dhila@ristekdikti.go.id', 'Kawin', 'S-1', 'Teknologi Industri Pertanian', '2003'),
(16, '198406062010121001', '', '', NULL, 'Lani Kasigit, STP,.M,Pub.Pol', 'STP, M.Pub.Pol', 'Tegal', '1984-06-06', 'Laki-laki', 'Islam', '', '5', '281/M/KP/XII/2010', '2010-12-29', '2010-12-01', 13, '\r\nDepan Balai Desa Wirun Rt.01 Rw.05', '', '', 0, '38/M/KP/1/2012', '2012-12-29', '2012-02-01', 13, 15, '67605/A2.2/KP/2017', '2017-06-12', '2017-04-01', '0000-00-00', 7, 164, 36, 13, '', '367/M/KP/2019', '0000-00-00', '0000-00-00', '0000-00-00', 32, '0000-00-00', '198406062010121001.jpg', 'NULL', 'NULL', 'Kawin', 'S-2', 'Master Of Public Administration', '2015'),
(15, '196807251997031002', '', '', NULL, 'Aldi Haryadi, S.T.', 'ST', 'Ciamis', '1968-07-25', 'Laki-laki', 'Islam', '', '5', 'NULL', '0000-00-00', '0000-00-00', 0, 'Jl. Alam VIII Blok D No. 11 Vilailhami Karawaci, Kelapa Dua', '', '', 0, 'NULL', '0000-00-00', '0000-00-00', 0, 17, '', '0000-00-00', '2017-04-01', '0000-00-00', 7, 65, 36, 13, '', '366/M/KP/2019', '2019-01-11', '2019-01-11', '0000-00-00', 32, '0000-00-00', 'default.jpg', 'NULL', '', 'Kawin', 'S-1', '', ''),
(13, '196607221986122001', '', '', NULL, 'Ing. Wiwiek Joelijani, MT', 'MT', 'Surabaya', '1966-07-22', 'Perempuan', 'Islam', '', '5', 'SK/720/M/BPPT/XII/1986', '1985-12-16', '1986-12-01', 13, '', '', '', 0, 'SK/455/M/BPPT/P1988', '1988-01-01', '0000-00-00', 13, 18, '96406/A2.2/KP/2017', '2017-10-23', '2017-10-01', '0000-00-00', 7, 205, 36, 13, '', '314/M/KP/IX/2015', '2015-09-15', '2015-09-16', '0000-00-00', 32, '0000-00-00', '196607221986122001.jpg', 'NULL', 'NULL', 'Kawin', 'S-2', 'Teknik Kimia', '2007'),
(11, '196205301986031004', '', '', NULL, 'Supriyadi, S.Sos', 'S.Sos', 'Yogyakarta', '1962-05-30', 'Laki-laki', 'Islam', '', '5', '1762/SK/PB/1986', '1986-05-23', '1986-03-01', 9, 'PERUM BUMI BEKASI BARU  JL. LUMBU TENGAH IE/109, RT.03 RW.027, KEL. BOJONG RAWALUMBU, KEC. RAWALUMBU, KOTA BEKASI.', '', '', 0, '193/SK/PN/1987', '1987-06-27', '1986-03-01', 9, 17, '246/KP.04.04 Tahun 2017', '2017-03-14', '2017-04-01', '0000-00-00', 7, 4, 36, 13, '', '314/M/KP/IX/2015', '2015-09-15', '2015-09-16', '0000-00-00', 32, '0000-00-00', '196205301986031004.jpg', 'NULL', 'supriyadi@ristek.go.id', 'Kawin', 'S-1', 'Ilmu Administrasi Negara', '2006'),
(9, '196901121992031003', '', '', NULL, 'Medy Eka Suryana, SIP, MM', 'SIP, MM', 'Jakarta', '1969-01-12', 'Laki-laki', 'Islam', '', '5', '104/SK/PB/1992', '1992-04-11', '1992-03-01', 9, 'JL. FLAMBOYAN RAYA 6 RT.003/03 DEPOK II TENGAH KEL. MEKARJAYA, KEC. SUKMAJAYA, KAB. DEPOK, PROPINSI. JAWA BARAT', '', '', 0, '440/SK/PN/1993', '1993-08-26', '1993-09-01', 9, 18, '312/KP.04.04 TAHUN 2015', '2015-09-25', '2015-10-01', '0000-00-00', 7, 5, 36, 13, '', '366/M/KP/2019', '2019-01-11', '2019-01-11', '0000-00-00', 32, '0000-00-00', '196901121992031003.png', '', 'medyarmen69@gmail.com', 'Kawin', 'S-2', 'Magister Manajemen', '2007'),
(7, '196710121987011001', '', '', 'Dr', 'Dr. Wihatmoko Waskitoaji', NULL, 'Bandung', '1967-10-12', 'Laki-laki', 'Islam', '', '5', '45/Kep/DU/J.1-a/II/87', '1987-01-07', '1987-01-01', 9, 'Komp. Puspiptek Blok VI-F/6', '', '', 0, '1407/Kep/DU/J.1-b/II/89', '1989-12-06', '1990-01-01', 9, 18, '318/Kep/J.3-c/2016', '2016-03-16', '2016-04-01', '0000-00-00', 7, 158, 36, 13, '', '314/M/KP/IX/2015', '2015-09-15', '2015-09-15', '0000-00-00', 32, '0000-00-00', '196710121987011001.jpg', '08170990330', ' Wihatmoko@ristek.go.id', 'Kawin', 'S-3', 'Applied Chemistry', '2010'),
(6, '196904151996031001', '', '', NULL, 'Aries Setyarto, S.Sos, M.AP', 'S.Sos, M.AP', 'Jakarta', '1969-04-15', 'Laki-laki', 'Islam', '', '5', '70/SET.NEG/PERS-IN/6/1996', '1996-06-11', '1996-03-01', 13, 'JL BULAK BARAT II/37 KLENDER JAKTIM', '', '', 0, '44/SETNEG/PERS-IN/9/1997', '1997-09-17', '1997-10-01', 13, 18, '', '0000-00-00', '1900-01-00', '0000-00-00', 7, 113, 36, 13, '', '017/F/KP/V/2017', '2017-05-22', '2017-05-22', '0000-00-00', 32, '0000-00-00', 'default.jpg', '', '', 'Kawin', 'S-2', 'public administration', '2009'),
(2, '196004171988032001', '', '', 'Ir', 'Ir. Retno Sumekar, M.Si', 'M.Si', 'Banyuwangi', '1960-04-17', 'Perempuan', 'Islam', '', '5', '919/Kep/J.1-a/II/1988', '1988-06-30', '1988-03-01', 13, 'JL. INTAN II NO.45, T.003/020, KAYURINGIN JAYA, BEKASI SELATAN', '', '', 0, '419/KEP/J.I-B/II/1989', '1989-03-21', '1989-04-01', 13, 19, '00020/KEP/AA/15027/16', '2016-09-14', '2016-10-01', '0000-00-00', 7, 108, 36, 13, '', '276/M/KP/VII/2015', '2015-07-13', '2015-07-13', '0000-00-00', 32, '0000-00-00', '196004171988032001.jpg', '', 'retnosumekar@gmail.com', 'Kawin', 'S-2', 'Ilmu Lingkungan', '2000'),
(10, '196704131993031007', '', '', 'Ir', 'Ir. Zulfan Adrinaldi, MT', 'MT', 'Pekan Baru', '1967-04-13', 'Laki-laki', 'Islam', '', '5', 'SK/377/M/BPPT/V/1993', '1993-05-31', '1993-03-01', 13, 'JL. MAWAR MERAH III NO. 146 PERUMNAS KLENDER JAKARTA TIMUR', '', '', 0, 'SK/211/KA/BPPT/V/1994', '1994-05-24', '1994-06-01', 13, 18, '307 Tahun 2011', '2011-09-23', '2011-10-01', '0000-00-00', 7, 3, 36, 13, '', '314/M/KP/IX/2015', '2015-09-15', '2015-09-15', '0000-00-00', 32, '0000-00-00', '196704131993031007.jpg', NULL, 'zulfan@ristek.go.id', 'Kawin', 'S-2', 'Teknik Mesin', '1999'),
(3, '196507061990121001', '', '', 'Ir', 'Ir. Santosa Yudo Warsono, MT', 'MT', 'Pacitan', '1965-07-06', 'Laki-laki', 'Islam', '', '5', 'SK/770/M/BPPT/XII/90', '1990-12-17', '1990-12-01', 13, 'JL. KUALA SIMPANG BLOK EC-7 KEL. JATIMAKMUR, KEC. PONDOK GEDE, KAB. BEKASI, PROPINSI. JAWA BARAT', '', '', 0, '73/K/2011', '2011-12-06', '2011-10-01', 20, 20, '73/K/2011', '2011-12-06', '2011-10-01', '0000-00-00', 7, 60, 36, 13, '', '289/M/KP/VIII/2015', '2015-08-26', '2015-08-26', '0000-00-00', 32, '0000-00-00', '196507061990121001.jpg', '08128017593', 'santoso@ristek.go.id', 'Kawin', 'S-2', 'Ilmu-Ilmu Teknik', '1995'),
(12, '196407011992031001', '', '', 'Drs', 'Drs. Erwin Sjachrial', NULL, 'Jakarta', '1964-07-01', 'Laki-laki', 'Islam', '', '5', '10554/KP 0201/92', '1992-03-23', '1992-03-01', 13, 'GRIYA DEPOK ASRI BLOK F4/2 KEL. MEKARJAYA, KEC. SUKMAJAYA, KAB. DEPOK, PROPINSI. JAWA BARAT', '', '', 0, '06578/KP 0201/1993', '1993-02-19', '1992-03-01', 13, 18, '10938/KP 0202/2008', '2008-08-06', '2008-10-01', '0000-00-00', 7, 62, 36, 13, '', '314/M/KP/IX/2015', '2015-09-15', '2015-09-15', '0000-00-00', 32, '0000-00-00', '196407011992031001.jpg', 'NULL', 'NULL', 'Kawin', 'S-1', 'Matematika', '1991'),
(4, '197012242003121001', '', '', 'Ir', 'Ir. Muchlis Fasihu, MIB', 'MIB', 'Kendari', '1970-12-24', 'Laki-laki', 'Islam', '', '5', '12/M/KP/II/2004', '2004-02-26', '2003-12-01', 14, 'JL.H.ASMAWI NO.16 BEJI DEPOK-JAWA BARAT', '', '', 0, '30/M/KP/I/2005', '2005-01-31', '2005-03-01', 14, 17, '92/M/KP/IV/2013', '2013-04-03', '2013-04-01', '0000-00-00', 7, 110, 36, 13, '', '314/M/KP/IX/2015', '2015-09-15', '2015-09-15', '0000-00-00', 32, '0000-00-00', '197012242003121001.jpg', '', 'muchlis@ristek.go.id', 'Kawin', 'S-2', 'Master Of international Business', '2000'),
(14, '197111032003122001', '', '', NULL, 'Novi Mukti Rahayu, MT', 'MT', 'Kediri', '1971-11-03', 'Perempuan', 'Islam', '', '5', '29/M/KP/II/2004', '2004-02-26', '2003-12-01', 13, 'Jl. Villa Bogor Indah Blok G3 No.23 Ciparigi', '', '', 0, '48/M/KP/II/2005', '2005-02-28', '2005-03-01', 13, 17, '18642/M/KP/2019', '2019-05-21', '2015-04-01', '0000-00-00', 7, 64, 36, 13, '', '314/M/KP/IX/2015', '2015-09-15', '2015-09-15', '0000-00-00', 32, '0000-00-00', '197111032003122001.jpg', 'NULL', 'nrahayu@ristek.go.id', 'Kawin', 'S-2', 'Teknik Sipil', '2007'),
(5, '196201021990032001', '', '', 'Ir', 'Ir. Sri Latifah', NULL, 'Jepara', '1962-01-02', 'Perempuan', 'Islam', '', '5', 'KP0201/06738/90', '1990-04-24', '1990-03-01', 13, 'CEMPAKA PUTIH BARAT GG. DAHLAN II RT 06/10 NOMOR 8 JAKARTA PUSAT', '', '', 0, '25984/KP 0201/91', '1991-02-14', '1990-03-01', 13, 18, '18641/M/KP/2019', '2019-05-21', '2019-04-01', '0000-00-00', 7, 111, 36, 13, '', '06/F/KP/III/2017', '2017-03-08', '2017-03-08', '0000-00-00', 32, '0000-00-00', '196201021990032001.jpg', ' 081289699786', 'slatifah@ristek.go.id', 'Kawin', 'S-1', 'Elektro', '1989'),
(1, '195910251987031001', '', '', 'Dr, Ir', 'Dr. Ir. Jumain Appe, M.Si', 'M.Si', 'Sinjai', '1959-10-25', 'Laki-laki', 'Islam', '', '5', '33333', '2019-11-01', '2019-11-12', 13, 'Jl. Intan Ujung No. 8', '', '', 0, 'Nomor PNS4444', '2019-11-02', '2019-11-02', 13, 22, 'Nomor Terakhir', '2019-11-14', '2019-11-14', '0000-00-00', 7, 1, 36, 13, '', '99/M TAHUN 2015', '2015-06-25', '2015-06-25', '0000-00-00', 32, '0000-00-00', '195910251987031001.jpg', '081398883139', 'ditjenpi.ristekdikti@gmail.com ', 'Kawin', 'S-3', 'Ilmu Manajemen Bisnis', '2010'),
(8, '196710101995122001', '', '', 'Dr, Ir', 'Dr. Ir. Adawiah, M.Si', 'M.Si', 'Kolaka', '1967-10-10', 'Perempuan', 'Islam', '', '5', '69199/A2/KP/1995', '1995-11-22', '1995-12-01', 13, 'JL. WIDYA CHANDRA 3 NO 12 A JAKARTA SELATAN', '', '', 0, '619/SK/J29/KP/1997', '1997-04-30', '1997-04-30', 13, 18, '6420/A2.2/KP/2015', '2016-02-03', '2015-10-01', '0000-00-00', 7, 160, 36, 13, '', '314/M/KP/XI/2015', '2015-09-15', '2015-09-16', '0000-00-00', 32, '0000-00-00', '196710101995122001.jpg', '0812 8544 287', 'adawiah@ristekdikti.go.id', 'Kawin', 'S-3', 'Ilmu Ternak', '2005'),
(81, '196904051997031001', '', '', NULL, 'Ahmad, S.T., M.T.,Ph.D', 'S.T., M.T.,Ph.D', 'Ujung Pandang', '1969-04-05', 'Laki-laki', 'Islam', '', '5', '46655/A2/KP/1997', '1997-05-02', '1997-03-01', 13, 'JL URIP SUMOHARJO 38B/37 RT.02 RW.01, KELURAHAN KARUWISI UTARA,KECAMATAN PANAKUKANG', '', '', 0, '2197/JO4.2/KP.36/1998', '1998-03-12', '1998-04-01', 13, 18, '62954/A2.2/KP/2018', '2018-12-28', '2018-10-01', '0000-00-00', 7, 71, 36, 13, '', '367/M/KP/2019', '2019-01-11', '2019-01-11', '0000-00-00', 32, '0000-00-00', '196904051997031001.jpg', 'NULL', 'ahmadcharmy@yahoo.com', 'Kawin', 'S-2', 'ILMU ADMINISTRASI', '2011'),
(82, '198501152015032003', '', '', NULL, 'Sri Utami, S.Sos', 'S.Sos', 'Wonogiri', '1985-01-15', 'Perempuan', 'Islam', '', '5', '46/M/KP/III/2015', '2015-03-30', '2015-03-01', 13, 'TEGAL MULYO RT.02 RW. 04 JEBRES SURAKARTA', '', '', 0, '66371a/A2.1/KP/2016', '2016-08-23', '2016-09-01', 13, 14, '13659/M/KP/2019', '2019-04-26', '2019-04-01', '0000-00-00', 7, 98, 36, 13, '', '', '0000-00-00', '0000-00-00', '0000-00-00', 32, '0000-00-00', '198501152015032003.jpg', 'NULL', 'jeotami@gmail.com', 'Kawin', 'S-1', 'Sosiologi', '2011'),
(83, '198707282010122001', '', '', NULL, 'Ulfi Perdanawati, ST', 'ST', 'Padang', '1987-07-28', 'Perempuan', 'Islam', '', '5', '306/M/KP/XII/2010', '2010-12-29', '2010-12-01', 13, 'JL. MARGONDA RAYA, GANG MADRASAH NO. 31B RT 004/03 DEPOK 16424', '', '', 0, '66/M/KP/I/2012', '2012-01-30', '2012-02-01', 13, 15, '13663/M/KP/2019', '2019-04-26', '2019-04-01', '0000-00-00', 7, 98, 36, 13, '', '', '0000-00-00', '0000-00-00', '0000-00-00', 32, '0000-00-00', '198707282010122001.jpg', 'NULL', 'ulfi.perdanawati@gmail.com', 'Bujangan', 'S-1', 'Teknik Lingkungan', '2010'),
(84, '198002232005021004', '', '', NULL, 'Jimmy Akhmadi, ST, MM', 'ST, MM', 'Samarinda', '1980-02-23', 'Laki-laki', '', '', '5', 'NULL', '0000-00-00', '0000-00-00', 0, '', '', '', 0, 'NULL', '0000-00-00', '0000-00-00', 0, 16, '', '0000-00-00', '1900-01-00', '0000-00-00', 7, 205, 36, 13, '', '', '0000-00-00', '0000-00-00', '0000-00-00', 32, '0000-00-00', 'default.jpg', 'NULL', 'NULL', '', 'S-2', NULL, NULL);
INSERT INTO `tbl_data_pegawai` (`id_pegawai`, `nip`, `nip_lama`, `no_kartu_pegawai`, `gelar_depan`, `nama_pegawai`, `gelar_belakang`, `tempat_lahir`, `tanggal_lahir`, `jenis_kelamin`, `agama`, `usia`, `status_pegawai`, `no_sk_cpns`, `tanggal_sk_cpns`, `tmt_cpns`, `id_golongan_cpns`, `alamat`, `no_npwp`, `kartu_askes_pegawai`, `status_pegawai_pangkat`, `no_sk_pns`, `tanggal_sk_pns`, `tmt_pns`, `id_golongan_pns`, `id_golongan`, `nomor_sk_pangkat`, `tanggal_sk_pangkat`, `tanggal_mulai_pangkat`, `tanggal_selesai_pangkat`, `id_status_jabatan`, `id_jabatan`, `id_unit_kerja`, `id_satuan_kerja`, `lokasi_kerja`, `nomor_sk_jabatan`, `tanggal_sk_jabatan`, `tanggal_mulai_jabatan`, `tanggal_selesai_jabatan`, `id_eselon`, `tmt_eselon`, `foto`, `telepon`, `email`, `status_kawin`, `pendidikan_terakhir`, `pendidikan_bidang`, `pendidikan_lulus`) VALUES
(85, '196609142012121002', '', '', NULL, 'Iskandar, S.Si', 'S.Si', 'Jakarta', '1966-09-14', 'Laki-laki', 'Islam', '', '5', '05.44/M/KP/I/2013', '2013-01-07', '2012-12-01', 13, 'PURI NUSAPHALA L-11 JATI ASIH BEKASI', '', '', 0, '43/M/KP/II/2014', '2014-02-13', '2014-03-01', 13, 14, '112617/A2.2/KP/2017', '2017-12-12', '2017-10-01', '0000-00-00', 7, 121, 36, 13, '', '367/M/KP/2019', '2019-01-11', '2019-01-11', '0000-00-00', 32, '0000-00-00', '196609142012121002.jpg', 'NULL', 'iskandar@ymail.com', 'Kawin', 'S-1', 'Pendidikan Matematika dan IPA', '1990'),
(86, '198409162010012030', '', '', NULL, 'Nila Juwita, ST', 'ST', 'Bangka', '1984-09-16', 'Perempuan', '', '', '5', 'NULL', '0000-00-00', '0000-00-00', 0, '', '', '', 0, 'NULL', '0000-00-00', '0000-00-00', 0, 15, '', '0000-00-00', '2018-04-01', '0000-00-00', 7, 205, 36, 13, '', '', '0000-00-00', '0000-00-00', '0000-00-00', 32, '0000-00-00', 'default.jpg', 'NULL', 'NULL', '', 'S-1', 'Magister Teknik', '2015'),
(87, '197601262009101002', '', '', NULL, 'Rino', 'SE', 'Palembang', '1976-01-26', 'Laki-laki', '', '', '5', 'NULL', '0000-00-00', '0000-00-00', 0, '', '', '', 0, 'NULL', '0000-00-00', '0000-00-00', 0, 13, '', '0000-00-00', '2018-04-01', '0000-00-00', 7, 205, 36, 13, '', '', '0000-00-00', '0000-00-00', '0000-00-00', 32, '0000-00-00', 'default.jpg', 'NULL', 'NULL', '', 'S-1', 'Akuntansi', '2010'),
(88, '197512241999032004', '', '', NULL, 'Dewirina Zulfianita', 'S.Kom, M.I.Kom', 'Jakarta', '1975-12-24', 'Perempuan', '', '', '5', 'NULL', '0000-00-00', '0000-00-00', 0, '', '', '', 0, 'NULL', '0000-00-00', '0000-00-00', 0, 16, '', '0000-00-00', '2016-10-01', '0000-00-00', 7, 205, 36, 13, '', '', '0000-00-00', '0000-00-00', '0000-00-00', 32, '0000-00-00', 'default.jpg', 'NULL', 'NULL', '', 'S-2', 'Magister Ilmu Komunikasi', '2016'),
(89, '197506092005021001', '', '', NULL, 'Agus Prihartono, M.T', 'S.T., M.T.', 'Bandung', '1975-12-24', 'Laki-laki', '', '', '5', 'NULL', '0000-00-00', '0000-00-00', 0, '', '', '', 0, 'NULL', '0000-00-00', '0000-00-00', 0, 15, '', '0000-00-00', '0000-00-00', '0000-00-00', 7, 205, 36, 13, '', '', '0000-00-00', '0000-00-00', '0000-00-00', 32, '0000-00-00', 'default.jpg', 'NULL', 'NULL', '', 'S-2', 'Magister Teknik', '2013'),
(90, '197406032000121001', '', '', NULL, 'Bambang Herlambang,', 'ST, M.Si', 'Tangerang', '1974-06-03', 'Laki-laki', '', '', '5', 'NULL', '0000-00-00', '0000-00-00', 0, '', '', '', 0, 'NULL', '0000-00-00', '0000-00-00', 0, 16, '', '0000-00-00', '2014-10-01', '0000-00-00', 7, 205, 36, 13, '', '', '0000-00-00', '0000-00-00', '0000-00-00', 32, '0000-00-00', 'default.jpg', 'NULL', 'NULL', '', 'S-2', 'Magister Sains', '2012'),
(91, '199406012019032014', '', '', NULL, 'Yunida Hary Wardany', 'SE', 'Karanganyar', '1994-06-01', 'Perempuan', 'Islam', '', '5', '2792/M/KP/2019', '2019-02-28', '2019-03-01', 13, 'Pundung Rejo RT 04/RW 01, Jati, Kecamatan Jaten, Kab. Karanganyar, 57731', '', '', 0, 'NULL', '0000-00-00', '0000-00-00', 13, 13, '2792/M/KP/2019', '0000-00-00', '0000-00-00', '0000-00-00', 7, 26, 36, 13, '', '2792/M/KP/2019', '0000-00-00', '0000-00-00', '0000-00-00', 32, '0000-00-00', '199406012019032014.jpg', '081235817064', 'yunidahawa@gmail.com', 'Bujangan', 'S-1', 'Sarjana Akuntansi', '2017'),
(92, '199111052019032013', '', '', NULL, 'Uci Sri Sundari', 'SE', 'Jakarta', '1991-11-05', 'Perempuan', 'Islam', '', '5', '2793/M/KP/2019', '2019-02-28', '2019-03-01', 13, 'JL. GOTONG ROYONG NO. 6 RT.005/RW.001 KEL. BARU, KEC. PASAR REBO, JAKARTA TIMUR', '', '', 0, '', '0000-00-00', '0000-00-00', 0, 13, '', '0000-00-00', '1900-01-00', '0000-00-00', 7, 205, 36, 13, '', '', '0000-00-00', '0000-00-00', '0000-00-00', 32, '0000-00-00', '199111052019032013', '', 'ucisrisundari@gmail.com', 'Kawin', 'S-1', 'Sarjana Akuntansi', '2015'),
(93, '199508292019032012', '', '', NULL, 'Gracia Krisantiana Agustin', 'S.Si', 'Malang', '1995-08-29', 'Perempuan', 'Katolik', '', '5', '2791/M/KP/2019', '2019-02-28', '2019-03-01', 13, 'JL. MAWAR I/ 112-D RT 09/RW 14 KEL. LOWOKWARU KEC. LOWOKWARU, KOTA MALANG', '', '', 0, 'NULL', '0000-00-00', '0000-00-00', 0, 13, '2791/M/KP/2019', '2019-02-28', '2019-03-01', '0000-00-00', 7, 205, 36, 13, '', '', '0000-00-00', '0000-00-00', '0000-00-00', 32, '0000-00-00', '199508292019032012.jpg', '085755257565', 'graciakrisantiana29@gmail.com', 'Bujangan', 'S-1', 'Sarjanan Statistika', '2017'),
(94, '198510132019032005', '', '', NULL, 'Oktarina Elik', 'SH', 'Palembang', '1985-10-13', 'Perempuan', 'Islam', '', '5', '2789/M/KP/2019', '2019-02-28', '2019-03-01', 13, 'JL, ARIODILAH 1 NO 2004 RT 31 RW 11 KEC. ILIR TIMUR 1', '', '', 0, 'NULL', '0000-00-00', '0000-00-00', 0, 13, '', '0000-00-00', '1900-01-00', '0000-00-00', 7, 205, 36, 13, '', '', '0000-00-00', '0000-00-00', '0000-00-00', 32, '0000-00-00', '198510132019032005.jpg', 'NULL', 'oktarinaelik@yahoo.com', 'Kawin', 'S-1', 'Sarjana Hukum', '2007'),
(95, '199101222019031003', '', '', NULL, 'Darius Ruruk Paembonan', 'SH', 'Ujung Pandang', '1991-01-22', 'Laki-laki', 'Kristen', '', '5', '2790/M/KP/2019', '2019-02-28', '2019-03-01', 13, 'Jalan Kelapa Sawit 2/No. 9/ Rt. 10/Rw. 10, Kelurahan Utan Kayu Selatan, Kecamatan Matraman', '', '', 0, 'NULL', '0000-00-00', '0000-00-00', 0, 13, '', '0000-00-00', '1900-01-00', '0000-00-00', 7, 205, 36, 13, '', '', '0000-00-00', '0000-00-00', '0000-00-00', 32, '0000-00-00', '199101222019031003.jpg', 'NULL', 'rurukdarius@gmail.com', 'Bujangan', 'S-1', 'Sarjana Hukum', '2014'),
(96, '199011202019032017', '', '', NULL, 'Regina Putri Permatasari', 'SI.Kom', 'Bandung', '1990-11-20', 'Perempuan', 'Islam', '', '5', '2788/M/KP/2019', '2019-02-28', '2019-03-01', 13, 'JL. SEWU NO.1 KOMP CIBADUYUT PERMAI KEL/DES. CIBADUYUT KIDUL KEC. BOJONG LOAK KIDUL, KOTA BANDUNGJL. SEWU NO.1 KOMP CIBADUYUT PERMAI KEL/DES. CIBADUYUT KIDUL KEC. BOJONG LOAK KIDUL, KOTA BANDUNG', '', '', 0, 'NULL', '0000-00-00', '0000-00-00', 0, 13, '', '0000-00-00', '1900-01-00', '0000-00-00', 7, 205, 36, 13, '', '', '0000-00-00', '0000-00-00', '0000-00-00', 32, '0000-00-00', '199011202019032017.jpg', 'NULL', 'reginaputrip@gmail.com', 'Kawin', 'S-1', 'Sarjana Ilmu Komunikasi', '2014'),
(97, '199201052019032013', '', '', NULL, 'Ninik Puji Astuti', 'S.Psi', 'Bantul', '1992-01-05', 'Perempuan', 'Islam', '', '5', '2794/M/KP/2019', '2019-02-28', '2019-03-01', 13, 'RUKEMAN RT 04 TAMANTIRTO KASIHAN BANTUL', '', '', 0, '', '0000-00-00', '0000-00-00', 0, 22, '', '0000-00-00', '0000-00-00', '0000-00-00', 7, 205, 36, 13, '', '', '0000-00-00', '0000-00-00', '0000-00-00', 32, '0000-00-00', '199201052019032013', '085701070841', 'ninik.psyche92@gmail.com', 'Bujangan', 'S-1', 'Sarjana Psikologi', '2015'),
(98, '199404282019032021', '', '', NULL, 'Sarah Fairuz', 'S.Hum', 'Semarang', '1994-04-28', 'Perempuan', 'Islam', '', '5', '2795/M/KP/2019', '2019-02-28', '2019-03-01', 13, '\r\nJl. Pandana Merdeka A-12, RT.09 RW.03, Kelurahan Bringin, Kecamatan Ngaliyan 50189', '', '', 0, 'NULL', '0000-00-00', '0000-00-00', 0, 13, '', '0000-00-00', '1900-01-00', '0000-00-00', 7, 205, 36, 13, '', '', '0000-00-00', '0000-00-00', '0000-00-00', 32, '0000-00-00', '199404282019032021.jpg', 'NULL', 'Sarah.fairuz28@gmail.com', 'Bujangan', 'S-1', 'Sarjana Ilmu Kearsipan', '2016'),
(99, '198605292019031004', '', '', NULL, 'Aditya Randika', 'S.E', 'Bandung', '1986-05-29', 'Laki-laki', 'Islam', '', '5', '2778/M/KP/2019', '2019-02-28', '2019-03-01', 13, 'JL MERKURI SELATAN VI NO. 4, RT 06 RW 08, KELURAHAN MANJAHLEGA, KECAMATAN RANCASARI', '', '', 0, 'NULL', '0000-00-00', '0000-00-00', 0, 13, '', '0000-00-00', '1900-01-00', '0000-00-00', 7, 202, 36, 13, '', '', '0000-00-00', '0000-00-00', '0000-00-00', 32, '0000-00-00', '198605292019031004.jpg', 'NULL', 'adit.cm@gmail.com', 'Kawin', 'S-1', 'Sarjana Manajemen', '2010'),
(100, '199106202019031007', '', '', NULL, 'Raditya Danan Jaya', 'S.Kom', 'Bekasi', '1991-06-20', 'Laki-laki', 'Islam', '', '5', '2779/M/KP/2019', '2019-02-28', '2019-03-01', 13, 'Jl Kusuma timur raya blok C1 no 10 Rt 02/19 Perum Wisma Jaya Kel Aren Jaya Kec Bekasi Timur 17111', '', '', 0, 'NULL', '0000-00-00', '0000-00-00', 0, 13, '', '0000-00-00', '1900-01-00', '0000-00-00', 7, 79, 36, 13, '', '', '0000-00-00', '0000-00-00', '0000-00-00', 32, '0000-00-00', '199106202019031007.png', 'NULL', 'dananjaya.raditya@gmail.com', 'Kawin', 'S-1', 'Sarjana Teknik Informatika', '2016'),
(101, '199201252019031008', '', '', NULL, 'Dicky Kurniawan', 'ST', 'Depok', '1992-01-25', 'Laki-laki', 'Islam', '', '5', '2777/M/KP/2019', '2019-02-28', '2019-03-01', 13, 'Jl. Kemang RT 02 RW 02 No. 32, Kp. Babakan, Kel. Sukatani, Kec. Tapos, Kota Depok, Jawa Barat', '', '', 0, 'NULL', '0000-00-00', '0000-00-00', 0, 13, '2777/M/KP/2019', '0000-00-00', '0000-00-00', '0000-00-00', 7, 94, 36, 13, '', '2777/M/KP/2019', '0000-00-00', '0000-00-00', '0000-00-00', 32, '0000-00-00', '199201252019031008.jpg', 'NULL', 'dicky.kurniawan2501@gmail.com', 'Kawin', 'S-1', 'Sarjana Teknik Informatika', '2013'),
(102, '198901222019031003', '', '', NULL, 'Nurochim', 'S.Kom', 'Tegal', '1989-01-22', 'Laki-laki', '', '', '5', 'NULL', '0000-00-00', '0000-00-00', 0, '', '', '', 0, 'NULL', '0000-00-00', '0000-00-00', 0, 13, '', '0000-00-00', '1900-01-00', '0000-00-00', 7, 205, 36, 13, '', '', '0000-00-00', '0000-00-00', '0000-00-00', 32, '0000-00-00', 'default.jpg', 'NULL', 'NULL', '', 'S-1', 'Sarjana Sistem Informatika', '2018'),
(103, '199409062019032014', '', '', NULL, 'Shintya Asih Angelita Tampubolon', 'ST', 'Pematang Siantar', '1994-09-06', 'Perempuan', 'Kristen', '', '5', '2786/M/KP/2019', '2019-02-28', '2019-03-01', 13, 'KOPO PERMAI III 42B NO. 7-8, SUKAMENAK, MARGAHAYU, KAB. BANDUNG', '', '', 0, 'NULL', '0000-00-00', '0000-00-00', 0, 13, '', '0000-00-00', '1900-01-00', '0000-00-00', 7, 127, 36, 13, '', '', '0000-00-00', '0000-00-00', '0000-00-00', 32, '0000-00-00', '199409062019032014.jpg', 'NULL', 'shintyaasih@gmail.com', 'Bujangan', 'S-1', 'Sarjana Tehnik Industri', '2016'),
(104, '198804112019031012', '', '', NULL, 'Dody Apriadi Indrakusuma', 'SPT', 'Magelang', '1988-04-11', 'Laki-laki', 'Islam', '', '5', '2785/M/KP/2019', '2019-02-28', '2019-03-01', 13, 'TAMAN ANYELIR 2 BLOK F16/2, KELURAHAN KALIMULYA, KECAMATAN CILODONG', '', '', 0, 'NULL', '0000-00-00', '0000-00-00', 0, 13, '2785/M/KP/2019', '2019-02-28', '2019-03-01', '0000-00-00', 7, 137, 36, 13, '', '2785/M/KP/2019', '0000-00-00', '0000-00-00', '0000-00-00', 32, '0000-00-00', '198804112019031012.jpg', 'NULL', 'apriadidody@yahoo.com', 'Kawin', 'S-1', 'Sarjana Peternakan', '2010'),
(105, '199605132019031003', '', '', NULL, 'Andi Azhari Putra', 'S.P', 'Jakarta', '1996-05-13', 'Laki-laki', 'Islam', '', '5', '2782/M/KP/2019', '2019-02-28', '2019-03-01', 13, 'BUKIT DURI SELATAN VIII RT 07 RW 007 NO. 42, KELURAHAN BUKIT DURI, KECAMATAN TEBET 12840', '', '', 0, 'NULL', '0000-00-00', '0000-00-00', 0, 13, '', '0000-00-00', '1900-01-00', '0000-00-00', 7, 205, 36, 13, '', '', '0000-00-00', '0000-00-00', '0000-00-00', 32, '0000-00-00', '199605132019031003.jpg', 'NULL', 'andiazhari50@gmail.com', 'Bujangan', 'S-1', 'Sarjana Pertanian', '2017'),
(106, '199405092019032013', '', '', NULL, 'Mega Fatimah', 'S.Si', 'Bekasi', '1994-05-09', 'Perempuan', 'Islam', '', '5', '2784/M/KP/2019', '2019-02-28', '2019-03-01', 13, 'JALAN ROWOSARI RT.09/RW.01 WONOSARI NGALIYAN, KOTA SEMARANG', '', '', 0, 'NULL', '0000-00-00', '0000-00-00', 0, 13, '', '0000-00-00', '1900-01-00', '0000-00-00', 7, 154, 36, 13, '', '', '0000-00-00', '0000-00-00', '0000-00-00', 32, '0000-00-00', '199405092019032013.jpg', 'NULL', 'mega.fatimaah@gmail.com', 'Bujangan', 'S-1', 'Sarjana Kimia', '2017'),
(107, '198710302019032009', '', '', NULL, 'Lita Foresti', 'S.H', 'Demak', '1987-10-30', 'Perempuan', 'Islam', '', '5', '2780/M/KP/2019', '2019-02-28', '2019-03-01', 13, 'DESA BRAMBANG RT.04 RW.01 KECAMATAN KARANGAWEN KABUPATEN DEMAK', '', '', 0, 'NULL', '0000-00-00', '0000-00-00', 0, 13, '2780/M/KP/2019', '2019-02-28', '2019-03-01', '0000-00-00', 7, 205, 36, 13, '', '', '0000-00-00', '0000-00-00', '0000-00-00', 32, '0000-00-00', '198710302019032009.jpg', '085799462272', ' litaforesti@gmail.com', 'Bujangan', 'S-1', 'Darjana Hukum', '2015'),
(108, '199304052019031006', '', '', NULL, 'Moslem Afrizal', 'S.Stat', 'Jakarta', '1993-04-05', 'Laki-laki', 'Islam', '', '5', '2776/M/KP/2019', '2019-02-28', '2019-03-01', 13, '\r\nJl. Asem Baris Raya, Gg.F. RT 004/ RW 07, No. 35, Kebon Baru Tebet, Jakarta Selatan, 12830', '', '', 0, 'NULL', '0000-00-00', '0000-00-00', 0, 13, '2776/M/KP/2019', '2019-02-28', '2019-03-01', '0000-00-00', 7, 205, 36, 13, '', '', '0000-00-00', '0000-00-00', '0000-00-00', 32, '0000-00-00', '199304052019031006.jpg', ' 085693856488', 'rizalthemost@gmail.com', 'Bujangan', 'S-1', 'Sarjana Statistik', '2014'),
(109, '199307222019031008', '', '', NULL, 'Hanafi Ahmad Subrata Lubis', 'S.Kom', 'Kedai Durian', '1993-07-22', 'Laki-laki', 'Islam', '', '5', '2781/M/KP/2019', '2019-02-28', '2019-03-01', 13, 'JL. Satria NO. 110 DS. II Desa Mekar Sari Kecamatan Delitua', '', '', 0, 'NULL', '0000-00-00', '0000-00-00', 0, 13, '2781/M/KP/2019', '2019-02-28', '2019-03-01', '0000-00-00', 7, 205, 36, 13, '', '', '0000-00-00', '0000-00-00', '0000-00-00', 32, '0000-00-00', '199307222019031008.jpg', ' 081362967765', ' hanafiiahmad@gmail.com', 'Bujangan', 'S-1', 'Sarjana Ilmu Komputer', '2016'),
(110, '199501032019031010', '', '', NULL, 'Widi Fauzi Asari', 'ST', 'Bandung', '1995-01-03', 'Laki-laki', 'Islam', '', '5', '2876/M/KP/2019', '2019-02-28', '2019-03-01', 13, 'Kp.Lembang Ds. Kiangroke RT/RW 03/02 Kelurahan Kiangroke Kecamatan Banjaran Bandung Jawa Barat', '', '', 0, '', '0000-00-00', '0000-00-00', 0, 13, '2876/M/KP/2019', '2019-02-28', '2019-03-01', '0000-00-00', 7, 205, 36, 13, '', '', '0000-00-00', '0000-00-00', '0000-00-00', 32, '0000-00-00', '199501032019031010', '089667386111', ' widifauzi31@gmail.com', 'Bujangan', 'S-1', 'Sarjana Teknik Industri', '2017'),
(111, '', '', '', 'NULL', 'Aan Zaenudin', 'NULL', 'Indramayu', '1978-08-13', 'Laki-laki', 'Islam', '', '3', 'NULL', '0000-00-00', '0000-00-00', 0, 'Blok Tipar Rt 001/ Rw  006 Wirakanan Kecamatan Kandanghaur Indramayu', '', '', 0, 'NULL', '0000-00-00', '0000-00-00', 0, 22, 'R/01/F1.3/KP.13.01/2019', '2019-01-02', '2019-01-02', '0000-00-00', 7, 205, 36, 13, '', '', '0000-00-00', '0000-00-00', '0000-00-00', 32, '0000-00-00', 'default.jpg', '-', '-', 'Kawin', 'SMP', '', '1994'),
(112, '-', '', '', 'NULL', 'Aji Siswo Utomo', 'NULL', 'Jakarta', '1989-07-12', 'Laki-laki', 'Islam', '', '3', 'NULL', '0000-00-00', '0000-00-00', 0, 'Jalan Antene IV No  20 Rt 07 Rw 08 Jelurahan Kramat Pela  Kecamatan Kebayoran  Baru Jakarta Selatan', '', '', 0, 'NULL', '0000-00-00', '0000-00-00', 0, 22, 'R/10/F1.3/KP.13.01/2019', '2019-01-02', '2019-01-02', '0000-00-00', 7, 205, 36, 13, '', '', '0000-00-00', '0000-00-00', '0000-00-00', 32, '0000-00-00', '000000000000000112.png', '081299096665', 'ajisiswoutomo@gmail.com', 'Kawin', 'SMK ', 'Akuntansi', '2008'),
(113, '', '', '', 'NULL', 'Ahmad Firdaus Zamzami', 'NULL', 'Bogor', '1994-08-02', 'Laki-laki', 'Islam', '', '3', 'NULL', '0000-00-00', '0000-00-00', 0, 'Kp Medang RT 02 RW 08  Desa SUkamulya Kecamatan Rumpin  Kabupaten Bogor Jawa Barat', '', '', 0, 'NULL', '0000-00-00', '0000-00-00', 0, 22, 'R/07/F1.3/KP.13.01/2019', '2019-01-02', '2019-01-02', '0000-00-00', 7, 205, 36, 13, '', '', '0000-00-00', '0000-00-00', '0000-00-00', 32, '0000-00-00', 'default.jpg', '08161620654', '', 'Kawin', 'SMA', 'IPS', '2012'),
(114, '', '', '', 'NULL', 'Alwis,SE', 'NULL', 'Surantih', '1990-02-27', 'Laki-laki', 'Islam', '', '3', 'NULL', '0000-00-00', '0000-00-00', 0, 'Surantih Kota Buruk, Lubuk Alung Kecamatan Lubuk ALung Padang Pariaman SUmatera Barat', '', '', 0, 'NULL', '0000-00-00', '0000-00-00', 0, 22, 'R/11/F1.3/KP.13.01/2019', '2019-01-02', '2019-01-02', '0000-00-00', 7, 205, 36, 13, '', '', '0000-00-00', '0000-00-00', '0000-00-00', 32, '0000-00-00', 'default.jpg', '081275948347', 'alwis.abak@gmail.com', 'Bujangan', 'S1', 'Manajemen', '2015'),
(115, '', '', '', 'NULL', 'Aryanto', 'NULL', 'Tegal', '1991-03-10', 'Laki-laki', 'Islam', '', '3', 'NULL', '0000-00-00', '0000-00-00', 0, 'Jalan Bekasi Timur IV  Rt 012 RW 07 Cipinang Besar Utara  Kecamatan Jatinegara Jakarta Timur', '', '', 0, 'NULL', '0000-00-00', '0000-00-00', 0, 22, 'R/19/F1.3/KP.13.01/2019', '2019-01-02', '2019-01-02', '0000-00-00', 7, 205, 36, 13, '', '', '0000-00-00', '0000-00-00', '0000-00-00', 32, '0000-00-00', 'default.jpg', '085693558849', '', 'Bujangan', 'SMA', 'IPS', '2016'),
(116, '', '', '', 'NULL', 'Azys Ali Mubarok, S.Pd', 'NULL', 'Ciamis', '1991-08-17', 'Laki-laki', 'Islam', '', '3', 'NULL', '0000-00-00', '0000-00-00', 0, 'Bbg Dangdeur  Rt 004 RW 004  Kelurahan Pasir Biru Kecamatan Cibiru Bandung Jawa Barat', '', '', 0, 'NULL', '0000-00-00', '0000-00-00', 0, 22, 'R/20/F1.3/KP.13.01/2019', '2019-01-02', '2019-01-02', '0000-00-00', 7, 205, 36, 13, '', '', '0000-00-00', '0000-00-00', '0000-00-00', 32, '0000-00-00', 'default.jpg', '0818424191', 'azysalimubarok@gmail.com', 'Bujangan', 'S1', 'Pendiikan Bahasa Inggris', '2014'),
(117, '', '', '', 'NULL', 'Chairunnia Arviyani, AM.d', 'NULL', 'Jakarta', '1996-03-29', 'Perempuan', 'Islam', '', '3', 'NULL', '0000-00-00', '0000-00-00', 0, 'Jlan Kestarian X No 24  Rt 012/Rw 003 Kelurahan Kebon Manggis  Kecamatan Matraman Jakarta Timur', '', '', 0, 'NULL', '0000-00-00', '0000-00-00', 0, 22, 'R/21/F1.3/KP.13.01/2019', '2019-01-02', '2019-01-02', '0000-00-00', 7, 205, 36, 13, '', '', '0000-00-00', '0000-00-00', '0000-00-00', 32, '0000-00-00', 'default.jpg', '085778062272', 'karinarvi13@gmail.com', 'Bujangan', 'D3', 'Manajemen Agribisnis', '2016'),
(118, '', '', '', 'NULL', 'Diah Purnama S. SE', 'NULL', 'Jakarta', '1989-02-02', 'Perempuan', 'Islam', '', '3', 'NULL', '0000-00-00', '0000-00-00', 0, 'Komplek RRI No 56  Rt 009 RW 006 Kelurahan Tanjung Duren Selatan Kecamatan Grogol Jakarta Barat', '', '', 0, 'NULL', '0000-00-00', '0000-00-00', 0, 22, 'R/27/F1.3/KP.13.01/2019', '2019-01-02', '2019-01-02', '0000-00-00', 7, 205, 36, 13, '', '', '0000-00-00', '0000-00-00', '0000-00-00', 32, '0000-00-00', 'default.jpg', '087882440404', 'diahpurnama020289@gmai.com', 'Bujangan', 'S1', 'Manajemen', '2014'),
(119, '', '', '', 'NULL', 'Febrianto', 'NULL', 'Jakarta', '1988-02-23', 'Laki-laki', 'Islam', '', '3', 'NULL', '0000-00-00', '0000-00-00', 0, 'Lingk.Bojong Rt 07 Rw 019 Kelurahan Abadi Jaya  Kecamatan Sukma Jaya  Depok Jawa Barat', '', '', 0, 'NULL', '0000-00-00', '0000-00-00', 0, 22, 'R/13/F1.3/KP.13.01/2019', '2019-01-02', '2019-01-02', '0000-00-00', 7, 205, 36, 13, '', '', '0000-00-00', '0000-00-00', '0000-00-00', 32, '0000-00-00', 'default.jpg', '089699769232', 'febrianzallem@gmail.com', 'Bujangan', 'SMK', 'Teknik Mesin', '2006'),
(120, '', '', '', 'NULL', 'Firnaidi', 'NULL', 'Purwo Agung', '1986-09-05', 'Laki-laki', 'Islam', '', '3', 'NULL', '0000-00-00', '0000-00-00', 0, 'Rawa Bacong  RT 006 RW 012 Jatirahayu Kecamatan Pondok Melati Bekasi', '', '', 0, 'NULL', '0000-00-00', '0000-00-00', 0, 22, 'R/13/F1.3/KP.13.01/2019', '2019-01-02', '2019-01-02', '0000-00-00', 7, 205, 36, 13, '', '', '0000-00-00', '0000-00-00', '0000-00-00', 32, '0000-00-00', 'default.jpg', '', '', 'Kawin', 'SLTA', 'IPS', ''),
(121, '', '', '', 'NULL', 'Grinanda Megantika, S. Hint', 'NULL', 'Sukabumi', '1989-12-04', 'Perempuan', 'Islam', '', '3', 'NULL', '0000-00-00', '0000-00-00', 0, 'Jalan Buaran III No MD/8 RT 005 RW 15 Kelurahan Duren Sawit  Kecamatan Duren Sawit Jakarta Timur', '', '', 0, 'NULL', '0000-00-00', '0000-00-00', 0, 22, 'R/18/F1.3/KP.13.01/2019', '2019-01-02', '2019-01-02', '0000-00-00', 7, 205, 36, 13, '', '', '0000-00-00', '0000-00-00', '0000-00-00', 32, '0000-00-00', 'default.jpg', '081391717175', 'g.megantika@gmail.com', 'Bujangan', 'S1', 'Hubungan Internasional', '2014'),
(122, '', '', '', 'NULL', 'Fitri Rahmadhani Arafah, S.Sos', 'NULL', 'Ujung Pandang', '1995-02-17', 'Perempuan', 'Islam', '', '3', 'NULL', '0000-00-00', '0000-00-00', 0, 'Jalan Nusa Indah No 18 Lrg 306 Mariso, Makassar', '', '', 0, 'NULL', '0000-00-00', '0000-00-00', 0, 22, 'R/38/F1.3/KP.13.01/2019', '2019-01-02', '2019-01-02', '0000-00-00', 7, 205, 36, 13, '', '', '0000-00-00', '0000-00-00', '0000-00-00', 32, '0000-00-00', '000000000000000122.PNG', '085243204270', 'fitrirahmadhaniarafah1@gmail.com', 'Bujangan', 'S1', 'Kominukasi Penyiaran Agama Isla', '2017'),
(123, '', '', '', 'NULL', 'Karina Maharani, S.IP', 'NULL', 'Jakarta', '1988-09-04', 'Perempuan', 'Islam', '', '3', 'NULL', '0000-00-00', '0000-00-00', 0, 'Jalan Raya Condet No 08  Rt 012 RW 05 Kelurahan Cililitan Kecamatan Kramat Jati  Jakarta Timur', '', '', 0, 'NULL', '0000-00-00', '0000-00-00', 0, 22, 'R/22/F1.3/KP.13.01/2019', '2019-01-02', '2019-01-02', '0000-00-00', 7, 205, 36, 13, '', '', '0000-00-00', '0000-00-00', '0000-00-00', 32, '0000-00-00', 'default.jpg', '081285091988', 'ceryn_19@yahoo.co.id', 'Bujangan', 'S1', 'Ilmu Pemerintahan ', '2011'),
(124, '', '', '', 'NULL', 'Kasedyo Rahardjo', 'NULL', 'Surakarta', '1955-07-05', 'Laki-laki', 'Kristen', '', '3', 'NULL', '0000-00-00', '0000-00-00', 0, 'Komplek Setneg Blok AV 16  RT 03 RW 03 Kelurahan Panunggangan  Utara Kecamatan Pinang Kota Tangerang Banten ', '', '', 0, 'NULL', '0000-00-00', '0000-00-00', 0, 22, 'R/23/F1.3/KP.13.01/2019', '2019-01-02', '2019-01-02', '0000-00-00', 7, 205, 36, 13, '', '', '0000-00-00', '0000-00-00', '0000-00-00', 32, '0000-00-00', 'default.jpg', '081310763495', '', 'Kawin', 'S1', 'Ilmu Adminitrasi ', '2001'),
(125, '', '', '', 'NULL', 'Marisa Siregar, S.Ilkom', 'NULL', 'Jakarta', '1985-08-04', 'Perempuan', 'Islam', '', '3', 'NULL', '0000-00-00', '0000-00-00', 0, 'Jalan Gandaria 1 Gang Cemara RT 003 RW 008 Kelurahan Kramat Pela Kecamatan Kebayoran Baru Jakarta Selatan ', '', '', 0, 'NULL', '0000-00-00', '0000-00-00', 0, 22, 'R/24/F1.3/KP.13.01/2019', '2019-01-02', '2019-01-02', '0000-00-00', 7, 205, 36, 13, '', '', '0000-00-00', '0000-00-00', '0000-00-00', 32, '0000-00-00', 'default.jpg', '081299398111', 'marisa_siregar@yahoo.com', 'Bujangan', 'S1', 'Ilmu Komunikasi', '2008'),
(126, '', '', '', 'NULL', 'Mulya Saputra', 'NULL', 'Jakarta', '1971-02-12', 'Laki-laki', 'Islam', '', '3', 'NULL', '0000-00-00', '0000-00-00', 0, 'Kp. Medang Rt 001 RW 008 Desa Sukamulya Kecmatan Rumpin Kabupaten Bogor Jawa Barat', '', '', 0, 'NULL', '0000-00-00', '0000-00-00', 0, 22, 'R/06/F1.3/KP.13.01/2019', '2019-01-02', '2019-01-02', '0000-00-00', 7, 205, 36, 13, '', '', '0000-00-00', '0000-00-00', '0000-00-00', 32, '0000-00-00', 'default.jpg', '085888560579', '', 'Bujangan', 'STM', '', '1993'),
(127, '', '', '', 'NULL', 'Mohammad Istiadi', 'NULL', 'Pati', '1993-12-27', 'Laki-laki', 'Islam', '', '3', 'NULL', '0000-00-00', '0000-00-00', 0, 'Desa Tayu Wetan RT 002 RW 002 Kecamatan Tayu Kabupaten Pati', '', '', 0, 'NULL', '0000-00-00', '0000-00-00', 0, 22, 'R/09/F1.3/KP.13.01/2019', '2019-01-02', '2019-01-02', '0000-00-00', 7, 205, 36, 13, '', '', '0000-00-00', '0000-00-00', '0000-00-00', 32, '0000-00-00', 'default.jpg', '085741488288', 'mohammadistiadi2717@gmail.com', 'Kawin', 'S1', 'Pertenakan', '2016'),
(128, '', '', '', 'NULL', 'Mohammad Mustakim ', 'NULL', 'Jakarta', '1997-07-05', 'Laki-laki', 'Islam', '', '3', 'NULL', '0000-00-00', '0000-00-00', 0, 'Kp Pertukangan Rt 009 RW 005 Kelurahan Rawa Ternate Kecmatan Cakung Jakarta Timur', '', '', 0, 'NULL', '0000-00-00', '0000-00-00', 0, 22, 'R/15/F1.3/KP.13.01/2019', '2019-01-02', '2019-01-02', '0000-00-00', 7, 205, 36, 13, '', '', '0000-00-00', '0000-00-00', '0000-00-00', 32, '0000-00-00', 'default.jpg', '', '', 'Bujangan', 'SMA', 'IPS ', '2004'),
(129, '', '', '', 'NULL', 'Nila Ulya, S.SI', 'NULL', 'Pati', '1994-08-19', 'Perempuan', 'Islam', '', '3', 'NULL', '0000-00-00', '0000-00-00', 0, 'Kp. Domenggalan Rt 08 Rw 03 Bintoro Demak Jawa Tengah', '', '', 0, 'NULL', '0000-00-00', '0000-00-00', 0, 22, 'R/25/F1.3/KP.13.01/2019', '2019-01-02', '2019-01-02', '0000-00-00', 7, 205, 36, 13, '', '', '0000-00-00', '0000-00-00', '0000-00-00', 32, '0000-00-00', 'default.jpg', '085642855763', 'ulyanila19@gmail.com', 'Bujangan', 'S1', 'Fisika', '2016'),
(130, '', '', '', 'NULL', 'Ningrum Widya Putri', 'NULL', 'Jakarta', '1996-12-21', 'Perempuan', 'Islam', '', '3', 'NULL', '0000-00-00', '0000-00-00', 0, 'Jalan Tebet Dalam IV No 22 RT 018 RW 001 Kelurahan tebet Kecmatan tebet Jakarta Selatan', '', '', 0, 'NULL', '0000-00-00', '0000-00-00', 0, 22, 'R/26/F1.3/KP.13.01/2019', '2019-01-02', '2019-01-02', '0000-00-00', 7, 205, 36, 13, '', '', '0000-00-00', '0000-00-00', '0000-00-00', 32, '0000-00-00', 'default.jpg', '083812732504', 'ningrumwidya496@gmail.com', 'Bujangan', 'SMK', 'Ilmu Pariwisata', ''),
(131, '', '', '', 'NULL', 'Rusnadi', 'NULL', 'Sumedang', '1958-05-28', 'Laki-laki', 'Islam', '', '3', 'NULL', '0000-00-00', '0000-00-00', 0, 'Jalan Raya Condet No 08  Rt 012 RW 05 Kelurahan Cililitan Kecamatan Kramat Jati  Jakarta Timur', '', '', 0, 'NULL', '0000-00-00', '0000-00-00', 0, 22, 'R/28/F1.3/KP.13.01/2019', '2019-01-02', '2019-01-02', '0000-00-00', 7, 205, 36, 13, '', '', '0000-00-00', '0000-00-00', '0000-00-00', 32, '0000-00-00', 'default.jpg', '', '', 'Kawin', 'D3', '', ''),
(132, '', '', '', 'NULL', 'Nurjannah, SH', 'NULL', 'Jakarta', '1993-10-29', 'Laki-laki', 'Islam', '', '3', 'NULL', '0000-00-00', '0000-00-00', 0, 'Perum Gerilya Palm Hijau D8 Godean Yogyakarta', '', '', 0, 'NULL', '0000-00-00', '0000-00-00', 0, 22, 'R/38/F1.3/KP.13.01/2019', '2019-01-02', '2019-01-02', '0000-00-00', 7, 205, 36, 13, '', '', '0000-00-00', '0000-00-00', '0000-00-00', 32, '0000-00-00', 'default.jpg', '082219346700', 'andinurjannah29@gmail.com', 'Bujangan', 'S1', 'Ilmu Hukum ', ''),
(133, '', '', '', 'NULL', 'Rahmatika Jihad', 'NULL', 'Jakarta', '1995-10-23', 'Perempuan', 'Islam', '', '3', 'NULL', '0000-00-00', '0000-00-00', 0, 'BLK R GG II/11, RT/RW 04/08 Semper Barat Cilincing  Jakarta Utara', '', '', 0, 'NULL', '0000-00-00', '0000-00-00', 0, 22, 'R/39/F1.3/KP.13.01/2019', '2019-01-02', '2019-01-02', '0000-00-00', 7, 205, 36, 13, '', '', '0000-00-00', '0000-00-00', '0000-00-00', 32, '0000-00-00', '000000000000000133.PNG', '082299292824', 'jihadrahmatika@gmail.com', 'Bujangan', 'S1', 'Sosiologi', '2017'),
(134, '', '', '', 'NULL', 'Riyan Alvian', 'NULL', 'Jakarta', '1993-12-31', 'Laki-laki', 'Islam', '', '3', 'NULL', '0000-00-00', '0000-00-00', 0, 'Bj Mneteng GG Melati RT 002 RW 006 Bojong Menteng Rawalumbu Kota Bekasi', '', '', 0, 'NULL', '0000-00-00', '0000-00-00', 0, 22, 'R/05/F1.3/KP.13.01/2019', '2019-01-02', '2019-01-02', '0000-00-00', 7, 205, 36, 13, '', '', '0000-00-00', '0000-00-00', '0000-00-00', 32, '0000-00-00', 'default.jpg', '081282444190', '', 'Bujangan', 'SMA', '', ''),
(135, '', '', '', 'NULL', 'Rizka Khoirulika, S.Sos', 'NULL', 'Semarang', '1991-09-03', 'Laki-laki', 'Islam', '', '3', 'NULL', '0000-00-00', '0000-00-00', 0, 'Bonowati Tengah II No 2  RT 005 RW 005  Bulu Lor Kecamatan Semarang Utara Semarang Jawa Tengah', '', '', 0, 'NULL', '0000-00-00', '0000-00-00', 0, 22, 'R/08/F1.3/KP.13.01/2019', '2019-01-02', '2019-01-02', '0000-00-00', 7, 205, 36, 13, '', '', '0000-00-00', '0000-00-00', '0000-00-00', 32, '0000-00-00', 'default.jpg', '08562660026', 'rizka khoirulika@gmail.com', 'Bujangan', 'S1', 'Ilmu Sosiantri', '2014'),
(136, '', '', '', 'NULL', 'Saepul Bahri', 'NULL', 'Bogor', '1986-01-10', 'Laki-laki', 'Islam', '', '3', 'NULL', '0000-00-00', '0000-00-00', 0, 'Kp Cibentang RT 03 RW 02 Ds Cihoe Kec, Ciseeng Kabupaten Bogor', '', '', 0, 'NULL', '0000-00-00', '0000-00-00', 0, 22, 'R/30/F1.3/KP.13.01/2019', '2019-01-02', '2019-01-02', '0000-00-00', 7, 205, 36, 13, '', '', '0000-00-00', '0000-00-00', '0000-00-00', 32, '0000-00-00', 'default.jpg', '087742623199', '', 'Kawin', 'SMK ', '', ''),
(137, '', '', '', 'NULL', 'Sumarno', 'NULL', 'Karanganyar ', '1978-02-28', 'Laki-laki', 'Islam', '', '3', 'NULL', '0000-00-00', '0000-00-00', 0, 'Perum Taman Walet  Blok SF 10/09 Rt 03 Rw 09 Desa Sindang Sari Kecamatan Pasar Kemis Kabupaten Tangerang', '', '', 0, 'NULL', '0000-00-00', '0000-00-00', 0, 22, 'R/29/F1.3/KP.13.01/2019', '2019-01-02', '2019-01-02', '0000-00-00', 7, 205, 36, 13, '', '', '0000-00-00', '0000-00-00', '0000-00-00', 32, '0000-00-00', 'default.jpg', '082112194178', '', 'Kawin', 'SMA', '', ''),
(138, '', '', '', 'NULL', 'Suparlan', 'NULL', 'Pacitan', '1975-10-23', 'Laki-laki', 'Islam', '', '3', 'NULL', '0000-00-00', '0000-00-00', 0, 'Jalan Ciptomangunkusumo Rt 01 RW 05 Kelurahan Paninggiling Utara CIledug Kabupaten Tangerang', '', '', 0, 'NULL', '0000-00-00', '0000-00-00', 0, 22, 'R/02/F1.3/KP.13.01/2019', '2019-01-02', '2019-01-02', '0000-00-00', 7, 205, 36, 13, '', '', '0000-00-00', '0000-00-00', '0000-00-00', 32, '0000-00-00', 'default.jpg', '081386703442', '', 'Kawin', 'SMP', '', ''),
(139, '', '', '', 'NULL', 'Syifa Khoiriyah', 'NULL', 'Bogor', '1996-01-04', 'Perempuan', 'Islam', '', '3', 'NULL', '0000-00-00', '0000-00-00', 0, 'Sempu Indah Rt 03 RW 01 Desa Cipayung Kecamatan Pancoran Mas Depok Jawa Barat', '', '', 0, 'NULL', '0000-00-00', '0000-00-00', 0, 22, 'R/16/F1.3/KP.13.01/2019', '2019-01-02', '2019-01-02', '0000-00-00', 7, 205, 36, 13, '', '', '0000-00-00', '0000-00-00', '0000-00-00', 32, '0000-00-00', 'default.jpg', '081291694226', 'syifakhoiriyah242@yahoo.co.id', 'Bujangan', 'SMK', '', ''),
(140, '', '', '', 'NULL', 'Teddy Adhitya, SH', 'NULL', 'Jakarta', '1981-01-18', 'Laki-laki', 'Islam', '', '3', 'NULL', '0000-00-00', '0000-00-00', 0, 'Jalan Swadaya 1 RT 002 RW 006 Desa Jati Jajar Kecamatan Tapos Depok Jawa Barat', '', '', 0, 'NULL', '0000-00-00', '0000-00-00', 0, 22, 'R/14/F1.3/KP.13.01/2019', '2019-01-02', '2019-01-02', '0000-00-00', 7, 205, 36, 13, '', '', '0000-00-00', '0000-00-00', '0000-00-00', 32, '0000-00-00', 'default.jpg', '087885122804', 'tdy_1888@yahoo.co.id', 'Kawin', 'S1', 'Hukum ', '2004'),
(141, '', '', '', 'NULL', 'Yadi Wahyudin', 'NULL', 'Cianjur', '1990-02-21', 'Laki-laki', 'Islam', '', '3', 'NULL', '0000-00-00', '0000-00-00', 0, 'Kp Belender RT 003 RW 001 Kelurahan Padajaya Kecamatan Cikalong  Kulon Cianjur Jawa Barat', '', '', 0, 'NULL', '0000-00-00', '0000-00-00', 0, 22, 'R/32/F1.3/KP.13.01/2019', '2019-01-02', '2019-01-02', '0000-00-00', 7, 205, 36, 13, '', '', '0000-00-00', '0000-00-00', '0000-00-00', 32, '0000-00-00', 'default.jpg', '085211075809', '', 'Kawin', 'SMA', '', ''),
(142, '', '', '', 'NULL', 'Yani Apriyani, S.S', 'NULL', 'Bandung', '1986-08-06', 'Perempuan', 'Islam', '', '3', 'NULL', '0000-00-00', '0000-00-00', 0, 'Perum Dasana Indah Blok UC Rt 17 RW 24 Kelurahan Bonang Kecamatan Kelapa Dua Kecamatan tangerang', '', '', 0, 'NULL', '0000-00-00', '0000-00-00', 0, 22, 'R/31/F1.3/KP.13.01/2019', '2019-01-02', '2019-01-02', '0000-00-00', 7, 205, 36, 13, '', '', '0000-00-00', '0000-00-00', '0000-00-00', 32, '0000-00-00', 'default.jpg', '085659040026', 'cikal.yani08@yahoo.com', 'Kawin', 'S1', 'Sastra Inggris ', '2008'),
(143, '', '', '', 'NULL', 'Yumedia Karlina Nancy, S.Si', 'NULL', 'Makale', '1987-04-15', 'Perempuan', 'Kristen', '', '3', 'NULL', '0000-00-00', '0000-00-00', 0, 'Jlan Bongas VE 8/13 Jati Waringin Asri RT 05 RW 07 Desa Jati Makmur  Kecamatan Pondok Gede Bekasi', '', '', 0, 'NULL', '0000-00-00', '0000-00-00', 0, 22, 'R/12/F1.3/KP.13.01/2019', '2019-01-02', '2019-01-02', '0000-00-00', 7, 205, 36, 13, '', '', '0000-00-00', '0000-00-00', '0000-00-00', 32, '0000-00-00', 'default.jpg', '085242341076', '', 'Bujangan', 'S1', 'Fisika', ''),
(144, '', '', '', 'NULL', 'Yuni Lestari Dewi, A.Md', 'NULL', 'Jakarta', '1994-06-04', 'Perempuan', 'Islam', '', '3', 'NULL', '0000-00-00', '0000-00-00', 0, 'Jalan Bintara 12 RT 03 RW 08 Bintra Kecamatan  Bekasi Barat bekasi', '', '', 0, 'NULL', '0000-00-00', '0000-00-00', 0, 22, 'R/34/F1.3/KP.13.01/2019', '2019-01-02', '2019-01-02', '0000-00-00', 7, 205, 36, 13, '', '', '0000-00-00', '0000-00-00', '0000-00-00', 32, '0000-00-00', 'default.jpg', '087777616461', '', 'Bujangan', 'D3', 'Manajemen Produksi', '2015'),
(145, '', '', '', 'NULL', 'Karmo', 'NULL', 'Cepu', '1968-03-15', 'Laki-laki', 'Islam', '', '3', 'NULL', '0000-00-00', '0000-00-00', 0, 'Jalan Bontang 2 No 57 Jatiwaringin Pondok Gede Kota Bekasi', '', '', 0, 'NULL', '0000-00-00', '0000-00-00', 0, 22, 'R/04/F1.3/KP.13.01/2019', '2019-01-02', '2019-01-02', '0000-00-00', 7, 205, 36, 13, '', '', '0000-00-00', '0000-00-00', '0000-00-00', 32, '0000-00-00', 'default.jpg', '08121989864', 'karmo1505@gmail.com', 'Kawin', 'SMA', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_data_pegawai_x`
--

CREATE TABLE `tbl_data_pegawai_x` (
  `id_pegawai` int(50) NOT NULL,
  `nip` varchar(20) NOT NULL,
  `nip_lama` varchar(20) NOT NULL,
  `no_kartu_pegawai` varchar(20) NOT NULL,
  `gelar_depan` varchar(20) DEFAULT NULL,
  `nama_pegawai` varchar(150) NOT NULL,
  `gelar_belakang` varchar(20) DEFAULT NULL,
  `tempat_lahir` varchar(150) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `jenis_kelamin` enum('Laki-laki','Perempuan') NOT NULL,
  `agama` enum('Islam','Kristen','Katolik','Hindu','Budha','Konghuchu','Aliran Kepercayaan','-') NOT NULL,
  `usia` varchar(2) NOT NULL,
  `status_pegawai` varchar(50) NOT NULL,
  `tanggal_pengangkatan_cpns` date NOT NULL,
  `alamat` text NOT NULL,
  `no_npwp` varchar(20) NOT NULL,
  `kartu_askes_pegawai` varchar(20) NOT NULL,
  `status_pegawai_pangkat` tinyint(4) DEFAULT NULL,
  `no_sk_pns` varchar(50) DEFAULT NULL,
  `tanggal_sk_pns` date DEFAULT NULL,
  `id_golongan` int(20) NOT NULL,
  `nomor_sk_pangkat` varchar(50) NOT NULL,
  `tanggal_sk_pangkat` date NOT NULL,
  `tanggal_mulai_pangkat` date NOT NULL,
  `tanggal_selesai_pangkat` date NOT NULL,
  `id_status_jabatan` int(20) NOT NULL,
  `id_jabatan` int(20) NOT NULL,
  `id_unit_kerja` int(20) NOT NULL,
  `id_satuan_kerja` int(20) NOT NULL,
  `lokasi_kerja` varchar(100) NOT NULL,
  `nomor_sk_jabatan` varchar(50) NOT NULL,
  `tanggal_sk_jabatan` date NOT NULL,
  `tanggal_mulai_jabatan` date NOT NULL,
  `tanggal_selesai_jabatan` date NOT NULL,
  `id_eselon` int(20) NOT NULL,
  `tmt_eselon` date NOT NULL,
  `foto` varchar(100) NOT NULL DEFAULT 'default.jpg',
  `telepon` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `status_kawin` enum('Bujangan','Kawin','Tidak Kawin') DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_data_pegawai_x`
--

INSERT INTO `tbl_data_pegawai_x` (`id_pegawai`, `nip`, `nip_lama`, `no_kartu_pegawai`, `gelar_depan`, `nama_pegawai`, `gelar_belakang`, `tempat_lahir`, `tanggal_lahir`, `jenis_kelamin`, `agama`, `usia`, `status_pegawai`, `tanggal_pengangkatan_cpns`, `alamat`, `no_npwp`, `kartu_askes_pegawai`, `status_pegawai_pangkat`, `no_sk_pns`, `tanggal_sk_pns`, `id_golongan`, `nomor_sk_pangkat`, `tanggal_sk_pangkat`, `tanggal_mulai_pangkat`, `tanggal_selesai_pangkat`, `id_status_jabatan`, `id_jabatan`, `id_unit_kerja`, `id_satuan_kerja`, `lokasi_kerja`, `nomor_sk_jabatan`, `tanggal_sk_jabatan`, `tanggal_mulai_jabatan`, `tanggal_selesai_jabatan`, `id_eselon`, `tmt_eselon`, `foto`, `telepon`, `email`, `status_kawin`) VALUES
(1, '196411171986031007', '', '', NULL, 'MASRIL,S.Sos.ME', NULL, 'Padang', '1964-11-17', 'Laki-laki', 'Islam', '', '5', '1986-03-01', 'Jalan Padang Nomor 13 Kota Jakarta', '', '', 0, NULL, NULL, 6, 'No. : 1986-03-01/6', '1986-03-01', '1986-03-01', '1990-03-01', 0, 0, 0, 0, '', '', '0000-00-00', '0000-00-00', '0000-00-00', 0, '0000-00-00', '196411171986031007.png', '088738140732', 'masril@gmail.com', NULL),
(2, '197012121990071001', '', '', NULL, 'MARJOHAN,S.Pd.M.Si', NULL, 'Rantau Ikil', '1970-12-12', 'Laki-laki', 'Islam', '', '5', '1992-06-01', 'Jalan Rantau Ikil Nomor 6 Kota Jakarta', '', '', 0, NULL, NULL, 6, 'No. : 1992-06-01/6', '1992-06-01', '1992-06-01', '1996-06-01', 0, 0, 0, 0, '', '', '0000-00-00', '0000-00-00', '0000-00-00', 0, '0000-00-00', '197012121990071001.png', '085781482919', 'marjohan@gmail.com', NULL),
(3, '196802041995121001', '', '', NULL, 'HAMIM ASRORI,S.Pd.M.Si', NULL, 'Winong Pati', '1968-02-04', 'Laki-laki', 'Islam', '', '5', '1995-12-01', 'Jalan Winong Pati Nomor 4 Kota Jakarta', '', '', 0, NULL, NULL, 10, 'No. : 1995-12-01/10', '1995-12-01', '1995-12-01', '1999-12-01', 0, 0, 0, 0, '', '', '0000-00-00', '0000-00-00', '0000-00-00', 0, '0000-00-00', '196802041995121001.png', '085994990843', 'hamimasrori@gmail.com', NULL),
(4, '196303021983012001', '', '', NULL, 'YUSMALINDA,S.Pd.MM', NULL, 'Bungo', '1963-03-02', 'Laki-laki', 'Islam', '', '5', '1983-01-01', 'Jalan Bungo Nomor 19 Kota Jakarta', '', '', 0, NULL, NULL, 6, 'No. : 1983-01-01/6', '1983-01-01', '1983-01-01', '1987-01-01', 0, 0, 0, 0, '', '', '0000-00-00', '0000-00-00', '0000-00-00', 0, '0000-00-00', '196303021983012001.png', '082668344217', 'yusmalinda@gmail.com', NULL),
(5, '196309071983011001', '', '', NULL, 'AZRAI, S.Pd ', NULL, 'Bungo', '1963-09-07', 'Laki-laki', 'Islam', '', '5', '1983-01-01', 'Jalan Bungo Nomor 17 Kota Jakarta', '', '', 0, NULL, NULL, 6, 'No. : 1983-01-01/6', '1983-01-01', '1983-01-01', '1987-01-01', 0, 0, 0, 0, '', '', '0000-00-00', '0000-00-00', '0000-00-00', 0, '0000-00-00', '196309071983011001.png', '081381925238', 'azrai@gmail.com', NULL),
(6, '196701131990031006', '', '', NULL, 'TRIYONO,S.Pd.M.Pd.I', NULL, 'Sukoharjo', '1967-01-13', 'Laki-laki', 'Islam', '', '5', '1990-01-10', 'Jalan Sukoharjo Nomor 1 Kota Jakarta', '', '', 0, NULL, NULL, 10, 'No. : 1990-01-10/10', '1990-01-10', '1990-01-10', '1994-01-10', 0, 0, 0, 0, '', '', '0000-00-00', '0000-00-00', '0000-00-00', 0, '0000-00-00', '196701131990031006.png', '081378692970', 'triyono@gmail.com', NULL),
(7, '196312311990101003', '', '', NULL, 'Drs. H. SYOFYAN. H ', NULL, 'Koto Jayo', '1963-12-31', 'Laki-laki', 'Islam', '', '5', '1990-01-10', 'Jalan Koto Jayo Nomor 19 Kota Jakarta', '', '', 0, NULL, NULL, 10, 'No. : 1990-01-10/10', '1990-01-10', '1990-01-10', '1994-01-10', 0, 0, 0, 0, '', '', '0000-00-00', '0000-00-00', '0000-00-00', 0, '0000-00-00', '196312311990101003.png', '086184478713', 'drshsyofyanh@gmail.com', NULL),
(8, '197010051992041001', '', '', NULL, 'NASRUN,S.Pd,MM', NULL, 'Tanah Periuk', '1970-10-05', 'Laki-laki', 'Islam', '', '5', '1992-04-01', 'Jalan Tanah Periuk Nomor 20 Kota Jakarta', '', '', 0, NULL, NULL, 6, 'No. : 1992-04-01/6', '1992-04-01', '1992-04-01', '1996-04-01', 0, 0, 0, 0, '', '', '0000-00-00', '0000-00-00', '0000-00-00', 0, '0000-00-00', '197010051992041001.png', '087391068905', 'nasrun@gmail.com', NULL),
(9, '196012131981032002', '', '', NULL, 'PUJI PANGESTUTI', NULL, 'Ma.Bungo', '1960-12-13', 'Perempuan', 'Islam', '', '5', '1981-03-01', 'Jalan Ma.Bungo Nomor 9 Kota Jakarta', '', '', 0, NULL, NULL, 6, 'No. : 1981-03-01/6', '1981-03-01', '1981-03-01', '1985-03-01', 0, 0, 0, 0, '', '', '0000-00-00', '0000-00-00', '0000-00-00', 0, '0000-00-00', '196012131981032002.png', '084431797728', 'pujipangestuti@gmail.com', NULL),
(10, '196208071983101002', '', '', NULL, 'JUNAIDI,A.Ma.Pd', NULL, 'Empelu', '1962-10-07', 'Laki-laki', 'Islam', '', '5', '1983-10-01', 'Jalan Empelu Nomor 15 Kota Jakarta', '', '', 0, NULL, NULL, 6, 'No. : 1983-10-01/6', '1983-10-01', '1983-10-01', '1987-10-01', 0, 0, 0, 0, '', '', '0000-00-00', '0000-00-00', '0000-00-00', 0, '0000-00-00', '196208071983101002.png', '088121065556', 'junaidi@gmail.com', NULL),
(11, '196301151984032004', '', '', NULL, 'NURBAITI', NULL, 'Jambi', '1963-01-15', 'Perempuan', 'Islam', '', '5', '1984-03-01', 'Jalan Jambi Nomor 16 Kota Jakarta', '', '', 0, NULL, NULL, 6, 'No. : 1984-03-01/6', '1984-03-01', '1984-03-01', '1988-03-01', 0, 0, 0, 0, '', '', '0000-00-00', '0000-00-00', '0000-00-00', 0, '0000-00-00', '196301151984032004.png', '089690991083', 'nurbaiti@gmail.com', NULL),
(12, '196312011983101001', '', '', NULL, 'KASIM ', NULL, 'Bungo', '1963-12-01', 'Laki-laki', 'Islam', '', '5', '1983-10-01', 'Jalan Bungo Nomor 1 Kota Jakarta', '', '', 0, NULL, NULL, 6, 'No. : 1983-10-01/6', '1983-10-01', '1983-10-01', '1987-10-01', 0, 0, 0, 0, '', '', '0000-00-00', '0000-00-00', '0000-00-00', 0, '0000-00-00', '196312011983101001.png', '089942660372', 'kasim@gmail.com', NULL),
(13, '196508241985032002', '', '', NULL, 'LILI SURIANI,S.IP', NULL, 'Muara Bungo', '1965-08-25', 'Perempuan', 'Islam', '', '5', '1985-03-01', 'Jalan Muara Bungo Nomor 16 Kota Jakarta', '', '', 0, NULL, NULL, 6, 'No. : 1985-03-01/6', '1985-03-01', '1985-03-01', '1989-03-01', 0, 0, 0, 0, '', '', '0000-00-00', '0000-00-00', '0000-00-00', 0, '0000-00-00', '196508241985032002.png', '089125166174', 'lilisuriani@gmail.com', NULL),
(14, '196904061990022001', '', '', NULL, 'HENYWATI,S.IP', NULL, 'Jambi', '1969-04-06', 'Laki-laki', 'Islam', '', '5', '1991-01-01', 'Jalan Jambi Nomor 8 Kota Jakarta', '', '', 0, NULL, NULL, 6, 'No. : 1991-01-01/6', '1991-01-01', '1991-01-01', '1995-01-01', 0, 0, 0, 0, '', '', '0000-00-00', '0000-00-00', '0000-00-00', 0, '0000-00-00', '196904061990022001.png', '089464483887', 'henywati@gmail.com', NULL),
(15, '197012022000121001', '', '', NULL, 'SRI WIDODO, S.Pd. M.Si.', NULL, 'Wonogiri', '1970-12-02', 'Laki-laki', 'Islam', '', '5', '2000-12-01', 'Jalan Wonogiri Nomor 20 Kota Jakarta', '', '', 0, NULL, NULL, 6, 'No. : 2000-12-01/6', '2000-12-01', '2000-12-01', '2004-12-01', 0, 0, 0, 0, '', '', '0000-00-00', '0000-00-00', '0000-00-00', 0, '0000-00-00', '197012022000121001.png', '088188797329', 'sriwidodo@gmail.com', NULL),
(16, '197406152000031005', '', '', NULL, 'ARMAN KARTUBI, S.Pd ', NULL, 'Kerinci', '1974-06-15', 'Laki-laki', 'Islam', '', '5', '2000-01-03', 'Jalan Kerinci Nomor 6 Kota Jakarta', '', '', 0, NULL, NULL, 10, 'No. : 2000-01-03/10', '2000-01-03', '2000-01-03', '2004-01-03', 0, 0, 0, 0, '', '', '0000-00-00', '0000-00-00', '0000-00-00', 0, '0000-00-00', '197406152000031005.png', '083357772243', 'armankartubi@gmail.com', NULL),
(17, '196410261986031006', '', '', NULL, 'KIRMANTO,S.Sos', NULL, 'Jambi', '1964-10-26', 'Laki-laki', 'Islam', '', '5', '1986-03-01', 'Jalan Jambi Nomor 12 Kota Jakarta', '', '', 0, NULL, NULL, 3, 'No. : 1986-03-01/3', '1986-03-01', '1986-03-01', '1990-03-01', 0, 0, 0, 0, '', '', '0000-00-00', '0000-00-00', '0000-00-00', 0, '0000-00-00', '196410261986031006.png', '084931902642', 'kirmanto@gmail.com', NULL),
(18, '196409061994121001', '', '', NULL, 'AZIM SUARDI', NULL, 'Bungo', '1964-09-06', 'Laki-laki', 'Islam', '', '5', '1994-12-01', 'Jalan Bungo Nomor 10 Kota Jakarta', '', '', 0, NULL, NULL, 7, 'No. : 1994-12-01/7', '1994-12-01', '1994-12-01', '1998-12-01', 0, 0, 0, 0, '', '', '0000-00-00', '0000-00-00', '0000-00-00', 0, '0000-00-00', '196409061994121001.png', '088234679605', 'azimsuardi@gmail.com', NULL),
(19, '197205301998021001', '', '', NULL, 'RIZWAL YANDI, SE', NULL, 'Kerinci', '1972-05-30', 'Laki-laki', 'Islam', '', '5', '1998-02-01', 'Jalan Kerinci Nomor 18 Kota Jakarta', '', '', 0, NULL, NULL, 7, 'No. : 1998-02-01/7', '1998-02-01', '1998-02-01', '2002-02-01', 0, 0, 0, 0, '', '', '0000-00-00', '0000-00-00', '0000-00-00', 0, '0000-00-00', '197205301998021001.png', '082111598777', 'rizwalyandi@gmail.com', NULL),
(20, '197509052000122002', '', '', NULL, 'SRI EKOMARWATI, S.Sos', NULL, 'Wonogiri ', '1975-09-05', 'Perempuan', 'Islam', '', '5', '2000-12-01', 'Jalan Wonogiri  Nomor 4 Kota Jakarta', '', '', 0, NULL, NULL, 6, 'No. : 2000-12-01/6', '2000-12-01', '2000-12-01', '2004-12-01', 0, 0, 0, 0, '', '', '0000-00-00', '0000-00-00', '0000-00-00', 0, '0000-00-00', '197509052000122002.png', '085271594223', 'sriekomarwati@gmail.com', NULL),
(21, '196606271991082002', '', '', NULL, 'SURYANA,S.Sos', NULL, 'Bungo', '1966-06-27', 'Perempuan', 'Islam', '', '5', '1990-01-01', 'Jalan Bungo Nomor 13 Kota Jakarta', '', '', 0, NULL, NULL, 7, 'No. : 1990-01-01/7', '1990-01-01', '1990-01-01', '1994-01-01', 0, 0, 0, 0, '', '', '0000-00-00', '0000-00-00', '0000-00-00', 0, '0000-00-00', '196606271991082002.png', '084385860385', 'suryana@gmail.com', NULL),
(22, '198405262005012004', '', '', NULL, 'DIANA MEIYANTI, S.Sos', NULL, 'M.Bungo', '1984-05-26', 'Perempuan', 'Islam', '', '5', '2005-01-01', 'Jalan M.Bungo Nomor 15 Kota Jakarta', '', '', 0, NULL, NULL, 6, 'No. : 2005-01-01/6', '2005-01-01', '2005-01-01', '2009-01-01', 0, 0, 0, 0, '', '', '0000-00-00', '0000-00-00', '0000-00-00', 0, '0000-00-00', '198405262005012004.png', '089188991770', 'dianameiyanti@gmail.com', NULL),
(23, '197612262010012003', '', '', NULL, 'YURNILIS, SP', NULL, 'Bungo', '1976-12-26', 'Perempuan', 'Islam', '', '5', '2010-01-01', 'Jalan Bungo Nomor 20 Kota Jakarta', '', '', 0, NULL, NULL, 10, 'No. : 2010-01-01/10', '2010-01-01', '2010-01-01', '2014-01-01', 0, 0, 0, 0, '', '', '0000-00-00', '0000-00-00', '0000-00-00', 0, '0000-00-00', '197612262010012003.png', '088686331684', 'yurnilis@gmail.com', NULL),
(24, '198306202010012018', '', '', NULL, 'DWI SARI KURNIATY, S.IP ', NULL, 'Bungo', '1983-06-20', 'Perempuan', 'Islam', '', '5', '2010-01-01', 'Jalan Bungo Nomor 1 Kota Jakarta', '', '', 0, NULL, NULL, 10, 'No. : 2010-01-01/10', '2010-01-01', '2010-01-01', '2014-01-01', 0, 0, 0, 0, '', '', '0000-00-00', '0000-00-00', '0000-00-00', 0, '0000-00-00', '198306202010012018.png', '089473826527', 'dwisarikurniaty@gmail.com', NULL),
(25, '198404292010012008', '', '', NULL, 'RINCI INDRIANE, SH', NULL, 'Kerinci', '1984-04-29', 'Perempuan', 'Islam', '', '5', '2010-01-01', 'Jalan Kerinci Nomor 14 Kota Jakarta', '', '', 0, NULL, NULL, 10, 'No. : 2010-01-01/10', '2010-01-01', '2010-01-01', '2014-01-01', 0, 0, 0, 0, '', '', '0000-00-00', '0000-00-00', '0000-00-00', 0, '0000-00-00', '198404292010012008.png', '083347630383', 'rinciindriane@gmail.com', NULL),
(26, '196308181986012005', '', '', NULL, 'SUANTIAH', NULL, 'Muara Bungo', '1963-08-18', 'Perempuan', 'Islam', '', '5', '1986-01-01', 'Jalan Muara Bungo Nomor 1 Kota Jakarta', '', '', 0, NULL, NULL, 6, 'No. : 1986-01-01/6', '1986-01-01', '1986-01-01', '1990-01-01', 0, 0, 0, 0, '', '', '0000-00-00', '0000-00-00', '0000-00-00', 0, '0000-00-00', '196308181986012005.png', '082139487020', 'suantiah@gmail.com', NULL),
(27, '196712311990031055', '', '', NULL, 'MONTIALIS', NULL, 'Swl.Sijunjung', '1967-12-31', 'Laki-laki', 'Islam', '', '5', '1990-03-01', 'Jalan Swl.Sijunjung Nomor 7 Kota Jakarta', '', '', 0, NULL, NULL, 6, 'No. : 1990-03-01/6', '1990-03-01', '1990-03-01', '1994-03-01', 0, 0, 0, 0, '', '', '0000-00-00', '0000-00-00', '0000-00-00', 0, '0000-00-00', '196712311990031055.png', '085130367661', 'montialis@gmail.com', NULL),
(28, '196910171993032005', '', '', NULL, 'FATIMAH', NULL, 'Bungo', '1969-10-17', 'Perempuan', 'Islam', '', '5', '1993-03-01', 'Jalan Bungo Nomor 8 Kota Jakarta', '', '', 0, NULL, NULL, 6, 'No. : 1993-03-01/6', '1993-03-01', '1993-03-01', '1997-03-01', 0, 0, 0, 0, '', '', '0000-00-00', '0000-00-00', '0000-00-00', 0, '0000-00-00', '196910171993032005.png', '086493359685', 'fatimah@gmail.com', NULL),
(29, '197809282009021005', '', '', NULL, 'FIRMANSYAH, S.Psi ', NULL, 'Muara Bungo', '1978-09-28', 'Laki-laki', 'Islam', '', '5', '2009-02-01', 'Jalan Muara Bungo Nomor 4 Kota Jakarta', '', '', 0, NULL, NULL, 10, 'No. : 2009-02-01/10', '2009-02-01', '2009-02-01', '2013-02-01', 0, 0, 0, 0, '', '', '0000-00-00', '0000-00-00', '0000-00-00', 0, '0000-00-00', '197809282009021005.png', '081615010331', 'firmansyah@gmail.com', NULL),
(30, '198202122010011014', '', '', NULL, 'HASBI ADIFIRMAN,SS', NULL, 'Jambi', '1982-02-12', 'Laki-laki', 'Islam', '', '5', '2010-01-01', 'Jalan Jambi Nomor 9 Kota Jakarta', '', '', 0, NULL, NULL, 10, 'No. : 2010-01-01/10', '2010-01-01', '2010-01-01', '2014-01-01', 0, 0, 0, 0, '', '', '0000-00-00', '0000-00-00', '0000-00-00', 0, '0000-00-00', '198202122010011014.png', '083692816195', 'hasbiadifirman@gmail.com', NULL),
(31, '198108042010011004', '', '', NULL, 'DARMAWAN,S.Sos', NULL, 'Bungo', '1981-08-04', 'Laki-laki', 'Islam', '', '5', '2011-01-01', 'Jalan Bungo Nomor 12 Kota Jakarta', '', '', 0, NULL, NULL, 10, 'No. : 2011-01-01/10', '2011-01-01', '2011-01-01', '2015-01-01', 0, 0, 0, 0, '', '', '0000-00-00', '0000-00-00', '0000-00-00', 0, '0000-00-00', '198108042010011004.png', '083230128776', 'darmawan@gmail.com', NULL),
(32, '196910011996021002', '', '', NULL, 'AHMAD MASKUR ', NULL, 'Jambi', '1969-01-01', 'Laki-laki', 'Islam', '', '5', '1996-03-01', 'Jalan Jambi Nomor 11 Kota Jakarta', '', '', 0, NULL, NULL, 6, 'No. : 1996-03-01/6', '1996-03-01', '1996-03-01', '2000-03-01', 0, 0, 0, 0, '', '', '0000-00-00', '0000-00-00', '0000-00-00', 0, '0000-00-00', '196910011996021002.png', '083333476321', 'ahmadmaskur@gmail.com', NULL),
(33, '197201241994031003', '', '', NULL, 'ADAM MIRZA ', NULL, 'Jambi', '1972-01-24', 'Laki-laki', 'Islam', '', '5', '1994-03-01', 'Jalan Jambi Nomor 1 Kota Jakarta', '', '', 0, NULL, NULL, 7, 'No. : 1994-03-01/7', '1994-03-01', '1994-03-01', '1998-03-01', 0, 0, 0, 0, '', '', '0000-00-00', '0000-00-00', '0000-00-00', 0, '0000-00-00', '197201241994031003.png', '088936197257', 'adammirza@gmail.com', NULL),
(34, '197209022009011004', '', '', NULL, 'ARIFAL JALAL ,S.Pd', NULL, 'Padang', '1972-09-02', 'Laki-laki', 'Islam', '', '5', '2009-01-01', 'Jalan Padang Nomor 3 Kota Jakarta', '', '', 0, NULL, NULL, 6, 'No. : 2009-01-01/6', '2009-01-01', '2009-01-01', '2013-01-01', 0, 0, 0, 0, '', '', '0000-00-00', '0000-00-00', '0000-00-00', 0, '0000-00-00', '197209022009011004.png', '086613513381', 'arifaljalal@gmail.com', NULL),
(35, '197203062002121006', '', '', NULL, 'ISNAINI,S.Pd', NULL, 'Koto Jayo', '1972-03-06', 'Laki-laki', 'Islam', '', '5', '2002-12-01', 'Jalan Koto Jayo Nomor 17 Kota Jakarta', '', '', 0, NULL, NULL, 4, 'No. : 2002-12-01/4', '2002-12-01', '2002-12-01', '2006-12-01', 0, 0, 0, 0, '', '', '0000-00-00', '0000-00-00', '0000-00-00', 0, '0000-00-00', '197203062002121006.png', '082812646734', 'isnaini@gmail.com', NULL),
(36, '198112102007012011', '', '', NULL, 'TIURNIKA MANIK ,SE', NULL, 'Deli Serdang', '1981-12-10', 'Perempuan', 'Islam', '', '5', '2007-01-01', 'Jalan Deli Serdang Nomor 14 Kota Jakarta', '', '', 0, NULL, NULL, 6, 'No. : 2007-01-01/6', '2007-01-01', '2007-01-01', '2011-01-01', 0, 0, 0, 0, '', '', '0000-00-00', '0000-00-00', '0000-00-00', 0, '0000-00-00', '198112102007012011.png', '089363344329', 'tiurnikamanik@gmail.com', NULL),
(37, '196012311993091001', '', '', NULL, 'MASRI', NULL, 'Rt.Pandan', '1960-12-31', 'Laki-laki', 'Islam', '', '5', '1993-09-01', 'Jalan Rt.Pandan Nomor 16 Kota Jakarta', '', '', 0, NULL, NULL, 3, 'No. : 1993-09-01/3', '1993-09-01', '1993-09-01', '1997-09-01', 0, 0, 0, 0, '', '', '0000-00-00', '0000-00-00', '0000-00-00', 0, '0000-00-00', '196012311993091001.png', '085512302627', 'masri@gmail.com', NULL),
(38, '197804202000122001', '', '', NULL, 'YUNITA HENDRIANI', NULL, 'Jambi', '1978-04-20', 'Perempuan', 'Islam', '', '5', '2000-12-01', 'Jalan Jambi Nomor 19 Kota Jakarta', '', '', 0, NULL, NULL, 6, 'No. : 2000-12-01/6', '2000-12-01', '2000-12-01', '2004-12-01', 0, 0, 0, 0, '', '', '0000-00-00', '0000-00-00', '0000-00-00', 0, '0000-00-00', '197804202000122001.png', '086220989560', 'yunitahendriani@gmail.com', NULL),
(39, '197902172000032004', '', '', NULL, 'YENNY', NULL, 'Jambi', '1979-02-17', 'Perempuan', 'Islam', '', '5', '2000-03-01', 'Jalan Jambi Nomor 20 Kota Jakarta', '', '', 0, NULL, NULL, 6, 'No. : 2000-03-01/6', '2000-03-01', '2000-03-01', '2004-03-01', 0, 0, 0, 0, '', '', '0000-00-00', '0000-00-00', '0000-00-00', 0, '0000-00-00', '197902172000032004.png', '084851543230', 'yenny@gmail.com', NULL),
(40, '198302262010012010', '', '', NULL, 'FITRIA KURNIA SARI, S.AB ', NULL, 'Bungo', '1983-02-26', 'Perempuan', 'Islam', '', '5', '2010-01-01', 'Jalan Bungo Nomor 15 Kota Jakarta', '', '', 0, NULL, NULL, 8, 'No. : 2010-01-01/8', '2010-01-01', '2010-01-01', '2014-01-01', 0, 0, 0, 0, '', '', '0000-00-00', '0000-00-00', '0000-00-00', 0, '0000-00-00', '198302262010012010.png', '088562473351', 'fitriakurniasari@gmail.com', NULL),
(41, '198308242010012012', '', '', NULL, 'RENY FARLINA, SE', NULL, 'Jambi', '1983-08-24', 'Perempuan', 'Islam', '', '5', '2010-01-01', 'Jalan Jambi Nomor 3 Kota Jakarta', '', '', 0, NULL, NULL, 8, 'No. : 2010-01-01/8', '2010-01-01', '2010-01-01', '2014-01-01', 0, 0, 0, 0, '', '', '0000-00-00', '0000-00-00', '0000-00-00', 0, '0000-00-00', '198308242010012012.png', '082257048686', 'renyfarlina@gmail.com', NULL),
(42, '198509022015032001', '', '', NULL, 'CITRA AYUDIA, S.Pd ', NULL, 'Pariaman', '1985-09-02', 'Perempuan', 'Islam', '', '5', '2015-03-01', 'Jalan Pariaman Nomor 17 Kota Jakarta', '', '', 0, NULL, NULL, 10, 'No. : 2015-03-01/10', '2015-03-01', '2015-03-01', '2019-03-01', 0, 0, 0, 0, '', '', '0000-00-00', '0000-00-00', '0000-00-00', 0, '0000-00-00', '198509022015032001.png', '085387497283', 'citraayudia@gmail.com', NULL),
(43, '197007092007012027', '', '', NULL, 'YULI HARTATI, A.Md ', NULL, 'Bungo', '1970-07-09', 'Perempuan', 'Islam', '', '5', '2007-01-01', 'Jalan Bungo Nomor 20 Kota Jakarta', '', '', 0, NULL, NULL, 8, 'No. : 2007-01-01/8', '2007-01-01', '2007-01-01', '2011-01-01', 0, 0, 0, 0, '', '', '0000-00-00', '0000-00-00', '0000-00-00', 0, '0000-00-00', '197007092007012027.png', '087874239334', 'yulihartati@gmail.com', NULL),
(44, '198212232007012006', '', '', NULL, 'DESI ROBIANTI, A.Md ', NULL, 'Jambi', '1982-12-23', 'Perempuan', 'Islam', '', '5', '2007-01-01', 'Jalan Jambi Nomor 10 Kota Jakarta', '', '', 0, NULL, NULL, 6, 'No. : 2007-01-01/6', '2007-01-01', '2007-01-01', '2011-01-01', 0, 0, 0, 0, '', '', '0000-00-00', '0000-00-00', '0000-00-00', 0, '0000-00-00', '198212232007012006.png', '085453596190', 'desirobianti@gmail.com', NULL),
(45, '197212212009011005', '', '', NULL, 'ANSORI', NULL, 'Bungo', '1972-12-21', 'Laki-laki', 'Islam', '', '5', '2009-01-01', 'Jalan Bungo Nomor 12 Kota Jakarta', '', '', 0, NULL, NULL, 6, 'No. : 2009-01-01/6', '2009-01-01', '2009-01-01', '2013-01-01', 0, 0, 0, 0, '', '', '0000-00-00', '0000-00-00', '0000-00-00', 0, '0000-00-00', '197212212009011005.png', '088780731741', 'ansori@gmail.com', NULL),
(46, '197612282009012003', '', '', NULL, 'SRI ASWATI', NULL, 'Bungo', '1976-12-28', 'Perempuan', 'Islam', '', '5', '2009-01-01', 'Jalan Bungo Nomor 15 Kota Jakarta', '', '', 0, NULL, NULL, 6, 'No. : 2009-01-01/6', '2009-01-01', '2009-01-01', '2013-01-01', 0, 0, 0, 0, '', '', '0000-00-00', '0000-00-00', '0000-00-00', 0, '0000-00-00', '197612282009012003.png', '085545498386', 'sriaswati@gmail.com', NULL),
(47, '198007042007012013', '', '', NULL, 'DEPI SUSANTI ', NULL, 'Bungo', '1980-06-04', 'Perempuan', 'Islam', '', '5', '2007-01-01', 'Jalan Bungo Nomor 19 Kota Jakarta', '', '', 0, NULL, NULL, 6, 'No. : 2007-01-01/6', '2007-01-01', '2007-01-01', '2011-01-01', 0, 0, 0, 0, '', '', '0000-00-00', '0000-00-00', '0000-00-00', 0, '0000-00-00', '198007042007012013.png', '087947712995', 'depisusanti@gmail.com', NULL),
(48, '197804062007012025', '', '', NULL, 'MARYATI', NULL, 'Wonogiri', '1978-04-06', 'Perempuan', 'Islam', '', '5', '2007-01-01', 'Jalan Wonogiri Nomor 4 Kota Jakarta', '', '', 0, NULL, NULL, 6, 'No. : 2007-01-01/6', '2007-01-01', '2007-01-01', '2011-01-01', 0, 0, 0, 0, '', '', '0000-00-00', '0000-00-00', '0000-00-00', 0, '0000-00-00', '197804062007012025.png', '085682456120', 'maryati@gmail.com', NULL),
(49, '197312152007011021', '', '', NULL, 'AGUSRIANTO ', NULL, 'Muara Tembesi', '1973-12-15', 'Laki-laki', 'Islam', '', '5', '1973-01-01', 'Jalan Muara Tembesi Nomor 14 Kota Jakarta', '', '', 0, NULL, NULL, 6, 'No. : 1973-01-01/6', '1973-01-01', '1973-01-01', '1977-01-01', 0, 0, 0, 0, '', '', '0000-00-00', '0000-00-00', '0000-00-00', 0, '0000-00-00', '197312152007011021.png', '088131862154', 'agusrianto@gmail.com', NULL),
(50, '198012052009011006', '', '', NULL, 'DEDI FARIS', NULL, 'Cianjur', '1980-12-05', 'Laki-laki', 'Islam', '', '5', '2009-01-01', 'Jalan Cianjur Nomor 6 Kota Jakarta', '', '', 0, NULL, NULL, 10, 'No. : 2009-01-01/10', '2009-01-01', '2009-01-01', '2013-01-01', 0, 0, 0, 0, '', '', '0000-00-00', '0000-00-00', '0000-00-00', 0, '0000-00-00', '198012052009011006.png', '087149089854', 'dedifaris@gmail.com', NULL),
(51, '198101052007012016', '', '', NULL, 'YUHASNI ', NULL, 'Bungo Tebo', '1981-01-05', 'Perempuan', 'Islam', '', '5', '2007-01-01', 'Jalan Bungo Tebo Nomor 17 Kota Jakarta', '', '', 0, NULL, NULL, 6, 'No. : 2007-01-01/6', '2007-01-01', '2007-01-01', '2011-01-01', 0, 0, 0, 0, '', '', '0000-00-00', '0000-00-00', '0000-00-00', 0, '0000-00-00', '198101052007012016.png', '083882941128', 'yuhasni@gmail.com', NULL),
(52, '198508232010012006', '', '', NULL, 'LELI AGUSTRIYANTI ', NULL, 'Bungo', '1985-08-23', 'Perempuan', 'Islam', '', '5', '2010-01-01', 'Jalan Bungo Nomor 6 Kota Jakarta', '', '', 0, NULL, NULL, 6, 'No. : 2010-01-01/6', '2010-01-01', '2010-01-01', '2014-01-01', 0, 0, 0, 0, '', '', '0000-00-00', '0000-00-00', '0000-00-00', 0, '0000-00-00', '198508232010012006.png', '087111880269', 'leliagustriyanti@gmail.com', NULL),
(53, '198507042010012001', '', '', NULL, 'ULVALIYANA', NULL, 'Bungo', '1985-07-04', 'Perempuan', 'Islam', '', '5', '2010-01-01', 'Jalan Bungo Nomor 8 Kota Jakarta', '', '', 0, NULL, NULL, 6, 'No. : 2010-01-01/6', '2010-01-01', '2010-01-01', '2014-01-01', 0, 0, 0, 0, '', '', '0000-00-00', '0000-00-00', '0000-00-00', 0, '0000-00-00', '198507042010012001.png', '081180607156', 'ulvaliyana@gmail.com', NULL),
(54, '198402022010011001', '', '', NULL, 'SUHENDI', NULL, 'Bungo', '1984-02-02', 'Laki-laki', 'Islam', '', '5', '2010-01-01', 'Jalan Bungo Nomor 15 Kota Jakarta', '', '', 0, NULL, NULL, 6, 'No. : 2010-01-01/6', '2010-01-01', '2010-01-01', '2014-01-01', 0, 0, 0, 0, '', '', '0000-00-00', '0000-00-00', '0000-00-00', 0, '0000-00-00', '198402022010011001.png', '088895517022', 'suhendi@gmail.com', NULL),
(55, '198304232010012029', '', '', NULL, 'RENI WIRDAWATI ', NULL, 'Bungo', '1983-04-24', 'Perempuan', 'Islam', '', '5', '2010-01-01', 'Jalan Bungo Nomor 4 Kota Jakarta', '', '', 0, NULL, NULL, 6, 'No. : 2010-01-01/6', '2010-01-01', '2010-01-01', '2014-01-01', 0, 0, 0, 0, '', '', '0000-00-00', '0000-00-00', '0000-00-00', 0, '0000-00-00', '198304232010012029.png', '086278978122', 'reniwirdawati@gmail.com', NULL),
(56, '197311072009011007', '', '', NULL, 'ANDRI YANDRI', NULL, 'Jambi', '1973-11-07', 'Laki-laki', 'Islam', '', '5', '1973-11-07', 'Jalan Jambi Nomor 9 Kota Jakarta', '', '', 0, NULL, NULL, 6, 'No. : 1973-11-07/6', '1973-11-07', '1973-11-07', '1977-11-07', 0, 0, 0, 0, '', '', '0000-00-00', '0000-00-00', '0000-00-00', 0, '0000-00-00', '197311072009011007.png', '082982918827', 'andriyandri@gmail.com', NULL),
(57, '198510052008011003', '', '', NULL, 'MUHAMMAD ZAKARIA ', NULL, 'Rimbo Bujang', '1985-10-05', 'Laki-laki', 'Islam', '', '5', '2018-01-01', 'Jalan Rimbo Bujang Nomor 16 Kota Jakarta', '', '', 0, NULL, NULL, 6, 'No. : 2018-01-01/6', '2018-01-01', '2018-01-01', '2022-01-01', 0, 0, 0, 0, '', '', '0000-00-00', '0000-00-00', '0000-00-00', 0, '0000-00-00', '198510052008011003.png', '087296430079', 'muhammadzakaria@gmail.com', NULL),
(58, '197512132010012005', '', '', NULL, 'LISMIANTI', NULL, 'Rejang Lebong', '1975-12-31', 'Perempuan', 'Islam', '', '5', '2010-01-01', 'Jalan Rejang Lebong Nomor 10 Kota Jakarta', '', '', 0, NULL, NULL, 2, 'No. : 2010-01-01/2', '2010-01-01', '2010-01-01', '2014-01-01', 0, 0, 0, 0, '', '', '0000-00-00', '0000-00-00', '0000-00-00', 0, '0000-00-00', '197512132010012005.png', '082833248755', 'lismianti@gmail.com', NULL),
(59, '196508201988031002', '', '', NULL, 'HISAMUDDIN, S.Pd ', NULL, 'Bungo', '1965-08-20', 'Laki-laki', 'Islam', '', '5', '1988-01-03', 'Jalan Bungo Nomor 18 Kota Jakarta', '', '', 0, NULL, NULL, 7, 'No. : 1988-01-03/7', '1988-01-03', '1988-01-03', '1992-01-03', 0, 0, 0, 0, '', '', '0000-00-00', '0000-00-00', '0000-00-00', 0, '0000-00-00', '196508201988031002.png', '082870531710', 'hisamuddin@gmail.com', NULL),
(60, '1958080441981111001', '', '', NULL, 'HAMBALI, S.Pd ', NULL, 'Muara Bungo', '1958-08-04', 'Laki-laki', 'Islam', '', '5', '1981-01-11', 'Jalan Muara Bungo Nomor 11 Kota Jakarta', '', '', 0, NULL, NULL, 6, 'No. : 1981-01-11/6', '1981-01-11', '1981-01-11', '1985-01-11', 0, 0, 0, 0, '', '', '0000-00-00', '0000-00-00', '0000-00-00', 0, '0000-00-00', '1958080441981111001.png', '083345324599', 'hambali@gmail.com', NULL),
(61, '196005041984032011', '', '', NULL, 'Dra. KHALIDA TOS,MM', NULL, 'Solok', '1960-05-04', 'Laki-laki', 'Islam', '', '5', '1984-01-03', 'Jalan Solok Nomor 13 Kota Jakarta', '', '', 0, NULL, NULL, 10, 'No. : 1984-01-03/10', '1984-01-03', '1984-01-03', '1988-01-03', 0, 0, 0, 0, '', '', '0000-00-00', '0000-00-00', '0000-00-00', 0, '0000-00-00', '196005041984032011.png', '089164322709', 'drakhalidatos@gmail.com', NULL),
(62, '195905181986031007', '', '', NULL, 'Drs. JAPARIN ', NULL, 'Pesisir Selatan', '1959-05-18', 'Laki-laki', 'Islam', '', '5', '1986-01-03', 'Jalan Pesisir Selatan Nomor 9 Kota Jakarta', '', '', 0, NULL, NULL, 10, 'No. : 1986-01-03/10', '1986-01-03', '1986-01-03', '1990-01-03', 0, 0, 0, 0, '', '', '0000-00-00', '0000-00-00', '0000-00-00', 0, '0000-00-00', '195905181986031007.png', '081516129505', 'drsjaparin@gmail.com', NULL),
(63, '197003151993031004', '', '', NULL, 'HASAN, S.Pd, M.Si', NULL, 'Teluk Pandak', '1970-05-15', 'Laki-laki', 'Islam', '', '5', '1993-03-01', 'Jalan Teluk Pandak Nomor 15 Kota Jakarta', '', '', 0, NULL, NULL, 10, 'No. : 1993-03-01/10', '1993-03-01', '1993-03-01', '1997-03-01', 0, 0, 0, 0, '', '', '0000-00-00', '0000-00-00', '0000-00-00', 0, '0000-00-00', '197003151993031004.png', '083237290265', 'hasan@gmail.com', NULL),
(64, '196512151992031006', '', '', NULL, 'Drs. SUMPENO ', NULL, 'Bungo', '1965-12-15', 'Laki-laki', 'Islam', '', '5', '1992-01-03', 'Jalan Bungo Nomor 5 Kota Jakarta', '', '', 0, NULL, NULL, 10, 'No. : 1992-01-03/10', '1992-01-03', '1992-01-03', '1996-01-03', 0, 0, 0, 0, '', '', '0000-00-00', '0000-00-00', '0000-00-00', 0, '0000-00-00', '196512151992031006.png', '081161566699', 'drssumpeno@gmail.com', NULL),
(65, '196310281987032006', '', '', NULL, 'Dra. ZURNA ', NULL, 'Agam', '1963-10-28', 'Perempuan', 'Islam', '', '5', '1987-01-03', 'Jalan Agam Nomor 11 Kota Jakarta', '', '', 0, NULL, NULL, 8, 'No. : 1987-01-03/8', '1987-01-03', '1987-01-03', '1991-01-03', 0, 0, 0, 0, '', '', '0000-00-00', '0000-00-00', '0000-00-00', 0, '0000-00-00', '196310281987032006.png', '085283053775', 'drazurna@gmail.com', NULL),
(66, '196509091993031004', '', '', NULL, 'Drs. ABDULLAH ', NULL, 'Kerinci', '1965-09-09', 'Laki-laki', 'Islam', '', '5', '1993-01-03', 'Jalan Kerinci Nomor 7 Kota Jakarta', '', '', 0, NULL, NULL, 10, 'No. : 1993-01-03/10', '1993-01-03', '1993-01-03', '1997-01-03', 0, 0, 0, 0, '', '', '0000-00-00', '0000-00-00', '0000-00-00', 0, '0000-00-00', '196509091993031004.png', '083178486517', 'drsabdullah@gmail.com', NULL),
(67, '196103241985031005', '', '', NULL, 'Drs. EMRIDON', NULL, 'Bukittinggi', '1961-03-24', 'Laki-laki', 'Islam', '', '5', '1985-01-03', 'Jalan Bukittinggi Nomor 1 Kota Jakarta', '', '', 0, NULL, NULL, 10, 'No. : 1985-01-03/10', '1985-01-03', '1985-01-03', '1989-01-03', 0, 0, 0, 0, '', '', '0000-00-00', '0000-00-00', '0000-00-00', 0, '0000-00-00', '196103241985031005.png', '088380183367', 'drsemridon@gmail.com', NULL),
(68, '196412271995122002', '', '', NULL, 'WASIYAH, S.Pd, MM', NULL, 'Bantul', '1964-12-27', 'Perempuan', 'Islam', '', '5', '1997-07-01', 'Jalan Bantul Nomor 20 Kota Jakarta', '', '', 0, NULL, NULL, 6, 'No. : 1997-07-01/6', '1997-07-01', '1997-07-01', '2001-07-01', 0, 0, 0, 0, '', '', '0000-00-00', '0000-00-00', '0000-00-00', 0, '0000-00-00', '196412271995122002.png', '081619524421', 'wasiyah@gmail.com', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_data_pejabat`
--

CREATE TABLE `tbl_data_pejabat` (
  `id` int(11) NOT NULL,
  `id_pegawai` int(11) DEFAULT NULL,
  `id_jabatan` int(11) DEFAULT NULL,
  `tmt` date DEFAULT NULL,
  `event` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_data_pejabat`
--

INSERT INTO `tbl_data_pejabat` (`id`, `id_pegawai`, `id_jabatan`, `tmt`, `event`) VALUES
(1, 1, 1, '2019-12-07', '2019'),
(2, 2, 108, '2019-12-02', '2019'),
(3, 30, 156, '2019-11-08', '2019'),
(4, 3, 60, '2019-11-08', '2019'),
(5, 0, 189, '0000-00-00', '2019'),
(6, 9, 5, '2019-11-07', '2019'),
(7, 10, 3, '2015-10-01', '2019'),
(8, 31, 160, '2019-01-11', '2019'),
(9, 34, 10, '2015-10-15', '2019'),
(10, 40, 14, '2017-05-22', '2019'),
(11, 36, 11, '2015-10-15', '2019'),
(12, 12, 16, '0000-00-00', '2019'),
(13, 39, 13, '2015-10-15', '2019'),
(14, 35, 7, '2017-05-22', '2019'),
(15, 15, 59, '0000-00-00', '2019'),
(16, 37, 12, '2017-05-22', '2019'),
(17, 14, 64, '2017-05-22', '2019'),
(18, 38, 8, '2017-05-22', '2019'),
(19, 19, 36, '0000-00-00', '2019'),
(20, 20, 39, '0000-00-00', '2019'),
(21, 21, 50, '0000-00-00', '2019'),
(22, 22, 51, '0000-00-00', '2019'),
(23, 62, 112, '2018-08-26', '2019'),
(24, 24, 17, '0000-00-00', '2019'),
(25, 25, 44, '0000-00-00', '2019'),
(26, 71, 6, '2018-04-01', '2019'),
(27, 11, 4, '2015-10-15', '2019'),
(28, 28, 43, '0000-00-00', '2019'),
(29, 15, 65, '2019-01-11', '2019'),
(30, 7, 158, '2015-09-15', '2019'),
(31, 8, 159, '2015-09-15', '2019'),
(32, 12, 62, '0000-00-00', '2019'),
(33, 13, 63, '2015-09-14', '2019'),
(34, 30, 161, '2019-01-11', '2019'),
(36, 5, 111, '2017-03-08', '2019'),
(37, 6, 113, '2017-05-22', '2019'),
(38, 4, 110, '2015-09-14', '2019'),
(39, 3, 2, '2019-11-08', NULL),
(40, 33, 9, '2015-10-15', NULL),
(41, 41, 66, '2015-10-15', NULL),
(42, 42, 67, '2015-10-13', NULL),
(43, 43, 68, '2015-10-15', NULL),
(44, 19, 117, '2015-10-15', NULL),
(45, 20, 118, '2015-10-15', NULL),
(46, 81, 71, '2019-01-11', NULL),
(47, 22, 120, '2015-10-13', NULL),
(48, 85, 73, '2019-01-11', NULL),
(49, 49, 61, '2015-10-15', NULL),
(50, 51, 114, '2019-01-11', NULL),
(51, 18, 116, '2015-10-15', NULL),
(52, 21, 119, '2015-10-13', NULL),
(53, 23, 121, '2015-10-13', NULL),
(54, 24, 109, '2015-10-13', NULL),
(55, 17, 115, '2015-10-15', NULL),
(56, 45, 70, '2015-10-13', NULL),
(57, 47, 72, '2017-05-22', NULL),
(58, 44, 69, '2015-10-15', NULL),
(59, 16, 164, '2019-01-11', NULL),
(60, 60, 165, '2019-01-11', NULL),
(61, 25, 162, '2017-05-22', NULL),
(62, 26, 163, '2015-10-15', NULL),
(63, 28, 166, '2015-10-15', NULL),
(64, 29, 167, '2017-05-22', NULL),
(65, 46, 168, '2019-01-11', NULL),
(66, 48, 169, '2019-01-11', NULL),
(67, 32, 157, '2019-11-08', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_data_pendidikan`
--

CREATE TABLE `tbl_data_pendidikan` (
  `id_pendidikan` int(50) NOT NULL,
  `id_pegawai` int(50) NOT NULL,
  `tingkat_pendidikan` varchar(50) NOT NULL,
  `jurusan` varchar(50) NOT NULL,
  `uraian` text NOT NULL,
  `teknik_non_teknik` varchar(50) NOT NULL,
  `sekolah` varchar(100) NOT NULL,
  `tempat_sekolah` text NOT NULL,
  `nomor_sttb` varchar(100) NOT NULL,
  `tanggal_sttb` varchar(100) NOT NULL,
  `tanggal_lulus` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_data_pendidikan`
--

INSERT INTO `tbl_data_pendidikan` (`id_pendidikan`, `id_pegawai`, `tingkat_pendidikan`, `jurusan`, `uraian`, `teknik_non_teknik`, `sekolah`, `tempat_sekolah`, `nomor_sttb`, `tanggal_sttb`, `tanggal_lulus`) VALUES
(1, 1, 'S1/D4', 'SARJANA TEKNIK SIPIL', 'TEKNIK SIPIL', 'teknik', 'UNIVERSITAS SAM RATULANGI', 'UNSRAT, MANADO', '01/07/1991', '01/07/1991', '01 July 1991'),
(2, 7, 'S1/D4', 'TEKNIK SIPIL', 'SARJANA TEKNIK SIPIL', 'teknik', 'UNIVERSITAS PANCASILA', 'PANCASILA, JAKARTA', '-', '16/04/2006', '16 April 2006'),
(3, 7, 'SLTA', 'IPA', 'IPA', 'non teknik', 'SMA', '-', '-', '05 May 1986', '-'),
(4, 7, 'D III', 'AKD. SEKRETRS. & MANAGEMENT', 'AKD. SEKRETRS. & MANAGEMENT', 'non teknik', '-', 'AKD.', '-', '08/12/1985', '08 December 1985'),
(5, 13, 'S1/D4', 'SARJANA SOSPOL JUR ADM NEGARA', 'ADM NEGARA', 'non teknik', '-', '-', '-', '27/08/2007', '27 August 2007'),
(6, 16, 'S1/D4', 'ILMU ADM JUR ADM NEGARA', 'SARJANA ILMU ADM JUR ADM NEGARA', 'non teknik', '-', '-', '-', '01 January 2000', '01 January 2000'),
(7, 18, 'SI/D4', 'MANAJEMEN', 'SARJANA EKONOMI JUR MANAJEMEN', 'non teknik', '-', '-', '20/08/2008', '-', '-'),
(8, 18, 'SLTA', 'IPS', 'IPS', 'non teknik', '-', '-', '-', '19/04/1984', '19/04/1984'),
(9, 19, 'SI/D4', 'EKONOMI JUR UMUM', 'BUDAYA', 'non teknik', '-', '-', '-', '31/07/1992', '-');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_data_penghargaan`
--

CREATE TABLE `tbl_data_penghargaan` (
  `id_penghargaan` int(50) NOT NULL,
  `id_pegawai` int(50) NOT NULL,
  `id_master_penghargaan` int(50) NOT NULL,
  `uraian` text NOT NULL,
  `nomor_sk` varchar(100) NOT NULL,
  `tanggal_sk` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_data_penghargaan`
--

INSERT INTO `tbl_data_penghargaan` (`id_penghargaan`, `id_pegawai`, `id_master_penghargaan`, `uraian`, `nomor_sk`, `tanggal_sk`) VALUES
(1, 7, 69, 'SATYALANCANA KARYA SATYA XX TAHUN', '062/TK/TAHUN 2012', '06 August 2012'),
(2, 7, 70, '', '062/TK/TAHUN 2012', '06 August 2002'),
(3, 8, 69, '', '062/TK/TAHUN 2012', '06 August 2002');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_data_riwayat_jabatan`
--

CREATE TABLE `tbl_data_riwayat_jabatan` (
  `id_riwayat_jabatan` int(50) NOT NULL,
  `id_pegawai` int(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  `penempatan` varchar(50) NOT NULL,
  `id_jabatan` int(50) NOT NULL,
  `id_unit_kerja` int(50) NOT NULL,
  `uraian` text NOT NULL,
  `id_eselon` int(50) NOT NULL,
  `tmt_eselon` varchar(50) NOT NULL,
  `nomor_sk` varchar(50) NOT NULL,
  `tanggal_sk` varchar(50) NOT NULL,
  `tanggal_mulai` varchar(50) NOT NULL,
  `tanggal_selesai` varchar(50) NOT NULL,
  `lokasi` varchar(150) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_data_riwayat_jabatan`
--

INSERT INTO `tbl_data_riwayat_jabatan` (`id_riwayat_jabatan`, `id_pegawai`, `status`, `penempatan`, `id_jabatan`, `id_unit_kerja`, `uraian`, `id_eselon`, `tmt_eselon`, `nomor_sk`, `tanggal_sk`, `tanggal_mulai`, `tanggal_selesai`, `lokasi`) VALUES
(2, 15, 'PNS PUSAT', 'PUSAT', 116, 1, 'STAF SEKSI SULAWESI UTARA DAN GORONTALO, SUBDIT WILAYAH TIMUR IV, DIREKTORAT JALAN DAN JEMBATAN WILAYAH TIMUR, DIREKTORAT JENDERAL BINA MARGA, DEP PU', 32, '-', '-', '-', '-', '-', '-'),
(3, 16, 'PNS PUSAT', 'PUSAT', 116, 16479, 'STAF BALAI PELAKSANAAN JALAN NASIONAL XI,    DITJEN BINA MARGA', 32, '-', '11/KPTS/BS/2011', '-', '-', '-', 'SULAWESI UTARA'),
(4, 18, 'PNS PUSAT', 'PUSAT', 116, 16479, 'BALAI PELAKSANAAN JALAN NASIONAL XI, DITJEN BINA MARGA', 32, '11/KPTS/BS/2011', '11/KPTS/BS/2011', '16 March 2011', '16 March 2011', '-', '-'),
(5, 18, 'PNS PUSAT', 'PUSAT', 116, 16479, 'STAF BALAI BESAR PELAKSANAAN JALAN NASIONAL VI,  DIREKTORAT JENDERAL BINA MARGA,  DEP PU', 32, '-', '-', '-', '01 December 2008', '-', '-'),
(6, 19, 'PNS PUSAT', 'PUSAT', 116, 16479, 'STAF BALAI BESAR P ALAN NASIONAL VI,  DIREKTORAT JENDERAL BINA MARGA,  DEP PU', 32, '-', '-', '-', '01 December 2008', '15 March 2011', '-');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_data_riwayat_pangkat`
--

CREATE TABLE `tbl_data_riwayat_pangkat` (
  `id_riwayat_pangkat` int(50) NOT NULL,
  `id_pegawai` int(50) NOT NULL,
  `id_golongan` int(30) NOT NULL,
  `status` varchar(50) NOT NULL,
  `nomor_sk` varchar(50) NOT NULL,
  `tanggal_sk` varchar(50) NOT NULL,
  `tanggal_mulai` varchar(50) NOT NULL,
  `tanggal_selesai` varchar(50) NOT NULL,
  `masa_kerja` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_data_riwayat_pangkat`
--

INSERT INTO `tbl_data_riwayat_pangkat` (`id_riwayat_pangkat`, `id_pegawai`, `id_golongan`, `status`, `nomor_sk`, `tanggal_sk`, `tanggal_mulai`, `tanggal_selesai`, `masa_kerja`) VALUES
(1, 1, 16, 'PNS DAERAH', '23.3/BKD/SK/43/2009', '01 April 2009', '01 April 2009', '06 November 2012', '3 Tahun 7 Bulan'),
(2, 7, 13, 'PNS DAERAH', '23.3/BKD/SK/04/2005', '01 March 2005', '01 March 2005', '31 March 2009', '3 Tahun 11 Bulan'),
(3, 7, 14, 'PNS DAERAH', '823.3/7/SK/99/2001', '01 March 2001', '01 March 2001', '31 March 2005', '3 Tahun 11 Bulan'),
(4, 7, 13, 'PNS DAERAH', '821.13/9/SK/155/1998', '01 December 1998', '01 December 1998', '31 March 2001', '2 Tahun 3 bulan'),
(5, 7, 13, 'CPNS DaAERAH', '813.3/9/SK/96/1997', '01 March 1997', '01 March 1997', '30 November 1998', '1 Tahun 8 Bulan'),
(6, 2, 17, 'PNS PUSAT', '823.4/BKPAD/SK/190/2008', '31 March 2008', '01 April 2008', '21 November 2012', '4 Tahun 7 Bulan'),
(7, 15, 14, 'PNS PUSAT', '-', '-', '01 October 2010', '-', '-'),
(8, 16, 14, 'PNS PUSAT', 'Db/018/C/2010 - O', '23 February 2010', '01 March 2010', '-', '-'),
(9, 18, 14, 'PNS PUSAT', 'Db/054/B/2011-N', '21 March 2011', '01 April 2011', '-', '1 Tahun 7 Bulan'),
(10, 19, 14, 'PNS PUSAT', '01/12/2008', '-', '-', '-', '3 Tahun 11 Bulan'),
(11, 20, 14, 'PNS PUSAT', 'Db/274/B/2011-D', '21 March 2011', '01 April 2011', '-', '-');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_data_seminar`
--

CREATE TABLE `tbl_data_seminar` (
  `id_seminar` int(50) NOT NULL,
  `id_pegawai` int(50) NOT NULL,
  `judul` varchar(50) DEFAULT NULL,
  `negara` varchar(50) DEFAULT NULL,
  `peran` varchar(50) DEFAULT NULL,
  `uraian` text NOT NULL,
  `lokasi` varchar(100) NOT NULL,
  `tanggal` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_data_seminar`
--

INSERT INTO `tbl_data_seminar` (`id_seminar`, `id_pegawai`, `judul`, `negara`, `peran`, `uraian`, `lokasi`, `tanggal`) VALUES
(1, 7, 'APEC Technomart', 'China, 2002', 'Anggota', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_master_eselon`
--

CREATE TABLE `tbl_master_eselon` (
  `id_eselon` int(50) NOT NULL,
  `nama_eselon` varchar(150) NOT NULL,
  `level` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_master_eselon`
--

INSERT INTO `tbl_master_eselon` (`id_eselon`, `nama_eselon`, `level`) VALUES
(23, 'I.a', '1'),
(24, 'I.b', '2'),
(25, 'II.a', '3'),
(26, 'II.b', '4'),
(27, 'III.a', '5'),
(28, 'III.b', '6'),
(29, 'IV.a', '7'),
(30, 'IV.b', '8'),
(31, 'V', '9'),
(32, '-', '0');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_master_golongan`
--

CREATE TABLE `tbl_master_golongan` (
  `id_golongan` int(50) NOT NULL,
  `golongan` varchar(100) NOT NULL,
  `uraian` text NOT NULL,
  `level` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_master_golongan`
--

INSERT INTO `tbl_master_golongan` (`id_golongan`, `golongan`, `uraian`, `level`) VALUES
(20, 'IV/D', 'Pembina Utama Madya', '2'),
(19, 'IV/C', 'Pembina Utama Muda', '3'),
(18, 'IV/B', 'Pembina Tingkat I', '4'),
(17, 'IV/A', 'Pembina', '5'),
(15, 'III/C', 'Penata', '7'),
(16, 'III/D', 'Penata Tingkat I', '6'),
(14, 'III/B', 'Penata Muda Tingkat I', '8'),
(13, 'III/A', 'Penata Muda', '9'),
(12, 'II/D', 'Pengatur Tingkat I', '10'),
(11, 'II/C', 'Pengatur', '11'),
(10, 'II/B', 'Pengatur Muda Tk Ipengatur Muda Tk I', '12'),
(9, 'II/A', 'Pengatur Muda', '13'),
(8, 'I/D', 'Juru Tingkat I', '14'),
(7, 'I/C', 'Juru', '15'),
(6, 'I/B', 'Juru Muda Tingkat I', '16'),
(5, 'I/A', 'Juru Muda', '17'),
(4, 'CPNS', 'Calon Pegawai Negeri Sipil', '18'),
(21, 'IV/E', 'Pembina Utama', '1'),
(22, '-', '-', '-');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_master_jabatan`
--

CREATE TABLE `tbl_master_jabatan` (
  `id_jabatan` int(11) NOT NULL,
  `id_parent` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL COMMENT '1. Struktural 2 Fungsional',
  `jabatan` varchar(255) NOT NULL,
  `deskripsi` text,
  `kelas` tinyint(2) NOT NULL,
  `bezetthing` tinyint(2) NOT NULL,
  `kebutuhan` tinyint(2) NOT NULL,
  `singkatan` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_master_jabatan`
--

INSERT INTO `tbl_master_jabatan` (`id_jabatan`, `id_parent`, `status`, `jabatan`, `deskripsi`, `kelas`, `bezetthing`, `kebutuhan`, `singkatan`) VALUES
(1, 0, 1, 'DIREKTUR JENDERAL PENGUATAN INOVASI', 'NULL', 18, 0, 0, 'Direktur Jenderal Penguatan Inovasi'),
(2, 1, 1, 'SEKRETARIS DIREKTORAT JENDERAL PENGUATAN INOVASI', 'NULL', 15, 0, 0, 'Sekretaris Direktorat Jenderal Penguatan Inovasi'),
(3, 2, 1, 'KEPALA BAGIAN PERENCANAAN DAN PENGANGGARAN', 'NULL', 12, 0, 0, 'Kabag Perencanaan Dan Penganggaran'),
(4, 2, 1, 'KEPALA BAGIAN HUKUM, KERJA SAMA DAN LAYANAN INFORMASI', 'NULL', 12, 0, 0, 'Kabag Hukum, Kerja Sama Dan Layanan Informasi'),
(5, 2, 1, 'KEPALA BAGIAN UMUM', 'NULL', 12, 0, 0, 'Kabag Umum'),
(6, 3, 1, 'KEPALA SUBBAGIAN PERENCANAAN', 'NULL', 9, 0, 0, 'Kasubag Perencanaan'),
(7, 4, 1, 'KEPALA SUBBAGIAN HUKUM', 'NULL', 9, 0, 0, 'Kasubag Hukum'),
(8, 5, 1, 'KEPALA SUBBAGIAN TATA USAHA DAN KEPEGAWAIAN', 'NULL', 9, 0, 0, 'Kasubag Tata Usaha Dan Kepegawaian'),
(9, 3, 1, 'KEPALA SUBBAGIAN PEMANTAUAN DAN EVALUASI', 'NULL', 9, 0, 0, 'Kasubag Pemantauan Dan Evaluasi'),
(10, 3, 1, 'KEPALA SUBBAGIAN PERBENDAHARAAN DAN PELAPORAN KEUANGAN', 'NULL', 9, 0, 0, 'Kasubag Perbendaharaan Dan Pelaporan Keuangan'),
(11, 4, 1, 'KEPALA SUBBAGIAN KERJA SAMA', 'NULL', 9, 0, 0, 'Kasubag Kerja Sama'),
(12, 4, 1, 'KEPALA SUBBAGIAN LAYANAN INFORMASI', 'NULL', 9, 0, 0, 'Kasubag Layanan Informasi'),
(13, 5, 1, 'KEPALA SUBBAGIAN RUMAH TANGGA', 'NULL', 9, 0, 0, 'Kasubag Rumah Tangga'),
(14, 5, 1, 'KEPALA SUBBAGIAN BARANG MILIK NEGARA', 'NULL', 9, 0, 0, 'Kasubag Barang Milik Negara'),
(15, 2, 2, 'Perancang Peraturan Perundang-undangan Muda', 'NULL', 9, 0, 1, 'NULL'),
(16, 6, 2, 'Penyusun Program Anggaran dan Pelaporan', 'NULL', 7, 2, 2, 'NULL'),
(17, 6, 2, 'Pengelola Data Pelaksanaan Program dan Anggaran', 'NULL', 6, 1, 1, 'NULL'),
(18, 6, 2, 'Pengadministrasi Umum', 'NULL', 5, 1, 1, 'NULL'),
(19, 9, 2, 'Analis Monitoring, Evaluasi, dan Pelaporan', 'NULL', 7, 1, 2, 'NULL'),
(20, 9, 2, 'Pengelola Data Pelaksanaan Program dan Anggaran', 'NULL', 6, 1, 1, 'NULL'),
(21, 9, 2, 'Pengadministrasi Anggaran', 'NULL', 5, 1, 1, 'NULL'),
(22, 10, 2, 'Penyusun Laporan Keuangan', 'NULL', 7, 1, 1, 'NULL'),
(23, 10, 2, 'Bendahara', 'NULL', 7, 2, 3, 'NULL'),
(24, 10, 2, 'Pengelola Keuangan', 'NULL', 6, 1, 2, 'NULL'),
(25, 10, 2, 'Pengelola Database Surat Perintah Membayar', 'NULL', 6, 0, 1, 'NULL'),
(26, 10, 2, 'Pengelola Gaji ', 'NULL', 6, 1, 1, 'NULL'),
(27, 10, 2, 'Pengadministrasi Keuangan', 'NULL', 5, 2, 2, 'NULL'),
(28, 7, 2, 'Perancang Peraturan Perundang-undangan Pertama', 'NULL', 8, 0, 2, 'NULL'),
(29, 7, 2, 'Analis Peraturan Perundang-Undangan dan Rancangan Peraturan Perundang-Undangan', 'NULL', 7, 1, 1, 'NULL'),
(30, 7, 2, 'Penyusun Bahan Bantuan Hukum', 'NULL', 7, 1, 1, 'NULL'),
(31, 7, 2, 'Pengadministrasi Data Peraturan Perundang - Undangan', 'NULL', 5, 0, 1, 'NULL'),
(32, 11, 2, 'Analis Kerjasama', 'NULL', 7, 2, 2, 'NULL'),
(33, 11, 2, 'Pengelola Informasi Kerjasama', 'NULL', 6, 1, 2, 'NULL'),
(34, 11, 2, 'Pengadministrasi Program dan Kerjasama', 'NULL', 5, 1, 1, 'NULL'),
(35, 11, 2, 'Pengadministrasi Perjalanan Dinas Luar Negeri', 'NULL', 5, 0, 1, 'NULL'),
(36, 12, 2, 'Penyusun Informasi dan Publikasi Pendidikan Tinggi', 'NULL', 7, 1, 1, 'NULL'),
(37, 12, 2, 'Pengolah Data dan Informasi', 'NULL', 6, 1, 1, 'NULL'),
(38, 12, 2, 'Pengelola Situs/ Web', 'NULL', 6, 0, 1, 'NULL'),
(39, 12, 2, 'Pengadministrasi Umum', 'NULL', 5, 1, 1, 'NULL'),
(40, 8, 2, 'Arsiparis Penyelia', 'NULL', 8, 0, 1, 'NULL'),
(41, 8, 2, 'Arsiparis Pelaksana Lanjutan', 'NULL', 7, 0, 0, 'NULL'),
(42, 8, 2, 'Arsiparis Pelaksana ', 'NULL', 6, 0, 0, 'NULL'),
(43, 8, 2, 'Analis Organisasi dan Tata Laksana', 'NULL', 7, 2, 2, 'NULL'),
(44, 8, 2, 'Pengolah Data', 'NULL', 6, 1, 1, 'NULL'),
(45, 8, 2, 'Pengelola Kepegawaian', 'NULL', 6, 1, 1, 'NULL'),
(46, 8, 2, 'Sekretaris', 'NULL', 6, 1, 1, 'NULL'),
(47, 8, 2, 'Ajudan', 'NULL', 6, 0, 1, 'NULL'),
(48, 8, 2, 'Pengadministrasi Kepegawaian', 'NULL', 5, 1, 1, 'NULL'),
(49, 8, 2, 'Pranata Kearsipan', 'NULL', 5, 1, 1, 'NULL'),
(50, 8, 2, 'Pengadministrasi Persuratan', 'NULL', 5, 2, 2, 'NULL'),
(51, 13, 2, 'Analis Pengembangan Sarana Dan Prasarana', 'NULL', 7, 2, 2, 'NULL'),
(52, 13, 2, 'Pengelola Sarana dan Prasarana Kantor', 'NULL', 6, 3, 3, 'NULL'),
(53, 13, 2, 'Pengadministrasi Umum', 'NULL', 5, 1, 1, 'NULL'),
(54, 13, 2, 'Teknisi Peralatan Kantor', 'NULL', 5, 5, 6, 'NULL'),
(55, 13, 2, 'Pramu Bakti', 'NULL', 3, 2, 2, 'NULL'),
(56, 14, 2, 'Pengelola Pengadaan Barang/Jasa Pertama', 'NULL', 8, 0, 1, 'NULL'),
(57, 14, 2, 'Analis Kebijakan Barang Milik Negara', 'NULL', 7, 0, 1, 'NULL'),
(58, 14, 2, 'Pengelola Barang Milik Negara', 'NULL', 6, 2, 2, 'NULL'),
(59, 14, 2, 'Pengadministrasi Umum', 'NULL', 5, 2, 3, 'NULL'),
(60, 1, 1, 'DIREKTUR INOVASI INDUSTRI', 'NULL', 15, 0, 0, 'Direktur Inovasi Industri'),
(61, 60, 1, 'KEPALA SUBBAGIAN TATA USAHA', 'NULL', 9, 0, 0, 'Kasubag Tata Usaha'),
(62, 60, 1, 'KEPALA SUBDIREKTORAT INDUSTRI TEKNOLOGI INFORMASI DAN KOMUNIKASI DAN PERTAHANAN DAN KEAMANAN', 'NULL', 12, 0, 0, 'Kasubdit Industri TIK Dan Pertahanan Dan Keamanan'),
(63, 60, 1, 'KEPALA SUBDIREKTORAT INDUSTRI ENERGI DAN TRANSPORTASI', 'NULL', 12, 0, 0, 'Kasubdit Industri Energi Dan Transportasi'),
(64, 60, 1, 'KEPALA SUBDIREKTORAT INDUSTRI PANGAN, KESEHATAN DAN OBAT', 'NULL', 12, 0, 0, 'Kasubdit Industri Pangan, Kesehatan Dan Obat'),
(65, 60, 1, 'KEPALA SUBDIREKTORAT INDUSTRI BAHAN BAKU DAN MATERIAL MAJU', 'NULL', 12, 0, 0, 'Kasubdit Industri Bahan Baku Dan Material Maju'),
(66, 62, 1, 'KEPALA SEKSI INDUSTRI TEKNOLOGI INFORMASI DAN KOMUNIKASI', 'NULL', 9, 0, 0, 'Kasi Industri Teknologi Informasi Dan Komunikasi'),
(67, 62, 1, 'KEPALA SEKSI INDUSTRI PERTAHANAN DAN KEAMANAN', 'NULL', 9, 0, 0, 'Kasi Industri Pertahanan Dan Keamanan'),
(68, 63, 1, 'KEPALA SEKSI INDUSTRI ENERGI', 'NULL', 9, 0, 0, 'Kasi Industri Energi'),
(69, 63, 1, 'KEPALA SEKSI INDUSTRI TRANSPORTASI', 'NULL', 9, 0, 0, 'Kasi Industri Transportasi'),
(70, 64, 1, 'KEPALA SEKSI INDUSTRI PANGAN', 'NULL', 9, 0, 0, 'Kasi Industri Pangan'),
(71, 64, 1, 'KEPALA SEKSI INDUSTRI KESEHATAN DAN OBAT', 'NULL', 9, 0, 0, 'Kasi Industri Kesehatan Dan Obat'),
(72, 65, 1, 'KEPALA SEKSI INDUSTRI BAHAN BAKU', 'NULL', 9, 0, 0, 'Kasi Industri Bahan Baku'),
(73, 65, 1, 'KEPALA SEKSI INDUSTRI MATERIAL MAJU', 'NULL', 9, 0, 0, 'Kasi Industri Material Maju'),
(74, 61, 2, 'Arsiparis Penyelia', 'NULL', 8, 0, 1, 'NULL'),
(75, 61, 2, 'Arsiparis Pelaksana Lanjutan', 'NULL', 7, 0, 0, 'NULL'),
(76, 61, 2, 'Arsiparis Pelaksana ', 'NULL', 6, 0, 0, 'NULL'),
(77, 61, 2, 'Bendahara ', 'NULL', 7, 0, 1, 'NULL'),
(78, 61, 2, 'Penyusun Laporan Keuangan', 'NULL', 7, 0, 1, 'NULL'),
(79, 61, 2, 'Pengola Data ', 'NULL', 6, 0, 1, 'NULL'),
(80, 61, 2, 'Pengelola Barang Milik Negara', 'NULL', 6, 0, 1, 'NULL'),
(81, 61, 2, 'Pengelola Keuangan', 'NULL', 6, 1, 2, 'NULL'),
(82, 61, 2, 'Pengolah Database Surat Perintah Membayar', 'NULL', 6, 0, 1, 'NULL'),
(83, 61, 2, 'Pengadministrasi Persuratan', 'NULL', 5, 1, 2, 'NULL'),
(84, 61, 2, 'Pengadministrasi Umum', 'NULL', 5, 2, 2, 'NULL'),
(85, 61, 2, 'Pengadministrasi Keuangan', 'NULL', 5, 1, 1, 'NULL'),
(86, 61, 2, 'Pengadministrasi Kepegawaian', 'NULL', 5, 0, 1, 'NULL'),
(87, 61, 2, 'Pranata Kearsipan', 'NULL', 5, 0, 1, 'NULL'),
(88, 66, 2, 'Analis Pemanpaatan Teknologi', 'NULL', 7, 1, 1, 'NULL'),
(89, 66, 2, 'Pengolah Data', 'NULL', 6, 1, 1, 'NULL'),
(90, 66, 2, 'Pengadministrasi Umum', 'NULL', 5, 1, 1, 'NULL'),
(91, 67, 2, 'Analis Pemanpaatan Teknologi', 'NULL', 7, 1, 1, 'NULL'),
(92, 67, 2, 'Pengolah Data', 'NULL', 6, 0, 1, 'NULL'),
(93, 68, 2, 'Analis Pemanpaatan Teknologi', 'NULL', 7, 1, 1, 'NULL'),
(94, 68, 2, 'Pengolah Data', 'NULL', 6, 1, 1, 'NULL'),
(95, 69, 2, 'Analis Pemanpaatan Teknologi', 'NULL', 7, 1, 1, 'NULL'),
(96, 69, 2, 'Pengolah Data', 'NULL', 6, 0, 1, 'NULL'),
(97, 69, 2, 'Pengadministrasi Umum', 'NULL', 5, 1, 1, 'NULL'),
(98, 70, 2, 'Analis Pemanpaatan Teknologi', 'NULL', 7, 1, 1, 'NULL'),
(99, 70, 2, 'Pengolah Data', 'NULL', 6, 0, 1, 'NULL'),
(100, 71, 2, 'Analis Pemanpaatan Teknologi', 'NULL', 7, 1, 1, 'NULL'),
(101, 71, 2, 'Pengolah Data', 'NULL', 6, 0, 1, 'NULL'),
(102, 71, 2, 'Pengadministrasi Umum', 'NULL', 5, 1, 1, 'NULL'),
(103, 72, 2, 'Analis Pemanpaatan Teknologi', 'NULL', 7, 1, 1, 'NULL'),
(104, 72, 2, 'Pengolah Data', 'NULL', 6, 0, 1, 'NULL'),
(105, 73, 2, 'Analis Pemanpaatan Teknologi', 'NULL', 7, 1, 1, 'NULL'),
(106, 73, 2, 'Pengolah Data', 'NULL', 6, 0, 1, 'NULL'),
(107, 73, 2, 'Pengadministrasi Umum', 'NULL', 5, 1, 1, 'NULL'),
(108, 1, 1, 'DIREKTUR PERUSAHAAN PEMULA BERBASIS TEKNOLOGI', 'NULL', 15, 0, 0, 'Direktur Perusahaan Pemula Berbasis Teknologi'),
(109, 108, 1, 'KEPALA SUBBAGIAN TATA USAHA', 'NULL', 9, 0, 0, 'Kasubag Tata Usaha'),
(110, 108, 1, 'KEPALA SUBDIREKTORAT TEKNOLOGI INFORMASI DAN KOMUNIKASI DAN PERTAHANAN DAN KEAMANAN', 'NULL', 12, 0, 0, 'Kasubdit TIK Dan Pertahanan Dan Keamanan'),
(111, 108, 1, 'KEPALA SUBDIREKTORAT ENERGI DAN TRANSPORTASI', 'NULL', 12, 0, 0, 'Kasubdit Energi Dan Transportasi'),
(112, 108, 1, 'KEPALA SUBDIREKTORAT PANGAN, KESEHATAN, DAN OBAT', 'NULL', 12, 0, 0, 'Kasubdit Pangan, Kesehatan, Dan Obat'),
(113, 108, 1, 'KEPALA SUBDIREKTORAT BAHAN BAKU DAN MATERIAL MAJU', 'NULL', 12, 0, 0, 'Kasubdit Bahan Baku Dan Material Maju'),
(114, 110, 1, 'KEPALA SEKSI TEKNOLOGI INFORMASI DAN KOMUNIKASI', 'NULL', 9, 0, 0, 'Kasi Teknologi Informasi Dan Komunikasi'),
(115, 110, 1, 'KEPALA SEKSI PERTAHANAN DAN KEAMANAN', 'NULL', 9, 0, 0, 'Kasi Pertahanan Dan Keamanan'),
(116, 111, 1, 'KEPALA SEKSI ENERGI', 'NULL', 9, 0, 0, 'Kasi Energi'),
(117, 111, 1, 'KEPALA SEKSI TRANSPORTASI', 'NULL', 9, 0, 0, 'Kasi Transportasi'),
(118, 112, 1, 'KEPALA SEKSI PANGAN', 'NULL', 9, 0, 0, 'Kasi Pangan'),
(119, 112, 1, 'KEPALA SEKSI KESEHATAN DAN OBAT', 'NULL', 9, 0, 0, 'Kasi Kesehatan Dan Obat'),
(120, 113, 1, 'KEPALA SEKSI BAHAN BAKU', 'NULL', 9, 0, 0, 'Kasi Bahan Baku'),
(121, 113, 1, 'KEPALA SEKSI MATERIAL MAJU', 'NULL', 9, 0, 0, 'Kasi Material Maju'),
(122, 109, 2, 'Arsiparis Penyelia', 'NULL', 8, 0, 1, 'NULL'),
(123, 109, 2, 'Arsiparis Pelaksana Lanjutan', 'NULL', 7, 0, 0, 'NULL'),
(124, 109, 2, 'Arsiparis Pelaksana ', 'NULL', 6, 0, 0, 'NULL'),
(125, 109, 2, 'Bendahara ', 'NULL', 7, 0, 1, 'NULL'),
(126, 109, 2, 'Penyusun Laporan Keuangan', 'NULL', 7, 0, 1, 'NULL'),
(127, 109, 2, 'Pengolah Data ', 'NULL', 6, 0, 1, 'NULL'),
(128, 109, 2, 'Pengelola Barang Milik Negara', 'NULL', 6, 0, 1, 'NULL'),
(129, 109, 2, 'Pengelola Keuangan', 'NULL', 6, 0, 2, 'NULL'),
(130, 109, 2, 'Pengolah Database Surat Perintah Membayar', 'NULL', 6, 0, 1, 'NULL'),
(131, 109, 2, 'Pengadministrasi Persuratan', 'NULL', 5, 1, 2, 'NULL'),
(132, 109, 2, 'Pengadministrasi Umum', 'NULL', 5, 1, 2, 'NULL'),
(133, 109, 2, 'Pengadministrasi Keuangan', 'NULL', 5, 0, 1, 'NULL'),
(134, 109, 2, 'Pengadministrasi Kepegawaian', 'NULL', 5, 0, 1, 'NULL'),
(135, 109, 2, 'Pranata Kearsipan', 'NULL', 5, 0, 1, 'NULL'),
(136, 114, 2, 'Analis Pemanpaatan Teknologi ', 'NULL', 7, 1, 1, 'NULL'),
(137, 114, 2, 'Pengolah Data', 'NULL', 6, 1, 1, 'NULL'),
(138, 115, 2, 'Analis Pemanpaatan Teknologi ', 'NULL', 7, 0, 1, 'NULL'),
(139, 115, 2, 'Pengolah Data', 'NULL', 6, 1, 1, 'NULL'),
(140, 115, 2, 'Pengadministrasi Umum', 'NULL', 5, 0, 1, 'NULL'),
(141, 116, 2, 'Analis Pemanpaatan Teknologi ', 'NULL', 7, 1, 1, 'NULL'),
(142, 116, 2, 'Pengolah Data', 'NULL', 6, 0, 1, 'NULL'),
(143, 117, 2, 'Analis Pemanpaatan Teknologi ', 'NULL', 7, 0, 1, 'NULL'),
(144, 117, 2, 'Pengolah Data ', 'NULL', 6, 0, 1, 'NULL'),
(145, 117, 2, 'Pengadministrasi Umum ', 'NULL', 5, 1, 1, 'NULL'),
(146, 118, 2, 'Analis Pemanpaatan Teknologi ', 'NULL', 7, 1, 1, 'NULL'),
(147, 118, 2, 'Pengolah Data ', 'NULL', 6, 0, 1, 'NULL'),
(148, 119, 2, 'Analis Pemanpaatan Teknologi ', 'NULL', 7, 0, 1, 'NULL'),
(149, 119, 2, 'Pengolah Data ', 'NULL', 6, 1, 1, 'NULL'),
(150, 119, 2, 'Pengadministrasi Umum ', 'NULL', 5, 1, 1, 'NULL'),
(151, 120, 2, 'Analis Pemanpaatan Teknologi ', 'NULL', 7, 1, 1, 'NULL'),
(152, 120, 2, 'Pengolah Data ', 'NULL', 6, 0, 1, 'NULL'),
(153, 121, 2, 'Analis Pemanpaatan Teknologi ', 'NULL', 7, 0, 1, 'NULL'),
(154, 121, 2, 'Pengolah Data', 'NULL', 6, 1, 1, 'NULL'),
(155, 121, 2, 'Pengadministrasi Umum ', 'NULL', 5, 1, 1, 'NULL'),
(156, 1, 1, 'DIREKTUR SISTEM INOVASI ', 'NULL', 0, 0, 0, 'Direktur Sistem Inovasi '),
(157, 156, 1, 'KEPALA SUBBAGIAN TATA USAHA', 'NULL', 0, 0, 0, 'Kasubag Tata Usaha'),
(158, 156, 1, 'KEPALA SUBDIREKTORAT PENGEMBANGAN SISTEM DAN JARINGAN INOVASI', 'NULL', 0, 0, 0, 'Kasubdit Pengembangan Sistem Dan Jaringan Inovasi'),
(159, 156, 1, 'KEPALA SUBDIREKTORAT HARMONISASI KEBIJAKAN DAN PROGRAM INOVASI', 'NULL', 0, 0, 0, 'Kasubdit Harmonisasi Kebijakan Dan Program Inovasi'),
(160, 156, 1, 'KEPALA SUBDIREKTORAT KEMITRAAN STRATEGIS DAN WAHANA INOVASI', 'NULL', 0, 0, 0, 'Kasubdit Kemitraan Strategis Dan Wahana Inovasi'),
(161, 156, 1, 'KEPALA SUBDIREKTORAT SISTEM INFORMASI DAN DISEMINASI INOVASI', 'NULL', 0, 0, 0, 'Kasubdit Sistem Informasi Dan Diseminasi Inovasi'),
(162, 158, 1, 'KEPALA SEKSI KEBIJAKAN INOVASI', 'NULL', 0, 0, 0, 'Kasi Kebijakan Inovasi'),
(163, 158, 1, 'KEPALA SEKSI JARINGAN INOVASI', 'NULL', 0, 0, 0, 'Kasi Jaringan Inovasi'),
(164, 159, 1, 'KEPALA SEKSI HARMONISASI PROGRAM DAN KEGIATAN', 'NULL', 0, 0, 0, 'Kasi Harmonisasi Program Dan Kegiatan'),
(165, 159, 1, 'KEPALA SEKSI EVALUASI SISTEM INOVASI', 'NULL', 0, 0, 0, 'Kasi Evaluasi Sistem Inovasi'),
(166, 160, 1, 'KEPALA SEKSI KEMITRAAN STRATEGIS', 'NULL', 0, 0, 0, 'Kasi Kemitraan Strategis'),
(167, 160, 1, 'KEPALA SEKSI WAHANA INOVASI', 'NULL', 0, 0, 0, 'Kasi Wahana Inovasi'),
(168, 161, 1, 'KEPALA SEKSI SISTEM INFORMASI INOVASI', 'NULL', 0, 0, 0, 'Kasi Sistem Informasi Inovasi'),
(169, 161, 1, 'KEPALA SEKSI DISEMINASI', 'NULL', 0, 0, 0, 'Kasi Diseminasi'),
(170, 157, 2, 'Arsiparis Penyelia', 'NULL', 8, 0, 1, 'NULL'),
(171, 157, 2, 'Arsiparis Pelaksana Lanjutan', 'NULL', 7, 0, 0, 'NULL'),
(172, 157, 2, 'Arsiparis Pelaksana ', 'NULL', 6, 0, 0, 'NULL'),
(173, 157, 2, 'Bendahara', 'NULL', 7, 0, 1, 'NULL'),
(174, 157, 2, 'Penyusun Laporan Keuangan', 'NULL', 7, 0, 1, 'NULL'),
(175, 157, 2, 'Pengolah Data', 'NULL', 6, 1, 1, 'NULL'),
(176, 157, 2, 'Pengelola Barang Milik Negara', 'NULL', 6, 0, 1, 'NULL'),
(177, 157, 2, 'Pengelola Keuangan', 'NULL', 6, 0, 2, 'NULL'),
(178, 157, 2, 'Pengelola Database Surat Perintah Membayar', 'NULL', 6, 0, 1, 'NULL'),
(179, 157, 2, 'Pengadministrasi Persuratan', 'NULL', 5, 1, 2, 'NULL'),
(180, 157, 2, 'Pengadministrasi Umum', 'NULL', 5, 1, 2, 'NULL'),
(181, 157, 2, 'Pengadministrasi Keuangan', 'NULL', 5, 0, 1, 'NULL'),
(182, 157, 2, 'Pengadministrasi Kepegawaian', 'NULL', 5, 0, 1, 'NULL'),
(183, 157, 2, 'Pranata Kearsipan', 'NULL', 5, 0, 1, 'NULL'),
(184, 162, 2, 'Penyusun Rencana Kebijakan', 'NULL', 7, 2, 2, 'NULL'),
(185, 162, 2, 'Pengolah Data', 'NULL', 6, 0, 1, 'NULL'),
(186, 162, 2, 'Pengadministrasi Umum', 'NULL', 5, 0, 1, 'NULL'),
(187, 163, 2, 'Penyusun Rencana Kebijakan', 'NULL', 7, 1, 1, 'NULL'),
(188, 163, 2, 'Pengolah Data', 'NULL', 6, 0, 1, 'NULL'),
(189, 164, 2, 'Penyusun Rencana Kebijakan', 'NULL', 7, 2, 2, 'NULL'),
(190, 164, 2, 'Pengolah Data', 'NULL', 6, 0, 1, 'NULL'),
(191, 164, 2, 'Pengadministrasi Umum', 'NULL', 5, 0, 1, 'NULL'),
(192, 165, 2, 'Penyusun Rencana Kebijakan', 'NULL', 7, 0, 2, 'NULL'),
(193, 165, 2, 'Pengolah Data ', 'NULL', 6, 1, 1, 'NULL'),
(194, 166, 2, 'Analis Ilmu Pengetahuan dan Teknologi', 'NULL', 7, 0, 2, 'NULL'),
(195, 166, 2, 'Pengolah Data ', 'NULL', 6, 1, 2, 'NULL'),
(196, 166, 2, 'Pengadministrasi Umum', 'NULL', 5, 1, 1, 'NULL'),
(197, 167, 2, 'Analis Ilmu Pengetahuan dan Teknologi', 'NULL', 7, 3, 3, 'NULL'),
(198, 167, 2, 'Pengolah Data', 'NULL', 6, 0, 1, 'NULL'),
(199, 168, 2, 'Analis Sistem Informasi ', 'NULL', 7, 1, 1, 'NULL'),
(200, 168, 2, 'Pengolah Data dan Informasi', 'NULL', 6, 0, 1, 'NULL'),
(201, 168, 2, 'Pengelola Situs/ Web', 'NULL', 6, 0, 1, 'NULL'),
(202, 169, 2, 'Analis Ilmu Pengetahuan dan Teknologi', 'NULL', 7, 1, 1, 'NULL'),
(203, 169, 2, 'Pengolah Data', 'NULL', 6, 1, 2, 'NULL'),
(204, 169, 2, 'Pengadministrasi Umum', 'NULL', 5, 2, 2, 'NULL'),
(205, 0, 0, '-', 'NULL', 0, 0, 0, '-'),
(206, 0, 2, 'ANALIS INOVASI INDUSTRI', '', 0, 0, 0, ''),
(207, 0, 2, 'penyusun program kebijakan inovasi', '', 0, 0, 0, ''),
(208, 0, 2, 'penyusun program kebijakan inovasi', '', 0, 0, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_master_lokasi_kerja`
--

CREATE TABLE `tbl_master_lokasi_kerja` (
  `id_lokasi_kerja` int(10) NOT NULL,
  `lokasi_kerja` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_master_lokasi_kerja`
--

INSERT INTO `tbl_master_lokasi_kerja` (`id_lokasi_kerja`, `lokasi_kerja`) VALUES
(1, 'NANGROE ACEH DARUSALAM'),
(2, 'SUMATERA UTARA'),
(3, 'SUMATERA BARAT'),
(4, 'RIAU'),
(5, 'JAMBI'),
(6, 'SUMATERA SELATAN'),
(7, 'BENGKULU'),
(8, 'LAMPUNG'),
(9, 'DKI JAKARTA'),
(10, 'JAWA BARAT'),
(11, 'JAWA TENGAH'),
(12, 'DI YOGYAKARTA'),
(13, 'JAWA TIMUR'),
(14, 'BALI'),
(15, 'NUSA TENGGARA BARAT'),
(16, 'NUSA TENGGARA TIMUR'),
(17, 'MANADO'),
(18, 'KALIMANTAN BARAT'),
(19, 'KALIMANTAN TENGAH'),
(20, 'KALIMANTAN SELATAN'),
(21, 'KALIMANTAN TIMUR'),
(22, 'SULAWESI UTARA'),
(23, 'SULAWESI TENGAH'),
(24, 'SULAWESI SELATAN'),
(25, 'SULAWESI TENGGARA'),
(26, 'IRIAN JAYA BARAT'),
(27, 'BANTEN'),
(28, 'PAPUA'),
(29, 'GORONTALO'),
(30, 'SULAWESI BARAT'),
(31, 'KEP. RIAU'),
(32, 'MALUKU UTARA'),
(33, 'MALUKU'),
(34, '-');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_master_penghargaan`
--

CREATE TABLE `tbl_master_penghargaan` (
  `id_penghargaan` int(50) NOT NULL,
  `nama_penghargaan` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_master_penghargaan`
--

INSERT INTO `tbl_master_penghargaan` (`id_penghargaan`, `nama_penghargaan`) VALUES
(1, 'BINTANG REPUBLIK INDONESIA'),
(2, 'BINTANG REPUBLIK INDONESIA ADIPURNA'),
(3, 'BINTANG REPUBLIK INDONESIA ADIPRADANA'),
(4, 'BINTANG REPUBLIK INDONESIA UTAMA'),
(5, 'BINTANG REPUBLIK INDONESIA PRATAMA'),
(6, 'BINTANG REPUBLIK INDONESIA NARARYA'),
(7, 'BINTANG MAHAPUTERA'),
(8, 'BINTANG MAHAPUTERA ADIPURNA'),
(9, 'BINTANG MAHAPUTERA ADIPRADANA'),
(10, 'BINTANG MAHAPUTERA UTAMA'),
(11, 'BINTANG MAHAPUTERA PRATAMA'),
(12, 'BINTANG MAHAPUTERA NARARYA'),
(13, 'BINTANG JASA'),
(14, 'BINTANG JASA UTAMA'),
(15, 'BINTANG JASA PRATAMA'),
(16, 'BINTANG JASA NARARYA'),
(17, 'BINTANG YUDHA DHARMA'),
(18, 'BINTANG YUDHA DHARMA UTAMA'),
(19, 'BINTANG YUDHA DHARMA PRATAMA'),
(20, 'BINTANG YUDHA DHARMA NARARYA'),
(21, 'BINTANG KARTIKA EKA PAKSI'),
(22, 'BINTANG KARTIKA EKA PAKSI UTAMA'),
(23, 'BINTANG KARTIKA EKA PAKSI PRATAMA'),
(24, 'BINTANG KARTIKA EKA PAKSI NARARYA'),
(25, 'BINTANG JALASENA'),
(26, 'BINTANG JALASENA UTAMA'),
(27, 'BINTANG JALASENA PRATAMA'),
(28, 'BINTANG JALASENA NARARYA'),
(29, 'BINTANG SWA BHUWANA PAKSA'),
(30, 'BINTANG SWA BHUWANA PAKSA UTAMA'),
(31, 'BINTANG SWA BHUWANA PAKSA PRATAMA'),
(32, 'BINTANG SWA BHUWANA PAKSA NARARYA'),
(33, 'BINTANG BHAYANGKARA'),
(34, 'BINTANG BHAYANGKARA UTAMA'),
(35, 'BINTANG BHAYANGKARA PRATAMA'),
(36, 'BINTANG BHAYANGKARA NARARYA'),
(37, 'BINTANG GARUDA'),
(38, 'BINTANG SEWINDU ANGKATAN PERANG RI'),
(39, 'SATYALANCANA BHAKTI'),
(40, 'SATYALANCANA TELADAN'),
(41, 'SATYALANCANA KESETIAAN'),
(42, 'SATYALANCANA KESETIAAN 8 TAHUN'),
(43, 'SATYALANCANA KESETIAAN 16 TAHUN'),
(44, 'SATYALANCANA KESETIAAN 24 TAHUN'),
(45, 'SATYALANCANA PERANG KEMERDEKAAN'),
(46, 'SATYALANCANA PERANG KEMERDEKAAN KELAS I'),
(47, 'SATYALANCANA PERANG KEMERDEKAAN KELAS II'),
(48, 'SATYALANCANA SAPTAMARGA'),
(49, 'SATYALANCANA GOM'),
(50, 'SATYALANCANA GOM KELAS I'),
(51, 'SATYALANCANA GOM KELAS II'),
(52, 'SATYALANCANA GOM KELAS III'),
(53, 'SATYALANCANA GOM KELAS IV'),
(54, 'SATYALANCANA GOM KELAS V'),
(55, 'SATYALANCANA GOM KELAS VI'),
(56, 'SATYALANCANA GOM KELAS VII'),
(57, 'SATYALANCANA GOM KELAS VIII'),
(58, 'SATYALANCANA GOM KELAS IX'),
(59, 'SATYALANCANA PERINTIS PERGERAKAN KEMERDEKAAN'),
(60, 'SATYALANCANA PERINGATAN PERJUANGAN KEMERDEKAAN'),
(61, 'SATYALANCANA PEMBANGUNAN'),
(62, 'SATYALANCANA KARYA SATYA'),
(63, 'SATYALANCANA KARYA SATYA KELAS I'),
(64, 'SATYALANCANA KARYA SATYA KELAS II'),
(65, 'SATYALANCANA KARYA SATYA KELAS III'),
(66, 'SATYALANCANA KARYA SATYA KELAS IV'),
(67, 'SATYALANCANA KARYA SATYA KELAS V'),
(68, 'SATYALANCANA KARYA SATYA XXX TAHUN'),
(69, 'SATYALANCANA KARYA SATYA XX TAHUN'),
(70, 'SATYALANCANA KARYA SATYA X TAHUN'),
(71, 'SATYALANCANA KEBAKTIAN SOSIAL'),
(72, 'SATYALANCANA KEBUDAYAAN'),
(73, 'SATYALANCANA JASA DHARMA ANGKATAN LAUT'),
(74, 'SATYALANCANA SATYA DASA WARSA POLRI'),
(75, 'SATYALANCANA JANA UTAMA'),
(76, 'SATYALANCANA KSATRYA TAMTAMA'),
(77, 'SATYALANCANA KARYA BHAKTI'),
(78, 'SATYALANCANA PRASETYA PANCA WARSA'),
(79, 'SATYALANCANA KEAMANAN'),
(80, 'SATYALANCANA WIRA KARYA'),
(81, 'SATYALANCANA SATYA DHARMA'),
(82, 'SATYALANCANA WIRA DHARMA'),
(83, 'SATYALANCANA YUDHA UTAMA KKO-AL'),
(84, 'SATYALANCANA YUDHA UTAMA KKO-AL KELAS I'),
(85, 'SATYALANCANA YUDHA UTAMA KKO-AL KELAS II'),
(86, 'SATYALANCANA DWIYA SISTHA'),
(87, 'SATYALANCANA PENEGAK'),
(88, 'SATYALANCANA PEPERA'),
(89, 'PIAGAM SATYA KARYA'),
(90, 'PIAGAM SATYA KARYA 20 TAHUN'),
(91, 'PIAGAM SATYA KARYA 30 TAHUN'),
(92, 'PIAGAM PENGHARGAAN ATAS JASA KHUSUS TEK.KEKARYAAN'),
(93, 'PIAGAM PENGHARGAAN TELADAN'),
(94, 'PIAGAM PENGHARGAAN TELADAN KEPEMIMPINAN'),
(95, 'PIAGAM PENGHARGAAN TELADAN KEPEGAWAIAN'),
(96, 'PIAGAM PENGHARGAAN TELADAN PELAK. TUGAS'),
(97, 'PIAGAM PENGHARGAAN ANUMERTA'),
(98, 'PIAGAM PENGHARGAAN KHUSUS'),
(99, 'SATYALANCANA SANTI DHARMA'),
(100, 'SATYALANCANA SEROJA'),
(101, 'SATYALANCANA PENDIDIKAN'),
(102, 'NUGRAHA SAKANTI JANA UTAMA'),
(103, 'NUGRAHA SAKANTI KSATRYA TAMTAMA'),
(104, 'NUGRAHA SAKANTI KARYA BHAKTI'),
(105, 'SAM KARYA NUGRAHA'),
(106, 'PRASAMYA PURNAKARYA NUGRAHA'),
(107, 'BINTANG SAKTI'),
(108, 'BINTANG DHARMA'),
(109, 'BINTANG GERILYA'),
(110, 'BINTANG BUDAYA PARAMA DHARMA'),
(111, 'SATYALANCANA PERISTIWA'),
(112, 'LAIN-LAIN'),
(113, '-');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_master_satuan_kerja`
--

CREATE TABLE `tbl_master_satuan_kerja` (
  `id_satuan_kerja` int(50) NOT NULL,
  `nama_satuan_kerja` varchar(150) NOT NULL,
  `parent_unit` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_master_satuan_kerja`
--

INSERT INTO `tbl_master_satuan_kerja` (`id_satuan_kerja`, `nama_satuan_kerja`, `parent_unit`) VALUES
(7, 'Sub Direktorat Pengembangan Sistem dan Jaringan Inovasi', 'DIREKTORAT SISTEM INOVASI'),
(8, 'Sub Direktorat Harmonisasi Kebijakan dan Program Inovasi', 'DIREKTORAT SISTEM INOVASI'),
(9, 'Sub Direktorat Kemitraan Strategis dan Wahana Inovasi', 'DIREKTORAT SISTEM INOVASI'),
(10, 'Sub Direktorat Sistem Informasi dan Diseminasi Inovasi', 'DIREKTORAT SISTEM INOVASI'),
(11, 'Sub Direktorat Industri Teknologi Informasi dan Komunikasi dan Pertahanan dan Keamanan', 'DIREKTORAT INOVASI INDUSTRI'),
(12, 'Sub Direktorat Industri Energi dan Transportasi', 'DIREKTORAT INOVASI INDUSTRI'),
(13, '-', '-');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_master_status_jabatan`
--

CREATE TABLE `tbl_master_status_jabatan` (
  `id_status_jabatan` int(50) NOT NULL,
  `status_jabatan` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_master_status_jabatan`
--

INSERT INTO `tbl_master_status_jabatan` (`id_status_jabatan`, `status_jabatan`) VALUES
(1, 'STRUKTURAL'),
(3, 'DPK'),
(4, 'DPB'),
(5, 'DITUGASKAN'),
(6, 'FUNGSIONAL'),
(7, '-');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_master_status_pegawai`
--

CREATE TABLE `tbl_master_status_pegawai` (
  `id_status_pegawai` int(50) NOT NULL,
  `nama_status` varchar(150) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_master_status_pegawai`
--

INSERT INTO `tbl_master_status_pegawai` (`id_status_pegawai`, `nama_status`) VALUES
(1, 'MENINGGAL DUNIA'),
(2, 'OUTSOURCING'),
(3, 'HONORER'),
(4, 'CPNS PUSAT'),
(5, 'PNS PUSAT'),
(6, 'CPNS DAERAH'),
(7, 'PNS DAERAH'),
(8, 'ABRI'),
(9, 'PENSIUN'),
(10, 'BERHENTI/PINDAH'),
(12, '-');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_master_unit_kerja`
--

CREATE TABLE `tbl_master_unit_kerja` (
  `id_unit_kerja` int(50) NOT NULL,
  `nama_unit_kerja` varchar(150) NOT NULL,
  `eselon` varchar(50) NOT NULL,
  `parent_unit` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_master_unit_kerja`
--

INSERT INTO `tbl_master_unit_kerja` (`id_unit_kerja`, `nama_unit_kerja`, `eselon`, `parent_unit`) VALUES
(1, 'DIREKTORAT JENDERAL PENGUATAN INOVASI', 'I', ''),
(2, 'SEKRETARIAT DIREKTORAT JENDERAL PENGUATAN INOVASI', 'II.b', 'DIREKTORAT JENDERAL PENGUATAN INOVASI'),
(31, 'DIREKTORAT SISTEM INOVASI', 'II.a', 'DIREKTORAT JENDERAL PENGUATAN INOVASI'),
(32, 'DIREKTORAT INOVASI INDUSTRI', 'II.a', 'DIREKTORAT JENDERAL PENGUATAN INOVASI'),
(33, 'DIREKTORAT PERUSAHAAN PEMULA BERBASIS TEKNOLOGI', 'II.a', 'DIREKTORAT JENDERAL PENGUATAN INOVASI'),
(34, 'BAGIAN UMUM', 'II.a', 'SEKRETARIAT DIREKTORAT JENDERAL PENGUATAN INOVASI'),
(35, 'DIREKTORAT ', '', ''),
(36, '-', '-', '-');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_usul_penghargaan`
--

CREATE TABLE `tbl_usul_penghargaan` (
  `id_penghargaan` int(50) NOT NULL,
  `id_pegawai` int(50) NOT NULL,
  `id_master_penghargaan` int(50) NOT NULL,
  `uraian` text NOT NULL,
  `nomor_sk` varchar(100) NOT NULL,
  `tanggal_sk` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_usul_penghargaan`
--

INSERT INTO `tbl_usul_penghargaan` (`id_penghargaan`, `id_pegawai`, `id_master_penghargaan`, `uraian`, `nomor_sk`, `tanggal_sk`) VALUES
(1, 9, 69, '2019', '', ''),
(2, 10, 69, '2019', '', ''),
(3, 11, 69, '2019', '', ''),
(4, 36, 69, '2019', '', ''),
(5, 37, 69, '2019', '', ''),
(6, 38, 69, '2019', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `image` varchar(128) NOT NULL,
  `password` varchar(256) NOT NULL,
  `role_id` int(11) NOT NULL,
  `is_active` int(1) NOT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `image`, `password`, `role_id`, `is_active`, `date_created`) VALUES
(3, 'Albert D. Arch', 'albertd@mail.com', 'albert.jpg', '$2y$10$O57hasV5/LKRZf0exlMI.uDcJYfbdTG6j1dCMksS17t3cuR75PptG', 1, 1, 1567752002),
(4, 'Sakamaki Izayoi', 'sakamaki@mail.com', 'default.jpg', '$2y$10$hD4U.qXOQ69JGfjmWWCB9.KfosgjeBLZ6Pgose0qjhtt.qWWkyYpC', 2, 1, 1567752079),
(6, 'Arima Kousei', 'arima@mail.com', 'default.jpg', '$2y$10$G73.CjI5W2oMepcaJcVK3e1NYSEjYX03mP.OST/1mom5d98l9pYR.', 2, 1, 1567755025),
(7, 'Kaori Miyazono', 'kaori@mail.com', 'default.jpg', '$2y$10$F3NA3OdiOvdEroTBd1.9sOzQ4onv5SX0MLHNIbPOaay95gOPuJcx6', 2, 1, 1567825880);

-- --------------------------------------------------------

--
-- Table structure for table `user_access_menu`
--

CREATE TABLE `user_access_menu` (
  `id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_access_menu`
--

INSERT INTO `user_access_menu` (`id`, `role_id`, `menu_id`) VALUES
(49, 1, 1),
(50, 1, 3),
(51, 1, 4),
(53, 1, 6),
(54, 1, 7),
(55, 1, 8),
(66, 1, 5);

-- --------------------------------------------------------

--
-- Table structure for table `user_menu`
--

CREATE TABLE `user_menu` (
  `id` int(11) NOT NULL,
  `menu` varchar(128) NOT NULL,
  `icon` varchar(256) NOT NULL,
  `title_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_menu`
--

INSERT INTO `user_menu` (`id`, `menu`, `icon`, `title_id`) VALUES
(1, 'Admin', 'fas fa-fw fa-user-alt', 1),
(2, 'User', 'fas fa-fw fa-user-alt', 1),
(3, 'Organisasi', 'fas fa-fw fa-university', 2),
(4, 'Administrasi', 'fas fa-fw fa-server', 2),
(5, 'Pegawai', 'fas fa-fw fa-user', 3),
(6, 'Master', 'fas fa-fw fa-server', 3),
(7, 'Profile', 'fas fa-fw fa-id-card', 4),
(8, 'Menu', 'fas fa-fw fa-bars', 4);

-- --------------------------------------------------------

--
-- Table structure for table `user_role`
--

CREATE TABLE `user_role` (
  `id` int(11) NOT NULL,
  `role` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_role`
--

INSERT INTO `user_role` (`id`, `role`) VALUES
(1, 'Admin'),
(2, 'User'),
(4, 'Moderator');

-- --------------------------------------------------------

--
-- Table structure for table `user_sub_menu`
--

CREATE TABLE `user_sub_menu` (
  `id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `title` varchar(128) NOT NULL,
  `url` varchar(128) NOT NULL,
  `icon` varchar(128) NOT NULL,
  `is_active` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_sub_menu`
--

INSERT INTO `user_sub_menu` (`id`, `menu_id`, `title`, `url`, `icon`, `is_active`) VALUES
(1, 1, 'Ikhtisar', 'admin', 'fas fa-fw fa-tachometer-alt', 1),
(2, 2, 'Ikhtisar', 'user', 'fas fa-fw fa-tachometer-alt', 1),
(3, 7, 'Profil Saya', 'profile', 'fas fa-fw fa-user-circle', 1),
(4, 7, 'Pengaturan', 'profile/setting', 'fas fa-fw fa-cog', 1),
(5, 8, 'Manajemen Menu', 'menu', 'fas fa-fw fa-folder', 1),
(6, 8, 'Manajemen Submenu', 'menu/submenu', 'fas fa-fw fa-folder-open', 1),
(7, 1, 'Hak Akses', 'admin/role', 'fas fa-fw fa-user-tie', 1),
(9, 3, 'Struktur Organisasi', 'organisasi/struktur', 'fas fa-fw fa-sitemap', 1),
(10, 3, 'Profil Pejabat', 'organisasi/pejabat', 'fas fa-fw fa-id-card', 1),
(11, 6, 'Eselon', 'master/eselon', 'fas fa-fw fa-angle-double-right', 1),
(12, 4, 'Rotasi', 'administrasi/rotasi', 'fas fa-fw fa-sync', 1),
(13, 4, 'Kenaikan Gaji', 'administrasi/gaji', 'fas fa-fw fa-chart-line', 1),
(14, 6, 'Pangkat/Golongan', 'master/pangkat', 'fas fa-fw fa-angle-double-right', 1),
(15, 6, 'Status Jabatan', 'master/statusj', 'fas fa-fw fa-angle-double-right', 1),
(16, 6, 'Sasaran Kinerja', 'ditjen/sasaran', 'fas fa-fw fa-tasks', 1),
(17, 5, 'PNS', 'pegawai/pns', 'far fa-fw fa-dot-circle', 1),
(18, 4, 'Kenaikan Pangkat', 'administrasi/pangkat', 'fas fa-fw fa-graduation-cap', 1),
(19, 5, 'Honorer', 'pegawai/honorer', 'far fa-fw fa-dot-circle', 1),
(20, 3, 'Penempatan Pejabat', 'organisasi/penempatan', 'fas fa-fw fa-sign-in-alt', 1),
(21, 5, 'Data Pegawai', 'pegawai', 'fas fa-fw fa-user-friends', 1),
(22, 5, 'Daftar Riwayat Hidup', 'pegawai/riwayat', 'fas fa-fw fa-address-card', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_title`
--

CREATE TABLE `user_title` (
  `id_title` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_title`
--

INSERT INTO `user_title` (`id_title`, `title`) VALUES
(1, 'Dashboard'),
(2, NULL),
(3, 'Data Pokok'),
(4, 'Lainnya'),
(100, '-');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `jabatanx`
--
ALTER TABLE `jabatanx`
  ADD PRIMARY KEY (`id_jabatan`);

--
-- Indexes for table `pegawaix`
--
ALTER TABLE `pegawaix`
  ADD PRIMARY KEY (`id_pegawai`);

--
-- Indexes for table `pejabatx`
--
ALTER TABLE `pejabatx`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_data_keluarga`
--
ALTER TABLE `tbl_data_keluarga`
  ADD PRIMARY KEY (`id_data_keluarga`);

--
-- Indexes for table `tbl_data_pegawai`
--
ALTER TABLE `tbl_data_pegawai`
  ADD PRIMARY KEY (`id_pegawai`);

--
-- Indexes for table `tbl_data_pegawai_x`
--
ALTER TABLE `tbl_data_pegawai_x`
  ADD PRIMARY KEY (`id_pegawai`);

--
-- Indexes for table `tbl_data_pejabat`
--
ALTER TABLE `tbl_data_pejabat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_data_pendidikan`
--
ALTER TABLE `tbl_data_pendidikan`
  ADD PRIMARY KEY (`id_pendidikan`);

--
-- Indexes for table `tbl_data_penghargaan`
--
ALTER TABLE `tbl_data_penghargaan`
  ADD PRIMARY KEY (`id_penghargaan`);

--
-- Indexes for table `tbl_data_riwayat_jabatan`
--
ALTER TABLE `tbl_data_riwayat_jabatan`
  ADD PRIMARY KEY (`id_riwayat_jabatan`);

--
-- Indexes for table `tbl_data_riwayat_pangkat`
--
ALTER TABLE `tbl_data_riwayat_pangkat`
  ADD PRIMARY KEY (`id_riwayat_pangkat`);

--
-- Indexes for table `tbl_data_seminar`
--
ALTER TABLE `tbl_data_seminar`
  ADD PRIMARY KEY (`id_seminar`);

--
-- Indexes for table `tbl_master_eselon`
--
ALTER TABLE `tbl_master_eselon`
  ADD PRIMARY KEY (`id_eselon`);

--
-- Indexes for table `tbl_master_golongan`
--
ALTER TABLE `tbl_master_golongan`
  ADD PRIMARY KEY (`id_golongan`);

--
-- Indexes for table `tbl_master_jabatan`
--
ALTER TABLE `tbl_master_jabatan`
  ADD PRIMARY KEY (`id_jabatan`);

--
-- Indexes for table `tbl_master_lokasi_kerja`
--
ALTER TABLE `tbl_master_lokasi_kerja`
  ADD PRIMARY KEY (`id_lokasi_kerja`);

--
-- Indexes for table `tbl_master_penghargaan`
--
ALTER TABLE `tbl_master_penghargaan`
  ADD PRIMARY KEY (`id_penghargaan`);

--
-- Indexes for table `tbl_master_satuan_kerja`
--
ALTER TABLE `tbl_master_satuan_kerja`
  ADD PRIMARY KEY (`id_satuan_kerja`);

--
-- Indexes for table `tbl_master_status_jabatan`
--
ALTER TABLE `tbl_master_status_jabatan`
  ADD PRIMARY KEY (`id_status_jabatan`);

--
-- Indexes for table `tbl_master_status_pegawai`
--
ALTER TABLE `tbl_master_status_pegawai`
  ADD PRIMARY KEY (`id_status_pegawai`);

--
-- Indexes for table `tbl_master_unit_kerja`
--
ALTER TABLE `tbl_master_unit_kerja`
  ADD PRIMARY KEY (`id_unit_kerja`);

--
-- Indexes for table `tbl_usul_penghargaan`
--
ALTER TABLE `tbl_usul_penghargaan`
  ADD PRIMARY KEY (`id_penghargaan`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_access_menu`
--
ALTER TABLE `user_access_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_menu`
--
ALTER TABLE `user_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_sub_menu`
--
ALTER TABLE `user_sub_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_title`
--
ALTER TABLE `user_title`
  ADD PRIMARY KEY (`id_title`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `jabatanx`
--
ALTER TABLE `jabatanx`
  MODIFY `id_jabatan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=205;

--
-- AUTO_INCREMENT for table `pegawaix`
--
ALTER TABLE `pegawaix`
  MODIFY `id_pegawai` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `pejabatx`
--
ALTER TABLE `pejabatx`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `tbl_data_keluarga`
--
ALTER TABLE `tbl_data_keluarga`
  MODIFY `id_data_keluarga` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_data_pegawai`
--
ALTER TABLE `tbl_data_pegawai`
  MODIFY `id_pegawai` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=149;

--
-- AUTO_INCREMENT for table `tbl_data_pegawai_x`
--
ALTER TABLE `tbl_data_pegawai_x`
  MODIFY `id_pegawai` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT for table `tbl_data_pejabat`
--
ALTER TABLE `tbl_data_pejabat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `tbl_data_pendidikan`
--
ALTER TABLE `tbl_data_pendidikan`
  MODIFY `id_pendidikan` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_data_penghargaan`
--
ALTER TABLE `tbl_data_penghargaan`
  MODIFY `id_penghargaan` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_data_riwayat_jabatan`
--
ALTER TABLE `tbl_data_riwayat_jabatan`
  MODIFY `id_riwayat_jabatan` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_data_riwayat_pangkat`
--
ALTER TABLE `tbl_data_riwayat_pangkat`
  MODIFY `id_riwayat_pangkat` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_data_seminar`
--
ALTER TABLE `tbl_data_seminar`
  MODIFY `id_seminar` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_master_eselon`
--
ALTER TABLE `tbl_master_eselon`
  MODIFY `id_eselon` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `tbl_master_golongan`
--
ALTER TABLE `tbl_master_golongan`
  MODIFY `id_golongan` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `tbl_master_jabatan`
--
ALTER TABLE `tbl_master_jabatan`
  MODIFY `id_jabatan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=209;

--
-- AUTO_INCREMENT for table `tbl_master_lokasi_kerja`
--
ALTER TABLE `tbl_master_lokasi_kerja`
  MODIFY `id_lokasi_kerja` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `tbl_master_penghargaan`
--
ALTER TABLE `tbl_master_penghargaan`
  MODIFY `id_penghargaan` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;

--
-- AUTO_INCREMENT for table `tbl_master_satuan_kerja`
--
ALTER TABLE `tbl_master_satuan_kerja`
  MODIFY `id_satuan_kerja` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tbl_master_status_jabatan`
--
ALTER TABLE `tbl_master_status_jabatan`
  MODIFY `id_status_jabatan` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_master_status_pegawai`
--
ALTER TABLE `tbl_master_status_pegawai`
  MODIFY `id_status_pegawai` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_master_unit_kerja`
--
ALTER TABLE `tbl_master_unit_kerja`
  MODIFY `id_unit_kerja` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `tbl_usul_penghargaan`
--
ALTER TABLE `tbl_usul_penghargaan`
  MODIFY `id_penghargaan` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `user_access_menu`
--
ALTER TABLE `user_access_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `user_menu`
--
ALTER TABLE `user_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `user_role`
--
ALTER TABLE `user_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user_sub_menu`
--
ALTER TABLE `user_sub_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `user_title`
--
ALTER TABLE `user_title`
  MODIFY `id_title` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
