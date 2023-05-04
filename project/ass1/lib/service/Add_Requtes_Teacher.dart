import 'package:flutter/material.dart';

class Add_Requtes_Teacher extends StatefulWidget {
  final String Fname;
  final String Lname;
  const Add_Requtes_Teacher(
      {super.key, required this.Fname, required this.Lname});

  @override
  State<Add_Requtes_Teacher> createState() => _Add_Requtes_TeacherState();
}

class _Add_Requtes_TeacherState extends State<Add_Requtes_Teacher> {
  DateTime dateTime = DateTime(2023, 12, 24, 5, 30);
  TextEditingController _dateController = TextEditingController();
  TextEditingController _timeController = TextEditingController();
  TextEditingController _timeControllerTwo = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final hours = dateTime.hour.toString().padLeft(2);
    final minutes = dateTime.minute.toString().padLeft(2);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('Add Requtes Teacher'),
      ),
      body: SafeArea(
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 420,
              height: 430,
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 380,
                      height: 150,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                          child: Column(
                        children: [
                          Text(
                            'Date',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          TextFormField(
                            controller: _dateController,
                            decoration: InputDecoration(
                              icon:
                                  Icon(Icons.calendar_today, color: Colors.red),
                              labelText: 'Date',
                              labelStyle: TextStyle(
                                color: Colors.red,
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.red),
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            onTap: () async {
                              final ThemeData theme = Theme.of(context);
                              final ColorScheme colorScheme = theme.colorScheme;
                              DateTime? date = await showDatePicker(
                                context: context,
                                initialDate: DateTime.now(),
                                firstDate: DateTime(1900),
                                lastDate: DateTime(2100),
                                builder: (BuildContext context, Widget? child) {
                                  return Theme(
                                    data: ThemeData(
                                      colorScheme: colorScheme.copyWith(
                                        primary:
                                            Colors.red, // เปลี่ยนสี primary
                                        onPrimary: Colors
                                            .black, // เปลี่ยนสีตัวอักษร primary
                                        surface:
                                            Colors.blue, // เปลี่ยนสีพื้นหลัง
                                        onSurface: Colors
                                            .black, // เปลี่ยนสีตัวอักษรพื้นหลัง
                                      ),
                                    ),
                                    child: child!,
                                  );
                                },
                              );
                              if (date != null) {
                                setState(() {
                                  _dateController.text =
                                      date.toString().substring(0, 10);
                                });
                              }
                            },
                          )
                        ],
                      )),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 380,
                      height: 240,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                          child: Column(
                        children: [
                          Text(
                            'Time',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          TextFormField(
                            controller: _timeController,
                            decoration: InputDecoration(
                              icon: Icon(Icons.access_time, color: Colors.red),
                              labelText: 'Time',
                              labelStyle: TextStyle(
                                color: Colors.red,
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.red),
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            onTap: () async {
                              final ThemeData theme = Theme.of(context);
                              final ColorScheme colorScheme = theme.colorScheme;
                              TimeOfDay? time = await showTimePicker(
                                context: context,
                                initialTime: TimeOfDay.now(),
                                builder: (BuildContext context, Widget? child) {
                                  return Theme(
                                    data: ThemeData(
                                      colorScheme: colorScheme.copyWith(
                                        primary:
                                            Colors.red, // เปลี่ยนสี primary
                                        onPrimary: Colors
                                            .white, // เปลี่ยนสีตัวอักษร primary
                                        surface: Color.fromARGB(255, 33, 33,
                                            33), // เปลี่ยนสีพื้นหลัง
                                        onSurface: Colors
                                            .white, // เปลี่ยนสีตัวอักษรพื้นหลัง
                                      ),
                                    ),
                                    child: child!,
                                  );
                                },
                              );
                            },
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text('To', style: TextStyle(fontSize: 20)),
                          SizedBox(
                            height: 10,
                          ),
                          TextFormField(
                            controller: _timeControllerTwo,
                            decoration: InputDecoration(
                              icon: Icon(Icons.access_time, color: Colors.red),
                              labelText: 'Time',
                              labelStyle: TextStyle(
                                color: Colors.red,
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.red),
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            onTap: () async {
                              final ThemeData theme = Theme.of(context);
                              final ColorScheme colorScheme = theme.colorScheme;
                              TimeOfDay? time = await showTimePicker(
                                context: context,
                                initialTime: TimeOfDay.now(),
                                builder: (BuildContext context, Widget? child) {
                                  return Theme(
                                    data: ThemeData(
                                      colorScheme: colorScheme.copyWith(
                                        primary:
                                            Colors.red, // เปลี่ยนสี primary
                                        onPrimary: Colors
                                            .white, // เปลี่ยนสีตัวอักษร primary
                                        surface: Color.fromARGB(255, 33, 33,
                                            33), // เปลี่ยนสีพื้นหลัง
                                        onSurface: Colors
                                            .white, // เปลี่ยนสีตัวอักษรพื้นหลัง
                                      ),
                                    ),
                                    child: child!,
                                  );
                                },
                              );
                            },
                          )
                        ],
                      )),
                    ),
                  )
                ],
              ),
            ),
          ),
          ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.red),
              ),
              onPressed: () {},
              child: Text('Add')),
        ]),
      ),
    );
  }
}
