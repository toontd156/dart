import 'package:flutter/material.dart';

class pagetwo extends StatefulWidget {
  final String itemname;
  final int itemprice;
  const pagetwo({super.key, required this.itemname, required this.itemprice});

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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(widget.itemname),
            Text(widget.itemprice.toString()),
          ],
        ),
      ),
    );
  }
}
