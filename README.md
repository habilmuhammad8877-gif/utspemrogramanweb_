# UTS Praktikum Pemrograman Web - Sistem Nilai Mahasiswa

Proyek Ujian Tengah Semester (UTS) Pemrograman Web berbasis template **AdminLTE 4** dan **PHP Native & MySQL**.

- **Nama**: Habil Muhammad
- **Repositori GitHub**: [https://github.com/habilmuhammad8877-gif/utspemrogramanweb_](https://github.com/habilmuhammad8877-gif/utspemrogramanweb_)

---

## Fitur yang Telah Diimplementasikan

### 1. Pembacaan Data Foto Mahasiswa
- Menambahkan kolom `foto` (path file foto) pada tabel `nilaimhsw`.
- Foto mahasiswa ditampilkan berupa thumbnail bulat (*rounded circle*) di sebelah nama mahasiswa di dalam **kolom yang sama (Kolom Nama Mahasiswa)**.
- Dilengkapi fallback icon avatar jika data foto belum diunggah.

### 2. Fitur Pencarian Data (Searching & Filtering)
- **Search by Name**: Pencarian mahasiswa secara dinamis berdasarkan nama menggunakan text input pencarian.
- **Search by Predicate**: Filter data berdasarkan pilihan predikat (mis. *Sangat Memuaskan*, *Memuaskan*, *Cukup*, *Kurang*, *Tidak Lulus*) menggunakan *drop-down option* bawaan template.
- Dilengkapi tombol pencarian dan tombol **Reset** untuk mengembalikan tampilan semula.

### 3. Fitur Pengurutan Data (Sorting)
- Pengurutan data secara dinamis berdasarkan data **Nilai Akhir**.
- Menggunakan ikon panah kecil di judul kolom **Nilai Angka** yang disediakan template AdminLTE (ikon panah ke atas untuk *Ascending* dan ke bawah untuk *Descending*).
- Klik header kolom membalikkan arah pengurutan (*toggle* ASC / DESC).

### 4. Fitur Pagination Dinamis
- Limit record per halaman dapat diatur fleksibel dengan opsi **5, 10, dan 15 record per page** melalui dropdown selection.
- Tombol navigasi lengkap disediakan oleh template:
  - **First Page** (`«« First`): Langsung menuju halaman pertama.
  - **Previous Page** (`« Prev`): Menuju halaman sebelumnya.
  - **Nomor Halaman** (1, 2, 3, ...): Memilih halaman spesifik.
  - **Next Page** (`Next »`): Menuju halaman berikutnya.
  - **Last Page** (`Last »»`): Langsung menuju halaman terakhir.
- Seluruh parameter pencarian, filter, sorting, dan limit tetap terjaga saat berpindah halaman.

### 5. Export Database ([dot]sql)
- Skema struktur database dan tabel `nilaimhsw` telah diekspor ke dalam file SQL **`habil_database.sql`** dan disertakan dalam repositori.
- Pengguna dapat menginput data mahasiswa secara langsung melalui fitur form **Tambah Data Nilai** pada antarmuka web.

---

## Struktur Database (`habil_database.sql`)

```sql
CREATE TABLE `nilaimhsw` (
  `nim` varchar(20) NOT NULL PRIMARY KEY,
  `namamhsw` varchar(100) NOT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `nilaiakhir` decimal(5,2) DEFAULT 0.00,
  `nilaihuruf` varchar(2) DEFAULT NULL,
  `predikat` varchar(20) DEFAULT NULL,
  `created_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `modified_date` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);
```

---

## Panduan Menjalankan Proyek di Komputer Lokal

1. **Clone repositori**:
   ```bash
   git clone https://github.com/habilmuhammad8877-gif/utspemrogramanweb_.git
   ```
2. Pindahkan folder ke direktori server lokal (misalnya `C:/laragon/www/utshabil` atau `C:/xampp/htdocs/utshabil`).
3. Pastikan service **Apache** dan **MySQL** sudah berjalan di Laragon / XAMPP.
4. **Import Database**:
   - Buka phpMyAdmin (`http://localhost/phpmyadmin`) atau HeidiSQL.
   - Buat database `habil_database` atau impor langsung file **`habil_database.sql`**.
   - *Atau* jalankan file `create_db.php` melalui browser (`http://localhost/utshabil/create_db.php`) untuk membuat database dan mengisi data dummy secara otomatis.
5. Buka aplikasi di browser:
   ```
   http://localhost/utshabil/daftar_nilai.php
   ```
