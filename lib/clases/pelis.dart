import 'package:peliculas_app/clases/genres.dart';

class Pelis {
  Pelis({
    this.urlImagen,
    this.titulo,
    this.fechaEstreno,
    this.descripcion,
    this.duracion,
    this.popularidad,
    this.lenguaje,
    //this.generos,
  });
  factory Pelis.fromJson(Map<String, dynamic> json) {
    final urlImagen = json['poster_path'];
    final titulo = json['original_title'];
    final fechaEstreno = json['release_date'];
    final descripcion = json['overview'];
    final duracion = json['runtime'];
    final popularidad = json['popularity'];
    final lenguaje = json['original_language'];
    //final generos = Genres.fromJson(json['genres']);

    return Pelis(
      urlImagen: urlImagen,
      titulo: titulo,
      fechaEstreno: fechaEstreno,
      descripcion: descripcion,
      duracion: duracion,
      popularidad: popularidad,
      lenguaje: lenguaje,
      //generos: generos,
    );
  }

  final String urlImagen;
  final String titulo;
  final String fechaEstreno;
  final String descripcion;
  final int duracion;
  final double popularidad;
  final String lenguaje;
  //final Genres generos;
}
