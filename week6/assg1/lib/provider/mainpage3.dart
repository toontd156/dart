import 'package:assg1/provider/checkaws.dart';
import 'package:assg1/provider/mainpage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class mainpage3 extends StatefulWidget {
  const mainpage3({super.key});

  @override
  State<mainpage3> createState() => _mainpage3State();
}

class _mainpage3State extends State<mainpage3> {
  final datainput = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Summary'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                'total your score ${context.watch<checkaws>().socre}',
                style: TextStyle(fontSize: 20),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                child: Text('reset'),
                onPressed: () {
                  context.read<checkaws>().resetscore();
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const mainpage1(),
                      ));
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
