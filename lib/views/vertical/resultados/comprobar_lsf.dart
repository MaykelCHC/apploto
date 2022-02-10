import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gordo_triana/services/resultadosindependientesconexion.dart';
import 'package:gordo_triana/styles/estilos_app.dart';

class ResultadoLotoSurfV extends StatelessWidget {
  const ResultadoLotoSurfV({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: lotosurf,
        title: const Text("Resultados de LotoTurf"),
      ),
      body: FutureBuilder(
        future: resultindplotosurf(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.hasData) {
            var posts = snapshot.data;
            return ListView.builder(
                itemCount: posts.length,
                itemBuilder: (context, index) {
                  Map post = posts[index];
                  String picar = post['fecha_sorteo'];
                  var datos = picar.split(" ");
                  String consumir = post['combinacion'];
                  var numeros = consumir.split('-');
                  var espacioc =numeros[5].split(' ');

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
                                        color: lotosurf,
                                        child: Row(
                                          children: [
                                            Expanded(
                                              flex: 2,
                                              child: Container(
                                                child: SvgPicture.asset(
                                                  "assets/images/primitiva-h.svg",
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
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                const Padding(
                                  padding: EdgeInsets.fromLTRB(30, 20, 10, 0),
                                ),
                                ClipOval(
                                  child: Material(
                                    child: Container(
                                      width: 40,
                                      height: 40,
                                      color: euromillones,
                                      child: Center(
                                        child: Text(
                                          numeros[0],
                                          style: const TextStyle(
                                              color: Colors.white),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.fromLTRB(0, 20, 10, 0),
                                ),
                                ClipOval(
                                  child: Material(
                                    child: Container(
                                      width: 40,
                                      height: 40,
                                      color: euromillones,
                                      child: Center(
                                        child: Text(
                                          numeros[1],
                                          style: const TextStyle(
                                              color: Colors.white),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.fromLTRB(0, 20, 10, 0),
                                ),
                                ClipOval(
                                  child: Material(
                                    child: Container(
                                      width: 40,
                                      height: 40,
                                      color: euromillones,
                                      child: Center(
                                        child: Text(
                                          numeros[2],
                                          style: const TextStyle(
                                              color: Colors.white),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.fromLTRB(0, 20, 10, 0),
                                ),
                                ClipOval(
                                  child: Material(
                                    child: Container(
                                      width: 40,
                                      height: 40,
                                      color: euromillones,
                                      child: Center(
                                        child: Text(
                                          numeros[3],
                                          style: const TextStyle(
                                              color: Colors.white),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.fromLTRB(0, 20, 10, 0),
                                ),
                                ClipOval(
                                  child: Material(
                                    child: Container(
                                      width: 40,
                                      height: 40,
                                      color: euromillones,
                                      child: Center(
                                        child: Text(
                                          numeros[4],
                                          style: const TextStyle(
                                              color: Colors.white),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.fromLTRB(0, 20, 10, 0),
                                ),
                                ClipOval(
                                  child: Material(
                                    child: Container(
                                      width: 40,
                                      height: 40,
                                      color: euromillones,
                                      child: Center(
                                        child: Text(
                                          espacioc[0],
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
                          Expanded(
                            child: Column(
                              children: [
                                Stack(
                                  children: [
                                    Transform.translate(
                                      offset: const Offset(130, -120),
                                      child: Icon(
                                        Icons.star,
                                        color: quinqueplus,
                                        size: 70,
                                      ),
                                    ),
                                    Transform.translate(
                                      offset: const Offset(153, -93),
                                      child: Text(
                                        espacioc[1],
                                        style: const TextStyle(
                                            color: Color(0xff001367)),
                                      ),
                                    ),
                                  ],
                                ),
                                Stack(
                                  children: [
                                    Transform.translate(
                                      offset: const Offset(130, -102),
                                      child: Icon(
                                        Icons.star,
                                        color: quinqueplus,
                                        size: 70,
                                      ),
                                    ),
                                    Transform.translate(
                                      offset: const Offset(153, -75),
                                      child: Text(
                                        espacioc[2],
                                        style: const TextStyle(
                                            color: Color(0xff001367)),
                                      ),
                                    ),
                                  ],
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
