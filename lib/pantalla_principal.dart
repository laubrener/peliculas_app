import 'package:flutter/material.dart';
import 'package:peliculas_app/clases/pelis.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Peliculas'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: ListView(
          children: [],
        ),
      ),
    );
  }
}

/*ListView.builder(
                itemBuilder: (BuildContext context, int index) => Pelis(
                    urlImagen: listadoPelis[index].urlImagen,
                    nombrePeli: listadoPelis[index].nombrePeli,
                    fechaEstreno: listadoPelis[index].fechaEstreno),
              ),*/
