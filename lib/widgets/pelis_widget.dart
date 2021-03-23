import 'package:flutter/material.dart';
import 'package:peliculas_app/clases/pelis.dart';

class PelisWidget extends StatelessWidget {
  PelisWidget({
    this.urlImagen,
    this.titulo,
    this.popularidad,
  });

  final String urlImagen;
  final String titulo;
  final double popularidad;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        children: [
          Image.network(urlImagen),
          Text(titulo),
          Text('Popularity: $popularidad'),
        ],
      ),
    );
  }
}
