import 'package:flutter/material.dart';
import 'package:peliculas_app/pantalla_detalle_pelis.dart';
import 'package:peliculas_app/servicios/servicio_peliculas.dart';
import 'package:peliculas_app/widgets/pelis_widget.dart';

import 'clases/pelis.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: PantallaPrincipal(),
    );
  }
}

class PantallaPrincipal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Peliculas'),
      ),
      body: FutureBuilder<List<Pelis>>(
        future: obtenerPelis(),
        initialData: null,
        builder: (context, estado) => estado.data == null
            ? Center(
                child: CircularProgressIndicator(),
              )
            : ListView.builder(
                itemBuilder: (context, index) => PelisWidget(
                  urlImagen: estado.data[index].urlImagen,
                  titulo: estado.data[index].titulo,
                  //fechaEstreno: estado.data[index].fechaEstreno,
                  //descripcion: estado.data[index].descripcion,
                  //duracion: estado.data[index].duracion,
                  popularidad: estado.data[index].popularidad,
                  //lenguaje: estado.data[index].lenguaje,
                  //generos: generos,
                ),
                itemCount: estado.data.length,
              ),
      ),
    );
  }
}

class PelisWidget extends StatefulWidget {
  PelisWidget({
    this.urlImagen,
    this.titulo,
    this.popularidad,
  });

  final String urlImagen;
  final String titulo;
  final double popularidad;

  @override
  _PelisWidgetState createState() => _PelisWidgetState();
}

class _PelisWidgetState extends State<PelisWidget> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        children: [
          Image.network(widget.urlImagen),
          Text(widget.titulo),
          Text('Popularity: ${widget.popularidad}'),
        ],
      ),
    );
  }
}
