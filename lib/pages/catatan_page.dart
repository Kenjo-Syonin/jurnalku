import 'package:flutter/material.dart';
// import 'catatan_page.dart';
import 'dashboard_page.dart';
import 'explore_page.dart';
import 'jurnal_page.dart';
import 'package:jurnalku/pages/login_page.dart';
import 'panduan_page.dart';
import 'pengaturan_akun.dart';
import 'permintaan_saksi.dart';
import 'profil_page.dart';
import 'progres_page.dart';
class CatatanPage extends StatelessWidget {
  const CatatanPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      // ===================== APPBAR =====================
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            const Icon(Icons.home_outlined, size: 24, color: Colors.black87),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                
                children: const [
                  Text(
                    "Muhamad Rizqi Fadillah",
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    "PPLG XII-4",
                    style: TextStyle(
                      color: Colors.black54,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
            PopupMenuButton<String>(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    onSelected: (value) {
                      // if(value == 'catatan') {
                      //   Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //       builder: (context) => const CatatanPage(),
                      //     ),
                      //   );
                      // } 
                      // else 
                      if (value == 'dashboard') {
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
            child: CircleAvatar(
              backgroundColor: Colors.grey,
              child: Icon(Icons.person, size: 24, color: Colors.white),
            ),
            ),
          ],
        ),
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            // Judul
            const Text(
              "Catatan Sikap Saya",
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.w700,
                color: Color(0xFF0B0B0B),
              ),
            ),
            const SizedBox(height: 6),

            const Text(
              "Lihat catatan sikap dan perilaku yang telah dilaporkan",
              style: TextStyle(
                fontSize: 14,
                color: Colors.black54,
              ),
            ),
            const SizedBox(height: 20),

            // ===================== KOTAK PERINGATAN =====================
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: const Color(0xFFFFF8E6),
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: const Color(0xFFFFE3A5)),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Icon(Icons.warning_amber_rounded,
                      color: Colors.orange, size: 28),
                  SizedBox(width: 12),
                  Expanded(
                    child: Text(
                      "Perhatian\nJika Anda merasa ada catatan yang tidak sesuai atau keliru, silakan hubungi guru jurusan untuk mengajukan klarifikasi.",
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.black87,
                        height: 1.4,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),

            // ===================== CONTAINER 1 =====================
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(14),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12.withOpacity(0.05),
                    blurRadius: 6,
                    offset: const Offset(0, 3),
                  )
                ],
                border: Border.all(color: Colors.black12.withOpacity(0.05)),
              ),
              child: Row(
                children: [
                  // Text
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Total Catatan",
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.black54,
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          "0",
                          style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ),

                  // Icon
                  Container(
                    width: 42,
                    height: 42,
                    decoration: BoxDecoration(
                      color: Color(0xFFE1ECFF),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: const Icon(
                      Icons.receipt_long_rounded,
                      color: Colors.black54,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 12),

            // ===================== CONTAINER 2 =====================
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(14),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12.withOpacity(0.05),
                    blurRadius: 6,
                    offset: const Offset(0, 3),
                  )
                ],
                border: Border.all(color: Colors.black12.withOpacity(0.05)),
              ),
              child: Row(
                children: [
                  // Text
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Dalam Perbaikan",
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.black54,
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          "0",
                          style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ),

                  // Icon
                  Container(
                    width: 42,
                    height: 42,
                    decoration: BoxDecoration(
                      color: Color(0xFFFFF2C2),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: const Icon(
                      Icons.bolt_rounded,
                      color: Colors.black54,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 12),

            // ===================== CONTAINER 3 =====================
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(14),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12.withOpacity(0.05),
                    blurRadius: 6,
                    offset: const Offset(0, 3),
                  )
                ],
                border: Border.all(color: Colors.black12.withOpacity(0.05)),
              ),
              child: Row(
                children: [
                  // Text
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Sudah Berubah",
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.black54,
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          "0",
                          style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ),

                  // Icon
                  Container(
                    width: 42,
                    height: 42,
                    decoration: BoxDecoration(
                      color: Color(0xFFD6F8D9),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: const Icon(
                      Icons.check_circle_rounded,
                      color: Colors.black54,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 12),
            ExpansionTile(
              title: Text("Detail Catatan Sikap"),
              childrenPadding: EdgeInsets.all(16.0),
              children: [
                tampilData("Catatan Positif", "0"),
                tampilData("Catatan Negatif", "0"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

Widget tampilData(String labelData, String value) {
  return Padding(
    padding: const EdgeInsets.all(10),
    child: Row(
      children: [
        SizedBox(width: 200, child: Text(labelData)),
        Expanded(child: Text(value)),
      ],
    ),
  );
}