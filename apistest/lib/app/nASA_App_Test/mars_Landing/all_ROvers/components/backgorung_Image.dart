import 'package:flutter/material.dart';

class BackgroundImageRoverPage extends StatelessWidget {
  const BackgroundImageRoverPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('image/nasaTruck.jpg'), fit: BoxFit.cover)),
    );
  }
}
