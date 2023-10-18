import 'package:flutter/material.dart';

import '../../../common/circularIndicater.dart';
import '../../imageApiScreen/view/image_Get_Api_Screen.dart';
import '../ViewModel/viewModel.dart';
import '../components/getApiTile.dart';

// ignore: must_be_immutable
class Screen1 extends StatelessWidget {
  Screen1({super.key});
  @override
  Widget build(BuildContext context) {
    FirstGetApiViewModel firstGetApiViewModel = FirstGetApiViewModel();
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text('Get Api Test',
                style: TextStyle(
                    fontWeight: FontWeight.w700, color: Colors.white))),
        actions: [
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ImageGetApiScreen()),
              );
            },
            child: Icon(
              Icons.adb_outlined,
              color: Colors.grey,
            ),
          ),
          SizedBox(
            width: 24,
          )
        ],
        backgroundColor: Colors.black,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: FutureBuilder(
                future: firstGetApiViewModel.getPostsApi(),
                builder: (context, snapshot) {
                  if (!snapshot.hasData) {
                    return CustomCircularProgressIndicator();
                  }
                  return ListView.builder(
                    itemCount: firstGetApiViewModel.postsList.length,
                    itemBuilder: (context, index) {
                      return GetApiTile(
                          title: firstGetApiViewModel.postsList[index].title
                              .toString(),
                          body: firstGetApiViewModel.postsList[index].body
                              .toString());
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
