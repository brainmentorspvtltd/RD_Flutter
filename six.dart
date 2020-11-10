import 'dart:io';

void main() {
  // methods
  /*int a = 100;
  String e = a.toString();
  String d = "1000";
  int b = int.parse(d);*/
  //print("Enter the First Number");
  stdout.write("Enter the First Number");
  int firstNumber = int.parse(stdin.readLineSync());
  print("First Number is $firstNumber");
  print("Enter the Second Number");
  int secondNumber = int.parse(stdin.readLineSync());
  int result = firstNumber + secondNumber;
  print("Result is $result");
}
