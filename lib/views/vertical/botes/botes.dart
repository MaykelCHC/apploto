import 'dart:ui';

import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gordo_triana/services/botesconexion.dart';
import 'package:gordo_triana/services/fechaconexion.dart';
import 'package:gordo_triana/styles/estilos_app.dart';
import 'package:gordo_triana/views/vertical/resultados/resultado.dart';
import 'package:marquee/marquee.dart';

class BotesPageV extends StatefulWidget {
  const BotesPageV({Key? key}) : super(key: key);

  @override
  BotesPageVState createState() => BotesPageVState();
}

class BotesPageVState extends State<BotesPageV> {
  final List<String> imageList = [
    "assets/sliders/slider1.jpg",
    "assets/sliders/slider2.jpg",
    "assets/sliders/slider3.jpg",
    "assets/sliders/slider4.jpg",
  ];

  final List<Widget> cambios=[
    ResultadosGeneralesV(),
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    String euro = ' €';
    return CarouselSlider(
      options: CarouselOptions(
        autoPlay: true,
        enableInfiniteScroll: true,
        enlargeCenterPage: true,
      ),
      items: imageList
          .map((e) => ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: WillPopScope(
          onWillPop: () async => false,
          child: Scaffold(
            body: Container(
              margin: const EdgeInsets.fromLTRB(0, 30, 0, 0),
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: <Widget>[
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: Image.asset('assets/images/banners-botes1.jpg'),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 3),
                    decoration: const BoxDecoration(
                        border: Border(bottom: BorderSide(color: Colors.black))),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          flex: 2,
                          child: SvgPicture.asset(
                            'assets/images/nacional-h.svg',
                            color: loterianacional,
                            width: MediaQuery.of(context).size.width * 0.4,
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Container(
                            margin: const EdgeInsets.fromLTRB(50, 0, 0, 0),
                            child: FutureBuilder(
                              future: botesprecioslotnacional(),
                              builder:
                                  (BuildContext context, AsyncSnapshot snapshot) {
                                if (snapshot.hasData) {
                                  return _buildchild(snapshot, euro);
                                } else {
                                  return const SizedBox(
                                    width: 10,
                                    height: 10,
                                    child: Center(
                                      child: CircularProgressIndicator(),
                                    ),
                                  );
                                }
                              },
                            ),
                          ),
                        ),
                        Expanded(
                          child: InkWell(
                            child: Center(
                              child: FutureBuilder(
                                future: botesfechalotnacional(),
                                builder:
                                    (BuildContext context, AsyncSnapshot snapshot) {
                                  print(snapshot.hasData);
                                  if (snapshot.hasData) {
                                    String picar = snapshot.data;
                                    if (picar == " " || picar == 'null') {
                                      return const Text(" ");
                                    } else {
                                      var coger = picar.split(" ");
                                      return Column(
                                        children: [
                                          Text(
                                            coger[0],
                                            style: const TextStyle(
                                                fontSize: 13,
                                                color: Color(0xff565656),
                                                fontFamily: "Monserrat Semibold",
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Text(
                                            coger[1].toUpperCase(),
                                            style: const TextStyle(
                                                fontSize: 6,
                                                color: Color(0xff565656),
                                                fontFamily: "Monserrat Semibold",
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      );
                                    }
                                  } else {
                                    return const SizedBox(
                                      width: 10,
                                      height: 10,
                                      child: Center(
                                        child: CircularProgressIndicator(),
                                      ),
                                    );
                                  }
                                },
                              ),
                            ),
                            onTap: () {},
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(10, 5, 10, 0),
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 3),
                    decoration: const BoxDecoration(
                      border: Border(
                        bottom: BorderSide(color: Colors.black),
                      ),
                    ),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          flex: 2,
                          child: SvgPicture.asset(
                            'assets/images/euromillones-h.svg',
                            color: euromillones,
                            width: MediaQuery.of(context).size.width * 0.3,
                            alignment: Alignment.topLeft,
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Container(
                            margin: const EdgeInsets.fromLTRB(50, 0, 0, 0),
                            child: FutureBuilder(
                              future: botespreciosemil(),
                              builder:
                                  (BuildContext context, AsyncSnapshot snapshot) {
                                if (snapshot.hasData) {
                                  return _buildchild(snapshot, euro);
                                } else {
                                  return const SizedBox(
                                    width: 10,
                                    height: 10,
                                    child: Center(
                                      child: CircularProgressIndicator(),
                                    ),
                                  );
                                }
                              },
                            ),
                          ),
                        ),
                        Expanded(
                          child: InkWell(
                            child: Center(
                              child: FutureBuilder(
                                  future: botesfechaeuromill(),
                                  builder: (BuildContext context,
                                      AsyncSnapshot snapshot) {
                                    if (snapshot.hasData) {
                                      String picar = snapshot.data;
                                      if (picar == " " || picar == 'null') {
                                        return const Text(" ");
                                      } else {
                                        var coger = picar.split(" ");
                                        return Column(
                                          children: [
                                            Text(
                                              coger[0],
                                              style: const TextStyle(
                                                  fontSize: 13,
                                                  color: Color(0xff565656),
                                                  fontFamily: "Monserrat Semibold",
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            Text(
                                              coger[1].toUpperCase(),
                                              style: const TextStyle(
                                                  fontSize: 6,
                                                  color: Color(0xff565656),
                                                  fontFamily: "Monserrat Semibold",
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ],
                                        );
                                      }
                                    } else {
                                      return const SizedBox(
                                        width: 10,
                                        height: 10,
                                        child: Center(
                                          child: CircularProgressIndicator(),
                                        ),
                                      );
                                    }
                                  }),
                            ),
                            onTap: () {},
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(10, 5, 10, 0),
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 3),
                    decoration: const BoxDecoration(
                      border: Border(
                        bottom: BorderSide(color: Colors.black),
                      ),
                    ),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          flex: 2,
                          child: SvgPicture.asset(
                            'assets/images/bonoloto-h.svg',
                            color: bonoloto,
                            width: MediaQuery.of(context).size.width * 0.25,
                            alignment: Alignment.topLeft,
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Container(
                            margin: const EdgeInsets.fromLTRB(50, 0, 0, 0),
                            child: FutureBuilder(
                              future: botespreciosbonoloto(),
                              builder:
                                  (BuildContext context, AsyncSnapshot snapshot) {
                                if (snapshot.hasData) {
                                  return _buildchild(snapshot, euro);
                                } else {
                                  return const SizedBox(
                                    width: 10,
                                    height: 10,
                                    child: Center(
                                      child: CircularProgressIndicator(),
                                    ),
                                  );
                                }
                              },
                            ),
                          ),
                        ),
                        Expanded(
                          child: InkWell(
                            child: Center(
                              child: FutureBuilder(
                                future: botesfechabonoloto(),
                                builder:
                                    (BuildContext context, AsyncSnapshot snapshot) {
                                  String picar = snapshot.data;
                                  if(snapshot.hasData){
                                    if (picar == " " || picar == 'null') {
                                      return const Text(" ");
                                    } else {
                                      var coger = picar.split(" ");
                                      return Column(
                                        children: [
                                          Text(
                                            coger[0],
                                            style: const TextStyle(
                                                fontSize: 13,
                                                color: Color(0xff565656),
                                                fontFamily: "Monserrat Semibold",
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Text(
                                            coger[1].toUpperCase(),
                                            style: const TextStyle(
                                                fontSize: 6,
                                                color: Color(0xff565656),
                                                fontFamily: "Monserrat Semibold",
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      );
                                    }
                                  }else {
                                    return const SizedBox(
                                      width: 10,
                                      height: 10,
                                      child: Center(
                                        child: CircularProgressIndicator(),
                                      ),
                                    );
                                  }
                                },
                              ),
                            ),
                            onTap: () {},
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(10, 5, 10, 0),
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 3),
                    decoration: const BoxDecoration(
                      border: Border(
                        bottom: BorderSide(color: Colors.black),
                      ),
                    ),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          flex: 2,
                          child: SvgPicture.asset(
                            'assets/images/primitiva-h.svg',
                            color: laprimitiva,
                            width: MediaQuery.of(context).size.width * 0.28,
                            alignment: Alignment.topLeft,
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Container(
                            margin: const EdgeInsets.fromLTRB(50, 0, 0, 0),
                            child: FutureBuilder(
                              future: botesprecioslapr(),
                              builder:
                                  (BuildContext context, AsyncSnapshot snapshot) {
                                if (snapshot.hasData) {
                                  return _buildchild(snapshot, euro);
                                } else {
                                  return const SizedBox(
                                    width: 10,
                                    height: 10,
                                    child: Center(
                                      child: CircularProgressIndicator(),
                                    ),
                                  );
                                }
                              },
                            ),
                          ),
                        ),
                        Expanded(
                          child: InkWell(
                            child: Center(
                              child: FutureBuilder(
                                  future: botesfechalaprimi(),
                                  builder:
                                      (BuildContext context, AsyncSnapshot snapshot) {
                                    String picar = snapshot.data;
                                    if (snapshot.hasData) {
                                      if (picar == " " || picar == 'null') {
                                        return const Text(" ");
                                      } else {
                                        var coger = picar.split(" ");
                                        return Column(
                                          children: [
                                            Text(
                                              coger[0],
                                              style: const TextStyle(
                                                  fontSize: 13,
                                                  color: Color(0xff565656),
                                                  fontFamily: "Monserrat Semibold",
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            Text(
                                              coger[1].toUpperCase(),
                                              style: const TextStyle(
                                                  fontSize: 6,
                                                  color: Color(0xff565656),
                                                  fontFamily: "Monserrat Semibold",
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ],
                                        );
                                      }
                                    }else {
                                      return const SizedBox(
                                        width: 10,
                                        height: 10,
                                        child: Center(
                                          child: CircularProgressIndicator(),
                                        ),
                                      );
                                    }
                                  }
                              ),
                            ),
                            onTap: () {},
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(10, 5, 10, 0),
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 3),
                    decoration: const BoxDecoration(
                      border: Border(
                        bottom: BorderSide(color: Colors.black),
                      ),
                    ),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          flex: 2,
                          child: SvgPicture.asset(
                            'assets/images/quiniela.svg',
                            color: laquiniela,
                            width: MediaQuery.of(context).size.width * 0.27,
                            alignment: Alignment.topLeft,
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Container(
                            margin: const EdgeInsets.fromLTRB(50, 0, 0, 0),
                            child: FutureBuilder(
                              future: botesprecioslaqui(),
                              builder:
                                  (BuildContext context, AsyncSnapshot snapshot) {
                                if (snapshot.hasData) {
                                  return _buildchild(snapshot, euro);
                                } else {
                                  return const SizedBox(
                                    width: 10,
                                    height: 10,
                                    child: Center(
                                      child: CircularProgressIndicator(),
                                    ),
                                  );
                                }
                              },
                            ),
                          ),
                        ),
                        Expanded(
                          child: InkWell(
                            child: Center(
                              child: FutureBuilder(
                                future: botesfechalaquini(),
                                builder:
                                    (BuildContext context, AsyncSnapshot snapshot) {
                                  String picar = snapshot.data;
                                  if(snapshot.hasData) {
                                    if (picar == " " || picar == 'null') {
                                      return const Text(" ");
                                    } else {
                                      var coger = picar.split(" ");
                                      return Column(
                                        children: [
                                          Text(
                                            coger[0],
                                            style: const TextStyle(
                                                fontSize: 13,
                                                color: Color(0xff565656),
                                                fontFamily: "Monserrat Semibold",
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Text(
                                            coger[1].toUpperCase(),
                                            style: const TextStyle(
                                                fontSize: 6,
                                                color: Color(0xff565656),
                                                fontFamily: "Monserrat Semibold",
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      );
                                    }
                                  }else {
                                    return const SizedBox(
                                      width: 10,
                                      height: 10,
                                      child: Center(
                                        child: CircularProgressIndicator(),
                                      ),
                                    );
                                  }
                                },
                              ),
                            ),
                            onTap: () {},
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(10, 5, 10, 0),
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 3),
                    decoration: const BoxDecoration(
                      border: Border(
                        bottom: BorderSide(color: Colors.black),
                      ),
                    ),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          flex: 2,
                          child: SvgPicture.asset(
                            'assets/images/gordo-h.svg',
                            color: elgordo,
                            width: MediaQuery.of(context).size.width * 0.23,
                            alignment: Alignment.topLeft,
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Container(
                            margin: const EdgeInsets.fromLTRB(50, 0, 0, 0),
                            child: FutureBuilder(
                              future: botesprecioselgordo(),
                              builder:
                                  (BuildContext context, AsyncSnapshot snapshot) {
                                if (snapshot.hasData) {
                                  return _buildchild(snapshot, euro);
                                } else {
                                  return const SizedBox(
                                    width: 10,
                                    height: 10,
                                    child: Center(
                                      child: CircularProgressIndicator(),
                                    ),
                                  );
                                }
                              },
                            ),
                          ),
                        ),
                        Expanded(
                          child: InkWell(
                            child: Center(
                              child: FutureBuilder(
                                future: botesfechaelgordo(),
                                builder:
                                    (BuildContext context, AsyncSnapshot snapshot) {
                                  if(snapshot.hasData) {
                                    String picar = snapshot.data;
                                    if (picar == " " || picar == 'null') {
                                      return const Text(" ");
                                    } else {
                                      var coger = picar.split(" ");
                                      return Column(
                                        children: [
                                          Text(
                                            coger[0],
                                            style: const TextStyle(
                                                fontSize: 13,
                                                color: Color(0xff565656),
                                                fontFamily: "Monserrat Semibold",
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Text(
                                            coger[1].toUpperCase(),
                                            style: const TextStyle(
                                                fontSize: 6,
                                                color: Color(0xff565656),
                                                fontFamily: "Monserrat Semibold",
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      );
                                    }
                                  }else {
                                    return const SizedBox(
                                      width: 10,
                                      height: 10,
                                      child: Center(
                                        child: CircularProgressIndicator(),
                                      ),
                                    );
                                  }
                                },
                              ),
                            ),
                            onTap: () {},
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(10, 5, 10, 0),
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 3),
                    decoration: const BoxDecoration(
                      border: Border(
                        bottom: BorderSide(color: Colors.black),
                      ),
                    ),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          flex: 2,
                          child: SvgPicture.asset(
                            'assets/images/quinigol-h.svg',
                            color: quinigol,
                            width: MediaQuery.of(context).size.width * 0.23,
                            alignment: Alignment.topLeft,
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Container(
                            margin: const EdgeInsets.fromLTRB(50, 0, 0, 0),
                            child: FutureBuilder(
                              future: botesprecioselquini(),
                              builder:
                                  (BuildContext context, AsyncSnapshot snapshot) {
                                if (snapshot.hasData) {
                                  return _buildchild(snapshot, euro);
                                } else {
                                  return const SizedBox(
                                    width: 10,
                                    height: 10,
                                    child: Center(
                                      child: CircularProgressIndicator(),
                                    ),
                                  );
                                }
                              },
                            ),
                          ),
                        ),
                        Expanded(
                          child: InkWell(
                            child: Center(
                              child: FutureBuilder(
                                future: botesfechaquinigol(),
                                builder:
                                    (BuildContext context, AsyncSnapshot snapshot) {
                                  if(snapshot.hasData) {
                                    String picar = snapshot.data;
                                    if (picar == " " || picar == 'null') {
                                      return const Text(" ");
                                    } else {
                                      var coger = picar.split(" ");
                                      return Column(
                                        children: [
                                          Text(
                                            coger[0],
                                            style: const TextStyle(
                                                fontSize: 13,
                                                color: Color(0xff565656),
                                                fontFamily: "Monserrat Semibold",
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Text(
                                            coger[1].toUpperCase(),
                                            style: const TextStyle(
                                                fontSize: 6,
                                                color: Color(0xff565656),
                                                fontFamily: "Monserrat Semibold",
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      );
                                    }
                                  }else {
                                    return const SizedBox(
                                      width: 10,
                                      height: 10,
                                      child: Center(
                                        child: CircularProgressIndicator(),
                                      ),
                                    );
                                  }
                                },
                              ),
                            ),
                            onTap: () {},
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(10, 5, 10, 0),
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 3),
                    decoration: const BoxDecoration(
                      border: Border(
                        bottom: BorderSide(color: Colors.black),
                      ),
                    ),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          flex: 2,
                          child: SvgPicture.asset(
                            'assets/images/lototurf-h.svg',
                            color: lotosurf,
                            width: MediaQuery.of(context).size.width * 0.24,
                            alignment: Alignment.topLeft,
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Container(
                            margin: const EdgeInsets.fromLTRB(50, 0, 0, 0),
                            child: FutureBuilder(
                              future: botesprecioslotosurf(),
                              builder:
                                  (BuildContext context, AsyncSnapshot snapshot) {
                                if (snapshot.hasData) {
                                  return _buildchild(snapshot, euro);
                                } else {
                                  return const SizedBox(
                                    width: 10,
                                    height: 10,
                                    child: Center(
                                      child: CircularProgressIndicator(),
                                    ),
                                  );
                                }
                              },
                            ),
                          ),
                        ),
                        Expanded(
                          child: InkWell(
                            child: Center(
                              child: FutureBuilder(
                                future: botesfechalotosurf(),
                                builder:
                                    (BuildContext context, AsyncSnapshot snapshot) {
                                  if(snapshot.hasData) {
                                    String picar = snapshot.data;
                                    if (picar == " " || picar == 'null') {
                                      return const Text(" ");
                                    } else {
                                      var coger = picar.split(" ");
                                      return Column(
                                        children: [
                                          Text(
                                            coger[0],
                                            style: const TextStyle(
                                                fontSize: 13,
                                                color: Color(0xff565656),
                                                fontFamily: "Monserrat Semibold",
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Text(
                                            coger[1].toUpperCase(),
                                            style: const TextStyle(
                                                fontSize: 6,
                                                color: Color(0xff565656),
                                                fontFamily: "Monserrat Semibold",
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      );
                                    }
                                  }else {
                                    return const SizedBox(
                                      width: 10,
                                      height: 10,
                                      child: Center(
                                        child: CircularProgressIndicator(),
                                      ),
                                    );
                                  }
                                },
                              ),
                            ),
                            onTap: () {},
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(10, 5, 10, 0),
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 3),
                    decoration: const BoxDecoration(
                      border: Border(
                        bottom: BorderSide(color: Colors.black),
                      ),
                    ),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          flex: 2,
                          child: SvgPicture.asset(
                            'assets/images/quintuple-h.svg',
                            color: quinqueplus,
                            width: MediaQuery.of(context).size.width * 0.33,
                            alignment: Alignment.topLeft,
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Container(
                            margin: const EdgeInsets.fromLTRB(50, 0, 0, 0),
                            child: FutureBuilder(
                              future: botespreciosquinplus(),
                              builder:
                                  (BuildContext context, AsyncSnapshot snapshot) {
                                if (snapshot.hasData) {
                                  return _buildchild(snapshot, euro);
                                } else {
                                  return const SizedBox(
                                    width: 10,
                                    height: 10,
                                    child: Center(
                                      child: CircularProgressIndicator(),
                                    ),
                                  );
                                }
                              },
                            ),
                          ),
                        ),
                        Expanded(
                          child: InkWell(
                            child: Center(
                              child: FutureBuilder(
                                future: botesfechaquintuplus(),
                                builder:
                                    (BuildContext context, AsyncSnapshot snapshot) {
                                  if(snapshot.hasData){
                                    String picar = snapshot.data;
                                    if (picar == " " || picar == 'null') {
                                      return const Text(" ");
                                    } else {
                                      var coger = picar.split(" ");
                                      return Column(
                                        children: [
                                          Text(
                                            coger[0].toString(),
                                            style: const TextStyle(
                                                fontSize: 13,
                                                color: Color(0xff565656),
                                                fontFamily: "Monserrat Semibold",
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Text(
                                            coger[1].toUpperCase(),
                                            style: const TextStyle(
                                                fontSize: 6,
                                                color: Color(0xff565656),
                                                fontFamily: "Monserrat Semibold",
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      );
                                    }
                                  }else {
                                    return const SizedBox(
                                      width: 10,
                                      height: 10,
                                      child: Center(
                                        child: CircularProgressIndicator(),
                                      ),
                                    );
                                  }
                                },
                              ),
                            ),
                            onTap: () {},
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
                    height: MediaQuery.of(context).size.height * 0.173,
                    child: Center(
                      child: CarouselSlider(
                        options: CarouselOptions(
                          autoPlay: true,
                          enableInfiniteScroll: true,
                          enlargeCenterPage: true,
                        ),
                        items: imageList
                            .map((e) => ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Stack(
                            fit: StackFit.expand,
                            children: [
                              Image.asset(
                                e,
                                width: 800,
                                height: 150,
                                fit: BoxFit.cover,
                              ),
                            ],
                          ),
                        ))
                            .toList(),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                          child: InkWell(
                            child: Image.asset(
                              'assets/botones/nacional.png',
                              width: 150,
                            ),
                            onTap: () {
                              Navigator.pushNamed(context, '/resultln');
                            },
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                          child: InkWell(
                            child: Image.asset(
                              'assets/botones/primitiva.png',
                              width: 150,
                            ),
                            onTap: () {
                              Navigator.pushNamed(context, '/resultlapr');
                            },
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                          child: InkWell(
                            child: Image.asset(
                              'assets/botones/euromillones.png',
                              width: 150,
                            ),
                            onTap: () {
                              Navigator.pushNamed(context, '/resultem');
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                          child: InkWell(
                            child: Image.asset(
                              'assets/botones/quiniela.png',
                              width: 150,
                            ),
                            onTap: () {
                              Navigator.pushNamed(context, '/resultqn');
                            },
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                          child: InkWell(
                            child: Image.asset(
                              'assets/botones/gordo.png',
                              //color: euromillones,
                              width: 150,
                            ),
                            onTap: () {
                              Navigator.pushNamed(context, '/resultgordo');
                            },
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                          child: InkWell(
                            child: Image.asset(
                              'assets/botones/lototurf.png',
                              //color: euromillones,
                              width: 150,
                            ),
                            onTap: () {
                              Navigator.pushNamed(context, '/resultlotosurf');
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                          child: InkWell(
                            child: Image.asset(
                              'assets/botones/quinigol.png',
                              width: 150,
                            ),
                            onTap: () {
                              Navigator.pushNamed(context, '/resultqgol');
                            },
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                          child: InkWell(
                            child: Image.asset(
                              'assets/botones/bonoloto.png',
                              //color: euromillones,
                              width: 150,
                            ),
                            onTap: () {
                              Navigator.pushNamed(context, '/resultbono');
                            },
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                          child: InkWell(
                            child: Image.asset(
                              'assets/botones/quinqueplus.png',
                              //color: euromillones,
                              width: 150,
                            ),
                            onTap: () {
                              Navigator.pushNamed(context, '/resultqp');
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                          child: InkWell(
                            child: Image.asset(
                              'assets/botones/resultados.png',
                              //color: euromillones,
                              width: 150,
                            ),
                            onTap: () {
                              Navigator.pushNamed(context, '/resultadosg');
                            },
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                          child: InkWell(
                            child: Image.asset(
                              'assets/botones/botes-activos.png',
                              //color: euromillones,
                              width: 150,
                            ),
                            onTap: () {
                              Navigator.pushNamed(context, '/resultbono');
                            },
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                          child: InkWell(
                            child: Image.asset(
                              'assets/botones/clasif-lfp.png',
                              //color: euromillones,
                              width: 150,
                            ),
                            onTap: () {
                              Navigator.pushNamed(context, '/resultbono');
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                        // padding: const EdgeInsets.all(25),
                        child: InkWell(
                          child: Image.asset(
                            'assets/botones/num-sonado.png',
                            //color: euromillones,
                            //width: 50,
                            height: 37,
                          ),
                          onTap: () {

                          },
                        ),
                      ),
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                  ),
                  Container(height: 25, color: Colors.blue, child: marquee()),
                ],
              ),
            ),
          ),
        ),
      ))
          .toList(),
    );
  }

  Widget marquee() {
    return Marquee(
      text: "//" + ' Cintillo Informativo ' + "//" + " Cintillo Informativo",
      style: const TextStyle(fontWeight: FontWeight.bold),
      scrollAxis: Axis.horizontal,
      crossAxisAlignment: CrossAxisAlignment.end,
      blankSpace: 10.0,
      velocity: 100.0,
      //pauseAfterRound: const Duration(seconds: 1),
      startPadding: 10.0,
      accelerationDuration: const Duration(seconds: 1),
      accelerationCurve: Curves.linear,
      decelerationDuration: const Duration(milliseconds: 300),
      decelerationCurve: Curves.easeOut,
    );
  }

  @override
  void dispose() {
    super.dispose();
  }

  Widget _buildchild(AsyncSnapshot snapshot, String euro) {
    if ("${snapshot.data}" == 'null') {
      return Text(
        "0" "$euro",
        style: const TextStyle(
            fontFamily: 'Monserrat SemiBold',
            fontWeight: FontWeight.w700,
            color: Color(0xFFB81515),
            fontSize: 15),
      );
    } else {
      return Text(
        "${snapshot.data}" "$euro",
        style: const TextStyle(
            fontFamily: 'Monserrat SemiBold',
            fontWeight: FontWeight.w700,
            color: Color(0xFFB81515),
            fontSize: 15),
      );
    }
  }
}
