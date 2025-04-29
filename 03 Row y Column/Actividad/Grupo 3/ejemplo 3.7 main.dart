import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Ejemplo 3.7",
      home: MiContenedor(),
   );
  }
}
class MiContenedor extends StatelessWidget {
  const MiContenedor({super.key });
  
    @override
    Widget build(BuildContext context) {
    return Container(
    margin: EdgeInsets.all(20.0),
    padding: EdgeInsets.all(10.0),
    decoration: BoxDecoration(
        color: Colors.yellow,
        borderRadius: BorderRadius.circular(10.0),
        ),
        child: Text('Tamaño según texto que contiene'),
    );
  }
}

