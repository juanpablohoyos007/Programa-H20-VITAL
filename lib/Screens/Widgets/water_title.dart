import 'package:flutter/material.dart';

class WaterTitle extends StatelessWidget {
  // Asegúrate de que se llame exactamente así
  final String title;

  const WaterTitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
    );
  }
}
