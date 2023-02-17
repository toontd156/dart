import 'dart:io';

var account = [
  {'username': 'aaa', "password": '1111', "role": "admin"},
  {'username': 'bbb', 'password': '2222', 'role': 'user'},
];
void main() {
  print("---login---");
  stdout.write("User :");
  String? user = stdin.readLineSync()!;
  stdout.write("PassWord ");
  String? Pass = stdin.readLineSync()!;

  if (login(user, Pass) == 'admin') {
    print('Welcome Admin');
  } else if (login(user, Pass) == 'user') {
    print('Welcome User');
  } else {
    print('Wrong Login');
  }
}

String? login(String username, String password) {
  for (int i = 0; i < account.length; i++) {
    if (username == account[i]['username'] &&
        password == account[i]['password']) {
      return account[i]['role'];
    }
  }
  return null;
}
