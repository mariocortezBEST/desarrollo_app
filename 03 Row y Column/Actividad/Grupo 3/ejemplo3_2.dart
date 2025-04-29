import 'package:flutter/material.dart';



void main() { 
  runApp(const Estructura());
}

class Inicio extends StatelessWidget {
  const Inicio({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Ejemplo 3.1"),),
      body:Container(
  width: 200.0, // Ancho de 200 píxeles
  height: 150.0, // Alto de 150 píxeles
  child: Center(child: Text('Tamaño Fijo')),
)
    );
  }
}
class Estructura extends StatelessWidget {
  const Estructura({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Inicio(), 
      title: "Estructura de una APP",
    ); 
  }
}

