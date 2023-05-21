import 'package:flutter/material.dart';

class showdata extends StatefulWidget {
  final int todo;
  final int done;
  const showdata({super.key, required this.todo, required this.done});

  @override
  State<showdata> createState() => _showdataState();
}

class _showdataState extends State<showdata> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Summary')),
      body: SafeArea(
        child: Column(
          children: [
            Center(child: Text('todo: ${widget.todo} items')),
            Text('done: ${widget.done} items')
          ],
        ),
      ),
    );
  }
}
