import 'package:flutter/material.dart';

var role = 'admin';
var pass = '1234';
var value = 0;
var output = '';

class Input extends StatefulWidget {
  const Input({super.key});

  @override
  State<Input> createState() => _InputState();
}

class _InputState extends State<Input> {
  TextEditingController tcName = TextEditingController();
  TextEditingController tcPass = TextEditingController();
  String name = '';
  String password = '';
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
              controller: tcName,
              decoration: const InputDecoration(hintText: 'Your name'),
            ),
            TextField(
              controller: tcPass,
              decoration: const InputDecoration(hintText: 'Your password'),
            ),
            ElevatedButton(
              child: const Text('Submit'),
              onPressed: () {
                if (role == tcName.text && pass == tcPass.text) {
                  setState(() {
                    tcName.text = "";
                    tcPass.text = "";
                    output = "Welcome $name";
                    value = 1;
                  });
                } else {
                  setState(() {
                    tcName.text = "";
                    tcPass.text = "";
                    output = "Wrong password";
                    value = 2;
                  });
                }
              },
            ),
            value == 2
                ? Text(
                    output,
                    style: TextStyle(color: Colors.red),
                  )
                : Text(
                    output,
                    style: TextStyle(color: Colors.green),
                  )
          ],
        ),
      ),
    );
  }
}
