import 'package:flutter/material.dart';

class PengalamanKerjaPage extends StatelessWidget {
  const PengalamanKerjaPage({super.key});

  @override
  Widget build(BuildContext context) {
    final pengalaman = [
      {
        'posisi': 'Magang Mobile Developer',
        'perusahaan': 'PT Inovasi Digital Nusantara',
        'tahun': 'Jan 2023 - Jun 2023',
        'icon': Icons.phone_android,
      },
      {
        'posisi': 'Freelance Flutter Developer',
        'perusahaan': 'Remote / Upwork',
        'tahun': 'Jul 2023 - Sekarang',
        'icon': Icons.work_outline,
      },
      {
        'posisi': 'Junior Backend Developer',
        'perusahaan': 'CV Teknologi Solusi',
        'tahun': 'Mei 2022 - Des 2022',
        'icon': Icons.storage,
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Pengalaman Kerja'),
        backgroundColor: Colors.green.shade700,
      ),
      backgroundColor: Colors.grey[100],
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.separated(
          itemCount: pengalaman.length,
          separatorBuilder: (_, __) => const SizedBox(height: 16),
          itemBuilder: (context, index) {
            final item = pengalaman[index];
            return Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              elevation: 3,
              child: ListTile(
                contentPadding: const EdgeInsets.all(16),
                leading: Icon(
                  item['icon'] as IconData,
                  size: 36,
                  color: Colors.green,
                ),
                title: Text(
                  item['posisi'] as String,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(item['perusahaan'] as String),
                    const SizedBox(height: 4),
                    Text(
                      item['tahun'] as String,
                      style: const TextStyle(color: Colors.grey),
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
