import 'package:apistest/app/just_test/nBAAPITest/view/nBA_App_Screen.dart';
import 'package:apistest/app/just_test/firstScreen/components/firstScreenComponents.dart';
import 'package:apistest/app/just_test/getApiScreen/view/screen.dart';
import 'package:flutter/material.dart';
import '../../../nASA_App_Test/LandingScreen/view/app_Landing_screen.dart';
import '../../imageApiScreen/view/image_Get_Api_Screen.dart';
import '../../user_APIs/view/user_Screen.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.black,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FirstScreenButton(
                text: 'Get Api Test Screen',
                ontap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Screen1()));
                }),
            FirstScreenButton(
                text: 'Image Api Test Screen',
                ontap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ImageGetApiScreen()));
                }),
            FirstScreenButton(
                text: 'Users API Test Screen',
                ontap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => UserScreen()));
                }),
            FirstScreenButton(
                text: 'NBA App',
                ontap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => NBAAppScreen()));
                }),
            FirstScreenButton(
                text: 'Nasa API Test Screen',
                ontap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LandingPage()));
                }),
          ],
        ),
      ),
    );
  }
}
