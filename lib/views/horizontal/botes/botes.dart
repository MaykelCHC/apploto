import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gordo_triana/services/conexion.dart';
import 'package:gordo_triana/styles/estilos_app.dart';

class BotesPageH extends StatelessWidget {
  DateTime fecha = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        body: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: <Widget>[
              Expanded(
                child: ListView(
                  scrollDirection: Axis.vertical,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: Image.asset('assets/images/banners-botes1.jpg'),
                    ),
                    Card(
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: SvgPicture.asset(
                              'assets/images/nacional-h.svg',
                              color: loterianacional,
                              width: 250,
                            ),
                          ),
                          Expanded(
                            child: Container(
                              margin: const EdgeInsets.fromLTRB(50, 0, 0, 0),
                              //padding: EdgeInsets.fromLTRB(0, 15, 0, 15),
                              child: const Text(
                                '0 ' + ' €',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.red,
                                    fontSize: 14),
                              ),
                            ),
                          ),
                          Expanded(
                            child: InkWell(
                              child: Text('sad'),
                              onTap: () {

                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    Card(
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: SvgPicture.asset(
                              'assets/images/euromillones-h.svg',
                              color: euromillones,
                              width: 150,
                            ),
                          ),
                          Expanded(
                            child: Container(
                              margin: const EdgeInsets.fromLTRB(50, 0, 0, 0),
                              child: const Text(
                                '0 ' + ' €',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.red,
                                    fontSize: 14),
                              ),
                            ),
                          ),
                          const Expanded(
                            child: Text('Fecha'),
                          ),
                        ],
                      ),
                    ),
                    Card(
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: SvgPicture.asset(
                              'assets/images/bonoloto-h.svg',
                              color: bonoloto,
                              width: 150,
                            ),
                          ),
                          Expanded(
                            child: Container(
                              margin: const EdgeInsets.fromLTRB(50, 0, 0, 0),
                              child: const Text(
                                '0 ' + ' €',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.red,
                                    fontSize: 14),
                              ),
                            ),
                          ),
                          const Expanded(
                            child: Text('Fecha'),
                          ),
                        ],
                      ),
                    ),
                    Card(
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: SvgPicture.asset(
                              'assets/images/primitiva-h.svg',
                              color: laprimitiva,
                              width: 150,
                            ),
                          ),
                          Expanded(
                            child: Container(
                              margin: const EdgeInsets.fromLTRB(50, 0, 0, 0),
                              child: const Text(
                                '0 ' + ' €',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.red,
                                    fontSize: 14),
                              ),
                            ),
                          ),
                          const Expanded(
                            child: Text('Fecha'),
                          ),
                        ],
                      ),
                    ),
                    Card(
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: SvgPicture.asset(
                              'assets/images/quiniela.svg',
                              color: laquiniela,
                              width: 150,
                            ),
                          ),
                          Expanded(
                            child: Container(
                              margin: const EdgeInsets.fromLTRB(50, 0, 0, 0),
                              child: const Text(
                                '0 ' + ' €',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.red,
                                    fontSize: 14),
                              ),
                            ),
                          ),
                          const Expanded(
                            child: Text('Fecha'),
                          ),
                        ],
                      ),
                    ),
                    Card(
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: SvgPicture.asset(
                              'assets/images/gordo-h.svg',
                              color: elgordo,
                              width: 150,
                            ),
                          ),
                          Expanded(
                            child: Container(
                              margin: const EdgeInsets.fromLTRB(50, 0, 0, 0),
                              child: const Text(
                                '0 ' + ' €',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.red,
                                    fontSize: 14),
                              ),
                            ),
                          ),
                          const Expanded(
                            child: Text('Fecha'),
                          ),
                        ],
                      ),
                    ),
                    Card(
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: SvgPicture.asset(
                              'assets/images/quinigol-h.svg',
                              color: quinigol,
                              width: 150,
                            ),
                          ),
                          Expanded(
                            child: Container(
                              margin: const EdgeInsets.fromLTRB(50, 0, 0, 0),
                              child: const Text(
                                '0 ' + ' €',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.red,
                                    fontSize: 14),
                              ),
                            ),
                          ),
                          const Expanded(
                            child: Text('Fecha'),
                          ),
                        ],
                      ),
                    ),
                    Card(
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: SvgPicture.asset(
                              'assets/images/lototurf-h.svg',
                              color: lotosurf,
                              width: 150,
                            ),
                          ),
                          Expanded(
                            child: Container(
                              margin: const EdgeInsets.fromLTRB(50, 0, 0, 0),
                              child: const Text(
                                '0 ' + ' €',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.red,
                                    fontSize: 14),
                              ),
                            ),
                          ),
                          const Expanded(
                            child: Text('Fecha'),
                          ),
                        ],
                      ),
                    ),
                    Card(
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: SvgPicture.asset(
                              'assets/images/quintuple-h.svg',
                              color: quinqueplus,
                              width: 150,
                            ),
                          ),
                          Expanded(
                            child: Container(
                              margin: const EdgeInsets.fromLTRB(50, 0, 0, 0),
                              child: const Text(
                                '0 ' + ' €',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.red,
                                    fontSize: 14),
                              ),
                            ),
                          ),
                          const Expanded(
                            child: Text('Fecha'),
                          ),
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.fromLTRB(0, 50, 0, 50),
                    ),
                  /*  Row(
                      children: [
                        InkWell(
                          child: SvgPicture.asset(
                            'assets/botones/bonoloto.svg',
                            color: euromillones,
                            width: 150,
                          ),
                          onTap: () {},
                        )
                      ],
                    )*/
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
