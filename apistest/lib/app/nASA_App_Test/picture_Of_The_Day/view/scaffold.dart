import 'package:apistest/app/nASA_App_Test/mars_Landing/all_ROvers/provider/animated_Container_Provider.dart';
import 'package:apistest/app/nASA_App_Test/picture_Of_The_Day/view/picture_Of_The_Day_Screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../common/circularIndicater.dart';
import '../components/appbar.dart';
import '../model/Picture_Of_The_Day_Model.dart';
import '../viewModel/calenderProvider.dart';
import '../viewModel/view_Model.dart';

// ignore: must_be_immutable
class PictureOfTheDayPage extends StatelessWidget {
  PictureOfTheDayPage({
    super.key,
  });
  PictureOfTheDayViewModel pictureOfTheDayViewModel =
      PictureOfTheDayViewModel();

  @override
  Widget build(BuildContext context) {
    return Consumer<AnimatedContainerProvider>(
      builder: (context, value, child) {
        return Scaffold(
            backgroundColor: Color.fromARGB(255, 185, 128, 90),
            body: SingleChildScrollView(
              child: Column(
                children: [
                  PictureOfTheDayAppbar(),
                  Consumer<Calendar>(
                    builder: (context, value, child) {
                      return FutureBuilder<PictureOfTheDayModel>(
                        future: pictureOfTheDayViewModel
                            .getPictureOfTheDayApi(value.selectedDate),
                        builder: (context, snapshot) {
                          if (snapshot.data == null) {
                            return CustomCircularProgressIndicator();
                          } else
                            return PictureOfTheDayPageView(
                                image: snapshot.data!.url,
                                hdimage: snapshot.data!.hdurl,
                                capturedDate: snapshot.data!.date.toString(),
                                title: snapshot.data!.title,
                                explanation: snapshot.data!.explanation,
                                serviceVersion: snapshot.data!.serviceVersion);
                        },
                      );
                    },
                  ),
                ],
              ),
            ));
      },
    );
  }
}
