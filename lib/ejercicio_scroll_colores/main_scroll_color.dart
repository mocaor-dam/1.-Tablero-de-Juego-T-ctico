import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainScrollColor extends StatefulWidget{
  const MainScrollColor({super.key});

  @override
  State<StatefulWidget> createState() => _MainScrollColorState();

}

class _MainScrollColorState extends State<MainScrollColor>{
final ScrollController _scrollController = ScrollController();

Color _colorFondo = Colors.blue;


//2. En el metodo que se invoca al presentar la interfaz, añadimos escuchas para el controlador.
  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_infoScroll);
  }

  // 4. Eliminamos el controller.
  @override
  void dispose() {
    super.dispose();
    _scrollController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("COLOR ME"),),

      body: Column(
        children: [
            Expanded(child: SingleChildScrollView(
              controller: _scrollController,
              child: Column(
                children: [
                  Container(color: Colors.green, height: 400,),
                  Container(color: Colors.blue, height: 1200,),
                  Container(color: Colors.red, height: 1200,),
                  Container(color: Colors.amber, height: 1200,),
                ],
              ),
            ))
        ],
      ),
    );
  }


  _moveUp(){
    _scrollController.jumpTo(_scrollController.offset - 100);
  }

  _moveDown(){
    _scrollController.jumpTo(_scrollController.offset + 100);
  }


  //Creamos metodo que se invocara cuando ocurra algún evento de scroll/desplazamiento
  void _infoScroll(){
    print("El valor del scroll en pixeles ${_scrollController.position.pixels}");
    print("El valor del offset es  ${_scrollController.offset}");

    setState(() {
      if(_scrollController.offset >= 800){
        _colorFondo = Colors.amber;
      }else{
        _colorFondo = Colors.blue;
      }
    });
  }

}