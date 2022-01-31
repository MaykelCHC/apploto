import 'dart:ui';

import 'package:chewie/chewie.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gordo_triana/services/conexion.dart';
import 'package:gordo_triana/styles/estilos_app.dart';
import 'package:marquee/marquee.dart';
import 'package:video_player/video_player.dart';

class BotesPageV extends StatefulWidget {
  const BotesPageV({Key? key}) : super(key: key);

  @override
  BotesPageVState createState() => BotesPageVState();
}

class BotesPageVState extends State<BotesPageV> {
  late VideoPlayerController _controller;
  late ChewieController _chewieController;

  @override
  void initState() {
    super.initState();
    initializeVideoPlayer();
  }

  Future<void> initializeVideoPlayer() async {
    _controller = VideoPlayerController.asset('assets/conv1.mp4');

    await Future.wait([_controller.initialize()]);

    _chewieController = ChewieController(
        videoPlayerController: _controller,
        looping: true,
        aspectRatio: 16 / 9,
        autoInitialize: true,
        errorBuilder: (context, errorMessage) {
          return Center(
              child: Text(
            errorMessage,
            style: const TextStyle(color: Colors.white),
          ));
        });


  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        body: SizedBox(
          width: MediaQuery.of(context).size.width,
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
                    Container(
                      margin: const EdgeInsets.fromLTRB(25, 10, 25, 0),
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 3),
                      decoration: const BoxDecoration(
                          border:
                              Border(bottom: BorderSide(color: Colors.black))),
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: SvgPicture.asset(
                              'assets/images/nacional-h.svg',
                              color: loterianacional,
                              width: 150,
                            ),
                          ),
                          Expanded(
                            child: Container(
                              margin: const EdgeInsets.fromLTRB(50, 0, 0, 0),
                              child: const Text(
                                '0 ' ' €',
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
                                fechaLN();
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(25, 5, 25, 0),
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 3),
                      decoration: const BoxDecoration(
                        border: Border(
                          bottom: BorderSide(color: Colors.black),
                        ),
                      ),
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: SvgPicture.asset(
                              'assets/images/euromillones-h.svg',
                              color: euromillones,
                              width: 110,
                              alignment: Alignment.topLeft,
                            ),
                          ),
                          Expanded(
                            child: Container(
                              margin: const EdgeInsets.fromLTRB(50, 0, 0, 0),
                              child: const Text(
                                '0 ' ' €',
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
                    Container(
                      margin: const EdgeInsets.fromLTRB(25, 5, 25, 0),
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 3),
                      decoration: const BoxDecoration(
                        border: Border(
                          bottom: BorderSide(color: Colors.black),
                        ),
                      ),
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: SvgPicture.asset(
                              'assets/images/bonoloto-h.svg',
                              color: bonoloto,
                              width: 90,
                              alignment: Alignment.topLeft,
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
                    Container(
                      margin: const EdgeInsets.fromLTRB(25, 5, 25, 0),
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 3),
                      decoration: const BoxDecoration(
                        border: Border(
                          bottom: BorderSide(color: Colors.black),
                        ),
                      ),
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: SvgPicture.asset(
                              'assets/images/primitiva-h.svg',
                              color: laprimitiva,
                              width: 100,
                              alignment: Alignment.topLeft,
                            ),
                          ),
                          Expanded(
                            child: Container(
                              margin: const EdgeInsets.fromLTRB(50, 0, 0, 0),
                              child: const Text(
                                '0 ' ' €',
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
                    Container(
                      margin: const EdgeInsets.fromLTRB(25, 5, 25, 0),
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 3),
                      decoration: const BoxDecoration(
                        border: Border(
                          bottom: BorderSide(color: Colors.black),
                        ),
                      ),
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: SvgPicture.asset(
                              'assets/images/quiniela.svg',
                              color: laquiniela,
                              width: 100,
                              alignment: Alignment.topLeft,
                            ),
                          ),
                          Expanded(
                            child: Container(
                              margin: const EdgeInsets.fromLTRB(50, 0, 0, 0),
                              child: const Text(
                                '0 ' ' €',
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
                    Container(
                      margin: const EdgeInsets.fromLTRB(25, 5, 25, 0),
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 3),
                      decoration: const BoxDecoration(
                        border: Border(
                          bottom: BorderSide(color: Colors.black),
                        ),
                      ),
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: SvgPicture.asset(
                              'assets/images/gordo-h.svg',
                              color: elgordo,
                              width: 85,
                              alignment: Alignment.topLeft,
                            ),
                          ),
                          Expanded(
                            child: Container(
                              margin: const EdgeInsets.fromLTRB(50, 0, 0, 0),
                              child: const Text(
                                '0 ' ' €',
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
                    Container(
                      margin: const EdgeInsets.fromLTRB(25, 5, 25, 0),
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 3),
                      decoration: const BoxDecoration(
                        border: Border(
                          bottom: BorderSide(color: Colors.black),
                        ),
                      ),
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: SvgPicture.asset(
                              'assets/images/quinigol-h.svg',
                              color: quinigol,
                              width: 85,
                              alignment: Alignment.topLeft,
                            ),
                          ),
                          Expanded(
                            child: Container(
                              margin: const EdgeInsets.fromLTRB(50, 0, 0, 0),
                              child: const Text(
                                '0 ' ' €',
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
                    Container(
                      margin: const EdgeInsets.fromLTRB(25, 5, 25, 0),
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 3),
                      decoration: const BoxDecoration(
                        border: Border(
                          bottom: BorderSide(color: Colors.black),
                        ),
                      ),
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: SvgPicture.asset(
                              'assets/images/lototurf-h.svg',
                              color: lotosurf,
                              width: 85,
                              alignment: Alignment.topLeft,
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
                    Container(
                      margin: const EdgeInsets.fromLTRB(25, 5, 25, 0),
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 3),
                      decoration: const BoxDecoration(
                        border: Border(
                          bottom: BorderSide(color: Colors.black),
                        ),
                      ),
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: SvgPicture.asset(
                              'assets/images/quintuple-h.svg',
                              color: quinqueplus,
                              width: 115,
                              alignment: Alignment.topLeft,
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
                    Container(
                      padding: const EdgeInsets.fromLTRB(5, 5, 5, 5),
                      width: double.infinity,
                      height: 170.0,
                      child: Center(child: _chewieController != null && _chewieController.videoPlayerController.value.isInitialized ? Chewie(
                        controller: _chewieController,
                      ):Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          CircularProgressIndicator(),
                          SizedBox(height: 20),
                          Text('Loading'),
                        ],
                      ),)
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                            child: InkWell(
                              child: Image.asset(
                                'assets/botones/nacional.png',
                                //color: euromillones,
                                width: 150,
                              ),
                              onTap: () {},
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                            child: InkWell(
                              child: Image.asset(
                                'assets/botones/primitiva.png',
                                //color: euromillones,
                                width: 150,
                              ),
                              onTap: () {},
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                            child: InkWell(
                              child: Image.asset(
                                'assets/botones/euromillones.png',
                                //color: euromillones,
                                width: 150,
                              ),
                              onTap: () {},
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
                                //color: euromillones,
                                width: 150,
                              ),
                              onTap: () {},
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
                              onTap: () {},
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
                              onTap: () {},
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
                                //color: euromillones,
                                width: 150,
                              ),
                              onTap: () {},
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
                              onTap: () {},
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
                              onTap: () {},
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
                              onTap: () {},
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
                              onTap: () {},
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
                              onTap: () {},
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
                            onTap: () {},
                          ),
                        ),
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                    ),
                  ],
                ),
              ),
              Container(height: 25, color: Colors.blue, child: marquee()),
            ],
          ),
        ),
      ),
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
    // Asegúrate de hacer dispose del VideoPlayerController para liberar los recursos
    _controller.dispose();
    _chewieController.dispose();
    super.dispose();
  }
}
