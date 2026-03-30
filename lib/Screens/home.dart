import 'package:flutter/material.dart';
import 'package:h2o_vital/Screens/Widgets/water_title.dart';
import 'package:h2o_vital/Screens/Widgets/info_stack.dart';
import 'package:h2o_vital/Screens/beneficios.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("H2O Vital")),
      body: Column(
        children: [
          const SizedBox(height: 30), // REQUERIMIENTO: SizedBox
          const WaterTitle(title: "Hidratación Diaria"),
          const SizedBox(height: 20),
          const InfoStack(), // Llamamos al widget corregido
          const Padding(
            padding: EdgeInsets.all(30.0),
            child: Text(
              "El agua mejora la energía, la concentración y la salud del cuerpo; hidratarse bien evita fatiga y bajo rendimiento.",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16, fontStyle: FontStyle.italic),
            ),
          ),
          const Spacer(),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Beneficios()),
              );
            },
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
            ),
            child: const Text("Ver Beneficios"),
          ),
          const SizedBox(height: 50),
        ],
      ),
    );
  }
}
