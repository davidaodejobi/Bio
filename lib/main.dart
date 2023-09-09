// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pd/views/home/home.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(
          0xFF02111b,
        ),
        snackBarTheme: const SnackBarThemeData(
          backgroundColor: Color(0xFF343a40),
          actionTextColor: Color(0xFF6c757d),
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
