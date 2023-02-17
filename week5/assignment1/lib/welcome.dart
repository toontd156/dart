import 'package:flutter/material.dart';

class welcome extends StatelessWidget {
  const welcome({super.key});
  @override
  Widget build(BuildContext context) {
    var data =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;

    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Welcome ${data['username']}'),
            ElevatedButton(
              onPressed: (() {
                Navigator.pop(context);
              }),
              child: const Text('Back'),
            ),
          ],
        ),
      ),
    );
  }
}
