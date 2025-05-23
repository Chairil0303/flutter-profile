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

            // Gunakan Expanded agar grid scrollable dan mengisi sisa ruang
            Expanded(
              child: GridView.builder(
                itemCount: pendidikan.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, // Dua kolom
                  crossAxisSpacing: 12,
                  mainAxisSpacing: 12,
                  childAspectRatio: 4 / 3,
                ),
                itemBuilder: (context, index) {
                  final item = pendidikan[index];
                  return Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    elevation: 4,
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            item['icon'] as IconData,
                            color: Colors.green,
                            size: 40,
                          ),
                          const SizedBox(height: 10),
                          Text(
                            item['jenjang'] as String,
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            item['sekolah'] as String,
                            textAlign: TextAlign.center,
                            style: const TextStyle(fontSize: 14),
                          ),
                        ],
                      ),
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
