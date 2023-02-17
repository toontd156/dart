import 'package:flutter/material.dart';

import 'ex2_2.dart';

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
            // String data = '123';
            var data = {'name': 'John', 'age': 30};
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const Page2(),
                  settings: RouteSettings(arguments: data)),
            );
          },
          child: const Text('Next'),
        ),
      ),
    );
  }
}
