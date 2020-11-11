void main() {
  List<int> list = [10, 20, 30, 40, 50];
  for (int i = 0; i < list.length; i++) {
    print(list[i]);
  }
  print("Using Itr");
  Iterator<int> itr = list.iterator;
  while (itr.moveNext()) {
    print(itr.current);
  }
  for (int currentElement in list) {
    print(currentElement);
  }
}
