import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gordo_triana/services/resultadosindependientesconexion.dart';
import 'package:gordo_triana/styles/estilos_app.dart';

class ResultadoElGordoV extends StatelessWidget {
  const ResultadoElGordoV({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: elgordo,
        title: const Text("Resultados de El Gordo"),
      ),
      body: FutureBuilder(
        future: resultindpelgordo(),
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
                  var espacioc =numeros[4].split(' ');

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
                                        color: elgordo,
                                        child: Row(
                                          children: [
                                            Expanded(
                                              flex: 2,
                                              child: SvgPicture.asset(
                                                "assets/images/gordo-h.svg",
                                                color: Colors.white,
                                                width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                    0.35,
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
