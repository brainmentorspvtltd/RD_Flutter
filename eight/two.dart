void main() {
  final int x = 100;
  const int y = 200;
  //day = 0;
  Days day = Days.SUNDAY;
  print(day.index);
  print(day);
  switch (day) {
    case Days.SUNDAY:
      print("This is a Funday");
      break;
    case Days.MONDAY:
      print("This is a Working Day");
      break;
  }
}

enum Days { SUNDAY, MONDAY, TUESDAY }
