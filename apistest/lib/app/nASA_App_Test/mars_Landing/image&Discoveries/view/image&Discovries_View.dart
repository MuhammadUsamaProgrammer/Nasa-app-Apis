import 'package:apistest/app/common/text/customText.dart';
import 'package:flutter/material.dart';
import '../../../../common/circularIndicater.dart';
import '../components/detailedTile.dart';
import '../model/nasa_App_Model.dart';
import '../viewModel/nasaA_App_ViewModel.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class ImageAndDiscovriesPage extends StatelessWidget {
  ImageAndDiscovriesPage({super.key});
  NASAAppViewModel nASAAppViewModel = NASAAppViewModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Color.fromARGB(255, 192, 78, 2),
        backgroundColor: Color.fromARGB(255, 192, 78, 2),
        toolbarHeight: 70,
        leading: InkWell(
          onTap: () {
            Get.back();
          },
          borderRadius: BorderRadius.circular(100),
          child: Icon(
            Icons.arrow_back_ios_new_rounded,
            color: const Color.fromARGB(255, 77, 21, 1),
          ),
        ),
        title: CustomText(
          text: 'Images & Discovries',
          textSize: 20,
          textFontWeight: FontWeight.w700,
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          Color.fromARGB(255, 192, 78, 2),
          Color.fromARGB(255, 255, 0, 0),
        ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
        child: Column(
          children: [
            FutureBuilder<NasaApp>(
              future: nASAAppViewModel.getNasaApi(),
              builder: (context, snapshot) {
                if (snapshot.data == null) {
                  return CustomCircularProgressIndicator();
                } else
                  return Expanded(
                    child: ListView.builder(
                      itemCount: snapshot.data?.photos.length,
                      itemBuilder: (context, index) {
                        if (snapshot.data!.photos[index].rover.status ==
                            "active") {
                          return DetailedTile(
                            imageLink:
                                snapshot.data!.photos[index].imgSrc.toString(),
                            camera: snapshot.data!.photos[index].camera.name
                                .toString(),
                            detailedCameraName: snapshot
                                .data!.photos[index].camera.fullName
                                .toString(),
                            date: snapshot.data!.photos[index].earthDate
                                .toString(),
                            rover: snapshot.data!.photos[index].rover.name
                                .toString(),
                          );
                        } else
                          return Text('no  data');
                      },
                    ),
                  );
              },
            )
          ],
        ),
      ),
    );
  }
}
