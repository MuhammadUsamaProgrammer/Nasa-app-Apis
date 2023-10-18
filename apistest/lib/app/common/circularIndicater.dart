import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class CustomCircularProgressIndicator extends StatelessWidget {
  const CustomCircularProgressIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height - 110,
      child: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 150,
                child: Lottie.asset('animation/solarSystem.json'),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                  width: 80, child: Lottie.asset('animation/Loading.json')),
            ],
          ),
        ),
      ),
    );
  }
}
