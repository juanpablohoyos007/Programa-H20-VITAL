import 'package:flutter/material.dart';

class Calc extends StatelessWidget {
  const Calc({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Calculadora de Hidratación")),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            const Text(
              "Dosis diaria recomendada según actividad",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            Row(
              children: [
                Expanded(
                  child: _InfoCard(
                    color: Colors.blue.shade100,
                    icon: Icons.directions_run,
                    label: "Alta Actividad",
                    liters: "3.5 Litros",
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: _InfoCard(
                    color: Colors.cyan.shade100,
                    icon: Icons.weekend,
                    label: "Sedentario",
                    liters: "2.0 Litros",
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _InfoCard extends StatelessWidget {
  final Color color;
  final IconData icon;
  final String label;
  final String liters;

  const _InfoCard(
      {required this.color,
      required this.icon,
      required this.label,
      required this.liters});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        children: [
          Icon(icon, size: 40, color: Colors.blue.shade800),
          const SizedBox(height: 10),
          Text(label, style: const TextStyle(fontWeight: FontWeight.bold)),
          Text(liters,
              style: const TextStyle(fontSize: 18, color: Colors.blueGrey)),
        ],
      ),
    );
  }
}
