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
-- Data Dummy untuk tabel `nilaimhsw` (20 Data Mahasiswa)
-- --------------------------------------------------------

INSERT INTO `nilaimhsw` (`nim`, `namamhsw`, `foto`, `nilaiakhir`, `nilaihuruf`, `predikat`, `created_date`, `modified_date`) VALUES
('230101001', 'Ahmad Fauzi', 'uploads/mahasiswa/48d4ac1d37423d7e7d0760dd46cbad9a.jpg', 92.50, 'A', 'Sangat Memuaskan', '2026-10-20 08:30:00', '2026-10-20 08:30:00'),
('230101002', 'Budi Santoso', 'uploads/mahasiswa/5012c2e0337355e4a3db5248400acabb.jpg', 84.00, 'A', 'Sangat Memuaskan', '2026-10-20 08:35:00', '2026-10-20 08:35:00'),
('230101003', 'Citra Lestari', 'uploads/mahasiswa/5836d712f9be799da205896d8cc448fa.jpg', 78.50, 'B', 'Memuaskan', '2026-10-20 08:40:00', '2026-10-20 08:40:00'),
('230101004', 'Dedi Pratama', 'uploads/mahasiswa/6034c97678690a5824ef2df3133912c1.jpg', 68.00, 'B', 'Memuaskan', '2026-10-20 08:45:00', '2026-10-20 08:45:00'),
('230101005', 'Eka Rahmawati', 'uploads/mahasiswa/6ab65501b8f3d598b74bb4e2a9ce170d.jpg', 61.50, 'C', 'Cukup', '2026-10-20 08:50:00', '2026-10-20 08:50:00'),
('230101006', 'Fajar Nugraha', 'uploads/mahasiswa/6aebb6ff912adf179ba9fe9bee0d86b5.jpg', 55.00, 'C', 'Cukup', '2026-10-20 08:55:00', '2026-10-20 08:55:00'),
('230101007', 'Gita Permata', 'uploads/mahasiswa/8fe6b9ae6805be8378a51e5769fc35cb.jpg', 48.00, 'D', 'Kurang', '2026-10-20 09:00:00', '2026-10-20 09:00:00'),
('230101008', 'Habil Muhammad', 'uploads/mahasiswa/baf178f54d13734621be5138e42f9ef2.jpg', 95.00, 'A', 'Sangat Memuaskan', '2026-10-20 09:05:00', '2026-10-20 09:05:00'),
('230101009', 'Indah Kusuma', 'uploads/mahasiswa/c296eee4d6291d9a93267e14a8215a98.jpg', 75.00, 'B', 'Memuaskan', '2026-10-20 09:10:00', '2026-10-20 09:10:00'),
('230101010', 'Joko Susilo', 'uploads/mahasiswa/c2ca00598d63116d0b2230e29e010475.jpg', 32.00, 'E', 'Tidak Lulus', '2026-10-20 09:15:00', '2026-10-20 09:15:00'),
('230101011', 'Kartika Dewi', 'uploads/mahasiswa/cf27e717e975b31fef4a8fd5afa1938e.jpg', 88.50, 'A', 'Sangat Memuaskan', '2026-10-20 09:20:00', '2026-10-20 09:20:00'),
('230101012', 'Lukman Hakim', 'uploads/mahasiswa/e36d03068c7f3482e64d132aff82f4cf.jpg', 72.00, 'B', 'Memuaskan', '2026-10-20 09:25:00', '2026-10-20 09:25:00'),
('230101013', 'Maya Safitri', 'uploads/mahasiswa/e9aeccb8d8bacb0f4db9317bb31023ce.jpg', 64.00, 'C', 'Cukup', '2026-10-20 09:30:00', '2026-10-20 09:30:00'),
('230101014', 'Naufal Rizky', 'uploads/mahasiswa/ebc3e142c5ef1b366e0bc03317db5353.jpg', 45.00, 'D', 'Kurang', '2026-10-20 09:35:00', '2026-10-20 09:35:00'),
('230101015', 'Olivia Putri', 'uploads/mahasiswa/48d4ac1d37423d7e7d0760dd46cbad9a.jpg', 82.50, 'A', 'Sangat Memuaskan', '2026-10-20 09:40:00', '2026-10-20 09:40:00'),
('230101016', 'Panji Saputra', 'uploads/mahasiswa/5012c2e0337355e4a3db5248400acabb.jpg', 77.00, 'B', 'Memuaskan', '2026-10-20 09:45:00', '2026-10-20 09:45:00'),
('230101017', 'Qori Maulana', 'uploads/mahasiswa/5836d712f9be799da205896d8cc448fa.jpg', 58.50, 'C', 'Cukup', '2026-10-20 09:50:00', '2026-10-20 09:50:00'),
('230101018', 'Rini Anggraini', 'uploads/mahasiswa/6034c97678690a5824ef2df3133912c1.jpg', 89.00, 'A', 'Sangat Memuaskan', '2026-10-20 09:55:00', '2026-10-20 09:55:00'),
('230101019', 'Surya Darma', 'uploads/mahasiswa/6ab65501b8f3d598b74bb4e2a9ce170d.jpg', 28.00, 'E', 'Tidak Lulus', '2026-10-20 10:00:00', '2026-10-20 10:00:00'),
('230101020', 'Tia Wulandari', 'uploads/mahasiswa/6aebb6ff912adf179ba9fe9bee0d86b5.jpg', 80.00, 'B', 'Memuaskan', '2026-10-20 10:05:00', '2026-10-20 10:05:00');
