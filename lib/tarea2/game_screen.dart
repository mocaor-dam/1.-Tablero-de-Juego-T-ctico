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
  
  final random = Random();

  String _currentImage = "";
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Rock-Paper-Scissor"), centerTitle: true,),
      body: Column(
        children: [
          Row(
            children: [
              Column(
                children: [
                  Text("Player 1"),
                  Image.asset("$_changeImage()")

                ],
              ),
            ],
          )
        ],
      ),
    );
  }


  void _changeImage(){
    _imageIndex = random.nextInt(_images.length);
    setState(() {
      _currentImage = _images[_imageIndex];
    });
  }
  
}