import 'package:flutter/material.dart';

import 'ex1_2.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page 1'),
      ),
      body: Container(
        color: Colors.yellow,
        alignment: Alignment.center,
        child: ElevatedButton(
          onPressed: () {
            //jump to page 2
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Page2()),
            );
          },
          child: const Text('Next'),
        ),
      ),
    );
  }
}
