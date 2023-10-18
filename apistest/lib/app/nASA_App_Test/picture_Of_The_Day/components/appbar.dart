import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

import '../../../common/text/customText.dart';
import '../viewModel/calenderProvider.dart';

class PictureOfTheDayAppbar extends StatelessWidget {
  const PictureOfTheDayAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      color: Color.fromARGB(255, 185, 96, 36),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.back();
                    },
                    child: Icon(
                      Icons.arrow_back_ios_new_rounded,
                      color: const Color.fromARGB(255, 77, 21, 1),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  CustomText(
                    text: 'PICTURE OF THE DAY',
                    textSize: 20,
                    textFontWeight: FontWeight.bold,
                  ),
                ],
              ),
              Consumer<Calendar>(
                builder: (context, value, child) {
                  return GestureDetector(
                    onTap: () {
                      value.showDatePickerCalendar(context);
                    },
                    child: Icon(
                      Icons.calendar_month_rounded,
                      color: const Color.fromARGB(255, 77, 21, 1),
                    ),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
