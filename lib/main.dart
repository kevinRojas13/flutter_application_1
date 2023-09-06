import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Obtener la fecha actual
    DateTime currentDate = DateTime.now();
    String formattedDate = "${currentDate.day}/${currentDate.month}/${currentDate.year}";

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
        // Utiliza un ListView para colocar el encabezado y la imagen
        body: ListView(
          children: [
            Container(
              color: Colors.blue, // Cambia el color de fondo aquí
              child: Center(
                child: Text(
                  formattedDate, // Mostrar la fecha actual
                  style: TextStyle(fontSize: 24, color: Colors.white),
                ),
              ),
            ),
            Center(
              child: Image.network(
                'https://images.pexels.com/photos/3585088/pexels-photo-3585088.jpeg',
                width: MediaQuery.of(context).size.width, // Establece el ancho de la imagen al ancho de la pantalla
                height: MediaQuery.of(context).size.height, // Establece el alto de la imagen al alto de la pantalla
                fit: BoxFit.contain, // Ajusta la imagen al tamaño de la pantalla
              ),
            ),
            Center(
              child: Text(
                'ESTUDIANTES CANSADOS',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                constraints: BoxConstraints(maxWidth: 100), // Ancho máximo del texto
                child: Text(
                  'Los estudiantses están agotados debido a la carga de trabajo académico y las responsabilidades extracurriculares. '
                  'La combinación de exámenes, proyectos, tareas y actividades deportivas ha dejado a los estudiantes con '
                  'poco tiempo libre y pocas horas de sueño. La falta de descanso y el estrés constante están teniendo un '
                  'impacto en su bienestar físico y emocional.',
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}