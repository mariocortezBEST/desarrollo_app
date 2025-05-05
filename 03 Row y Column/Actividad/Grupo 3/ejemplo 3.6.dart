import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp ({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    title:"ejemplo 3.6",
    home: Inicio()
    );   
  }
}
class Inicio extends StatelessWidget {
  const Inicio({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(title: Text("Ejemplo_3.6"),),
    body: Container(
    width: 180.0,
    height: 120.0,
    decoration: BoxDecoration(
    color: Colors.orange[200],
    border: Border.all(color: Colors.deepOrange, width: 3.0), // Borde sólido
    borderRadius: BorderRadius.circular(15.0), // Bordes redondeados
    boxShadow: [
        BoxShadow(
            color: Colors.grey.withOpacity(0.6),
            spreadRadius: 3,
            blurRadius: 7,
            offset: Offset(0, 5), // Desplazamiento de la sombra
        ),
        ],
    ),
    child: Center(child: Text('Decorado')),
)
);
  }
}

