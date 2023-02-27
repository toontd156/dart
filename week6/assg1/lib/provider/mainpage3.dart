import 'package:assg1/provider/checkaws.dart';
import 'package:assg1/provider/mainpage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MainPage3 extends StatefulWidget {
  const MainPage3({super.key});

  @override
  State<MainPage3> createState() => _MainPage3State();
}

class _MainPage3State extends State<MainPage3> {
  final datainput = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Summary'),
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          const SizedBox(height: 20),
          Text('total correct answer ${context.watch<Checkaws>().datacorrcet}'),
          const SizedBox(height: 20),
          ElevatedButton(
              onPressed: (() {
                setState(() {
                  context.read<Checkaws>().Restart();
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MainPage()));
                });
              }),
              child: const Text('Restart'))
        ]),
      ),
    );
  }
}
