import 'package:assg1/provider/checkaws.dart';
import 'package:assg1/provider/mainpage3.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MainPage2 extends StatefulWidget {
  const MainPage2({super.key});

  @override
  State<MainPage2> createState() => _MainPage2State();
}

class _MainPage2State extends State<MainPage2> {
  final datainput = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Question 2'),
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          const SizedBox(height: 20),
          const Text('What is the color of banana?'),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: datainput,
              decoration: const InputDecoration(
                border: UnderlineInputBorder(),
                hintText: 'answer',
              ),
            ),
          ),
          ElevatedButton(
              onPressed: (() {
                if (datainput.text == 'yellow') {
                  setState(() {
                    context.read<Checkaws>().checkawss(true);
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const MainPage3()));
                  });
                } else {
                  setState(() {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const MainPage3()));
                  });
                }
              }),
              child: const Text('OK'))
        ]),
      ),
    );
  }
}
