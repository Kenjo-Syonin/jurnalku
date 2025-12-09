import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'catatan_page.dart';
import 'dashboard_page.dart';
import 'explore_page.dart';
import 'jurnal_page.dart';
import 'package:jurnalku/pages/login_page.dart';
import 'panduan_page.dart';
import 'pengaturan_akun.dart';
// import 'permintaan_saksi.dart';
import 'profil_page.dart';
import 'progres_page.dart';

class PermintaanSaksiPage extends StatelessWidget {
  const PermintaanSaksiPage({super.key});

  @override
  Widget build(BuildContext context) {
    final String today = DateFormat("EEEE, dd MMMM yyyy", "id_ID").format(DateTime.now());

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        elevation: 0.5,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "Jurnalku",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const Text("Kenjo Syonin", style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.black)),
                    Text("PPLG XII-4", style: TextStyle(fontSize: 12, color: Colors.grey[600])),
                  ],
                ),
                const SizedBox(width: 8),
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
                      else if(value == 'jurnal') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const JurnalPage(),
                          ),
                        );
                      }
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
                      // else if (value == 'permintaan') {
                      //   Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //       builder: (context) => const PermintaanSaksiPage(),
                      //     ),
                      //   );
                      // } 
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
                    )
                ),
              ],
            ),
          ],
        ),
      ),
      body: Padding(
  padding: const EdgeInsets.all(20),
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      const Text("Permintaan Saksi",
          style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
      const SizedBox(height: 6),
      const Text("Kelola permintaan menjadi saksi dari siswa lain",
          style: TextStyle(fontSize: 16, color: Colors.black54)),
      const SizedBox(height: 20),

      // Tanggal Hari Ini
      Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        decoration: BoxDecoration(
            color: Colors.blue[50], borderRadius: BorderRadius.circular(8)),
        child: Text(today,
            style:
                const TextStyle(color: Colors.blue, fontWeight: FontWeight.w600)),
      ),

      const SizedBox(height: 25),
      const Text("Daftar Permintaan:",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
      const SizedBox(height: 10),

      Expanded(
        child: Container(
          padding: const EdgeInsets.all(8),
          // Jika datanya kosong
          child: ListView(
            children: [
              // Jika belum ada permintaan
              ExpansionTile(
                initiallyExpanded: true,
                title: const Text(
                  "Belum ada permintaan",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.grey),
                ),
                children: const [
                  Padding(
                    padding: EdgeInsets.all(16),
                    child: Column(
                      children: [
                        Icon(Icons.groups_outlined, color: Colors.grey, size: 50),
                        SizedBox(height: 10),
                        Text("Belum ada permintaan saksi",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.black)),
                        SizedBox(height: 4),
                        Text("Tidak ada siswa yang mengirim permintaan kepada Anda.",
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.grey)),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    ],
  ),
),

    );
  }
}
