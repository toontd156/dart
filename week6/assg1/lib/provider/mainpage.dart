import 'package:assg1/provider/checkaws.dart';
import 'package:assg1/provider/mainpage2.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class mainpage1 extends StatefulWidget {
  const mainpage1({super.key});

  @override
  State<mainpage1> createState() => _mainpage1State();
}

class _mainpage1State extends State<mainpage1> {
  final datainput = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Question 1'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                'What is that year?',
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
                  if (datainput.text == '2023') {
                    context.read<checkaws>().addscore();
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const mainpage2(),
                        ));
                  } else {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const mainpage2(),
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
