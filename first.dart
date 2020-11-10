//import 'dart:core'; // Optional

void main() {
  int a;
  int b = 100;
  print("Hello Dart");
  print(a);
  print(a.runtimeType);
  print(b);
  print(b.runtimeType);
  print(a.runtimeType.runtimeType);
  print(b.runtimeType.runtimeType);
  a = 1000000000;
  print(a.runtimeType);
  print(a);
  double r = 100.200;
  print(r);
  print(r.runtimeType);
  print(r.runtimeType.runtimeType);
}
