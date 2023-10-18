import 'package:apistest/app/just_test/getApiScreen/view/screen.dart';
import 'package:apistest/app/common/circularIndicater.dart';
import 'package:flutter/material.dart';
import '../viewModel/image_Get_Api.dart';

class ImageGetApiScreen extends StatelessWidget {
  const ImageGetApiScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ImageGetApiViewModel imageGetApiViewModel = ImageGetApiViewModel();
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
                MaterialPageRoute(builder: (context) => Screen1()),
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
                future: imageGetApiViewModel.getimageApi(),
                builder: (context, snapshot) {
                  if (!snapshot.hasData) {
                    return CustomCircularProgressIndicator();
                  }
                  return ListView.builder(
                    itemCount: imageGetApiViewModel.imageList.length,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          ListTile(
                            leading: CircleAvatar(
                              backgroundColor: Colors.black,
                              backgroundImage: AssetImage('image/simple.png'),
                              foregroundImage: NetworkImage(imageGetApiViewModel
                                  .imageList[index].url
                                  .toString()),
                            ),
                            subtitle: Text(imageGetApiViewModel
                                .imageList[index].title
                                .toString()),
                            title: Text('Id number :' +
                                imageGetApiViewModel.imageList[index].id
                                    .toString()),
                          ),
                          Divider(
                            thickness: 1,
                            color: Colors.grey,
                          )
                        ],
                      );
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
