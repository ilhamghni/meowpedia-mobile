# Pemrograman Berbasis Platform E
## MeowPedia Mobile 😽😽
### Nama : Ilham Ghani Adrin Sapta
### NPM  : 2306201792
### Link : TBA
---

# Tugas 7: Elemen Dasar Flutter

<details>
<summary>Click for more detail</summary>
<br>

## Deskripsi Tugas
Pada tugas ini, Saya akan mengimplementasikan aplikasi yang telah saya kembangkan menggunakan Flutter berdasarkan beberapa hal yang sudah saya pelajari selama tutorial.

## Checklist Tugas
- #### ✅  Membuat sebuah program Flutter baru dengan tema E-Commerce yang sesuai dengan tugas-tugas sebelumnya.
  Jalankan perintah `flutter create meowpedia_mobile` untuk inisialisasi project, lalu jalankan dengan flutter run untuk memeriksa apakah project sukses di build.
- #### ✅ Membuat tiga tombol sederhana dengan ikon dan teks untuk:
    - #### ✅ Melihat daftar produk (Lihat Daftar Produk)
    - #### ✅ Menambah produk (Tambah Produk)
    - #### ✅ Logout (Logout)
    
  1. Buat tiga tombol sederhana dengan ikon dan teks untuk:
     - "Lihat Item" untuk melihat daftar item
     - "Tambah Item" untuk menambah item baru
     - "Logout" untuk keluar dari aplikasi

  2. Buat widget `MyHomePage` yang berfungsi sebagai struktur utama dari halaman utama aplikasi.

  3. Buat kelas yang berperan sebagai model data untuk setiap tombol, menyimpan informasi seperti nama, ikon, dan warna tombol.

  4. Pada `MyHomePage`, siapkan data untuk tombol-tombol dengan membuat objek tombol sesuai data yang dibutuhkan (nama, ikon, dan warna) dan simpan dalam sebuah daftar bernama `items`.

  5. Buat widget bernama `ItemCard` yang akan menjadi child dari `MyHomePage` dan menangani setiap item di daftar `items`, membentuk setiap elemen menjadi tombol interaktif.

- #### ✅ Mengimplementasikan warna-warna yang berbeda untuk setiap tombol (Lihat Daftar Produk, Tambah Produk, dan Logout).
  1. **Membuat daftar warna**: Buat list `cardColors` berisi warna-warna berbeda yang akan digunakan untuk setiap tombol.

  2. **Menyiapkan daftar tombol**: Definisikan list `items` yang berisi data tiap tombol (nama dan ikon), misalnya "Lihat Daftar Produk", "Tambah Produk", dan "Logout".

  3. **Membuat widget tombol (ItemCard)**: Buat widget `ItemCard` yang menerima data tombol dan warna.

  4. **Menampilkan tombol di MyHomePage**: Pada `MyHomePage`, gunakan `GridView` untuk menampilkan `ItemCard` dengan memberikan warna dari `cardColors` berdasarkan indeks tombol.

  5. **Menjaga agar warna berbeda**: Atur warna tombol agar diambil berdasarkan urutan dalam `cardColors`, menggunakan operator modulus (`%`) agar warna terulang jika jumlah tombol lebih banyak dari warna yang tersedia.

- #### ✅ Memunculkan Snackbar dengan tulisan:
    - #### ✅ "Kamu telah menekan tombol Lihat Daftar Produk" ketika tombol Lihat Daftar Produk ditekan.
    - #### ✅ "Kamu telah menekan tombol Tambah Produk" ketika tombol Tambah Produk ditekan.
    - #### ✅ "Kamu telah menekan tombol Logout" ketika tombol Logout ditekan.
  
  Buat onTap Callback pada InkWell: Dalam widget ItemCard, tambahkan fungsi callback onTap pada widget InkWell. Di dalam fungsi ini, kita akan menampilkan Snackbar.
  
  Gunakan ScaffoldMessenger: Dalam callback onTap, gunakan ScaffoldMessenger.of(context) untuk mengakses Scaffold yang ada di dalam context dan memanipulasi Snackbar.
  
  Hide Current SnackBar: Sebelum menampilkan Snackbar baru, panggil hideCurrentSnackBar() untuk menyembunyikan Snackbar yang sedang ditampilkan (jika ada).
  
  Tampilkan Snackbar: Gunakan showSnackBar() dengan parameter yang berisi teks yang sesuai dengan tombol yang ditekan. Gunakan ${item.name} untuk menampilkan nama tombol yang bersangkutan dalam Snackbar.

#### ✅ Menjawab beberapa pertanyaan berikut pada README.md pada root_folder.

#### 1️⃣ Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget, dan jelaskan perbedaan dari keduanya.
Di Flutter, StatelessWidget dan StatefulWidget adalah dua jenis widget utama yang digunakan berdasarkan kebutuhan perubahan tampilan. StatelessWidget tidak memiliki state internal, sehingga tampilannya tetap dan hanya dirender sekali saat pertama kali dipanggil, cocok untuk elemen statis seperti teks atau ikon. Sebaliknya, StatefulWidget memiliki state yang dapat berubah, memungkinkan tampilan untuk diperbarui setiap kali ada perubahan pada data atau interaksi pengguna, seperti tombol yang memicu peningkatan angka. Pada StatefulWidget, setiap perubahan state diproses melalui metode setState, yang akan menyebabkan tampilan dirender ulang. Jadi, perbedaannya terletak pada kemampuan StatefulWidget untuk memperbarui tampilan secara dinamis, sementara StatelessWidget hanya digunakan untuk tampilan yang tidak berubah.

#### 2️⃣ Sebutkan widget apa saja yang kamu gunakan pada proyek ini dan jelaskan fungsinya.
Dalam proyek ini, beberapa widget yang digunakan, yaitu:

1. MaterialApp: Widget ini adalah root dari aplikasi Flutter, yang mendefinisikan tema global, warna, dan halaman awal aplikasi (home).

2. MyHomePage: Widget ini merupakan halaman utama aplikasi yang menampilkan informasi dan daftar item. Ini adalah widget Stateless yang membungkus seluruh struktur halaman dalam sebuah Scaffold.

3. Scaffold: Scaffold menyediakan struktur dasar halaman, seperti AppBar di bagian atas dan body di tengah halaman. Scaffold memudahkan dalam membangun tata letak standar untuk aplikasi.

4. AppBar: Bagian dari Scaffold yang ditempatkan di bagian atas halaman dan digunakan untuk menampilkan judul aplikasi, dalam hal ini "Meowpedia".

5. Padding: Widget ini memberikan jarak atau padding di sekitar child widget, untuk memberikan ruang dan tata letak yang lebih rapi.

6. Column: Menyusun widget secara vertikal. Dalam aplikasi ini, Column digunakan untuk mengatur InfoCard dan item-item dalam daftar.

7. Row: Widget ini digunakan untuk menampilkan InfoCard secara horizontal di dalam halaman.

8. InfoCard: Widget custom yang merupakan StatelessWidget. Digunakan untuk menampilkan informasi pengguna seperti NPM, nama, dan kelas. Kartu ini menyusun title dan content secara vertikal.

9. ItemCard: Widget custom yang juga StatelessWidget. Digunakan untuk menampilkan setiap item di halaman utama dalam bentuk grid. ItemCard juga mendukung warna latar belakang yang berbeda-beda dan aksi onTap untuk menampilkan pesan.

10. GridView: Digunakan untuk menampilkan ItemCard dalam bentuk grid dengan 3 kolom. GridView menyesuaikan ukuran widget dengan tata letak grid yang diinginkan.

11. InkWell: Memberikan efek sentuhan pada ItemCard. InkWell digunakan bersama Material untuk memberikan interaksi visual ketika item ditekan.

12. SnackBar: Digunakan untuk menampilkan pesan singkat di bagian bawah layar saat pengguna menekan salah satu item di ItemCard.

13. Icon dan Text: Menampilkan ikon dan teks dalam setiap ItemCard. Icon menampilkan gambar kecil sesuai dengan item, sedangkan Text digunakan untuk menampilkan nama dari item tersebut.

#### 3️⃣ Apa fungsi dari setState()? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.
Fungsi `setState()` dalam Flutter digunakan untuk memberitahukan framework bahwa ada perubahan pada variabel-variabel yang memengaruhi tampilan UI, sehingga framework dapat merender ulang widget yang terkait. Biasanya, variabel yang berada dalam `StatefulWidget` dapat terpengaruh oleh `setState()`, seperti variabel yang menyimpan data dinamis atau yang diubah saat aplikasi berjalan. Dengan memanggil `setState()`, perubahan variabel akan tercermin di UI, memungkinkan interaksi yang responsif dan dinamis, misalnya pada tampilan teks, warna, atau komponen yang bergantung pada variabel tersebut.
#### 4️⃣ Jelaskan perbedaan antara const dengan final.
const dan final adalah kata kunci di Dart yang digunakan untuk mendeklarasikan variabel yang nilainya tetap. final digunakan untuk nilai yang diinisialisasi sekali pada runtime dan tidak dapat diubah. const digunakan untuk nilai tetap yang sudah diketahui pada waktu kompilasi, bersifat immutable, dan konstan sepanjang aplikasi.
#### ✅ Jelaskan bagaimana cara kamu mengimplementasikan checklist-checklist di atas.

#### ✅  Melakukan add-commit-push ke GitHub.

</details>


---
