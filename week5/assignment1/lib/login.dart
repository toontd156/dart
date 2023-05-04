\import 'package:flutter/material.dart';

import 'welcome.dart';

List account = [
  {'username': 'James', 'password': 'a1b1'},
  {'username': 'Lara', 'password': 'a2b2'},
];

// account[1]['username'];
// account = [
//   [1] = [
//     username = james,
//     password = a1b1
//   ],
//   [2] = [
//     username = lara,
//     password = a2b2
//   ]
// ]

// var userJson = '{"name":"Intception","page": "Intception Hideout"}';

//   Map<String, dynamic> userMap = jsonDecode(userJson);
//   print(userMap["name"]);
//   print(userMap["page"]);
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
        title: const Text('LOGIN'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
              child: TextField(
                controller: usernameController,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), labelText: 'username'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
              child: TextField(
                controller: passwordController,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), labelText: 'password'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                child: Text('LOGiN'),
                onPressed: () {
                  if (checkuser(
                      usernameController.text, passwordController.text)) {
                    setState(() {
                      value = 1;
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => welcome(),
                              settings: RouteSettings(arguments: {
                                'username': usernameController.text
                              })));
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
              ),
            ),
            !checkuser(usernameController.text, passwordController.text) &&
                    value == 2
                ? const Text('username or password is incorrect')
                : const Text('')
          ],
        ),
      ),
    );
  }
}

bool checkuser(String user, String pass) {
  for (var i = 0; i < account.length; i++) {
    if (user == account[i]['username'] && pass == account[i]['password']) {
      return true;
    }
  }
  return false;
}
