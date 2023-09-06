import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Noticias Punto Cero',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
          leading: IconButton(
            icon: Icon(Icons.menu), // Ícono de menú en la parte izquierda
            onPressed: () {
              // Lógica cuando se presiona el ícono de menú
            },
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.notifications), // Aquí se establece el ícono

              onPressed: () {
                // Lógica cuando se presiona el ícono
              },
            ),
          ],
        ),
        // Agrega un fondo de color al cuerpo de la aplicación
        body: Container(
          color: Colors.blue, // Cambia el color de fondo aquí
          child: Center(
            child: Text(
              'Muere!',
              style: TextStyle(fontSize: 24, color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
