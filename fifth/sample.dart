void main() {
  Set<int> prices = {100, 200, 100, 10, 200, 10, 90, 5};

  Iterable<int> itr = prices.skipWhile((value) => value > 10);
  itr.forEach((element) => print(element));
  /*Iterator<int> itr = prices.iterator;
  while (itr.moveNext()) {
    if (itr.current > 10) {
      continue;
    } else {
      break;
    }
  }*/
}
