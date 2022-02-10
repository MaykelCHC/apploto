import 'dart:convert';

import 'package:http/http.dart' as http;

/*Metodos para obtener la Fecha de los Botes*/

Future<String> botesfechalotnacional() async {
  final response = await http.get(
      Uri.parse(
          "https://www.loteriasyapuestas.es/servicios/proximosv3?game_id=TODOS&num=2"),
      headers: {'Accept': 'application/json'});
  var prize = "";
  var dia = "";
  var disolver, dia_semana;
  var picar = "";

  var data = jsonDecode(response.body);
  for (var i = 0; i < data.length; i++) {
    if ((data[i]["estado"] == 'abierto' && data[i]["premio_bote"] != null) &&
        (data[i]["fecha"] != null && data[i]["game_id"] == "LNAC")) {
      picar = data[i]["fecha"];
      var resultado = picar.split(" ");
      prize = resultado[0];
      disolver = prize.split("-");
      dia = disolver[2];
      dia_semana = data[i]["dia_semana"];
      break;
    }
  }
  dia_semana ??= "";
  return "${dia} " + dia_semana;
}

Future<String> botesfechaeuromill() async {
  final response = await http.get(
      Uri.parse(
          "https://www.loteriasyapuestas.es/servicios/proximosv3?game_id=TODOS&num=2"),
      headers: {'Accept': 'application/json'});
  var prize = "";
  var dia = "";
  var disolver, dia_semana;
  var picar = "";
  var data = jsonDecode(response.body);
  for (var i = 0; i <= data.length; i++) {
    if ((data[i]["estado"] == 'abierto' && data[i]["premio_bote"] != null) &&
        (data[i]["fecha"] != null && data[i]["game_id"] == "EMIL")) {
      picar = data[i]["fecha"];
      var resultado = picar.split(" ");
      prize = resultado[0];
      disolver = prize.split("-");
      dia = disolver[2];
      dia_semana = data[i]["dia_semana"];
      break;
    }
  }
  dia_semana ??= "";
  return "${dia} " + dia_semana;
}

Future<String?> botesfechabonoloto() async {
  final response = await http.get(
      Uri.parse(
          "https://www.loteriasyapuestas.es/servicios/proximosv3?game_id=TODOS&num=2"),
      headers: {'Accept': 'application/json'});
  var prize = "";
  var dia = "";
  var disolver, dia_semana;
  var picar = "";
  var data = jsonDecode(response.body);
  for (var i = 0; i < data.length; i++) {
    if ((data[i]["estado"] == 'abierto' && data[i]["premio_bote"] != null) &&
        (data[i]["fecha"] != null && data[i]["game_id"] == "BONO")) {
      picar = data[i]["fecha"];
      var resultado = picar.split(" ");
      prize = resultado[0];
      disolver = prize.split("-");
      dia = disolver[2];
      dia_semana = data[i]["dia_semana"];
      break;
    }
  }
  dia_semana ??= "";
  return "${dia} " + dia_semana;
}

Future<String?> botesfechalaprimi() async {
  final response = await http.get(
      Uri.parse(
          "https://www.loteriasyapuestas.es/servicios/proximosv3?game_id=TODOS&num=2"),
      headers: {'Accept': 'application/json'});
  var prize = "";
  var dia = "";
  var disolver, dia_semana;
  var picar = "";
  var data = jsonDecode(response.body);
  for (var i = 0; i < data.length; i++) {
    if ((data[i]["estado"] == 'abierto' && data[i]["premio_bote"] != null) &&
        (data[i]["fecha"] != null && data[i]["game_id"] == "LAPR")) {
      picar = data[i]["fecha"];
      var resultado = picar.split(" ");
      prize = resultado[0];
      disolver = prize.split("-");
      dia = disolver[2];
      dia_semana = data[i]["dia_semana"];
      break;
    }
  }
  dia_semana ??= "";
  return "${dia} " + dia_semana;
}

Future<String?> botesfechalaquini() async {
  final response = await http.get(
      Uri.parse(
          "https://www.loteriasyapuestas.es/servicios/proximosv3?game_id=TODOS&num=2"),
      headers: {'Accept': 'application/json'});
  var prize = "";
  var dia = "";
  var disolver, dia_semana;
  var picar = "";

  var data = jsonDecode(response.body);
  for (var i = 0; i < data.length; i++) {
    if ((data[i]["estado"] == 'abierto' && data[i]["premio_bote"] != null) &&
        (data[i]["fecha"] != null && data[i]["game_id"] == "LAQU")) {
      picar = data[i]["fecha"];
      var resultado = picar.split(" ");
      prize = resultado[0];
      disolver = prize.split("-");
      dia = disolver[2];
      dia_semana = data[i]["dia_semana"];
      break;
    }
  }
  dia_semana ??= "";

  return "${dia} " + dia_semana;
}

Future<String?> botesfechaelgordo() async {
  final response = await http.get(
      Uri.parse(
          "https://www.loteriasyapuestas.es/servicios/proximosv3?game_id=TODOS&num=2"),
      headers: {'Accept': 'application/json'});
  var prize = "";
  var dia = "";
  var disolver, dia_semana;
  var picar = "";

  var data = jsonDecode(response.body);
  for (var i = 0; i < data.length; i++) {
    if ((data[i]["estado"] == 'abierto' && data[i]["premio_bote"] != null) &&
        (data[i]["fecha"] != null && data[i]["game_id"] == "ELGR")) {
      picar = data[i]["fecha"];
      var resultado = picar.split(" ");
      prize = resultado[0];
      disolver = prize.split("-");
      dia = disolver[2];
      dia_semana = data[i]["dia_semana"];
    }
  }
  dia_semana ??= "";

  return "${dia} " + dia_semana;
}

Future<String?> botesfechaquinigol() async {
  final response = await http.get(
      Uri.parse(
          "https://www.loteriasyapuestas.es/servicios/proximosv3?game_id=TODOS&num=2"),
      headers: {'Accept': 'application/json'});
  var prize = "";
  var dia = "";
  var disolver, dia_semana;
  var picar = "";

  var data = jsonDecode(response.body);
  for (var i = 0; i < data.length; i++) {
    if ((data[i]["estado"] == 'abierto' && data[i]["premio_bote"] != null) &&
        (data[i]["fecha"] != null && data[i]["game_id"] == "QGOL")) {
      picar = data[i]["fecha"];
      var resultado = picar.split(" ");
      prize = resultado[0];
      disolver = prize.split("-");
      dia = disolver[2];
      dia_semana = data[i]["dia_semana"];
      break;
    }
  }
  dia_semana ??= "";

  return "${dia} " + dia_semana;
}

Future<String?> botesfechalotosurf() async {
  final response = await http.get(
      Uri.parse(
          "https://www.loteriasyapuestas.es/servicios/proximosv3?game_id=TODOS&num=2"),
      headers: {'Accept': 'application/json'});
  var prize = "";
  var dia = "";
  var disolver, dia_semana;
  var picar = "";

  var data = jsonDecode(response.body);
  for (var i = 0; i < data.length; i++) {
    if ((data[i]["estado"] == 'abierto' && data[i]["premio_bote"] != null) &&
        (data[i]["fecha"] != null && data[i]["game_id"] == "LOTU")) {
      picar = data[i]["fecha"];
      var resultado = picar.split(" ");
      prize = resultado[0];
      disolver = prize.split("-");
      dia = disolver[2];
      dia_semana = data[i]["dia_semana"];
      break;
    }
  }
  dia_semana ??= "";

  return "${dia} " + dia_semana;
}

Future<String?> botesfechaquintuplus() async {
  final response = await http.get(
      Uri.parse(
          "https://www.loteriasyapuestas.es/servicios/proximosv3?game_id=TODOS&num=2"),
      headers: {'Accept': 'application/json'});
  var prize = "";
  var dia = "";
  var disolver, dia_semana;
  var picar = "";

  var data = jsonDecode(response.body);
  for (var i = 0; i < data.length; i++) {
    if ((data[i]["estado"] == 'abierto' && data[i]["premio_bote"] != null) &&
        (data[i]["fecha"] != null && data[i]["game_id"] == "QUPL")) {
      picar = data[i]["fecha"];
      var resultado = picar.split(" ");
      prize = resultado[0];
      disolver = prize.split("-");
      dia = disolver[2];
      dia_semana = data[i]["dia_semana"];
      break;
    }
  }
  dia_semana ??= "";

  return "${dia} " + dia_semana;
}
