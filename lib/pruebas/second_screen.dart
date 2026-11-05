import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget{
  int _contador;
  
  SecondScreen({super.key, required this._contador});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Contador total"), centerTitle: true,),
      body: Center(child: Text("Puntuacion actual: $_contador")),
      
      
    );
  }
  
}