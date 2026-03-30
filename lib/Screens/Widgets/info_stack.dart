import 'package:flutter/material.dart';

class InfoStack extends StatelessWidget {
  const InfoStack({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        alignment: Alignment.center,
        children: [
          // Usamos una imagen de alta disponibilidad
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.network(
              'https://cdn.pixabay.com/photo/2014/12/24/05/02/drop-of-water-578897_1280.jpg',
              width: 300,
              height: 180,
              fit: BoxFit.cover,
            ),
          ),
          // REQUERIMIENTO: Texto sobre imagen
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            color: Colors.black38,
            child: const Text(
              "VIDA EN CADA GOTA",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                letterSpacing: 2,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
