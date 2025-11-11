import 'package:flutter/material.dart';

class PanduanPage extends StatelessWidget {
  const PanduanPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.grey[100],
        title: const Icon(Icons.home),
        surfaceTintColor: Colors.transparent,
        actions: [
          Row(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const Text(
                    "Muhamad Rizqi Fadillah",
                    style: TextStyle(fontSize: 14, color: Colors.black),
                  ),
                  Text(
                    "PPLG XII-4",
                    style: TextStyle(fontSize: 12, color: Colors.grey[500]),
                  ),
                ],
              ),
              const SizedBox(width: 10),
              const CircleAvatar(radius: 25),
            ],
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(Icons.menu_book_rounded, size: 28, color: Colors.blue[900]),
                const SizedBox(width: 8),
                Text(
                  "Panduan Penggunaan",
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold, color: Colors.blue[900]),
                ),
              ],
            ),
            const SizedBox(height: 15),
            Text(
              "Selamat datang di panduan penggunaan aplikasi Jurnalku. Panduan ini akan membantu Anda memahami cara menggunakan fitur-fitur yang tersedia dengan optimal.",
              style: TextStyle(fontSize: 18, color: Colors.grey[500]),
            ),
            const SizedBox(height: 25),
            buildSectionTitle("Umum"),
            buildPanduanTile("Unggah Profile", "Panduan untuk mengunggah profile pengguna", Icons.menu_book_rounded),
            buildPanduanTile("Ganti Password", "Panduan untuk mengganti Password pengguna", Icons.menu_book_rounded),
            const SizedBox(height: 30),
            buildSectionTitle("Untuk Siswa"),
            buildPanduanTile("Mengisi Jurnal", "Panduan untuk mengisi kegiatan sehari - hari", Icons.menu_book_rounded),
            buildPanduanTile("Kelengkapan Profile", "Panduan untuk melengkapi profile", Icons.menu_book_rounded),
            buildPanduanTile("Mengelola Portofolio", "Panduan untuk menambah, edit, dan hapus portfolio", Icons.image),
            buildPanduanTile("Mengelola Sertifikat", "Panduan untuk menambah, edit, dan hapus sertifikat", Icons.check),
            buildPanduanTile("Catatan Sikap Saya", "Panduan untuk melihat dan memahami catatan sikap", Icons.info),
          ],
        ),
      ),
    );
  }

  // --- Widget bantu biar rapi ---
  Widget buildSectionTitle(String title) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black)),
        const SizedBox(height: 5),
        Divider(thickness: 1, color: Colors.grey[300]),
        const SizedBox(height: 10),
      ],
    );
  }

  Widget buildPanduanTile(String title, String subtitle, IconData icon) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(bottom: 15),
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: ListTile(
        leading: Icon(icon, size: 28, color: Colors.blue[900]),
        title: Text(title,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black)),
        subtitle: Text(subtitle, style: TextStyle(fontSize: 14, color: Colors.grey[500])),
      ),
    );
  }
}
