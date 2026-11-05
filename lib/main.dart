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
          title: Text("Tablero de Juego Tactico", style: TextStyle(color: Colors.white),),
          backgroundColor: Colors.grey[800],
        ),
        body: Column(
          children: [
            Expanded(
              flex: 6,
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      color: Colors.blueGrey[800],
                      child: Column(
                        children: [
                          Expanded(
                            child: Row(
                              children: [
                                containerDesign(),
                                containerDesign(),
                                containerDesign(),
                                containerDesign(),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Row(
                              children: [
                                containerDesign(),
                                containerDesign(),
                                containerDesign(),
                                containerDesign(),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Row(
                              children: [
                                containerDesign(),
                                containerDesign(),
                                containerDesign(),
                                containerDesign(),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Row(
                              children: [
                                containerDesign(),
                                containerDesign(),
                                containerDesign(),
                                containerDesign(),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.blueGrey[900],
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                        children: [
                          Column(
                            children: [
                              Text(
                                'Jugador 1(Azul)',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Icon(Icons.person, color: Colors.blue, size: 30),
                              Text(
                                'Puntos: 120',
                                style: TextStyle(color: Colors.white70),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Text(
                                'Jugador 2(Rojo)',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Icon(Icons.person, color: Colors.red, size: 30),
                              Text(
                                'Puntos: 120',
                                style: TextStyle(color: Colors.white70),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 4,
              child: Container(color: Colors.grey[200], child: Column(
                children: [
                  SizedBox(height: 10,),
                  Text('Historial de movimientos', style: TextStyle(fontWeight: FontWeight.bold),),
                  Expanded(child: ListView(
                    children: [
                      ListTile(
                        leading: CircleAvatar(
                          backgroundColor: Colors.blue,
                          child: Text('1', style: TextStyle(color: Colors.white),),
                        ),
                        title: Text('Jugador 1 movio pieza', style: TextStyle(fontWeight: FontWeight.bold),),
                        subtitle: Text('Caballero a la casilla C4'),
                        trailing: Icon(Icons.history, color: Colors.black,),
                      ),
                      ListTile(
                        leading: CircleAvatar(
                          backgroundColor: Colors.red,
                          child: Text('2', style: TextStyle(color: Colors.white),),
                        ),
                        title: Text('Jugador 2 movio pieza', style: TextStyle(fontWeight: FontWeight.bold),),
                        subtitle: Text('Caballero a la casilla C4'),
                        trailing: Icon(Icons.history, color: Colors.black,),
                      ),
                      ListTile(
                        leading: CircleAvatar(
                          backgroundColor: Colors.blue,
                          child: Text('3', style: TextStyle(color: Colors.white),),
                        ),
                        title: Text('Jugador 1 movio pieza', style: TextStyle(fontWeight: FontWeight.bold),),
                        subtitle: Text('Caballero a la casilla C4'),
                        trailing: Icon(Icons.history, color: Colors.black,),
                      ),
                      ListTile(
                        leading: CircleAvatar(
                          backgroundColor: Colors.red,
                          child: Text('4', style: TextStyle(color: Colors.white),),
                        ),
                        title: Text('Jugador 2 movio pieza', style: TextStyle(fontWeight: FontWeight.bold),),
                        subtitle: Text('Caballero a la casilla C4'),
                        trailing: Icon(Icons.history, color: Colors.black,),
                      )

                    ],
                  ))
                ],
              )),
            ),
          ],
        ),
      ),
    );
  }

  Expanded containerDesign() {
    return Expanded(
      child: AspectRatio(
        aspectRatio: 1,
        child: Container(
          margin: const EdgeInsets.all(4),
          decoration: BoxDecoration(
            color: Colors.blueGrey[700],
            borderRadius: BorderRadius.circular(8),
          ),
          child: const Icon(Icons.shield, color: Colors.white54),
        ),
      ),
    );
  }
}
