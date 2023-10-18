import 'package:apistest/app/post_Api/service/post_Api.dart';
import 'package:flutter/material.dart';

class PostScreen extends StatelessWidget {
  PostScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController nameController = TextEditingController();
    TextEditingController discriptionController = TextEditingController();
    TextEditingController priceController = TextEditingController();
    PostApi postApi = PostApi();
    return Scaffold(
      appBar: AppBar(
        title: Text('Get Api Test'),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            TextField(
              controller: nameController,
              decoration: InputDecoration(
                hintText: 'name',
              ),
            ),
            TextField(
              controller: discriptionController,
              decoration: InputDecoration(
                hintText: 'discription',
              ),
            ),
            TextField(
              controller: priceController,
              decoration: InputDecoration(
                hintText: 'price',
              ),
            ),
            InkWell(
              onTap: () {
                postApi.user();
              },
              child: Container(
                height: 30,
                width: 30,
                color: Colors.amber,
              ),
            )
          ],
        ),
      ),
    );
  }
}
