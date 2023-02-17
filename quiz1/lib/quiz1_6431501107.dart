import 'package:flutter/material.dart';

class Quiz1 extends StatefulWidget {
  const Quiz1({super.key});

  @override
  State<Quiz1> createState() => _Quiz1State();
}

class _Quiz1State extends State<Quiz1> {
  final num1 = TextEditingController();
  final num2 = TextEditingController();
  final num3 = TextEditingController();
  int odd = 0;
  int even = 0;
  var n1 = 0;
  var n2 = 0;
  var n3 = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Quiz1'),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
          child: Column(
            children: [
              TextField(
                controller: num1,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  hintText: "Number1",
                ),
              ),
              TextField(
                controller: num2,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  hintText: "Number2",
                ),
              ),
              TextField(
                controller: num3,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  hintText: "Number3",
                ),
              ),
              ElevatedButton(
                  child: const Text("Compute"),
                  onPressed: () {
                    if (num1.text.isNotEmpty &&
                        num2.text.isNotEmpty &&
                        num3.text.isNotEmpty) {
                      setState(() {
                        n1 = 0;
                        n2 = 0;
                        n3 = 0;
                        n1 = int.parse(num1.text);
                        n2 = int.parse(num2.text);
                        n3 = int.parse(num3.text);

                        n1 % 2 == 0 ? odd += 1 : even += 1;
                        n2 % 2 == 0 ? odd += 1 : even += 1;
                        n3 % 2 == 0 ? odd += 1 : even += 1;
                      });
                    } else {
                      setState(() {
                        odd = 0;
                        even = 0;
                      });
                    }
                  }),
              num1.text.isNotEmpty &&
                      num2.text.isNotEmpty &&
                      num3.text.isNotEmpty
                  ? Text("Even = $even and Odd = $odd")
                  : Container()
            ],
          ),
        ),
      ),
    );
  }
}
