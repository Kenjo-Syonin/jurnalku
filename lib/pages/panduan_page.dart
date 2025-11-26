import 'package:flutter/material.dart';
import 'profil_page.dart';
import 'explore_page.dart';
import 'permintaan_saksi.dart';
import 'pengaturan_akun.dart';

class PanduanPenggunaPage extends StatelessWidget {
  const PanduanPenggunaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.5,
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "Jurnalku",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: const [
                    Text("Rizqi Fadillah",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Colors.black)),
                    Text("PPLG XII-4",
                        style: TextStyle(fontSize: 12, color: Colors.grey)),
                  ],
                ),
                const SizedBox(width: 10),
                PopupMenuButton<String>(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    onSelected: (value) {
                      if (value == 'profil') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ProfilPage(),
                          ),
                        );
                      } else if (value == "explore") {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => const ExplorePage(),
                          ),
                        );
                      } else if (value == 'permintaan') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const PermintaanSaksiPage(),
                          ),
                        );
                      } else if (value == 'panduan') {
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //     builder: (context) => const PanduanPenggunaPage(),
                        //   ),
                        // );
                      } else if (value == 'pengaturan') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const PengaturanAkunPage(),
                          ),
                        );
                      }
                  },
                  itemBuilder: (context) => const [
                      PopupMenuItem(value: 'profil', child: Text('Profil')),
                      PopupMenuItem(value: 'explore', child: Text('Explore')),
                      PopupMenuItem(value: 'permintaan',child: Text('Permintaan Saksi'),),
                      PopupMenuItem(value: 'panduan',child: Text('Panduan Pengguna'),),
                      PopupMenuItem(value: 'pengaturan',child: Text('Pengaturan Akun'),),
                    ],
                  child: const CircleAvatar(
                    radius: 20,
                    backgroundColor: Colors.grey,
                    child: Icon(Icons.person, color: Colors.white),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(Icons.menu_book_rounded, size: 28, color: Colors.blue[900]),
                SizedBox(width: 8),
                Text("Panduan Penggunaan",
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.blue[900])),
              ],
            ),
            SizedBox(height: 15),
            Text("Selamat datang di panduan penggunaan aplikasi Jurnalku. Panduan ini akan membantu Anda memahami cara menggunakan fitur-fitur yang tersedia dengan optimal.", style: TextStyle(fontSize: 16, color: Colors.grey[500])),
            SizedBox(height: 25),
            Text("Umum", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black)),
            SizedBox(height: 5),
            Divider(thickness: 1, color: Colors.grey[300]),
            SizedBox(height: 10),
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: ListTile(
                leading: Icon(Icons.menu_book_rounded, size: 28, color: Colors.blue[900]),
                title: Text("Unggah Profile", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black)),
                subtitle: Text("Panduan untuk mengunggah profile pengguna", style: TextStyle(fontSize: 14, color: Colors.grey[500])),),
            ),
            SizedBox(height: 15),
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: ListTile(
                leading: Icon(Icons.menu_book_rounded, size: 28, color: Colors.blue[900]),
                title: Text("Ganti Password", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black)),
                subtitle: Text("Panduan untuk mengganti Password pengguna", style: TextStyle(fontSize: 14, color: Colors.grey[500])),),
            ),
            SizedBox(height: 30),
            Text("Untuk Siswa", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black)),
            SizedBox(height: 5),
            Divider(thickness: 1, color: Colors.grey[300]),
            SizedBox(height: 10),
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: ListTile(
                leading: Icon(Icons.menu_book_rounded, size: 28, color: Colors.blue[900]),
                title: Text("Mengisi Jurnal", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black)),
                subtitle: Text("Panduan untuk mengisi kegiatan sehari - hari", style: TextStyle(fontSize: 14, color: Colors.grey[500])),),
            ),
            SizedBox(height: 15),
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: ListTile(
                leading: Icon(Icons.menu_book_rounded, size: 28, color: Colors.blue[900]),
                title: Text("Kelengkapan Profile", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black)),
                subtitle: Text("Panduan untuk melengkapi profile", style: TextStyle(fontSize: 14, color: Colors.grey[500])),),
            ),
            SizedBox(height: 15),
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: ListTile(
                leading: Icon(Icons.image, size: 28, color: Colors.blue[900]),
                title: Text("Mengelola Portofolio", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black)),
                subtitle: Text("Panduan untuk menambah, edit, dan hapus portfolio", style: TextStyle(fontSize: 14, color: Colors.grey[500])),),
            ),
            SizedBox(height: 15),
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: ListTile(
                leading: Icon(Icons.check, size: 28, color: Colors.blue[900]),
                title: Text("Mengelola Sertifikat", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black)),
                subtitle: Text("Panduan untuk menambah, edit, dan hapus sertifikat", style: TextStyle(fontSize: 14, color: Colors.grey[500])),),
            ),
            SizedBox(height: 15),
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: ListTile(
                leading: Icon(Icons.info, size: 28, color: Colors.blue[900]),
                title: Text("Catatan Sikap Saya", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black)),
                subtitle: Text("Panduan untuk melihat dan memahami catatan sikap", style: TextStyle(fontSize: 14, color: Colors.grey[500])),),
            ),
          ],
        ),
      ),
    );
  }
}