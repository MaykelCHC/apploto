import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gordo_triana/services/resultadosindependientesconexion.dart';
import 'package:gordo_triana/styles/estilos_app.dart';

class ResultadosGeneralesV extends StatelessWidget {
  const ResultadosGeneralesV({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Resultados de Generales"),
      ),
      body: ListView(
        children: [
          Container(
            margin: const EdgeInsets.fromLTRB(0, 30, 0, 0),
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: <Widget>[
                Container(
                  height: MediaQuery.of(context).size.height * 0.35,
                  child: Card(
                    semanticContainer: true,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: FutureBuilder(
                      future: resultindplotnacional(),
                      builder: (BuildContext context, AsyncSnapshot snapshot) {
                        if (snapshot.hasData) {
                          var posts = snapshot.data;
                          return ListView.builder(
                              itemCount: 0,
                              itemBuilder: (context, index) {
                                Map post = posts[index];
                                String picar = post['fecha_sorteo'];
                                var datos = picar.split(" ");
                                String reintegro1 =
                                    post['reintegros'][0]['decimo'];
                                print(reintegro1);
                                return Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.35,
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
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .width *
                                                              0.98,
                                                      height:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .height *
                                                              0.05,
                                                      color: loterianacional,
                                                      child: Row(
                                                        children: [
                                                          Expanded(
                                                            flex: 2,
                                                            child: Container(
                                                              child: SvgPicture
                                                                  .asset(
                                                                "assets/images/nacional-h.svg",
                                                                color: Colors
                                                                    .white,
                                                                width: MediaQuery.of(
                                                                            context)
                                                                        .size
                                                                        .width *
                                                                    0.40,
                                                              ),
                                                            ),
                                                          ),
                                                          Expanded(
                                                            child: Text(
                                                                datos[0],
                                                                style: const TextStyle(
                                                                    fontSize:
                                                                        13,
                                                                    color: Colors
                                                                        .white,
                                                                    fontFamily:
                                                                        "Monserrat Semibold",
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold)),
                                                          ),
                                                          const Expanded(
                                                            child: Text(
                                                                'Premios',
                                                                style: TextStyle(
                                                                    fontSize:
                                                                        13,
                                                                    color: Colors
                                                                        .white,
                                                                    fontFamily:
                                                                        "Monserrat Semibold",
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold)),
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
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Container(
                                                          child: Center(
                                                            child: Text(
                                                                'r'
                                                                    .toUpperCase(),
                                                                style: const TextStyle(
                                                                    fontSize:
                                                                        18,
                                                                    color: Color(
                                                                        0xff007ac0),
                                                                    fontFamily:
                                                                        "Monserrat Semibold",
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold)),
                                                          ),
                                                        ),
                                                        const Padding(
                                                          padding: EdgeInsets
                                                              .fromLTRB(
                                                                  0, 0, 30, 15),
                                                        ),
                                                        Container(
                                                          child: Center(
                                                            child: Text(
                                                                'r'
                                                                    .toUpperCase(),
                                                                style: const TextStyle(
                                                                    fontSize:
                                                                        18,
                                                                    color: Color(
                                                                        0xff007ac0),
                                                                    fontFamily:
                                                                        "Monserrat Semibold",
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold)),
                                                          ),
                                                        ),
                                                        const Padding(
                                                          padding: EdgeInsets
                                                              .fromLTRB(
                                                                  0, 0, 30, 15),
                                                        ),
                                                        Container(
                                                          child: Center(
                                                            child: Text(
                                                                'r'
                                                                    .toUpperCase(),
                                                                style: const TextStyle(
                                                                    fontSize:
                                                                        18,
                                                                    color: Color(
                                                                        0xff007ac0),
                                                                    fontFamily:
                                                                        "Monserrat Semibold",
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold)),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Center(
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        ClipOval(
                                                          child: Material(
                                                            child: Container(
                                                              width: 40,
                                                              height: 40,
                                                              color: const Color(
                                                                  0xff007ac0),
                                                              child: Center(
                                                                child: Text(
                                                                  post['reintegros']
                                                                          [0][
                                                                      'decimo'],
                                                                  style: const TextStyle(
                                                                      color: Colors
                                                                          .white),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        const Padding(
                                                          padding: EdgeInsets
                                                              .fromLTRB(
                                                                  0, 20, 10, 0),
                                                        ),
                                                        ClipOval(
                                                          child: Material(
                                                            child: Container(
                                                              width: 40,
                                                              height: 40,
                                                              color: const Color(
                                                                  0xff007ac0),
                                                              child: Center(
                                                                child: Text(
                                                                  post['reintegros']
                                                                          [1][
                                                                      'decimo'],
                                                                  style: const TextStyle(
                                                                      color: Colors
                                                                          .white),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        const Padding(
                                                          padding: EdgeInsets
                                                              .fromLTRB(
                                                                  0, 20, 10, 0),
                                                        ),
                                                        ClipOval(
                                                          child: Material(
                                                            child: Container(
                                                              width: 40,
                                                              height: 40,
                                                              color: const Color(
                                                                  0xff007ac0),
                                                              child: Center(
                                                                child: Text(
                                                                  post['reintegros']
                                                                          [2][
                                                                      'decimo'],
                                                                  style: const TextStyle(
                                                                      color: Colors
                                                                          .white),
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
                                                    padding: const EdgeInsets
                                                        .fromLTRB(70, 0, 0, 20),
                                                    child: ListTile(
                                                      title: Text("1er "
                                                              .toLowerCase() +
                                                          "Premio"
                                                              .toUpperCase()),
                                                      subtitle: Text(
                                                          post['primerPremio']
                                                              ['decimo']),
                                                    ),
                                                  ),
                                                  Container(
                                                    padding: const EdgeInsets
                                                        .fromLTRB(70, 0, 0, 20),
                                                    child: ListTile(
                                                      title: Text("2do "
                                                              .toLowerCase() +
                                                          "Premio"
                                                              .toUpperCase()),
                                                      subtitle: Text(
                                                          post['segundoPremio']
                                                              ['decimo']),
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
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.35,
                  child: Card(
                    semanticContainer: true,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: FutureBuilder(
                      future: resultindpeuromillo(),
                      builder: (BuildContext context, AsyncSnapshot snapshot) {
                        if (snapshot.hasData) {
                          var posts = snapshot.data;
                          return ListView.builder(
                              itemCount: 0,
                              itemBuilder: (context, index) {
                                Map post = posts[index];
                                String picar = post['fecha_sorteo'];
                                var datos = picar.split(" ");
                                String consumir = post['combinacion'];
                                var numeros = consumir.split('-');

                                print(numeros);
                                return Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.30,
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
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .width *
                                                              0.98,
                                                      height:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .height *
                                                              0.05,
                                                      color: euromillones,
                                                      child: Row(
                                                        children: [
                                                          Expanded(
                                                            flex: 2,
                                                            child: Container(
                                                              child: SvgPicture
                                                                  .asset(
                                                                "assets/images/euromillones-h.svg",
                                                                color: Colors
                                                                    .white,
                                                                width: MediaQuery.of(
                                                                            context)
                                                                        .size
                                                                        .width *
                                                                    0.35,
                                                              ),
                                                            ),
                                                          ),
                                                          Expanded(
                                                            child: Text(
                                                                datos[0],
                                                                style: const TextStyle(
                                                                    fontSize:
                                                                        13,
                                                                    color: Colors
                                                                        .white,
                                                                    fontFamily:
                                                                        "Monserrat Semibold",
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold)),
                                                          ),
                                                          const Expanded(
                                                            child: Text(
                                                                'Premios',
                                                                style: TextStyle(
                                                                    fontSize:
                                                                        13,
                                                                    color: Colors
                                                                        .white,
                                                                    fontFamily:
                                                                        "Monserrat Semibold",
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold)),
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
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              const Padding(
                                                padding: EdgeInsets.fromLTRB(
                                                    30, 20, 10, 0),
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
                                                            color:
                                                                Colors.white),
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
                                                    color: euromillones,
                                                    child: Center(
                                                      child: Text(
                                                        numeros[1],
                                                        style: const TextStyle(
                                                            color:
                                                                Colors.white),
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
                                                    color: euromillones,
                                                    child: Center(
                                                      child: Text(
                                                        numeros[2],
                                                        style: const TextStyle(
                                                            color:
                                                                Colors.white),
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
                                                    color: euromillones,
                                                    child: Center(
                                                      child: Text(
                                                        numeros[3],
                                                        style: const TextStyle(
                                                            color:
                                                                Colors.white),
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
                                                    color: euromillones,
                                                    child: Center(
                                                      child: Text(
                                                        numeros[4],
                                                        style: const TextStyle(
                                                            color:
                                                                Colors.white),
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
                                                    offset:
                                                        const Offset(130, -120),
                                                    child: Icon(
                                                      Icons.star,
                                                      color: quinqueplus,
                                                      size: 70,
                                                    ),
                                                  ),
                                                  Transform.translate(
                                                    offset:
                                                        const Offset(153, -93),
                                                    child: Text(
                                                      numeros[5],
                                                      style: const TextStyle(
                                                          color: Color(
                                                              0xff001367)),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Stack(
                                                children: [
                                                  Transform.translate(
                                                    offset:
                                                        const Offset(130, -102),
                                                    child: Icon(
                                                      Icons.star,
                                                      color: quinqueplus,
                                                      size: 70,
                                                    ),
                                                  ),
                                                  Transform.translate(
                                                    offset:
                                                        const Offset(153, -75),
                                                    child: Text(
                                                      numeros[6],
                                                      style: const TextStyle(
                                                          color: Color(
                                                              0xff001367)),
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
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.35,
                  child: Card(
                    semanticContainer: true,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: FutureBuilder(
                      future: resultindpelgordo(),
                      builder: (BuildContext context, AsyncSnapshot snapshot) {
                        if (snapshot.hasData) {
                          var posts = snapshot.data;
                          return ListView.builder(
                              itemCount: 0,
                              itemBuilder: (context, index) {
                                Map post = posts[index];
                                String picar = post['fecha_sorteo'];
                                var datos = picar.split(" ");
                                String consumir = post['combinacion'];
                                var numeros = consumir.split('-');
                                var espacioc = numeros[4].split(' ');

                                return Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.30,
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
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .width *
                                                              0.98,
                                                      height:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .height *
                                                              0.05,
                                                      color: elgordo,
                                                      child: Row(
                                                        children: [
                                                          Expanded(
                                                            flex: 2,
                                                            child: SvgPicture
                                                                .asset(
                                                              "assets/images/gordo-h.svg",
                                                              color:
                                                                  Colors.white,
                                                              width: MediaQuery.of(
                                                                          context)
                                                                      .size
                                                                      .width *
                                                                  0.35,
                                                            ),
                                                          ),
                                                          Expanded(
                                                            child: Text(
                                                                datos[0],
                                                                style: const TextStyle(
                                                                    fontSize:
                                                                        13,
                                                                    color: Colors
                                                                        .white,
                                                                    fontFamily:
                                                                        "Monserrat Semibold",
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold)),
                                                          ),
                                                          const Expanded(
                                                            child: Text(
                                                                'Premios',
                                                                style: TextStyle(
                                                                    fontSize:
                                                                        13,
                                                                    color: Colors
                                                                        .white,
                                                                    fontFamily:
                                                                        "Monserrat Semibold",
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold)),
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
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              const Padding(
                                                padding: EdgeInsets.fromLTRB(
                                                    30, 20, 10, 0),
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
                                                            color:
                                                                Colors.white),
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
                                                    color: euromillones,
                                                    child: Center(
                                                      child: Text(
                                                        numeros[1],
                                                        style: const TextStyle(
                                                            color:
                                                                Colors.white),
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
                                                    color: euromillones,
                                                    child: Center(
                                                      child: Text(
                                                        numeros[2],
                                                        style: const TextStyle(
                                                            color:
                                                                Colors.white),
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
                                                    color: euromillones,
                                                    child: Center(
                                                      child: Text(
                                                        numeros[3],
                                                        style: const TextStyle(
                                                            color:
                                                                Colors.white),
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
                                                    color: euromillones,
                                                    child: Center(
                                                      child: Text(
                                                        espacioc[0],
                                                        style: const TextStyle(
                                                            color:
                                                                Colors.white),
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
                                                    offset:
                                                        const Offset(130, -120),
                                                    child: Icon(
                                                      Icons.star,
                                                      color: quinqueplus,
                                                      size: 70,
                                                    ),
                                                  ),
                                                  Transform.translate(
                                                    offset:
                                                        const Offset(153, -93),
                                                    child: Text(
                                                      espacioc[1],
                                                      style: const TextStyle(
                                                          color: Color(
                                                              0xff001367)),
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
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.35,
                  child: Card(
                    semanticContainer: true,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: FutureBuilder(
                      future: resultindpquinplus(),
                      builder: (BuildContext context, AsyncSnapshot snapshot) {
                        if (snapshot.hasData) {
                          var posts = snapshot.data;
                          return ListView.builder(
                              itemCount: 0,
                              itemBuilder: (context, index) {
                                Map post = posts[index];
                                String picar = post['fecha_sorteo'];
                                var datos = picar.split(" ");
                                String resultcarrera = post['combinacion'];
                                var info = resultcarrera.split('-');
                                String ultimo = info[4];
                                var mostrar = ultimo.split(' ');
                                return Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.30,
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
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .width *
                                                              0.98,
                                                      height:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .height *
                                                              0.05,
                                                      color: quinqueplus,
                                                      child: Row(
                                                        children: [
                                                          Expanded(
                                                            flex: 2,
                                                            child: Container(
                                                              child: SvgPicture
                                                                  .asset(
                                                                "assets/images/quintuple-h.svg",
                                                                color: Colors
                                                                    .white,
                                                                width: MediaQuery.of(
                                                                            context)
                                                                        .size
                                                                        .width *
                                                                    0.30,
                                                              ),
                                                            ),
                                                          ),
                                                          Expanded(
                                                            child: Text(
                                                                datos[0],
                                                                style: const TextStyle(
                                                                    fontSize:
                                                                        13,
                                                                    color: Colors
                                                                        .white,
                                                                    fontFamily:
                                                                        "Monserrat Semibold",
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold)),
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
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceAround,
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
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceAround,
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
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceAround,
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
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceAround,
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
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceAround,
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
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceAround,
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
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.35,
                  child: Card(
                    semanticContainer: true,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: FutureBuilder(
                      future: resultindpbonoloto(),
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
                                var espacioc = numeros[5].split(' ');

                                return Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.30,
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
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .width *
                                                              0.98,
                                                      height:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .height *
                                                              0.05,
                                                      color: bonoloto,
                                                      child: Row(
                                                        children: [
                                                          Expanded(
                                                            flex: 2,
                                                            child: SvgPicture
                                                                .asset(
                                                              "assets/images/bonoloto-h.svg",
                                                              color:
                                                                  Colors.white,
                                                              width: MediaQuery.of(
                                                                          context)
                                                                      .size
                                                                      .width *
                                                                  0.35,
                                                            ),
                                                          ),
                                                          Expanded(
                                                            child: Text(
                                                                datos[0],
                                                                style: const TextStyle(
                                                                    fontSize:
                                                                        13,
                                                                    color: Colors
                                                                        .white,
                                                                    fontFamily:
                                                                        "Monserrat Semibold",
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold)),
                                                          ),
                                                          const Expanded(
                                                            child: Text(
                                                                'Premios',
                                                                style: TextStyle(
                                                                    fontSize:
                                                                        13,
                                                                    color: Colors
                                                                        .white,
                                                                    fontFamily:
                                                                        "Monserrat Semibold",
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold)),
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
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              const Padding(
                                                padding: EdgeInsets.fromLTRB(
                                                    30, 20, 10, 0),
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
                                                            color:
                                                                Colors.white),
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
                                                    color: euromillones,
                                                    child: Center(
                                                      child: Text(
                                                        numeros[1],
                                                        style: const TextStyle(
                                                            color:
                                                                Colors.white),
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
                                                    color: euromillones,
                                                    child: Center(
                                                      child: Text(
                                                        numeros[2],
                                                        style: const TextStyle(
                                                            color:
                                                                Colors.white),
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
                                                    color: euromillones,
                                                    child: Center(
                                                      child: Text(
                                                        numeros[3],
                                                        style: const TextStyle(
                                                            color:
                                                                Colors.white),
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
                                                    color: euromillones,
                                                    child: Center(
                                                      child: Text(
                                                        numeros[4],
                                                        style: const TextStyle(
                                                            color:
                                                                Colors.white),
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
                                                    color: euromillones,
                                                    child: Center(
                                                      child: Text(
                                                        espacioc[0],
                                                        style: const TextStyle(
                                                            color:
                                                                Colors.white),
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
                                                    offset:
                                                        const Offset(130, -120),
                                                    child: Icon(
                                                      Icons.star,
                                                      color: quinqueplus,
                                                      size: 70,
                                                    ),
                                                  ),
                                                  Transform.translate(
                                                    offset:
                                                        const Offset(153, -93),
                                                    child: Text(
                                                      espacioc[1],
                                                      style: const TextStyle(
                                                          color: Color(
                                                              0xff001367)),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Stack(
                                                children: [
                                                  Transform.translate(
                                                    offset:
                                                        const Offset(130, -102),
                                                    child: Icon(
                                                      Icons.star,
                                                      color: quinqueplus,
                                                      size: 70,
                                                    ),
                                                  ),
                                                  Transform.translate(
                                                    offset:
                                                        const Offset(153, -75),
                                                    child: Text(
                                                      espacioc[2],
                                                      style: const TextStyle(
                                                          color: Color(
                                                              0xff001367)),
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
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.35,
                  child: Card(
                    semanticContainer: true,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: FutureBuilder(
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
                                  height:
                                      MediaQuery.of(context).size.height * 0.30,
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
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .width *
                                                              0.98,
                                                      height:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .height *
                                                              0.05,
                                                      color: quinigol,
                                                      child: Row(
                                                        children: [
                                                          Expanded(
                                                            flex: 2,
                                                            child: Container(
                                                              child: SvgPicture
                                                                  .asset(
                                                                "assets/images/quiniela.svg",
                                                                color: Colors
                                                                    .white,
                                                                width: MediaQuery.of(
                                                                            context)
                                                                        .size
                                                                        .width *
                                                                    0.35,
                                                              ),
                                                            ),
                                                          ),
                                                          Expanded(
                                                            child: Text(
                                                                datos[0],
                                                                style: const TextStyle(
                                                                    fontSize:
                                                                        13,
                                                                    color: Colors
                                                                        .white,
                                                                    fontFamily:
                                                                        "Monserrat Semibold",
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold)),
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
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Text(post['partidos'][index]
                                                  ['posicion']),
                                              Text(post['partidos'][index]
                                                  ['local']),
                                              Text('-'),
                                              Text(post['partidos'][index]
                                                  ['visitante']),
                                              Container(
                                                child: Text(post['partidos']
                                                    [index]['marcador']),
                                              ),
                                              Container(
                                                child: Text(post['partidos']
                                                    [index]['signo']),
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
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.35,
                  child: Card(
                    semanticContainer: true,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: FutureBuilder(
                      future: resultindplaquini(),
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
                                  height:
                                      MediaQuery.of(context).size.height * 0.30,
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
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .width *
                                                              0.98,
                                                      height:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .height *
                                                              0.05,
                                                      color: laquiniela,
                                                      child: Row(
                                                        children: [
                                                          Expanded(
                                                            flex: 2,
                                                            child: Container(
                                                              child: SvgPicture
                                                                  .asset(
                                                                "assets/images/quiniela.svg",
                                                                color: Colors
                                                                    .white,
                                                                width: MediaQuery.of(
                                                                            context)
                                                                        .size
                                                                        .width *
                                                                    0.35,
                                                              ),
                                                            ),
                                                          ),
                                                          Expanded(
                                                            child: Text(
                                                                datos[0],
                                                                style: const TextStyle(
                                                                    fontSize:
                                                                        13,
                                                                    color: Colors
                                                                        .white,
                                                                    fontFamily:
                                                                        "Monserrat Semibold",
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold)),
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
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Text(post['partidos'][0]
                                                  ['posicion']),
                                              Text(
                                                  post['partidos'][0]['local']),
                                              Text('-'),
                                              Text(post['partidos'][0]
                                                  ['visitante']),
                                              Container(
                                                child: Text(post['partidos'][0]
                                                    ['marcador']),
                                              ),
                                              Container(
                                                child: Text(post['partidos'][0]
                                                    ['signo']),
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
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.35,
                  child: Card(
                    semanticContainer: true,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: FutureBuilder(
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
                                  height:
                                      MediaQuery.of(context).size.height * 0.30,
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
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .width *
                                                              0.98,
                                                      height:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .height *
                                                              0.05,
                                                      color: quinigol,
                                                      child: Row(
                                                        children: [
                                                          Expanded(
                                                            flex: 2,
                                                            child: Container(
                                                              child: SvgPicture
                                                                  .asset(
                                                                "assets/images/quiniela.svg",
                                                                color: Colors
                                                                    .white,
                                                                width: MediaQuery.of(
                                                                            context)
                                                                        .size
                                                                        .width *
                                                                    0.35,
                                                              ),
                                                            ),
                                                          ),
                                                          Expanded(
                                                            child: Text(
                                                                datos[0],
                                                                style: const TextStyle(
                                                                    fontSize:
                                                                        13,
                                                                    color: Colors
                                                                        .white,
                                                                    fontFamily:
                                                                        "Monserrat Semibold",
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold)),
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
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Text(post['partidos'][index]
                                                  ['posicion']),
                                              Text(post['partidos'][index]
                                                  ['local']),
                                              Text('-'),
                                              Text(post['partidos'][index]
                                                  ['visitante']),
                                              Container(
                                                child: Text(post['partidos']
                                                    [index]['marcador']),
                                              ),
                                              Container(
                                                child: Text(post['partidos']
                                                    [index]['signo']),
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
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
