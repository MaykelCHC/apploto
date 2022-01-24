import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:xml2json/xml2json.dart';

final Xml2Json xml2json = Xml2Json();

Future fechaLN() async {
  try {
    final response = await http.get(Uri.parse(
        'https://www.loteriasyapuestas.es/es/loteria-nacional/.formatoRSS'));

    if (response.statusCode == 200) {
      xml2json.parse(response.body);
      var jsondata = xml2json.toGData();
      var data = json.decode(jsondata);

      String s = data['rss']['channel']['item'][0]['pubDate'].toString();
      var idx = s.split(":");
      //List parts = [s.substring(0,idx).trim(), s.substring(idx+1).trim()];
      print(idx[1]);

      return data['rss']['channel']['item'][0]['pubDate'];
    }
  } catch (e) {
    print('Fallo en cargar la fecha');
  }
}
