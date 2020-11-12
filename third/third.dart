void main() {
  /*List<Function> x = Calc();
  int result = x[0](100, 200);
  print("Result $result");
  result = x[1](10, 20);
  print("Result $result");
  */
  Map<String, Function> map = Calc();
  //map["addition"](10, 20);
  Function fn = map["addition"];
  int result = fn(10, 20);
  print("Result is $result");
  //int result = add(110, 20);
}

void Customer() {
  void add() {
    print("Customer Add");
  }
}

/*
List<Function> Calc() {
  int add(int firstNumber, int secondNumber) {
    return firstNumber + secondNumber;
  }

  int sub(int x, int y) {
    return x - y;
  }

  return [add, sub];
}
*/
Map<String, Function> Calc() {
  int add(int firstNumber, int secondNumber) {
    return firstNumber + secondNumber;
  }

  int sub(int x, int y) {
    return x - y;
  }

  return {"addition": add, "subtract": sub};
}
