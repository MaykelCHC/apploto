import 'package:flutter/material.dart';
import 'package:gordo_triana/views/vertical/botes/carddecimo.dart';

class BuscarDecimoV extends StatefulWidget {
  const BuscarDecimoV({Key? key}) : super(key: key);

  @override
  BuscarDecimoVState createState() => BuscarDecimoVState();
}

class BuscarDecimoVState extends State<BuscarDecimoV> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Buscar Decimo"),
      ),
      body: const CardDecimo(),
    );
  }
}
