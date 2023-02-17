import 'dart:math';

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

// final คือ ตัวแปรที่ไม่สามารถเปลี่ยนแปลงค่าได้
final number1Controller =
    TextEditingController(); // ตัวแปรสำหรับเก็บค่าจาก TextField
final number2Controller =
    TextEditingController(); // ตัวแปรสำหรับเก็บค่าจาก TextField

String result = '';

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculator'),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
          child: Column(
            children: [
              TextField(
                controller: number1Controller,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  hintText: "Number 1",
                ),
              ),
              TextField(
                controller: number2Controller,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  hintText: "Number 2",
                ),
              ),
              //ปุ่ม Sum
              ElevatedButton(
                  child: Text("Sum"), // บวก
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.amber),
                  ),
                  onPressed: () {
                    if (number1Controller.text.isNotEmpty &&
                        number2Controller.text.isNotEmpty) {
                      setState(() {
                        //.parse() คือ แปลงข้อมูลจาก String เป็น int
                        result = (int.parse(number1Controller.text) +
                                int.parse(number2Controller.text))
                            .toString(); // .toString() คือ แปลงข้อมูลจาก int เป็น String
                      });
                    }
                    return;
                  }),
              //ปุ่ม Power
              ElevatedButton(
                  child: Text("Power"), //ยกกำลัง
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.blue),
                  ),
                  onPressed: () {
                    if (number1Controller.text.isNotEmpty &&
                        number2Controller.text.isNotEmpty) {
                      setState(() {
                        //pow() คือ ยกกำลัง
                        result = pow(int.parse(number1Controller.text),
                                int.parse(number2Controller.text))
                            .toString();
                      });
                    }
                    return;
                  }),
              //ปุ่ม Clear
              ElevatedButton(
                  child: Text("Clear"), //ลบข้อมูล
                  style: ButtonStyle(
                    //สีปุ่ม
                    backgroundColor: MaterialStateProperty.all(Colors.red),
                  ),
                  onPressed: () {
                    setState(() {
                      // .clear() คือ ลบข้อมูลทั้งหมดใน TextField
                      number1Controller.clear();
                      number2Controller.clear();
                      result = '';
                    });
                  }),
              //if แบบย่อ
              result.isNotEmpty // ถ้า result ไม่เป็นค่าว่าง is Not Empty คือเมดตอดที่ใช้ตรวจสอบว่าข้อมูลเป็นค่าว่างหรือไม่
                  ? Text(
                      'Result = $result',
                      style: const TextStyle(color: Colors.red, fontSize: 20),
                    )
                  : Container()
            ],
          ),
        ),
      ),
    );
  }
}
