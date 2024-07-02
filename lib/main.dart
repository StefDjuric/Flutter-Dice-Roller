import 'package:flutter/material.dart';
import 'package:first_app/gradient_container.dart';

void main() {
  runApp(
      const MaterialApp(
      home: Scaffold(
        body:  GradientContainer( [
                Color.fromARGB(255, 21, 132, 210),
                Color.fromARGB(255, 21, 20, 255),
                ]),
      ),
    ),
  );
}


