import 'package:apistest/app/common/text/customText.dart';
import 'package:apistest/app/routs/routs.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
// import 'package:provider/provider.dart';

// ignore: must_be_immutable
class PictureOfTheDayPageView extends StatelessWidget {
  final String image;
  final String hdimage;
  final String capturedDate;
  final String title;
  final String explanation;
  final String serviceVersion;
  PictureOfTheDayPageView({
    super.key,
    required this.image,
    required this.hdimage,
    required this.capturedDate,
    required this.title,
    required this.explanation,
    required this.serviceVersion,
  });

  // backgroundColor:
  @override
  Widget build(BuildContext context) {
    DateTime inputDate = DateTime.parse(capturedDate);
    DateFormat outputFormat = DateFormat('MMM dd, yyyy');
    String formattedDate = outputFormat.format(inputDate);
    // PictureOfTheDayViewModel pictureOfTheDayViewModel =
    //     PictureOfTheDayViewModel();
    return Container(
      child: Column(
        children: [
          InkWell(
            onTap: () {
              Get.toNamed(RouteName.fullScreenImage, arguments: {
                'image': image,
                'hdImage': hdimage,
              });
            },
            child: Stack(
              children: [
                CachedNetworkImage(
                  fit: BoxFit.contain,
                  imageUrl: image,
                  placeholder: (context, url) {
                    return Center(
                      child: Container(
                        width: 100,
                        child: Lottie.asset('animation/solarSystem.json'),
                      ),
                    );
                  },
                  errorWidget: (context, url, error) =>
                      Text('Failed to load image'),
                ),
                CachedNetworkImage(
                  imageUrl: hdimage,
                  placeholder: (context, url) {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          width: 20,
                          child: Lottie.asset('animation/solarSystem.json'),
                        ),
                        CustomText(
                          text: 'HD IMAGE LOADING...',
                          textSize: 5,
                          color: Colors.grey,
                        )
                      ],
                    );
                  },
                  errorWidget: (context, url, error) =>
                      Text('Failed to load image'),
                ),
                // Row(
                //   children: [
                //     Container(
                //       width: 20,
                //       child: Lottie.asset('animation/solarSystem.json'),
                //     ),
                //     CustomText(
                //       text: 'HD IMAGE LOADING...',
                //       textSize: 5,
                //       color: Colors.grey,
                //     )
                //   ],
                // ),
                // Image.network(hdimage),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 200,
                  child: CustomText(
                    text: title,
                    textSize: 16,
                    textFontWeight: FontWeight.bold,
                  ),
                ),
                Column(
                  children: [
                    CustomText(
                      textSize: 10,
                      text: formattedDate,
                      color: const Color.fromARGB(255, 206, 205, 205),
                    ),
                    CustomText(
                      textSize: 10,
                      text: 'Version : ' + serviceVersion,
                      color: const Color.fromARGB(255, 206, 205, 205),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: const EdgeInsets.only(left: 10, top: 10),
              child: Text(
                explanation,
                style: TextStyle(
                    color: Color.fromARGB(255, 77, 21, 1),
                    fontSize: 14,
                    fontFamily: 'Space',
                    fontWeight: FontWeight.w500),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
