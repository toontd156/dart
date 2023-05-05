import 'package:flutter/material.dart';

class loginpage extends StatefulWidget {
  const loginpage({super.key});

  @override
  State<loginpage> createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {
  @override
  Widget build(BuildContext context) {
    TextEditingController username = TextEditingController();
    TextEditingController password = TextEditingController();
    @override
    Widget @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: const Text ("Login Page"),
        )
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
                labelText: 'Password'
              ),
            ),
            ElevatedButton(
              onPressed: () {
                if (checkuser(username.text, password.text)) {
                  setState(() {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => mainpage(
                         username : username.text,
                         password :password.text,
                     
                        ),
                      ));
                  });
                }
               }else{
                showDialog(
                  context: context,
                  builder: (BuidContext context) {
                    return AlertDialg(
                      title: const Text("Error"),
                      content; const Text ("Invalid userame or password"),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.of (context).pop();
                              
                            },
                          child: const Text ("OK"),
                        ),
                      ],

                    );
                  },
                  
                );
               }
              },
              child: const Text ("Login"),
            ),
          ],
          ),
          ),
      );
    }
  }
  bool checkuser (String username, String password){
    for ( int i = 0; i < account. length; i++) {
      if (account [i]["username"] == username &&
          account [i]["password] == password) {
            return true;
          }
    }
    return false;
  }

