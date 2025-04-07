import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const CandyCrushApp());
}

class CandyCrushApp extends StatelessWidget {
  const CandyCrushApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Candy Crush',
      theme: ThemeData(primarySwatch: Colors.pink),
      home: const HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
