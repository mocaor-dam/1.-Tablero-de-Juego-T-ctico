import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tablero_de_juego_tactico_moises/examen/mock_data.dart';

class DetailsScreen extends StatelessWidget {
  final int index;

  DetailsScreen({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: Text("Detalle Captura"), centerTitle: true),

        body: Column(

          children: [
            Row(
              children: [
                Column(
                  children: [
                    Text(mockCapturas[index].calidad),
                    Text(
                      obtenerPescadoPorId(mockCapturas[index].tipoPescadoId)
                          .nombre,
                    ),
                  ],
                ),

                SizedBox(width: 50),
                Container(
                  child: Text("${mockCapturas[index].precioPorKg} €/KG"),
                ),
              ],
            ),
            SizedBox(height: 50),
            Row(
              children: [
                Column(
                  children: [
                    Row(
                      children: [
                        Icon(Icons.directions_boat),
                        Text("Datos del barco"),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Text(obtenerBarcoPorId(mockBarcos[index].id).nombre),
                        SizedBox(width: 10,),
                        Text(mockCapturas[index].horaDesembarque),
                      ],
                    ),
                    Row(
                      children: [
                        Center(child: Text(obtenerBarcoPorId(mockBarcos[index].id).artePesca))
                      ],
                    )
                  ],
                ),
              ],
            ),
            Row(
              children: [
                Column(
                  children: [
                    Text("Descripcion"),
                    Text(mockTiposPescado[index].descripcion)
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
