void main() {
  List<int> list = [10, 20, 30, 8, 1, 90, 100, 10];
  //print(list);
  list.forEach((int value) => print("Value is $value"));
  List<int> subList = list.where((int element) => element > 50).toList();
  print("Sub List is $subList");

  //list.sort((int first, int second) => first - second);
  //list.sort((int first, int second) => second - first);
  list.sort((int first, int second) => first.compareTo(second));
  print("After Sort is $list");
  List<String> names = ["Ram", "Amit", "Anil", "Shyam", "Mike", "Tim"];
  names.sort((String first, String second) => first.compareTo(second));
  print("After Sort NAmes are $names");
}
