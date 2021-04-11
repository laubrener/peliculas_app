import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:peliculas_app/clases/pelis.dart';

Future<List<Pelis>> obtenerPelis() async {
  try {
    Response respuesta = await Dio().get(
        "https://api.themoviedb.org/3/trending/all/day?api_key=1a3687f41687ec6075ab5b76373fe38d");
    if (respuesta.statusCode != 200) {
      throw Error;
    } else {
      final json = respuesta.data['pelis'];

      var listadoDePelis =
          json.map((pelisJson) => Pelis.fromJson(pelisJson)).toList();

      return List<Pelis>.from(listadoDePelis);
    }
  } catch (e) {
    return [];
  }
}
