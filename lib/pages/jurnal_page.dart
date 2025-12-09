import 'package:flutter/material.dart';
import 'catatan_page.dart';
import 'dashboard_page.dart';
import 'explore_page.dart';
// import 'jurnal_page.dart';
import 'package:jurnalku/pages/login_page.dart';
import 'panduan_page.dart';
import 'pengaturan_akun.dart';
import 'permintaan_saksi.dart';
import 'profil_page.dart';
import 'progres_page.dart';
class JurnalPage extends StatelessWidget {
  const JurnalPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        automaticallyImplyLeading: false,
        surfaceTintColor: Colors.transparent,
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 15),
            child: Row(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                          "Muhamad Rizqi Fadillah",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text("PPLG XII-4", style: TextStyle(fontSize: 12)),
                  ],
                ),
                PopupMenuButton<String>(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    onSelected: (value) {
                      if(value == 'catatan') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const CatatanPage(),
                          ),
                        );
                      } 
                      else if (value == 'dashboard') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Dashboard_Page(),
                          ),
                        );
                      }
                      else if(value == 'explore') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ExplorePage(),
                          ),
                        );
                      } 
                      // else if(value == 'jurnal') {
                      //   Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //       builder: (context) => const JurnalPage(),
                      //     ),
                      //   );
                      // }
                      else if (value == 'logout') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (_) => const LoginPage()),
                        );
                      }
                      else if (value == 'panduan') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const PanduanPenggunaPage(),
                          ),
                        );
                      } 
                      else if (value == 'pengaturan') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const PengaturanAkunPage(),
                          ),
                        );
                      } 
                      else if (value == 'permintaan') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const PermintaanSaksiPage(),
                          ),
                        );
                      } 
                      else if(value == 'profil') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ProfilPage(),
                          ),
                        );
                      }
                      else if (value == 'progres') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ProgressBelajarPage(),
                          ),
                        );
                      }
                      
                    },
                    itemBuilder: (context) => const [
                      PopupMenuItem(
                        value: 'dashboard',
                        child: Text('Dashboard'),
                      ),
                      PopupMenuItem(
                        value: 'profil', 
                        child: Text('Profil')
                      ),
                      PopupMenuItem(
                          value: 'explore', 
                          child: Text('Explore Siswa')
                      ),
                      PopupMenuItem(
                        value: 'jurnal',
                        child: Text('Jurnal Pembiasaan'),
                      ),
                      PopupMenuItem(
                        value: 'permintaan',
                        child: Text('Permintaan Saksi'),
                      ),
                      PopupMenuItem(
                        value: 'progres',
                        child: Text('Progres Belajar'),
                      ),
                      PopupMenuItem(
                        value: 'catatan',
                        child: Text('Catatan Sikap'),
                      ),
                      PopupMenuItem(
                        value: 'panduan',
                        child: Text('Panduan Pengguna'),
                      ),
                      PopupMenuItem(
                        value: 'pengaturan',
                        child: Text('Pengaturan Akun'),
                      ),
                      PopupMenuItem(value: 'logout', child: Text('Keluar')),
                    ],
                    child: const CircleAvatar(
                      radius: 20,
                      backgroundColor: Colors.grey,
                      child: Icon(Icons.person, color: Colors.white),
                    ),
                  ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    
                  ],
                ),
                SizedBox(width: 8),
              ],
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Jurnal Pembiasaan",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const Text("NOVEMBER - 2025", style: TextStyle(fontSize: 16)),
            const SizedBox(height: 15),
            Row(
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue[900],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  onPressed: () {},
                  child: const Text(
                    "← Bulan Sebelumnya",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 25),
            const Text(
              "A. Pembiasaan harian",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),
            const Row(
              children: [
                CircleAvatar(radius: 6, backgroundColor: Colors.green),
                SizedBox(width: 2),
                Text("Sudah diisi"),
                SizedBox(width: 28),
                CircleAvatar(radius: 6, backgroundColor: Colors.grey),
                SizedBox(width: 2),
                Text("Belum diisi"),
                SizedBox(width: 28),
                CircleAvatar(radius: 6, backgroundColor: Colors.red),
                SizedBox(width: 2),
                Text("Tidak diisi"),
              ],
            ),

            const SizedBox(height: 15),
            Wrap(
              spacing: 10,
              runSpacing: 10,
              children: List.generate(30, (i) {
                return Container(
                  width: 100,
                  height: 35,
                  decoration: BoxDecoration(color: Colors.grey[300]),
                  child: Stack(
                    children: [
                      Center(
                        child: Text(
                          (i + 1).toString().padLeft(2, '0'),
                          style: const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              }),
            ),
            const SizedBox(height: 30),
            const Text(
              "B. Pekerjaan yang dilakukan",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            ExpansionTile(
              title: const Text(
                "Riwayat Pekerjaan",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              children: [
                Container(
                  width: double.infinity,
                  margin: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 8,
                  ),
                  padding: const EdgeInsets.all(14),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey, width: 0.6),
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Belum ada pekerjaan yang diinput.",
                        style: TextStyle(
                          fontStyle: FontStyle.italic,
                          color: Colors.black87,
                        ),
                      ),

                      SizedBox(height: 12),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [Text("Tgl: -"), Text("Saksi: -")],
                      ),
                    ],
                  ),
                ),
              ],
            ),

            const SizedBox(height: 6),

            GestureDetector(
              onTap: () {},
              child: const Text(
                "+ Tambah Pekerjaan",
                style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),

            const SizedBox(height: 30),
            const Text(
              "C. Materi yang dipelajari",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            ExpansionTile(
              title: const Text(
                "Materi",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              children: [
                Container(
                  width: double.infinity,
                  margin: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 8,
                  ),
                  padding: const EdgeInsets.all(14),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey, width: 0.6),
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Judul bar
                      Text(
                        "Daftar Materi",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black87,
                        ),
                      ),

                      SizedBox(height: 8),

                      // Isi saat kosong
                      Text(
                        "Belum ada materi yang diinput.",
                        style: TextStyle(
                          fontStyle: FontStyle.italic,
                          color: Colors.black87,
                        ),
                      ),

                      SizedBox(height: 16),

                      // Row bawah (Sts - Tgl)
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [Text("Sts: -"), Text("Tgl: -")],
                      ),
                    ],
                  ),
                ),
              ],
            ),

            const SizedBox(height: 6),

            GestureDetector(
              onTap: () {},
              child: const Text(
                "+ Tambah Materi",
                style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            const SizedBox(height: 30),
            const Row(
              children: [
                CircleAvatar(radius: 6, backgroundColor: Colors.green),
                SizedBox(width: 6),
                Text("A : Approved   "),
                SizedBox(width: 18),
                CircleAvatar(radius: 6, backgroundColor: Colors.orange),
                SizedBox(width: 6),
                Text("P : Pending   "),
                SizedBox(width: 18),
                CircleAvatar(radius: 6, backgroundColor: Colors.red),
                SizedBox(width: 6),
                Text("R : Revisi"),
              ],
            ),
            const SizedBox(height: 25),
            const Text(
              "D. Poin",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            ExpansionTile(
  title: const Text(
    "Rekap Poin",
    style: TextStyle(fontWeight: FontWeight.bold),
  ),
  children: [
    Container(
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.grey.shade300, width: 0.8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          // 🔹 Header
          const Text(
            "Kategori Poin",
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),

          // 🔹 Summary Card M1–M4
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 245, 245, 245),
              borderRadius: BorderRadius.circular(6),
              border: Border.all(color: Colors.grey.shade300, width: 0.6),
            ),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Jumlah Poin",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 12),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("M1: 0"),
                    Text("M2: 0"),
                    Text("M3: 0"),
                    Text("M4: 0"),
                  ],
                ),
              ],
            ),
          ),

          const SizedBox(height: 20),

          // 🔹 Detail 1
          const Text(
            "(5) mengerjakan project / update progress belajar",
            style: TextStyle(fontWeight: FontWeight.w500),
          ),
          const SizedBox(height: 8),

          _PointRow(m1: "0", m2: "0", m3: "0", m4: "0"),

          const SizedBox(height: 18),

          // 🔹 Detail 2
          const Text(
            "(1 - 5) poin dari pertanyaan atau laporan pengetahuan materi",
            style: TextStyle(fontWeight: FontWeight.w500),
          ),
          const SizedBox(height: 8),

          _PointRow(m1: "0", m2: "0", m3: "0", m4: "0"),

          const SizedBox(height: 20),

          // 🔹 Jumlah Poin Minggu Ini
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 245, 245, 245),
              borderRadius: BorderRadius.circular(6),
              border: Border.all(color: Colors.grey.shade300, width: 0.6),
            ),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Jumlah poin minggu ini",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 12),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("M1: 0"),
                    Text("M2: 0"),
                    Text("M3: 0"),
                    Text("M4: 0"),
                  ],
                ),
              ],
            ),
          ),

          const SizedBox(height: 18),

          // 🔹 Jumlah Poin Ceklist
          const Text(
            "Jumlah poin ceklist pembiasaan",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          const Text(
            "M2: 19",
            style: TextStyle(
              color: Colors.black87,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 20),

          // 🔹 Total Keseluruhan
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 245, 245, 245),
              borderRadius: BorderRadius.circular(6),
              border: Border.all(color: Colors.grey.shade300, width: 0.6),
            ),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Jumlah keseluruhan poin",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                Text(
                  "19",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    ),
  ],
),
          ],
        ),
      ),
    );
  }
}

class _PointRow extends StatelessWidget {
  final String m1, m2, m3, m4;

  const _PointRow({
    super.key,
    required this.m1,
    required this.m2,
    required this.m3,
    required this.m4,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("M1: $m1"),
        Text("M2: $m2"),
        Text("M3: $m3"),
        Text("M4: $m4"),
      ],
    );
  }
}
