# 📚 Aplikasi Katalog Buku Digital

**Nama:** Nadzare Kafah Alfatiha  
**NIM:** H1D023014  
**Mata Kuliah:** Pemrograman Mobile A  

---

## 🧩 PAKET 4 – Aplikasi Katalog Buku
**Tema:** Koleksi Buku Digital  

### 📱 Halaman yang Harus Dibuat:
1. **Home** — Menampilkan daftar buku  
2. **Detail Buku** — Menampilkan informasi detail dari buku yang dipilih  
3. **Genre Buku** — Menampilkan kategori/genre buku  
4. **Tentang Perpustakaan (About)** — Informasi tentang aplikasi  
5. **Kontak (Contact)** — Informasi kontak pengembang  

**Tambahan:**  
Aplikasi ini menggunakan **ListView** untuk menampilkan daftar buku secara dinamis dan interaktif.

---

## 🧠 Teknologi yang Digunakan
- **Flutter** (Framework UI)
- **GetX** (State Management & Routing)
- **Dart** (Bahasa Pemrograman)
- **Material Design Components**
- **Asset Online (Image.network)** untuk menampilkan gambar buku dari internet

---


---

## 📁 Penjelasan Folder & File

### 🗂️ **lib/app/modules/**
Berisi seluruh modul halaman aplikasi. Setiap modul memiliki dua file:
- `*_controller.dart` → mengatur logika dan data menggunakan GetX
- `*_view.dart` → menampilkan antarmuka pengguna (UI)

#### 🏠 **1. home/**
- **home_controller.dart**  
  Menyimpan daftar buku dalam bentuk list (judul, penulis, dan gambar online).  
  Mengatur *state* tampilan menggunakan GetX.
  
- **home_view.dart**  
  Menampilkan halaman utama aplikasi dengan daftar buku menggunakan `ListView.builder`.  
  Tiap item buku ditampilkan dalam bentuk *card* menarik menggunakan `BookCard` widget.

#### 📖 **2. detail/**
- **detail_controller.dart**  
  Mengatur logika tampilan detail buku tertentu yang dipilih dari halaman Home.
  
- **detail_view.dart**  
  Menampilkan detail lengkap buku seperti judul, penulis, deskripsi, dan gambar sampul.

#### 🏷️ **3. genre/**
- **genre_controller.dart**  
  Mengatur data genre/kategori buku seperti Teknologi, Fiksi, atau Edukasi.
  
- **genre_view.dart**  
  Menampilkan daftar genre dalam bentuk grid atau list.

#### 📞 **4. contact/**
- **contact_controller.dart**  
  Menyimpan dan mengelola data kontak pengembang.
  
- **contact_view.dart**  
  Menampilkan halaman kontak berisi email, media sosial, atau profil developer.

#### ℹ️ **5. about/**
- **about_controller.dart**  
  Mengatur data tentang aplikasi seperti nama dan versi aplikasi.
  
- **about_view.dart**  
  Menampilkan informasi singkat mengenai aplikasi “Katalog Buku Digital”.

---

### 🗺️ **lib/app/routes/**
- **app_pages.dart**  
  Berisi daftar rute (*routing*) antar halaman yang dikelola dengan GetX.
  Contoh:
  ```dart
  GetPage(name: '/home', page: () => HomeView()),
  GetPage(name: '/detail', page: () => DetailView()),


Proyek ini menggunakan **arsitektur modular berbasis GetX**, di mana setiap fitur aplikasi dipecah menjadi modul agar lebih rapi, mudah dikelola, dan mudah dikembangkan.

