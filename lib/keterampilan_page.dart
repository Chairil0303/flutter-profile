import 'package:flutter/material.dart';

class KeterampilanPage extends StatelessWidget {
  const KeterampilanPage({super.key});

  @override
  Widget build(BuildContext context) {
    final skills = [
      {'title': 'Flutter', 'icon': Icons.mobile_friendly},
      {'title': 'Dart', 'icon': Icons.code},
      {'title': 'Firebase', 'icon': Icons.cloud},
      {'title': 'UI/UX Design', 'icon': Icons.design_services},
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Keterampilan'),
        backgroundColor: Colors.green.shade700,
      ),
      backgroundColor: Colors.grey[100],
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Kemampuan Saya',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.green.shade700,
              ),
            ),
            const SizedBox(height: 16),
            Expanded(
              child: ListView.separated(
                itemCount: skills.length,
                separatorBuilder: (_, __) => const SizedBox(height: 12),
                itemBuilder: (context, index) {
                  final skill = skills[index];
                  return Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    elevation: 2,
                    child: ListTile(
                      leading: Icon(
                        skill['icon'] as IconData,
                        color: Colors.green,
                      ),
                      title: Text(
                        skill['title'] as String,
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
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
