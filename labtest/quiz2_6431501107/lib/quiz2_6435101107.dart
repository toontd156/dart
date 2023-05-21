import 'package:flutter/material.dart';

class to_do_list extends StatefulWidget {
  const to_do_list({super.key});

  @override
  State<to_do_list> createState() => _to_do_listState();
}

class _to_do_listState extends State<to_do_list> {
  List<Map<String, dynamic>> todo = [
    {'name': 'exam', 'date': '5/5/2023'},
    {'name': 'shopping', 'date': '7/5/2023'},
    {'name': 'party', 'date': '20/5/2023'},
  ];
  List done = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TO DO'),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Align(
              alignment: Alignment.center,
              child: Text('Todo List'),
            ),
            ListView.builder(
              shrinkWrap: true,
              itemCount: todo.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  title: Text(todo[index]["name"]),
                  subtitle: Text(todo[index]["date"].toString()),
                  trailing: IconButton(
                    icon: Icon(Icons.check),
                    onPressed: () {
                      setState(() {
                        done.add(todo[index]);
                        todo.remove(todo[index]);
                      });
                    },
                  ),
                );
              },
            ),
            Text('done'),
            ListView.builder(
              shrinkWrap: true,
              itemCount: done.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  title: Text(done[index]["name"]),
                  subtitle: Text(done[index]["date"].toString()),
                  trailing: IconButton(
                    icon: Icon(Icons.cancel),
                    onPressed: () {
                      setState(() {
                        todo.add(done[index]);
                        done.removeAt(index);
                      });
                    },
                  ),
                );
              },
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => showdata(
                          todo: todo.length,
                          done: done.length,
                        ),
                      ),
                    );
                  });
                },
                child: Text('Check'))
          ],
        ),
      ),
    );
  }
}

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
