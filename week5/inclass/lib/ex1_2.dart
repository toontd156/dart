import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page 2'),
      ),
      body: Container(
        color: Colors.red,
        alignment: Alignment.center,
        child: ElevatedButton(
          onPressed: () {
            //jump to page 1
            Navigator.pop(context);
          },
          child: const Text('BACK'),
        ),
      ),
    );
  }
}
