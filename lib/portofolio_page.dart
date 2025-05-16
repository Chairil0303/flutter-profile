import 'package:flutter/material.dart';

class PortofolioPage extends StatelessWidget {
  const PortofolioPage({super.key});

  @override
  Widget build(BuildContext context) {
    final portofolio = [
      {
        'kategori': 'Aplikasi Flutter',
        'projek': [
          'Aplikasi Gadai',
          'Aplikasi Manajemen Barang',
          'Aplikasi pemesanan kopi',
        ],
        'icon': Icons.phone_android,
      },
      {
        'kategori': 'Website',
        'projek': ['Log-in Facebook interface', 'Website W3Schools'],
        'icon': Icons.web,
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Portofolio'),
        backgroundColor: Colors.green.shade700,
      ),
      backgroundColor: Colors.grey[100],
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.separated(
          itemCount: portofolio.length,
          separatorBuilder: (_, __) => const SizedBox(height: 16),
          itemBuilder: (context, index) {
            final item = portofolio[index];
            return Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              elevation: 3,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(item['icon'] as IconData, color: Colors.green),
                        const SizedBox(width: 10),
                        Text(
                          item['kategori'] as String,
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    ...List.generate(
                      (item['projek'] as List).length,
                      (i) => Padding(
                        padding: const EdgeInsets.symmetric(vertical: 4.0),
                        child: Text(
                          '• ${(item['projek'] as List)[i]}',
                          style: const TextStyle(fontSize: 16),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
