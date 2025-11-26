import 'package:flutter/material.dart';
import 'package:jurnalku/pages/dashboard_page.dart';
import 'package:jurnalku/pages/explore_page.dart';
import 'package:jurnalku/pages/panduan_page.dart';
import 'package:jurnalku/pages/pengaturan_akun.dart';
import 'package:jurnalku/pages/permintaan_saksi.dart';


class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                SizedBox(
                  height: 250,
                  width: double.infinity,
                  child: Image.asset('assets/images/1.jpg', fit: BoxFit.cover),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 200),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: Card(
                          elevation: 8,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 20,
                              vertical: 30,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                RichText(
                                  text: TextSpan(
                                    style: const TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black87,
                                    ),
                                    children: [
                                      const TextSpan(
                                        text: "Masuk untuk memulai ",
                                      ),
                                      TextSpan(
                                        text: "Jurnalku",
                                        style: TextStyle(
                                          color: Colors.blue[900],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(height: 20),
                                const Text(
                                  "Username atau NIS",
                                  style: TextStyle(fontSize: 14),
                                ),
                                const SizedBox(height: 5),
                                TextField(
                                  decoration: InputDecoration(
                                    hintText: "Masukkan username atau NIS",
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    filled: true,
                                    fillColor: Colors.grey[100],
                                  ),
                                ),
                                const SizedBox(height: 20),
                                const Text(
                                  "Password",
                                  style: TextStyle(fontSize: 14),
                                ),
                                const SizedBox(height: 5),
                                TextField(
                                  obscureText: true,
                                  decoration: InputDecoration(
                                    hintText: "Masukkan password",
                                    suffixIcon: const Icon(
                                      Icons.visibility_off,
                                    ),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    filled: true,
                                    fillColor: Colors.grey[100],
                                  ),
                                ),
                                const SizedBox(height: 25),
                                SizedBox(
                                  width: double.infinity,
                                  height: 45,
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.blue[900],
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              Dashboard_Page(), // halaman tujuan
                                        ),
                                      );
                                    },
                                    child: const Text(
                                      "Masuk",
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),

                                const SizedBox(height: 15),
                                Center(
                                  child: Text(
                                    "Lupa password? Hubungi guru laboran.",
                                    style: TextStyle(
                                      color: Colors.grey[700],
                                      fontSize: 13,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 100),
                      const Text(
                        "Menyatukan Upaya untuk Kemajuan Siswa",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 10),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 30),
                        child: Text(
                          "Jurnalku adalah aplikasi cerdas yang membantu guru dan siswa dalam memantau dan mengelola kompetensi keahlian siswa secara efektif.",
                          style: TextStyle(fontSize: 14, color: Colors.black54),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      const SizedBox(height: 60),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Column(
                          children: [
                            Card(
                              color: Colors.white,
                              elevation: 1,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                                side: const BorderSide(
                                  color: Colors.grey,
                                  width: 0.3,
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(12),
                                child: ListTile(
                                  leading: Container(
                                    decoration: const BoxDecoration(
                                      color: Colors.amber,
                                      shape: BoxShape.rectangle,
                                    ),
                                    padding: const EdgeInsets.all(8),
                                    child: const Icon(
                                      Icons.school,
                                      color: Colors.white,
                                    ),
                                  ),
                                  title: const Text(
                                    "Dirancang untuk Sekolah Kami",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black87,
                                    ),
                                  ),
                                  subtitle: const Text(
                                    "Dikembangkan khusus untuk memenuhi kebutuhan sekolah kami dengan fokus pada kemajuan siswa kami.",
                                    style: TextStyle(color: Colors.black54),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(height: 5),
                            Card(
                              color: Colors.white,
                              elevation: 1,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                                side: const BorderSide(
                                  color: Colors.grey,
                                  width: 0.3,
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(12),
                                child: ListTile(
                                  leading: Container(
                                    decoration: const BoxDecoration(
                                      color: Colors.purple,
                                      shape: BoxShape.rectangle,
                                    ),
                                    padding: const EdgeInsets.all(8),
                                    child: const Icon(
                                      Icons.list_alt,
                                      color: Colors.white,
                                    ),
                                  ),
                                  title: const Text(
                                    "Pemantauan yang Terstruktur",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black87,
                                    ),
                                  ),
                                  subtitle: const Text(
                                    "Memudahkan guru dalam menyusun dan memantau daftar kompetensi keahlian yang harus dikuasai siswa.",
                                    style: TextStyle(color: Colors.black54),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(height: 5),
                            Card(
                              color: Colors.white,
                              elevation: 1,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                                side: const BorderSide(
                                  color: Colors.grey,
                                  width: 0.3,
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(12),
                                child: ListTile(
                                  leading: Container(
                                    decoration: const BoxDecoration(
                                      color: Colors.lightBlue,
                                      shape: BoxShape.rectangle,
                                    ),
                                    padding: const EdgeInsets.all(8),
                                    child: const Icon(
                                      Icons.analytics,
                                      color: Colors.white,
                                    ),
                                  ),
                                  title: const Text(
                                    "Fitur Praktis dan Bermanfaat",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black87,
                                    ),
                                  ),
                                  subtitle: const Text(
                                    "Termasuk reminder otomatis, grafik perkembangan, dan analisis mendalam untuk efektivitas belajar.",
                                    style: TextStyle(color: Colors.black54),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(height: 5),
                            Card(
                              color: Colors.white,
                              elevation: 1,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                                side: const BorderSide(
                                  color: Colors.grey,
                                  width: 0.3,
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(12),
                                child: ListTile(
                                  leading: Container(
                                    decoration: const BoxDecoration(
                                      color: Colors.orange,
                                      shape: BoxShape.rectangle,
                                    ),
                                    padding: const EdgeInsets.all(8),
                                    child: const Icon(
                                      Icons.school,
                                      color: Colors.white,
                                    ),
                                  ),
                                  title: const Text(
                                    "Pengajuan Kompetensi oleh Siswa",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black87,
                                    ),
                                  ),
                                  subtitle: const Text(
                                    "Siswa dapat mengajukan kompetensi yang telah dikuasai untuk diverifikasi oleh guru.",
                                    style: TextStyle(color: Colors.black54),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(height: 5),
                            Card(
                              color: Colors.white,
                              elevation: 1,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                                side: const BorderSide(
                                  color: Colors.grey,
                                  width: 0.3,
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(12),
                                child: ListTile(
                                  leading: Container(
                                    decoration: const BoxDecoration(
                                      color: Colors.green,
                                      shape: BoxShape.rectangle,
                                    ),
                                    padding: const EdgeInsets.all(8),
                                    child: const Icon(
                                      Icons.verified,
                                      color: Colors.white,
                                    ),
                                  ),
                                  title: const Text(
                                    "Validasi dan Tanda Tangan Guru",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black87,
                                    ),
                                  ),
                                  subtitle: const Text(
                                    "Setiap kompetensi yang disetujui akan diberikan tanda terima dan tanda tangan guru sebagai bukti.",
                                    style: TextStyle(color: Colors.black54),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(height: 5),
                            Card(
                              color: Colors.white,
                              elevation: 1,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                                side: const BorderSide(
                                  color: Colors.grey,
                                  width: 0.3,
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(12),
                                child: ListTile(
                                  leading: Container(
                                    decoration: const BoxDecoration(
                                      color: Colors.pinkAccent,
                                      shape: BoxShape.rectangle,
                                    ),
                                    padding: const EdgeInsets.all(8),
                                    child: const Icon(
                                      Icons.monitor_heart,
                                      color: Colors.white,
                                    ),
                                  ),
                                  title: const Text(
                                    "Pantauan Real-Time dan Transparan",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black87,
                                    ),
                                  ),
                                  subtitle: const Text(
                                    "Monitoring langsung, menciptakan lingkungan belajar yang efisien.",
                                    style: TextStyle(color: Colors.black54),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 40),
                      Container(
                        width: double.infinity,
                        color: Colors.blue[900],
                        padding: const EdgeInsets.symmetric(
                          vertical: 25,
                          horizontal: 20,
                        ),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Icon(
                                  Icons.message,
                                  color: Colors.white,
                                  size: 20,
                                ),
                                SizedBox(width: 15),
                                Icon(
                                  Icons.facebook,
                                  color: Colors.white,
                                  size: 20,
                                ),
                                SizedBox(width: 15),
                                Icon(
                                  Icons.camera_alt,
                                  color: Colors.white,
                                  size: 20,
                                ),
                                SizedBox(width: 15),
                                Icon(
                                  Icons.play_circle_fill,
                                  color: Colors.white,
                                  size: 20,
                                ),
                              ],
                            ),
                            const SizedBox(height: 10),
                            const Text(
                              "© GEN-28 PPLG SMK Wikrama Bogor. All Rights Reserved.",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            right: 20,
            bottom: 20,
            child: ElevatedButton.icon(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        ExplorePage(), // halaman tujuan
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue[900],
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 20,
                ),
                elevation: 6,
              ),
              icon: const Icon(Icons.explore, color: Colors.white, size: 18),
              label: const Text(
                "Jelajahi siswa",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
