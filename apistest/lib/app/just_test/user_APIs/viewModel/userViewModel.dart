import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../model/userModel.dart';

class UserProvider extends ChangeNotifier {
  List<UsersModel> usersList = [];

  Future<List<UsersModel>> getUsersApi() async {
    final response =
        await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));
    var data = jsonDecode(response.body.toString());

    if (response.statusCode == 200) {
      usersList.clear();
      for (Map<String, dynamic> index in data) {
        usersList.add(UsersModel.fromJson(index));
      }
      return (usersList);
    } else
      return (usersList);
  }
}
