import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

final usernameController =
    TextEditingController(); // ตัวแปรเก็บค่าจาก textfield
final passController = TextEditingController(); // ตัวแปรเก็บค่าจาก textfield
String uname = "admin";
String pass = "1234";

String error = '';
int value = 0;

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // แทบด้านบน
        title: const Text('Login'),
      ),
      body: SafeArea(
        // safearea ให้ detail อยู่ใน safe area ของ device รองรับทุกหน้าจอ
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10, 0, 10, 0), // padding ดันขอบ
          child: Column(
            children: [
              TextField(
                // ตัวอินพุต
                controller: usernameController, // รับค่าจาก textfield
                decoration: const InputDecoration(
                  // ตกแต่ง ui textfield
                  hintText: "Username", // ข้อความใน textfield
                ),
              ),
              TextField(
                // ตัวอินพุต
                controller: passController, // รับค่าจาก textfield
                obscureText: true, // ซ่อนข้อความเป็นตัวจุด
                decoration: const InputDecoration(
                  // ตกแต่ง ui textfield
                  hintText: "PassWord", // ข้อความใน textfield
                ),
              ),
              ElevatedButton(
                // ปุ่ม

                child: const Text("Submit"), //ชื่อปุ่ม
                onPressed: () {
                  // กดปุ่ม
                  if (uname == usernameController.text &&
                      pass == passController.text) {
                    // ตรวจสอบค่าที่รับมา
                    setState(() {
                      //การทำงานของ widget
                      // ใช้ setState เพื่อเปลี่ยนค่าใน widget ที่มีการเปลี่ยนแปลง
                      usernameController.text = ""; // ล้างค่าใน textfield
                      passController.text = ""; //ล้างค่าใน textfield
                      error = " Welcome $uname"; // แสดงข้อความ
                      value = 1; // ใช้ในการเปลี่ยนสีข้อความ
                    });
                  } else {
                    setState(() {
                      usernameController.text = "";
                      passController.text = "";
                      error = "Wrong username or password";
                      value = 2;
                    });
                    // showToast(msg: "Invalid Username or Password");
                  }
                },
              ),
              value == 2 // if else ในการเปลี่ยนสีข้อความ
                  ? Text(
                      error,
                      style: const TextStyle(color: Colors.red, fontSize: 20),
                    )
                  : Text(
                      error,
                      style: const TextStyle(color: Colors.green, fontSize: 20),
                    ),
            ],
          ),
        ),
      ),
    );
  }
}
