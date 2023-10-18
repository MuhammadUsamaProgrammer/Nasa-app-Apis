import 'package:apistest/app/nASA_App_Test/mars_Landing/all_ROvers/provider/animated_Container_Provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CamerasTablebottomSheet extends StatelessWidget {
  const CamerasTablebottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<AnimatedContainerProvider>(
      builder: (context, value, child) {
        return GestureDetector(
          onTap: () {
            showModalBottomSheet(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20))),
              context: context,
              builder: (BuildContext context) {
                return Container(
                  height: 287,
                  decoration: BoxDecoration(
                      // color: Color.fromARGB(255, 185, 128, 90),
                      gradient: LinearGradient(colors: [
                        Color.fromARGB(255, 192, 104, 2),
                        Color.fromARGB(255, 192, 46, 2),
                      ]),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(18),
                          topRight: Radius.circular(18))),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 11,
                        ),
                        Center(
                          child: Container(
                            height: 5,
                            width: 48,
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 77, 21, 1),
                                borderRadius: BorderRadius.circular(100)),
                          ),
                        ),
                        SizedBox(
                          height: 11,
                        ),
                        Center(
                          child: Text(
                            "Camera Table of Rovers",
                            style: TextStyle(
                                color: Color.fromARGB(255, 77, 21, 1),
                                fontSize: 20,
                                fontFamily: 'Space',
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Container(
                          height: 205,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              image: DecorationImage(
                                  opacity: 0.7,
                                  image:
                                      AssetImage('image/camers_Details.png'))),
                        )
                      ],
                    ),
                  ),
                );
              },
            );
          },
          child: AnimatedContainer(
            curve: value.animation,
            duration: Duration(seconds: 1),
            height: value.isThisPage ? 30 : 0,
            // height: 30,
            width: 150,
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
                  Color.fromARGB(255, 192, 104, 2),
                  Color.fromARGB(255, 192, 46, 2),
                ]),
                borderRadius: BorderRadius.circular(6)),
            child: Row(
              children: [
                Icon(
                  Icons.table_chart,
                  size: value.isThisPage ? 24 : 0,
                  color: Color.fromARGB(255, 77, 21, 1),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "Camera's Table",
                  style: TextStyle(
                      color: Color.fromARGB(255, 77, 21, 1),
                      // fontSize: 14,
                      fontFamily: 'Space',
                      fontWeight: FontWeight.w600),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
