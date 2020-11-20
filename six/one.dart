//class Employee extends Object {
class Employee {
  int _id;
  String _name;
  double _salary;

  Employee(this._id, this._name, this._salary);

  get id {
    return _id;
  }

  set name(String name) {
    this._name = name;
  }

  get name {
    return _name;
  }

  set salary(double _salary) {
    if (_salary > 2000 && _salary < 5000) {
      this._salary = _salary;
      print("Salary is Updated ");
    } else {
      print("Invalid Salary Can't Update");
    }
  }

  get salary {
    return _salary;
  }

  /*
  Employee(int _id, String _name, double _salary) {
    this._id = _id;
    this._name = _name;
    this._salary = _salary;
  }*/
  /*Employee({int id = 0, String name = '', double salary = 0.0}) {
    _id = id;
    _name = name;
    _salary = salary;
  }*/
  /*Employee() {
    _id = 1001;
    _name = "Ram";
    _salary = 9999;
    print("I am Default Cons");
  }
  Employee.takeInput(int id, String name, double salary) {
    _id = id;
    _name = name;
    _salary = salary;
  }*/
  @override
  String toString() {
    return "Id $_id Name $_name Salary $_salary";
  }
}
