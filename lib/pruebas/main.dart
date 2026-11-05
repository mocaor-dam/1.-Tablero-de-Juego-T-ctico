import 'package:flutter/material.dart';
import 'package:tablero_de_juego_tactico_moises/pruebas/second_screen.dart';
import 'package:tablero_de_juego_tactico_moises/tarea2/game_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  int _contador = 0;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: HomeScreen());
  }
}

class HomeScreen() extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _contador = 0;

  void _incrementar() {
    setState(() {
      _contador++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contador de Puntos"),
        centerTitle: true,
        backgroundColor: Colors.grey,
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              onPressed: _incrementar,
              icon: Icon(Icons.plus_one),
            ),
            TextButton(
              onPressed: () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => SecondScreen(contador: _contador),
                  ),
                ),
              },
              child: Text("Ver detalles"),
            ),
          ],
        ),
      ),
    );
  }
}
