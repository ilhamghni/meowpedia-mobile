# Pemrograman Berbasis Platform E
## MeowPedia Mobile 😽😽
### Nama : Ilham Ghani Adrin Sapta
### NPM  : 2306201792
### Link : TBA
---

# Tugas 9: Integrasi Layanan Web Django dengan Aplikasi Flutter

<details>
<summary>Click for more detail</summary>
<br>

## Deskripsi Tugas
Pada tugas ini, saya akan mengimplementasikan navigation, layout, form, dan form input elements pada aplikasi Flutter yang kamu buat pada tugas sebelumnya.

## Checklist Tugas
- #### ✅ Memastikan deployment proyek tugas Django kamu telah berjalan dengan baik.

- #### ✅ Mengimplementasikan fitur registrasi akun pada proyek tugas Flutter.
  - Membuat halaman registrasi dengan form untuk input username, email, dan password.
  - Mengirim data registrasi ke endpoint Django melalui HTTP POST request.
  - Menampilkan notifikasi atau pesan sukses setelah registrasi berhasil.

- #### ✅ Membuat halaman login pada proyek tugas Flutter.
  - Membuat halaman login dengan form untuk input username dan password.
  - Mengirim data login ke endpoint Django dan menerima respons autentikasi.
  - Menyimpan session atau token yang diterima untuk keperluan autentikasi selanjutnya.
- #### ✅ Mengintegrasikan sistem autentikasi Django dengan proyek tugas Flutter.
  - Menggunakan CookieRequest untuk menyimpan dan mengirim cookies/session.
  - Memastikan setiap request ke endpoint yang membutuhkan autentikasi menyertakan session yang valid.
  - Menangani kondisi logout dengan menghapus session atau token yang tersimpan.
- #### ✅ Membuat model kustom sesuai dengan proyek aplikasi Django.
  - Membuat model baru di Django sesuai dengan kebutuhan aplikasi.
  - Melakukan migrasi dan memastikan model terintegrasi dengan database.
  - Membuat endpoint JSON yang menyediakan data dari model tersebut.
- #### ✅ Membuat halaman yang berisi daftar semua item yang terdapat pada endpoint JSON di Django yang telah kamu deploy.
  - #### ✅  Tampilkan name, price, dan description dari masing-masing item pada halaman ini.
  - Mengambil data dari endpoint JSON menggunakan library http di Flutter.
  - Menampilkan daftar item dengan atribut name, price, description, dan attibut lainnya.
  - Mengimplementasikan desain yang responsif dan user-friendly.

- #### ✅ Membuat halaman detail untuk setiap item yang terdapat pada halaman daftar Item.
  - #### ✅ Halaman ini dapat diakses dengan menekan salah satu item pada halaman daftar Item.

  - #### ✅ Tampilkan seluruh atribut pada model item kamu pada halaman ini.

  - #### ✅ Tambahkan tombol untuk kembali ke halaman daftar item.

- Menambahkan navigasi ke halaman detail saat item diklik.
- Menampilkan seluruh atribut dari item yang dipilih dengan endpoint json yang telah dibuat.
- Menambahkan tombol kembali untuk kembali ke halaman daftar item.

- #### ✅ Melakukan filter pada halaman daftar item dengan hanya menampilkan item yang terasosiasi dengan pengguna yang login.
- Mengubah endpoint di Django untuk mengembalikan data yang telah difilter dengan pengguna yang sedang login.
- Menangani kondisi di mana pengguna belum login dengan tepat.

#### ✅ Menjawab beberapa pertanyaan berikut pada README.md pada root_folder.

#### 1️⃣ Jelaskan mengapa kita perlu membuat model untuk melakukan pengambilan ataupun pengiriman data JSON? Apakah akan terjadi error jika kita tidak membuat model terlebih dahulu? 
Membuat model dalam aplikasi web, seperti Django, membantu mempermudah pengelolaan data yang akan diambil atau dikirim dalam format JSON. Model berfungsi sebagai representasi struktur data di database, sehingga memungkinkan validasi, pemrosesan, dan integrasi yang lebih mudah antara data dan logika aplikasi. Adanya mode membuat pengembang dapat memastikan data memiliki format yang sesuai dan konsisten, serta mengurangi kemungkinan error seperti kesalahan tipe data atau atribut yang hilang. Meskipun tanpa model kita masih dapat mengirim dan menerima JSON menggunakan logika manual, hal ini sangat rentan menimbulkan error karena tidak ada validasi otomatis dan lebih sulit untuk dipelihara, terutama jika struktur data menjadi kompleks.

#### 2️⃣ Jelaskan fungsi dari library http yang sudah kamu implementasikan pada tugas ini
Library `http` di Django, seperti `HttpResponse` atau `JsonResponse`, berfungsi untuk mengelola respons HTTP yang dikirim dari server ke klien. Dalam tugas ini, `JsonResponse` digunakan untuk mengirim data dalam format JSON dari backend Django ke aplikasi Flutter. Fungsi utamanya adalah memformat data Python menjadi JSON yang dapat dengan mudah diproses oleh Flutter. Saya dapat mengatur respons HTTP dengan kode status, header, dan isi yang sesuai, memastikan data yang dikirim dapat diterima dan ditampilkan dengan benar di aplikasi pengguna.

#### 3️⃣ Jelaskan fungsi dari CookieRequest dan jelaskan mengapa instance CookieRequest perlu untuk dibagikan ke semua komponen di aplikasi Flutter.
CookieRequest digunakan untuk menyimpan dan mengelola cookies yang diperlukan untuk sesi autentikasi dengan server Django. Dengan membagikan instance CookieRequest ke semua komponen, ini memastikan bahwa setiap permintaan HTTP yang memerlukan autentikasi menyertakan cookies yang benar, sehingga pengguna tetap terautentikasi saat berinteraksi dengan berbagai bagian aplikasi.

#### 4️⃣ Jelaskan mekanisme pengiriman data mulai dari input hingga dapat ditampilkan pada Flutter.
Data diinput oleh pengguna melalui form di Flutter, kemudian dikirim ke server Django menggunakan HTTP request (misalnya POST untuk registrasi). Server memproses data tersebut, menyimpannya dalam database jika valid, dan mengirimkan respons kembali ke Flutter. Aplikasi Flutter kemudian menampilkan respons tersebut kepada pengguna atau memperbarui tampilan sesuai dengan data yang diterima.

#### 5️⃣ Jelaskan mekanisme autentikasi dari login, register, hingga logout. Mulai dari input data akun pada Flutter ke Django hingga selesainya proses autentikasi oleh Django dan tampilnya menu pada Flutter.
Saat pengguna mendaftar atau melakukan login melalui Flutter, data dikirim ke Django untuk diverifikasi. Jika berhasil, Django mengembalikan cookies sesi yang kemudian disimpan oleh Flutter menggunakan CookieRequest. Setiap kali Flutter melakukan request ke endpoint yang memerlukan autentikasi, cookies ini disertakan untuk memverifikasi sesi pengguna. Untuk logout, Flutter akan mengirim permintaan ke endpoint logout di Django dan menghapus cookies sesi yang tersimpan, sehingga sesi autentikasi diakhiri.

#### ✅ Jelaskan bagaimana cara kamu mengimplementasikan checklist-checklist di atas.

#### ✅  Melakukan add-commit-push ke GitHub.

</details>


---

# Tugas 8: Flutter Navigation, Layouts, Forms, and Input Elements

<details>
<summary>Click for more detail</summary>
<br>

## Deskripsi Tugas
Pada tugas ini, saya akan mengimplementasikan navigation, layout, form, dan form input elements pada aplikasi Flutter yang kamu buat pada tugas sebelumnya.

## Checklist Tugas
- #### ✅  Membuat minimal satu halaman baru pada aplikasi, yaitu halaman formulir tambah item baru dengan ketentuan sebagai berikut:

  - #### ✅ Memakai minimal tiga elemen input, yaitu name, amount, description. Tambahkan   elemen input sesuai dengan model pada aplikasi tugas Django yang telah kamu buat.
  - #### ✅ Memiliki sebuah tombol Save.
  - #### ✅ Setiap elemen input di formulir juga harus divalidasi dengan ketentuan sebagai berikut:
    - #### ✅ Setiap elemen input tidak boleh kosong.
    - #### ✅ Setiap elemen input harus berisi data dengan tipe data atribut modelnya.
Membuat folder screen pada lib yang akan menyimpan file catentry_form dan left_drawer:
membuat class CatEntryFormPage dan _CatEntryFormPageState.
Pada CatEntryFormPage, build widget yang berisi body berupa Form widget dengan 5 child padding yaitu nama, jumlah, harga, spesies, dan warna sesuai dengan attribut yang sudah ditetapkan. Menambahkan juga validasi dimana setiap input tidak boleh kosong dengan if statement
membuat tombol save.
- #### ✅ Mengarahkan pengguna ke halaman form tambah item baru ketika menekan tombol Tambah Item pada halaman utama.
pada cat_cart.dart ketika nama item yang ditekan adalah `Tambah produk` maka panggil Navigator.push yang akan mengarahkan ke CatEntryFormPage.

- #### ✅ Memunculkan data sesuai isi dari formulir yang diisi dalam sebuah pop-up setelah menekan tombol Save pada halaman formulir tambah item baru.
membuat tombol save dengan elevated button yang saat ditekan membuat isi dari onPressed yang berisi data-data yang baru saja dimasukkan dengan menggunakan dialog. Seperti berikut:
```c++
child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                          Theme.of(context).colorScheme.primary),
                    ),
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title: const Text('Kucing berhasil tersimpan'),
                              content: SingleChildScrollView(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Nama: $_name'),
                                    Text('Harga: $_price'),
                                    Text('Deskripsi: $_description'),
                                    Text('spesies: $_species'),
                                    Text('warna: $_color'),
                                  ],
                                ),
                              ),
                              actions: [
                                TextButton(
                                  child: const Text('OK'),
                                  onPressed: () {
                                    Navigator.pop(context);
                                    _formKey.currentState!.reset();
                                  },
                                ),
                              ],
                            );
                          },
                        );
                      }
                    },
                    child: const Text(
                      "Save",
                      style: TextStyle(color: Colors.white),
                    ),
```

- #### ✅ Membuat sebuah drawer pada aplikasi dengan ketentuan sebagai berikut:
    - #### ✅ Drawer minimal memiliki dua buah opsi, yaitu Halaman Utama dan Tambah Item.
    - #### ✅ Ketika memiih opsi Halaman Utama, maka aplikasi akan mengarahkan pengguna ke halaman utama.
    - #### ✅ Ketika memiih opsi Tambah Item, maka aplikasi akan mengarahkan pengguna ke halaman form tambah item baru.

Membuat folder widgets yang akan berisi left_drawer.dart dan juga catentry_form.dart
pada file tersebut akan dibuat class yang build widget dengan mereturn widget Drawer.
pada Drawer akan memiliki children ListTile jika di tekan akan `Navigator.pushReplacement` ke laman yang dituju.

#### ✅ Menjawab beberapa pertanyaan berikut pada README.md pada root_folder.

#### 1️⃣ Apa kegunaan const di Flutter? Jelaskan apa keuntungan ketika menggunakan const pada kode Flutter. Kapan sebaiknya kita menggunakan const, dan kapan sebaiknya tidak digunakan?

const di Flutter digunakan untuk mendefinisikan nilai konstan yang tidak akan berubah selama runtime.

Keuntungan menggunakan const pada kode Flutter salah satunya adalah
efisiensi Memori. Objek const hanya dibuat sekali dan dibagikan di seluruh aplikasi, mengurangi penggunaan memori.
Kinerja, Menggunakan const dapat meningkatkan kinerja karena objek const diinisialisasi pada waktu kompilasi, bukan pada waktu runtime.
Keamanan, Membantu mencegah perubahan yang tidak disengaja pada nilai yang seharusnya tetap konstan.

const sebaiknya digunakan saat nilai tidak akan berubah selama runtime.
Untuk widget yang tidak berubah (immutable) untuk meningkatkan efisiensi rendering

Kapan sebaiknya tidak menggunakan const? const sebaiknya tidak digunakan
saat nilai perlu berubah selama runtime.
Untuk objek yang memerlukan inisialisasi dinamis atau bergantung pada input runtime.


#### 2️⃣ Jelaskan dan bandingkan penggunaan Column dan Row pada Flutter. Berikan contoh implementasi dari masing-masing layout widget ini!

Column dan Row adalah dua widget layout dasar di Flutter yang digunakan untuk mengatur widget anak dalam arah vertikal dan horizontal.

Column mengatur widget anak dalam arah vertikal (dari atas ke bawah).

``` c++
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Column Example')),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            Text('Item 1'),
            Text('Item 2'),
            Text('Item 3'),
          ],
        ),
      ),
    );
  }
}
```
Row mengatur widget anak dalam arah horizontal (dari kiri ke kanan).

``` c++
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Row Example')),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            Text('Item 1'),
            Text('Item 2'),
            Text('Item 3'),
          ],
        ),
      ),
    );
  }
}
```

#### 3️⃣ Sebutkan apa saja elemen input yang kamu gunakan pada halaman form yang kamu buat pada tugas kali ini. Apakah terdapat elemen input Flutter lain yang tidak kamu gunakan pada tugas ini? Jelaskan!

Pada halaman form yang dibuat, elemen input yang digunakan adalah 
TextFormField Untuk input teks seperti nama, deskripsi, spesies, dan warna. 

ada beberapa elemen input yang tidak saya gunakan diantaranyy adalah Checkbox, Radio, Switch, Slider, Dropdown button, Date Picker, dll

#### 4️⃣ Bagaimana cara kamu mengatur tema (theme) dalam aplikasi Flutter agar aplikasi yang dibuat konsisten? Apakah kamu mengimplementasikan tema pada aplikasi yang kamu buat?

Tema aplikasi diatur menggunakan ThemeData untuk memberikan konsistensi warna dan gaya di seluruh tampilan. Tema ini menggunakan skema warna berbasis Material Design 3 `(useMaterial3: true)` dengan primarySwatch berwarna abu-abu dan warna aksen hijau `(secondary: Colors.green[400])`. Dengan pengaturan ini, komponen seperti AppBar, tombol, dan teks akan mengikuti palet warna yang seragam, memberikan pengalaman pengguna yang selaras.

#### 5️⃣ Bagaimana cara kamu menangani navigasi dalam aplikasi dengan banyak halaman pada Flutter?
navigasi diatur melalui widget LeftDrawer, yang berfungsi sebagai menu samping. LeftDrawer berisi beberapa item menu yang memungkinkan pengguna untuk berpindah halaman dengan cepat, seperti menuju halaman utama (MyHomePage) atau ke halaman formulir untuk menambahkan entri kucing (CatEntryFormPage). Header pada drawer ini menggunakan skema warna dari ThemeData aplikasi dan menampilkan nama aplikasi serta deskripsi singkat, sehingga tampilannya tetap konsisten dengan tema utama aplikasi.

Setiap item menu dalam drawer menggunakan Navigator.pushReplacement, yang mengganti halaman saat ini dengan halaman tujuan tanpa menumpuk halaman sebelumnya di dalam stack navigasi. Hal ini memastikan navigasi tetap efisien dan mengizinkan pengguna kembali ke halaman sebelumnya dengan menekan tombol kembali.

#### ✅ Jelaskan bagaimana cara kamu mengimplementasikan checklist-checklist di atas.

#### ✅  Melakukan add-commit-push ke GitHub.

</details>


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
