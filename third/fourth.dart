void main() {
  Map<String, Function> map = Calculate(100, 200);
  int result = map["addition"]();
  print("Result is $result");
}

Map<String, Function> Calculate(int x, int y) {
  int add() {
    return x + y;
  }

  int sub() {
    return x - y;
  }

  return {"addition": add, "subtract": sub};
}
