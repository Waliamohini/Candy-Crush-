import 'package:flutter/material.dart';

class GameOverScreen extends StatelessWidget {
  final int score;

  const GameOverScreen({super.key, required this.score});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Game Over')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Final Score: $score', style: const TextStyle(fontSize: 24)),
            ElevatedButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Play Again'),
            ),
          ],
        ),
      ),
    );
  }
}
