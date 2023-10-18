import 'package:apistest/app/common/text/customText.dart';
import 'package:apistest/app/routs/routs.dart';
import 'package:flutter/material.dart';
import '../../../common/animated_Button/View/enimated_Button.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import '../../mars_Landing/all_ROvers/provider/animated_Container_Provider.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    final double height = 80;
    final double changedheight = 75;
    final double changedtextheight = 13;
    final double width = MediaQuery.of(context).size.width;
    final double changedWidth = MediaQuery.of(context).size.width - 55;
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('image/landing screen image.jpg'),
                  fit: BoxFit.cover)),
          child: Container(
            height: MediaQuery.of(context).size.height,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 80, horizontal: 24),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomText(
                    text:
                        "Explore NASA's daily wonders and Mars discoveries with our captivating app",
                    textSize: 18,
                    textFontWeight: FontWeight.bold,
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Consumer<AnimatedContainerProvider>(
                      builder: (context, value, child) {
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: height,
                            width: width,
                            child: Center(
                              child: EnimatedButton(
                                keY: Key('button1'),
                                text: 'Picture of the Day',
                                changedTextheight: changedtextheight,
                                borderColor:
                                    const Color.fromARGB(255, 77, 21, 1),
                                textColor: const Color.fromARGB(255, 77, 21, 1),
                                height: height,
                                changedheight: changedheight,
                                width: width,
                                changedWidth: changedWidth,
                                onRelease: () {
                                  Get.toNamed(RouteName.pictureOfTheDayPage);
                                },
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Container(
                            height: height,
                            width: width,
                            child: Center(
                              child: EnimatedButton(
                                keY: Key('button2'),
                                height: height,
                                changedheight: changedheight,
                                width: width,
                                changedWidth: changedWidth,
                                borderColor:
                                    const Color.fromARGB(255, 77, 21, 1),
                                text: 'Mars discovery',
                                changedTextheight: changedtextheight,
                                textColor: const Color.fromARGB(255, 77, 21, 1),
                                onRelease: () {
                                  Get.toNamed(RouteName.allRoverPage);
                                  value.toogleIsThisPage();
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  })
                ],
              ),
            ),
          )),
    );
  }
}
