import 'package:assg1/provider/checkaws.dart';
import 'package:assg1/provider/mainpage3.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class mainpage2 extends StatefulWidget {
  const mainpage2({super.key});

  @override
  State<mainpage2> createState() => _mainpage2State();
}

class _mainpage2State extends State<mainpage2> {
  final datainput = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Question 2'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                'What is the colore of banana?',
                style: TextStyle(fontSize: 20),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: datainput,
                decoration: InputDecoration(
                    border: UnderlineInputBorder(), hintText: 'anwser'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                child: Text('submit'),
                onPressed: () {
                  if (datainput.text == 'yellow') {
                    context.read<checkaws>().addscore();
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const mainpage3(),
                        ));
                  } else {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const mainpage3(),
                        ));
                  }
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
