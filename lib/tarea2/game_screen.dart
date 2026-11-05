import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GameScreen extends StatefulWidget{
  const GameScreen({super.key});

  @override
  State<StatefulWidget> createState() => _GameScreenState();
  
}

class _GameScreenState extends State<GameScreen>{
  
  final List<String> _images = [
    "assets/images/paper.png",
    "assets/images/rock.png",
    "assets/images/scissors.png",
  ];
  
  
  int _imageIndex = 0;
  
  String _jugadorGanador = "";
  
  final random = Random();

  String _currentImage = "";
  String _imagen1 = "assets/images/paper.png";
  String _imagen2 = "assets/images/paper.png";
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Rock-Paper-Scissor"), centerTitle: true, backgroundColor: Colors.grey[300],),
      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Column(
                  children: [
                    Text("Player 1", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),),
                    Image.asset(_imagen1),


                  ],
                ),
              ),
              SizedBox(width: 50,),
              Expanded(
                child: Column(
                  children: [
                    Text("Player 2", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),),
                    Image.asset(_imagen2)
                  ],
                ),
              ),

            ],
          ),
          Expanded(child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [

                  Text(_comprobarGanador()),
                  SizedBox(height: 30,),
                  TextButton(style: TextButton.styleFrom(backgroundColor: Colors.red, minimumSize: Size(200, 50), shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(2))) ,onPressed: () {
                    _imagen1 = _changeImage();
                    _imagen2 = _changeImage();
                    setState(() {

                    });
                  }, child: Text('GO!', style: TextStyle(color: Colors.white)),)
                ],
              )
            ],
          ))

        ],
      ),
    );
  }


  String _changeImage(){
    _imageIndex = random.nextInt(_images.length);
    setState(() {
       _currentImage = _images[_imageIndex];
    });
    print(_currentImage);
    return _currentImage;
  }

  String _comprobarGanador(){
    String mensajeEmpate = "Empate";
    String mensajeJugador1Gana = "Player1 win!";
    String mensajeJugador2Gana = "Player2 win!";
    if(_imagen1 == _images[0] && _imagen2 == _images[0] || _imagen1 == _images[1] && _imagen2 == _images[1] || _imagen1 == _images[2] && _imagen2 == _images[2]){
      return mensajeEmpate;
    }
    if(_imagen1 == _images[0] && _imagen2 == _images[1] || _imagen1 == _images[1] && _imagen2 == _images[2] || _imagen1 == _images[2] && _imagen2 == _images[0]){
      return mensajeJugador1Gana;
    }
    if(_imagen1 == _images[0] && _imagen2 == _images[2] || _imagen1 == _images[1] && _imagen2 == _images[0] || _imagen1 == _images[2] && _imagen2 == _images[1]){
      return mensajeJugador2Gana;
    }

    return "Dale al boton para ver quien gana!";
  }
  
}