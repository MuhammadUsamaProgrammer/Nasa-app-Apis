import 'dart:convert';
import 'package:http/http.dart' as http;
import '../model/Picture_Of_The_Day_Model.dart';

class PictureOfTheDayViewModel {
  final String api;
  final String apiKey;

  PictureOfTheDayViewModel({
    this.api = 'https://api.nasa.gov/planetary/apod?',
    this.apiKey = '4E7Zj3Hz1DNEJuA1tWLLatUuEXUtp7k2L4RV5Cwo',
  });

  Future<PictureOfTheDayModel> getPictureOfTheDayApi(
      DateTime selectedDate) async {
    String date =
        '${selectedDate.year}-${selectedDate.month}-${selectedDate.day}';
    print(date);
    final response =
        await http.get(Uri.parse('${api}api_key=${apiKey}&date=${date}'));
    var data = jsonDecode(response.body.toString());

    if (response.statusCode == 200) {
      return PictureOfTheDayModel.fromJson(data);
    } else {
      throw Exception('Failed to load data');
    }
  }
}
// https://api.nasa.gov/planetary/apod?api_key=4E7Zj3Hz1DNEJuA1tWLLatUuEXUtp7k2L4RV5Cwo&date=2023-11-21
// https://api.nasa.gov/planetary/apod?api_key=4E7Zj3Hz1DNEJuA1tWLLatUuEXUtp7k2L4RV5Cwo&date=2023-10-02