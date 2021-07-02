-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 02 Jul 2021 pada 04.13
-- Versi server: 10.4.14-MariaDB
-- Versi PHP: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `chocomama`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id` int(11) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_admin`
--

INSERT INTO `tbl_admin` (`id`, `email`, `password`) VALUES
(1, 'anggun@gmail.com', 'e10adc3949ba59abbe56e057f20f883e'),
(2, 'anggun@gmail.com', '09052000');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_fee`
--

CREATE TABLE `tbl_fee` (
  `id` int(11) NOT NULL,
  `name` varchar(10) DEFAULT NULL,
  `price` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_fee`
--

INSERT INTO `tbl_fee` (`id`, `name`, `price`) VALUES
(1, 'Pajak', 10);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_payment`
--

CREATE TABLE `tbl_payment` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` int(11) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `method` int(11) DEFAULT NULL,
  `infocart` text DEFAULT NULL,
  `total` float DEFAULT NULL,
  `active` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_payment`
--

INSERT INTO `tbl_payment` (`id`, `name`, `phone`, `address`, `note`, `method`, `infocart`, `total`, `active`) VALUES
(4, '0', 799438999, '0', '32332', 2, '<div class=\"mb-2\" style=\"width: 100%;height: 80px;display: flex;\">			<div style=\"width: 80px;height: 80px;\">			<img src=\"../public/images/product/3.png\" width=\"100%\" height=\"100%\" style=\"object-fit: contain\">			</div>			<div class=\"pl-1\" style=\"width: calc(100% - 80px);height: 80px;\">			<p class=\"font-weight-bold mb-0\">Germanian Little Pug</p>			<p class=\"mb-0 float-left\" style=\"font-size: 80%;margin-top: -2px\">Little Dogs - </p>			<p class=\"mb-0 float-left\" style=\"font-size: 80%;margin-top: -2px\">&nbspQuanliti: 4</p>					<div class=\"float-right font-weight-bold mb-0 mt-4\" style=\"font-size: 125%\">150$</div>			</div>			</div><div class=\"mb-2\" style=\"width: 100%;height: 80px;display: flex;\">			<div style=\"width: 80px;height: 80px;\">			<img src=\"../public/images/product/2.png\" width=\"100%\" height=\"100%\" style=\"object-fit: contain\">			</div>			<div class=\"pl-1\" style=\"width: calc(100% - 80px);height: 80px;\">			<p class=\"font-weight-bold mb-0\">Germanian Little Pug</p>			<p class=\"mb-0 float-left\" style=\"font-size: 80%;margin-top: -2px\">Little Dogs - </p>			<p class=\"mb-0 float-left\" style=\"font-size: 80%;margin-top: -2px\">&nbspQuanliti: 4</p>					<div class=\"float-right font-weight-bold mb-0 mt-4\" style=\"font-size: 125%\">300$</div>			</div>			</div><div class=\"mb-2\" style=\"width: 100%;height: 80px;display: flex;\">			<div style=\"width: 80px;height: 80px;\">			<img src=\"../public/images/product/1.png\" width=\"100%\" height=\"100%\" style=\"object-fit: contain\">			</div>			<div class=\"pl-1\" style=\"width: calc(100% - 80px);height: 80px;\">			<p class=\"font-weight-bold mb-0\">Germanian Little Pug</p>			<p class=\"mb-0 float-left\" style=\"font-size: 80%;margin-top: -2px\">Little Dogs - </p>			<p class=\"mb-0 float-left\" style=\"font-size: 80%;margin-top: -2px\">&nbspQuanliti: 4</p>					<div class=\"float-right font-weight-bold mb-0 mt-4\" style=\"font-size: 125%\">200$</div>			</div>			</div>', 500, 1),
(5, 'fd df', 799438999, 'gffg', '3443', 1, '<div class=\"mb-2\" style=\"width: 100%;height: 80px;display: flex;\">			<div style=\"width: 80px;height: 80px;\">			<img src=\"../public/images/product/071808am828486009d170c09872292876d26901d.png\" width=\"100%\" height=\"100%\" style=\"object-fit: contain\">			</div>			<div class=\"pl-1\" style=\"width: calc(100% - 80px);height: 80px;\">			<p class=\"font-weight-bold mb-0\">Germanian Little Pug</p>			<p class=\"mb-0 float-left\" style=\"font-size: 80%;margin-top: -2px\">Little Dogs - </p>			<p class=\"mb-0 float-left\" style=\"font-size: 80%;margin-top: -2px\">&nbspQuanliti: 4</p>					<div class=\"float-right font-weight-bold mb-0 mt-4\" style=\"font-size: 125%\">1$</div>			</div>			</div><div class=\"mb-2\" style=\"width: 100%;height: 80px;display: flex;\">			<div style=\"width: 80px;height: 80px;\">			<img src=\"../public/images/product/3.png\" width=\"100%\" height=\"100%\" style=\"object-fit: contain\">			</div>			<div class=\"pl-1\" style=\"width: calc(100% - 80px);height: 80px;\">			<p class=\"font-weight-bold mb-0\">Germanian Little Pug</p>			<p class=\"mb-0 float-left\" style=\"font-size: 80%;margin-top: -2px\">Little Dogs - </p>			<p class=\"mb-0 float-left\" style=\"font-size: 80%;margin-top: -2px\">&nbspQuanliti: 4</p>					<div class=\"float-right font-weight-bold mb-0 mt-4\" style=\"font-size: 125%\">150$</div>			</div>			</div><div class=\"mb-2\" style=\"width: 100%;height: 80px;display: flex;\">			<div style=\"width: 80px;height: 80px;\">			<img src=\"../public/images/product/2.png\" width=\"100%\" height=\"100%\" style=\"object-fit: contain\">			</div>			<div class=\"pl-1\" style=\"width: calc(100% - 80px);height: 80px;\">			<p class=\"font-weight-bold mb-0\">Germanian Little Pug</p>			<p class=\"mb-0 float-left\" style=\"font-size: 80%;margin-top: -2px\">Little Dogs - </p>			<p class=\"mb-0 float-left\" style=\"font-size: 80%;margin-top: -2px\">&nbspQuanliti: 4</p>					<div class=\"float-right font-weight-bold mb-0 mt-4\" style=\"font-size: 125%\">300$</div>			</div>			</div><div class=\"mb-2\" style=\"width: 100%;height: 80px;display: flex;\">			<div style=\"width: 80px;height: 80px;\">			<img src=\"../public/images/product/1.png\" width=\"100%\" height=\"100%\" style=\"object-fit: contain\">			</div>			<div class=\"pl-1\" style=\"width: calc(100% - 80px);height: 80px;\">			<p class=\"font-weight-bold mb-0\">Germanian Little Pug</p>			<p class=\"mb-0 float-left\" style=\"font-size: 80%;margin-top: -2px\">Little Dogs - </p>			<p class=\"mb-0 float-left\" style=\"font-size: 80%;margin-top: -2px\">&nbspQuanliti: 4</p>					<div class=\"float-right font-weight-bold mb-0 mt-4\" style=\"font-size: 125%\">200$</div>			</div>			</div>', 20, 1),
(6, 'fd df', 799438999, 'gffg', 'yt', 1, '<div class=\"mb-2\" style=\"width: 100%;height: 80px;display: flex;\">			<div style=\"width: 80px;height: 80px;\">			<img src=\"../public/images/product/1.png\" width=\"100%\" height=\"100%\" style=\"object-fit: contain\">			</div>			<div class=\"pl-1\" style=\"width: calc(100% - 80px);height: 80px;\">			<p class=\"font-weight-bold mb-0\">Germanian Little Pug</p>			<p class=\"mb-0 float-left\" style=\"font-size: 80%;margin-top: -2px\">Little Dogs - </p>			<p class=\"mb-0 float-left\" style=\"font-size: 80%;margin-top: -2px\">&nbspQuanliti: 4</p>					<div class=\"float-right font-weight-bold mb-0 mt-4\" style=\"font-size: 125%\">200$</div>			</div>			</div><div class=\"mb-2\" style=\"width: 100%;height: 80px;display: flex;\">			<div style=\"width: 80px;height: 80px;\">			<img src=\"../public/images/product/2.png\" width=\"100%\" height=\"100%\" style=\"object-fit: contain\">			</div>			<div class=\"pl-1\" style=\"width: calc(100% - 80px);height: 80px;\">			<p class=\"font-weight-bold mb-0\">Germanian Little Pug</p>			<p class=\"mb-0 float-left\" style=\"font-size: 80%;margin-top: -2px\">Little Dogs - </p>			<p class=\"mb-0 float-left\" style=\"font-size: 80%;margin-top: -2px\">&nbspQuanliti: 4</p>					<div class=\"float-right font-weight-bold mb-0 mt-4\" style=\"font-size: 125%\">300$</div>			</div>			</div><div class=\"mb-2\" style=\"width: 100%;height: 80px;display: flex;\">			<div style=\"width: 80px;height: 80px;\">			<img src=\"../public/images/product/3.png\" width=\"100%\" height=\"100%\" style=\"object-fit: contain\">			</div>			<div class=\"pl-1\" style=\"width: calc(100% - 80px);height: 80px;\">			<p class=\"font-weight-bold mb-0\">Germanian Little Pug</p>			<p class=\"mb-0 float-left\" style=\"font-size: 80%;margin-top: -2px\">Little Dogs - </p>			<p class=\"mb-0 float-left\" style=\"font-size: 80%;margin-top: -2px\">&nbspQuanliti: 4</p>					<div class=\"float-right font-weight-bold mb-0 mt-4\" style=\"font-size: 125%\">150$</div>			</div>			</div>', 618.5, 1),
(7, 'Anggun', 321, 'das', 'dasd', 2, '<div class=\"mb-2\" style=\"width: 100%;height: 80px;display: flex;\">			<div style=\"width: 80px;height: 80px;\">			<img src=\"../public/images/product/1.png\" width=\"100%\" height=\"100%\" style=\"object-fit: contain\">			</div>			<div class=\"pl-1\" style=\"width: calc(100% - 80px);height: 80px;\">			<p class=\"font-weight-bold mb-0\">Germanian Little Pug</p>			<p class=\"mb-0 float-left\" style=\"font-size: 80%;margin-top: -2px\">Little Dogs - </p>			<p class=\"mb-0 float-left\" style=\"font-size: 80%;margin-top: -2px\">&nbspQuanliti: 4</p>					<div class=\"float-right font-weight-bold mb-0 mt-4\" style=\"font-size: 125%\">200$</div>			</div>			</div>', 191, 1),
(8, 'hfg', 2312, 'dasd', 'dasd', 2, '', 1, 1),
(9, 'Anggun', 43, 'dsa', 'sda', 1, '<div class=\"mb-2\" style=\"width: 100%;height: 80px;display: flex;\">			<div style=\"width: 80px;height: 80px;\">			<img src=\"../public/images/product/3.png\" width=\"100%\" height=\"100%\" style=\"object-fit: contain\">			</div>			<div class=\"pl-1\" style=\"width: calc(100% - 80px);height: 80px;\">			<p class=\"font-weight-bold mb-0\">Germanian Little Pug</p>			<p class=\"mb-0 float-left\" style=\"font-size: 80%;margin-top: -2px\">Little Dogs - </p>			<p class=\"mb-0 float-left\" style=\"font-size: 80%;margin-top: -2px\">&nbspQuanliti: 4</p>					<div class=\"float-right font-weight-bold mb-0 mt-4\" style=\"font-size: 125%\">150$</div>			</div>			</div>', 143.5, 1),
(10, 'dsad', 0, 'ds', 'dsa', 2, '<div class=\"mb-2\" style=\"width: 100%;height: 80px;display: flex;\">			<div style=\"width: 80px;height: 80px;\">			<img src=\"../public/images/product/091058am2cd43b_816aedd775f249dd9b406405978343b2_mv2.png\" width=\"100%\" height=\"100%\" style=\"object-fit: contain\">			</div>			<div class=\"pl-1\" style=\"width: calc(100% - 80px);height: 80px;\">			<p class=\"font-weight-bold mb-0\">Germanian Little Pug</p>			<p class=\"mb-0 float-left\" style=\"font-size: 80%;margin-top: -2px\">Little Dogs - </p>			<p class=\"mb-0 float-left\" style=\"font-size: 80%;margin-top: -2px\">&nbspQuanliti: 4</p>					<div class=\"float-right font-weight-bold mb-0 mt-4\" style=\"font-size: 125%\">240$</div>			</div>			</div><div class=\"mb-2\" style=\"width: 100%;height: 80px;display: flex;\">			<div style=\"width: 80px;height: 80px;\">			<img src=\"../public/images/product/3.png\" width=\"100%\" height=\"100%\" style=\"object-fit: contain\">			</div>			<div class=\"pl-1\" style=\"width: calc(100% - 80px);height: 80px;\">			<p class=\"font-weight-bold mb-0\">Germanian Little Pug</p>			<p class=\"mb-0 float-left\" style=\"font-size: 80%;margin-top: -2px\">Little Dogs - </p>			<p class=\"mb-0 float-left\" style=\"font-size: 80%;margin-top: -2px\">&nbspQuanliti: 4</p>					<div class=\"float-right font-weight-bold mb-0 mt-4\" style=\"font-size: 125%\">150$</div>			</div>			</div>', 371.5, 1),
(11, 'hfg', 213, 'ds', 'dasd', 2, '', 0, 1),
(12, '', 0, '', '', 0, '', 0, 1),
(13, 'Anggun', 213, '2', 'dasd', 2, '<div class=\"mb-2\" style=\"width: 100%;height: 80px;display: flex;\">			<div style=\"width: 80px;height: 80px;\">			<img src=\"../public/images/product/085658amWIN_20210505_23_12_41_Pro.jpg\" width=\"100%\" height=\"100%\" style=\"object-fit: contain\">			</div>			<div class=\"pl-1\" style=\"width: calc(100% - 80px);height: 80px;\">			<p class=\"font-weight-bold mb-0\">Germanian Little Pug</p>			<p class=\"mb-0 float-left\" style=\"font-size: 80%;margin-top: -2px\">Little Dogs - </p>			<p class=\"mb-0 float-left\" style=\"font-size: 80%;margin-top: -2px\">&nbspQuanliti: 4</p>					<div class=\"float-right font-weight-bold mb-0 mt-4\" style=\"font-size: 125%\">6$</div>			</div>			</div>', 7, 1),
(14, 'awsu', 3234, '2', '3', 2, '<div class=\"mb-2\" style=\"width: 100%;height: 80px;display: flex;\">			<div style=\"width: 80px;height: 80px;\">			<img src=\"../public/images/product/085658amWIN_20210505_23_12_41_Pro.jpg\" width=\"100%\" height=\"100%\" style=\"object-fit: contain\">			</div>			<div class=\"pl-1\" style=\"width: calc(100% - 80px);height: 80px;\">			<p class=\"font-weight-bold mb-0\">Germanian Little Pug</p>			<p class=\"mb-0 float-left\" style=\"font-size: 80%;margin-top: -2px\">Little Dogs - </p>			<p class=\"mb-0 float-left\" style=\"font-size: 80%;margin-top: -2px\">&nbspQuanliti: 4</p>					<div class=\"float-right font-weight-bold mb-0 mt-4\" style=\"font-size: 125%\">21$</div>			</div>			</div>', 22, 1),
(15, 'hfg', 213, '2', 'dasd', 2, '<div class=\"mb-2\" style=\"width: 100%;height: 80px;display: flex;\">			<div style=\"width: 80px;height: 80px;\">			<img src=\"../public/images/product/091309am2cd43b_3b16ed87723a416ab8c4a46952b97c94_mv2.png\" width=\"100%\" height=\"100%\" style=\"object-fit: contain\">			</div>			<div class=\"pl-1\" style=\"width: calc(100% - 80px);height: 80px;\">			<p class=\"font-weight-bold mb-0\">Germanian Little Pug</p>			<p class=\"mb-0 float-left\" style=\"font-size: 80%;margin-top: -2px\">Little Dogs - </p>			<p class=\"mb-0 float-left\" style=\"font-size: 80%;margin-top: -2px\">&nbspQuanliti: 4</p>					<div class=\"float-right font-weight-bold mb-0 mt-4\" style=\"font-size: 125%\">320$</div>			</div>			</div><div class=\"mb-2\" style=\"width: 100%;height: 80px;display: flex;\">			<div style=\"width: 80px;height: 80px;\">			<img src=\"../public/images/product/091218am2cd43b_ad23f564a47043fbb05fd123ecf4eb8f_mv2.png\" width=\"100%\" height=\"100%\" style=\"object-fit: contain\">			</div>			<div class=\"pl-1\" style=\"width: calc(100% - 80px);height: 80px;\">			<p class=\"font-weight-bold mb-0\">Germanian Little Pug</p>			<p class=\"mb-0 float-left\" style=\"font-size: 80%;margin-top: -2px\">Little Dogs - </p>			<p class=\"mb-0 float-left\" style=\"font-size: 80%;margin-top: -2px\">&nbspQuanliti: 4</p>					<div class=\"float-right font-weight-bold mb-0 mt-4\" style=\"font-size: 125%\">240$</div>			</div>			</div><div class=\"mb-2\" style=\"width: 100%;height: 80px;display: flex;\">			<div style=\"width: 80px;height: 80px;\">			<img src=\"../public/images/product/085658amWIN_20210505_23_12_41_Pro.jpg\" width=\"100%\" height=\"100%\" style=\"object-fit: contain\">			</div>			<div class=\"pl-1\" style=\"width: calc(100% - 80px);height: 80px;\">			<p class=\"font-weight-bold mb-0\">Germanian Little Pug</p>			<p class=\"mb-0 float-left\" style=\"font-size: 80%;margin-top: -2px\">Little Dogs - </p>			<p class=\"mb-0 float-left\" style=\"font-size: 80%;margin-top: -2px\">&nbspQuanliti: 4</p>					<div class=\"float-right font-weight-bold mb-0 mt-4\" style=\"font-size: 125%\">6$</div>			</div>			</div>', 567, 1),
(16, 'fjfj', 0, '2', '234', 2, '<div class=\"mb-2\" style=\"width: 100%;height: 80px;display: flex;\">			<div style=\"width: 80px;height: 80px;\">			<img src=\"../public/images/product/085658amWIN_20210505_23_12_41_Pro.jpg\" width=\"100%\" height=\"100%\" style=\"object-fit: contain\">			</div>			<div class=\"pl-1\" style=\"width: calc(100% - 80px);height: 80px;\">			<p class=\"font-weight-bold mb-0\">Germanian Little Pug</p>			<p class=\"mb-0 float-left\" style=\"font-size: 80%;margin-top: -2px\">Little Dogs - </p>			<p class=\"mb-0 float-left\" style=\"font-size: 80%;margin-top: -2px\">&nbspQuanliti: 4</p>					<div class=\"float-right font-weight-bold mb-0 mt-4\" style=\"font-size: 125%\">3$</div>			</div>			</div>', 4, 1),
(17, 'ayuaswu', 9876, '2', '23', 2, '<div class=\"mb-2\" style=\"width: 100%;height: 80px;display: flex;\">			<div style=\"width: 80px;height: 80px;\">			<img src=\"../public/images/product/085658amWIN_20210505_23_12_41_Pro.jpg\" width=\"100%\" height=\"100%\" style=\"object-fit: contain\">			</div>			<div class=\"pl-1\" style=\"width: calc(100% - 80px);height: 80px;\">			<p class=\"font-weight-bold mb-0\">Germanian Little Pug</p>			<p class=\"mb-0 float-left\" style=\"font-size: 80%;margin-top: -2px\">Little Dogs - </p>			<p class=\"mb-0 float-left\" style=\"font-size: 80%;margin-top: -2px\">&nbspQuanliti: 4</p>					<div class=\"float-right font-weight-bold mb-0 mt-4\" style=\"font-size: 125%\">9$</div>			</div>			</div>', 10, 1),
(18, 'dasd', 313, 'Makan disini', 'da', 2, '<div class=\"mb-2\" style=\"width: 100%;height: 80px;display: flex;\">			<div style=\"width: 80px;height: 80px;\">			<img src=\"../public/images/product/091218am2cd43b_ad23f564a47043fbb05fd123ecf4eb8f_mv2.png\" width=\"100%\" height=\"100%\" style=\"object-fit: contain\">			</div>			<div class=\"pl-1\" style=\"width: calc(100% - 80px);height: 80px;\">			<p class=\"font-weight-bold mb-0\">Germanian Little Pug</p>			<p class=\"mb-0 float-left\" style=\"font-size: 80%;margin-top: -2px\">Little Dogs - </p>			<p class=\"mb-0 float-left\" style=\"font-size: 80%;margin-top: -2px\">&nbspQuanliti: 4</p>					<div class=\"float-right font-weight-bold mb-0 mt-4\" style=\"font-size: 125%\">240$</div>			</div>			</div>', 241, 1),
(19, 'asu', 213, 'Bawa Pulang', '798', 0, '<div class=\"mb-2\" style=\"width: 100%;height: 80px;display: flex;\">			<div style=\"width: 80px;height: 80px;\">			<img src=\"../public/images/product/085658amWIN_20210505_23_12_41_Pro.jpg\" width=\"100%\" height=\"100%\" style=\"object-fit: contain\">			</div>			<div class=\"pl-1\" style=\"width: calc(100% - 80px);height: 80px;\">			<p class=\"font-weight-bold mb-0\">Germanian Little Pug</p>			<p class=\"mb-0 float-left\" style=\"font-size: 80%;margin-top: -2px\">Little Dogs - </p>			<p class=\"mb-0 float-left\" style=\"font-size: 80%;margin-top: -2px\">&nbspQuanliti: 4</p>					<div class=\"float-right font-weight-bold mb-0 mt-4\" style=\"font-size: 125%\">3$</div>			</div>			</div>', 4, 1),
(20, 'Anggun', 76, 'Makan disini', 'dasd', 0, '<div class=\"mb-2\" style=\"width: 100%;height: 80px;display: flex;\">			<div style=\"width: 80px;height: 80px;\">			<img src=\"../public/images/product/085658amWIN_20210505_23_12_41_Pro.jpg\" width=\"100%\" height=\"100%\" style=\"object-fit: contain\">			</div>			<div class=\"pl-1\" style=\"width: calc(100% - 80px);height: 80px;\">			<p class=\"font-weight-bold mb-0\">Germanian Little Pug</p>			<p class=\"mb-0 float-left\" style=\"font-size: 80%;margin-top: -2px\">Little Dogs - </p>			<p class=\"mb-0 float-left\" style=\"font-size: 80%;margin-top: -2px\">&nbspQuanliti: 4</p>					<div class=\"float-right font-weight-bold mb-0 mt-4\" style=\"font-size: 125%\">3$</div>			</div>			</div>', 4, 1),
(21, 'antok', 213, 'Makan disini', 'dasd', 3, '<div class=\"mb-2\" style=\"width: 100%;height: 80px;display: flex;\">			<div style=\"width: 80px;height: 80px;\">			<img src=\"../public/images/product/085658amWIN_20210505_23_12_41_Pro.jpg\" width=\"100%\" height=\"100%\" style=\"object-fit: contain\">			</div>			<div class=\"pl-1\" style=\"width: calc(100% - 80px);height: 80px;\">			<p class=\"font-weight-bold mb-0\">Germanian Little Pug</p>			<p class=\"mb-0 float-left\" style=\"font-size: 80%;margin-top: -2px\">Little Dogs - </p>			<p class=\"mb-0 float-left\" style=\"font-size: 80%;margin-top: -2px\">&nbspQuanliti: 4</p>					<div class=\"float-right font-weight-bold mb-0 mt-4\" style=\"font-size: 125%\">3$</div>			</div>			</div>', 4, 1),
(22, 'sa', 0, '2', '2', 2, '<div class=\"mb-2\" style=\"width: 100%;height: 80px;display: flex;\">			<div style=\"width: 80px;height: 80px;\">			<img src=\"../public/images/product/085658amWIN_20210505_23_12_41_Pro.jpg\" width=\"100%\" height=\"100%\" style=\"object-fit: contain\">			</div>			<div class=\"pl-1\" style=\"width: calc(100% - 80px);height: 80px;\">			<p class=\"font-weight-bold mb-0\">Germanian Little Pug</p>			<p class=\"mb-0 float-left\" style=\"font-size: 80%;margin-top: -2px\">Little Dogs - </p>			<p class=\"mb-0 float-left\" style=\"font-size: 80%;margin-top: -2px\">&nbspQuanliti: 4</p>					<div class=\"float-right font-weight-bold mb-0 mt-4\" style=\"font-size: 125%\">3$</div>			</div>			</div>', 4, 1),
(23, 'Anggun', 213, 'Makan disini', 'dasd', 2, '<div class=\"mb-2\" style=\"width: 100%;height: 80px;display: flex;\">			<div style=\"width: 80px;height: 80px;\">			<img src=\"../public/images/product/085658amWIN_20210505_23_12_41_Pro.jpg\" width=\"100%\" height=\"100%\" style=\"object-fit: contain\">			</div>			<div class=\"pl-1\" style=\"width: calc(100% - 80px);height: 80px;\">			<p class=\"font-weight-bold mb-0\">Germanian Little Pug</p>			<p class=\"mb-0 float-left\" style=\"font-size: 80%;margin-top: -2px\">Little Dogs - </p>			<p class=\"mb-0 float-left\" style=\"font-size: 80%;margin-top: -2px\">&nbspQuanliti: 4</p>					<div class=\"float-right font-weight-bold mb-0 mt-4\" style=\"font-size: 125%\">3$</div>			</div>			</div>', 4, 1),
(24, 'sas', 231, 'Bawa Pulang', '12', 0, '<div class=\"mb-2\" style=\"width: 100%;height: 80px;display: flex;\">			<div style=\"width: 80px;height: 80px;\">			<img src=\"../public/images/product/085658amWIN_20210505_23_12_41_Pro.jpg\" width=\"100%\" height=\"100%\" style=\"object-fit: contain\">			</div>			<div class=\"pl-1\" style=\"width: calc(100% - 80px);height: 80px;\">			<p class=\"font-weight-bold mb-0\">Germanian Little Pug</p>			<p class=\"mb-0 float-left\" style=\"font-size: 80%;margin-top: -2px\">Little Dogs - </p>			<p class=\"mb-0 float-left\" style=\"font-size: 80%;margin-top: -2px\">&nbspQuanliti: 4</p>					<div class=\"float-right font-weight-bold mb-0 mt-4\" style=\"font-size: 125%\">15$</div>			</div>			</div>', 16, 1),
(25, 'AYU ASU', 123, 'Makan disini', 'dasd', 2, '<div class=\"mb-2\" style=\"width: 100%;height: 80px;display: flex;\">			<div style=\"width: 80px;height: 80px;\">			<img src=\"../public/images/product/085658amWIN_20210505_23_12_41_Pro.jpg\" width=\"100%\" height=\"100%\" style=\"object-fit: contain\">			</div>			<div class=\"pl-1\" style=\"width: calc(100% - 80px);height: 80px;\">			<p class=\"font-weight-bold mb-0\">Germanian Little Pug</p>			<p class=\"mb-0 float-left\" style=\"font-size: 80%;margin-top: -2px\">Little Dogs - </p>			<p class=\"mb-0 float-left\" style=\"font-size: 80%;margin-top: -2px\">&nbspQuanliti: 4</p>					<div class=\"float-right font-weight-bold mb-0 mt-4\" style=\"font-size: 125%\">18$</div>			</div>			</div>', 19, 1),
(26, 'Anggun', 213, '1', '12', 2, '<div class=\"mb-2\" style=\"width: 100%;height: 80px;display: flex;\">			<div style=\"width: 80px;height: 80px;\">			<img src=\"../public/images/product/085658amWIN_20210505_23_12_41_Pro.jpg\" width=\"100%\" height=\"100%\" style=\"object-fit: contain\">			</div>			<div class=\"pl-1\" style=\"width: calc(100% - 80px);height: 80px;\">			<p class=\"font-weight-bold mb-0\">Germanian Little Pug</p>			<p class=\"mb-0 float-left\" style=\"font-size: 80%;margin-top: -2px\">Little Dogs - </p>			<p class=\"mb-0 float-left\" style=\"font-size: 80%;margin-top: -2px\">&nbspQuanliti: 4</p>					<div class=\"float-right font-weight-bold mb-0 mt-4\" style=\"font-size: 125%\">6$</div>			</div>			</div>', 7, 1),
(27, 'hfg', 33, 'Bawa Pulang', '3', 2, '<div class=\"mb-2\" style=\"width: 100%;height: 80px;display: flex;\">			<div style=\"width: 80px;height: 80px;\">			<img src=\"../public/images/product/013525pm2020-01-14-removebg-preview.png\" width=\"100%\" height=\"100%\" style=\"object-fit: contain\">			</div>			<div class=\"pl-1\" style=\"width: calc(100% - 80px);height: 80px;\">			<p class=\"font-weight-bold mb-0\">Germanian Little Pug</p>			<p class=\"mb-0 float-left\" style=\"font-size: 80%;margin-top: -2px\">Little Dogs - </p>			<p class=\"mb-0 float-left\" style=\"font-size: 80%;margin-top: -2px\">&nbspQuanliti: 4</p>					<div class=\"float-right font-weight-bold mb-0 mt-4\" style=\"font-size: 125%\">120000000$</div>			</div>			</div>', 120000000, 1),
(28, 'Anggun', 2131, 'Bawa Pulang', '3', 3, '<div class=\"mb-2\" style=\"width: 100%;height: 80px;display: flex;\">			<div style=\"width: 80px;height: 80px;\">			<img src=\"../public/images/product/085658amWIN_20210505_23_12_41_Pro.jpg\" width=\"100%\" height=\"100%\" style=\"object-fit: contain\">			</div>			<div class=\"pl-1\" style=\"width: calc(100% - 80px);height: 80px;\">			<p class=\"font-weight-bold mb-0\">Germanian Little Pug</p>			<p class=\"mb-0 float-left\" style=\"font-size: 80%;margin-top: -2px\">Little Dogs - </p>			<p class=\"mb-0 float-left\" style=\"font-size: 80%;margin-top: -2px\">&nbspQuanliti: 4</p>					<div class=\"float-right font-weight-bold mb-0 mt-4\" style=\"font-size: 125%\">18$</div>			</div>			</div>', 19, 1),
(29, 'ayman', 213, 'Bawa Pulang', '32', 2, '<div class=\"mb-2\" style=\"width: 100%;height: 80px;display: flex;\">			<div style=\"width: 80px;height: 80px;\">			<img src=\"../public/images/product/013525pm2020-01-14-removebg-preview.png\" width=\"100%\" height=\"100%\" style=\"object-fit: contain\">			</div>			<div class=\"pl-1\" style=\"width: calc(100% - 80px);height: 80px;\">			<p class=\"font-weight-bold mb-0\">Germanian Little Pug</p>			<p class=\"mb-0 float-left\" style=\"font-size: 80%;margin-top: -2px\">Little Dogs - </p>			<p class=\"mb-0 float-left\" style=\"font-size: 80%;margin-top: -2px\">&nbspQuanliti: 4</p>					<div class=\"float-right font-weight-bold mb-0 mt-4\" style=\"font-size: 125%\">120000000$</div>			</div>			</div>', 120000000, 1),
(30, 'sa', 33, '1', 'sda', 2, '<div class=\"mb-2\" style=\"width: 100%;height: 80px;display: flex;\">			<div style=\"width: 80px;height: 80px;\">			<img src=\"../public/images/product/080537amunnamed__1_-removebg-preview (2).png\" width=\"100%\" height=\"100%\" style=\"object-fit: contain\">			</div>			<div class=\"pl-1\" style=\"width: calc(100% - 80px);height: 80px;\">			<p class=\"font-weight-bold mb-0\">Germanian Little Pug</p>			<p class=\"mb-0 float-left\" style=\"font-size: 80%;margin-top: -2px\">Little Dogs - </p>			<p class=\"mb-0 float-left\" style=\"font-size: 80%;margin-top: -2px\">&nbspQuanliti: 4</p>					<div class=\"float-right font-weight-bold mb-0 mt-4\" style=\"font-size: 125%\">30000$</div>			</div>			</div>', 30001, 1),
(31, 'hfg', 2131, 'Makan disini', '12', 2, '<div class=\"mb-2\" style=\"width: 100%;height: 80px;display: flex;\">			<div style=\"width: 80px;height: 80px;\">			<img src=\"../public/images/product/013525pm2020-01-14-removebg-preview.png\" width=\"100%\" height=\"100%\" style=\"object-fit: contain\">			</div>			<div class=\"pl-1\" style=\"width: calc(100% - 80px);height: 80px;\">			<p class=\"font-weight-bold mb-0\">Germanian Little Pug</p>			<p class=\"mb-0 float-left\" style=\"font-size: 80%;margin-top: -2px\">Little Dogs - </p>			<p class=\"mb-0 float-left\" style=\"font-size: 80%;margin-top: -2px\">&nbspQuanliti: 4</p>					<div class=\"float-right font-weight-bold mb-0 mt-4\" style=\"font-size: 125%\">120000000$</div>			</div>			</div><div class=\"mb-2\" style=\"width: 100%;height: 80px;display: flex;\">			<div style=\"width: 80px;height: 80px;\">			<img src=\"../public/images/product/080537amunnamed__1_-removebg-preview (2).png\" width=\"100%\" height=\"100%\" style=\"object-fit: contain\">			</div>			<div class=\"pl-1\" style=\"width: calc(100% - 80px);height: 80px;\">			<p class=\"font-weight-bold mb-0\">Germanian Little Pug</p>			<p class=\"mb-0 float-left\" style=\"font-size: 80%;margin-top: -2px\">Little Dogs - </p>			<p class=\"mb-0 float-left\" style=\"font-size: 80%;margin-top: -2px\">&nbspQuanliti: 4</p>					<div class=\"float-right font-weight-bold mb-0 mt-4\" style=\"font-size: 125%\">15000$</div>			</div>			</div>', 120015000, 1),
(32, 'cdsfa', 3234, 'Makan disini', 'sda', 3, '<div class=\"mb-2\" style=\"width: 100%;height: 80px;display: flex;\">			<div style=\"width: 80px;height: 80px;\">			<img src=\"../public/images/product/013525pm2020-01-14-removebg-preview.png\" width=\"100%\" height=\"100%\" style=\"object-fit: contain\">			</div>											<div class=\"pl-1\" style=\"width: calc(100% - 80px);height: 80px;\">            <p class=\"font-weight-bold mb-0\">anjing</p>                        <div style=\"width: 100%;height: 30px;\">            <div onclick=dowQuanlity(23) class=\"float-left bg text-center text-white font-weight-bold\" style=\"width: 30px;height: 30px;border-radius: 8px\">-</div>            <div class=\"float-left text-center font-weight-bold\" style=\"width: 30px;height: 30px;border-radius: 8px\">1</div>            <div onclick=upQuanlity(23) class=\"float-left bg text-center text-white font-weight-bold\" style=\"width: 30px;height: 30px;border-radius: 8px\">+</div>            <div class=\"float-right font-weight-bold\">120000000Rp.</div>			<div class=\"float-right font-weight-bold mb-0 mt-4\" style=\"font-size: 125%\">120000000$</div>			</div>			</div>', 120000000, 1),
(33, 'maus', 12, 'Bawa Pulang', '1', 2, '<div class=\"mb-2\" style=\"width: 100%;height: 80px;display: flex;\">			<div style=\"width: 80px;height: 80px;\">			<img src=\"../public/images/product/080537amunnamed__1_-removebg-preview (2).png\" width=\"100%\" height=\"100%\" style=\"object-fit: contain\">			</div>			<div class=\"pl-1\" style=\"width: calc(100% - 80px);height: 80px;\">						p class=\"font-weight-bold mb-0\">choco taro</p>			<p class=\"mb-0 float-left\" style=\"font-size: 80%;margin-top: -2px\"><a>Jumlah : </a>1</p>				<div class=\"float-right font-weight-bold mb-0 mt-4\" style=\"font-size: 125%\">15000$</div>			</div>			</div>', 15001, 1),
(34, 'sa', 33, 'Bawa Pulang', 'sda', 2, '<div class=\"mb-2\" style=\"width: 100%;height: 80px;display: flex;\">			<div style=\"width: 80px;height: 80px;\">			<img src=\"../public/images/product/085658amWIN_20210505_23_12_41_Pro.jpg\" width=\"100%\" height=\"100%\" style=\"object-fit: contain\">			</div>			<div class=\"pl-1\" style=\"width: calc(100% - 80px);height: 80px;\">						<p class=\"font-weight-bold mb-0\">ayu anjing</p>			<p class=\"mb-0 float-left\" style=\"font-size: 80%;margin-top: -2px\"><a>Jumlah : </a>1</p>				<div class=\"float-right font-weight-bold mb-0 mt-4\" style=\"font-size: 125%\">3$</div>			</div>			</div>', 4, 1),
(35, 'anggun', 0, 'Makan disini', '2', 3, '<div class=\"mb-2\" style=\"width: 100%;height: 80px;display: flex;\">			<div style=\"width: 80px;height: 80px;\">			<img src=\"../public/images/product/032550ampiccollo.png\" width=\"100%\" height=\"100%\" style=\"object-fit: contain\">			</div>			<div class=\"pl-1\" style=\"width: calc(100% - 80px);height: 80px;\">						<p class=\"font-weight-bold mb-0\">Piccolo Coffe</p>			<p class=\"mb-0 float-left\" style=\"font-size: 80%;margin-top: -2px\"><a>Jumlah : </a>1</p>				<div class=\"float-right font-weight-bold mb-0 mt-4\" style=\"font-size: 125%\">Rp.17000</div>			</div>			</div><div class=\"mb-2\" style=\"width: 100%;height: 80px;display: flex;\">			<div style=\"width: 80px;height: 80px;\">			<img src=\"../public/images/product/121817pmPancake Keju.png\" width=\"100%\" height=\"100%\" style=\"object-fit: contain\">			</div>			<div class=\"pl-1\" style=\"width: calc(100% - 80px);height: 80px;\">						<p class=\"font-weight-bold mb-0\">Pancake Choma</p>			<p class=\"mb-0 float-left\" style=\"font-size: 80%;margin-top: -2px\"><a>Jumlah : </a>1</p>				<div class=\"float-right font-weight-bold mb-0 mt-4\" style=\"font-size: 125%\">Rp.12000</div>			</div>			</div>', 31900, 1),
(36, 'Ayman', 2147483647, 'Makan disini', '19', 2, '<div class=\"mb-2\" style=\"width: 100%;height: 80px;display: flex;\">			<div style=\"width: 80px;height: 80px;\">			<img src=\"../public/images/product/120750pmSiomay.png\" width=\"100%\" height=\"100%\" style=\"object-fit: contain\">			</div>			<div class=\"pl-1\" style=\"width: calc(100% - 80px);height: 80px;\">						<p class=\"font-weight-bold mb-0\">Siomay Goreng</p>			<p class=\"mb-0 float-left\" style=\"font-size: 80%;margin-top: -2px\"><a>Jumlah : </a>1</p>				<div class=\"float-right font-weight-bold mb-0 mt-4\" style=\"font-size: 125%\">Rp.15000</div>			</div>			</div><div class=\"mb-2\" style=\"width: 100%;height: 80px;display: flex;\">			<div style=\"width: 80px;height: 80px;\">			<img src=\"../public/images/product/120300pmRisoles.png\" width=\"100%\" height=\"100%\" style=\"object-fit: contain\">			</div>			<div class=\"pl-1\" style=\"width: calc(100% - 80px);height: 80px;\">						<p class=\"font-weight-bold mb-0\">Risoles Goreng</p>			<p class=\"mb-0 float-left\" style=\"font-size: 80%;margin-top: -2px\"><a>Jumlah : </a>1</p>				<div class=\"float-right font-weight-bold mb-0 mt-4\" style=\"font-size: 125%\">Rp.15000</div>			</div>			</div><div class=\"mb-2\" style=\"width: 100%;height: 80px;display: flex;\">			<div style=\"width: 80px;height: 80px;\">			<img src=\"../public/images/product/120041pmSphagetti.png\" width=\"100%\" height=\"100%\" style=\"object-fit: contain\">			</div>			<div class=\"pl-1\" style=\"width: calc(100% - 80px);height: 80px;\">						<p class=\"font-weight-bold mb-0\">Spagetti Choma</p>			<p class=\"mb-0 float-left\" style=\"font-size: 80%;margin-top: -2px\"><a>Jumlah : </a>1</p>				<div class=\"float-right font-weight-bold mb-0 mt-4\" style=\"font-size: 125%\">Rp.15000</div>			</div>			</div>', 49500, 1),
(37, 'ayudia', 0, 'Bawa Pulang', 'jangan terlalu pekat', 2, '<div class=\"mb-2\" style=\"width: 100%;height: 80px;display: flex;\">			<div style=\"width: 80px;height: 80px;\">			<img src=\"../public/images/product/110036amcoffe1.png\" width=\"100%\" height=\"100%\" style=\"object-fit: contain\">			</div>			<div class=\"pl-1\" style=\"width: calc(100% - 80px);height: 80px;\">						<p class=\"font-weight-bold mb-0\">Coffe Tubruk</p>			<p class=\"mb-0 float-left\" style=\"font-size: 80%;margin-top: -2px\"><a>Jumlah : </a>2</p>				<div class=\"float-right font-weight-bold mb-0 mt-4\" style=\"font-size: 125%\">Rp.24000</div>			</div>			</div>', 26400, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_post`
--

CREATE TABLE `tbl_post` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `origin` int(11) DEFAULT NULL,
  `weight` int(11) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `image` varchar(1000) DEFAULT NULL,
  `background` int(11) DEFAULT NULL,
  `active` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_post`
--

INSERT INTO `tbl_post` (`id`, `title`, `type`, `content`, `name`, `age`, `origin`, `weight`, `price`, `image`, `background`, `active`) VALUES
(43, 'Coffe Tubruk', 0, 'Minuman ini memiliki rasa seperti biscuit tetapi dalam bentuk minuman yang manis. Minuman ini diracik dengan susu pilihan dan ditambahkan es batu sudah sangat mantap disantap ketika cuaca panas.', '', 0, 0, 0, 12000, '110036amcoffe1.png,110036amcoffe2.png,110036amcoffe3.jpg,110036amcofffe.jpeg,', 2, 1),
(49, 'Taro', 0, 'Minuman ini memiliki rasa seperti biscuit tetapi dalam bentuk minuman yang manis. Minuman ini diracik dengan susu pilihan dan ditambahkan es batu sudah sangat mantap disantap ketika cuaca panas.', '', 0, 0, 0, 15000, '111537amtaro.png,111537amtaro1.jpg,111537amtaro2.jpg,111537amtaro3.jpg,', 1, 1),
(50, 'Choco Original', 0, 'Terbuat dari coklat pilihan dan memiliki rasa coklat yang kuat sehingga Ketika para pelangggan memesan minuman ini aroma yang dikeluarkan sangat mengunggah selera.', '', 0, 0, 0, 10000, '112023amChoco Originall.png,112023amChoco1.jpg,112023amchoco2.jpg,112023amchoco3.jpg,', 2, 1),
(51, 'Greentea Matcha', 0, 'Merupakan minuman yang terbuat dari teh hijau khas jepang dan diracik bersamaan dengan susu kualitas dan terciptalah minuman ini. soal rasa, minuman ini memiliki rasa manis dan wangi the hijau yang sangat khas.', '', 0, 0, 0, 13000, '112430amgreen.png,112430amgreen1.jpeg,112430amgreen2.jpeg,112430amgreen3.jpeg,', 3, 1),
(52, 'Chocho Manggo', 0, 'Minuman yang dasarnya dibuat dengan coklat asli dan dipadukan dengan rasa manga muda dan manis kemudiam diracik dengan paduan susu yang berkualitas', '', 0, 0, 0, 15000, '112925ammanggo.png,112925ammanggo1 (1).jpeg,112925ammanggo1 (2).jpeg,112925ammanggo1 (3).jpeg,', 2, 1),
(56, 'Mie Becek', 0, 'Mie ini unik karena nama dengan sajian yang di tampilkan sama, mie ini merupakan makanan yang memiliki kuah yang sedikit seperti yang namanya MIE BECEK. Soal rasa mie ini memiliki beberapa varian rasa pedas, tergantung kemauan pelanggan yang ingin memesan rasa pedas pada level atau variannya. toping yang diberikan sosis , rempah-rempah dll sehingga sangat mantap disantap selagi hangat', '', 0, 0, 0, 15000, '114211ammiebsk.png,114211ammie-becek.PNG,114211ammie becek (3).jpeg,114211ammie becek (1).jpeg,', 1, 1),
(57, 'Spagetti Choma', 0, 'Makanan khas italia ini berbahan dasarkan mie akan tetapi mie yang digunakan adalah mie khusus bukan seperti mie kebanyakan. Soal rasa masakan ini memiliki cita rasa bumbu yang sangat pas dilidah dan memiliki toping sesuai selera para pelanggan yang akan manikmatinya.', '', 0, 0, 0, 15000, '120041pmSphagetti.png,120041pmspagetti (3).jpeg,120041pmspagetti (2).jpeg,120041pmspagetti (1).jpeg,', 2, 1),
(58, 'Risoles Goreng', 0, 'Makanan ini merupakan makanan khas Indonesia banget yang memiliki isian antara sayur dan bihun. Makanan ini sangat renyah karena digoreng dan sangat cocok makan ditemani oleh sambal atau cabe hijau.', '', 0, 0, 0, 15000, '120300pmRisoles.png,120300pmrisolles (1).jpeg,120300pmrisolles (2).jpeg,120300pmrisolles (3).jpeg,', 1, 1),
(59, 'Nasi Goreng Ayam Kari', 0, 'Nasi goreng ini dipadukan dengan kari ayam yang memiliki rasa kuat sehingga rasa dari nasi goreng yang khas tercampur dengan rasa kuah kari ayam yang sangat nikmat. Toping yang disajikan juga tidak sediki ada ayam, sosis, wortel, dan kacang polong. Pada nasi goreng ini juga kita bisa memesan beberapa varian level pedas pada nasi goreng kari ayam yang ingin kita santap.', '', 0, 0, 0, 18000, '120509pmnasgor.png,120509pmnasgor (3).jpeg,120509pmnasgor (2).jpeg,120509pmnasgor (1).jpeg,', 3, 1),
(60, 'Siomay Goreng', 0, 'Makanan ini memiliki rasa khas yang sangat nikmat ketika dimakan dalam keadaan hangat dan ditambah dengan sambal yang memiliki rasa yang pedas manis. Makanan ini memiliki 2 jenis cara memasak, yaitu direbus atau dikukus dan digoreng. Semua jenis sangat nikmat dinikmati.', '', 0, 0, 0, 15000, '120750pmSiomay.png,120750pmsiomay (3).jpeg,120750pmsiomay (2).jpeg,120750pmsiomay (1).jpeg,', 2, 1),
(61, 'Tahu Walik', 0, 'Tahu ini merupakan tahu yang digoreng dan isi dari tahu tersebut dijadikan isian lagi dan dicampur dengan beberapa bahan. Tahu ini unik, seperti namanya tahu ini dibalik dan diisi dengan isian tadi. Tahu ini memiliki rasa gurih yang mantap, sangat nikmat disajikan dengan sambal khasnya dan disajikan dalam keadaan hangat.', '', 0, 0, 0, 15000, '120957pmTahu Walik.png,120957pmWhatsApp Image 2021-07-01 at 17.31.05 (1).jpeg,120957pmWhatsApp Image 2021-07-01 at 17.31.05.jpeg,120957pmWhatsApp Image 2021-07-01 at 17.31.06.jpeg,', 1, 1),
(62, 'Pisang Coklat Keju', 0, 'Makanan ini berbahan dasar pisang yang digoreng lalu sedikit digeprek dan disajikan dengan keju dan misis. rasa dari makanan ini ada sedikit asin dan manis dari keju, misis, dan susu kental manis. makanan ini sangat cocok Ketika disantap dalam keadan hangat karna keju dan misisnya akan meleleh dan sangat gurih dimulut.', '', 0, 0, 0, 10000, '121222pmPisang Keju.png,121222pmpiscok (1).jpeg,121222pmpiscok (2).jpeg,121222pmpiscok (3).jpeg,', 3, 1),
(63, 'Kentang Goreng', 0, 'Makanan berbahan dasar kentang ini diproses dengan digoreng dan disajikan dengan sambal pedas manis dan mayo yang sangat nikmat disantap ketika hangat. Rasa gurih digoreng dan lembut didalam sangat mantap dijadikan cemilan disetiap saat.', '', 0, 0, 0, 10000, '121359pmKentang Goreng.png,121359pmkentang goreng (3).jpeg,121359pmkentang goreng (2).jpeg,121359pmkentang goreng (1).jpeg,', 2, 1),
(64, 'Roti Bakar', 0, 'Makanan yang berbahan roti tawar dan diisi beberapa varian rasa tergantung dari keinginan dari pelanggan. Roti bakar ini pun sangat cocok untuk dimakan bersama beberapa minuman hangat. Soal rasa makanan ini sangat gurih ketika hangat dan sangat lumer dimulut ketika dimakan.', '', 0, 0, 0, 12000, '121611pmRoti Bakar Coklat.png,121611pmroti bakar (3).jpeg,121611pmroti bakar (2).jpeg,121611pmroti bakar (1).jpeg,', 1, 1),
(65, 'Pancake Choma', 0, 'makanan ini memiliki rasa manis dan disajikan dengan toping keju yang memiliki rasa sedikit asin sehingga rasa yang diciptakan sangat pas dilidah para pelanggan. makanan ini memiliki tekstur makanan yang sangat lembut dan sangat cocok disantap bila hangat.', '', 0, 0, 0, 12000, '121817pmPancake Keju.png,121817pmpancake (3).jpeg,121817pmpancake (2).jpeg,121817pmpancake (1).jpeg,', 3, 1),
(66, 'Piccolo Coffe', 0, 'Piccolo adalah racikan kopi dan susu. Hampir sama dengan kopi latte namun Piccolo jumlah campuran kopinya lebih banyak dari latte. Minimal jumlah campuran kopi dan susunya sama atau seimbang', '', 0, 0, 0, 17000, '032550ampiccollo.png,032550ampicollo.jpg,032550amPicolo.png,032550ampicolo2.jpeg,', 3, 1);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_fee`
--
ALTER TABLE `tbl_fee`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_payment`
--
ALTER TABLE `tbl_payment`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_post`
--
ALTER TABLE `tbl_post`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `tbl_fee`
--
ALTER TABLE `tbl_fee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `tbl_payment`
--
ALTER TABLE `tbl_payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT untuk tabel `tbl_post`
--
ALTER TABLE `tbl_post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
