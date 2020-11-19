import 'dart:convert' as convert;

void main() {
  int r = 100;
  double e = 100 / 2;
  int d = 100 ~/ 3;
  String name = "Amit";
  print(name is String);
  List<int> list = [10, 20, 30];
  list.add(100);
  print(list is Set);
  print(list is! Set);
  var json = "{}";
  dynamic obj = convert.jsonDecode(json);
  List<int> ee = [10, 20, 30];
  ee..add(100)..add(200)..add(400);
  //ee.add(1000);
  //ee.add(200)
  String e1 = "Amit";
  e1.toUpperCase().substring(1).trim();
  /*String f = e1.toUpperCase();
  f = f.substring(1);
  f.trim();*/
}
