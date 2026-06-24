import 'package:flutter/material.dart';

class FocusModeScreen extends StatefulWidget {
  const FocusModeScreen({super.key});

  @override
  State<FocusModeScreen> createState() => _FocusModeScreenState();
}

class _FocusModeScreenState extends State<FocusModeScreen> {
  int currentStep = 0;
  final int totalSteps = 5;
  final List<String> steps = [
    'Buat proyek Flutter baru',
    'Buat struktur folder',
    'Buat UI layar utama',
    'Integrasikan AI',
    'Tambahkan fitur suara',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('🧘 Mode Fokus'),
        backgroundColor: Colors.purple,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Langkah ${currentStep + 1} dari $totalSteps',
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 10),
            LinearProgressIndicator(
              value: (currentStep + 1) / totalSteps,
              minHeight: 10,
              backgroundColor: Colors.grey[300],
              color: Colors.purple,
              borderRadius: BorderRadius.circular(10),
            ),
            const SizedBox(height: 40),
            Container(
              padding: const EdgeInsets.all(30),
              decoration: BoxDecoration(
                color: Colors.purple[50],
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.purple, width: 2),
              ),
              child: Text(
                steps[currentStep],
                style: const TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.purple,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                OutlinedButton(
                  onPressed: () {
                    if (currentStep < totalSteps - 1) {
                      setState(() {
                        currentStep++;
                      });
                    }
                  },
                  child: const Text('⏭️ Lewati'),
                ),
                ElevatedButton(
                  onPressed: () {
                    if (currentStep < totalSteps - 1) {
                      setState(() {
                        currentStep++;
                      });
                    } else {
                      showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                          title: const Text('🎉 Selamat!'),
                          content: const Text('Kamu sudah menyelesaikan semua langkah!'),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                                Navigator.pop(context);
                              },
                              child: const Text('Kembali ke Home'),
                            ),
                          ],
                        ),
                      );
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.purple,
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 12),
                  ),
                  child: Text(currentStep < totalSteps - 1 ? '✅ Selesai' : '🏁 Selesai!'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}