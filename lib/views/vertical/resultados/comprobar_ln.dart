import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gordo_triana/services/resultadosindependientesconexion.dart';
import 'package:gordo_triana/styles/estilos_app.dart';

class ResultadoLoteriaNacionalV extends StatelessWidget {
  const ResultadoLoteriaNacionalV({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Resultados de Loteria Nacional"),
      ),
      body: FutureBuilder(
        future: resultindplotnacional(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.hasData) {
            var posts = snapshot.data;
            return ListView.builder(
                itemCount: posts.length,
                itemBuilder: (context, index) {
                  Map post = posts[index];
                  String picar = post['fecha_sorteo'];
                  var datos = picar.split(" ");
                  String reintegro1 = post['reintegros'][0]['decimo'];
                  print(reintegro1);
                  return Container(
                    height: MediaQuery.of(context).size.height * 0.35,
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
                                        color: loterianacional,
                                        child: Row(
                                          children: [
                                            Expanded(
                                              flex: 2,
                                              child: Container(
                                                child: SvgPicture.asset(
                                                  "assets/images/nacional-h.svg",
                                                  color: Colors.white,
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.40,
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
                                            const Expanded(
                                              child: Text('Premios',
                                                  style: TextStyle(
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
                          Row(
                            children: [
                              Expanded(
                                child: Column(
                                  children: [
                                    Center(
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Container(
                                            child: Center(
                                              child: Text('r'.toUpperCase(),
                                                  style: const TextStyle(
                                                      fontSize: 18,
                                                      color: Color(0xff007ac0),
                                                      fontFamily:
                                                          "Monserrat Semibold",
                                                      fontWeight:
                                                          FontWeight.bold)),
                                            ),
                                          ),
                                          const Padding(
                                            padding: EdgeInsets.fromLTRB(
                                                0, 0, 30, 15),
                                          ),
                                          Container(
                                            child: Center(
                                              child: Text('r'.toUpperCase(),
                                                  style: const TextStyle(
                                                      fontSize: 18,
                                                      color: Color(0xff007ac0),
                                                      fontFamily:
                                                          "Monserrat Semibold",
                                                      fontWeight:
                                                          FontWeight.bold)),
                                            ),
                                          ),
                                          const Padding(
                                            padding: EdgeInsets.fromLTRB(
                                                0, 0, 30, 15),
                                          ),
                                          Container(
                                            child: Center(
                                              child: Text('r'.toUpperCase(),
                                                  style: const TextStyle(
                                                      fontSize: 18,
                                                      color: Color(0xff007ac0),
                                                      fontFamily:
                                                          "Monserrat Semibold",
                                                      fontWeight:
                                                          FontWeight.bold)),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Center(
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          ClipOval(
                                            child: Material(
                                              child: Container(
                                                width: 40,
                                                height: 40,
                                                color: const Color(0xff007ac0),
                                                child: Center(
                                                  child: Text(
                                                    post['reintegros'][0]
                                                        ['decimo'],
                                                    style: const TextStyle(
                                                        color: Colors.white),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          const Padding(
                                            padding: EdgeInsets.fromLTRB(
                                                0, 20, 10, 0),
                                          ),
                                          ClipOval(
                                            child: Material(
                                              child: Container(
                                                width: 40,
                                                height: 40,
                                                color: const Color(0xff007ac0),
                                                child: Center(
                                                  child: Text(
                                                    post['reintegros'][1]
                                                        ['decimo'],
                                                    style: const TextStyle(
                                                        color: Colors.white),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          const Padding(
                                            padding: EdgeInsets.fromLTRB(
                                                0, 20, 10, 0),
                                          ),
                                          ClipOval(
                                            child: Material(
                                              child: Container(
                                                width: 40,
                                                height: 40,
                                                color: const Color(0xff007ac0),
                                                child: Center(
                                                  child: Text(
                                                    post['reintegros'][2]
                                                        ['decimo'],
                                                    style: const TextStyle(
                                                        color: Colors.white),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  children: [
                                    Container(
                                      padding: const EdgeInsets.fromLTRB(
                                          70, 0, 0, 20),
                                      child: ListTile(
                                        title: Text("1er ".toLowerCase() +
                                            "Premio".toUpperCase()),
                                        subtitle: Text(post['primerPremio']['decimo']),
                                      ),
                                    ),
                                    Container(
                                      padding: const EdgeInsets.fromLTRB(
                                          70, 0, 0, 20),
                                      child: ListTile(
                                        title: Text("2do ".toLowerCase() +
                                            "Premio".toUpperCase()),
                                        subtitle: Text(post['segundoPremio']['decimo']),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
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
