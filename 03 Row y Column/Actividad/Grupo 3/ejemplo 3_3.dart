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
          color: Colors.amber[200], // Color de fondo amarillo claro
          padding: EdgeInsets.all(16.0),
         child: Text('Fondo con Color'),
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

