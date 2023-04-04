import 'package:ass1/mainPage/login_main_page.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _idController = TextEditingController();
  final _passwordController = TextEditingController();
  String datasql = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('Register'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: _idController,
                decoration: InputDecoration(
                  labelText: 'Id',
                  prefixIcon: Icon(Icons.person),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: _passwordController,
                decoration: InputDecoration(
                    labelText: 'Password', prefixIcon: Icon(Icons.lock)),
                obscureText: true,
              ),
            ),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.red),
              ),
              onPressed: () async {
                if (_idController.text.isEmpty) {
                  setState(() {
                    datasql = 'Please enter your email';
                  });
                  return;
                }
                if (_passwordController.text.isEmpty) {
                  setState(() {
                    datasql = 'Please enter your password';
                  });
                  return;
                }
                try {
                  final user = await FirebaseAuth.instance
                      .createUserWithEmailAndPassword(
                    email: _idController.text,
                    password: _passwordController.text,
                  );
                  // Navigate to the home page if the registration is successful
                  final usertoFirestore = FirebaseFirestore.instance
                      .collection('users')
                      .doc(user.user!.uid)
                      .set({'email': _idController.text, 'role': 'student'});
                  if (user != null) {
                    Navigator.pop(context);
                  }
                } catch (e) {
                  // Show an error message if the registration fails
                  setState(() {
                    datasql = 'The email is already in use by another account.';
                  });
                }
              },
              child: Text('Register'),
            ),
            Text(datasql),
          ],
        ),
      ),
    );
  }
}
