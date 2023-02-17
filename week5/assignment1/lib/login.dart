import 'package:flutter/material.dart';

import 'welcome.dart';

List account = [
  {'username': 'James', 'password': 'a1b1'},
  {'username': 'Lara', 'password': 'a2b2'},
];

class login extends StatefulWidget {
  login({super.key});

  @override
  State<login> createState() => _loginState();
}

var value = 0;

class _loginState extends State<login> {
  final usernameController = TextEditingController();

  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Center(
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://cdn.discordapp.com/attachments/1046432696081068112/1046433013313048677/INFINITY-01.png'),
                radius: 100,
                backgroundColor: Colors.white,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
              child: TextField(
                controller: usernameController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Username',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
              child: TextField(
                controller: passwordController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                if (checkuser(
                    usernameController.text, passwordController.text)) {
                  setState(() {
                    value = 1;
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => welcome(),
                            settings: RouteSettings(
                              arguments: {
                                'username': usernameController.text,
                              },
                            )));
                    usernameController.clear();
                    passwordController.clear();
                  });
                } else {
                  setState(() {
                    value = 2;
                    usernameController.clear();
                    passwordController.clear();
                  });
                }
              },
              child: const Text('Login'),
            ),
            !checkuser(usernameController.text, passwordController.text) &&
                    value == 2
                ? const Text('Username or Password is incorrect')
                : const Text(''),
          ],
        ),
      ),
    );
  }
}

bool checkuser(String username, String password) {
  for (var i = 0; i < account.length; i++) {
    if (username == account[i]['username'] &&
        password == account[i]['password']) {
      return true;
    }
  }
  return false;
}
