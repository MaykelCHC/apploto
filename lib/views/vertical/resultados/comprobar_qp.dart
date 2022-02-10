import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gordo_triana/services/resultadosindependientesconexion.dart';
import 'package:gordo_triana/styles/estilos_app.dart';

class ResultadoQuintuplePlusV extends StatelessWidget {
  const ResultadoQuintuplePlusV({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: quinqueplus,
        title: const Text("Resultados de Quintuple Plus"),
      ),
      body: FutureBuilder(
        future: resultindpquinplus(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.hasData) {
            var posts = snapshot.data;
            return ListView.builder(
                itemCount: posts.length,
                itemBuilder: (context, index) {
                  Map post = posts[index];
                  String picar = post['fecha_sorteo'];
                  var datos = picar.split(" ");
                  String resultcarrera = post['combinacion'];
                  var info = resultcarrera.split('-');
                  String ultimo = info[4];
                  var mostrar = ultimo.split(' ');
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
                                        color: quinqueplus,
                                        child: Row(
                                          children: [
                                            Expanded(
                                              flex: 2,
                                              child: Container(
                                                child: SvgPicture.asset(
                                                  "assets/images/quintuple-h.svg",
                                                  color: Colors.white,
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.30,
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
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text('1.'),
                                Text('Carrera 1'),
                                Container(
                                  child: Text(info[0]),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text('2.'),
                                Text('Carrera 2'),
                                Container(
                                  child: Text(info[1]),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text('3.'),
                                Text('Carrera 3'),
                                Container(
                                  child: Text(info[2]),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text('4.'),
                                Text('Carrera 4'),
                                Container(
                                  child: Text(info[3]),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text('5.'),
                                Text('Carrera 5'),
                                Container(
                                  child: Text(mostrar[0]),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text('6.'),
                                Text('Carrera 5 (2 Clasificado)'),
                                Container(
                                  child: Text(mostrar[1]),
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
