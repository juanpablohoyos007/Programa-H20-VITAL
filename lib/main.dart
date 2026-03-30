import 'package:flutter/material.dart';
import 'package:h2o_vital/Screens/home.dart'; // Nombre corregido a minúscula

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'H2O Vital',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
      ),
      home:
          const Home(), // Asegúrate de que la clase en home.dart se llame Home
    );
  }
}
