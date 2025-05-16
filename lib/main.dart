import 'package:flutter/material.dart';
import 'profile_page.dart';
import 'riwayat_pendidikan_page.dart';
import 'pengalaman_kerja_page.dart';
import 'keterampilan_page.dart';
import 'kontak_page.dart';
import 'portofolio_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Hello World',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MyHomePage(title: 'Tugas Mata Kuliah MP'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;
  const MyHomePage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Tentang Saya',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Nama: Chairil Syahrain',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  Text(
                    'NIM: 221011400144',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  Text(
                    'Kelas: 06TPLP004',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Tentang Saya'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ProfilePage()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.school),
              title: Text('Riwayat Pendidikan'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const RiwayatPendidikanPage(),
                  ),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.work),
              title: Text('Pengalaman Kerja'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const PengalamanKerjaPage(),
                  ),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.star),
              title: Text('Keterampilan'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const KeterampilanPage(),
                  ),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.contact_mail),
              title: Text('Kontak'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const KontakPage()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.folder),
              title: Text('Portofolio'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const PortofolioPage(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Nama : Chairil Syahrain',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text('NIM : 221011400144', style: TextStyle(fontSize: 20)),
            SizedBox(height: 10),
            Text('Kelas : 06TPLP004', style: TextStyle(fontSize: 18)),
          ],
        ),
      ),
    );
  }
}
