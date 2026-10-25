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

-- --------------------------------------------------------
-- Data untuk tabel `nilaimhsw`
-- --------------------------------------------------------

INSERT INTO `nilaimhsw` (`nim`, `namamhsw`, `foto`, `nilaiakhir`, `nilaihuruf`, `predikat`, `created_date`, `modified_date`) VALUES
('3202416001', 'Habil', 'uploads/mahasiswa/5012c2e0337355e4a3db5248400acabb.jpg', 99.00, 'A', 'Sangat Memuaskan', '2026-10-25 22:53:17', '2026-10-26 03:37:40'),
('3202416002', 'Fathi', 'uploads/mahasiswa/48d4ac1d37423d7e7d0760dd46cbad9a.jpg', 75.00, 'B', 'Memuaskan', '2026-10-25 23:37:17', '2026-10-25 23:37:17'),
('3202416003', 'Habil From Anjong', 'uploads/mahasiswa/6ab65501b8f3d598b74bb4e2a9ce170d.jpg', 55.00, 'C', 'Cukup', '2026-10-25 23:37:46', '2026-10-25 23:37:46'),
('3202416004', 'Gabriel From Parteng', 'uploads/mahasiswa/baf178f54d13734621be5138e42f9ef2.jpg', 44.00, 'D', 'Kurang', '2026-10-25 23:38:06', '2026-10-25 23:38:06'),
('3202416005', 'Bowok Aspal', 'uploads/mahasiswa/e36d03068c7f3482e64d132aff82f4cf.jpg', 11.00, 'E', 'Tidak Lulus', '2026-10-25 23:38:31', '2026-10-25 23:38:31'),
('3202416006', 'HABIL PINTER', 'uploads/mahasiswa/6034c97678690a5824ef2df3133912c1.jpg', 100.00, 'A', 'Sangat Memuaskan', '2026-10-25 23:38:49', '2026-10-25 23:38:49'),
('3202416010', 'Freky Ganteng', '', 100.00, 'A', 'Sangat Memuaskan', '2026-10-26 03:37:23', '2026-10-26 03:37:23'),
('3202416011', 'Bowok Dark', '', 77.00, 'B', 'Memuaskan', '2026-10-26 03:38:06', '2026-10-26 03:38:23'),
('3202416012', 'Freky Light', '', 66.00, 'B', 'Memuaskan', '2026-10-26 03:39:22', '2026-10-26 03:39:22'),
('3202416013', 'Muhammad Matheus Cunha', '', 55.00, 'C', 'Cukup', '2026-10-26 03:39:48', '2026-10-26 03:39:48'),
('3202416014', 'Yan Ondemande', '', 49.00, 'D', 'Kurang', '2026-10-26 03:40:28', '2026-10-26 03:40:28'),
('3202416049', 'Apa Yah', '', 100.00, 'A', 'Sangat Memuaskan', '2026-10-26 03:43:31', '2026-10-26 03:43:31'),
('3202416077', 'Parades Para', '', 13.00, 'E', 'Tidak Lulus', '2026-10-26 03:42:55', '2026-10-26 03:42:55'),
('3202416088', 'Daddy Home', '', 39.00, 'D', 'Kurang', '2026-10-26 03:41:43', '2026-10-26 03:41:43'),
('3202416098', 'Mahasiswa Gondrong', '', 11.00, 'E', 'Tidak Lulus', '2026-10-26 03:42:31', '2026-10-26 03:42:31'),
('3202416099', 'Kylian Diktator', '', 61.00, 'C', 'Cukup', '2026-10-26 03:40:48', '2026-10-26 03:40:48');
