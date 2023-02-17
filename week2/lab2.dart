import 'dart:io';
import 'dart:math';

// void main() {
//   var number1 = 10;
//   var number2 = 12;
//   var name = 'Jackson';
//   var numbber3 = number1 / number2;
//   var x = numbber3.toStringAsFixed(2);
//   print('OutPut: Hi $name $number1 + $number2 =  ${number1 + number2}');
//   print('OutPut: Hi $name $number1 - $number2 =  ${number1 - number2}');
//   print('OutPut: Hi $name $number1 * $number2 =  ${number1 * number2}');
//   print('OutPut: Hi $name $number1 / $number2 =  $x');
//   print('OutPut: Hi $name $number1 ~/ $number2 =  ${number1 ~/ number2}');
//   print('OutPut: Hi $name $number1 % $number2 =  ${number1 % number2}');
// }

// void main() {
//   var starrow = 4;
//   var starcol = 5;
//   var name = 'Lilly';
//   print('Ouput: Hi $name this is your start');
//   for (int i = 0; i < starrow; i++) {
//     for (int j = 0; j < starcol; j++) {
//       stdout.write('*' + ' ');
//     }
//     print('');
//   }
// }

// void main() {
//   var name = 'Rose';
//   var SizeStar = 4;
//   print('Ouput: Hi $name this is your tri start');
//   for (int i = 0; i <= SizeStar; i++) {
//     for (int j = 0; j < i; j++) {
//       stdout.write('*' + ' ');
//     }
//     print('');
//   }
// }

// void main() {
//   while (true) {
//     stdout.write('Enter temperature or q to quit: ');
//     String? input = stdin.readLineSync();
//     if (input == 'q') {
//       print('Good bye');
//       break;
//     }
//     int? temp = int.tryParse(input!);
//     if (temp != null) {
//       if (temp < 25) {
//         print('Cold');
//       } else if (temp >= 25 && temp < 30) {
//         print('Warm');
//       } else if (temp >= 30) {
//         print('Hot');
//       }
//     } else {
//       print('Please input only an integer or q');
//     }
//   }
// }

// void main() {
//   Map<String, dynamic> student = {'name': '', 'id': 0, 'age': 0};
//   stdout.write('Name: ');
//   student['name'] = stdin.readLineSync()!;
//   var name = student['name'];
//   stdout.write('ID: ');
//   student['id'] = int.parse(stdin.readLineSync()!);
//   stdout.write('Age: ');
//   student['age'] = int.parse(stdin.readLineSync()!);

//   // output
//   print('Output: Hi $name this is your Student Object');
//   print('Student Name: ${student['name']}');
//   print('Student ID: ${student['id']}');
//   print('Age: ${student['age']}');
// }

// void main() {
//   print('=== Area calculator ===');
//   print('Shape');
//   print('1. Square');
//   print('2. Circle');
//   stdout.write('Choose 1-2 : ');
//   int? input = int.tryParse(stdin.readLineSync()!);
//   if (input == null) {
//     print('Please input only an integer');
//   } else {
//     if (input == 1) {
//       stdout.write('Enter Size: ');
//       int? size = int.tryParse(stdin.readLineSync()!);
//       square(size);
//     } else if (input == 2) {
//       stdout.write('Enter Radius: ');
//       int? radius = int.tryParse(stdin.readLineSync()!);
//       circle(radius);
//     }
//   }
// }

// void square(x) {
//   print('Area if Square: ${x * x}');
// }

// void circle(x) {
//   print('Area if Circle: ${3.14 * x * x}');
// }

// void main() {
//   int Count = 0; // set value count = 0

//   while (true) {
//     // use while loop
//     print('Count: $Count'); // print count

//     stdout.write('Increase (+) or Decrease (-) or exit (0): ');
//     String? input = stdin.readLineSync(); // input value
//     if (input == "+") {
//       // if input = + count + 1
//       Count++;
//     } else if (input == "-") {
//       // if input = - count - 1
//       Count--;
//     } else if (input == "0") {
//       // if input = 0 exit
//       print('GOOD BYE');
//       break; // exit loop
//     } else {
//       print(
//           'Increase (+) or Decrease (-) or exit (0) ONLY'); // if input != + - 0 print this
//     }
//   }
// }

// var account = [
//   {'username': 'aaa', "password": '1111', "role": "admin"},
//   {'username': 'bbb', 'password': '2222', 'role': 'user'},
// ];

// void main() {
//   print('--- Login ---');
//   stdout.write('Username: ');
//   String? username = stdin.readLineSync()!;
//   stdout.write('Password: ');
//   String? password = stdin.readLineSync()!;
//   if (login(username, password) == 'admin') {
//     // check login if true print welcome admin
//     print('Welcome Admin');
//   } else if (login(username, password) == 'user') {
//     // check login if true print welcome user
//     print('Welcome User');
//   } else {
//     print('Wrong Login'); // if not true print wrong logins
//   }
// }

// String? login(String username, String password) {
//   // function login
//   for (int i = 0; i < account.length; i++) {
//     // loop account
//     if (username == account[i]['username'] &&
//         password == account[i]['password']) {
//       // check username and password and return role
//       return account[i]['role'];
//     }
//   }
//   return null; // if not found return null
// }
