import 'dart:io';

class A {
  int x;
  A(int x) {
    this.x = x;
  }
  @override
  String toString() {
    return "X is $x";
  }
}

void main() {
  List<A> list = [];
  while (true) {
    print("Enter the Value of X ");
    int x = int.parse(stdin.readLineSync());
    A obj = A(x);
    list.add(obj);
    print(obj);
    print("Press 0 to exit");
    int choice = int.parse(stdin.readLineSync());
    if (choice == 0) {
      break;
    }
  }
  print("List is $list");
}
