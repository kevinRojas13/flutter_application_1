import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(
    const MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xffFBF0B2),
        body: SafeArea(
          child: Text(
            'HolAAAa',
            style: TextStyle(
              color: Colors.black, // Cambiado a un color válido, por ejemplo, negro.
              fontSize: 30.0,
              fontWeight: FontWeight.w300,
            ),
          ),
        ),
      ),
    ),
  );
}
