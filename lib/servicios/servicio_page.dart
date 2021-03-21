import 'package:dio/dio.dart';

void obtenerPelis() async {
  try {
    Response response = await Dio().get(
        "ttps://raw.githubusercontent.com/PoojaB26/ParsingJSON-Flutter/master/assets/page.json");
    print(response);
  } catch (e) {
    print(e);
  }
}
/*{
  "page": 1,
  "per_page": 3,
  "total": 12,
  "total_pages": 4,
  "author": {
    "first_name": "Ms R",
    "last_name": "Reddy"
    },*/
