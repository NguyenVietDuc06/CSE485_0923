-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 03, 2023 at 02:43 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quanlybaihat`
--

-- --------------------------------------------------------

--
-- Table structure for table `baihat`
--

CREATE TABLE `baihat` (
  `id` int(11) NOT NULL,
  `tenBaiHat` varchar(255) DEFAULT NULL,
  `caSi` varchar(255) DEFAULT NULL,
  `idTheLoai` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `baihat`
--

INSERT INTO `baihat` (`id`, `tenBaiHat`, `caSi`, `idTheLoai`) VALUES
(1, 'Anh yeu Em', 'Nguyen Van A', 1),
(2, 'Anh Nho Em', 'Nguyen Van B', 1),
(3, 'Loi Chia Ta', 'Nguyen Van C', 2);

-- --------------------------------------------------------

--
-- Table structure for table `theloai`
--

CREATE TABLE `theloai` (
  `id` int(11) NOT NULL,
  `tenTheLoai` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `theloai`
--

INSERT INTO `theloai` (`id`, `tenTheLoai`) VALUES
(1, 'Nhac Vang'),
(2, ' Nhac Trang'),
(4, 'Nhac den');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `baihat`
--
ALTER TABLE `baihat`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idTheLoai` (`idTheLoai`);

--
-- Indexes for table `theloai`
--
ALTER TABLE `theloai`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `baihat`
--
ALTER TABLE `baihat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `theloai`
--
ALTER TABLE `theloai`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `baihat`
--
ALTER TABLE `baihat`
  ADD CONSTRAINT `baihat_ibfk_1` FOREIGN KEY (`idTheLoai`) REFERENCES `theloai` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
