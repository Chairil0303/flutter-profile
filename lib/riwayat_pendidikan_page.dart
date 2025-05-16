import 'package:flutter/material.dart';

class RiwayatPendidikanPage extends StatelessWidget {
  const RiwayatPendidikanPage({super.key});

  @override
  Widget build(BuildContext context) {
    final pendidikan = [
      {'jenjang': 'SD', 'sekolah': 'SDN Pabuaran 1', 'icon': Icons.school},
      {'jenjang': 'SMP', 'sekolah': 'SMP Logos', 'icon': Icons.school_outlined},
      {
        'jenjang': 'SMK',
        'sekolah': 'SMK Bogor Boarding School',
        'icon': Icons.business,
      },
      {
        'jenjang': 'Kuliah',
        'sekolah': 'Universitas Diponegoro',
        'icon': Icons.account_balance,
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Riwayat Pendidikan'),
        backgroundColor: Colors.green.shade700,
      ),
      backgroundColor: Colors.grey[100],
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Riwayat Pendidikan',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.green.shade700,
              ),
            ),
            const SizedBox(height: 16),
            Expanded(
              child: ListView.separated(
                itemCount: pendidikan.length,
                separatorBuilder: (_, __) => const SizedBox(height: 12),
                itemBuilder: (context, index) {
                  final item = pendidikan[index];
                  return Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    elevation: 3,
                    child: ListTile(
                      leading: Icon(
                        item['icon'] as IconData,
                        color: Colors.green,
                      ),
                      title: Text(
                        item['jenjang'] as String,
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Text(item['sekolah'] as String),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
