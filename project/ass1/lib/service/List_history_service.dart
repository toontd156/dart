import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class List_History extends StatefulWidget {
  final String nametecher;
  const List_History({super.key, required this.nametecher});

  @override
  State<List_History> createState() => _List_HistoryState();
}

class _List_HistoryState extends State<List_History> {
  var setcolors;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 380,
      height: 400,
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
          ),
        ],
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 350,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        'Techer',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.grey,
                        ),
                      ),
                      Text(
                        'Student',
                        style: TextStyle(fontSize: 20, color: Colors.grey),
                      ),
                      Text(
                        'Time',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          StreamBuilder<QuerySnapshot>(
            stream: FirebaseFirestore.instance
                .collection('history')
                .where('Techer', isEqualTo: widget.nametecher)
                .snapshots(), // get data in sql
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                final today = DateTime.now()
                    .toLocal()
                    .toIso8601String()
                    .substring(0, 10); // find date today
                final filteredData = snapshot.data!.docs.where((doc) {
                  // find data in sql
                  final timestamp = doc['Time'] as Timestamp; // get data in sql
                  final data = timestamp
                      .toDate()
                      .toLocal()
                      .toIso8601String()
                      .substring(0, 10);
                  return data == today;
                }).toList();

                if (filteredData.isEmpty) {
                  return Center(
                    child: Column(
                      children: [
                        SizedBox(height: 100),
                        CircularProgressIndicator(
                          color: Colors.white,
                        ),
                        SizedBox(height: 10),
                        Text(
                          'No History Today',
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ],
                    ),
                  );
                } else {
                  return Expanded(
                    child: ListView.builder(
                      itemCount: filteredData.length,
                      itemBuilder: (context, index) {
                        final data = filteredData[index];
                        final timestamp = data['Time'] as Timestamp;
                        final time = timestamp.toDate();
                        final formattedTime = DateFormat('HH:mm').format(time);
                        if (data['Status'] == 'aceept') {
                          setcolors = Colors.green[800];
                        } else if (data['Status'] == 'reject') {
                          setcolors = Colors.red[800];
                        } else {
                          setcolors = Colors.yellow[800];
                        }
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: 350,
                            height: 40,
                            decoration: BoxDecoration(
                              color: setcolors,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                SizedBox(
                                  width: 60,
                                  child: Expanded(
                                    child: Text(
                                      '${data['Techer']}',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 80,
                                  child: Expanded(
                                    child: Text(
                                      '${data['Student']}',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 40,
                                  child: Expanded(
                                    child: Text(
                                      '${formattedTime}',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  );
                }
              } else {
                return Center(
                  child: Column(
                    children: [
                      SizedBox(height: 100),
                      CircularProgressIndicator(),
                      SizedBox(height: 10),
                      Text(
                        'Loading...',
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ],
                  ),
                );
              }
            },
          )
        ],
      ),
    );
  }
}
