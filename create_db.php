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

// Menutup koneksi
mysqli_close($conn);

echo "<br><a href='daftar_nilai.php'>Klik di sini untuk ke Daftar Nilai</a>";
?>
