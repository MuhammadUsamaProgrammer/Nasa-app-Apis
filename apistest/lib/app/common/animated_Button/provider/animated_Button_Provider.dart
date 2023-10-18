import 'package:flutter/material.dart';

class AnimatedButtonProvider with ChangeNotifier {
  Key? _pressedButtonKey;

  bool isElevated(Key key) {
    return _pressedButtonKey == key;
  }

  void toggleIsElevated(Key key) {
    _pressedButtonKey = key;
    notifyListeners();
  }
}
