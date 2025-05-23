import 'package:flutter/material.dart';

class KontakPage extends StatelessWidget {
  const KontakPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kontak'),
        backgroundColor: Colors.blueGrey,
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'Email: chairilsyahrain24@gmail.com',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 8),
            Text('HP: 089827984928', style: TextStyle(fontSize: 18)),
            SizedBox(height: 16),
            Text(
              'Sosial Media:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text('Instagram: @your_instagram', style: TextStyle(fontSize: 18)),
            Text('Twitter: @your_twitter', style: TextStyle(fontSize: 18)),
            Text('LinkedIn: @your_linkedin', style: TextStyle(fontSize: 18)),
            // Tambahkan media sosial lain jika perlu
          ],
        ),
      ),
    );
  }
}
