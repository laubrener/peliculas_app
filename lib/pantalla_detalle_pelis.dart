import 'package:flutter/material.dart';

class PantallaDetallePelis extends StatelessWidget {
  PantallaDetallePelis({
    this.urlImagen,
    this.titulo,
    this.fechaEstreno,
    this.descripcion,
    this.duracion,
    this.popularidad,
    this.lenguaje,
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
    return Scaffold(
      appBar: AppBar(
        title: Text('Peliculas'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        children: [
          Image.network(urlImagen),
          Text(titulo),
          Text(fechaEstreno),
          Text('Breve reseña: $descripcion'),
          Text('Duración de la película: $duracion'),
          Text('popularidad: $popularidad'),
          Text('Lenguaje original: $lenguaje')
        ],
      ),
      backgroundColor: Colors.black,
    );
  }
}
