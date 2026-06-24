import 'package:flutter/material.dart';
import 'features/home/home_screen.dart';
import 'features/decomposition/decomposition_screen.dart';
import 'features/focus_mode/focus_mode_screen.dart';
import 'features/settings/settings_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MakanGajah',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        '/decomposition': (context) => const DecompositionScreen(),
        '/focus': (context) => const FocusModeScreen(),
        '/settings': (context) => const SettingsScreen(),
      },
    );
  }
}