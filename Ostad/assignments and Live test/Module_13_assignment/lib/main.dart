import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const CounterApp());
}

class CounterApp extends StatelessWidget {
  const CounterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Counter Navigation App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
          surface: const Color(0xFFFBF8FF),
        ),
        useMaterial3: true,
        fontFamily: 'Inter',
      ),
      home: const HomeScreen(),
    );
  }
}
