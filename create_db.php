<?php
// Definisi parameter server
$servername = "localhost";
$username = "root";
$password = "";

// Membuat koneksi ke server MySQL
$conn = mysqli_connect($servername, $username, $password);

// Memeriksa koneksi
if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}

// Membuat database baru
$sql = "CREATE DATABASE IF NOT EXISTS habil_database";
if (mysqli_query($conn, $sql)) {
    echo "Database <b>habil_database</b> berhasil dibuat atau sudah tersedia!<br>";
} else {
    echo "Error creating database: " . mysqli_error($conn) . "<br>";
}

// Pilih database
mysqli_select_db($conn, "habil_database");

// Membuat tabel nilaimhsw
$sqlTabel = "CREATE TABLE IF NOT EXISTS nilaimhsw (
    nim VARCHAR(20) PRIMARY KEY,
    namamhsw VARCHAR(100) NOT NULL,
    foto VARCHAR(255) DEFAULT NULL,
    nilaiakhir DECIMAL(5,2) DEFAULT 0,
    nilaihuruf VARCHAR(2) DEFAULT NULL,
    predikat VARCHAR(20) DEFAULT NULL,
    created_date DATETIME DEFAULT CURRENT_TIMESTAMP,
    modified_date DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
)";

if (mysqli_query($conn, $sqlTabel)) {
    echo "Tabel <b>nilaimhsw</b> berhasil dibuat atau sudah tersedia!<br>";
} else {
    echo "Error creating table: " . mysqli_error($conn) . "<br>";
}

// Cek dan isi data dummy
$cekJumlah = mysqli_query($conn, "SELECT COUNT(*) as total FROM nilaimhsw");
$rowJumlah = mysqli_fetch_assoc($cekJumlah);
if ($rowJumlah['total'] < 15) {
    $dummyData = [
        ['230101001', 'Ahmad Fauzi', 'uploads/mahasiswa/48d4ac1d37423d7e7d0760dd46cbad9a.jpg', 92.50, 'A', 'Sangat Memuaskan'],
        ['230101002', 'Budi Santoso', 'uploads/mahasiswa/5012c2e0337355e4a3db5248400acabb.jpg', 84.00, 'A', 'Sangat Memuaskan'],
        ['230101003', 'Citra Lestari', 'uploads/mahasiswa/5836d712f9be799da205896d8cc448fa.jpg', 78.50, 'B', 'Memuaskan'],
        ['230101004', 'Dedi Pratama', 'uploads/mahasiswa/6034c97678690a5824ef2df3133912c1.jpg', 68.00, 'B', 'Memuaskan'],
        ['230101005', 'Eka Rahmawati', 'uploads/mahasiswa/6ab65501b8f3d598b74bb4e2a9ce170d.jpg', 61.50, 'C', 'Cukup'],
        ['230101006', 'Fajar Nugraha', 'uploads/mahasiswa/6aebb6ff912adf179ba9fe9bee0d86b5.jpg', 55.00, 'C', 'Cukup'],
        ['230101007', 'Gita Permata', 'uploads/mahasiswa/8fe6b9ae6805be8378a51e5769fc35cb.jpg', 48.00, 'D', 'Kurang'],
        ['230101008', 'Habil Muhammad', 'uploads/mahasiswa/baf178f54d13734621be5138e42f9ef2.jpg', 95.00, 'A', 'Sangat Memuaskan'],
        ['230101009', 'Indah Kusuma', 'uploads/mahasiswa/c296eee4d6291d9a93267e14a8215a98.jpg', 75.00, 'B', 'Memuaskan'],
        ['230101010', 'Joko Susilo', 'uploads/mahasiswa/c2ca00598d63116d0b2230e29e010475.jpg', 32.00, 'E', 'Tidak Lulus'],
        ['230101011', 'Kartika Dewi', 'uploads/mahasiswa/cf27e717e975b31fef4a8fd5afa1938e.jpg', 88.50, 'A', 'Sangat Memuaskan'],
        ['230101012', 'Lukman Hakim', 'uploads/mahasiswa/e36d03068c7f3482e64d132aff82f4cf.jpg', 72.00, 'B', 'Memuaskan'],
        ['230101013', 'Maya Safitri', 'uploads/mahasiswa/e9aeccb8d8bacb0f4db9317bb31023ce.jpg', 64.00, 'C', 'Cukup'],
        ['230101014', 'Naufal Rizky', 'uploads/mahasiswa/ebc3e142c5ef1b366e0bc03317db5353.jpg', 45.00, 'D', 'Kurang'],
        ['230101015', 'Olivia Putri', 'uploads/mahasiswa/48d4ac1d37423d7e7d0760dd46cbad9a.jpg', 82.50, 'A', 'Sangat Memuaskan'],
        ['230101016', 'Panji Saputra', 'uploads/mahasiswa/5012c2e0337355e4a3db5248400acabb.jpg', 77.00, 'B', 'Memuaskan'],
        ['230101017', 'Qori Maulana', 'uploads/mahasiswa/5836d712f9be799da205896d8cc448fa.jpg', 58.50, 'C', 'Cukup'],
        ['230101018', 'Rini Anggraini', 'uploads/mahasiswa/6034c97678690a5824ef2df3133912c1.jpg', 89.00, 'A', 'Sangat Memuaskan'],
        ['230101019', 'Surya Darma', 'uploads/mahasiswa/6ab65501b8f3d598b74bb4e2a9ce170d.jpg', 28.00, 'E', 'Tidak Lulus'],
        ['230101020', 'Tia Wulandari', 'uploads/mahasiswa/6aebb6ff912adf179ba9fe9bee0d86b5.jpg', 80.00, 'B', 'Memuaskan']
    ];

    $stmtInsert = mysqli_prepare($conn, "INSERT IGNORE INTO nilaimhsw (nim, namamhsw, foto, nilaiakhir, nilaihuruf, predikat) VALUES (?, ?, ?, ?, ?, ?)");
    foreach ($dummyData as $item) {
        mysqli_stmt_bind_param($stmtInsert, 'sssdds', $item[0], $item[1], $item[2], $item[3], $item[4], $item[5]);
        mysqli_stmt_execute($stmtInsert);
    }
    mysqli_stmt_close($stmtInsert);
    echo "Data dummy (20 mahasiswa) berhasil dimasukkan ke tabel <b>nilaimhsw</b>!<br>";
}

// Menutup koneksi
mysqli_close($conn);

echo "<br><a href='daftar_nilai.php'>Klik di sini untuk ke Daftar Nilai</a>";
?>
