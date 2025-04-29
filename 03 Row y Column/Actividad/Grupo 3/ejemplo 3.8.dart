import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class Cuadrado extends StatelessWidget {
  const Cuadrado({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 150,
      margin: EdgeInsets.only(top: 20),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 0, 21, 112),
      ),
    );
  }
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(backgroundColor: const Color.fromARGB(255, 255, 251, 0), title: Center(
          child: Text('Ejemplo de containers', style: TextStyle(color: const Color.fromARGB(255, 253, 253, 253)),),
        ),),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
              Cuadrado(),
              Cuadrado(),
            ]
        ),
      ),
    );
  }
}
