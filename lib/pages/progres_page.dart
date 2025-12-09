import 'package:flutter/material.dart';
import 'catatan_page.dart';
import 'dashboard_page.dart';
import 'explore_page.dart';
import 'jurnal_page.dart';
import 'package:jurnalku/pages/login_page.dart';
import 'panduan_page.dart';
import 'pengaturan_akun.dart';
import 'permintaan_saksi.dart';
import 'profil_page.dart';
// import 'progres_page.dart';

class ProgressBelajarPage extends StatelessWidget {
  const ProgressBelajarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        iconTheme: const IconThemeData(color: Colors.black),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                      "Muhamad Rizqi Fadillah",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "PPLG XII-4",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 12,
                      ),
                    ),
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
                      // else if (value == 'progres') {
                      //   Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //       builder: (context) => const ProgressBelajarPage(),
                      //     ),
                      //   );
                      // }
                      
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
          ],
        ),
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 10),

            const Text(
              "Progress Belajar",
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.w800,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 5),

            const Text(
              "Pantau perkembangan kompetensi dan materi pembelajaran Anda",
              style: TextStyle(
                fontSize: 14,
                color: Colors.black54,
              ),
            ),

            const SizedBox(height: 20),

            Container(
              padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
              decoration: BoxDecoration(
                color: const Color(0xffe5f0ff),
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Text(
                "Monday, 24 November 2025",
                style: TextStyle(
                  color: Color(0xff1a73e8),
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),

            const SizedBox(height: 20),

           Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 18),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.black.withOpacity(0.08)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.05),
                    blurRadius: 10,
                    offset: const Offset(0, 3),
                  )
                ],
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // LEFT SIDE TEXT
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Total Pengajuan",
                        style : TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(height: 6),

                      const Text(
                        "2",
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),

                      const SizedBox(height: 6),

                      Row(
                        children: const [
                          Icon(Icons.circle,
                              size: 10, color: Colors.blue),
                          SizedBox(width: 6),
                          Text(
                            "Semua status",
                            style: TextStyle(
                              color: Colors.blue,
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),

                  const Spacer(),

                  // CHECK ICON
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: const BoxDecoration(
                      color: Color(0xffe5f1ff),
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.check_circle,
                      color: Color(0xff1a73e8),
                      size: 28,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),

           Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 18),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.black.withOpacity(0.08)),
                
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // LEFT SIDE TEXT
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Halaman Ini",
                        style : TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(height: 6),

                      const Text(
                        "0",
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),

                      const SizedBox(height: 6),

                      Row(
                        children: const [
                          Icon(Icons.circle,
                              size: 10, color: Colors.green),
                          SizedBox(width: 6),
                          Text(
                            "Data ditampilkan",
                            style: TextStyle(
                              color: Colors.green,
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),

                  const Spacer(),

                  // CHECK ICON
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: const BoxDecoration(
                      color: Color(0xffe6f7ee),
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.date_range,
                      color: Colors.green,
                      size: 28,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            
           Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 18),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.black.withOpacity(0.08)),
                
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // LEFT SIDE TEXT
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Status Pending",
                        style : TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(height: 6),

                      const Text(
                        "0",
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),

                      const SizedBox(height: 6),

                      Row(
                        children: const [
                          Icon(Icons.circle,
                              size: 10, color: Colors.orange),
                          SizedBox(width: 6),
                          Text(
                            "Perlu Validasi",
                            style: TextStyle(
                              color: Colors.orange,
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),

                  const Spacer(),

                  // CHECK ICON
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: const BoxDecoration(
                      color: Color(0xfffff4e5),
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.access_time,
                      color: Colors.orange,
                      size: 28,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),

           Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 18),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.black.withOpacity(0.08)),
                
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // LEFT SIDE TEXT
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Total Halaman",
                        style : TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(height: 6),

                      const Text(
                        "1",
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),

                      const SizedBox(height: 6),

                      Row(
                        children: const [
                          Icon(Icons.circle,
                              size: 10, color: Colors.purple),
                          SizedBox(width: 6),
                          Text(
                            "Navigasi Tersedia",
                            style: TextStyle(
                              color: Colors.purple,
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),

                  const Spacer(),

                  // CHECK ICON
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: const BoxDecoration(
                      color: Color(0xfff4e5ff),
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.hourglass_top,
                      color: Colors.purple,
                      size: 28,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            
            ExpansionTile(
              title: Text("Poject Work"),
              subtitle: Text("kompetensi dan materi pembelajaran"),
              childrenPadding: EdgeInsets.all(16.0),
              children: [
                tampilData("Kompetensi", "-"),
                tampilData("Guru", "-"),
                tampilData("Tanggal", "-"),
                tampilData("Status", "-"),
                tampilData("Catatan Guru", "-"),
                tampilData("Catatan Siswa", "-"),
              ],
            ),
            SizedBox(height: 20),
            ExpansionTile(
              title: Text("Mobile Apps"),
              subtitle: Text("kompetensi dan materi pembelajaran"),
              childrenPadding: EdgeInsets.all(16.0),
              children: [
                tampilData("Kompetensi", "-"),
                tampilData("Guru", "-"),
                tampilData("Tanggal", "-"),
                tampilData("Status", "-"),
                tampilData("Catatan Guru", "-"),
                tampilData("Catatan Siswa", "-"),
              ],
            ),
            SizedBox(height: 20),
            ExpansionTile(
              title: Text("UKK (Uji Kompetensi Keahlian)"),
              subtitle: Text("kompetensi dan materi pembelajaran"),
              childrenPadding: EdgeInsets.all(16.0),
              children: [
                tampilData("Kompetensi", "-"),
                tampilData("Guru", "-"),
                tampilData("Tanggal", "-"),
                tampilData("Status", "-"),
                tampilData("Catatan Guru", "-"),
                tampilData("Catatan Siswa", "-"),
              ],
            ),
            SizedBox(height: 20),
            ExpansionTile(
              title: Text("GIM"),
              subtitle: Text("kompetensi dan materi pembelajaran"),
              childrenPadding: EdgeInsets.all(16.0),
              children: [
                tampilData("Kompetensi", "-"),
                tampilData("Guru", "-"),
                tampilData("Tanggal", "-"),
                tampilData("Status", "-"),
                tampilData("Catatan Guru", "-"),
                tampilData("Catatan Siswa", "-"),
              ],
            ),
            SizedBox(height: 20),
            ExpansionTile(
              title: Text("Lainnya"),
              subtitle: Text("kompetensi dan materi Tambahan"),
              childrenPadding: EdgeInsets.all(16.0),
              children: [
                tampilData("Kompetensi", "Catatan"),
                tampilData("Normalisasi Proyek", "-"),
                tampilData("SQL Server", "-"),
                
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