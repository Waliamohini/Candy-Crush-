import 'package:flutter/material.dart';
import '../models/candy.dart';

class CandyTile extends StatelessWidget {
  final Candy candy;

  const CandyTile({super.key, required this.candy});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(2),
      decoration: BoxDecoration(
        color: candy.color,
        shape: BoxShape.circle,
      ),
    );
  }
}
