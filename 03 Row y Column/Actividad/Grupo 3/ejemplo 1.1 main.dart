import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Ejemplo 1.1",
      home: Inicio(),
   );
  }
}
class Inicio extends StatelessWidget {
  const Inicio ({super.key });
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Ejemplo 1.1"),),
      body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ElevatedButton(onPressed: () {}, child: Text('Botón 1')),
            Text('Texto Central'),
           Icon(Icons.favorite, color: Colors.red),
          ],
       )
    );
  }
}

