# pertemuan10_2306077

Aplikasi Flutter untuk sistem login dengan validasi form dan penyimpanan data pengguna menggunakan SharedPreferences.

## Fitur Utama

- **Form Login dengan Validasi**
  - Username: tidak boleh kosong
  - Password: minimal 5 huruf, tidak boleh kosong
  - Menampilkan error message jika data tidak valid

- **Penyimpanan Data Lokal**
  - Menggunakan SharedPreferences untuk menyimpan username dan password
  - Auto-login jika user sudah pernah login sebelumnya

- **Halaman Home**
  - Menampilkan avatar, nama user, dan tanda centang verifikasi
  - Tombol logout untuk keluar aplikasi

## Cara Menggunakan

```bash
flutter run
```

1. Masukkan username (tidak boleh kosong)
2. Masukkan password (minimal 5 huruf)
3. Tekan tombol Login
4. Tekan logout untuk keluar

## Dependencies

```yaml
dependencies:
  flutter:
    sdk: flutter
  shared_preferences: ^2.0.0
```


