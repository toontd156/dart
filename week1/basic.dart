// void main(List<String> args) {
//   print('Hello, World!');

//   int age = 19;
//   double pi = 3.14;
//   String name = "Lisa";
//   bool status = false;
//   print(age);
//   print(pi);
//   print(name);
//   print(status);

//   print('My name is $name is $age years old');
//   // print('My age is $age');
//   // print('My age is ' + age.toString());

//   if (age < 20) {
//     print('teen');
//   } else {
//     print('adult');
//   }

//   // for (int i = 0; i < 10; i++) {
//   //   print(i);
//   // }

//   for (int i = 0; i <= 10; i++) {
//     if (i % 2 == 0) {
//       print(i);
//     }
//   }

//   //array
//   // List<String> students = ['Lisa', 'Peter', 'Tom'];
//   // var students = ['Lisa', 'Peter', 'Tom'];
//   // print(students[0]);
//   // print(students[students.length - 1]);
//   // print(students.last);
//   // print(students.first);

//   // for (var i = 0; i < students.length; i++) {
//   //   print(students[i]);
//   // }

//   //map key:value

//   // var score = {'midterm': 10, 'final': 15};
//   // print(score['midterm']);
//   // print(score['final']);

//   // var totalscore = score['midterm']! + score['final']!;
//   // print(totalscore);

//   var score = [
//     {'midterm': 10, 'final': 15},
//     {'midterm': 20, 'final': 25},
//     {'midterm': 30, 'final': 35}
//   ];

//   print(score[1]['final']);

//   int total = 0;
//   for (var i = 0; i < score.length; i++) {
//     total += score[i]['midterm']! + score[i]['final']!;
//   }
//   print(total);
// }

// void main() {
//   var productd = [
//     {'name': 'apple', 'price': 10},
//     {'name': 'banana', 'price': 8},
//     {'name': 'orangex', 'price': 6}
//   ];

//   String search = 'banana';
//   for (var i = 0; i < productd.length; i++) {
//     // use for loop to find the price of banana
//     if (productd[i]['name'] == search) {
//       // if the name of the product is banana
//       print(productd[i]['price']); // print the price of banana
//     }
//   }
// }

// void main() {
//   String id = '6431501107';
//   var sum = 0;
//   for (var i = 0; i < id.length; i++) {
//     // use for loop to find the sum of all digits
//     sum += int.parse(id[i]); // convert string to int
//   }
//   print(sum); // print the sum
// }

// void main() {
//   // int fibonacc(int n) {
//   //   if (n == 0 || n == 1) return n;
//   //   return fibonacc(n - 1) + fibonacc(n - 2);
//   // }

//   // print(fibonacc(4));

//   String printString(int number) {
//     return number.toString();
//   }

//   print(printString(10));
// }

// bool isEven(int number) {
//   if (number % 2 == 0) {
//     return true;
//   } else {
//     return false;
//   }
// }

// bool isOdd(int number) {
//   if (number % 2 != 0) {
//     return true;
//   } else {
//     return false;
//   }
// }

// List<int> getEvenNumberes(Iterable<int> numbers) {
//   var evenNumbers = <int>[];

//   for (var i in numbers) {
//     if (isEven(i)) evenNumbers.add(i);
//   }

//   return evenNumbers;
// }

// List<int> getOddNumberes(Iterable<int> numbers) {
//   var oddNumbers = <int>[];

//   for (var i in numbers) {
//     if (isOdd(i)) oddNumbers.add(i);
//   }

//   return oddNumbers;
// }

// List hello(int x) {
//   var listString = [];
//   for (int count = 0; count < x; count++) {
//     listString.add('Hello');
//   }
//   return listString;
// }

// main() {
//   var numbers = List.generate(10, (i) => i);
//   print(getEvenNumberes(numbers));
//   print(getOddNumberes(numbers));
//   print(hello(5));
// }
