import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tablero_de_juego_tactico_moises/examen/details_screen.dart';
import 'package:tablero_de_juego_tactico_moises/solar_system_ejercicio/planeta_screen.dart';
import 'package:tablero_de_juego_tactico_moises/solar_system_ejercicio/solar_system_data.dart';

void main(){
  runApp(SolarSystemApp());
}

class SolarSystemApp extends StatelessWidget{
  SolarSystemApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) =>  SolarSystemMenu(),
        '/detalle': (context) => PlanetaScreen(),

      },
    );
  }
}

class SolarSystemMenu extends StatefulWidget{

  @override
  State<StatefulWidget> createState() => _SolarSystemScreenState();
  
}

class _SolarSystemScreenState extends State<SolarSystemMenu>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Solar System", style: TextStyle(color: Colors.white),),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),

      body: ListView.separated(
        itemCount: planetas.length,
        separatorBuilder: (context, index) =>
        const Divider(color: Colors.grey, thickness: 1),
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text(planetas[index].nombre),
            subtitle: Text(planetas[index].distanciaConElSol),
            leading: Image.asset(planetas[index].imagenUrl),
            trailing: Icon(Icons.chevron_right),
            onTap: (){
              Navigator.pushNamed(context, '/detalle', arguments: index);
            },

          );
        },

      ),
    );
  }
  
}