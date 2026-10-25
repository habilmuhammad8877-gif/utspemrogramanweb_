<?php
require_once __DIR__ . "/connect.php";

echo "<h3>Info Koneksi MySQL:</h3>";
echo "Host: " . mysqli_get_host_info($conn) . "<br>";
echo "Server version: " . mysqli_get_server_info($conn) . "<br>";
echo "<br>";

// Cek apakah database ada
$result = mysqli_query($conn, "SHOW DATABASES");
echo "<h3>Daftar Database:</h3>";
while ($row = mysqli_fetch_row($result)) {
    echo "- " . $row[0] . "<br>";
}

echo "<br>";
// Cek tabel
$result2 = mysqli_query($conn, "SHOW TABLES");
echo "<h3>Tabel di nilai_mahasiswa5a:</h3>";
while ($row = mysqli_fetch_row($result2)) {
    echo "- " . $row[0] . "<br>";
}
?>
