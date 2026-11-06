import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tablero_de_juego_tactico_moises/examen/details_screen.dart';
import 'package:tablero_de_juego_tactico_moises/examen/mock_data.dart';

void main() {
  runApp(LonjaApp());
}

class LonjaApp extends StatelessWidget {
  LonjaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LonjaMenuScreen(),
    );
  }
}

class LonjaMenuScreen() extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _LonjaScreenState();
}

class _LonjaScreenState() extends State<LonjaMenuScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("LA LONJA"),
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: Icon(Icons.sunny),
      ),

      body: ListView.separated(
        itemCount: mockTiposPescado.length,
        separatorBuilder: (context, index) =>
            const Divider(color: Colors.grey, thickness: 1),
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(mockTiposPescado[index].nombre),
            subtitle: Text(mockBarcos[index].nombre),
            leading: Image.asset(mockTiposPescado[index].imagenUrl),
            trailing: IconButton(onPressed: () =>
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) =>
                        DetailsScreen(index: index,))),
                icon: Icon(Icons.chevron_right)),
            
          );
        },
      ),
    );
  }
}
