import 'package:flutter/material.dart';

class CatatanSikapPage extends StatelessWidget {
  const CatatanSikapPage({super.key});

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
            const CircleAvatar(
              radius: 18,
              backgroundImage: AssetImage("assets/profile.jpg"),
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