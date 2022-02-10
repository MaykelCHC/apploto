import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gordo_triana/services/resultadosindependientesconexion.dart';
import 'package:gordo_triana/styles/estilos_app.dart';

class ResultadoQuinigolV extends StatelessWidget {
  const ResultadoQuinigolV({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: quinigol,
        title: const Text("Resultados de El Quinigol"),
      ),
      body: FutureBuilder(
        future: resultindpelquini(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.hasData) {
            var posts = snapshot.data;
            return ListView.builder(
                itemCount: posts.length,
                itemBuilder: (context, index) {
                  Map post = posts[index];
                  String picar = post['fecha_sorteo'];
                  var datos = picar.split(" ");

                  return Container(
                    height: MediaQuery.of(context).size.height * 0.30,
                    child: Card(
                      semanticContainer: true,
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      child: Column(
                        children: [
                          Expanded(
                            child: Row(
                              children: [
                                Expanded(
                                  child: Column(
                                    children: [
                                      Container(
                                        width:
                                        MediaQuery.of(context).size.width *
                                            0.98,
                                        height:
                                        MediaQuery.of(context).size.height *
                                            0.05,
                                        color: quinigol,
                                        child: Row(
                                          children: [
                                            Expanded(
                                              flex: 2,
                                              child: Container(
                                                child: SvgPicture.asset(
                                                  "assets/images/quiniela.svg",
                                                  color: Colors.white,
                                                  width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                      0.35,
                                                ),
                                              ),
                                            ),
                                            Expanded(
                                              child: Text(datos[0],
                                                  style: const TextStyle(
                                                      fontSize: 13,
                                                      color: Colors.white,
                                                      fontFamily:
                                                      "Monserrat Semibold",
                                                      fontWeight:
                                                      FontWeight.bold)),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(post['partidos'][index]['posicion']),
                                Text(post['partidos'][index]['local']),
                                Text('-'),
                                Text(post['partidos'][index]['visitante']),
                                Container(
                                  child: Text(post['partidos'][index]['marcador']),
                                ),
                                Container(
                                  child: Text(post['partidos'][index]['signo']),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                });
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}
