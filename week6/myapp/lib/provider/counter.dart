import 'package:flutter/material.dart';
import 'package:myapp/provider/count.dart';
import 'package:myapp/provider/counter2.dart';
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
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            heroTag: null,
            onPressed: () {
              context.read<Count>().add();
            },
            child: const Icon(Icons.add),
          ),
          FloatingActionButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Counter2()));
            },
            child: const Icon(Icons.navigate_next),
          ),
        ],
      ),
    );
  }
}
