import 'package:flutter/material.dart';
import 'package:myapp/provider/count.dart';
import 'package:provider/provider.dart';

class Counter extends StatelessWidget {
  const Counter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter'),
      ),
      body: Center(
        child: Text('Counter = ${context.watch<Count>().count}'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.read<Count>().add();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
