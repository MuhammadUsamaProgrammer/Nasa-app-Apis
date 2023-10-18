import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../../../../common/text/customText.dart';

class DetailedTile extends StatelessWidget {
  final String imageLink;
  final String rover;
  final String camera;
  final String detailedCameraName;
  final String date;

  DetailedTile({
    super.key,
    required this.imageLink,
    required this.rover,
    required this.camera,
    required this.detailedCameraName,
    required this.date,
  });

  @override
  Widget build(BuildContext context) {
    // Parse the input date string
    DateTime inputDate = DateTime.parse(date);

    // Create a DateFormat instance for the desired output format
    DateFormat outputFormat = DateFormat('MMM dd, yyyy');

    // Format the date
    String formattedDate = outputFormat.format(inputDate);

    double tileHeight = 370;
    double imageHeight = 200;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 1.5),
      child: Container(
        height: tileHeight,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 184, 124, 55),
              Color.fromARGB(255, 218, 67, 21),
            ],
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Center(
                  child: CustomText(
                text: 'Earth Date : ' + formattedDate,
                textFontWeight: FontWeight.w700,
              )),
              Container(
                height: imageHeight,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10)),
                child: Stack(
                  children: [
                    Center(
                        child: Image.asset(
                      'image/simple.png',
                    )),
                    Container(
                      height: imageHeight,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            image: NetworkImage(imageLink), fit: BoxFit.cover),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                        text: 'Rover',
                        textFontWeight: FontWeight.w600,
                      ),
                      CustomText(
                        text: 'Camera',
                        textFontWeight: FontWeight.w600,
                      ),
                      CustomText(
                        text: 'Full Name',
                        textFontWeight: FontWeight.w600,
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(text: ':'),
                      CustomText(text: ':'),
                      CustomText(text: ':'),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(text: rover),
                      CustomText(text: camera),
                      CustomText(text: detailedCameraName),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
