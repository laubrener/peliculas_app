import 'package:dio/dio.dart';
import 'package:peliculas_app/clases/pelis.dart';

Future<List<Pelis>> obtenerPelis() async {
  try {
    Response response = await Dio().get(
        "https://api.themoviedb.org/3/movie/550?api_key=0e685fd77fb3d76874a3ac26e0db8a4b");
    if (response.statusCode != 200) {
      throw Error;
    } else {
      final json = response.data['pelis'];

      var listadoDePelis =
          json.map((pelisJson) => Pelis.fromJson(pelisJson)).toList();

      return listadoDePelis;
    }
  } catch (e) {
    return [];
  }
}
