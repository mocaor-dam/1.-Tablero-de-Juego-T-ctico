import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tablero_de_juego_tactico_moises/solar_system_ejercicio/solar_system_data.dart';

class PlanetaScreen extends StatelessWidget {
  final int index;

  PlanetaScreen({super.key, required this.index});

  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            planetas[index].nombre,
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
          backgroundColor: Colors.blueGrey,
        ),

        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(planetas[index].imagenUrl),
              Text(planetas[index].descripcion),
            ],
          ),
        ),
      ),
    );
  }
}
