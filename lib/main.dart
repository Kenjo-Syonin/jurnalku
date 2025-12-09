import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:jurnalku/pages/login_page.dart';
import 'pages/permintaan_saksi.dart';
import 'pages/pengaturan_akun.dart';
import 'pages/panduan_page.dart';
import 'pages/explore_page.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeDateFormatting('id_ID', null);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}
