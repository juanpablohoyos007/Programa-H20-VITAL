import 'package:flutter/material.dart';
// Importamos la siguiente pantalla para poder navegar a ella
import 'package:h2o_vital/Screens/calc.dart';

class Beneficios extends StatelessWidget {
  const Beneficios({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Beneficios Vitales"),
      ),
      body: ListView(
        // REQUERIMIENTO: Lista desplazable
        padding: const EdgeInsets.all(20),
        children: [
          const ListTile(
            title: Text("Cerebro Activo"),
            subtitle: Text("Mejora la concentración y la memoria."),
            leading: Icon(Icons.psychology, color: Colors.blue),
          ),
          const Divider(),
          const ListTile(
            title: Text("Corazón Sano"),
            subtitle: Text("Facilita el transporte de oxígeno en la sangre."),
            leading: Icon(Icons.favorite, color: Colors.red),
          ),
          const Divider(),
          const ListTile(
            title: Text("Regulación Térmica"),
            subtitle: Text("Ayuda a mantener la temperatura de tu cuerpo."),
            leading: Icon(Icons.thermostat, color: Colors.orange),
          ),
          const Divider(),
          const ListTile(
            title: Text("Digestión Eficiente"),
            subtitle: Text(
                "Previene el estreñimiento y ayuda a descomponer nutrientes."),
            leading: Icon(Icons.restaurant,
                color: Colors.green), // Cambiado a 'restaurant'
          ),
          const Divider(),
          const ListTile(
            title: Text("Rendimiento Físico"),
            subtitle:
                Text("Mantiene tus músculos y articulaciones lubricados."),
            leading: Icon(Icons.fitness_center, color: Colors.purple),
          ),

          const SizedBox(height: 30), // Espacio antes del botón

          // Botón para ir a la siguiente pantalla (Calculadora)
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Calc()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueAccent,
                foregroundColor: Colors.white,
                padding:
                    const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
              ),
              child: const Text("Calcular mi meta diaria"),
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
