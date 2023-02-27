import 'package:flutter/material.dart';

class Checkaws with ChangeNotifier {
  bool _checkaws = false;
  int _datacorrect = 0;
  int get datacorrcet => _datacorrect;

  void checkawss(bool aws) {
    _checkaws = aws;
    notifyListeners();
    if (_checkaws == true) {
      _datacorrect++;
    }
  }

  void Restart() {
    _datacorrect = 0;
    notifyListeners();
  }
}
