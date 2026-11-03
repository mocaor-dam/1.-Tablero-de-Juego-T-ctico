import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Tablero de Juego Tactico"),
          backgroundColor: Colors.grey[800],
        ),
        body: Column(
          children: [
            Expanded(
              flex: 6,
              child: Row(
                children: [
                  Expanded(child: Container(color: Colors.blueGrey[800])),
                  Expanded(child: Container(color: Colors.blueGrey[900])),
                ],
              ),
            ),
            Expanded(flex: 4 ,child: Container(color: Colors.grey[200],))
          ],
        ),
      ),
    );
  }
}
