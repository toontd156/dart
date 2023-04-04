import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class ReadDemo extends StatefulWidget {
  const ReadDemo({super.key});
  @override
  State<ReadDemo> createState() => _ReadDemoState();
}

// class _ReadDemoState extends State<ReadDemo> { // someone's name and age
//   String output = 'data';
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Read data'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Column(
//           children: [
//             ElevatedButton(
//               onPressed: () {
// // get database reference
//                 var db = FirebaseFirestore.instance;
// // get document reference, change the ID to your document!
//                 var docRef = db.collection('users').doc('1QjnLbXS7pgS9KkHOO8C');
// // read a document
//                 docRef.get().then(
//                   (DocumentSnapshot doc) {
//                     if (doc.exists) {
// // get the document data and cast it to Map (JSON)
//                       var data = doc.data() as Map<String, dynamic>;
// // print(data);
//                       setState(() {
//                         output = '${data['name']} : ${data['age']}';
//                       });
//                     } else {
//                       setState(() {
//                         output = 'No document in DB';
//                       });
//                     }
//                   },
//                   onError: (e) => debugPrint("Error getting document: $e"),
//                 );
//               },
//               child: const Text('Read a document'),
//             ),
//             Text(output),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class _ReadDemoState extends State<ReadDemo> {
//   // all people
//   String output = 'data';
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Read data'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Column(
//           children: [
//             ElevatedButton(
//               onPressed: () {
// // read a document
//                 FirebaseFirestore.instance.collection('users').get().then(
//                   (QuerySnapshot query) {
// // get documents reference
//                     var docs = query.docs;
// // print(docs.length);
// // var doc1 = docs[0]['name']
// // use loop to get each document
//                     String user = '';
//                     for (var doc in docs) {
// // get doc data and convert to Map
// // var data = doc.data() as Map<String, dynamic>;
// // user = '$user ${data['name']}:${data['age']}';
//                       user = '$user ${doc['name']}:${doc['age']}';
//                     }
// // update UI
//                     setState(() {
//                       output = user;
//                     });
//                   },
//                   onError: (e) => debugPrint("Error getting document: $e"),
//                 );
//               },
//               child: const Text('Read all documents'),
//             ),
//             Text(output),
//           ],
//         ),
//       ),
//     );
//   }
// }

class _ReadDemoState extends State<ReadDemo> {
  // input name and search
  String output = 'data';
  TextEditingController tcName = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Read data'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: tcName,
              decoration: InputDecoration(
                border: const OutlineInputBorder(),
                labelText: 'Input name',
                suffixIcon: IconButton(
                  onPressed: () {
                    tcName.clear();
                  },
                  icon: const Icon(Icons.clear),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  // read a document from the search condition
                  FirebaseFirestore.instance
                      .collection('users')
                      .where('name', isEqualTo: tcName.text)
                      .limit(1)
                      .get()
                      .then(
                    (QuerySnapshot query) {
                      // get documents reference
                      var docs = query.docs;
                      // print(docs.length);
                      // if doc is found
                      if (docs.isNotEmpty) {
                        // get doc data and convert to Map, this is not necessary
                        // var doc = docs[0].data() as Map<String, dynamic>;
                        setState(() {
                          output = '${docs[0]['name']} : ${docs[0]['age']}';
                        });
                      } else {
                        setState(() {
                          output = 'No result found';
                        });
                      }
                    },
                    onError: (e) => debugPrint("Error getting document: $e"),
                  );
                },
                child: const Text('Search'),
              ),
            ),
            Text(output),
          ],
        ),
      ),
    );
  }
}
