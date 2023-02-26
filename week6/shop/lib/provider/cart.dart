import 'package:flutter/material.dart';

class GetCart with ChangeNotifier {
  List<String> _cart = [];
  int _x = 0;
  List<String> get cart => _cart;
  int get x => _x;
  void add(String item) {
    _cart.add(item);
    _x++;
    notifyListeners();
  }

  void remove(String item) {
    _cart.remove(item);
    notifyListeners();
  }
}
