void main() {
  loop(evenOdd);
  print("###########################");
  loop(cube);
}

void loop(Function fn) {
  int n = 10;
  for (int i = 1; i <= n; i++) {
    print(fn(i));
  }
}

final add = (x, y) => x + y;
//final Function add = (int x, int y) => x + y;
final Function evenOdd =
    (int num) => num % 2 == 0 ? 'Even No $num' : ' Odd No $num';
// String evenOdd(int num) {
//   return num % 2 == 0 ? 'Even No $num' : ' Odd No $num';
// }

int cube(int num) {
  return num * num * num;
}
