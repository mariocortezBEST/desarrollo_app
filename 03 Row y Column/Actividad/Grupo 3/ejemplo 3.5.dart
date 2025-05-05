import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp ({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    title:"ejemplo 3.5",
    home: Inicio()
    );   
  }
}
class Inicio extends StatelessWidget {
  const Inicio({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(title: Text("Ejemplo_3.5"),),
    body: Container(
    color: Colors.pink[100],
    padding: EdgeInsets.symmetric(horizontal: 32.0, vertical: 8.0), // Relleno horizontal y vertical diferente
    child: Text('Con Relleno'),
)
);
  }
}

