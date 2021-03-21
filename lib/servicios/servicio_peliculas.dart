import 'package:dio/dio.dart';

void obtenerPelis() async {
  try {
    Response response = await Dio().get(
        "https://api.themoviedb.org/3/movie/550?api_key=0e685fd77fb3d76874a3ac26e0db8a4b");
    if (response.statusCode != 200) {
      throw Error;
    } else {
      final Map<String, dynamic> json = response.data;
    }
  } catch (e) {
    print(e);
  }
}
