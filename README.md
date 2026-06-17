# Pertemuan 10 - Aplikasi Manajemen Produk (Flutter)

Aplikasi Flutter sederhana untuk mengelola daftar produk, dilengkapi dengan sistem login dan penyimpanan data secara lokal (offline) menggunakan `SharedPreferences`.

## Fitur Utama

- **Sistem Autentikasi (Login)**
  - Form login dengan validasi (username tidak boleh kosong, password minimal 5 karakter).
  - Menyimpan status login menggunakan `SharedPreferences` (Auto-login).
  - Fitur Logout untuk keluar dari akun.

- **Manajemen Produk (CRUD)**
  - **Create**: Menambah produk baru dengan form nama, deskripsi, dan harga.
  - **Read**: Menampilkan 3 produk terbaru di Halaman Utama (Home) dan daftar seluruh produk di Halaman Produk.
  - **Update**: Mengedit data produk yang sudah ada.
  - **Delete**: Menghapus produk dari daftar.
  - Semua data produk disimpan secara persisten (permanen di perangkat) menggunakan `SharedPreferences`.

- **Komponen Modular (Reusable Widget)**
  - Menggunakan widget kustom `ProductCard` yang dapat dipanggil berulang kali di Halaman Utama maupun Halaman Produk.

- **Detail Produk**
  - Navigasi halaman yang dinamis untuk menampilkan informasi spesifik dari suatu produk ketika diklik.

## Cara Menjalankan Aplikasi

1. Pastikan Anda telah menginstal Flutter SDK.
2. Install semua *dependencies*:
   ```bash
   flutter pub get
   ```
3. Jalankan aplikasi (Bisa melalui emulator, browser Chrome, atau device asli):
   ```bash
   flutter run
   ```

## Struktur Folder Utama

```text
lib/
├── models/
│   └── product_model.dart       # Struktur data/Blueprint untuk produk
├── pages/
│   ├── home_page.dart           # Halaman profil & 3 produk teratas
│   ├── login_page.dart          # Halaman autentikasi form
│   ├── product_detail_page.dart # Halaman tampilan data produk spesifik
│   └── product_page.dart        # Halaman keseluruhan produk beserta aksi CRUD
├── widgets/
│   └── product_card.dart        # Desain reusable untuk kartu daftar produk
└── main.dart                    # File utama aplikasi
```

## Dependencies (di pubspec.yaml)

```yaml
dependencies:
  flutter:
    sdk: flutter
  shared_preferences: ^2.0.0 # Atau versi yang lebih baru
```
