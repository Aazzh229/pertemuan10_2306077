# pertemuan10_2306077

Aplikasi Flutter untuk sistem login dengan validasi form dan penyimpanan data pengguna menggunakan SharedPreferences.

## Deskripsi Program

Program ini adalah aplikasi mobile yang menyediakan fitur autentikasi pengguna sederhana dengan dua halaman utama:
1. **Login Page** - Halaman untuk login dengan username dan password
2. **Home Page** - Halaman utama yang menampilkan informasi pengguna yang telah login

## Fitur Utama

### 1. Login Page (`lib/pages/login_page.dart`)
- Form input username dan password dengan validasi menggunakan `TextFormField`
- **Validasi Username**: Tidak boleh kosong
- **Validasi Password**: Tidak boleh kosong dan minimal 5 huruf
- Menampilkan error message yang jelas jika data tidak valid
- Menyimpan username dan password ke SharedPreferences saat login berhasil
- Navigasi otomatis ke Home Page setelah login sukses

### 2. Home Page (`lib/pages/home_page.dart`)
- Menampilkan avatar pengguna dari URL
- Menampilkan text "Hai, Selamat Datang" dan nama username yang tersimpan
- Tanda centang (✓) hijau di samping nama untuk menandakan status terverifikasi
- Tombol logout di sisi kanan atas untuk keluar dari aplikasi
- Mengambil data username dari SharedPreferences saat halaman dibuka

### 3. Main App (`lib/main.dart`)
- Check status login otomatis saat aplikasi dijalankan
- Jika user sudah login → tampilkan Home Page
- Jika user belum login → tampilkan Login Page
- Loading indicator saat mengecek status login

## Struktur Kode

```
lib/
├── main.dart              # Entry point aplikasi, check login status
├── pages/
│   ├── login_page.dart    # Halaman login dengan form validasi
│   └── home_page.dart     # Halaman utama setelah login
```

## Cara Penggunaan

### 1. Menjalankan Aplikasi
```bash
flutter run
```

### 2. Login
- Masukkan username (bisa input apa saja, tidak boleh kosong)
- Masukkan password (minimal 5 huruf, tidak boleh kosong)
- Tekan tombol "Login"

### 3. Home Page
- Setelah login, aplikasi akan menampilkan halaman home dengan info pengguna
- Tekan tombol logout (ikon pintu keluar) untuk keluar dan kembali ke login page

## Dependencies

Aplikasi menggunakan package berikut:
- **flutter/material.dart** - Widget dan desain material design
- **shared_preferences** - Untuk menyimpan data pengguna secara lokal

Tambahkan dependency di `pubspec.yaml`:
```yaml
dependencies:
  flutter:
    sdk: flutter
  shared_preferences: ^2.0.0
```

## Alur Aplikasi

```
Mulai App
    ↓
[Check Login Status]
    ├─ Sudah Login → Home Page
    └─ Belum Login → Login Page
                     ↓
                  [Input Form]
                     ↓
                  [Validasi]
                  ├─ Valid → Simpan ke SharedPreferences → Home Page
                  └─ Invalid → Tampilkan Error Message
```

## Fitur Keamanan

- Data username dan password disimpan di SharedPreferences (local storage)
- Saat logout, semua data dibersihkan dengan `prefs.clear()`
- Password field menggunakan `obscureText: true` untuk menyembunyikan input

## Pengembangan Lebih Lanjut

Untuk meningkatkan keamanan dan fungsionalitas:
- Implementasi enkripsi password dengan package `flutter_secure_storage`
- Tambahkan backend API untuk verifikasi login
- Implementasi token-based authentication
- Tambahkan fitur "Remember Me" atau biometric login

