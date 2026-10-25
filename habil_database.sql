-- Database Export: habil_database
-- Proyek UTS Pemrograman Web
-- Nama: Habil Muhammad
-- GitHub Repo: https://github.com/habilmuhammad8877-gif/utspemrogramanweb_

CREATE DATABASE IF NOT EXISTS `habil_database` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `habil_database`;

-- --------------------------------------------------------
-- Struktur dari tabel `nilaimhsw`
-- --------------------------------------------------------

DROP TABLE IF EXISTS `nilaimhsw`;
CREATE TABLE `nilaimhsw` (
  `nim` varchar(20) NOT NULL,
  `namamhsw` varchar(100) NOT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `nilaiakhir` decimal(5,2) DEFAULT 0.00,
  `nilaihuruf` varchar(2) DEFAULT NULL,
  `predikat` varchar(20) DEFAULT NULL,
  `created_date` datetime DEFAULT current_timestamp(),
  `modified_date` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`nim`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
