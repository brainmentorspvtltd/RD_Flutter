void main() {
  int result = add(y: 999);
  print("Result is $result");
  int r = addition(1000, 2000);
  print("R is $r");
  String t = addition("Brain", "Mentors");
  print(t);
}

int add({int x = 0, int y = 0}) {
//int add([int x = 0, int y = 0]) {
  print("X is $x and Y is $y");
  return x + y;
  //return (x ?? 0) + (y ?? 0);
}

addition(x, y) {
  return x + y;
}
