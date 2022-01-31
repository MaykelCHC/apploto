import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gordo_triana/views/horizontal/acceso/loginpagelandscape.dart';

class LoginPagePortrait extends StatefulWidget {
  const LoginPagePortrait({Key? key}) : super(key: key);

  @override
  LoginPageStateH createState() => LoginPageStateH();
}

class LoginPageStateH extends State<LoginPagePortrait> {
  final TextEditingController _emailTextController = TextEditingController();
  final TextEditingController _passwordTextController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  void initState() {
    super.initState();
  }

  void _submit() {
    _auth
        .signInWithEmailAndPassword(
            email: _emailTextController.text,
            password: _passwordTextController.text)
        .then((value) {
      Navigator.pushNamed(context, '/botesv');
    }).onError((error, stackTrace) {
      print("Error ${error.toString()}");
    });
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: OrientationBuilder(
        builder: (context, orientation) {
          if (orientation == Orientation.portrait) {
            return Scaffold(
              key: scaffoldKey,
              body: Column(
                children: <Widget>[
                  Expanded(
                    child: Center(
                      child: Image.asset(
                        'assets/icon/banner.png',
                        width: 200,
                      ),
                    ),
                  ),
                  Form(
                    key: formKey,
                    child: Expanded(
                      child: Column(
                        children: <Widget>[
                          Expanded(
                            child: ListView(
                              shrinkWrap: true,
                              scrollDirection: Axis.vertical,
                              children: [
                                Container(
                                  child: TextFormField(
                                    controller: _emailTextController,
                                    keyboardType: TextInputType.emailAddress,
                                    style: const TextStyle(color: Colors.white),
                                    decoration: const InputDecoration(
                                      filled: true,
                                      fillColor: Color(0xff2c2b2b),
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(60)),
                                        borderSide: BorderSide(
                                            width: 2, style: BorderStyle.solid),
                                      ),
                                      prefixIcon: Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(20, 0, 10, 0),
                                        child: Icon(
                                          Icons.email,
                                          color: Colors.red,
                                          size: 35,
                                        ),
                                      ),
                                      hintText: "Entre su correo",
                                      hintStyle: TextStyle(color: Colors.grey),
                                    ),
                                  ),
                                  padding:
                                      const EdgeInsets.fromLTRB(50, 0, 50, 0),
                                ),
                                const Padding(
                                  padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                                ),
                                Container(
                                  child: TextFormField(
                                    controller: _passwordTextController,
                                    style: const TextStyle(color: Colors.white),
                                    decoration: const InputDecoration(
                                      filled: true,
                                      fillColor: Color(0xff2c2b2b),
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(60)),
                                        borderSide: BorderSide(
                                            width: 2, style: BorderStyle.solid),
                                      ),
                                      prefixIcon: Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(20, 0, 10, 0),
                                        child: Icon(
                                          Icons.lock,
                                          color: Colors.red,
                                          size: 35,
                                        ),
                                      ),
                                      hintText: "Inserta tu contraseña",
                                      hintStyle: TextStyle(color: Colors.grey),
                                    ),
                                    obscureText: true,
                                    keyboardType: TextInputType.visiblePassword,
                                  ),
                                  padding:
                                      const EdgeInsets.fromLTRB(50, 0, 50, 0),
                                ),
                                const Padding(
                                  padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                                ),
                                GestureDetector(
                                  child: const Center(
                                    child: Text(
                                      '¿Olvidaste tu contraseña?',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  onTap: () {
                                    Navigator.pushNamed(context, '/resetv');
                                  },
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(50, 0, 50, 0),
                                  child: Container(
                                    margin:
                                        const EdgeInsets.fromLTRB(0, 40, 0, 0),
                                    width: MediaQuery.of(context).size.width,
                                    decoration: BoxDecoration(
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(60)),
                                      color: Colors.red,
                                      border: Border.all(
                                          color: Colors.red, width: 3.0),
                                    ),
                                    child: ElevatedButton(
                                      child: const Text(
                                        'Entrar',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      onPressed: () {
                                        _submit();
                                      },
                                      style: ButtonStyle(
                                        backgroundColor:
                                            MaterialStateProperty.all(
                                                Colors.transparent),
                                        shadowColor: MaterialStateProperty.all(
                                            Colors.transparent),
                                      ),
                                    ),
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            );
          } else {
            return const LoginPageLandscape();
          }
        },
      ),
    );
  }
}
