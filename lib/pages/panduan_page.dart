import 'package:flutter/material.dart';
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
                    if (value == 'explore') {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ExplorePage()),
                      );
                    } else if (value == 'permintaan') {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const PermintaanSaksiPage()),
                      );
                    } else if (value == 'pengaturan') {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const PengaturanAkunPage()),
                      );
                    }
                  },
                  itemBuilder: (context) => [
                    const PopupMenuItem(
                        value: 'explore', child: Text('Explore Siswa')),
                    const PopupMenuItem(
                        value: 'permintaan', child: Text('Permintaan Saksi')),
                    const PopupMenuItem(
                        value: 'pengaturan', child: Text('Pengaturan Akun')),
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
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const Text(
            "Panduan Pengguna",
            style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          const Text(
            "Pelajari cara menggunakan fitur-fitur utama di aplikasi Jurnalku dengan mudah.",
            style: TextStyle(color: Colors.black54),
          ),
          const SizedBox(height: 25),
          _buildCard(
            title: "1. Melihat Direktori Siswa",
            content:
                "Masuk ke menu Explore untuk melihat daftar siswa SMK Wikrama Bogor, termasuk informasi portofolio dan sertifikat mereka.",
          ),
          _buildCard(
            title: "2. Permintaan Saksi",
            content:
                "Bagian ini menampilkan permintaan saksi dari siswa lain. Anda dapat menerima atau menolak sesuai kebutuhan.",
          ),
          _buildCard(
            title: "3. Mengatur Profil & Akun",
            content:
                "Di menu Pengaturan Akun, Anda dapat melihat data pribadi dan mengganti kata sandi dengan mudah.",
          ),
          const SizedBox(height: 20),
          const Center(
            child: Text(
              "Terakhir diperbarui: November 2025",
              style: TextStyle(color: Colors.grey),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildCard({required String title, required String content}) {
    return Container(
      margin: const EdgeInsets.only(bottom: 14),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
              color: Colors.black.withOpacity(0.05),
              blurRadius: 6,
              offset: const Offset(0, 2))
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title,
              style:
                  const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          const SizedBox(height: 6),
          Text(content, style: const TextStyle(color: Colors.black87)),
        ],
      ),
    );
  }
}
