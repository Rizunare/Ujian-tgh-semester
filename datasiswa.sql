-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 28 Agu 2023 pada 06.18
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `datamahasiswa`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `siswaxii`
--

CREATE TABLE `siswaxii` (
  `id` int(11) NOT NULL,
  `nama_siswa` varchar(100) NOT NULL,
  `nis` varchar(20) NOT NULL,
  `jenis_kelamin` varchar(100) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `alamat` varchar(200) NOT NULL,
  `agama` varchar(100) NOT NULL,
  `kelas_jurusan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `siswaxii`
--

INSERT INTO `siswaxii` (`id`, `nama_siswa`, `nis`, `jenis_kelamin`, `tanggal_lahir`, `alamat`, `agama`, `kelas_jurusan`) VALUES
(1, 'Alexender Yanuar Akbar', '21.5891', 'Laki-laki', '2005-06-16', 'Bojong', 'Islam', 'XII PPLG 1'),
(2, 'Ahmad Nuril Anwar', '21.5956', 'Laki-laki', '2004-12-31', 'Riau', 'Islam', 'XII PPLG 1'),
(3, 'Ahliatul Khoeriyyah', '21.5957', 'Perempuan', '2006-05-12', '', 'Islam', 'XII PPLG 1'),
(4, 'Aisyah Meilani', '21.5957', 'Perempuan', '2006-08-24', '', 'Islam', 'XII PPLG 1'),
(5, 'Ananda Aulia', '21.5893', 'Perempuan', '2005-11-04', '', 'Islam', 'XII PPLG 1'),
(6, 'Astiani', '21.5894', 'Perempuan', '2007-02-21', '', 'islam', 'XIIRPL1'),
(7, 'Dimas Raafi', '21.5896', 'Perempuan', '2006-02-10', '', 'Islam', 'XII-PPLG1'),
(8, 'Evan Syifa Dharmawan', '21.5926', 'Laki-laki', '2006-03-15', '', 'Islam', 'XII-PPLG1'),
(9, 'Faiqotul Himmah', '21.5963', 'Perempuan', '2006-02-20', '', 'Islam', 'XII-PPLG1'),
(10, 'Feni Lidyana', '21.5929', 'Perempuan', '2006-01-25', '', 'Islam', 'XII-PPLG1'),
(11, 'Fina Riyani', '21.5964', 'Perempuan', '2006-01-15', '', 'Islam', 'XII-PPLG1'),
(12, 'Hafizh Iman Santosa', '21.5932', 'Laki-laki', '2005-11-12', '', 'Islam', 'XII-PPLG1'),
(13, 'Ikfina Wafa Zahrotun Ni\'Mah', '21.5934', 'Perempuan', '2006-03-11', '', 'Islam', 'XII-PPLG1'),
(14, 'Ilham Kurnia Rahman', '21.5967', 'Laki-laki', '2006-01-20', '', 'Islam', 'XII-PPLG1'),
(15, 'M. Dzaki Ardiansyah', '21.5936', 'Laki-laki', '2006-01-10', '', 'Islam', 'XII-PPLG1'),
(16, 'M. Syifa', '21.5937', 'Laki-laki', '2006-01-05', '', 'Islam', 'XII-PPLG1'),
(17, 'Mohammad Naufal Taqiyyudin', '21.5942', 'Laki-laki', '2006-11-22', '', 'Islam', 'XII PPLG 1'),
(18, 'Muhammad Zufar Sabiq', '21.5973', 'Laki-laki', '2005-07-02', '', 'Islam', 'XII PPLG 1'),
(19, 'Nabiella Meilana Putri', '21.5975', 'Perempuan', '2006-05-12', '', 'Islam', 'XII PPLG 1'),
(20, 'Naufal Azizi', '21.5912', 'Laki-laki', '2006-08-24', '', 'Islam', 'XII PPLG 1'),
(21, 'Nazwa Zulfa Liana Maulidatul Khariroh', '21.5913', 'Perempuan', '2005-11-04', '', 'Islam', 'XII PPLG 1'),
(22, 'Nezha Haninda', '21.5914', 'Perempuan', '2004-12-31', '', 'Islam', 'XII PPLG 1'),
(23, 'Nurul Hamidah', '21.5946', 'Perempuan', '2006-05-12', '', 'Islam', 'XII PPLG 1'),
(24, 'Panji Haidar Al-latif', '21.5979', 'Laki-laki', '2006-08-24', '', 'Islam', 'XII PPLG 1'),
(25, 'Rifqi Achmad Aufa', '21.5950', 'Laki-laki', '2005-11-04', '', 'Islam', 'XII PPLG 1'),
(26, 'Selvi Alfiana', '21.5919', 'Perempuan', '2005-11-04', '', 'Islam', 'XII PPLG 1'),
(27, 'Syifaur Rohmah', '21.5951', 'Perempuan', '2006-05-12', '', 'Islam', 'XII PPLG 1'),
(28, 'Umniyah Zahroh', '21.5983', 'Perempuan', '2006-08-24', '', 'Islam', 'XII PPLG 1'),
(29, 'Yuni Syafa\'atul Udhma', '21.5953', 'Perempuan', '0000-00-00', '', 'Islam', 'XII PPLG 1'),
(30, 'Zahrotun Nafisah', '21.5954', 'Perempuan', '2005-06-16', '', 'Islam', 'XII PPLG 1'),
(31, 'Zydzn Ikrom ', '21.5988', 'Laki-laki', '2005-11-04', '', 'Islam', 'XII PPLG 1'),
(32, 'Anggelika Septia Ningrum', '21.6200', 'Perempuan', '2004-12-31', '', 'Islam', 'XII PPLG 1');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `siswaxii`
--
ALTER TABLE `siswaxii`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `siswaxii`
--
ALTER TABLE `siswaxii`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
