import 'dart:io';

void main() {
  // write without new line
  stdout.write('Name: ');
  // get a nullable string
  String? name = stdin.readLineSync();
  // show the output
  print('Your name is $name');
}
