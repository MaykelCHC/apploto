import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:gordo_triana/views/horizontal/acceso/resetpasswordh.dart';
import 'package:gordo_triana/views/vertical/acceso/loginpageportrait.dart';

class LoginPageLandscape extends StatefulWidget {
  const LoginPageLandscape({Key? key}) : super(key: key);

  @override
  LoginPageStateV createState() => LoginPageStateV();
}

class LoginPageStateV extends State<LoginPageLandscape> {
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
      Navigator.pushNamed(context, '/');
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
            return const LoginPagePortrait();
          } else {
            return Scaffold(
              key: scaffoldKey,
              body: Column(
                children: <Widget>[
                  Expanded(
                    child: Center(
                      child: Image.asset(
                        'assets/icon/banner.png',
                        width: 100,
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
                                      const EdgeInsets.fromLTRB(200, 0, 200, 0),
                                ),
                                const Padding(
                                  padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
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
                                      const EdgeInsets.fromLTRB(200, 0, 200, 0),
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
                                        fontWeight: FontWeight.bold
                                      ),
                                    ),
                                  ),
                                  onTap: () {
                                    Navigator.pushNamed(context, '/reseth');
                                  },
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(200, 0, 200, 0),
                                  child: Container(
                                    margin:
                                        const EdgeInsets.fromLTRB(0, 40, 0, 20),
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
          }
        },
      ),
    );
  }
}
