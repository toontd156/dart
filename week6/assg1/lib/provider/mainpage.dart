import 'package:assg1/provider/checkaws.dart';
import 'package:assg1/provider/mainpage2.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final datainput = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Question 1')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              const Text('What is that year?'),
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
              const SizedBox(height: 10),
              ElevatedButton(
                  onPressed: (() {
                    if (datainput.text == '2023') {
                      setState(() {
                        context.read<Checkaws>().checkawss(true);
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const MainPage2()));
                      });
                    } else {
                      setState(() {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const MainPage2()));
                      });
                    }
                    datainput.clear();
                  }),
                  child: const Text('OK'))
            ],
          ),
        ));
  }
}
