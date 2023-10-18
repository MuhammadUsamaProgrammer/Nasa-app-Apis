import 'dart:convert';
import 'package:http/http.dart' as http;

import '../model/image_Get_Api.dart';

class ImageGetApiViewModel {
  List<ImagesModel> imageList = [];

  Future<List<ImagesModel>> getimageApi() async {
    final response = await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/photos'));
    var data = jsonDecode(response.body.toString());

    if (response.statusCode == 200) {
      for (Map<String, dynamic> index in data) {
        // postList.clear();
        imageList.add(ImagesModel.fromJson(index));
      }
      return imageList;
    } else {
      return imageList;
    }
  }
}
