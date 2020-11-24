class A {
  void show() {
    print("I am A Show");
  }

  void one() {
    print("A One");
  }
}

class B {
  void disp() {
    print("I am B Disp");
  }

  void one() {
    print("B One");
  }
}

class D {
  void result() {
    print("D Result");
  }
}

class C extends D with A, B {
  void output() {
    print("I am C Output");
  }
}

void main() {
  C c = C();
  c.output();
  c.disp();
  c.show();
  c.result();
  c.one();
}

/*class C extends A, B{

}*/
