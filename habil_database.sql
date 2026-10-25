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
('320416001', 'Habil', 'uploads/mahasiswa/5012c2e0337355e4a3db5248400acabb.jpg', 99.00, 'A', 'Sangat Memuaskan', '2026-10-25 22:53:17', '2026-10-25 22:53:17'),
('3202416002', 'Fathi', 'uploads/mahasiswa/48d4ac1d37423d7e7d0760dd46cbad9a.jpg', 75.00, 'B', 'Memuaskan', '2026-10-25 23:37:17', '2026-10-25 23:37:17'),
('3202416003', 'Habil From Anjong', 'uploads/mahasiswa/6ab65501b8f3d598b74bb4e2a9ce170d.jpg', 55.00, 'C', 'Cukup', '2026-10-25 23:37:46', '2026-10-25 23:37:46'),
('3202416004', 'Gabriel From Parteng', 'uploads/mahasiswa/baf178f54d13734621be5138e42f9ef2.jpg', 44.00, 'D', 'Kurang', '2026-10-25 23:38:06', '2026-10-25 23:38:06'),
('3202416005', 'Bowok Aspal', 'uploads/mahasiswa/e36d03068c7f3482e64d132aff82f4cf.jpg', 11.00, 'E', 'Tidak Lulus', '2026-10-25 23:38:31', '2026-10-25 23:38:31'),
('3202416006', 'HABIL PINTER', 'uploads/mahasiswa/6034c97678690a5824ef2df3133912c1.jpg', 100.00, 'A', 'Sangat Memuaskan', '2026-10-25 23:38:49', '2026-10-25 23:38:49');
