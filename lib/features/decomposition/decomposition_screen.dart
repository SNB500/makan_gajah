import 'package:flutter/material.dart';

class DecompositionScreen extends StatelessWidget {
  const DecompositionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('📋 Pecahan Tugas'),
        backgroundColor: Colors.orange,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Tugas: "Membuat Aplikasi Flutter"',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 20),
            const Text(
              'Langkah-langkah:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: ListView(
                children: const [
                  ListTile(
                    leading: CircleAvatar(child: Text('1')),
                    title: Text('Buat proyek Flutter baru'),
                  ),
                  ListTile(
                    leading: CircleAvatar(child: Text('2')),
                    title: Text('Buat struktur folder'),
                  ),
                  ListTile(
                    leading: CircleAvatar(child: Text('3')),
                    title: Text('Buat UI layar utama'),
                  ),
                  ListTile(
                    leading: CircleAvatar(child: Text('4')),
                    title: Text('Integrasikan AI'),
                  ),
                  ListTile(
                    leading: CircleAvatar(child: Text('5')),
                    title: Text('Tambahkan fitur suara'),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
  Navigator.pushNamed(context, '/focus');
},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.all(16),
                ),
                child: const Text(
                  '🧘 Mulai Fokus',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}