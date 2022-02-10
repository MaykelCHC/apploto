import 'dart:convert';

import 'package:http/http.dart' as http;

/*Metodos de los Botes de los Sorteos*/

Future<String> botesprecioslotnacional() async {
  final response = await http.get(
      Uri.parse(
          "https://www.loteriasyapuestas.es/servicios/proximosv3?game_id=TODOS&num=2"),
      headers: {'Accept': 'application/json'});
  var prize;
  if (response.statusCode == 200) {
    var data = jsonDecode(response.body);
    for (var i = 0; i <= data.length; i++) {
      if ((data[i]["estado"] == 'abierto' && data[i]["premio_bote"] != null) &&
          (data[i]["fecha"] != null && data[i]["game_id"] == "LNAC")) {
        prize = data[i]["premio_bote"];
        break;
      } else if (data[i]["primer_premio"] != null) {
        prize = data[i]["primer_premio"];
        break;
      } else if (data[i]["premio_especial"] != null) {
        prize = data[i]["premio_especial"];
      }
    }
    prize ??= 0;
  }
  return prize;
}

Future<String> botesprecioslapr() async {
  final response = await http.get(
      Uri.parse(
          "https://www.loteriasyapuestas.es/servicios/proximosv3?game_id=TODOS&num=2"),
      headers: {'Accept': 'application/json'});
  var prize;
  if (response.statusCode == 200) {
    var data = jsonDecode(response.body);
    for (var i = 0; i <= data.length; i++) {
      if ((data[i]["estado"] == 'abierto' && data[i]["premio_bote"] != null) &&
          (data[i]["fecha"] != null && data[i]["game_id"] == "LAPR")) {
        prize = data[i]["premio_bote"];
        break;
      }
    }
    prize ??= 0;
  }
  return prize;
}

Future<String> botespreciosemil() async {
  final response = await http.get(
      Uri.parse(
          "https://www.loteriasyapuestas.es/servicios/proximosv3?game_id=TODOS&num=2"),
      headers: {'Accept': 'application/json'});
  var prize;

  if (response.statusCode == 200) {
    var data = jsonDecode(response.body);
    for (var i = 0; i <= data.length; i++) {
      if ((data[i]["estado"] == 'abierto' && data[i]["premio_bote"] != null) &&
          (data[i]["fecha"] != null && data[i]["game_id"] == "EMIL")) {
        prize = data[i]["premio_bote"];
        break;
      }
    }
    prize ??= 0;
  }
  return prize;
}

Future<String> botespreciosbonoloto() async {
  final response = await http.get(
      Uri.parse(
          "https://www.loteriasyapuestas.es/servicios/proximosv3?game_id=TODOS&num=2"),
      headers: {'Accept': 'application/json'});
  var prize;

  if (response.statusCode == 200) {
    var data = jsonDecode(response.body);
    for (var i = 0; i <= data.length; i++) {
      if ((data[i]["estado"] == 'abierto' && data[i]["premio_bote"] != null) &&
          (data[i]["fecha"] != null && data[i]["game_id"] == "BONO")) {
        prize = data[i]["premio_bote"];
        break;
      }
    }
    prize ??= 0;
  }
  return prize;
}

Future<String> botesprecioselgordo() async {
  final response = await http.get(
      Uri.parse(
          "https://www.loteriasyapuestas.es/servicios/proximosv3?game_id=TODOS&num=2"),
      headers: {'Accept': 'application/json'});
  var prize;
  if (response.statusCode == 200) {
    var data = jsonDecode(response.body);
    for (var i = 0; i <= data.length; i++) {
      if ((data[i]["estado"] == 'abierto' && data[i]["premio_bote"] != null) &&
          (data[i]["fecha"] != null && data[i]["game_id"] == "ELGR")) {
        prize = data[i]["premio_bote"];
        break;
      }
    }
    prize ??= 0;
  }
  return prize;
}

Future<String> botesprecioslaqui() async {
  final response = await http.get(
      Uri.parse(
          "https://www.loteriasyapuestas.es/servicios/proximosv3?game_id=TODOS&num=2"),
      headers: {'Accept': 'application/json'});
  var prize;
  if (response.statusCode == 200) {
    var data = jsonDecode(response.body);
    for (var i = 0; i <= data.length; i++) {
      if ((data[i]["estado"] == 'abierto' && data[i]["premio_bote"] != null) &&
          (data[i]["fecha"] != null && data[i]["game_id"] == "LAQU")) {
        prize = data[i]["premio_bote"];
        break;
      }
    }
    prize ??= 0;
  }
  return prize;
}

Future<String> botesprecioslotosurf() async {
  final response = await http.get(
      Uri.parse(
          "https://www.loteriasyapuestas.es/servicios/proximosv3?game_id=TODOS&num=2"),
      headers: {'Accept': 'application/json'});
  var prize;
  if (response.statusCode == 200) {
    var data = jsonDecode(response.body);
    for (var i = 0; i <= data.length; i++) {
      if ((data[i]["estado"] == 'abierto' && data[i]["premio_bote"] != null) &&
          (data[i]["fecha"] != null && data[i]["game_id"] == "LOTU")) {
        prize = data[i]["premio_bote"];
        break;
      }
    }
    prize ??= 0;
  }
  return prize;
}

Future<String> botesprecioselquini() async {
  final response = await http.get(
      Uri.parse(
          "https://www.loteriasyapuestas.es/servicios/proximosv3?game_id=TODOS&num=2"),
      headers: {'Accept': 'application/json'});
  var prize;
  if (response.statusCode == 200) {
    var data = jsonDecode(response.body);
    for (var i = 0; i <= data.length; i++) {
      if ((data[i]["estado"] == 'abierto' && data[i]["premio_bote"] != null) &&
          (data[i]["fecha"] != null && data[i]["game_id"] == "QGOL")) {
        prize = data[i]["premio_bote"];
        break;
      }
    }
    prize ??= 0;
  }
  return prize;
}

Future<String> botespreciosquinplus() async {
  final response = await http.get(
      Uri.parse(
          "https://www.loteriasyapuestas.es/servicios/proximosv3?game_id=TODOS&num=2"),
      headers: {'Accept': 'application/json'});
  var prize;
  if (response.statusCode == 200) {
    var data = jsonDecode(response.body);
    for (var i = 0; i <= data.length; i++) {
      if ((data[i]["estado"] == 'abierto' && data[i]["premio_bote"] != null) &&
          (data[i]["fecha"] != null && data[i]["game_id"] == "QUPL")) {
        prize = data[i]["premio_bote"];
        break;
      }
    }
    prize ??= 0;
  }
  return prize;
}
