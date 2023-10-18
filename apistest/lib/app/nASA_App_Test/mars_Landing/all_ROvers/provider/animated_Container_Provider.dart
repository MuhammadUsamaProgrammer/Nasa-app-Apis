import 'dart:async';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import '../../../../routs/routs.dart';

class AnimatedContainerProvider with ChangeNotifier {
  bool _isThisPage = false;
  bool get isThisPage => _isThisPage;

  int _animationCounter = 0;
  int get animationCounter => _animationCounter;
  Curve _animation = Curves.bounceIn;
  Curve get animation => _animation;
  Timer _timer = Timer(Duration.zero, () {});

  void toogleIsThisPage() {
    _animationCounter = 0;
    _isThisPage = false;
    _animation = Curves.elasticOut;
    _timer = Timer(Duration(milliseconds: 100), () {
      _isThisPage = true;
      _timer.cancel;
      notifyListeners();
    });
    _timer = Timer(Duration(milliseconds: 700), () {
      _animationCounter = 1;
      _timer.cancel;
      notifyListeners();
    });
    _timer = Timer(Duration(milliseconds: 1100), () {
      _animationCounter = 2;
      _timer.cancel;
      notifyListeners();
    });
    _timer = Timer(Duration(milliseconds: 1500), () {
      _animationCounter = 3;
      _timer.cancel;
      notifyListeners();
    });
  }

  void toogleNotThisPage(int index) {
    _animation = Curves.fastOutSlowIn;
    _animationCounter = 3;
    _isThisPage = true;
    _timer = Timer(Duration(milliseconds: 100), () {
      _animationCounter = 2;
      _timer.cancel;
      notifyListeners();
    });
    _timer = Timer(Duration(milliseconds: 300), () {
      _animationCounter = 1;
      _timer.cancel;
      notifyListeners();
    });
    _timer = Timer(Duration(milliseconds: 500), () {
      _animationCounter = 0;
      _isThisPage = false;
      _timer.cancel;
      notifyListeners();
    });
    _timer = Timer(Duration(milliseconds: 700), () {
      Get.toNamed(
        RouteName.detailedRover,
        arguments: index,
      );
      notifyListeners();
    });
  }
}
