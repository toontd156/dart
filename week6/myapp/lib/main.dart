import 'dart:js';

import 'package:flutter/material.dart';
import 'package:myapp/provider/count.dart';
import 'package:myapp/provider/counter.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context) => Count(), child: const MaterialApp(home: Counter())));
}
