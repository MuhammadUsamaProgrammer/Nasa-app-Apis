import 'package:apistest/app/nASA_App_Test/mars_Landing/all_ROvers/provider/animated_Container_Provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class RoverTile extends StatelessWidget {
  final String roverName;
  final String imagePath;
  final String launchDate;
  final VoidCallback ontap;
  RoverTile({
    super.key,
    required this.roverName,
    required this.imagePath,
    required this.launchDate,
    required this.ontap,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<AnimatedContainerProvider>(
      builder: (context, value, child) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: ontap,
              child: AnimatedContainer(
                curve: Curves.fastOutSlowIn,
                duration: Duration(seconds: 1),
                height: value.isThisPage ? 50 : 20,
                width: 250,
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                      Color.fromARGB(255, 192, 104, 2),
                      Color.fromARGB(255, 192, 46, 2),
                    ]),
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5.0),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            // Rovor Image
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(
                                      image: AssetImage(imagePath),
                                      fit: BoxFit.cover)),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            // Rover name
                            Text(roverName,
                                style: TextStyle(
                                    color: Color.fromARGB(255, 77, 21, 1),
                                    fontSize: value.isThisPage ? 15 : 0,
                                    fontFamily: 'Space',
                                    fontWeight: FontWeight.w500)),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Launch date From Earth',
                                style: TextStyle(
                                    color: Color.fromARGB(255, 77, 21, 1),
                                    fontSize: value.isThisPage ? 7 : 0,
                                    fontFamily: 'Space',
                                    fontWeight: FontWeight.w500)),
                            Text(launchDate,
                                style: TextStyle(
                                    color: Color.fromARGB(255, 77, 21, 1),
                                    fontSize: value.isThisPage ? 7 : 0,
                                    fontFamily: 'Space',
                                    fontWeight: FontWeight.w500)),
                          ],
                        )
                      ]),
                ),
              ),
            ),
            // Sized box
            AnimatedContainer(
              duration: Duration(milliseconds: 200),
              height: value.isThisPage ? 5 : 0,
            ),
          ],
        );
      },
    );
  }
}
