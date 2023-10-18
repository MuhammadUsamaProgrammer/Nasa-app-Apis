import 'package:apistest/app/nASA_App_Test/mars_Landing/all_ROvers/provider/animated_Container_Provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AnimatedImages extends StatelessWidget {
  final String image;
  final int index;
  const AnimatedImages({super.key, required this.image, required this.index});

  @override
  Widget build(BuildContext context) {
    return Consumer<AnimatedContainerProvider>(
      builder: (context, value, child) {
        return AnimatedContainer(
          duration: Duration(seconds: 2),
          curve: value.animation,
          height: value.animationCounter > index ? 130 : 1,
          width: value.animationCounter > index ? 93 : 1,
          decoration: BoxDecoration(
              borderRadius: BorderRadiusDirectional.circular(5),
              color: Colors.transparent,
              image:
                  DecorationImage(image: AssetImage(image), fit: BoxFit.cover)),
        );
      },
    );
  }
}
