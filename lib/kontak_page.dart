import 'package:flutter/material.dart';

class KontakPage extends StatelessWidget {
  const KontakPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Kontak')),
      body: Center(
        child: Text(
          'Email: chairil@example.com\nHP: 08123456789',
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
