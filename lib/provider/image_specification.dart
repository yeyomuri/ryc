import 'package:flutter/foundation.dart';

class ImageSpecification with ChangeNotifier {
  int _value = 1;

  int get value => _value;

  void right() {
    _value++;

    if (_value > 2) {
      _value = 2;
    }
    notifyListeners();
  }

  void left() {
    _value--;
    if (_value < 0) {
      _value = 0;
    }
    notifyListeners();
  }
}
