import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:gordo_triana/views/horizontal/acceso/loginpagelandscape.dart';
import 'package:gordo_triana/views/horizontal/acceso/resetpasswordh.dart';
import 'package:gordo_triana/views/horizontal/botes/botes.dart';
import 'package:gordo_triana/views/vertical/acceso/loginpageportrait.dart';
import 'package:gordo_triana/views/vertical/acceso/resetpasswordv.dart';
import 'package:gordo_triana/views/vertical/botes/botes.dart';
import 'package:gordo_triana/views/vertical/resultados/comprobar_egp.dart';
import 'package:gordo_triana/views/vertical/resultados/comprobar_em.dart';
import 'package:gordo_triana/views/vertical/resultados/comprobar_ln.dart';
import 'package:gordo_triana/views/vertical/resultados/comprobar_lp.dart';
import 'package:gordo_triana/views/vertical/resultados/comprobar_lq.dart';
import 'package:gordo_triana/views/vertical/resultados/comprobar_lsf.dart';
import 'package:gordo_triana/views/vertical/resultados/comprobar_q.dart';
import 'package:gordo_triana/views/vertical/resultados/comprobar_qp.dart';
import 'package:gordo_triana/views/vertical/resultados/comprobarbonol.dart';
import 'package:gordo_triana/views/vertical/resultados/resultado.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: OrientationBuilder(
        builder: (context, orientation) {
          if (orientation == Orientation.portrait) {
            return const LoginPagePortrait();
          } else {
            return const LoginPageLandscape();
          }
        },
      ),
      routes: <String, WidgetBuilder>{
        '/botesv': (BuildContext context) => const BotesPageV(),
        '/loginv': (BuildContext context) => const LoginPagePortrait(),
        '/loginh': (BuildContext context) => const LoginPageLandscape(),
        '/resetv': (BuildContext context) => const ResetPasswordV(),
        '/reseth': (BuildContext context) => const ResetPasswordH(),
        '/botesh': (BuildContext context) => BotesPageH(),
        '/resultln': (BuildContext context) => const ResultadoLoteriaNacionalV(),
        '/resultem': (BuildContext context) => const ResultadoEuroMillonV(),
        '/resultlapr': (BuildContext context) => const ResultadoLaPrimitivaV(),
        '/resultbono': (BuildContext context) => const ResultadoBonoLotoV(),
        '/resultgordo': (BuildContext context) => const ResultadoElGordoV(),
        '/resultlotosurf': (BuildContext context) => const ResultadoLotoSurfV(),
        '/resultqn': (BuildContext context) => const ResultadoLaQuinielaV(),
        '/resultqp': (BuildContext context) => const ResultadoQuintuplePlusV(),
        '/resultqgol': (BuildContext context) => const ResultadoQuinigolV(),
        '/resultadosg': (BuildContext context) => const ResultadosGeneralesV(),
        '/resultclasificacion': (BuildContext context) => const ResultadoLaQuinielaV(),
        '/buscardecimo': (BuildContext context) => const ResultadoLaQuinielaV(),
      },
    );
  }
}
