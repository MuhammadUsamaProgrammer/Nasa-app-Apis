import 'package:apistest/app/nASA_App_Test/mars_Landing/all_ROvers/provider/animated_Container_Provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../rover_Detail/model/detailed_Rover_Model.dart';
import '../components/animated_Images.dart';
import '../components/bottom_Sheet.dart';
import '../components/rover_Tile.dart';

// ignore: must_be_immutable
class AllRoverPage extends StatelessWidget {
  AllRoverPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('image/nasaTruck.jpg'), fit: BoxFit.cover)),
        child:
            // SafeArea
            SafeArea(child: Consumer<AnimatedContainerProvider>(
          builder: (context, value, child) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(),
                child: SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 80,
                      ),
                      Text(
                        "Welcome to Mars🌕",
                        style: TextStyle(
                            color: Color.fromARGB(255, 77, 21, 1),
                            fontSize: 30,
                            fontFamily: 'Space',
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        height: 160,
                        width: 240,
                        child: ListView.builder(
                          itemCount: detailedRoverModel.length,
                          itemBuilder: (context, index) {
                            return RoverTile(
                              roverName: detailedRoverModel[index].roverName,
                              imagePath: detailedRoverModel[index].roverImage,
                              launchDate: detailedRoverModel[index].launch_date,
                              ontap: () {
                                value.toogleNotThisPage(index);
                              },
                            );
                          },
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      CamerasTablebottomSheet(),
                      SizedBox(
                        height: 150,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          AnimatedImages(image: 'image/mars #4.jpg', index: 0),
                          AnimatedImages(
                              image: 'image/mountains.jpg', index: 1),
                          AnimatedImages(
                              image: 'image/night mars.jpg', index: 2),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        )),
      ),
    );
  }
}
