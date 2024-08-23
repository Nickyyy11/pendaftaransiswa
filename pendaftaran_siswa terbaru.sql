-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Generation Time: Aug 22, 2024 at 08:15 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pendaftaran_siswa`
--

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `nis` varchar(12) NOT NULL,
  `nama_siswa` varchar(50) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`id`, `user_id`, `nis`, `nama_siswa`, `alamat`, `tanggal_lahir`, `email`, `password`, `created_at`, `updated_at`) VALUES
(7, 0, '12312333', 'ddddddddddd', 'dddddddddddddddd', '2024-08-01', 'd@', '', '2024-08-22 03:38:49', '2024-08-22 03:38:49'),
(8, 1, '12312333', 'ddddddddddd', 'dddddddddddddddd', '2024-08-01', 'd@', '', '2024-08-22 03:38:54', '2024-08-22 04:13:50'),
(9, 0, '222222222', '2222222222', '222222222222222', '2024-08-13', '222222@', '', '2024-08-22 03:39:34', '2024-08-22 03:39:34'),
(10, 0, '', 'andre', 'dre', '2024-08-21', '@', '', '2024-08-22 04:24:04', '2024-08-22 04:24:04'),
(11, 0, '', 'andre', 'test', '2024-08-30', '@', '', '2024-08-22 04:35:39', '2024-08-22 04:35:39'),
(12, 0, '', 'dre', 'asdasd', '2024-08-30', '@', '', '2024-08-22 04:37:20', '2024-08-22 04:37:20'),
(13, 0, '', '22', '22', '2024-08-28', '22@', '', '2024-08-22 04:42:07', '2024-08-22 04:42:07'),
(14, 0, '123123', 'raka', 'pondok gede', '2024-08-22', 'nickymuhammadiqbal@gmaill.com', '', '2024-08-22 05:11:23', '2024-08-22 05:11:23');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(45) NOT NULL,
  `user_pass` varchar(45) DEFAULT NULL,
  `user_level` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `user_name`, `user_pass`, `user_level`) VALUES
(1, 'user', 'user', 0),
(2, 'admin', 'admin', 1),
(3, '22', '22', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `siswa`
--
ALTER TABLE `siswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
