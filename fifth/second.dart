void main() {
  Set<int> set = {90, 2, 3, 1, 2, 10, 20};
  set.skipWhile((value) => value > 1).forEach((element) => print(element));
  set.takeWhile((value) => value > 1).forEach((element) => print(element));
}
