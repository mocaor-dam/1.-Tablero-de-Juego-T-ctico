import 'package:flutter/material.dart';
import 'package:tablero_de_juego_tactico_moises/tarea2/game_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: GameScreen(),
    );
  }


}

