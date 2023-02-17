import 'dart:math';

import 'package:flutter/material.dart';

String result = '';

class Input extends StatefulWidget {
  const Input({super.key});

  @override
  State<Input> createState() => _InputState();
}

class _InputState extends State<Input> {
  var NumBer1 = TextEditingController();
  var NumBer2 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: SafeArea(
        child: Column(
          children: [
            TextField(
              controller: NumBer1,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(hintText: 'Input Number 1'),
            ),
            TextField(
              controller: NumBer2,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(hintText: 'Input Number 2'),
            ),
            ElevatedButton(
                child: const Text('Sum'),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.amber),
                ),
                onPressed: () {
                  if (NumBer1.text.isNotEmpty && NumBer2.text.isNotEmpty) {
                    setState(() {
                      result =
                          (int.parse(NumBer1.text) + int.parse(NumBer2.text))
                              .toString();
                    });
                  }
                  return;
                }),
            ElevatedButton(
                child: const Text('Power'),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.blue),
                ),
                onPressed: () {
                  if (NumBer1.text.isNotEmpty && NumBer2.text.isNotEmpty) {
                    setState(() {
                      result =
                          pow(int.parse(NumBer1.text), int.parse(NumBer2.text))
                              .toString();
                    });
                  }
                  return;
                }),
            ElevatedButton(
                child: const Text('Clear'),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.red),
                ),
                onPressed: () {
                  setState(() {
                    NumBer1.clear();
                    NumBer2.clear();
                    result = '';
                  });
                }),
            result.isNotEmpty
                ? Text(
                    'Result: $result',
                    style: const TextStyle(fontSize: 20),
                  )
                : Container(),
          ],
        ),
      ),
    );
  }
}
