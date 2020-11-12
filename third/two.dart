void main() {
  printing(salary: 9999);
}

void printing({int id = 0, String name = '', double salary = 0.0}) {
//void printing([int id = 0, String name = '', double salary = 0.0]) {
  print("Id is $id");
  print("Name is $name");
  print("Salary is $salary");
}
