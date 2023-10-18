import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:lottie/lottie.dart';

import '../viewModel/splash_view_model.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({super.key});
  final splashVM = Get.find<SplashViewModel>();

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('image/splash.jpg'), fit: BoxFit.cover)),
          child: Padding(
            padding: const EdgeInsets.only(top: 100, bottom: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    height: 350,
                    width: 350,
                    child: Lottie.asset('animation/mars.json')),
                Row(
                  children: [
                    AnimatedContainer(
                        curve: Curves.fastOutSlowIn,
                        duration: Duration(milliseconds: 2500),
                        height: 3,
                        width: splashVM.ok.value
                            ? 0
                            : MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          gradient: LinearGradient(colors: [
                            const Color.fromARGB(255, 255, 17, 0),
                            Colors.orange,
                          ]),
                        )),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
