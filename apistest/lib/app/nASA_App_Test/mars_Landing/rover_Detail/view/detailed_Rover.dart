import 'package:apistest/app/common/animated_Button/View/enimated_Button.dart';
import 'package:apistest/app/nASA_App_Test/mars_Landing/all_ROvers/provider/animated_Container_Provider.dart';
import 'package:apistest/app/routs/routs.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import '../model/detailed_Rover_Model.dart';

// ignore: must_be_immutable
class DetailedRover extends StatelessWidget {
  DetailedRover({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final int index = Get.arguments;
    return Consumer<AnimatedContainerProvider>(
      builder: (context, value, child) {
        return WillPopScope(
          onWillPop: () async {
            Get.back();
            value.toogleIsThisPage();
            return false;
          },
          child: Scaffold(
              body: CustomScrollView(
            slivers: [
              SliverAppBar(
                backgroundColor: Color.fromARGB(255, 192, 78, 2),
                leading: InkWell(
                  onTap: () {
                    value.toogleIsThisPage();
                    Get.back();
                  },
                  borderRadius: BorderRadius.circular(100),
                  child: Icon(
                    Icons.arrow_back_ios_new_rounded,
                    color: Color.fromARGB(180, 77, 21, 1),
                  ),
                ),
                expandedHeight: 300,
                floating: false,
                pinned: true,
                // snap: true,
                title: Text(
                  detailedRoverModel[index].roverName,
                  style: TextStyle(
                      color: Color.fromARGB(255, 71, 28, 13),
                      fontSize: 20,
                      fontFamily: 'Space',
                      fontWeight: FontWeight.w600),
                ),
                flexibleSpace: FlexibleSpaceBar(
                  background: Image.asset(detailedRoverModel[index].roverImage,
                      fit: BoxFit.cover),
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        """LAUNCHED > ${detailedRoverModel[index].launch_date}
LANDED > ${detailedRoverModel[index].landing_date}""",
                        style: TextStyle(
                            color: Colors.grey.shade400,
                            fontSize: 10,
                            fontFamily: 'Space',
                            fontWeight: FontWeight.w400),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                    ],
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: Container(
                  // height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [
                    Color.fromARGB(255, 185, 128, 90),
                    Color.fromARGB(255, 230, 71, 31),
                  ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 40,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            EnimatedButton(
                              keY: Key('button3'),
                              text: 'Images & Discoveries',
                              height: 30,
                              width: 180,
                              changedWidth: 170,
                              radius: 7,
                              changedheight: 25,
                              borderColor: Color.fromARGB(255, 126, 35, 5),
                              textColor: Color.fromARGB(255, 126, 35, 5),
                              changedTextheight: 13.5,
                              onRelease: () {
                                Get.toNamed(RouteName.imageAndDiscovriesPage);
                              },
                            ),
                            SizedBox(
                              width: 10,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10, top: 10),
                          child: Text(
                            detailedRoverModel[index].documantry,
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
                ),
              ),
            ],
          )),
        );
      },
    );
  }
}
