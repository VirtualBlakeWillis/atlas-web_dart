import 'dart:convert';

import 'package:http/http.dart' as http;


Future<String> printRmCharacters() async {
  try {
    var url = Uri.https('rickandmortyapi.com', '/api/character');
    var response = await http.get(url);

    for (Map character in jsonDecode(response.body)["results"]) {
      print(character["name"]);

    }
    return ("");



  } catch (err) {
    return ("error caught: ${err}");
  }
}