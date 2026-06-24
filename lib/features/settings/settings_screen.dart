import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('⚙️ Pengaturan'),
        backgroundColor: Colors.blueGrey,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'BYOK (Bring Your Own Key)',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              'Masukkan API key untuk AI provider pilihanmu:',
              style: TextStyle(fontSize: 14, color: Colors.grey),
            ),
            const SizedBox(height: 20),
            DropdownButtonFormField<String>(
              decoration: const InputDecoration(
                labelText: 'Pilih Provider AI',
                border: OutlineInputBorder(),
              ),
              value: 'Gemini',
              items: const [
                DropdownMenuItem(value: 'Gemini', child: Text('Google Gemini')),
                DropdownMenuItem(value: 'OpenAI', child: Text('OpenAI')),
                DropdownMenuItem(value: 'Groq', child: Text('Groq')),
                DropdownMenuItem(value: 'Ollama', child: Text('Ollama (Local)')),
              ],
              onChanged: (value) {},
            ),
            const SizedBox(height: 20),
            TextField(
              obscureText: true,
              decoration: const InputDecoration(
                labelText: 'API Key',
                hintText: 'Masukkan API key-mu di sini',
                border: OutlineInputBorder(),
                suffixIcon: Icon(Icons.visibility_off),
              ),
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  child: OutlinedButton(
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('🔍 Testing koneksi...')),
                      );
                    },
                    child: const Text('🔍 Test Koneksi'),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('💾 Pengaturan disimpan!')),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueGrey,
                      foregroundColor: Colors.white,
                    ),
                    child: const Text('💾 Simpan'),
                  ),
                ),
              ],
            ),
            const Spacer(),
            const Center(
              child: Text(
                '🔐 API key disimpan aman di perangkat',
                style: TextStyle(fontSize: 12, color: Colors.grey),
              ),
            ),
          ],
        ),
      ),
    );
  }
}