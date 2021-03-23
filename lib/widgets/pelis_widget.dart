import 'package:flutter/material.dart';
import 'package:peliculas_app/clases/pelis.dart';

class PelisWidget extends StatelessWidget {
  PelisWidget({
    this.urlImagen,
    this.titulo,
    this.fechaEstreno,
    this.descripcion,
    this.duracion,
    this.popularidad,
    this.lenguaje,
    //this.generos,
  });

  final String urlImagen;
  final String titulo;
  final String fechaEstreno;
  final String descripcion;
  final int duracion;
  final double popularidad;
  final String lenguaje;
  //final Genres generos;

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
