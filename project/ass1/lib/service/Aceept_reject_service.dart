import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Ap_RJ extends StatefulWidget {
  final String idsql;
  final String tyepActivecheck;
  const Ap_RJ({super.key, required this.idsql, required this.tyepActivecheck});

  @override
  State<Ap_RJ> createState() => _Ap_RJState();
}

class _Ap_RJState extends State<Ap_RJ> {
  final recommand = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('Accept or Reject'),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  TextField(
                    maxLines: 5,
                    controller: recommand,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'บอกอะไรสักอย่างกับนักศึกษา',
                      prefixIcon:
                          Icon(Icons.person, color: Colors.red, size: 30),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.red),
                    ),
                    onPressed: () {
                      if (widget.tyepActivecheck == 'reject') {
                        FirebaseFirestore.instance
                            .collection('req')
                            .doc(widget.idsql)
                            .update({
                          'Status': 'reject',
                          'Recommand': recommand.text
                        });
                        Navigator.pop(context);
                      } else if (widget.tyepActivecheck == 'accept') {
                        FirebaseFirestore.instance
                            .collection('req')
                            .doc(widget.idsql)
                            .update({
                          'Status': 'accept',
                          'Recommand': recommand.text
                        });
                        Navigator.pop(context);
                      }
                    },
                    child: Text('Accept'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
