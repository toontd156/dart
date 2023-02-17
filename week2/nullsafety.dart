import 'dart:io';

// void main() {
//   stdout.write('Enter a name: ');
//   String? name = null;
//   //get keyboard's input, can be null
//   name = stdin.readLineSync();
//   print(name);

//   name = null;
//   //print(name.length);   // compile error because name is null
//   print(name?.length); // OK, will show null if name is null
//   //print(name!.length);    // runtime error because name is null

//   name = 'Tom';
//   print(name.length); // now, name is String, no need to use ? or !
// }

// void main() {
//   int age = 0;
//   stdout.write('Input age: ');
//   String? input = stdin.readLineSync();
//   if (input != null) {
//     age = int.parse(input);
//     print('Next year you will be ${age + 1} years old');
//   }
// }

// void main() {
//   int age = 0;
//   stdout.write('Input age: ');
//   String? input = stdin.readLineSync();
//   age = int.parse(input!);
//   print('Next year you will be ${age + 1} years old');
// }

// void main() {
//   stdout.write('Input age: ');
//   String? input = stdin.readLineSync();
//   // try to convert String to int
//   int? age = int.tryParse(input!);
//   if (age == null) {
//     print('Please input only an integer!');
//   } else {
//     print('Next year you will be ${age + 1} years old');
//   }
// }

void main() {
  var a;
  a = null;
  print(a);
  // stdout.write('Input age: ');
  // // get String input and convert to int
  // int? age = int.tryParse(stdin.readLineSync()!);
  // // ternary operator
  // age == null
  //     ? print('Please input only an integer!')
  //     : print('Next year you will be ${age + 1} years old');
}
