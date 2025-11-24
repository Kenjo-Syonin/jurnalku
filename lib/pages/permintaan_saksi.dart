import 'package:flutter/material.dart';
import 'panduan_page.dart';
import 'pengaturan_akun.dart';
import 'package:intl/intl.dart';
import 'explore_page.dart';

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
                  icon: const CircleAvatar(
                    radius: 18,
                    backgroundColor: Colors.grey,
                    child: Icon(Icons.person, color: Colors.white),
                  ),
                  onSelected: (value) {
                    if (value == "permintaan") {
                      // Navigator.push(context, MaterialPageRoute(builder: (_) => const PermintaanSaksiPage()));
                    } else if (value == "pengaturan") {
                      Navigator.push(context, MaterialPageRoute(builder: (_) => const PengaturanAkunPage()));
                    } else if (value == "panduan") {
                      Navigator.push(context, MaterialPageRoute(builder: (_) => const PanduanPenggunaPage()));
                    } else if (value == "explore") {
                      Navigator.push(context, MaterialPageRoute(builder: (_) => const ExplorePage()));
                    }
                  },
                  itemBuilder: (context) => const [
                    // PopupMenuItem(value: "permintaan", child: Text("Permintaan Saksi")),
                    PopupMenuItem(value: "pengaturan", child: Text("Pengaturan Akun")),
                    PopupMenuItem(value: "panduan", child: Text("Panduan Pengguna")),
                    PopupMenuItem(value: "explore", child: Text("Jelajahi Siswa")),
                  ],
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
            const Text("Permintaan Saksi", style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
            const SizedBox(height: 6),
            const Text("Kelola permintaan menjadi saksi dari siswa lain", style: TextStyle(fontSize: 16, color: Colors.black54)),
            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              decoration: BoxDecoration(color: Colors.blue[50], borderRadius: BorderRadius.circular(8)),
              child: Text(today, style: const TextStyle(color: Colors.blue, fontWeight: FontWeight.w600)),
            ),
            const SizedBox(height: 25),
            Container(
              decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: const BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10)),
              ),
              padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 16),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(child: Text("PENGIRIM", style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold))),
                  Expanded(child: Text("TANGGAL", style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold))),
                  Expanded(child: Text("KONFIRMASI", style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold))),
                ],
              ),
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(10), bottomRight: Radius.circular(10)),
                  border: Border.all(color: Colors.grey[300]!),
                ),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(Icons.groups_outlined, color: Colors.grey, size: 50),
                      SizedBox(height: 10),
                      Text("Belum ada permintaan", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black)),
                      SizedBox(height: 4),
                      Text("Belum ada yang mengirim permintaan saksi kepada Anda", style: TextStyle(color: Colors.grey)),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
