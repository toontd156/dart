import 'package:flutter/material.dart';
import 'package:shop/provider/cart.dart';
import 'package:shop/provider/shoppage.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context) => GetCart(),
      child: const MaterialApp(home: Shoppage())));
}
