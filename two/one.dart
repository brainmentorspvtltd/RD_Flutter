void main() {
  String name = "Amit Srivastava";
  var myName = "Amit";
  String address = "A-11, Roop Nagar, Delhi-7";
  print(name[0]);
  print(name.codeUnitAt(0));
  print(name.codeUnits);
  print(name.runtimeType);
  print(name.isEmpty);
  print(name.isNotEmpty);
  print(name.length);
  print(name.startsWith("Amit"));
  print(name.startsWith("it", 1));
  print(name.endsWith("Srivastava"));
  print(name.indexOf("t")); // not found -1
  print(name.contains("ta"));
  print(name.padLeft(20, '*'));
  print(name.lastIndexOf("t"));
  List<String> list = address.split(",");
  print("After Split $list");
  print(name.toLowerCase());
  print(name.toUpperCase());
  int result = "Ram".compareTo("Ram");

  print("CompareTo Result $result");
  print("Amit".substring(1, 3));
  print("[" + "     Amit      Srivastava       ".trim() + "]");
  print("shiv".compareTo("shiva"));
  print("Amit".substring(1, 1));
  //print("Amit".compareTo("Ram"));
  print("amit".toLowerCase().compareTo("AMIT".toLowerCase()));
}
