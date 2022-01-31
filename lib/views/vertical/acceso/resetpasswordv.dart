import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:gordo_triana/views/horizontal/acceso/resetpasswordh.dart';
import 'package:gordo_triana/views/vertical/acceso/loginpageportrait.dart';

class ResetPasswordV extends StatefulWidget {
  const ResetPasswordV({Key? key}) : super(key: key);

  @override
  ResetPasswordVState createState() => ResetPasswordVState();
}

class ResetPasswordVState extends State<ResetPasswordV> {
  Color colorfondo = const Color(0xff1a1a1a);
  bool _isLoading = false;
  final formKey = GlobalKey<FormState>();
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final TextEditingController _emailTextController = TextEditingController();
  final FirebaseAuth _auth = FirebaseAuth.instance;

  void _submit() {
    _auth
        .sendPasswordResetEmail(email: _emailTextController.text)
        .then((value) {
      print("Password Cambiado");
      Navigator.pushNamed(context, '/loginv');
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
              body: Column(children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Center(
                    child: Image.asset(
                      'assets/icon/banner.png',
                      width: 150,
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
                                  style: const TextStyle(color: Colors.white),
                                  keyboardType: TextInputType.emailAddress,
                                  decoration: const InputDecoration(
                                    filled: true,
                                    fillColor: Color(0xff2c2b2b),
                                    border: OutlineInputBorder(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(60)),
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
                                    hintText: "Entre el correo",
                                    hintStyle: TextStyle(color: Colors.grey),
                                  ),
                                ),
                                padding:
                                    const EdgeInsets.fromLTRB(50, 0, 50, 0),
                              ),
                              const Padding(
                                padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(50, 0, 50, 0),
                                child: Container(
                                  margin:
                                      const EdgeInsets.fromLTRB(0, 40, 0, 0),
                                  decoration: BoxDecoration(
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(60)),
                                    color: Colors.red,
                                    border: Border.all(
                                        color: Colors.red, width: 3.0),
                                  ),
                                  child: ElevatedButton(
                                    child: const Text(
                                      'Recuperar',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    onPressed: () {
                                      setState(() {
                                        _isLoading = true;
                                      });
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
                                padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Text(
                                    '¿Ya tienes una cuenta?',
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 12),
                                  ),
                                  GestureDetector(
                                    child: const Text(
                                      ' Iniciar Sesion',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    onTap: () {
                                      Navigator.push<dynamic>(
                                        context,
                                        MaterialPageRoute<dynamic>(
                                          builder: (BuildContext context) =>
                                              const LoginPagePortrait(),
                                        ),
                                      );
                                    },
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ]),
            );
          } else {
            return const ResetPasswordH();
          }
        },
      ),
    );
  }
}
