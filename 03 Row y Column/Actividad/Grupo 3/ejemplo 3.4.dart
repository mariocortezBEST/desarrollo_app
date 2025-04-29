import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp ({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    title:"ejemplo 3.4",
    home: Inicio()
    );   
  }
}
class Inicio extends StatelessWidget {
  const Inicio({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(title: Text("Ejemplo_3.4"),),
    body: Container(
    margin: EdgeInsets.only(top: 20.0, left: 30.0), // Margen superior de 20px e izquierdo de 30px
    color: Colors.lightGreen[100],
    padding: EdgeInsets.all(16.0),// padding de los cuatro lados de 16px
    child: Text('Con Márgenes'),//el texto que se va a mostrar
    )
  );
  }
}
