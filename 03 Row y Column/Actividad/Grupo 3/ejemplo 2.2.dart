import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Ejumplo_2_2",
        home: Inicio(),
    );
  }
}
class Inicio extends StatelessWidget {
  const Inicio({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Ejumplo_2_2"),),
        body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text("Ejemplo_2_2", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            Text("Ejercicio 2"),
          ],
        )
    );
  }
}
