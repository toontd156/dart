import 'package:flutter/material.dart';

class checkaws with ChangeNotifier {
  int _score = 0;
  int get socre => _score;

  void addscore() {
    _score++;
    notifyListeners();
  }

  void resetscore() {
    _score = 0;
    notifyListeners();
  }
}
