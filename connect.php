<?php
// Definisi parameter server
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "habil_database";

// Membuat koneksi ke database
$conn = mysqli_connect(
    $servername,
    $username,
    $password,
    $dbname
);

// Memeriksa koneksi
if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}
?>