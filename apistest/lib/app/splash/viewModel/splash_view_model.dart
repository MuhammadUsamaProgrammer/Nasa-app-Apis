import 'dart:async';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import '../../routs/routs.dart';

class SplashViewModel extends GetxController {
  Rx<Timer> timer = Timer(Duration.zero, () {}).obs;
  RxBool ok = true.obs;

  @override
  void onInit() {
    super.onInit();
    timer.value = Timer(const Duration(milliseconds: 50), () {
      ok.value = false;
    });
    timer.value = Timer(const Duration(seconds: 3), () {
      timer.value.cancel();
      Get.offAllNamed(RouteName.postScreen);
    });
  }

  @override
  void onClose() {
    super.onClose();
  }

  @override
  void dispose() {
    super.dispose();
  }
}
