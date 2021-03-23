import 'package:flutter/material.dart';
import 'package:peliculas_app/clases/pelis.dart';
import 'package:peliculas_app/pantalla_detalle_pelis.dart';
import 'package:peliculas_app/servicios/servicio_peliculas.dart';
import 'package:peliculas_app/widgets/pelis_widget.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Peliculas'),
      ),
      body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: FutureBuilder<List<Pelis>>(
              future: obtenerPelis(),
              builder: (context, snapshot) => snapshot.data != null
                  ? ListView.builder(
                      itemBuilder: (context, index) => PantallaDetallePelis(
                        urlImagen: snapshot.data[index].urlImagen,
                        titulo: snapshot.data[index].titulo,
                        fechaEstreno: snapshot.data[index].fechaEstreno,
                        descripcion: snapshot.data[index].descripcion,
                        duracion: snapshot.data[index].duracion,
                        popularidad: snapshot.data[index].popularidad,
                        lenguaje: snapshot.data[index].lenguaje,
                        //generos: generos,
                      ),
                      itemCount: snapshot.data.length,
                    )
                  : Container())),
    );
  }
}

/*ListView.builder(
                itemBuilder: (BuildContext context, int index) => Pelis(
                    urlImagen: listadoPelis[index].urlImagen,
                    nombrePeli: listadoPelis[index].nombrePeli,
                    fechaEstreno: listadoPelis[index].fechaEstreno),
              ),*/
