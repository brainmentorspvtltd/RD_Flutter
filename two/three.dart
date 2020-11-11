void main() {
  // C
  List<List<String>> nested = [
    ["Ram", "Amit"],
    ["Tim", "Kim"]
  ];
  print(nested[0][1]); // R
  List<String> list = ['Amit', 'Ram', 'Shyam'];
  print(list.length);
  print(list.first); // R
  print(list.last); // R
  print(list.isEmpty);
  print(list.isNotEmpty);
  list.add("Tim"); //C
  list.insert(0, "Kim"); //C

  list.addAll(["RIM", "SIM"]);

  //list.clear(); remove all
  list.insertAll(1, ["JIM", "VIM"]);
  print(list);
  bool r = list.remove("JIM");
  String ele = list.removeAt(0); //D
  ele = list.removeLast(); //D
  list.removeRange(1, 3); //D
  List<String> subList = list.sublist(1);
  bool r1 = list.contains("Ram");
  String e1 = list.elementAt(1);
  String e2 = list[1];
  list[1] = "Ramesh"; //U Update

  //list.removeWhere((element) => false)
  //list.add("gfdgd");
  //list.add("Amit");
  //list.add("gdfg");
}
