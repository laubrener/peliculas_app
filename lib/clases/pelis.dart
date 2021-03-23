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
    this.generos,
  });
  factory Pelis.fromJson(Map<String, dynamic> json) {
    final urlImagen = json['poster_path'];
    final titulo = json['original_title'];
    final fechaEstreno = json['release_date'];
    final descripcion = json['overview'];
    final duracion = json['runtime'];
    final popularidad = json['popularity'];
    final lenguaje = json['original_language'];
    final generos = Genres.fromJson(json['genres']);

    return Pelis(
      urlImagen: urlImagen,
      titulo: titulo,
      fechaEstreno: fechaEstreno,
      descripcion: descripcion,
      duracion: duracion,
      popularidad: popularidad,
      lenguaje: lenguaje,
      generos: generos,
    );
  }

  final String urlImagen;
  final String titulo;
  final String fechaEstreno;
  final String descripcion;
  final int duracion;
  final double popularidad;
  final String lenguaje;
  final Genres generos;
}

final json = {
  "adult": false,
  "backdrop_path": "/52AfXWuXCHn3UjD17rBruA9f5qb.jpg",
  "belongs_to_collection": null,
  "budget": 63000000,
  "genres": [
    {"id": 18, "name": "Drama"}
  ], // pongo
  "homepage": "http://www.foxmovies.com/movies/fight-club",
  "id": 550,
  "imdb_id": "tt0137523",
  "original_language": "en", // pongo
  "original_title": "Fight Club", // pongo
  "overview": // pongo
      "A ticking-time-bomb insomniac and a slippery soap salesman channel primal male aggression into a shocking new form of therapy. Their concept catches on, with underground \"fight clubs\" forming in every town, until an eccentric gets in the way and ignites an out-of-control spiral toward oblivion.",
  "popularity": 40.52, //esto pide
  "poster_path": "/8kNruSfhk5IoE4eZOc4UpvDn6tq.jpg", // pongo
  "release_date": "1999-10-15", // pongo
  "revenue": 100853753, // ingresos
  "runtime": 139, // pongo
  "spoken_languages": [
    {"english_name": "English", "iso_639_1": "en", "name": "English"}
  ],
};
