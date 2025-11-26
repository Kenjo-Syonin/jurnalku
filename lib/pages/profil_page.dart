import 'package:flutter/material.dart';
import 'explore_page.dart';
import 'pengaturan_akun.dart';
import 'panduan_page.dart';
import 'permintaan_saksi.dart';

class ProfilPage extends StatelessWidget {
  const ProfilPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        elevation: 0.5,
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Icon(Icons.home, color: Colors.black),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: const [
                    Text(
                      "Kenjo Syonin",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "PPLG XII-4",
                      style: TextStyle(fontSize: 12, color: Colors.grey),
                    ),
                  ],
                ),
                const SizedBox(width: 8),
                PopupMenuButton<String>(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    onSelected: (value) {
                      if (value == 'profil') {
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //     builder: (context) => const ProfilPage(),
                        //   ),
                        // );
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
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const PanduanPenggunaPage(),
                          ),
                        );
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
        child: Column(
          children: [
            // ================= HEADER PROFILE =================
            Stack(
              children: [
                Container(
                  height: 170,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/wikrama-mewah.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

                Positioned(
                  bottom: 10,
                  left: 16,
                  child: Row(
                    children: [
                      const CircleAvatar(
                        radius: 45,
                        backgroundColor: Colors.grey,
                        child: Icon(Icons.person, color: Colors.white, size: 50),
                      ),
                      const SizedBox(width: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "Kenjo Syonin",
                            style: TextStyle(
                              backgroundColor: Colors.white,
                              color: Colors.black,
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(
                            "12309699 | PPLG XII-4 | Wik 4",
                            style: TextStyle(
                              backgroundColor: Colors.black,
                              color: Colors.grey
                              ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),

            const SizedBox(height: 20),

            // ================= TAB MENU =================
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _tabItem("Overview", true),
                  _tabItem("Portfolio", false),
                  _tabItem("Sertifikat", false),
                ],
              ),
            ),

            const SizedBox(height: 20),

            // ================= PORTFOLIO TERBARU =================
            sectionTitle("Portfolio Terbaru", showAdd: true, showMore: true),
            portfolioCard(),

            const SizedBox(height: 20),

            // ================= SERTIFIKAT TERBARU =================
            sectionTitle("Sertifikat Terbaru", showAdd: true, showMore: true),
            certificateCard(),

            const SizedBox(height: 20),

            // ================= DOKUMEN =================
            sectionTitle("Dokumen"),
            documentList(),

            const SizedBox(height: 20),

            // ================= MEDIA SOSIAL =================
            sectionTitle("Media Sosial", showEdit: true),
            socialMediaCard(),

            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }

  // ========================================================================
  // WIDGETS
  // ========================================================================

  Widget _tabItem(String title, bool active) {
    return Column(
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 15,
            fontWeight: active ? FontWeight.bold : FontWeight.normal,
          ),
        ),
        const SizedBox(height: 3),
        Container(
          height: 3,
          width: 60,
          color: active ? Colors.blue : Colors.transparent,
        ),
      ],
    );
  }

  Widget sectionTitle(
    String text, {
    bool showAdd = false,
    bool showMore = false,
    bool showEdit = false,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          Row(
            children: [
              if (showAdd)
                Row(
                  children: const [
                    Icon(Icons.add, size: 18, color: Colors.blue),
                    SizedBox(width: 4),
                    Text(
                      "Tambah",
                      style: TextStyle(color: Colors.blue, fontSize: 14),
                    ),
                  ],
                ),
              if (showMore) ...[
                const SizedBox(width: 16),
                const Text(
                  "Lihat Semua",
                  style: TextStyle(color: Colors.blue, fontSize: 14),
                ),
              ],
              if (showEdit)
                const Icon(Icons.edit, size: 20, color: Colors.blue),
            ],
          ),
        ],
      ),
    );
  }

  // Portfolio card example
  Widget portfolioCard() {
    return Container(
      margin: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 5,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
            child: Image.asset('wikrama-mewah.png'),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Sensor Suhu",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 6),
                const Text(
                  "Menggunakan microcontroller Arduino dan sensor DHT22.",
                  style: TextStyle(color: Colors.black87),
                ),
                const SizedBox(height: 10),
                Row(
                  children: const [
                    Icon(Icons.access_time, size: 18, color: Colors.grey),
                    SizedBox(width: 6),
                    Text("1 minggu lalu", style: TextStyle(color: Colors.grey)),
                  ],
                ),
                const SizedBox(height: 16),
                Row(
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: const Text("Lihat Detail"),
                    ),
                  ],
                ),
                const SizedBox(height: 12),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget certificateCard() {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(16),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 5,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset("assets/wikrama-mewah.png"),
          const SizedBox(height: 12),
          const Text(
            "Belajar Dasar Pemrograman Web",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          const Text("Dicoding", style: TextStyle(color: Colors.grey)),
          const SizedBox(height: 12),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            child: const Text("Lihat Sertifikat"),
          ),
        ],
      ),
    );
  }

  Widget documentList() {
    return Column(
      children: [
        documentItem(
          "Curriculum Vitae",
          "Dokumen CV siswa",
          buttonTitle: "Lihat CV",
          buttonColor: Colors.blue,
        ),
        const SizedBox(height: 12),
        documentItem(
          "Kartu Pelajar",
          "Kartu identitas siswa",
          buttonTitle: "Lihat Kartu Pelajar",
          buttonColor: Colors.green,
        ),
      ],
    );
  }

  Widget documentItem(
    String title,
    String subtitle, {
    required String buttonTitle,
    required Color buttonColor,
  }) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.all(16),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 5,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 4),
          Text(subtitle, style: const TextStyle(color: Colors.grey)),
          const SizedBox(height: 12),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              minimumSize: const Size(double.infinity, 40),
              backgroundColor: buttonColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            child: Text(
              buttonTitle,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget socialMediaCard() {
    return Container(
      margin: const EdgeInsets.all(16),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 5,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "LinkedIn",
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 6),
          Row(
            children: [
              const Icon(Icons.link, size: 18),
              const SizedBox(width: 8),
              Expanded(
                child: Text(
                  "https://www.linkedin.com/in/kenjo-syonin-835778321/",
                  style: const TextStyle(color: Colors.blue),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
