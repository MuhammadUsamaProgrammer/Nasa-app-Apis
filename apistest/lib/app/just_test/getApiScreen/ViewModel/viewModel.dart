import 'dart:convert';
import 'dart:io';
import '../models/jason.dart';
import 'package:http/http.dart' as http;

class FirstGetApiViewModel {
  List<PostsModel> postsList = [];

  Future<List<PostsModel>> getPostsApi() async {
    final response =
        await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));
    var data = jsonDecode(response.body.toString());

    if (response.statusCode == 200) {
      for (Map<String, dynamic> index in data) {
        // postList.clear();
        postsList.add(PostsModel.fromJson(index));
      }
      return postsList;
    } else {
      throw HttpException('Failed to fetch data: ${response.statusCode}');
    }
  }
}
