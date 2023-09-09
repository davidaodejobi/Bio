import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(
          0xFF02111b,
        ),
        textTheme: const TextTheme(
          bodyLarge: TextStyle(
            color: Color(0xFFf8f9fa),
            fontSize: 20,
          ),
          bodyMedium: TextStyle(
            color: Color(0xFFf8f9fa),
            fontSize: 16,
          ),
          bodySmall: TextStyle(
            color: Color(0xFFf8f9fa),
            fontSize: 13,
          ),
          displayLarge: TextStyle(
            color: Color(0xFFf8f9fa),
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
          displayMedium: TextStyle(
            color: Color(0xFFf8f9fa),
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
          displaySmall: TextStyle(
            color: Color(0xFFf8f9fa),
            fontSize: 18,
          ),
        ),
      ),
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  Home({
    super.key,
  });

  final dateTime = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}
