import 'package:flutter/material.dart';

class pagetwo extends StatefulWidget {
  final int itemcount;
  final int itemprice;
  const pagetwo({super.key, required this.itemcount, required this.itemprice});

  @override
  State<pagetwo> createState() => _pagetwoState();
}

class _pagetwoState extends State<pagetwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Page Two"),
      ),
      body: Center(
          child: Column(children: [
        Text("Item Count: ${widget.itemcount}"),
        Text("Item Price: ${widget.itemprice}"),
      ])),
    );
  }
}
