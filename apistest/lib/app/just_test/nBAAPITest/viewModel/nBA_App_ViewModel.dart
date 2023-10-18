import 'dart:convert';

import '../model/nBA_App_Model.dart';
import 'package:http/http.dart' as http;

class NBAAppViewModel {
  Future<NbaApp> getNbaApi() async {
    final response =
        await http.get(Uri.parse('https://www.balldontlie.io/api/v1/players'));
    var data = jsonDecode(response.body.toString());

    if (response.statusCode == 200) {
      return NbaApp.fromJson(data);
    } else
      return NbaApp.fromJson(data);
  }
}
