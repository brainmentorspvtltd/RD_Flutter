import './one.dart';

void main() {
  Employee ram = Employee(1010, "Ram", 9999);
  double x = ram.salary; //get int x = ram.getsalary()
  ram.salary = x + 10000; // set ram.setsalary(10000);
  //ram.salary = ram.salary + 10000; //Property // ram.salary(20000)
  //ram._id = 1001;
  // ram.id = -1001;
  // ram.name = "Ram";
  // ram.salary = -9999;
  //ram = Employee(_id, _name, _salary)
  print(ram); // ram.toString()

  //Employee ramesh = Employee(id: 1001);
  //Employee ramesh = Employee.takeInput(1002, "Ramesh", 7777);
  //print(ramesh);
  /*
  ramesh.id = 1002;
  ramesh.name = "Ramesh";
  ramesh.salary = 7999;*/
}
