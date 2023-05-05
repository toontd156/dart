import 'package:flutter/material.dart';
import 'package:labtest05052023/mainpage.dart';

List account = [
  // List ของ username และ password ที่ถูกต้อง
  {"username": "admin", "password": "admin"},
  {"username": "user", "password": "user"},
];

class loginpage extends StatefulWidget {
  const loginpage({super.key});

  @override
  State<loginpage> createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: username,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Username',
              ),
            ),
            TextField(
              controller: password,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Password',
              ),
            ),
            ElevatedButton(
              onPressed: () {
                if (checkuser(username.text, password.text)) {
                  // ถ้า username และ password ถูกต้อง
                  setState(() {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => mainpage(
                          // ไปยังหน้า mainpage พร้อมส่งค่า username password ไปด้วย
                          username: username.text,
                          password: password.text,
                        ),
                      ),
                    );
                  });
                } else {
                  // ถ้า username และ password ไม่ถูกต้อง
                  showDialog(
                    // แสดง แจ้งเตือน ว่า username หรือ password ไม่ถูกต้อง
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: const Text("Error"),
                        content: const Text("Invalid username or password"),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: const Text("OK"),
                          ),
                        ],
                      );
                    },
                  );
                }
              },
              child: const Text("Login"),
            ),
          ],
        ),
      ),
    );
  }
}

bool checkuser(String username, String password) {
  for (int i = 0; i < account.length; i++) {
    if (account[i]["username"] == username &&
        account[i]["password"] == password) {
      return true;
    }
  }
  return false;
}
