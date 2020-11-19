void main() {
  outer:
  for (int i = 1; i <= 3; i++) {
    for (int j = 1; j <= 3; j++) {
      if (i == j) {
        //continue outer;
        break outer;
      }
      print("I is $i and J is $j");
    }
  }

  for (int i = 1; i <= 10; i++) {}
  var i = 1;
  while (i < 10) {
    i++;
    print(i);
  }
  do {
    i++;
  } while (i < 10);
  for (int i in [10, 20, 30]) {}
  Iterator<int> itr = [10, 20, 30].iterator;
  while (itr.moveNext()) {
    print(itr.current);
  }
  [10, 20, 30].forEach((element) => print(element));
}
