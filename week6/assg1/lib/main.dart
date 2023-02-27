import 'package:assg1/provider/checkaws.dart';
import 'package:assg1/provider/mainpage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context) => Checkaws(),
      child: const MaterialApp(home: MainPage())));
}
