import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:gordo_triana/views/horizontal/acceso/loginpagelandscape.dart';
import 'package:gordo_triana/views/horizontal/acceso/resetpasswordh.dart';
import 'package:gordo_triana/views/vertical/acceso/loginpageportrait.dart';
import 'package:gordo_triana/views/vertical/acceso/resetpasswordv.dart';
import 'package:gordo_triana/views/vertical/botes/botes.dart';

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
        //'/botesh': (BuildContext context) => const BotesPageH(),
        // '/history': (BuildContext context) => HistoriasPage(),
        // '/perfil': (BuildContext context) => PerfilPage(),
        // '/notificaciones': (BuildContext context) => NotificationsPage(),
        // '/chat': (BuildContext context) => Chat(),
        // '/mensajes': (BuildContext context) => Mensajes(),
      },
    );
  }
}
