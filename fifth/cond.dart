void main() {
  if (10 > 2) {
    // if(bool)

  } else {}
  String day = "Sunday";
  switch (day) {
    case "Sunday":
      print("FunDay");
      continue mylabel;
    case "Monday":
      print("Boring Day");
      break;
    mylabel:
    case "Tuesday":
      print("Lot of Work");
      break;
    default:
      print("Wrong Day");
  }
}
