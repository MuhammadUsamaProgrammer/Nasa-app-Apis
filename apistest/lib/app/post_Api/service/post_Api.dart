import 'dart:convert';

import 'package:apistest/app/post_Api/model/model_User.dart';
import 'package:http/http.dart' as http;

class PostApi {
  Future<void> user(
      // String name, String description, int price
      ) async {
    try {
      final response = await http.get(
        Uri.parse('http://localhost:3550/products/get'),
      );
      var data = jsonDecode(response.body.toString());

      if (response.statusCode == 200) {
        print(Users.fromJson(data));

        print('successful');
      } else {
        print('unsuccessful');
      }
    } catch (e) {
      print(e.toString());
      print('exception');
    }
  }
}
