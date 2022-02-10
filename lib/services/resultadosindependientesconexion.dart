import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';

/*Metodos de los Resultados de los Sorteos Independientes*/

final fechaactual = DateTime.now();

Future<List> resultindplotnacional() async {
  DateFormat dateFormat = DateFormat('yyyy-MM-dd');
  String picar = dateFormat.format(fechaactual);
  var datos = picar.split("-");
  var fechaFinal = datos[0] + datos[1] + datos[2];
  String fechaInicial = '20220101';
  String ln =
      "https://www.loteriasyapuestas.es/servicios/buscadorSorteos?game_id=LNAC&celebrados=true&fechaInicioInclusiva=$fechaInicial&fechaFinInclusiva=$fechaFinal";

  final response =
      await http.get(Uri.parse(ln), headers: {'Accept': 'application/json'});
  print(response.statusCode);
  if (response.statusCode == 200) {
    var data = jsonDecode(response.body);
    return data;
  } else {
    return throw Exception;
  }
}

Future<List> resultindpeuromillo() async {
  DateFormat dateFormat = DateFormat('yyyy-MM-dd');
  String picar = dateFormat.format(fechaactual);
  var datos = picar.split("-");
  var fechaFinal = datos[0] + datos[1] + datos[2];
  String fechaInicial = '20220101';
  String ln =
      "https://www.loteriasyapuestas.es/servicios/buscadorSorteos?game_id=EMIL&celebrados=true&fechaInicioInclusiva=$fechaInicial&fechaFinInclusiva=$fechaFinal";

  final response =
      await http.get(Uri.parse(ln), headers: {'Accept': 'application/json'});
  print(response.statusCode);
  if (response.statusCode == 200) {
    var data = jsonDecode(response.body);
    return data;
  } else {
    return throw Exception;
  }
}

Future<List> resultindplaprimi() async {
  DateFormat dateFormat = DateFormat('yyyy-MM-dd');
  String picar = dateFormat.format(fechaactual);
  var datos = picar.split("-");
  var fechaFinal = datos[0] + datos[1] + datos[2];
  String fechaInicial = '20220101';
  String ln =
      "https://www.loteriasyapuestas.es/servicios/buscadorSorteos?game_id=LAPR&celebrados=true&fechaInicioInclusiva=$fechaInicial&fechaFinInclusiva=$fechaFinal";

  final response =
      await http.get(Uri.parse(ln), headers: {'Accept': 'application/json'});
  print(response.statusCode);
  if (response.statusCode == 200) {
    var data = jsonDecode(response.body);
    return data;
  } else {
    return throw Exception;
  }
}

Future<List> resultindpbonoloto() async {
  DateFormat dateFormat = DateFormat('yyyy-MM-dd');
  String picar = dateFormat.format(fechaactual);
  var datos = picar.split("-");
  var fechaFinal = datos[0] + datos[1] + datos[2];
  String fechaInicial = '20220101';
  String ln =
      "https://www.loteriasyapuestas.es/servicios/buscadorSorteos?game_id=BONO&celebrados=true&fechaInicioInclusiva=$fechaInicial&fechaFinInclusiva=$fechaFinal";

  final response =
      await http.get(Uri.parse(ln), headers: {'Accept': 'application/json'});
  print(response.statusCode);
  if (response.statusCode == 200) {
    var data = jsonDecode(response.body);
    return data;
  } else {
    return throw Exception;
  }
}

Future<List> resultindpelgordo() async {
  DateFormat dateFormat = DateFormat('yyyy-MM-dd');
  String picar = dateFormat.format(fechaactual);
  var datos = picar.split("-");
  var fechaFinal = datos[0] + datos[1] + datos[2];
  String fechaInicial = '20220101';
  String ln =
      "https://www.loteriasyapuestas.es/servicios/buscadorSorteos?game_id=ELGR&celebrados=true&fechaInicioInclusiva=$fechaInicial&fechaFinInclusiva=$fechaFinal";

  final response =
      await http.get(Uri.parse(ln), headers: {'Accept': 'application/json'});
  print(response.statusCode);
  if (response.statusCode == 200) {
    var data = jsonDecode(response.body);
    return data;
  } else {
    return throw Exception;
  }
}

Future<List> resultindplaquini() async {
  DateFormat dateFormat = DateFormat('yyyy-MM-dd');
  String picar = dateFormat.format(fechaactual);
  var datos = picar.split("-");
  var fechaFinal = datos[0] + datos[1] + datos[2];
  String fechaInicial = '20220101';
  String ln =
      "https://www.loteriasyapuestas.es/servicios/buscadorSorteos?game_id=LAQU&celebrados=true&fechaInicioInclusiva=$fechaInicial&fechaFinInclusiva=$fechaFinal";

  final response =
      await http.get(Uri.parse(ln), headers: {'Accept': 'application/json'});
  print(response.statusCode);
  if (response.statusCode == 200) {
    var data = jsonDecode(response.body);
    return data;
  } else {
    return throw Exception;
  }
}

Future<List> resultindplotosurf() async {
  DateFormat dateFormat = DateFormat('yyyy-MM-dd');
  String picar = dateFormat.format(fechaactual);
  var datos = picar.split("-");
  var fechaFinal = datos[0] + datos[1] + datos[2];
  String fechaInicial = '20220101';
  String ln =
      "https://www.loteriasyapuestas.es/servicios/buscadorSorteos?game_id=LOTU&celebrados=true&fechaInicioInclusiva=$fechaInicial&fechaFinInclusiva=$fechaFinal";

  final response =
      await http.get(Uri.parse(ln), headers: {'Accept': 'application/json'});
  print(response.statusCode);
  if (response.statusCode == 200) {
    var data = jsonDecode(response.body);
    return data;
  } else {
    return throw Exception;
  }
}

Future<List> resultindpelquini() async {
  DateFormat dateFormat = DateFormat('yyyy-MM-dd');
  String picar = dateFormat.format(fechaactual);
  var datos = picar.split("-");
  var fechaFinal = datos[0] + datos[1] + datos[2];
  String fechaInicial = '20220101';
  String ln =
      "https://www.loteriasyapuestas.es/servicios/buscadorSorteos?game_id=QGOL&celebrados=true&fechaInicioInclusiva=$fechaInicial&fechaFinInclusiva=$fechaFinal";

  final response =
      await http.get(Uri.parse(ln), headers: {'Accept': 'application/json'});
  print(response.statusCode);
  if (response.statusCode == 200) {
    var data = jsonDecode(response.body);
    return data;
  } else {
    return throw Exception;
  }
}

Future<List> resultindpquinplus() async {
  DateFormat dateFormat = DateFormat('yyyy-MM-dd');
  String picar = dateFormat.format(fechaactual);
  var datos = picar.split("-");
  var fechaFinal = datos[0] + datos[1] + datos[2];
  String fechaInicial = '20220101';
  String ln =
      "https://www.loteriasyapuestas.es/servicios/buscadorSorteos?game_id=QUPL&celebrados=true&fechaInicioInclusiva=$fechaInicial&fechaFinInclusiva=$fechaFinal";

  final response =
      await http.get(Uri.parse(ln), headers: {'Accept': 'application/json'});
  print(response.statusCode);
  if (response.statusCode == 200) {
    var data = jsonDecode(response.body);
    return data;
  } else {
    return throw Exception;
  }
}
