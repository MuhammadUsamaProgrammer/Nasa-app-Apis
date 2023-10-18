import 'dart:convert';

import '../model/nasa_App_Model.dart';
import 'package:http/http.dart' as http;

class NASAAppViewModel {
  final String apiKey;

  NASAAppViewModel({
    this.apiKey = '4E7Zj3Hz1DNEJuA1tWLLatUuEXUtp7k2L4RV5Cwo',
  });

  Future<NasaApp> getNasaApi() async {
    final response = await http.get(Uri.parse(
        'https://api.nasa.gov/mars-photos/api/v1/rovers/curiosity/photos?sol=1000&api_key=$apiKey'));
    var data = jsonDecode(response.body.toString());

    if (response.statusCode == 200) {
      return NasaApp.fromJson(data);
    } else {
      throw Exception('Failed to load data');
    }
  }
}
